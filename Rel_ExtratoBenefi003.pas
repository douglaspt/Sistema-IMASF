unit Rel_ExtratoBenefi003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoBenefi003 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel8: TPanel;
    cbx_cod_empresa: TDCComboBox;
    Panel1: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel4: TPanel;
    edt_idade_ini: TDCEdit;
    edt_idade_fin: TDCEdit;
    Panel6: TPanel;
    edt_valor_ini: TDCEdit;
    edt_valor_fin: TDCEdit;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Btn_LimpaCampos: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoBenefi003: TFrm_Rel_ExtratoBenefi003;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Imp_Med_ExtratoBenefi003, Imp_4070, Imp_4136,
dtm_principal5, Bas_Impressao, Fun_Obj;

{$R *.DFM}

procedure TFrm_Rel_ExtratoBenefi003.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato do Benefici�rio Anal�tico' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Benefici�rios' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
  'and s.tipo_sit = 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'C�digo, Inscri��o, Nome, Processo, Tip. Depend., Situa��o' ;
  inherited;
end;

function TFrm_Rel_ExtratoBenefi003.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_dtinicial.name, 'Data Inicial de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'Data Final de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) ;
end;

procedure TFrm_Rel_ExtratoBenefi003.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi003 do
  begin
    close;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueItem ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@Idade_Ini').AsString := edt_idade_ini.text;
    ParamByName('@Idade_Fin').AsString := edt_idade_fin.text ;
    ParamByName('@Valor_Ini').AsString := edt_valor_ini.text ;
    ParamByName('@Valor_Fin').AsString := edt_valor_fin.text ;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    open;
  end;
  Frm_Imp_Med_ExtratoBenefi003 := TFrm_Imp_Med_ExtratoBenefi003.Create(Self);
  Frm_Imp_Med_ExtratoBenefi003.FPeriodoInicial := edt_dtinicial.Text ;
  Frm_Imp_Med_ExtratoBenefi003.FPeriodoFinal := edt_dtfinal.Text ;
  Frm_Imp_Med_ExtratoBenefi003.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoBenefi003.Release;
  Fdt_principal.spc_cons_med_extratobenefi003.close;
end;

procedure TFrm_Rel_ExtratoBenefi003.FormShow(Sender: TObject);
begin
  inherited;
  //edt_dtinicial.Text := '01/01/2001' ;
  //edt_dtfinal.Text := '01/01/2002' ;
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');  
end;

procedure TFrm_Rel_ExtratoBenefi003.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi003 do
  begin
    close;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueItem ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@Idade_Ini').AsString := edt_idade_ini.text ;
    ParamByName('@Idade_Fin').AsString := edt_idade_fin.text ;
    ParamByName('@Valor_Ini').AsString := edt_valor_ini.text ;
    ParamByName('@Valor_Fin').AsString := edt_valor_fin.text ;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    open;
  end;
  Frm_Imp_4070 := TFrm_Imp_4070.Create(Self);
  Frm_Imp_4070.FPeriodoInicial := edt_dtinicial.Text ;
  Frm_Imp_4070.FPeriodoFinal := edt_dtfinal.Text ;
  Frm_Imp_4070.QuickRep1.Preview;
  Frm_Imp_4070.Release;
  Fdt_principal.spc_cons_med_extratobenefi003.close;
end;

procedure TFrm_Rel_ExtratoBenefi003.PDJButton2Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_med_extratobenefi004 do
  begin
    close;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueItem ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@Idade_Ini').AsString := edt_idade_ini.text ;
    ParamByName('@Idade_Fin').AsString := edt_idade_fin.text ;
    ParamByName('@Valor_Ini').AsString := edt_valor_ini.text ;
    ParamByName('@Valor_Fin').AsString := edt_valor_fin.text ;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    open;
  end;
  fdt_principal5.spc_cons_med_extratobenefi004.Open;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_extratobenefi004;
  Frm_Bas_Impressao.FMesReferencia := 'Periodo de '+edt_dtinicial.Text+'  at�  '+edt_dtfinal.Text;
  if (edt_valor_ini.Text <> '') and (edt_valor_fin.Text <> '') then
    Frm_Bas_Impressao.FCampo1 := 'Valor de '+edt_valor_ini.Text+'  at�  '+edt_valor_fin.Text;
  if (cbx_cod_empresa.Text <> '')        then
    Frm_Bas_Impressao.FCampo2 := 'Empresa: '+cbx_cod_empresa.Text;
  if (cbx_cod_plano.Text <> '') then
    Frm_Bas_Impressao.FCampo3 := 'Plano: '+cbx_cod_plano.text;
  if (edt_idade_ini.Text <> '') and (edt_idade_fin.Text <> '') then
    Frm_Bas_Impressao.FCampo4 := 'Idade de '+edt_idade_ini.Text+'  at�  '+edt_idade_fin.Text;
  Frm_Bas_Impressao.showReport(4136);
end;

procedure TFrm_Rel_ExtratoBenefi003.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(Self);
end;

end.



