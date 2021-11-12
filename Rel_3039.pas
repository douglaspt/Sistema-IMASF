unit Rel_3039;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3039 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel11: TPanel;
    edt_dtnascimIni: TDCDateEdit;
    edt_dtnascimFin: TDCDateEdit;
    Panel13: TPanel;
    edt_dtsituacaoIni: TDCDateEdit;
    edt_dtsituacaoFin: TDCDateEdit;
    Panel14: TPanel;
    edt_dtcarenciaIni: TDCDateEdit;
    edt_dtcarenciaFin: TDCDateEdit;
    Panel15: TPanel;
    edt_dtplanoIni: TDCDateEdit;
    edt_dtplanoFin: TDCDateEdit;
    Panel12: TPanel;
    edt_dtinscricaoIni: TDCDateEdit;
    edt_dtinscricaoFin: TDCDateEdit;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    edt_titulacartei_ben: TDCEdit;
    Panel4: TPanel;
    edt_inscricao_ben: TDCEdit;
    Panel6: TPanel;
    edt_cod_beneficiario: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel10: TPanel;
    cbx_cod_uf: TDCComboBox;
    Panel18: TPanel;
    edt_nome_ben: TDCEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    edt_bairro_ben: TDCEdit;
    Panel23: TPanel;
    edt_nomepai_ben: TDCEdit;
    edt_nomemae_ben: TDCEdit;
    edt_endereco_ben: TDCEdit;
    edt_cidade_ben: TDCEdit;
    Panel24: TPanel;
    Panel25: TPanel;
    edt_rg_ben: TDCEdit;
    edt_cpf_ben: TDCEdit;
    Panel26: TPanel;
    edt_foneresi_ben: TDCEdit;
    Panel27: TPanel;
    edt_dtrenovacaoIni: TDCDateEdit;
    edt_dtrenovacaoFin: TDCDateEdit;
    Panel28: TPanel;
    edt_dtadmissIni: TDCDateEdit;
    edt_dtadmissFin: TDCDateEdit;
    Panel30: TPanel;
    edt_dtlimiteIni: TDCDateEdit;
    edt_dtlimiteFin: TDCDateEdit;
    Panel29: TPanel;
    edt_matriculaprinc_seg: TDCEdit;
    Panel17: TPanel;
    edt_idadeIni: TDCEdit;
    edt_idadeFin: TDCEdit;
    Panel16: TPanel;
    edt_cepIni: TDCEdit;
    edt_cepFin: TDCEdit;
    cbx_cod_plano: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_tiposegurado: TDCComboBox;
    cbx_cod_sitbeneficiario: TDCComboBox;
    cbx_cod_empresafolha: TDCComboBox;
    Panel34: TPanel;
    rdb_normal: TRadioButton;
    rdb_cancelado: TRadioButton;
    rdb_suspenso: TRadioButton;
    TabSheet4: TTabSheet;
    Panel31: TPanel;
    cbx_cod_grauparent: TDCComboBox;
    Panel32: TPanel;
    cbx_cod_tipodependente: TDCComboBox;
    Panel33: TPanel;
    cbx_cod_estfisico: TDCComboBox;
    Panel37: TPanel;
    cbx_cod_classificacaoPlano: TDCComboBox;
    Panel38: TPanel;
    cbx_cod_regiao: TDCComboBox;
    cbx_cod_cidadeCep: TDCComboBox;
    TabSheet5: TTabSheet;
    btn_atualizar: TSpeedButton;
    DBGrid1: TDBGrid;
    PDJButton2: TPDJButton;
    PDJButton1: TPDJButton;
    TabSheet6: TTabSheet;
    Panel35: TPanel;
    cbx_cod_formaadm: TDCComboBox;
    Panel36: TPanel;
    cbx_cod_situacempr: TDCComboBox;
    Panel39: TPanel;
    cbx_sexo_ben: TDCComboBox;
    DataSource1: TDataSource;
    Panel40: TPanel;
    cbx_cod_nivelcar: TDCComboBox;
    rdb_nenhuma: TRadioButton;
    rdb_todas: TRadioButton;
    rdb_Individual: TRadioButton;
    Panel41: TPanel;
    edt_dtcadastroIni: TDCDateEdit;
    edt_dtcadastroFin: TDCDateEdit;
    Panel42: TPanel;
    edt_dtalteracaoIni: TDCDateEdit;
    edt_dtalteracaoFin: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure CarregaFCamposSelecionados;
    procedure btn_atualizarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure rdb_nenhumaClick(Sender: TObject);
    procedure rdb_IndividualClick(Sender: TObject);
    procedure rdb_todasClick(Sender: TObject);
    procedure cbx_cod_nivelcarChange(Sender: TObject);
    procedure rdb_normalClick(Sender: TObject);
    procedure cbx_cod_sitbeneficiarioChange(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    Function PreencherParametros : Boolean;
     public
    { Public declarations }
    FCamposSelecionados : string;
  end;

var
  Frm_Rel_3039: TFrm_Rel_3039;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, dtm_principal3, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Fun_Obj,
Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_4064, dtm_principal, Fun_Data,
Bas_Impressao, Rel_EtiquetaBenefi001 ;

{$R *.DFM}

procedure TFrm_Rel_3039.FormCreate(Sender: TObject);
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

procedure TFrm_Rel_3039.CarregaFCamposSelecionados;
begin
 FCamposSelecionados := '';
 if edt_cod_beneficiario.Text <> '' then
   FCamposSelecionados := 'Cod.Beneficiário - '+edt_cod_beneficiario.Text+',';
 If edt_inscricao_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Inscrição - '+edt_inscricao_ben.text+',';
 If edt_titulacartei_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Titularidade - '+edt_titulacartei_ben.text+',';
 If edt_matriculaprinc_seg.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Matrícula - '+edt_matriculaprinc_seg.text+',';
 If cbx_cod_plano.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Plano - '+cbx_cod_plano.text+',';
 If cbx_cod_empresa.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Empresa - '+cbx_cod_empresa.text+',';
 If cbx_cod_tiposegurado.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Tipo de Segurado - '+cbx_cod_tiposegurado.text+',';
 If cbx_cod_sitbeneficiario.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Situação - '+cbx_cod_sitbeneficiario.text+',';
 if rdb_normal.Checked then
   FCamposSelecionados := FCamposSelecionados + ' Situação - Normal ,';
 if rdb_cancelado.Checked then
   FCamposSelecionados := FCamposSelecionados + ' Situação - Cancelado ,';
 if rdb_suspenso.Checked then
   FCamposSelecionados := FCamposSelecionados + ' Situação - Suspenso ,';
 if cbx_cod_empresafolha.Text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Local do Desconto - '+cbx_cod_empresafolha.Text+',';
 if cbx_cod_tipodependente.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Tipo de Dependente - '+cbx_cod_tipodependente.text+',';
 if cbx_cod_classificacaoPlano.Text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Plano Pagto - '+cbx_cod_classificacaoPlano.Text+',';
 if rdb_nenhuma.Checked = True then
   FCamposSelecionados := FCamposSelecionados + ' Nivel Carência - NENHUMA';
 if rdb_Individual.Checked = True then
   FCamposSelecionados := FCamposSelecionados + ' Nivel Carência - '+ cbx_cod_nivelcar.Text;
 if rdb_todas.Checked = True then
   FCamposSelecionados := FCamposSelecionados + ' Nivel Carência - TODAS';
 if cbx_cod_formaadm.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Forma Admissão - '+cbx_cod_formaadm.text+',';
 if cbx_cod_situacempr.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Situação na Empresa - '+cbx_cod_situacempr.text+',';
 if cbx_cod_grauparent.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Grau de Parentesco - '+cbx_cod_grauparent.text+',';
 if cbx_cod_estfisico.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Estado Físico - '+cbx_cod_estfisico.text+',';
 if edt_dtnascimIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Nasc.Inicial - '+edt_dtnascimIni.text+',';
 if edt_dtnascimFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Nasc.Final - '+edt_dtnascimFin.text+',';
 if edt_dtinscricaoIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Insc.Inicial - '+edt_dtinscricaoIni.text+',';
 if edt_dtinscricaoFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Insc.final - '+edt_dtinscricaoFin.text+',';
 if edt_dtsituacaoIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Sit.Inicial - '+edt_dtsituacaoIni.text+',';
 if edt_dtsituacaoFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Sit.Final - '+edt_dtsituacaoFin.text+',';
 if edt_dtcarenciaIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Caren.Inicial - '+edt_dtcarenciaIni.text+',';
 if edt_dtcarenciaFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Caren.Final - '+edt_dtcarenciaFin.text+',';
 if edt_dtplanoIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Altera.Plano.Ini. - '+edt_dtplanoIni.text+',';
 if edt_dtplanoFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Altera.Plano.Fin. - '+edt_dtplanoFin.text+',';
 if edt_dtadmissIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Admis.Inicial - '+edt_dtadmissIni.text+',';
 if edt_dtadmissFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Admis.Final - '+edt_dtadmissFin.text+',';
 if edt_dtrenovacaoIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Renov.Inicial - '+edt_dtrenovacaoIni.text+',';
 if edt_dtrenovacaoFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Renov.Final - '+edt_dtrenovacaoFin.text+',';
 if edt_dtlimiteIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Limite.Inicial - '+edt_dtlimiteIni.text+',';
 if edt_dtlimiteFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Limite.Final - '+edt_dtlimiteFin.text+',';
 if edt_nome_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Nome - '+edt_nome_ben.text+',';
 If edt_nomepai_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Nome do Pai - '+edt_nomepai_ben.text+',';
 if edt_nomemae_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Nome da Mãe - '+edt_nomemae_ben.text+',';
 if edt_endereco_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Endereço - '+edt_endereco_ben.text+',';
 if edt_bairro_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Bairro - '+edt_bairro_ben.text+',';
 if edt_cidade_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Cidade - '+edt_cidade_ben.text+',';
 if cbx_cod_regiao.Text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Região - '+cbx_cod_regiao.Text+',';
 If cbx_cod_uf.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Estado - '+cbx_cod_uf.text+',';
 IF cbx_sexo_ben.Text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Sexo - '+cbx_sexo_ben.Text;
 If edt_rg_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' RG - '+edt_rg_ben.text+',';
 If edt_cpf_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' CPF - '+edt_cpf_ben.text+',';
 If edt_foneresi_ben.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Fone - '+edt_foneresi_ben.text+',';
 If edt_idadeIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Idade Inicial - '+edt_idadeIni.text+',';
 If edt_idadeFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Idade Final - '+edt_idadeFin.text+',';
 If edt_cepIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' CEP Inicial - '+edt_cepIni.text+',';
 If edt_cepFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' CEP Final - '+edt_cepFin.text+',';
 if cbx_cod_cidadeCep.Text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Cidade - '+cbx_cod_cidadeCep.Text+',';
 if edt_dtcadastroIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Sistema Inicial - '+edt_dtcadastroIni.text+',';
 if edt_dtcadastroFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Sistema Final - '+edt_dtcadastroFin.text+',';
 if edt_dtalteracaoIni.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Alteração Inicial - '+edt_dtalteracaoIni.text+',';
 if edt_dtalteracaoFin.text <> '' then
   FCamposSelecionados := FCamposSelecionados + ' Dt.Alteração Final - '+edt_dtalteracaoFin.text+',';
end;

function TFrm_Rel_3039.CriticaParametros : Boolean ;
begin
  if (edt_cod_beneficiario.Text = '') and (edt_inscricao_ben.text = '') and (edt_titulacartei_ben.text = '')
     and (edt_matriculaprinc_seg.Text = '') and (cbx_cod_plano.text = '') and (cbx_cod_empresa.text = '')
     and (cbx_cod_tiposegurado.text = '') and (cbx_cod_sitbeneficiario.text = '') and (cbx_cod_empresafolha.text = '')
     and (cbx_cod_tipodependente.text = '') and (cbx_cod_classificacaoPlano.Text = '') and (cbx_cod_formaadm.Text = '')
     and (cbx_cod_situacempr.Text = '') and (cbx_cod_grauparent.Text = '') and (cbx_cod_estfisico.Text = '')
     and (edt_dtnascimIni.text = '') and (edt_dtnascimFin.text = '') and (edt_dtinscricaoIni.text = '')
     and (edt_dtinscricaoFin.text = '') and (edt_dtsituacaoIni.text = '') and (edt_dtsituacaoFin.text = '')
     and (edt_dtcarenciaIni.text = '') and (edt_dtcarenciaFin.text = '') and (edt_dtplanoIni.text = '')
     and (edt_dtplanoFin.text = '') and (edt_dtadmissIni.text = '') and (edt_dtadmissFin.text = '')
     and (edt_dtrenovacaoIni.text = '') and (edt_dtrenovacaoFin.text = '') and (edt_dtlimiteIni.text = '')
     and (edt_dtlimiteFin.text = '') and (edt_nome_ben.text = '') and (edt_nomepai_ben.text = '')
     and (edt_nomemae_ben.text = '') and (edt_endereco_ben.text = '') and (edt_bairro_ben.text = '')
     and (cbx_cod_cidadeCep.Text = '') and (cbx_cod_regiao.Text = '') and (cbx_cod_uf.text = '')
     and (cbx_sexo_ben.Text = '') and (edt_rg_ben.text = '') and (edt_cpf_ben.text = '')
     and (edt_foneresi_ben.text = '') and (edt_idadeIni.text = '') and (edt_idadeFin.text = '')
     and (edt_cepIni.text = '') and (edt_cepFin.text = '') and (edt_cidade_ben.text = '')
     and (edt_dtcadastroIni.text = '') and (edt_dtcadastroFin.text = '')
     and (edt_dtalteracaoIni.text = '') and (edt_dtalteracaoFin.text = '')
  then begin
    result := true;
    Dlg_Alerta ('Preencha os campos desejados.', Self);
  end else
    result := false;
end;

function TFrm_Rel_3039.PreencherParametros : Boolean;
begin
  if cbx_cod_estfisico.Text <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.name, 1);
  with fdt_principal3.spc_cons_adm_listabeneficiario do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    ParamByName('@titulacartei_ben').AsString := edt_titulacartei_ben.Text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem;
    ParamByName('@cod_grauparent').AsString := cbx_cod_grauparent.valueitem;
    ParamByName('@cod_tiposegurado').AsString := cbx_cod_tiposegurado.valueitem;
    ParamByName('@cod_sitbeneficiario').AsString := cbx_cod_sitbeneficiario.valueitem;
    ParamByName('@cod_tipodependente').AsString := cbx_cod_tipodependente.valueitem;
    ParamByName('@cod_estfisico').AsString := cbx_cod_estfisico.valueitem;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueItem;
    ParamByName('@cod_uf').AsString := cbx_cod_uf.valueitem;
    ParamByName('@tipo_sit').AsString := '';
    if rdb_normal.Checked then
      ParamByName('@tipo_sit').AsString := '0';
    if rdb_suspenso.Checked then
      ParamByName('@tipo_sit').AsString := '1';
    if rdb_cancelado.Checked then
      ParamByName('@tipo_sit').AsString := '2';
    ParamByName('@dtnascimIni').AsString := Data_Format('mm/dd/yyyy',edt_dtnascimIni.Date) ;
    ParamByName('@dtnascimFin').AsString := Data_Format('mm/dd/yyyy',edt_dtnascimFin.Date) ;
    ParamByName('@dtinscricaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoIni.Date) ;
    ParamByName('@dtinscricaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoFin.Date) ;
    ParamByName('@dtsituacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtsituacaoIni.Date) ;
    ParamByName('@dtsituacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtsituacaoFin.Date) ;
    ParamByName('@dtcarenciaIni').AsString := Data_Format('mm/dd/yyyy',edt_dtcarenciaIni.Date) ;
    ParamByName('@dtcarenciaFin').AsString := Data_Format('mm/dd/yyyy',edt_dtcarenciaFin.Date) ;
    ParamByName('@dtplanoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoIni.Date) ;
    ParamByName('@dtplanoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoFin.Date) ;
    ParamByName('@dtadmissIni').AsString := Data_Format('mm/dd/yyyy',edt_dtadmissIni.Date) ;
    ParamByName('@dtadmissFin').AsString := Data_Format('mm/dd/yyyy',edt_dtadmissFin.Date) ;
    ParamByName('@dtrenovacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtrenovacaoIni.Date) ;
    ParamByName('@dtrenovacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtrenovacaoFin.Date) ;
    ParamByName('@dtlimiteIni').AsString := Data_Format('mm/dd/yyyy',edt_dtlimiteIni.Date) ;
    ParamByName('@dtlimiteFin').AsString := Data_Format('mm/dd/yyyy',edt_dtlimiteFin.Date) ;
    ParamByName('@idadeIni').AsString :=  edt_idadeIni.Text ;
    ParamByName('@idadeFin').AsString := edt_idadeFin.Text ;
    ParamByName('@cepIni').AsString := edt_cepIni.Text ;
    ParamByName('@cepFin').AsString := edt_cepFin.Text ;
    ParamByName('@nome_ben').AsString := edt_nome_ben.Text ;
    ParamByName('@rg_ben').AsString := edt_rg_ben.Text ;
    ParamByName('@cpf_ben').AsString := edt_cpf_ben.Text ;
    ParamByName('@nomepai_ben').AsString := edt_nomepai_ben.Text ;
    ParamByName('@nomemae_ben').AsString := edt_nomemae_ben.Text ;
    ParamByName('@endereco_ben').AsString := edt_endereco_ben.Text ;
    ParamByName('@bairro_ben').AsString := edt_bairro_ben.Text ;
    ParamByName('@cidade_ben').AsString := edt_cidade_ben.Text ;
    ParamByName('@foneresi_ben').AsString := edt_foneresi_ben.Text ;
    ParamByName('@matriculaprinc_seg').AsString := edt_matriculaprinc_seg.Text ;
    ParamByName('@cod_formaadm').AsString := cbx_cod_formaadm.valueitem;
    ParamByName('@cod_situacempr').AsString := cbx_cod_situacempr.valueitem;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueitem;
    ParamByName('@cod_regiao').AsString := cbx_cod_regiao.valueitem;
    ParamByName('@cod_cidadeCEP').AsString := cbx_cod_cidadeCep.valueitem;
    ParamByName('@sexo_ben').AsString :=  cbx_sexo_ben.valueitem;
    if rdb_nenhuma.Checked = True then
       ParamByName('@cod_nivelcar').AsString := '999';
    if rdb_todas.Checked = True then
       ParamByName('@cod_nivelcar').AsString := '0';
    if rdb_Individual.Checked = True then
       ParamByName('@cod_nivelcar').AsString := cbx_cod_nivelcar.valueitem;
    ParamByName('@dtcadastroIni').AsString := Data_Format('mm/dd/yyyy',edt_dtcadastroIni.Date) ;
    ParamByName('@dtcadastroFin').AsString := Data_Format('mm/dd/yyyy',edt_dtcadastroFin.Date) ;
    ParamByName('@dtalteracaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtalteracaoIni.Date) ;
    ParamByName('@dtalteracaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtalteracaoFin.Date) ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum registro encontrado!', Self);
      close;
      Result := false;
      rdb_todas.SetFocus;
      exit;
    end;
    Result := true;
  end;
end;

procedure TFrm_Rel_3039.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  PageControl1.ActivePageIndex := 0;
  if PreencherParametros then
  begin
    CarregaFCamposSelecionados;
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_listabeneficiario;
    Frm_Bas_Impressao.FCampo1 := FCamposSelecionados;
    Frm_Bas_Impressao.showReport(4181);
   { Frm_Imp_4064:= TFrm_Imp_4064.Create(Self);
    Frm_Imp_4064.FCamposSelecionados := FCamposSelecionados;
    Frm_Imp_4064.QuickRep1.Preview;
    Frm_Imp_4064.Release;   }
    fdt_principal3.spc_cons_adm_listabeneficiario.close;
  end;
end;

procedure TFrm_Rel_3039.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_uf', 'nome_uf');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_tiposegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_sitbeneficiario', 'nome_sit');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_estfisico', 'nome_efi');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_situacempr', 'nome_sie');
  BAS_CarregarCombo('cbx_cod_formaadm', 'nome_fad');
  BAS_CarregarCombo('cbx_cod_classificacaoPlano', 'nome_clp');
//  BAS_CarregarCombo('cbx_cod_nivelcar', 'descricao_niv');
  Obj_LoadCombo(Self, 'cbx_cod_nivelcar', 'nome_niv + '' - '' + descricao_niv', 'cod_nivelcar', 'tbl_nivelcar order by descricao_niv');
//  Obj_LoadCombo(Self, 'cbx_cod_nivelcar', 'descricao_niv', 'cod_nivelcar', 'tbl_nivelcar order by descricao_niv');
  Obj_LoadCombo(Self, 'cbx_cod_regiao', 'descricao_reg', 'cod_regiao', 'tbl_regiao');
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep+'' - ''+sigla_uf', 'cod_cidadeCep', 'tbl_cidadeCEP c, tbl_uf u'+
  ' where c.cod_uf = u.cod_uf and exists (select cod_cidadeCEP from tbl_beneficiario b where c.cod_cidadeCEP = b.cod_cidadeCEP) order by cidade_cep');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
end;

procedure TFrm_Rel_3039.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  rdb_normal.Checked := false;
  rdb_cancelado.Checked := false;
  rdb_suspenso.Checked := false;
  FormShow(self);
  end;

procedure TFrm_Rel_3039.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  PreencherParametros;  
end;

procedure TFrm_Rel_3039.FormDestroy(Sender: TObject);
begin
  inherited;
  fdt_principal3.spc_cons_adm_listabeneficiario.close;
end;

procedure TFrm_Rel_3039.PDJButton2Click(Sender: TObject);
var
  FIncricao, FIncricaoOld : String;
begin
  inherited;
  fdt_principal3.spc_cons_adm_listabeneficiario.First;
  FIncricao := fdt_principal3.spc_cons_adm_listabeneficiario.Fields[0].AsString;
  while not fdt_principal3.spc_cons_adm_listabeneficiario.Eof do
  begin
    fdt_principal3.spc_cons_adm_listabeneficiario.next;
    if FIncricaoOld <> fdt_principal3.spc_cons_adm_listabeneficiario.Fields[0].AsString then begin
      FIncricao := FIncricao +','+fdt_principal3.spc_cons_adm_listabeneficiario.Fields[0].AsString;
      FIncricaoOld :=  fdt_principal3.spc_cons_adm_listabeneficiario.Fields[0].AsString;
    end;
  end;
  Hide;
  Frm_Rel_EtiquetaBenefi001 := TFrm_Rel_EtiquetaBenefi001.Create(Self);
  Frm_Rel_EtiquetaBenefi001.edt_inscricao.Text := FIncricao;
  Frm_Rel_EtiquetaBenefi001.ShowModal;
  Frm_Rel_EtiquetaBenefi001.Release;
  Show;
end;

procedure TFrm_Rel_3039.rdb_nenhumaClick(Sender: TObject);
begin
  inherited;
  cbx_cod_nivelcar.Width:= 0;
  if rdb_nenhuma.Left > 125 then
     begin
     rdb_nenhuma.Left:= rdb_nenhuma.Left - 316;
     rdb_individual.Left:= rdb_individual.Left - 316;
     rdb_todas.Left:= rdb_todas.Left - 316;
     end;
end;

procedure TFrm_Rel_3039.rdb_IndividualClick(Sender: TObject);
begin
  cbx_cod_nivelcar.Width:= 0;
  if rdb_individual.Checked = True then
     begin
     rdb_nenhuma.Left:= rdb_nenhuma.Left + 316;
     rdb_individual.Left:= rdb_individual.Left + 316;
     rdb_todas.Left:= rdb_todas.Left + 316;
     cbx_cod_nivelcar.Width:= 300;
     cbx_cod_nivelcar.SetFocus;
     Exit;
     end;
  inherited;
end;

procedure TFrm_Rel_3039.rdb_todasClick(Sender: TObject);
begin
  inherited;
  cbx_cod_nivelcar.Width:= 0;
  if rdb_nenhuma.Left > 125 then
     begin
     rdb_nenhuma.Left:= rdb_nenhuma.Left - 316;
     rdb_individual.Left:= rdb_individual.Left - 316;
     rdb_todas.Left:= rdb_todas.Left - 316;
     end;
end;

procedure TFrm_Rel_3039.cbx_cod_nivelcarChange(Sender: TObject);
begin
  inherited;
  cbx_cod_nivelcar.Hint:= cbx_cod_nivelcar.Text;
end;

procedure TFrm_Rel_3039.rdb_normalClick(Sender: TObject);
begin
  inherited;
  cbx_cod_sitbeneficiario.ItemIndex:= -1;
  cbx_cod_sitbeneficiario.Refresh;
end;

procedure TFrm_Rel_3039.cbx_cod_sitbeneficiarioChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_sitbeneficiario.Text <> '' then
     begin
     rdb_normal.Checked:= False;
     rdb_cancelado.Checked:= False;
     rdb_suspenso.Checked:= False;
     end;
end;

end.





