unit Rel_3071;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3071 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel6: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    RdG_OrdemImpressao: TRadioGroup;
    Panel8: TPanel;
    edt_dtpagto_flh: TDCDateEdit;
    PDJButton5: TPDJButton;
    Panel9: TPanel;
    Panel10: TPanel;
    PDJButton6: TPDJButton;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_cod_tarifa: TDCEdit;
    edt_matricula: TDCEdit;
    ckb_mostrarTodos: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure edt_inscricao_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, FMatricula, FDigito : String ;
    function CriticaParametros : Boolean ;
    function PreencheParametros(order : Integer) : Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Rel_3071: TFrm_Rel_3071;

implementation
uses Fun_Medico, Constantes, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Fun_obj, Bas_Impressao, Fun_Data, dtm_principal6, Fun_ConsCadastro,
  dtm_principal ;

{$R *.DFM}

procedure TFrm_Rel_3071.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3071.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3071.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3071.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
  if (edt_cod_beneficiario.Text <> '') then
  begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
      open;
      edt_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      FMatricula := FieldByNAme('matriculadebito_seg').AsString;
      FDigito := FieldByNAme('digitomatdeb_seg').AsString;
    end;
  end;  
end;

procedure TFrm_Rel_3071.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
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
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  end;
end;

procedure TFrm_Rel_3071.PDJButton5Click(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.text := '' ;
  cbx_cod_mes.Clear;
  cbx_cod_mes.ValueItem := '0' ;
  cbx_cod_mes.Refresh;
  edt_ano.text := '' ;
  cb2_cod_mes.Clear;
  cb2_cod_mes.ValueItem := '0' ;
  cb2_cod_mes.Refresh;
  ed2_ano.text := '' ;
  cbx_cod_empresafolha.Clear;
  cbx_cod_empresafolha.ValueItem := '0' ;
  cbx_cod_empresafolha.Refresh;
  cbx_cod_sitdesconto.Clear;
  cbx_cod_sitdesconto.ValueItem := '0' ;
  cbx_cod_sitdesconto.Refresh;
  edt_dtpagto_flh.text := '' ;
  edt_carteira.text := '' ;
  edt_nome.text := '' ;
  FAnoReferencia := '';
  FMesReferencia := '';
  FEmpresaFolha := '';
  FormShow(Self)
end;

function TFrm_Rel_3071.PreencheParametros(order : Integer) : Boolean;
begin
  result := false;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_adm_descontofolhaGeral do
  begin
    close;
    if ckb_mostrarTodos.Checked then begin
      ParamByName('@matriculadebito_seg').AsString := FMatricula;
      ParamByName('@cod_beneficiario').AsString := '0';
    end
    else begin
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
      ParamByName('@matriculadebito_seg').AsString := '0';
    end;
    ParamByName('@dtreferenciaInicial').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text;
    ParamByName('@cod_order').AsInteger := order;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  result := true;
end;

procedure TFrm_Rel_3071.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then begin
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_descontofolhaGeral;
    if cbx_cod_empresafolha.Text <> '' then
      Frm_Bas_Impressao.FCampo1 := 'Local para Desconto   '+cbx_cod_empresafolha.Text;
    if cbx_cod_mes.Text <> '' then
      Frm_Bas_Impressao.FCampo2 := 'Periodo Inicial   '+cbx_cod_mes.Text+'\'+edt_ano.Text;
    if cb2_cod_mes.Text <> '' then
      Frm_Bas_Impressao.FCampo3 := 'Periodo Final   '+cb2_cod_mes.Text+'\'+ed2_ano.Text;
    Frm_Bas_Impressao.showReport(4167);
    Fdt_principal6.spc_cons_adm_descontofolhaGeral.close;
  end;
end;

procedure TFrm_Rel_3071.edt_inscricao_benKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if edt_inscricao_ben.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end;
end;

procedure TFrm_Rel_3071.edt_inscricao_benKeyDown(                                                                     
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

end.



