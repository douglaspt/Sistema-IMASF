unit Rel_ExtratoItem006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoItem006 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel8: TPanel;
    edt_idade_ini: TDCEdit;
    edt_idade_fin: TDCEdit;
    Panel9: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel10: TPanel;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_conveniados: TDCEdit;
    Panel6: TPanel;
    edt_cod_itemservicoFin: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel11: TPanel;
    edt_cod_itemservicoIni: TDCChoiceEdit;
    edt_descricaoIni_itc: TDCEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    rdb_abulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_todos: TRadioButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton4: TPDJButton;
    Btn_LimpaCampos: TPDJButton;
    PDJButton5: TPDJButton;
    cbx_sexo_ben: TDCComboBox;
    rdb_ativos: TRadioButton;
    rdb_inativos: TRadioButton;
    rdb_todos2: TRadioButton;
    PDJButton6: TPDJButton;
    cbx_cod_classificacaoPlano: TDCComboBox;
    cbx_cod_classificacaoSADT: TDCComboBox;
    ckb_totositens: TCheckBox;
    pgb_registros: TProgressBar;
    btn_exportacsv: TPDJButton;
    SaveDialog: TSaveDialog;
    PDJButton7: TPDJButton;
    cbx_cod_tipodependente: TDCComboBox;
    rdb_codigo: TRadioButton;
    rdb_nome: TRadioButton;
    rdb_percentual: TRadioButton;
    cbx_cod_empresa: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure edt_cod_itemservicoIniExit(Sender: TObject);
    procedure edt_cod_itemservicoFinExit(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure edt_cod_itemservicoIniButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoFinButtonClick(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure ckb_totositensClick(Sender: TObject);
    procedure PesquisaItemservico;
    procedure PesquisaTotalporBeneficiario;
    procedure btn_exportacsvClick(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoItem006: TFrm_Rel_ExtratoItem006;
  str_arquiventrad, s: String;
  byt_nameofthfile : TextFile;

implementation

uses Imp_Med_ExtratoItem006, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem, Imp_Med_ExtratoItem007,
Imp_Med_ExtratoItem008, dtm_principal4, Imp_4091, dtm_principal6, Bas_Impressao, Fun_DB;

{$R *.DFM}

procedure TFrm_Rel_ExtratoItem006.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados por Item de Serviço' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoItem006.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ExtratoItem006.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_classificacaoPlano', 'nome_clp');
//  Obj_LoadCombo(Self, 'cbx_cod_classificacaoSADT', 'RTRIM(descricaoGrupo_csa)+'' - ''+descricaoSubGrupo_csa', 'cod_classificacaoSADT', 'tbl_classificacaoSadt');
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoSADT', 'case when (eventos_csa = descricaoSubGrupo_csa) then'+
  ' RTRIM(descricaoGrupo_csa)+'' - ''+RTRIM(descricaoSubGrupo_csa)'+
  ' else RTRIM(descricaoGrupo_csa)+'' - ''+RTRIM(descricaoSubGrupo_csa)+'' - ''+eventos_csa end as descricao', 'cod_classificacaoSADT', 'tbl_classificacaoSadt');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
end;

function TFrm_Rel_ExtratoItem006.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_itemservicoIni.name, 'Código do Item de Serviço deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referência Final deve ser Preenchido !', VLD_Preenchido ));
{  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') and (cb2_cod_mes.Text <> '') and (edt_ano2.Text <> '') then
     if StrToDate(cb2_cod_mes.valueItem + '/01/'+edt_ano2.text) < StrToDate(cbx_cod_mes.valueItem + '/01/'+edt_ano.text) then
        Dlg_Alerta('A data de referência final deve ser maior ou igual a data de referência inicial.',self);}
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton3Click(Sender: TObject);
var
  i, x: integer;
begin
  inherited;
  PesquisaItemservico;
  x:= 1;
  i:= 0;
  Frm_Imp_Med_ExtratoItem006 := TFrm_Imp_Med_ExtratoItem006.Create(Self);
  Frm_Imp_Med_ExtratoItem006.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoItem006.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoItem006.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoItem006.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoItem006.FIdadeInicial := edt_idade_ini.text ;
  Frm_Imp_Med_ExtratoItem006.FIdadeFinal := edt_idade_fin.text ;
  Frm_Imp_Med_ExtratoItem006.FPlano := cbx_cod_plano.text ;
  Frm_Imp_Med_ExtratoItem006.FEmpresa := cbx_cod_empresa.text ;
  Frm_Imp_Med_ExtratoItem006.FTipoDependente := cbx_cod_tipodependente.text ;
  Frm_Imp_Med_ExtratoItem006.FSexo := cbx_sexo_ben.text ;
  
  if edt_conveniados.Text <> '' then
  begin
    for i:= 0 to length(edt_conveniados.Text) do
        if edt_conveniados.Text[i] = ',' then
           x:= 2;
    if x = 1 then
       if DB_OpenSQL('select * from tbl_conveniado where cod_conveniado = '+edt_conveniados.Text) > 0 then
          Frm_Imp_Med_ExtratoItem006.FConveniado := edt_conveniados.text + ' - ' + Tab.FieldByName('nome_con').AsString
       else
    else
       Frm_Imp_Med_ExtratoItem006.FConveniado := edt_conveniados.text;
  end;
  Frm_Imp_Med_ExtratoItem006.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoItem006.Release;
  Fdt_principal2.spc_cons_med_extratoitem006.close;
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton1Click(Sender: TObject);
begin
  inherited;
  //  if CriticaParametros then
  //    Exit;
    with Fdt_principal2.spc_cons_med_extratoitem007 do
    begin
      close;
      if edt_conveniados.text = '' then
        ParamByName('@cod_conveniado').AsString := '0'
      else
        ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
      if edt_cod_itemservicoIni.text = '' then
        ParamByName('@cod_itemservicoInicial').AsString := '0'
      else
        ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoIni.text ;
      if edt_cod_itemservicoFin.text = '' then
        ParamByName('@cod_itemservicoFinal').AsString := '0'
      else
        ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFin.text ;
      if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
      end else begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
      end;
      ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
      ParamByName('@sequenciaInicial_cta').AsString := '1' ;
      ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
      ParamByName('@sequenciaFinal_cta').AsString := '100' ;
      ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
      ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
      IF cbx_cod_plano.text = '' then
        ParamByName('@cod_plano').AsString := '0'
      else
        ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
      IF cbx_cod_empresa.text = '' then
        ParamByName('@cod_empresa').AsString := '0'
      else
        ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
      if rdb_abulatorial.Checked then
        ParamByName('@cod_acomodacao').AsString := '5' ;
      if rdb_internacao.Checked then
        ParamByName('@cod_acomodacao').AsString := '6' ;
      if rdb_todos.Checked then
        ParamByName('@cod_acomodacao').AsString := '0' ;
      IF cbx_cod_tipodependente.text = '' then
        ParamByName('@cod_tipodependente').AsString := '0'
      else
        ParamByName('@cod_tipodependente').AsString := cbx_cod_tipodependente.valueitem ;
  //    IF cbx_sexo_ben.text = '' then
  //      ParamByName('@cbx_sexo_ben').AsString := '0'
  //    else
        ParamByName('@sexo_ben').AsString := cbx_sexo_ben.valueitem ;
      open;
    end;
    Frm_Imp_Med_ExtratoItem007 := TFrm_Imp_Med_ExtratoItem007.Create(Self);
    Frm_Imp_Med_ExtratoItem007.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
    Frm_Imp_Med_ExtratoItem007.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
    Frm_Imp_Med_ExtratoItem007.FDataInicial := edt_dtinicial.text;
    Frm_Imp_Med_ExtratoItem007.FDataFinal := edt_dtfinal.text;
    Frm_Imp_Med_ExtratoItem007.FIdadeInicial := edt_idade_ini.text ;
    Frm_Imp_Med_ExtratoItem007.FIdadeFinal := edt_idade_fin.text ;
    Frm_Imp_Med_ExtratoItem007.FPlano := cbx_cod_plano.text ;
    Frm_Imp_Med_ExtratoItem007.FEmpresa := cbx_cod_empresa.text ;
    Frm_Imp_Med_ExtratoItem007.FTipoDependente := cbx_cod_tipodependente.text ;
    Frm_Imp_Med_ExtratoItem007.FSexo := cbx_sexo_ben.text ;
    Frm_Imp_Med_ExtratoItem007.QuickRep1.Preview;
    Frm_Imp_Med_ExtratoItem007.Release;
    Fdt_principal2.spc_cons_med_extratoitem007.close;
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton2Click(Sender: TObject);
begin
  inherited;
  //  if CriticaParametros then
  //    Exit;
    with Fdt_principal2.spc_cons_med_extratoitem008 do
    begin
      close;
      if edt_conveniados.text = '' then
        ParamByName('@cod_conveniado').AsString := '0'
      else
        ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
      if edt_cod_itemservicoIni.text = '' then
        ParamByName('@cod_itemservicoInicial').AsString := '0'
      else
        ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoIni.text ;
      if edt_cod_itemservicoFin.text = '' then
        ParamByName('@cod_itemservicoFinal').AsString := '0'
      else
        ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFin.text ;
      if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
      end else begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
      end;
      ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
      ParamByName('@sequenciaInicial_cta').AsString := '1' ;
      ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
      ParamByName('@sequenciaFinal_cta').AsString := '100' ;
      ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
      ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
      IF cbx_cod_plano.text = '' then
        ParamByName('@cod_plano').AsString := '0'
      else
        ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
      IF cbx_cod_empresa.text = '' then
        ParamByName('@cod_empresa').AsString := '0'
      else
        ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
      if rdb_abulatorial.Checked then
        ParamByName('@cod_acomodacao').AsString := '5' ;
      if rdb_internacao.Checked then
        ParamByName('@cod_acomodacao').AsString := '6' ;
      if rdb_todos.Checked then
        ParamByName('@cod_acomodacao').AsString := '0' ;
      IF cbx_cod_tipodependente.text = '' then
        ParamByName('@cod_tipodependente').AsString := '0'
      else
        ParamByName('@cod_tipodependente').AsString := cbx_cod_tipodependente.valueitem ;
  //    IF cbx_sexo_ben.text = '' then
  //      ParamByName('@cbx_sexo_ben').AsString := '0'
  //    else
        ParamByName('@sexo_ben').AsString := cbx_sexo_ben.valueitem ;
      open;
    end;
    Frm_Imp_Med_ExtratoItem008 := TFrm_Imp_Med_ExtratoItem008.Create(Self);
    Frm_Imp_Med_ExtratoItem008.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
    Frm_Imp_Med_ExtratoItem008.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
    Frm_Imp_Med_ExtratoItem008.FDataInicial := edt_dtinicial.text;
    Frm_Imp_Med_ExtratoItem008.FDataFinal := edt_dtfinal.text;
    Frm_Imp_Med_ExtratoItem008.FIdadeInicial := edt_idade_ini.text ;
    Frm_Imp_Med_ExtratoItem008.FIdadeFinal := edt_idade_fin.text ;
    Frm_Imp_Med_ExtratoItem008.FPlano := cbx_cod_plano.text ;
    Frm_Imp_Med_ExtratoItem008.FEmpresa := cbx_cod_empresa.text ;
    Frm_Imp_Med_ExtratoItem008.FTipoDependente := cbx_cod_tipodependente.text ;
    Frm_Imp_Med_ExtratoItem008.FSexo := cbx_sexo_ben.text ;
    Frm_Imp_Med_ExtratoItem008.QuickRep1.Preview;
    Frm_Imp_Med_ExtratoItem008.Release;
    Fdt_principal2.spc_cons_med_extratoitem008.close;
end;

procedure TFrm_Rel_ExtratoItem006.edt_cod_itemservicoIniExit(
  Sender: TObject);
begin
  inherited;
edt_descricaoIni_itc.text := Get_DescricaoServico(edt_cod_itemservicoIni.text);
end;

procedure TFrm_Rel_ExtratoItem006.edt_cod_itemservicoFinExit(
  Sender: TObject);
begin
  inherited;
edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservicoFin.text);
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton4Click(Sender: TObject);
begin
  inherited;
  PesquisaTotalporBeneficiario;
  Frm_Imp_4091 := TFrm_Imp_4091.Create(Self);
  Frm_Imp_4091.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4091.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_4091.FCod_ItemServicoInicial := edt_cod_itemservicoIni.text;
  Frm_Imp_4091.FDescricaoISI := edt_descricaoIni_itc.text;
  Frm_Imp_4091.FCod_ItemServicoFinal := edt_cod_itemservicoFin.text;
  Frm_Imp_4091.FDescricaoISF := edt_descricao_itc.text;
  Frm_Imp_4091.FDataInicial := edt_dtinicial.text;
  Frm_Imp_4091.FDataFinal := edt_dtfinal.text;
  Frm_Imp_4091.FIdadeInicial := edt_idade_ini.text ;
  Frm_Imp_4091.FIdadeFinal := edt_idade_fin.text ;
  Frm_Imp_4091.FPlano := cbx_cod_plano.text ;
  Frm_Imp_4091.FEmpresa := cbx_cod_empresa.text ;
  Frm_Imp_4091.FTipoDependente := cbx_cod_tipodependente.text ;
  Frm_Imp_4091.FSexo := cbx_sexo_ben.text;
  Frm_Imp_4091.QuickRep1.Preview;
  Frm_Imp_4091.Release;
  Fdt_principal4.spc_cons_med_totalItenservico.close;
end;

procedure TFrm_Rel_ExtratoItem006.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal6.spc_cons_med_analiseContaPlano do
  begin
    close;
    if edt_conveniados.text = '' then
      ParamByName('@cod_conveniado').AsString := ''
    else
    ParamByName('@cod_conveniado').AsString := edt_conveniados.Text;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@dtrealizacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := '1' ;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFin').AsString := '100' ;
    ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
    ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
    IF cbx_cod_plano.text = '' then
      ParamByName('@cod_plano').AsString := '0'
    else
      ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    IF cbx_cod_empresa.text = '' then
      ParamByName('@cod_empresa').AsString := '0'
    else
      ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
    ParamByName('@cod_tipodependente').AsString := '';
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_analiseContaPlano;
  Frm_Bas_Impressao.FCampo1 := 'Mês / Ano de Referência Inicial:     '+cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := 'Mês / Ano de Referência Final:     '+cb2_cod_mes.Text+'/'+edt_ano2.Text;
  Frm_Bas_Impressao.showReport(4157);
  Fdt_principal6.spc_cons_med_analiseContaPlano.close;
end;

procedure TFrm_Rel_ExtratoItem006.edt_cod_itemservicoIniButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoIni',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoIniExit(self);
end;

procedure TFrm_Rel_ExtratoItem006.edt_cod_itemservicoFinButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoFin',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoFinExit(self);
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_itemRealizadoBen do
  begin
    close;
    if edt_conveniados.Text <> '' then
      ParamByName('@cod_conveniado').AsString := edt_conveniados.Text;
    ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
    ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
    ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    if rdb_ativos.Checked then
      ParamByName('@tipo_sit').AsString := '1' ;
    if rdb_inativos.Checked then
      ParamByName('@tipo_sit').AsString := '2' ;
    if rdb_todos2.Checked then
      ParamByName('@tipo_sit').AsString := '0' ;
    if rdb_codigo.Checked = True then
      ParamByName('@Indice').Value:= 0;
    if rdb_nome.Checked = True then
      ParamByName('@Indice').Value:= 1;
    if rdb_percentual.Checked = True then
      ParamByName('@Indice').Value:= 2;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;                                                                                                                       
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_itemRealizadoBen;
  if edt_cod_conveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Convêniado  '+edt_cod_conveniado.Text;
  Frm_Bas_Impressao.FCampo2 := 'Item de Serviço de  '+edt_cod_itemservicoIni.Text+'  até  '+edt_cod_itemservicoFin.Text;
  Frm_Bas_Impressao.FCampo3 := cbx_cod_mes.Text+' / '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo4 := cb2_cod_mes.Text+' / '+edt_ano2.Text;
  Frm_Bas_Impressao.showReport(4170);
  Fdt_principal6.spc_cons_med_itemRealizadoBen.close;
end;

procedure TFrm_Rel_ExtratoItem006.ckb_totositensClick(Sender: TObject);
begin
  inherited;
  if ckb_totositens.Checked then
  begin
    edt_cod_itemservicoIni.Text := '10001001';
    edt_cod_itemservicoIniExit(self);
    edt_cod_itemservicoFin.Text := '99999999';
    edt_cod_itemservicoFinExit(self);
  end
  else begin
    edt_cod_itemservicoIni.Text := '';
    edt_descricaoIni_itc.text := '';
    edt_cod_itemservicoFin.Text := '';
    edt_descricao_itc.Text := '';
  end;
end;

procedure TFrm_Rel_ExtratoItem006.PesquisaItemservico;
begin
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_med_extratoitem006 do
    begin
      close;
      if edt_conveniados.text = '' then
        ParamByName('@cod_conveniado').AsString := '0'
      else
        ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
      if edt_cod_itemservicoIni.text = '' then
        ParamByName('@cod_itemservicoInicial').AsString := '0'
      else
        ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoIni.text ;
      if edt_cod_itemservicoFin.text = '' then
        ParamByName('@cod_itemservicoFinal').AsString := '0'
      else
        ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFin.text ;
      if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
      end else begin
        ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
        ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
      end;
      ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
      ParamByName('@sequenciaInicial_cta').AsString := '1' ;
      ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
      ParamByName('@sequenciaFinal_cta').AsString := '100' ;
      ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
      ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
      IF cbx_cod_plano.text = '' then
        ParamByName('@cod_plano').AsString := '0'
      else
        ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
      IF cbx_cod_empresa.text = '' then
        ParamByName('@cod_empresa').AsString := '0'
      else
        ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
      if rdb_abulatorial.Checked then
        ParamByName('@cod_acomodacao').AsString := '5' ;
      if rdb_internacao.Checked then
        ParamByName('@cod_acomodacao').AsString := '6' ;
      if rdb_todos.Checked then
        ParamByName('@cod_acomodacao').AsString := '0' ;
      IF cbx_cod_tipodependente.text = '' then
        ParamByName('@cod_tipodependente').AsString := '-1'
      else
        ParamByName('@cod_tipodependente').AsString := cbx_cod_tipodependente.valueitem ;
  //    IF cbx_sexo_ben.text = '' then
  //      ParamByName('@cbx_sexo_ben').AsString := '0'
  //    else
        ParamByName('@sexo_ben').AsString := cbx_sexo_ben.valueitem ;
      ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
      ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
      if rdb_codigo.Checked = True then
         ParamByName('@Indice').Value:= 0;
      if rdb_nome.Checked = True then
         ParamByName('@Indice').Value:= 1;
      if rdb_percentual.Checked = True then
         ParamByName('@Indice').Value:= 2;
      open;
    end;
end;

procedure TFrm_Rel_ExtratoItem006.btn_exportacsvClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros = True then
    Exit;
  PesquisaItemservico;
  Fdt_principal2.spc_cons_med_extratoitem006.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
    begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'Item de Serviço;Procedimento;Qtde. de Itens;Vl. Médio por Item;Total Pago;% sobre Total';
    Writeln(byt_nameofthfile,S);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min := 0;
    pgb_registros.Max := Fdt_principal2.spc_cons_med_extratoitem006.RecordCount;
    with Fdt_principal2.spc_cons_med_extratoitem006 do
    begin
      try
        while not eof do
        begin
          S:= FieldByName('cod_itemservico').AsString + ';' +
          FieldByName('nome_its').AsString + ';' +
          FormatFloat('###,###,##0', FieldByName('tlitens_exc').Value) + ';' +
          FormatFloat('###,###,##0.00', (FieldByName('tlpago_exc').Value / FieldByName('tlitens_exc').Value)) + ';' +
          FormatFloat('###,###,##0.00', FieldByName('tlpago_exc').Value) + ';' +
          FormatFloat('###,###,##0.00', FieldByName('tlgeral_exc').Value) + ';';
          pgb_registros.Position:= pgb_registros.Position + 1;
          Writeln(byt_nameofthfile,S);
          Next ;
        end;
      except
        closefile (byt_nameofthfile);
        Dlg_Alerta('ATENÇÃO - Erro ao gerar o arquivo!',self);
      end;
    end;
    closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    pgb_registros.Visible:= False;
    end;
  Fdt_principal2.spc_cons_med_extratoitem006.close;
end;

procedure TFrm_Rel_ExtratoItem006.PesquisaTotalporBeneficiario;
begin
  with Fdt_principal4.spc_cons_med_totalItenservico do
    begin
    close;
    if edt_conveniados.text = '' then
      ParamByName('@cod_conveniado').AsString := ''
    else
      ParamByName('@cod_conveniado').AsString := edt_conveniados.Text;
    ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@sexo_ben').AsString := cbx_sexo_ben.valueitem ;
//    ParamByName('@cod_itemservicoFin').AsString := '0' ;
    if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    end else begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
    end;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
  //  ParamByName('@sequenciaInicial_cta').AsString := '1' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
   // ParamByName('@sequenciaFinal_cta').AsString := '100' ;
    ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
    ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
    IF cbx_cod_plano.text = '' then
      ParamByName('@cod_plano').AsString := '0'
    else
      ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    IF cbx_cod_empresa.text = '' then
      ParamByName('@cod_empresa').AsString := '0'
    else
      ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
    IF cbx_cod_tipodependente.text = '' then
      ParamByName('@cod_tipodependente').AsString := '0'
    else
      ParamByName('@cod_tipodependente').AsString := cbx_cod_tipodependente.valueitem ;
      if rdb_abulatorial.Checked then
        ParamByName('@cod_acomodacao').AsString := '5' ;
      if rdb_internacao.Checked then
        ParamByName('@cod_acomodacao').AsString := '6' ;
      if rdb_todos.Checked then
        ParamByName('@cod_acomodacao').AsString := '0' ;

      if rdb_ativos.Checked then
        ParamByName('@tipo_sit').AsString := '1' ;
      if rdb_inativos.Checked then
        ParamByName('@tipo_sit').AsString := '2' ;
      if rdb_todos2.Checked then
        ParamByName('@tipo_sit').AsString := '0' ;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
    ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
      if rdb_codigo.Checked = True then
         ParamByName('@Indice').Value:= 0;
      if rdb_nome.Checked = True then
         ParamByName('@Indice').Value:= 1;
      if rdb_percentual.Checked = True then
         ParamByName('@Indice').Value:= 2;
    open;
    if recordcount = 0 then begin
        Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
        close;
        exit;
      end;
  end;
end;

procedure TFrm_Rel_ExtratoItem006.PDJButton7Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  PesquisaTotalporBeneficiario;
  Fdt_principal4.spc_cons_med_totalItenservico.RecordCount;
  Fdt_principal4.spc_cons_med_totalItenservico.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
    begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'Inscr.;Tit.;Nome Beneficiario;TI.Atend.;Vl.Informado;Vl.Pago';
    Writeln(byt_nameofthfile,S);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min := 0;
    pgb_registros.Max := Fdt_principal4.spc_cons_med_totalItenservico.RecordCount;
    with Fdt_principal4.spc_cons_med_totalItenservico do
      begin
       while not eof do
          begin
          S:= FieldByName('inscricao_ben').AsString + ';' +
              FieldByName('titulacartei_ben').AsString + ';' +
              FieldByName('nome_ben').Value + ';' +
              FormatFloat('###,###,##0', FieldByName('total').Value) + ';0;0;';
          pgb_registros.Position:= pgb_registros.Position + 1;
          Writeln(byt_nameofthfile,S);
          Next ;
          end;
      end;
    closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    pgb_registros.Visible:= False;
    end;
  Fdt_principal4.spc_cons_med_totalItenservico.close;
end;

end.

