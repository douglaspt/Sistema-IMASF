unit Mov_2026;

interface                                                          

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, QuickRpt,
  Db, Grids, DBGrids, jpeg;

type
  TFrm_Mov_2026 = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_autorizainternacao: TDCChoiceEdit;
    pnl_conveniado: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    pnl_inscricao: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_idade: TDCEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    PageControl1: TPageControl;
    tbs_principal: TTabSheet;
    tbs_concessao: TTabSheet;
    tbl_uti: TTabSheet;
    Panel7: TPanel;
    edt_cod_padrao: TDCChoiceEdit;
    edt_nome_its: TDCEdit;
    Panel8: TPanel;
    edt_cod_crm: TDCChoiceEdit;
    edt_medico_crm: TDCEdit;
    Panel9: TPanel;
    edt_dtentrada_ain: TDCDateEdit;
    Panel10: TPanel;
    edt_cod_cid: TDCChoiceEdit;
    edt_nome_cid: TDCEdit;
    Panel11: TPanel;
    cbx_cod_acomodacao: TDCComboBox;
    Panel12: TPanel;
    edt_obs_ain: TDCEdit;
    Panel13: TPanel;
    edt_dtalteracao_ain: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    TabSheet4: TTabSheet;
    DataSource2: TDataSource;
    btn_novocin: TPDJButton;
    btn_alterarcin: TPDJButton;
    btn_Remover_cin: TPDJButton;
    btn_Salvarcin: TPDJButton;
    btn_cancelar_cin: TPDJButton;
    pnl_crm: TPanel;
    edt_sequencia_cin: TDCEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    edt_auditor_cin: TDCEdit;
    edt_dtautorizacao_cin: TDCDateEdit;
    edt_dtinicio_cin: TDCDateEdit;
    edt_dtfinal_cin: TDCDateEdit;
    Panel17: TPanel;
    edt_sequencia_uti: TDCEdit;
    Panel18: TPanel;
    edt_dtinternacao_uti: TDCDateEdit;
    edt_dtalta_uti: TDCDateEdit;
    DataSource1: TDataSource;
    btn_adicionar_uti: TPDJButton;
    btn_altera_uti: TPDJButton;
    btn_remover_uti: TPDJButton;
    btn_salvar_uti: TPDJButton;
    btn_cancelar_uti: TPDJButton;
    edt_nome_pla: TDCEdit;
    Panel31: TPanel;
    edt_justificativa_cin: TDCEdit;
    Panel32: TPanel;
    edt_justificativa_uti: TDCEdit;
    dbg_uti: TDBGrid;
    dbg_concessao: TDBGrid;
    PageControl2: TPageControl;
    tbs_alta: TTabSheet;
    TabSheet6: TTabSheet;
    Panel20: TPanel;
    edt_dtalta_alt: TDCDateEdit;
    Panel33: TPanel;
    edt_vlestimado_alt: TDCEdit;
    edt_vlinformado_alt: TDCEdit;
    Panel30: TPanel;
    edt_numintercorrencia_alt: TDCEdit;
    edt_tlvisitas_alt: TDCEdit;
    edt_tlautorizadas_alt: TDCEdit;
    Panel6: TPanel;
    edt_numtldiarias_alt: TDCEdit;
    edt_numtldiariasuti_alt: TDCEdit;
    Panel21: TPanel;
    edt_queixa_alt: TDCEdit;
    Panel22: TPanel;
    edt_conclusoes_alt: TDCEdit;
    Panel23: TPanel;
    edt_antibioticoterapia_alt: TDCEdit;
    Panel25: TPanel;
    edt_evolucaoclinica_alt: TDCEdit;
    Panel26: TPanel;
    edt_exame_alt: TDCEdit;
    Panel27: TPanel;
    edt_prescricao_alt: TDCEdit;
    Panel28: TPanel;
    edt_examerealizados_alt: TDCEdit;
    Panel29: TPanel;
    edt_especialidades_alt: TDCEdit;
    Panel34: TPanel;
    edt_cod_espmedamb: TDCEdit;
    Panel35: TPanel;
    edt_medicoassist_alt: TDCEdit;
    edt_vlpago_alt: TDCEdit;
    Panel36: TPanel;
    cbx_cod_tipointernacao: TDCComboBox;
    edt_numdiarias_cin: TDCEdit;
    edt_numdiarias_uti: TDCEdit;
    tbs_procedimento: TTabSheet;
    btn_adicionaritem: TPDJButton;
    btn_alteraitem: TPDJButton;
    btn_removeritem: TPDJButton;
    btn_salvaritem: TPDJButton;
    btn_cancelaritem: TPDJButton;
    Panel19: TPanel;
    edt_descricao_itc: TDCEdit;
    edt_cod_itemservico: TDCChoiceEdit;
    Panel37: TPanel;
    edt_obs_ita: TDCEdit;
    edt_qtde_ita: TDCEdit;
    DataSource3: TDataSource;
    tbl_resumo: TTabSheet;
    mem_resumoclinico_ain: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Panel38: TPanel;
    edt_dtatendimento_ita: TDCDateEdit;
    Panel39: TPanel;
    edt_dtalteracao_ita: TDCDateEdit;
    cb2_cod_usuario: TDCComboBox;
    dbg_itemservico: TDBGrid;
    pnl_procedimento: TPanel;
    pnl_procedimento2: TPanel;
    Label3: TLabel;
    lbl_tlconcessao: TLabel;
    edt_rn_ain: TDCEdit;
    edt_excecao_ain: TDCEdit;
    edt_cod_statusAutorizaInternacao: TDCEdit;
    pnl_alertaStatus: TPanel;
    btn_aprovar: TPDJButton;
    rdb_todos: TRadioButton;
    rdb_emAnalise: TRadioButton;
    rdb_aprovado: TRadioButton;
    cbx_cod_statusAutorizaInternacao: TDCComboBox;
    btn_imprimirAutorizacao: TPDJButton;
    PDJButton1: TPDJButton;
    Mem_autorizacao: TMemo;
    PDJButton2: TPDJButton;
    cb2_cod_statusAutorizaInternacao: TDCComboBox;
    cb3_cod_statusAutorizaInternacao: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_autorizainternacaoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure edt_cod_padraoButtonClick(Sender: TObject);
    procedure edt_cod_padraoExit(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure edt_cod_cidExit(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_novocinClick(Sender: TObject);
    procedure btn_alterarcinClick(Sender: TObject);
    procedure btn_SalvarcinClick(Sender: TObject);
    procedure btn_cancelar_cinClick(Sender: TObject);
    procedure btn_Remover_cinClick(Sender: TObject);
    procedure btn_adicionar_utiClick(Sender: TObject);
    procedure btn_altera_utiClick(Sender: TObject);
    procedure btn_salvar_utiClick(Sender: TObject);
    procedure btn_cancelar_utiClick(Sender: TObject);
    procedure btn_remover_utiClick(Sender: TObject);
    procedure tbs_concessaoShow(Sender: TObject);
    procedure tbl_utiShow(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure tbs_principalShow(Sender: TObject);
    procedure edt_dtfinal_cinExit(Sender: TObject);
    procedure edt_dtalta_utiExit(Sender: TObject);
    procedure btn_adicionaritemClick(Sender: TObject);
    procedure btn_alteraitemClick(Sender: TObject);
    procedure btn_salvaritemClick(Sender: TObject);
    procedure btn_cancelaritemClick(Sender: TObject);
    procedure btn_removeritemClick(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure edt_qtde_itaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbs_procedimentoShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_cod_conveniadoEnter(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_aprovarClick(Sender: TObject);
    procedure dbg_itemservicoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbg_itemservicoDblClick(Sender: TObject);
    procedure btn_imprimirAutorizacaoClick(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure dbg_concessaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbg_utiDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg_concessaoDblClick(Sender: TObject);
    procedure dbg_utiDblClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt, NDiarias, NDautorizada, NDuti, FPesquisaItemSevico, FconvOLD, FstatusAutorizaInternacao : String ;
    FStatus2, Int_Retorno : Integer ;
    procedure CarregarCombos;
    procedure SalvarAltaInternacao;
    procedure BotoesConcessaoONOFF(b: boolean);
    procedure BotoesUtiONOFF(b: boolean);
    procedure BotoesProcONPFF(b: boolean);
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    function BAS_SalvarUpdate(Frm:TForm): boolean ;     override ;
  end;

var
  Frm_Mov_2026: TFrm_Mov_2026;

implementation
uses Constantes, Fun_Medico, Fun_ConsCadastro, Fun_DB, Fun_Beneficiario, Fun_Str,
Fun_Obj, Fun_Acesso, Fun_Data, dtm_principal3, DLG_Mensagem, dtm_principal4, Imp_4135, dtm_principal5, Imp_4126 ;

  function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.DFM}

procedure TFrm_Mov_2026.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Solicita��o para Interna��o' ;
  FEditChave    := 'edt_cod_autorizainternacao' ;
  FEditAlteracao:= 'edt_cod_conveniado' ;
  FUltFoco      := 'edt_obs_ain' ;
  FTitPesquisa  := 'Localizar Interna��o' ;
  inherited;

end;

procedure TFrm_Mov_2026.CarregarCombos;
begin
  inherited ;
   BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
   BAS_CarregarCombo('cbx_cod_acomodacao', 'nome_aco');
   BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
   BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
   BAS_CarregarCombo('cbx_cod_tipointernacao', 'nome_int');
   BAS_CarregarCombo('cbx_cod_statusAutorizaInternacao', 'descricao_sai');
   BAS_CarregarCombo('cb2_cod_statusAutorizaInternacao', 'descricao_sai');
   BAS_CarregarCombo('cb3_cod_statusAutorizaInternacao', 'descricao_sai');
end;

procedure TFrm_Mov_2026.BAS_Cancelar(Frm:Tform);
begin
  inherited ;
  if FStatus = FST_Normal then
  begin
    PageControl1.Visible := false ;
    pnl_alertaStatus.Visible := false;
    CarregarCombos;
  end;  
end;

procedure TFrm_Mov_2026.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited ;
  btn_imprimirAutorizacao.Visible := true;
  pnl_procedimento.Visible := false;
  PageControl1.ActivePageIndex := 0 ;
  PageControl2.ActivePageIndex := 0 ;
  edt_cod_conveniadoExit(self);
  edt_cod_padraoExit(self);
  edt_cod_crmExit(self);
  edt_cod_cidExit(self);
  Application.ProcessMessages;
  if edt_cod_beneficiario.Text <> '' then
  begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, nome_pla, inscricao_ben, titulacartei_ben, idade_ben,  digito_ben'+
    ' from tbl_beneficiario b, tbl_plano p where  b.cod_plano = p.cod_plano and cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.text := Tab.FieldByNAme('idade_ben').AsString;
    edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
    tbs_principalShow(self);
    TabSheet4Show(self);
    PageControl1.Visible := true ;
  end;
  if Acs_AcessoEspecial('202601') then
  begin
    tbs_principal.Enabled := false;
    tbs_concessao.Enabled := false;
    tbl_uti.Enabled := false;
    tbs_alta.Enabled := false;
    tbs_procedimento.Enabled := false;
    pnl_conveniado.Enabled := false;
    pnl_inscricao.Enabled := false;
  end;
  pnl_alertaStatus.Visible := true;
  case StrToInt(edt_cod_statusAutorizaInternacao.Text) of
    1 : begin
      pnl_alertaStatus.color := clYellow;
      pnl_alertaStatus.Caption := 'EM AN�LISE';
      btn_aprovar.Enabled := true;
      btn_imprimirAutorizacao.Enabled := false;
    end;
    2 : begin
      pnl_alertaStatus.color := clLime;
      pnl_alertaStatus.Caption := 'APROVADO';
      btn_aprovar.Enabled := false;
      btn_imprimirAutorizacao.Enabled := true;
    end;
  end;

end;

procedure TFrm_Mov_2026.SalvarAltaInternacao;
begin
  if edt_numintercorrencia_alt.Text = '' then
    edt_numintercorrencia_alt.text := '0' ;
  if edt_tlvisitas_alt.Text = ''then
    edt_tlvisitas_alt.text := '0' ;
  if edt_cod_espmedamb.Text = '' then
    edt_cod_espmedamb.Text := '0';
  if edt_numtldiarias_alt.Text = '' then
    edt_numtldiarias_alt.text := '0';
  DB_OpenSQL('select sum(numdiarias_uti) as numdiarias_uti from tbl_controleuti '+
  ' where cod_autorizainternacao = '+edt_cod_autorizainternacao.text);
  edt_numtldiariasuti_alt.Text := tab.FieldbyName('numdiarias_uti').AsString;
  if edt_numtldiariasuti_alt.Text = '' then
    edt_numtldiariasuti_alt.Text := '0';
  DB_OpenSQL('select sum(numdiarias_cin) as numdiarias_cin from tbl_concessaointernacao '+
  ' where cod_autorizainternacao = '+edt_cod_autorizainternacao.text);
  edt_tlautorizadas_alt.text := tab.FieldbyName('numdiarias_cin').AsString;
  if edt_tlautorizadas_alt.Text = '' then
    edt_tlautorizadas_alt.Text := '0';
  if edt_dtalta_alt.text <> '' then
    edt_numtldiarias_alt.Text := FloatToStr(edt_dtalta_alt.date - edt_dtentrada_ain.Date)
  else
    edt_numtldiarias_alt.Text := FloatToStr(Date - edt_dtentrada_ain.Date);
    
  if DB_OpenSQL('select cod_autorizainternacao from tbl_altainternacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text) > 0 then
    DB_ExecSQL('update tbl_altainternacao set '+
    'dtalta_alt = '+DB_FormatDataSQL(edt_dtalta_alt.text, ftdate)+', '+
    'cod_tipointernacao = '+cbx_cod_tipointernacao.valueItem+', '+
    'cod_espmedamb = '+edt_cod_espmedamb.text+', '+
    'medicoassist_alt = '''+edt_medicoassist_alt.text+''', '+
    'vlestimado_alt = '''+edt_vlestimado_alt.text+''', '+
    'vlinformado_alt = '''+edt_vlinformado_alt.text+''', '+
    'vlpago_alt = '''+edt_vlpago_alt.text+''', '+
    'queixa_alt = '''+edt_queixa_alt.text+''','+
    'conclusoes_alt = '''+edt_conclusoes_alt.text+''', '+
    'antibioticoterapia_alt = '''+edt_antibioticoterapia_alt.text+''', '+
    'evolucaoclinica_alt = '''+edt_evolucaoclinica_alt.text+''', '+
    'exame_alt = '''+edt_exame_alt.text+''', '+
    'prescricao_alt = '''+edt_prescricao_alt.text+''', '+
    'examerealizados_alt = '''+edt_examerealizados_alt.text+''', '+
    'especialidades_alt = '''+edt_especialidades_alt.text+''', '+
    'numintercorrencia_alt = '+edt_numintercorrencia_alt.text+', '+
    'tlvisitas_alt = '+edt_tlvisitas_alt.text+', '+
    'tlautorizadas_alt = '+edt_tlautorizadas_alt.text+', '+
    'numtldiarias_alt = '+edt_numtldiarias_alt.text+', '+
    'numtldiariasuti_alt = '+edt_numtldiariasuti_alt.text+
    ' where '+
    'cod_autorizainternacao = '+edt_cod_autorizainternacao.text)
  else
    DB_ExecSQL('insert into tbl_altainternacao ('+
    'cod_autorizainternacao, dtalta_alt, cod_tipointernacao, medicoassist_alt, queixa_alt, '+
    'conclusoes_alt, antibioticoterapia_alt, evolucaoclinica_alt, exame_alt, prescricao_alt, '+
    'examerealizados_alt, especialidades_alt, numintercorrencia_alt, tlvisitas_alt, '+
    'tlautorizadas_alt, numtldiarias_alt, numtldiariasuti_alt, cod_espmedamb, vlestimado_alt, vlinformado_alt, vlpago_alt) values ('
    +edt_cod_autorizainternacao.text+', '+DB_FormatDataSQL(edt_dtalta_alt.text, ftdate)+','+cbx_cod_tipointernacao.valueitem+','+
    ''''+edt_medicoassist_alt.text+''', '''+edt_queixa_alt.text+''', '''+edt_conclusoes_alt.text+''' , '+
    ''''+edt_antibioticoterapia_alt.text+''' , '''+edt_evolucaoclinica_alt.text+''', '+
    ''''+edt_exame_alt.text+''' , '''+edt_prescricao_alt.text+''' , '''+edt_examerealizados_alt.text+''', '+
    ''''+edt_especialidades_alt.text+''' , '+edt_numintercorrencia_alt.text+', '+edt_tlvisitas_alt.text+' , '+edt_tlautorizadas_alt.text+' , '+edt_numtldiarias_alt.text+' , '+
    edt_numtldiariasuti_alt.text+','+edt_cod_espmedamb.Text+', '''+edt_vlestimado_alt.text+''','''+edt_vlinformado_alt.text+''','''+
    edt_vlpago_alt.text+''')') ;
end;

function TFrm_Mov_2026.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  edt_dtalteracao_ain.Date := date ;
  result := DB_Update(Frm) ;
  if result = true then
  begin
    SalvarAltaInternacao;
    DB_ExecSQL('exec spc_med_calculadiariauti '+edt_cod_autorizainternacao.Text);
    PageControl1.Visible := false ;
    pnl_alertaStatus.Visible := false;
    CarregarCombos;
  end;
end;

function TFrm_Mov_2026.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O C�digo do Conveniado deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_razao_con.name, 'Digite um C�digo de Conveniado V�lido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_beneficiario.name, 'O C�digo do Benefici�rio deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_padrao.name, 'O C�digo AMB deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_nome_its.name, 'Digite um C�digo AMB V�lido!', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_crm.name, 'o C�digo do CRM deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_medico_crm.name, 'Digite um CRM V�lido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(cbx_cod_usuario.name, 'O C�digo do Usu�rio deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_dtentrada_ain.name, 'A Data de Entrada deve ser preenchida !', VLD_DataPreenchida )) or
     (not BAS_ValidarCampo(cbx_cod_tipointernacao.name, 'O Tipo de Interna��o deve ser preenchido !', VLD_Preenchido )) then
     exit;
     if pnl_procedimento.Visible then begin
       Dlg_Alerta('O Procedimento n�o est� autorizado para o Conveniado!',self);
       Exit;
     end;  
  result := false ;
end;

procedure TFrm_Mov_2026.edt_cod_autorizainternacaoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Mov_2026.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Raz�o Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2026.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
  begin
    if FStatus = FST_Normal then
      edt_razao_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'))
    else
      edt_razao_con.text := Get_NomeConveniado(STR_RemoveChar(edt_cod_conveniado.text,'-'));
    if FconvOLD <> STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-')) then
    begin
      edt_cod_padrao.Text := '';
      edt_nome_its.Text := '';
    end;
  end;
end;

procedure TFrm_Mov_2026.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  lbl_tlconcessao.Caption := '0';
end;

procedure TFrm_Mov_2026.edt_cod_crmButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
  'cod_crm, medico_crm', 'CRM, Nome do M�dico',
  'Localizar M�dicos', '', true));
  edt_cod_crmExit(self);
end;

procedure TFrm_Mov_2026.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_medico_crm.text := Get_NomeMedico(edt_cod_crm.text);
end;

procedure TFrm_Mov_2026.edt_cod_padraoButtonClick(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.Text <> '' then
  begin
    FPesquisaItemSevico := 'select cod_padrao, i.cod_itemservico, nome_its, apelido_its, max(dtvalidade_hit) as dtvalidade_hit '+
    ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
    FPesquisaSQL  := FPesquisaItemSevico;
    edt_cod_padrao.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, 'Cod.AMB, Cod. Item Serv., Descri��o, Apelido, Dt. Ult. Atual.', 'Localizar AMB', FPesquisaSQL, true);
    edt_cod_padraoExit(self);
  end
  else
    edt_cod_conveniado.SetFocus;
end;

procedure TFrm_Mov_2026.edt_cod_padraoExit(
  Sender: TObject);
begin
  inherited;
  if (edt_cod_padrao.text <> '') and (edt_cod_conveniado.Text <> '') then
  begin
    DB_OpenSQL('select distinct i.nome_its from tbl_itemservico i '+
    ' inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico'+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' and i.cod_padrao = '+edt_cod_padrao.text);
    edt_nome_its.text := Tab.FieldByName('nome_its').AsString;
    if edt_nome_its.Text = '' then
    begin
      edt_nome_its.text := Get_NomeAMB(edt_cod_padrao.Text);
      if edt_nome_its.Text <> '' then
        pnl_procedimento.Visible := true;
    end
    else
      pnl_procedimento.Visible := false;
  end;
end;

procedure TFrm_Mov_2026.edt_cod_cidButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_cid',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_cid',8,length('edt_cod_cid')),
  'cod_cid, nome_cid', 'Cod.Cid, CID',
  'Localizar CID', '', true));
  edt_cod_cidExit(self);
end;

procedure TFrm_Mov_2026.edt_cod_cidExit(Sender: TObject);
begin
  inherited;
  if edt_cod_cid.text <> '' then
    edt_nome_cid.text := Get_NomeCid(edt_cod_cid.text);
end;

procedure TFrm_Mov_2026.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
   FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FTit_Benefeciario, 'Localizar Beneficiarios', FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    //DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, nome_pla, inscricao_ben, titulacartei_ben, idade_ben,  digito_ben'+
    //' from tbl_beneficiario b, tbl_plano p where  b.cod_plano = p.cod_plano and cod_beneficiario = '+edt_cod_beneficiario.text);
    DB_OpenSQL('select nome_ben, cod_empresa, isnull(h.cod_plano, b.cod_plano) as cod_plano , isnull(p2.nome_pla, p.nome_pla) as nome_pla,'+
    ' inscricao_ben, titulacartei_ben, idade_ben, digito_ben'+
    ' from tbl_beneficiario b inner join tbl_plano p on b.cod_plano = p.cod_plano'+
    ' left join tbl_histplano h on b.cod_beneficiario = h.cod_beneficiario and '+DB_FormatDataSQL(edt_dtentrada_ain.Date, ftDate)+' >= dtinicial_hlp'+
    ' and '+DB_FormatDataSQL(edt_dtentrada_ain.date, ftDate)+' < dtfinal_hpl '+
    ' left join tbl_plano p2 on h.cod_plano = p2.cod_plano where b.cod_beneficiario  = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.text := Tab.FieldByNAme('idade_ben').AsString;
    edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
  end;
end;

procedure TFrm_Mov_2026.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2026.btn_excluirClick(Sender: TObject);
begin
  inherited;
    if Dlg_YesNo('Tem Certeza que deseja excluir o Processo de Interna��o ?', Self) then
    begin
      if DB_OpenSQL('select * from tbl_altainternacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text) > 0 then
        DB_ExecSQL('delete from tbl_altainternacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
      if fdt_principal3.spc_cons_med_controleuti.RecordCount > 0 then
        DB_ExecSQL('delete from tbl_controleuti where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
      if fdt_principal3.spc_cons_med_concessaointernacao.RecordCount > 0 then
        DB_ExecSQL('delete from tbl_concessaointernacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
      DB_ExecSQL('delete from tbl_autorizainternacao where cod_autorizainternacao ='+edt_cod_autorizainternacao.Text);
    end;
end;

procedure TFrm_Mov_2026.BotoesConcessaoONOFF(b: boolean);
begin
  btn_novocin.Enabled := b ;
  btn_alterarcin.Enabled := b ;
  btn_Salvarcin.Enabled := not b ;
  btn_cancelar_cin.Enabled := not b;
  btn_Remover_cin.Enabled := b ;
  dbg_concessao.visible := b ;
end;

procedure TFrm_Mov_2026.BotoesUtiONOFF(b: boolean);
begin
  btn_adicionar_uti.Enabled := b ;
  btn_altera_uti.Enabled := b ;
  btn_salvar_uti.Enabled := not b ;
  btn_cancelar_uti.Enabled := not b;
  btn_remover_uti.Enabled := b ;
  dbg_uti.visible := b ;
end;

procedure TFrm_Mov_2026.BotoesProcONPFF(b: boolean);
begin
  btn_adicionaritem.Enabled := b ;
  btn_alteraitem.Enabled := b ;
  btn_removeritem.Enabled := b ;
  btn_salvaritem.Enabled := not b ;
  btn_cancelaritem.Enabled := not b;
  dbg_itemservico.visible := b ;
end;

procedure TFrm_Mov_2026.btn_novocinClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  BotoesConcessaoONOFF(false);
  Obj_EmptyEditTag(self,0);
  edt_dtautorizacao_cin.Date := Date;
  cb2_cod_statusAutorizaInternacao.Enabled := false;
  BAS_CarregarCombo('cb2_cod_statusAutorizaInternacao', 'descricao_sai');
  Obj_SetFormObjValueByName(self, cb2_cod_statusAutorizaInternacao.Name, 1);
  EscreveLog(btn_novocin.name);
  DB_OpenSQL('select max(sequencia_cin)as sequencia_cin, max(dtfinal_cin) as dtfinal_cin'+
  ' from tbl_concessaointernacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
  if Tab.FieldByName('sequencia_cin').AsInteger <> 0 then
  begin
    edt_sequencia_cin.text := inttostr(Tab.FieldByName('sequencia_cin').AsInteger + 1);
    edt_dtinicio_cin.Text := Data_Format('dd/mm/yyyy',Tab.FieldByName('dtfinal_cin').AsDateTime + 1);
  end
  else begin
  edt_sequencia_cin.text := inttostr(1);
  edt_dtinicio_cin.Date := edt_dtentrada_ain.Date;
  end;
end;

procedure TFrm_Mov_2026.btn_alterarcinClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal3.spc_cons_med_concessaointernacao do begin
    BotoesConcessaoONOFF(false);
    edt_sequencia_cin.text := FieldByName('sequencia_cin').AsString ;
    edt_dtautorizacao_cin.text := Data_Format('dd/mm/yyyy',FieldByName('dtautorizacao_cin').AsDateTime) ;
    edt_dtinicio_cin.text := Data_Format('dd/mm/yyyy',FieldByName('dtinicio_cin').AsDateTime) ;
    edt_dtfinal_cin.text := Data_Format('dd/mm/yyyy',FieldByName('dtfinal_cin').AsDateTime) ;
    edt_auditor_cin.text := FieldByName('auditor_cin').AsString ;
    edt_numdiarias_cin.text := FieldByName('numdiarias_cin').AsString ;
    edt_justificativa_cin.Text := FieldByName('justificativa_cin').AsString;
    Obj_SetFormObjValueByName(self, cb2_cod_statusAutorizaInternacao.Name, fieldbyname('cod_statusAutorizaInternacao').Value);
  end;
  cb2_cod_statusAutorizaInternacao.Enabled := Acs_AcessoEspecial('202602');
  EscreveLog(btn_alterarcin.name);
end;

procedure TFrm_Mov_2026.btn_SalvarcinClick(Sender: TObject);
begin
  inherited;

  if not BAS_ValidarCampo(edt_sequencia_cin.name, '� necess�rio preencher a Seq�encia', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_dtautorizacao_cin.name, '� necess�rio preencher Dt. Autoriza��o', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_numdiarias_cin.Name, '� necess�rio preencher os N�meros de Di�rias', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_dtinicio_cin.Name, '� necess�rio preencher a Data Inicio', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_dtfinal_cin.Name, '� necess�rio preencher a Data Final', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_auditor_cin.Name, '� necess�rio preencher o Auditor', VLD_Preenchido) then
    exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar a Concess�o ?', Self) then Exit;
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_concessaointernacao ('+
  'cod_autorizainternacao, sequencia_cin, dtautorizacao_cin, numdiarias_cin, dtinicio_cin, dtfinal_cin, auditor_cin, justificativa_cin, cod_statusAutorizaInternacao ) values ('
  +edt_cod_autorizainternacao.text+','+edt_sequencia_cin.text+','''+Data_Format('mm/dd/yyyy',edt_dtautorizacao_cin.Date)+''', '''+edt_numdiarias_cin.text+''','+
  ' '''+Data_Format('mm/dd/yyyy',edt_dtinicio_cin.Date)+
  ''', '''+Data_Format('mm/dd/yyyy',edt_dtfinal_cin.Date)+''','''+edt_auditor_cin.text+''','''+edt_justificativa_cin.text+
  ''', '+cb2_cod_statusAutorizaInternacao.valueItem+')')
  else
      DB_ExecSQL('update tbl_concessaointernacao set '+
    'dtautorizacao_cin = '''+Data_Format('mm/dd/yyyy',edt_dtautorizacao_cin.Date)+''', '+
    'numdiarias_cin = '''+edt_numdiarias_cin.text+''','+
    'dtinicio_cin = '''+Data_Format('mm/dd/yyyy',edt_dtinicio_cin.Date)+''', '+
    'dtfinal_cin = '''+Data_Format('mm/dd/yyyy',edt_dtfinal_cin.Date)+''', '+
    'auditor_cin = '''+edt_auditor_cin.text+''', '+
    'justificativa_cin = '''+edt_justificativa_cin.text+''', '+
    'cod_statusAutorizaInternacao = '+cb2_cod_statusAutorizaInternacao.valueItem+
    ' where '+
    'cod_autorizainternacao = '+edt_cod_autorizainternacao.text+ ' and '+
    'sequencia_cin = '+edt_sequencia_cin.text);
  with fdt_principal3.spc_cons_med_concessaointernacao do begin
    Close;
    parambyname('@cod_autorizainternacao').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
  BotoesConcessaoONOFF(true);
  EscreveLog(btn_Salvarcin.name);
end;

procedure TFrm_Mov_2026.btn_cancelar_cinClick(
  Sender: TObject);
begin
  inherited;
  BotoesConcessaoONOFF(true);
  EscreveLog(btn_cancelar_cin.name);
end;

procedure TFrm_Mov_2026.btn_Remover_cinClick(
  Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir a Concess�o ?', Self) then begin
    DB_ExecSQL('delete from tbl_concessaointernacao where cod_autorizainternacao = '+
    edt_cod_autorizainternacao.text+' and sequencia_cin = '+fdt_principal3.spc_cons_med_concessaointernacao.FieldByName('sequencia_cin').asstring);
    fdt_principal3.spc_cons_med_concessaointernacao.close;
    fdt_principal3.spc_cons_med_concessaointernacao.open;
  end;
  EscreveLog(btn_Remover_cin.name);
end;

procedure TFrm_Mov_2026.btn_adicionar_utiClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  BotoesUtiONOFF(false);
  cb3_cod_statusAutorizaInternacao.Enabled := false;
  Obj_EmptyEditTag(self,2);
  BAS_CarregarCombo('cb3_cod_statusAutorizaInternacao', 'descricao_sai');
  Obj_SetFormObjValueByName(self, cb3_cod_statusAutorizaInternacao.Name, 1);
  EscreveLog(btn_adicionar_uti.name);
  DB_OpenSQL('select max(sequencia_uti)as sequencia_uti, max(dtalta_uti) as dtalta_uti'+
  ' from tbl_controleuti where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
  if Tab.FieldByName('sequencia_uti').AsInteger <> 0 then
  begin
    edt_sequencia_uti.text := inttostr(Tab.FieldByName('sequencia_uti').AsInteger + 1);
    edt_dtinternacao_uti.Text := Data_Format('dd/mm/yyyy',Tab.FieldByName('dtalta_uti').AsDateTime +1);
  end
  else begin
  edt_sequencia_uti.text := inttostr(1);
  edt_dtinternacao_uti.Date := Date;
  end;
end;

procedure TFrm_Mov_2026.btn_altera_utiClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal3.spc_cons_med_controleuti do begin
    BotoesUtiONOFF(false);
    edt_sequencia_uti.text := FieldByName('sequencia_uti').AsString ;
    edt_dtinternacao_uti.text := Data_Format('dd/mm/yyyy', FieldByName('dtinternacao_uti').AsDateTime );
    edt_dtalta_uti.text := Data_Format('dd/mm/yyyy',FieldByName('dtalta_uti').AsDateTime) ;
    edt_numdiarias_uti.text := FieldByName('numdiarias_uti').AsString ;
    edt_justificativa_uti.text := FieldByName('justificativa_uti').AsString ;
    Obj_SetFormObjValueByName(self, cb3_cod_statusAutorizaInternacao.Name, fieldbyname('cod_statusAutorizaInternacao').Value);
  end;
  cb3_cod_statusAutorizaInternacao.Enabled := Acs_AcessoEspecial('202602');
  EscreveLog(btn_altera_uti.name);
end;

procedure TFrm_Mov_2026.btn_salvar_utiClick(Sender: TObject);
begin
  inherited;

  if (not BAS_ValidarCampo(edt_sequencia_uti.name, '� necess�rio preencher a Seq�encia', VLD_Preenchido)) or
   (not BAS_ValidarCampo(edt_dtinternacao_uti.name, '� necess�rio preencher Dt. da Interna��o', VLD_Preenchido)) then
   //(not BAS_ValidarCampo(edt_dtalta_uti.Name, '� necess�rio preencher a Data da Alta', VLD_Preenchido)) or
   //(not BAS_ValidarCampo(edt_numdiarias_uti.Name, '� necess�rio preencher o N�mero de Di�rias', VLD_Preenchido) then
    exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar a UTI ?', Self) then Exit;
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_controleuti ('+
  'cod_autorizainternacao, sequencia_uti, dtinternacao_uti, dtalta_uti, numdiarias_uti, justificativa_uti, cod_statusAutorizaInternacao) values ('
  +edt_cod_autorizainternacao.text+','+edt_sequencia_uti.text+','''+Data_Format('mm/dd/yyyy',edt_dtinternacao_uti.Date)+''', '+
  DB_FormatDataSQL(edt_dtalta_uti.text, ftdate)+', '''+edt_numdiarias_uti.text+''', '''+edt_justificativa_uti.text+
  ''', '+cb3_cod_statusAutorizaInternacao.valueItem+')')
  else
      DB_ExecSQL('update tbl_controleuti set '+
    'dtinternacao_uti = '''+Data_Format('mm/dd/yyyy',edt_dtinternacao_uti.Date)+''', '+
    'dtalta_uti = '+DB_FormatDataSQL(edt_dtalta_uti.text, ftdate)+','+
    'numdiarias_uti = '''+edt_numdiarias_uti.text+''', '+
    'justificativa_uti = '''+edt_justificativa_uti.text+''', '+
    'cod_statusAutorizaInternacao = '+cb3_cod_statusAutorizaInternacao.valueItem+
    ' where '+
    'cod_autorizainternacao = '+edt_cod_autorizainternacao.text+' and '+
    'sequencia_uti = '+edt_sequencia_uti.text);
  with fdt_principal3.spc_cons_med_controleuti do begin
    Close;
    parambyname('@cod_autorizainternacao').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
 // DB_OpenSQL('select sum(numdiarias_uti) as numdiarias_uti from tbl_controleuti '+
 // ' where cod_autorizainternacao = '+edt_cod_autorizainternacao.text);
 // NDuti := tab.FieldbyName('numdiarias_uti').AsString;
  BotoesUtiONOFF(true); 
  EscreveLog(btn_salvar_uti.name);
end;

procedure TFrm_Mov_2026.btn_cancelar_utiClick(Sender: TObject);
begin
  inherited;
  BotoesUtiONOFF(true);
  EscreveLog(btn_cancelar_uti.name);
end;

procedure TFrm_Mov_2026.btn_remover_utiClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir a UTI ?', Self) then begin
    DB_ExecSQL('delete from tbl_controleuti where cod_autorizainternacao = '+
    edt_cod_autorizainternacao.text+' and sequencia_uti = '+fdt_principal3.spc_cons_med_controleuti.FieldByName('sequencia_uti').asstring);
    fdt_principal3.spc_cons_med_controleuti.close;
    fdt_principal3.spc_cons_med_controleuti.open;
  end;
  EscreveLog(btn_remover_uti.name);
end;

procedure TFrm_Mov_2026.tbs_concessaoShow(Sender: TObject);
begin
  inherited;
  lbl_tlconcessao.Caption := '0';
  with fdt_principal3.spc_cons_med_concessaointernacao do begin
    Close;
    parambyname('@cod_autorizainternacao').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
  if (edt_cod_beneficiario.Text <> '') and (edt_cod_conveniado.Text <> '') then
  begin
    DB_OpenSQL('select isnull(sum(numdiarias_cin),0) as numdiarias_cin from tbl_concessaointernacao c'+
    ' inner join tbl_autorizainternacao a on c.cod_autorizainternacao = a.cod_autorizainternacao'+
    ' where dtinicio_cin > getdate() - 365 and cod_beneficiario = '+edt_cod_beneficiario.Text+
    ' and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-'));
    lbl_tlconcessao.Caption := tab.fieldbyName('numdiarias_cin').AsString;
  end;

end;

procedure TFrm_Mov_2026.tbl_utiShow(Sender: TObject);
begin
  inherited;
  with fdt_principal3.spc_cons_med_controleuti do begin
    Close;
    parambyname('@cod_autorizainternacao').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
end;

procedure TFrm_Mov_2026.TabSheet4Show(Sender: TObject);
begin
  inherited;
   DB_OpenSQL('select cod_autorizainternacao, dtalta_alt, cod_tipointernacao, vlestimado_alt, vlinformado_alt,'+
   'vlpago_alt, numintercorrencia_alt, tlvisitas_alt, tlautorizadas_alt, numtldiarias_alt, numtldiariasuti_alt, cod_espmedamb, '+
   'queixa_alt, conclusoes_alt, antibioticoterapia_alt, evolucaoclinica_alt, exame_alt, prescricao_alt, examerealizados_alt, '+
   'especialidades_alt, medicoassist_alt from tbl_altainternacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
      edt_dtalta_alt.Text := Tab.FieldByName('dtalta_alt').AsString;//Data_Format('mm/dd/yyyy',Tab.FieldByName('dtalta_alt').AsDateTime) ;
      edt_vlestimado_alt.text := Tab.FieldByName('vlestimado_alt').AsString ;
      edt_vlinformado_alt.text := Tab.FieldByName('vlinformado_alt').AsString ;
      edt_vlpago_alt.text := Tab.FieldByName('vlpago_alt').AsString ;
      edt_numintercorrencia_alt.text := Tab.FieldByName('numintercorrencia_alt').AsString ;
      edt_tlvisitas_alt.text := Tab.FieldByName('tlvisitas_alt').AsString ;
      edt_tlautorizadas_alt.text := Tab.FieldByName('tlautorizadas_alt').AsString ;
      edt_numtldiarias_alt.text := Tab.FieldByName('numtldiarias_alt').AsString ;
      edt_numtldiariasuti_alt.text := tab.FieldByName('numtldiariasuti_alt').AsString ;
      edt_cod_espmedamb.text := tab.FieldByName('cod_espmedamb').AsString ;
      edt_queixa_alt.Text := Tab.fieldbyname('queixa_alt').AsString;
      edt_conclusoes_alt.Text := Tab.fieldbyname('conclusoes_alt').AsString;
      edt_antibioticoterapia_alt.Text := Tab.fieldbyname('antibioticoterapia_alt').AsString;
      edt_evolucaoclinica_alt.Text := Tab.fieldbyname('evolucaoclinica_alt').AsString;
      edt_exame_alt.Text := Tab.fieldbyname('exame_alt').AsString;
      edt_prescricao_alt.Text := Tab.fieldbyname('prescricao_alt').AsString;
      edt_examerealizados_alt.Text := Tab.fieldbyname('examerealizados_alt').AsString;
      edt_especialidades_alt.Text := Tab.fieldbyname('especialidades_alt').AsString;
      edt_medicoassist_alt.Text := Tab.fieldbyname('medicoassist_alt').AsString;
end;

procedure TFrm_Mov_2026.tbs_principalShow(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select cod_tipointernacao from tbl_altainternacao where cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
  Obj_SetFormObjValueByName(self, cbx_cod_tipointernacao.name, Tab.FieldByName('cod_tipointernacao').AsString) ;
end;

procedure TFrm_Mov_2026.edt_dtfinal_cinExit(Sender: TObject);
begin
  inherited;
  if edt_dtfinal_cin.Text <> '' then begin
    edt_numdiarias_cin.text := FloatToStr((edt_dtfinal_cin.date - edt_dtinicio_cin.date) + 1) ;
    //if edt_numdiarias_cin.Text = '0' then edt_numdiarias_cin.Text := '1';
  end;
end;

procedure TFrm_Mov_2026.edt_dtalta_utiExit(Sender: TObject);
begin
  inherited;
  if edt_dtalta_uti.Text = '' then begin
    if Date = edt_dtinternacao_uti.date then
      edt_numdiarias_uti.text := FloatToStr(Date - edt_dtinternacao_uti.date +1) 
    else
      edt_numdiarias_uti.text := FloatToStr(Date - edt_dtinternacao_uti.date);
  end
  else
    edt_numdiarias_uti.text := FloatToStr(edt_dtalta_uti.date - edt_dtinternacao_uti.date) ;
end;

procedure TFrm_Mov_2026.btn_adicionaritemClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  BotoesProcONPFF(false);
  Obj_EmptyEditTag(self,5);
  edt_dtatendimento_ita.Date:= edt_dtentrada_ain.Date;
  pnl_procedimento2.Visible := false;
  cbx_cod_statusAutorizaInternacao.Enabled := false;
  BAS_CarregarCombo('cbx_cod_statusAutorizaInternacao', 'descricao_sai');
  Obj_SetFormObjValueByName(self, cbx_cod_statusAutorizaInternacao.Name, 1);
end;

procedure TFrm_Mov_2026.btn_alteraitemClick(Sender: TObject);
begin
  inherited;
  pnl_procedimento2.Visible := false;
  FStatus2 := FST_Alteracao;
  BotoesProcONPFF(false);
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    edt_cod_itemservico.text := fieldbyname('cod_itemservico').AsString;
    edt_descricao_itc.Text := fieldbyname('nome_its').AsString;
    edt_obs_ita.Text := fieldbyname('obs_ita').AsString;
    edt_qtde_ita.Text := fieldbyname('qtde_ita').AsString;
    edt_dtalteracao_ita.Text := fieldbyname('dtsistema_ita').AsString;
    edt_dtatendimento_ita.Date:= fieldbyname('dtatendimento_ita').AsDateTime;
    Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, fieldbyname('cod_usuario').Value);
    Obj_SetFormObjValueByName(self, cbx_cod_statusAutorizaInternacao.Name, fieldbyname('cod_statusAutorizaInternacao').Value);
  end;
  cbx_cod_statusAutorizaInternacao.Enabled := Acs_AcessoEspecial('202602');


end;

procedure TFrm_Mov_2026.btn_salvaritemClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_itemservico.name, '� necess�rio preencher o Item de Servi�o', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_qtde_ita.name, '� necess�rio preencher a Qtde.', VLD_Preenchido)) then
    exit ;
  if edt_descricao_itc.Text = '' then begin
    Dlg_Alerta('O Codigo do Item de Servi�o n�o Existe',self);
    exit;
  end;
  if pnl_procedimento2.Visible then begin
    Dlg_Alerta('O Procedimento n�o est� autorizado para o Conveniado!',self);
    Exit;
  end;
  if edt_dtentrada_ain.Text = '' then begin
    Dlg_Alerta('Informe a Data de Entrada da Interna��o',self);
    PageControl1.ActivePageIndex := 0;
    edt_dtentrada_ain.SetFocus;
    exit;
  end;
  if edt_dtatendimento_ita.Date < edt_dtentrada_ain.Date then
     begin
     Dlg_Alerta('A Data de Atendimento n�o pode ser menor que a Data de Interna��o.',self);
     edt_dtatendimento_ita.Date:= 0;
     edt_dtatendimento_ita.SetFocus;
     Exit;
     end;
  if edt_dtalta_uti.Date <> Null then
     if edt_dtalta_uti.Date = 0 then
        if edt_dtatendimento_ita.Date < edt_dtentrada_ain.Date then
           begin
           Dlg_Alerta('A Data de Atendimento n�o pode ser menor que a Data de Interna��o.',self);
           edt_dtatendimento_ita.Date:= 0;
           edt_dtatendimento_ita.SetFocus;
           Exit;
           end
        else
           if edt_dtatendimento_ita.Date > Date then
              begin
              Dlg_Alerta('A Data de Atendimento n�o pode ser maior que Data de Hoje.',self);
              edt_dtatendimento_ita.Date:= 0;
              edt_dtatendimento_ita.SetFocus;
              Exit;
              end
           else
     else
        if edt_dtatendimento_ita.Date > edt_dtalta_alt.Date then
           begin
           Dlg_Alerta('A Data de Atendimento n�o pode ser maior que Data de Alta.',self);
           edt_dtatendimento_ita.Date:= 0;
           edt_dtatendimento_ita.SetFocus;
           Exit;
           end;

  edt_dtalteracao_ita.Date := Date ;
  BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
  Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FCod_usuario);

  if DB_OpenSQL('select * from tbl_autorizacaomedica where cod_autorizacaoMedica = '+edt_cod_autorizainternacao.Text) > 0 then
    DB_ExecSQL('update tbl_autorizacaomedica set cod_beneficiario = '+edt_cod_beneficiario.Text+','+
    ' cod_itemservico = '''+edt_cod_itemservico.Text+''','+
    ' cod_crm = '+edt_cod_crm.Text+','+
    ' nomeMedico_aum = '''+edt_medico_crm.Text+''', dtsistema_aum = '''+Data_Format('mm/dd/yyyy',Date)+''','+
    ' cod_usuario = '+IntToStr(FCod_Usuario)+', cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' Where cod_autorizacaoMedica = '+edt_cod_autorizainternacao.Text)
  else
    DB_ExecSQL('insert into tbl_autorizacaomedica ( cod_autorizacaoMedica, cod_beneficiario, dtatendimento_aum, '+
    'cod_itemservico, cod_crm, nomeMedico_aum, dtsistema_aum, cod_usuario, cod_conveniado) values ('
    +edt_cod_autorizainternacao.Text+', '+edt_cod_beneficiario.Text+', '''+Data_Format('mm/dd/yyyy',edt_dtatendimento_ita.Date)+''','''+
    edt_cod_itemservico.Text+''', '+edt_cod_crm.Text+','''+
    edt_medico_crm.Text+''', '''+Data_Format('mm/dd/yyyy',Date)+''','+IntToStr(FCod_Usuario)+', '+STR_RemoveChar(edt_cod_conveniado.text, '-')+')');
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_itemautorizacao (cod_autorizacaoMedica, cod_itemservico, obs_ita, qtde_ita, dtsistema_ita, cod_usuario, dtatendimento_ita, cod_statusAutorizaInternacao) values ('
  +edt_cod_autorizainternacao.text+','+edt_cod_itemservico.text+','''+edt_obs_ita.text+''','+edt_qtde_ita.Text+', '''+
  Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+IntToStr(FCod_Usuario)+', '''+Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+
  ''', '+cbx_cod_statusAutorizaInternacao.valueItem+')')
  else
  DB_ExecSQL('update tbl_itemautorizacao set '+
    'cod_itemservico = '''+edt_cod_itemservico.text+''','+
    ' obs_ita = '''+edt_obs_ita.Text+''','+
    ' qtde_ita = '+edt_qtde_ita.text+','+
    ' dtatendimento_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+''','+
    ' dtsistema_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+
    ' cod_usuario = '+IntToStr(FCod_Usuario)+','+
    ' cod_statusAutorizaInternacao = '+cbx_cod_statusAutorizaInternacao.valueItem+
    ' where '+
    ' cod_autorizacaoMedica = '+edt_cod_autorizainternacao.text+' and cod_itemservico =  '''+edt_cod_itemservico.Text+'''');
  with fdt_principal4.spc_cons_adm_itemautorizacao do begin
    Close;
    parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
  BotoesProcONPFF(true);
  EscreveLog(btn_salvaritem.name);
end;

procedure TFrm_Mov_2026.btn_cancelaritemClick(Sender: TObject);
begin
  inherited;
  BotoesProcONPFF(true);
  EscreveLog(btn_cancelaritem.name);
  pnl_procedimento2.Visible := false;
end;

procedure TFrm_Mov_2026.btn_removeritemClick(Sender: TObject);
begin
  inherited;
    if Dlg_YesNo('Tem Certeza que deseja excluir o Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_itemautorizacao where cod_autorizacaoMedica = '+
    edt_cod_autorizainternacao.text+' and cod_itemservico = '+fdt_principal4.spc_cons_adm_itemautorizacao.FieldByName('cod_itemservico').asstring);
    fdt_principal4.spc_cons_adm_itemautorizacao.close;
    fdt_principal4.spc_cons_adm_itemautorizacao.open;
  end;
  EscreveLog(btn_removeritem.name);
end;

procedure TFrm_Mov_2026.edt_cod_itemservicoButtonClick(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.Text <> '' then
  begin
    FPesquisaItemSevico := 'select i.cod_itemservico, cod_padrao, nome_its, apelido_its, max(dtvalidade_hit)'+
    ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
    FPesquisaSQL  := FPesquisaItemSevico;
    edt_cod_itemservico.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, 'Cod. Item Serv., Cod.AMB, Descri��o, Apelido, Dt. Ult. Atual.', 'Localizar Item de Servi�o', FPesquisaSQL, true);
    edt_cod_itemservicoExit(self);
  end;

  {
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServi�o, Cod. Padrao, Descri��o do Item de Servi�o/Procedimento',
  'Localizar Itens de Servi�os', '', true));
  edt_cod_itemservicoExit(self); }
end;

procedure TFrm_Mov_2026.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  if (edt_cod_itemservico.text <> '') and (edt_cod_conveniado.Text <> '') then
  begin
    DB_OpenSQL('select distinct i.nome_its from tbl_itemservico i '+
    ' inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico'+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' and i.cod_itemservico = '+edt_cod_itemservico.text);
    edt_descricao_itc.text := Tab.FieldByName('nome_its').AsString;
    if edt_descricao_itc.Text = '' then
    begin
      edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
      if edt_nome_its.Text <> '' then
        pnl_procedimento2.Visible := true;
    end
    else
      pnl_procedimento2.Visible := false;
  end;
  {
  if edt_cod_itemservico.text <> '' then
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text); }
end;

procedure TFrm_Mov_2026.edt_qtde_itaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  btn_salvaritemClick(self);
end;

procedure TFrm_Mov_2026.tbs_procedimentoShow(Sender: TObject);
begin
  inherited;
  with fdt_principal4.spc_cons_adm_itemautorizacao do begin
    Close;
    parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizainternacao.text ;
    Open;
  end;
end;

procedure TFrm_Mov_2026.PDJButton1Click(Sender: TObject);
begin
  inherited;
  //if CriticaParametros then
  //  Exit;
  with fdt_principal5.spc_cons_med_autorizainternacao03 do
  begin
    close;
    ParamByName('@cod_autorizainternacao').AsString := edt_cod_autorizainternacao.Text;
    open;
  end;
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    close;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizainternacao.Text;
    open;
  end;
  Frm_Imp_4135 := TFrm_Imp_4135.Create(Self);
  Frm_Imp_4135.QuickRep1.Preview;
  Frm_Imp_4135.Release;
  fdt_principal5.spc_cons_med_autorizainternacao03.close;
  fdt_principal4.spc_cons_adm_itemautorizacao.close;
end;


procedure TFrm_Mov_2026.btn_alterarClick(Sender: TObject);
begin
  FTitPesquisa  := 'Localizar Interna��o' ;
  FPesquisaTit  := 'Cod. Int., Cod. Conv, Nome do Conveniado, Inscricao, Nome do Benefici�rio, '+
  ' Cod.AMB, Descri��o, CRM, Nome do m�dico, Dt.entrada, Usu�rio, Status';

  FPesquisaSQL := 'select a.cod_autorizainternacao, c.cod_conveniado, c.nome_con, b.inscricao_ben, '+
  ' b.nome_ben, i.cod_padrao, i.nome_its, cr.cod_crm, cr.medico_crm, a.dtentrada_ain, u.descricao_usu, descricao_sai '+
  'from tbl_autorizainternacao a, tbl_conveniado c, tbl_beneficiario b, tbl_crm cr, tbl_usuario u, tbl_itemservico i, tbl_statusAutorizaInternacao s '+
  'where c.cod_conveniado = a.cod_conveniado and a.cod_beneficiario = b.cod_beneficiario and a.cod_crm = cr.cod_crm '+
  ' and a.cod_usuario = u.cod_usuario and a.cod_padrao = i.cod_padrao and a.cod_statusAutorizaInternacao = s.cod_statusAutorizaInternacao';
  if rdb_emAnalise.Checked then
    FstatusAutorizaInternacao := ' and a.cod_statusAutorizaInternacao = 1';
  if rdb_aprovado.Checked then
    FstatusAutorizaInternacao := ' and a.cod_statusAutorizaInternacao = 2';
  if rdb_todos.Checked then
    FstatusAutorizaInternacao := '';
  FPesquisaSQL := FPesquisaSQL + FstatusAutorizaInternacao;
  inherited;

end;

procedure TFrm_Mov_2026.btn_salvarClick(Sender: TObject);
begin
  if edt_dtalta_alt.Date <> 0 then
    if edt_dtalta_alt.Date < edt_dtentrada_ain.Date then
    begin
      Dlg_Alerta('A Data de Alta n�o pode ser menor que a Data de Interna��o.',self);
      edt_dtalta_alt.Date:= 0;
      PageControl1.ActivePageIndex := 4;
      edt_dtalta_alt.SetFocus;
      Exit;
    end
    else
      if edt_dtalta_alt.Date > Date then
      begin
        Dlg_Alerta('A Data de Alta n�o pode ser maior que Data de Hoje.',self);
        edt_dtalta_alt.Date:= 0;
        tbs_alta.SetFocus;
        edt_dtalta_alt.SetFocus;
        Exit;
      end;
  inherited;
  CarregarCombos;
end;

procedure TFrm_Mov_2026.edt_cod_conveniadoEnter(Sender: TObject);
begin
  inherited;
  FconvOLD := STR_RemoveChar(edt_cod_conveniado.Text,'-');
end;

procedure TFrm_Mov_2026.btn_novoClick(Sender: TObject);
var
  VerificaCodigo : Boolean;
begin
  inherited;
  VerificaCodigo := false;
  edt_cod_autorizainternacao.text := DB_GetPrimaryKey();
  pnl_procedimento.Visible := false;
  edt_cod_autorizainternacao.Enabled := false ;
  PageControl1.Visible := true ;
  edt_cod_statusAutorizaInternacao.Text := '1';
  edt_dtalteracao_ain.Date := now ;
  edt_rn_ain.Text := 'N';
  edt_excecao_ain.Text := 'N';
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  edt_cod_conveniado.SetFocus;
  while not VerificaCodigo  do
  begin
    if DB_OpenSQL('select * from tbl_autorizacaoMedica where cod_autorizacaoMedica = '+edt_cod_autorizainternacao.Text) > 0 then
      edt_cod_autorizainternacao.Text := DB_GetPrimaryKey()
    else
      VerificaCodigo := true;
  end;
  btn_imprimirAutorizacao.Visible := false;
end;

procedure TFrm_Mov_2026.btn_aprovarClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem certeza que deseja Aprovar a Autoriza��o?', self) then
  begin
    edt_cod_statusAutorizaInternacao.Text := '2';
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATEN��O ! Ocorreu algum erro ao tentar salvar ! N�o foi poss�vel salvar', self);
      Exit ;
    end;
    if FTransacao then
      DB_Commit;
    BotoesOnOff(false);
    BAS_LimparTela;
    FStatus := FST_Normal;
  end;  
end;

procedure TFrm_Mov_2026.dbg_itemservicoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('descricao_sai').AsString =  'Aprovado' then
    (Sender as TDBGrid).Canvas.Font.Color := clGreen ;
  end;
  dbg_itemservico.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Mov_2026.dbg_itemservicoDblClick(Sender: TObject);
begin
  inherited;
  btn_alteraitemClick(self);
end;

procedure TFrm_Mov_2026.btn_imprimirAutorizacaoClick(Sender: TObject);
var
  Retorno : integer;
begin
  inherited;
  Int_Retorno := rStatusImpressora_DUAL_DarumaFramework();
//////////////////////  showmessage('Ret '+inttostr(Int_Retorno));
 { case Int_Retorno of
    0 : MSG_ERRO := '0 - Impressora Desligada!';
    1 : MSG_ERRO := '1 -Impressora OK!';
    -50 : MSG_ERRO := '-50 - Impressora OFF-LINE!';
    -51 : MSG_ERRO := '-51 - Impressora Sem papel!';
    -27 : MSG_ERRO := '-27 -Erro Generico!';
  end;  }
  if Int_Retorno <> 1 then begin
    with fdt_principal5.spc_cons_med_autorizainternacao02 do
    begin
      close;
      ParamByName('@cod_autorizainternacao').AsString := edt_cod_autorizainternacao.text;
      open;
    end;
    Frm_Imp_4126 := TFrm_Imp_4126.Create(Self);
    Frm_Imp_4126.FCartei := edt_carteira.Text;
    Frm_Imp_4126.QuickRep1.PrinterSettings.Copies := 1;
    Frm_Imp_4126.QuickRep1.Preview;
    Frm_Imp_4126.Release;
    exit;
  end;
  with fdt_principal5.spc_cons_med_autorizainternacao02 do
  begin
    close;
    ParamByName('@cod_autorizainternacao').AsString := edt_cod_autorizainternacao.text;
    open;
    with Mem_autorizacao do
    begin
      Clear;
      Lines.Add('<sp>28</sp>'+DateToStr(Date)+' <hr></hr><sp>10</sp>');
      Lines.Add('<e><b><ce>Guia de Interna��o</ce></b></e>');
      Lines.Add('<l></l>');
      Lines.Add('Autoriza��o: <e>'+Fieldbyname('cod_autorizainternacao').AsString+'</e>');
      Lines.Add('Dt. Autoriza��o: '+Fieldbyname('dtalteracao_ain').AsString);
      Lines.Add('Dt. Interna��o: '+Fieldbyname('dtprevisao_ain').AsString);
      Lines.Add('Paciente: '+Fieldbyname('nome_ben').AsString);
      Lines.Add('Carteira: '+edt_carteira.Text);
      //Lines.Add('<l></l>');
      //Lines.Add('<ce><tc>-</tc></ce>');
      Lines.Add('<tc>-</tc>');
      Lines.Add('<b>Procedimentos Autorizados: </b>');
      Lines.Add(STR_AddSpaces('Cod. AMB',8)+STR_AddSpaces('Descri��o',35));
      Lines.Add('  ');
      Lines.Add(STR_AddSpaces(FieldByName('cod_padrao').AsString,8)+STR_AddSpaces(FieldByName('nomeextrato_its').AsString,70));
      Lines.Add('  ');
      Lines.Add('Acomoda��o: '+Fieldbyname('nome_aco').AsString);
      Lines.Add('Concedido 1 Di�ria');
      Lines.Add('Obs: '+Fieldbyname('obs_ain').AsString);
      Lines.Add(pchar('  '));
      Lines.Add('<tc>-</tc>');
      Lines.Add('Conveniado: '+fieldbyName('nome_con').AsString);
      Lines.Add('End: '+fieldbyName('enderecojur_con').AsString);
      Lines.Add('Bairro: '+fieldbyName('bairrojur_con').AsString);
      Lines.Add('Telefone: '+fieldbyName('fonedirecao_con').AsString);
      Lines.Add('M�dico solicitante: '+fieldbyName('cod_crm').AsString+' - '+fieldbyName('medico_crm').AsString);
      Lines.Add('<l></l>');
      Lines.Add('<tc>_</tc>');
      Lines.Add('Emitente: '+FNome_Usu);
      Lines.Add('<l></l>');
      Lines.Add('<tc>_</tc>');
      Lines.Add('Assinatura do benefici�rio');
      Lines.Add('  ');
      //Lines.Add('<tc>_</tc>');
      Lines.Add('<e>IMASF</e>');
      Lines.Add('<c>Rua Dom Luiz, 201 - Nova Petr�polis - S. B. do Campo - SP</c>');
      Lines.Add('<c>3737-7000 - www.imasf.com.br - internacao@imasf.com.br</c>');
      Lines.Add('<sl>3</sl>');
     // Lines.Add('<gui></gui>');
    end;
  end;
  Retorno := iImprimirTexto_DUAL_DarumaFramework(pchar(Mem_autorizacao.Text),0);
  Retorno := iImprimirTexto_DUAL_DarumaFramework(pchar(' <gui></gui>'),0);

end;

procedure TFrm_Mov_2026.PDJButton2Click(Sender: TObject);
begin
  inherited;
  SalvarAltaInternacao;
end;

procedure TFrm_Mov_2026.dbg_concessaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('descricao_sai').AsString =  'Aprovado' then
    (Sender as TDBGrid).Canvas.Font.Color := clGreen ;
  end;
  dbg_concessao.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Mov_2026.dbg_utiDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('descricao_sai').AsString =  'Aprovado' then
    (Sender as TDBGrid).Canvas.Font.Color := clGreen ;
  end;
  dbg_uti.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure TFrm_Mov_2026.dbg_concessaoDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarcinClick(self);
end;

procedure TFrm_Mov_2026.dbg_utiDblClick(Sender: TObject);
begin
  inherited;
  btn_altera_utiClick(self);
end;

end.
