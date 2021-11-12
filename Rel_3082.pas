unit Rel_3082;

interface

uses
  Windows, Messages, Bas_TelaPadrao, DCChoice, StdCtrls, ExtCtrls, ComCtrls,
  PDJButton, jpeg, Controls, Classes, Dialogs, SysUtils, Graphics, Forms,
  DB, Grids, DBGrids, Buttons, Mask, DBCtrls, QRExport, ShellApi;

type
  TFrm_Rel_3082 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel6: TPanel;
    PDJButton5: TPDJButton;
    edt_nome: TDCEdit;
    btn_imprimir: TPDJButton;
    cbx_cod_tipodependente: TDCComboBox;
    Panel8: TPanel;
    cbx_cod_grauparent: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_imprimirClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure cbx_cod_tipodependenteExit(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    function PreencheParametros(order : Integer) : Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
    WConta, WContb: Integer;
    WNomeSituacao: String;
  end;

var
  Frm_Rel_3082: TFrm_Rel_3082;
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_obj,
     dtm_principal3, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Rel_3082.FormCreate(Sender: TObject);
begin
  WConta:= 0;
  WContb:= 0;
  FTitulo       := 'Contribuição do Plano PFGB no Período' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL  := FSQL_Beneficiario ;
  FPesquisaTit  := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3082.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3082.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin


end;

procedure TFrm_Rel_3082.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL:= FPesquisaSQLDefalt
  else
    FPesquisaSQL:= FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text:= Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then
     edt_nome.text:= ''
  else
    begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, cod_empresafolha'+
    ' from tbl_beneficiario where cod_beneficiario = '+ edt_cod_beneficiario.text);
    edt_inscricao_ben.Text := Tab.FieldByNAme('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    end;
end;

procedure TFrm_Rel_3082.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');

  if FAnoReferencia <> '' then begin
    edt_ano.text := FAnoReferencia ;
    ed2_ano.text := FAnoReferencia ;
  end;
  if FMesReferencia <> '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
    Obj_SetFormObjValueByName(self, cb2_cod_mes.name, FMesReferencia);
  end;
  if FEmpresaFolha <> '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  end;
end;

function TFrm_Rel_3082.PreencheParametros(order : Integer) : Boolean;
begin
end;

procedure TFrm_Rel_3082.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3082.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     Exit;
  with fdt_principal3.spc_cons_adm_contribPFGBPeriodo do
    begin
    Close;
    ParamByName('@dtreferenciaini_cpb').AsString:= cbx_cod_mes.ValueItem + '/01/'+ edt_ano.Text;
    ParamByName('@dtreferenciafim_cpb').AsString:= cb2_cod_mes.ValueItem + '/01/'+ ed2_ano.Text;
    if cbx_cod_empresafolha.ItemIndex > -1 then
       ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').AsString:= '0';
    if edt_inscricao_ben.Text <> '' then
       ParamByName('@inscricao_ben').AsString:= edt_inscricao_ben.Text
    else
       ParamByName('@inscricao_ben').AsString:= '0';
    if cbx_cod_tipodependente.ItemIndex > -1 then
       ParamByName('@cod_tipodependente').AsString:= cbx_cod_tipodependente.ValueItem
    else
       ParamByName('@cod_tipodependente').AsString:= '999';
    if cbx_cod_grauparent.ItemIndex > -1 then
       ParamByName('@cod_grauparent').AsString:= cbx_cod_grauparent.ValueItem
    else
       ParamByName('@cod_grauparent').AsString:= '0';
    ParamByName('@order').AsString:= '0';
    Open;
    if RecordCount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
       close;
       exit;
       end;
    end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_contribPFGBPeriodo;
  Frm_Bas_Impressao.FCampo1:= 'Mês/Ano de Referência Inicial/Final:   ' + cbx_cod_mes.Text + '/' + edt_ano.Text + ' a ' + cb2_cod_mes.Text + '/' + ed2_ano.Text;
  Frm_Bas_Impressao.FCampo2:= 'Local de Desconto: Todas as Empresas';
  if cbx_cod_empresafolha.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo2:= 'Local de Desconto: ' + cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo3:= 'Inscrição: Todas';
  if edt_inscricao_ben.Text <> '' then
     Frm_Bas_Impressao.FCampo3:= 'Inscrição: ' + edt_inscricao_ben.Text;
  Frm_Bas_Impressao.FCampo4:= 'Tipo: Todos';
  if cbx_cod_tipodependente.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo4:= 'Tipo: ' + cbx_cod_tipodependente.Text;
  Frm_Bas_Impressao.FCampo5:= 'Grau: Todos';
  if cbx_cod_grauparent.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo5:= 'Grau: ' + cbx_cod_grauparent.Text;
  Frm_Bas_Impressao.showReport(4200);
end;

procedure TFrm_Rel_3082.PDJButton5Click(Sender: TObject);
begin
  inherited;
  cbx_cod_mes.ItemIndex:= -1;
  edt_ano.text:= '' ;
  cb2_cod_mes.ItemIndex:= -1;
  ed2_ano.text:= '' ;
  edt_inscricao_ben.text:= '' ;
  edt_nome.Text:= '';
  cbx_cod_empresafolha.ItemIndex:= -1;
  cbx_cod_tipodependente.ItemIndex:= -1;
  cbx_cod_grauparent.ItemIndex:= -1;
  FormShow(Self);
end;

procedure TFrm_Rel_3082.cbx_cod_tipodependenteExit(Sender: TObject);
begin
  inherited;
  Panel8.Visible:= False;
  if cbx_cod_tipodependente.ItemIndex > 0 then
     Panel8.Visible:= True;
end;

end.



