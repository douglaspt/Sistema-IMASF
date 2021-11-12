unit Rel_3070;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3070 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_vlsalarioIni: TDCEdit;
    edt_nome_ben: TDCEdit;
    Panel7: TPanel;
    btn_localizar: TSpeedButton;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    edt_vlsalarioFin: TDCEdit;
    Panel8: TPanel;
    edt_matriculaDebito_seg: TDCEdit;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel9: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel10: TPanel;
    rdb_localdesconto: TRadioButton;
    rdb_matricula: TRadioButton;
    rdb_nome: TRadioButton;
    rdb_dtreferencia: TRadioButton;
    Panel11: TPanel;
    cbx_cod_classificacaoPlano: TDCComboBox;
    procedure FormShow(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
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
  Frm_Rel_3070: TFrm_Rel_3070;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4069, Dlg_Mensagem, dtm_principal3, dtm_principal4, Imp_4094, Fun_Data,
  Cad_fpm, Cad_Segurado, Cad_Dependente, Fun_obj, dtm_principal5, Fun_db,
  dtm_principal6, Bas_Impressao ;

{$R *.DFM}


procedure TFrm_Rel_3070.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha','nome_emp');
  BAS_CarregarCombo('cbx_cod_classificacaoPlano', 'nome_clp');
    if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
end;




procedure TFrm_Rel_3070.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if ( not BAS_ValidarCampo(cbx_cod_mes.name,'O Mês de Referência Inicial deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(edt_ano.name,'O Ano de Referência Inicial deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(cb2_cod_mes.name,'O Mês de Referência Final deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(ed2_ano.name,'O Ano de Referência Final deve ser Preenchido!',VLD_Preenchido)) then
    exit;
  with fdt_principal5.spc_cons_adm_consultapatronal do
  begin
    close;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamBYName('@dtreferenciaFin').AsString := cb2_cod_mes.valueitem+'/01/'+ed2_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@nome_ben').AsString := edt_nome_ben.Text;
    ParamByName('@vlsalarioIni').AsString := edt_vlsalarioIni.Text;
    ParamByName('@vlsalarioFin').AsString := edt_vlsalarioFin.Text;
    ParamByName('@matriculaDebito_seg').AsString := edt_matriculaDebito_seg.Text;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueitem;
    if rdb_localdesconto.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_matricula.Checked then
      ParamByName('@order').AsInteger := 1;
    if rdb_nome.Checked then
      ParamByName('@order').AsInteger := 2;
    if rdb_dtreferencia.Checked then
      ParamByName('@order').AsInteger := 3;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_consultapatronal;
  Frm_Bas_Impressao.FCampo1 := 'Periodo Inicial   '+cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := 'Periodo Final   '+cb2_cod_mes.Text+'\'+ed2_ano.Text;
  if cbx_cod_empresafolha.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Local de Desconto   '+cbx_cod_empresafolha.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if edt_vlsalarioIni.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Valor do Salário de '+edt_vlsalarioIni.Text+' até '+edt_vlsalarioFin.Text
  else
    Frm_Bas_Impressao.FCampo4 := '';
  if edt_inscricao_ben.Text <> '' then
    Frm_Bas_Impressao.FCampo5 := 'Inscrição   '+edt_inscricao_ben.Text+'          Matrícula   '+edt_matriculaDebito_seg.Text
  else
    if edt_matriculaDebito_seg.Text <> '' then
      Frm_Bas_Impressao.FCampo5 := 'Matrícula   '+edt_matriculaDebito_seg.Text
    else
      Frm_Bas_Impressao.FCampo5 := '';
  Frm_Bas_Impressao.showReport(4164);
  Fdt_principal5.spc_cons_adm_consultapatronal.close;
end;

procedure TFrm_Rel_3070.edt_inscricao_benButtonClick(Sender: TObject);
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

procedure TFrm_Rel_3070.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3070.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FMatricula := '';
  FormShow(self);
end;

end.

