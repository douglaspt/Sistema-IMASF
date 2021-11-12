unit Rel_3029;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3029 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_vlsalarioIni: TDCEdit;
    edt_nome_ben: TDCEdit;
    Panel7: TPanel;
    dbg_consultabenefi: TDBGrid;
    DataSource1: TDataSource;
    btn_localizar: TSpeedButton;
    rdb_matricula: TRadioButton;
    Label10: TLabel;
    rdb_nome: TRadioButton;
    lbl_totalreg: TLabel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    edt_vlsalarioFin: TDCEdit;
    rdb_localdesconto: TRadioButton;
    Panel8: TPanel;
    edt_matriculaDebito_seg: TDCEdit;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Btn_LimpaCampos: TPDJButton;
    cbx_cod_statusAtivo: TDCComboBox;
    ckb_decimo: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
      FMatricula, FPesquisaSQLDefalt : String;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Rel_3029: TFrm_Rel_3029;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4069, Dlg_Mensagem, dtm_principal3, dtm_principal4, Imp_4094, Fun_Data,
  Cad_fpm, Cad_Segurado, Cad_Dependente, Fun_obj, dtm_principal5, Fun_db ;

{$R *.DFM}


procedure TFrm_Rel_3029.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha','nome_emp');
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
    if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
end;




procedure TFrm_Rel_3029.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if ( not BAS_ValidarCampo(cbx_cod_mes.name,'O Mês de Referência deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(edt_ano.name,'O Ano de Referência deve ser Preenchido!',VLD_Preenchido)) then
    exit;
  with fdt_principal5.spc_cons_adm_consultapatronal do
  begin
    close;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamBYName('@dtreferenciaFin').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@nome_ben').AsString := edt_nome_ben.Text;
    ParamByName('@vlsalarioIni').AsString := edt_vlsalarioIni.Text;
    ParamByName('@vlsalarioFin').AsString := edt_vlsalarioFin.Text;
    ParamByName('@matriculaDebito_seg').AsString := edt_matriculaDebito_seg.Text;
    ParamByName('@cod_classificacaoPlano').AsInteger := 0;
    if rdb_localdesconto.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_matricula.Checked then
      ParamByName('@order').AsInteger := 1;
    if rdb_nome.Checked then
      ParamByName('@order').AsInteger := 2;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
    lbl_totalreg.Caption := 'Total de Registros = '+inttostr(recordcount);
  end;
end;

procedure TFrm_Rel_3029.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal5.spc_cons_adm_consultapatronal.Close;
end;

procedure TFrm_Rel_3029.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.Text <> '' then
  begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
      open;
      edt_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      edt_matriculaDebito_seg.Text := FieldByNAme('matriculadebito_seg').AsString;
    end;
  end;
end;

procedure TFrm_Rel_3029.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3029.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FMatricula := '';
  FormShow(self);
end;

end.

