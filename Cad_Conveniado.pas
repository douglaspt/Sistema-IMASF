unit Cad_Conveniado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, ShellApi,
  Db, Grids, DBGrids, Mask, jpeg, BDateEdit, BComboBox, BEdit,
  BEditButton, DCChoice, DBCtrls;

type
  TFrm_Cad_Conveniado = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel1: TPanel;
    edt_nome_con: TBEdit;
    Panel5: TPanel;
    edt_cnpj_con: TBEdit;
    Panel6: TPanel;
    edt_razao_con: TBEdit;
    edt_processo_con: TBEdit;
    PageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox1: TGroupBox;
    Panel7: TPanel;
    edt_nomedirecao_con: TBEdit;
    Panel8: TPanel;
    edt_fonedirecao_con: TBEdit;
    Panel9: TPanel;
    edt_registrodirecao_con: TBEdit;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    edt_nomecontato_con: TBEdit;
    Panel11: TPanel;
    edt_fonecont1_con: TBEdit;
    Panel12: TPanel;
    edt_faxcont_con: TBEdit;
    edt_fonecont2_con: TBEdit;
    GroupBox3: TGroupBox;
    Panel13: TPanel;
    edt_dtassinatura_con: TBDateEdit;
    GroupBox4: TGroupBox;
    mem_obs_con: TMemo;
    GroupBox5: TGroupBox;
    Panel16: TPanel;
    edt_enderecojur_con: TBEdit;
    Panel17: TPanel;
    edt_bairrojur_con: TBEdit;
    edt_cidadejur_con: TBEdit;
    Panel18: TPanel;
    edt_cepjur_con: TBEdit;
    cbx_cod_ufjur_con: TBComboBox;
    GroupBox6: TGroupBox;
    Panel19: TPanel;
    edt_enderecocor_con: TBEdit;
    Panel20: TPanel;
    edt_bairrocor_con: TBEdit;
    edt_cidadecor_con: TBEdit;
    Panel21: TPanel;
    edt_cepcor_con: TBEdit;
    cbx_cod_ufcor_con: TBComboBox;
    Panel23: TPanel;
    edt_email_con: TBEdit;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    GroupBox7: TGroupBox;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    chb_autormedicamento_con: TCheckBox;
    chb_autormatmed_con: TCheckBox;
    chb_constamanual_con: TCheckBox;
    GroupBox8: TGroupBox;
    Panel35: TPanel;
    LsB_Especialidade: TListBox;
    cbx_cod_espmedamb: TBComboBox;
    btn_adicionarEspecialidade: TPDJButton;
    btn_removerEspecialidade: TPDJButton;
    Label1: TLabel;
    Label2: TLabel;
    edt_nomereduzido_con: TBEdit;
    edt_porte1_pan: TBEdit;
    edt_porte2_pan: TBEdit;
    edt_porte3_pan: TBEdit;
    edt_porte4_pan: TBEdit;
    edt_porte5_pan: TBEdit;
    edt_porte6_pan: TBEdit;
    edt_porte7_pan: TBEdit;
    edt_porte8_pan: TBEdit;
    LsB_Plano: TListBox;
    Label4: TLabel;
    cbx_cod_plano: TBComboBox;
    btn_adicionarPlano: TPDJButton;
    btn_RemoverPlano: TPDJButton;
    edt_dtcadastro_con: TBDateEdit;
    pnl_alerta: TPanel;
    edt_cod_sitconveniado: TBEdit;
    btn_situacao: TPDJButton;
    edt_dtsituacao_con: TBDateEdit;
    Label5: TLabel;
    tbs_corpoclinico: TTabSheet;
    DataSource2: TDataSource;
    btn_novocln: TPDJButton;
    btn_alterarcln: TPDJButton;
    btn_Remover_cln: TPDJButton;
    btn_Salvarcln: TPDJButton;
    btn_cancelar_cln: TPDJButton;
    Panel37: TPanel;
    edt_cpf_cln: TMaskEdit;
    Panel38: TPanel;
    Panel39: TPanel;
    edt_nome_cln: TBEdit;
    cb2_cod_espmedamb: TBComboBox;
    pnl_crm: TPanel;
    edt_cod_crm: TBEdit;
    dbg_corpoClinico: TDBGrid;
    PDJButton5: TPDJButton;
    TabSheet3: TTabSheet;
    btn_novoF: TPDJButton;
    btn_alterarF: TPDJButton;
    btn_removerF: TPDJButton;
    btn_SalvarF: TPDJButton;
    btn_cancelarF: TPDJButton;
    DataSource1: TDataSource;
    Panel36: TPanel;
    edt_sequencia_cne: TBEdit;
    edt_razao_cne: TBEdit;
    Panel40: TPanel;
    edt_endereco_cne: TBEdit;
    edt_bairro_cne: TBEdit;
    Panel41: TPanel;
    Panel42: TPanel;
    cbx_cod_uf: TBComboBox;
    DBG_Filial: TDBGrid;
    cbx_cod_classificacaoConveniado: TBComboBox;
    edt_cod_conveniado: TEditButton;
    rdb_ativos: TRadioButton;
    rdb_todos: TRadioButton;
    Label6: TLabel;
    LsB_Plano2: TListBox;
    ckb_plano2: TCheckBox;
    ckb_plano: TCheckBox;
    edt_empenho1_con: TBEdit;
    Panel43: TPanel;
    edt_empenho2_con: TBEdit;
    Panel44: TPanel;
    edt_empenho3_con: TBEdit;
    TabSheet10: TTabSheet;
    dbg_contrato: TDBGrid;
    btn_novocto: TPDJButton;
    btn_alterarcto: TPDJButton;
    btn_removercto: TPDJButton;
    btn_salvarcto: TPDJButton;
    btn_cancelarcto: TPDJButton;
    Panel46: TPanel;
    Panel47: TPanel;
    edt_descricao_cse: TBEdit;
    edt_valor_cse: TBEdit;
    DataSource3: TDataSource;
    cbx_situacao_cse: TDCComboBox;
    dbg_itemservEsp: TDBGrid;
    Panel45: TPanel;
    edt_cod_itemServico: TBEdit;
    Panel48: TPanel;
    edt_dotacao_ise: TBEdit;
    btn_novoise: TPDJButton;
    btn_alterarise: TPDJButton;
    btn_salvarise: TPDJButton;
    btn_cancelarise: TPDJButton;
    btn_removerise: TPDJButton;
    cb2_cod_plano: TDCComboBox;
    DataSource4: TDataSource;
    edt_cod_contratoServicoEspecial: TDBEdit;
    edt_site_con: TBEdit;
    Panel22: TPanel;
    edt_dtsistema_con: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    Panel49: TPanel;
    edt_dotacao_cse: TBEdit;
    edt_empenho_cse: TBEdit;
    edt_vlempenho2_con: TBEdit;
    edt_saldoempenho2_con: TBEdit;
    btn_calcularsaldo: TButton;
    tbs_processo: TTabSheet;
    dts_conveniadoProcesso: TDataSource;
    Panel54: TPanel;
    cb2_cod_statusAtivo: TDCComboBox;
    rdb_corpoClinicoAtivo: TRadioButton;
    rdb_corpoClinicoTodos: TRadioButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel53: TPanel;
    edt_processo_cpr: TBEdit;
    edt_anoProcesso_cpr: TBEdit;
    edt_numConvenio_cpr: TBEdit;
    edt_anoConvenio_cpr: TBEdit;
    Panel50: TPanel;
    edt_dataAssinatura_cpr: TBDateEdit;
    edt_dataRenovacao_cpr: TBDateEdit;
    edt_dataVencimento_cpr: TBDateEdit;
    Panel51: TPanel;
    cbx_cod_statusAtivo: TDCComboBox;
    edt_dataSistema_cpr: TBDateEdit;
    cb2_cod_usuario: TDCComboBox;
    Panel52: TPanel;
    GroupBox9: TGroupBox;
    mem_obs_cpr: TMemo;
    btn_adicionarProcesso: TPDJButton;
    btn_alterarProcesso: TPDJButton;
    btn_salvarProcesso: TPDJButton;
    btn_cancelarProcesso: TPDJButton;
    btn_removerProcesso: TPDJButton;
    dbg_processoConveniado: TDBGrid;
    TabSheet12: TTabSheet;
    dbg_empenho: TDBGrid;
    dts_empenhoConveniado: TDataSource;
    Panel55: TPanel;
    edt_processo2: TDBEdit;
    edt_anoProcesso2: TDBEdit;
    edt_numConvenio2: TDBEdit;
    edt_anoConvenio2: TDBEdit;
    edt_cod_conveniadoProcesso: TDBEdit;
    btn_adicionarEmpenho: TPDJButton;
    btn_alterarEmpenho: TPDJButton;
    btn_salvarEmpenho: TPDJButton;
    btn_cancelarEmpenho: TPDJButton;
    Panel56: TPanel;
    edt_numEmpenho_emc: TBEdit;
    edt_anoEmpenho_emc: TBEdit;
    Panel57: TPanel;
    cb3_cod_statusAtivo: TDCComboBox;
    edt_dtsistema_emc: TBDateEdit;
    Panel58: TPanel;
    edt_vlEmpenho_emc: TBEdit;
    cbx_cnpj_emc: TDCComboBox;
    edt_dtrenovacao_con: TBDateEdit;
    edt_contrato_con: TBEdit;
    TabSheet13: TTabSheet;
    dbg_historicoPagamento: TDBGrid;
    dts_histempenhoConveniado: TDataSource;
    edt_cod_empenhoConveniado: TDBEdit;
    lbl_saldo: TLabel;
    lbl_saldo2: TLabel;
    edt_cep_cne: TMaskEdit;
    cbx_cod_cidadeCep: TDCComboBox;
    edt_cnpj_cne: TBEdit;
    edt_fone_cne: TBEdit;
    btn_buscarcep: TPDJButton;
    chb_recolheISS: TCheckBox;
    TabSheet14: TTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    edt_datainicial_cco: TBDateEdit;
    edt_datafinal_cco: TBDateEdit;
    btn_adicionarrenovproc: TPDJButton;
    btn_alterarrenovproc: TPDJButton;
    btn_salvarrenovproc: TPDJButton;
    btn_cancelarrenovproc: TPDJButton;
    dbg_histcondcomerciais: TDBGrid;
    dts_histcondcomerciais: TDataSource;
    cbx_tipocondcomerc: TDCComboBox;
    edt_percentual_cco: TEdit;
    edt_cod_condcomerc: TDBEdit;
    edt_cod_fornecedorOrcom: TBEdit;
    edt_numeroPA_emc: TBEdit;
    edt_dtcadastro_cln: TBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_adicionarEspecialidadeClick(Sender: TObject);
    procedure btn_removerEspecialidadeClick(Sender: TObject);
    procedure btn_adicionarPlanoClick(Sender: TObject);
    procedure btn_RemoverPlanoClick(Sender: TObject);
    procedure edt_nomereduzido_conEnter(Sender: TObject);
    procedure btn_situacaoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cnpj_conExit(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure btn_novoclnClick(Sender: TObject);
    procedure btn_alterarclnClick(Sender: TObject);
    procedure btn_SalvarclnClick(Sender: TObject);
    procedure btn_cancelar_clnClick(Sender: TObject);
    procedure btn_Remover_clnClick(Sender: TObject);
    procedure edt_cpf_clnExit(Sender: TObject);
    procedure tbs_corpoclinicoShow(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_alterarFClick(Sender: TObject);
    procedure btn_novoFClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btn_SalvarFClick(Sender: TObject);
    procedure edt_cnpj_cneExit(Sender: TObject);
    procedure btn_cancelarFClick(Sender: TObject);
    procedure btn_removerFClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure ckb_planoClick(Sender: TObject);
    procedure ckb_plano2Click(Sender: TObject);
    procedure btn_novoctoClick(Sender: TObject);
    procedure btn_alterarctoClick(Sender: TObject);
    procedure btn_cancelarctoClick(Sender: TObject);
    procedure btn_removerctoClick(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure btn_salvarctoClick(Sender: TObject);
    procedure btn_novoiseClick(Sender: TObject);
    procedure btn_alterariseClick(Sender: TObject);
    procedure edt_cod_contratoServicoEspecialChange(Sender: TObject);
    procedure btn_salvariseClick(Sender: TObject);
    procedure btn_cancelariseClick(Sender: TObject);
    procedure btn_removeriseClick(Sender: TObject);
    procedure btn_calcularsaldoClick(Sender: TObject);
    procedure btn_adicionarProcessoClick(Sender: TObject);
    procedure btn_alterarProcessoClick(Sender: TObject);
    procedure btn_salvarProcessoClick(Sender: TObject);
    procedure btn_cancelarProcessoClick(Sender: TObject);
    procedure btn_removerProcessoClick(Sender: TObject);
    procedure tbs_processoShow(Sender: TObject);
    procedure mem_obs_cprKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_processoConveniadoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbg_corpoClinicoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure rdb_corpoClinicoAtivoClick(Sender: TObject);
    procedure rdb_corpoClinicoTodosClick(Sender: TObject);
    procedure edt_cod_conveniadoProcessoChange(Sender: TObject);
    procedure btn_adicionarEmpenhoClick(Sender: TObject);
    procedure btn_alterarEmpenhoClick(Sender: TObject);
    procedure btn_salvarEmpenhoClick(Sender: TObject);
    procedure btn_cancelarEmpenhoClick(Sender: TObject);
    procedure cb3_cod_statusAtivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_cancelarClick(Sender: TObject);
    procedure edt_cod_empenhoConveniadoChange(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure edt_cep_cneExit(Sender: TObject);
    procedure btn_alterarrenovprocClick(Sender: TObject);
    procedure btn_adicionarrenovprocClick(Sender: TObject);
    procedure btn_salvarrenovprocClick(Sender: TObject);
    procedure edt_cd2_conveniadoProcessoChange(Sender: TObject);
    procedure btn_cancelarrenovprocClick(Sender: TObject);
    procedure edt_percsimpro_hrcKeyPress(Sender: TObject; var Key: Char);
    procedure edt_processo3Change(Sender: TObject);
    procedure TabSheet14Show(Sender: TObject);
    procedure edt_cod_condcomercChange(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
  private
    { Private declarations }
    FStatus2 : Integer;
    FCamposAux, FTabelaAux, FConvAtivo, Fcod_contrato, Fcod_itemServicoEspecial, FEmpenho2, FProcesso : String ;
    procedure CarregarCombos;
    procedure MostrarEspecialidade(cod_conveniado : string);
    procedure MostrarPlano(cod_conveniado : string);
    procedure AtualizarSitConveniado(sit:string);
    procedure BotoesContratoONOFF(b: boolean);
    procedure BotoesItensServEspONOFF(b : Boolean);
    procedure BotoesProcessoONOFF(b: boolean);
    procedure BotoesEmpenhoONOFF(b: boolean);
    procedure BotoesRenovProcessoONOFF(b: boolean);
    procedure BotoesCorpoClinicoONOFF(b : boolean);
  public
    { Public declarations }
    wCod_Conveniado : string;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarInsert(Frm:TForm) : boolean ;    override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
    procedure BotoesOnOff(b:boolean);                   override ;
  end;

var
  Frm_Cad_Conveniado: TFrm_Cad_Conveniado;
  DtAnt: String;

implementation
uses Constantes, Fun_Obj, Fun_Str, Fun_DB, DLG_Mensagem, Mov_SitConveniado, Fun_Test,
  dtm_principal3, Fun_ConsCadastro, Fun_Medico, Rel_3043, Imp_4127, Dlg_ImprimeCarta,
  Fun_Acesso, dtm_principal5;
{$R *.DFM}

procedure TFrm_Cad_Conveniado.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FEditAlteracao:= 'edt_nome_con' ;
  FUltFoco      := 'edt_site_con' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con, cnpj_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social, CNPJ/CPF' ;
  FCamposAux    := 'edt_cod_conveniado, '+
  'edt_porte1_pan, edt_porte2_pan, edt_porte3_pan, edt_porte4_pan, edt_porte5_pan, edt_porte6_pan, edt_porte7_pan, edt_porte8_pan';
  FTabelaAux    := 'tbl_porteanest';
//  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_conveniado > 0 '+FConvAtivo;
  inherited;

end;

procedure TFrm_Cad_Conveniado.BotoesOnOff(b:boolean);
begin
  inherited;
  if FStatus <> FST_Novo then begin
    btn_situacao.enabled := b ;
  end;
  pnl_alerta.Visible := b ;
end;

procedure TFrm_Cad_Conveniado.AtualizarSitConveniado(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_stc, tipo_stc from tbl_sitconveniado where cod_sitconveniado = '+sit);
    pnl_alerta.Caption := '***  '+'Situação : '+Tab.FieldByName('nome_stc').AsString+'  ***';
    case Tab.FieldByName('tipo_stc').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_stc').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Conveniado.BAS_Novo(Frm:Tform);
begin
  inherited;
    PageControl.Visible := true ;
    edt_dtcadastro_con.date := date ;
    edt_cod_sitconveniado.text := '1' ;
    LsB_Especialidade.Items.Clear;
    LsB_Plano.Items.Clear;
    LsB_Plano2.Items.Clear;
    CarregarCombos;
end;

procedure TFrm_Cad_Conveniado.BAS_LimparTela;
begin
  inherited;
//  edt_dtinscricao_ben.Date := date ;
//  edt_dtsituacao_ben.text := datetostr(date) ;
//  edt_dtcadastro_ben.text := datetostr(date) ;
  cbx_cod_ufjur_con.text := 'SP' ;
  cbx_cod_ufcor_con.text := 'SP' ;
  PageControl.ActivePageIndex := 0 ;
  fdt_principal3.spc_cons_med_conveniadoProcesso.close;
  fdt_principal3.spc_cons_med_empenhoConveniado.close;
  fdt_principal5.spc_cons_med_histempenhoConveniado.close;
  fdt_principal3.spc_cons_med_histcondcomerciais.close;
end;

function TFrm_Cad_Conveniado.BAS_SalvarInsert(Frm:TForm): boolean ;
var
  conv : string ;
begin
//  conv := edt_cod_conveniado.text ;
  edt_dtsistema_con.Text := DateToStr(Date);
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
  conv := STR_RemoveChar(edt_cod_conveniado.text,'-');
  edt_cod_conveniado.text := conv ;
  result := DB_Insert(Frm) ;
  edt_cod_conveniado.text := conv ;
  if result then
    result := DB_InsertByFields(self, FCamposAux, FTabelaAux);
  PageControl.Visible := false ;
end;

function TFrm_Cad_Conveniado.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  edt_dtsistema_con.Text := DateToStr(Date);
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
  result := DB_Update(Frm) ;
  if result then
    result := DB_UpdateByFields(self, FCamposAux, FTabelaAux);
  PageControl.Visible := false ;
end;

procedure TFrm_Cad_Conveniado.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_ufjur_con', 'sigla_uf', 'cod_uf', 'tbl_uf');
  Obj_LoadCombo(Self, 'cbx_cod_ufcor_con', 'sigla_uf', 'cod_uf', 'tbl_uf');
  Obj_LoadCombo(Self, 'cbx_cod_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoConveniado', 'descricao_ccv', 'cod_classificacaoConveniado', 'tbl_classificacaoConveniado');
  BAS_CarregarCombo('cbx_cod_espmedamb','nome_esp');
  BAS_CarregarCombo('cb2_cod_espmedamb','nome_esp');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
  BAS_CarregarCombo('cbx_cod_usuario','descricao_usu');
  BAS_CarregarCombo('cb2_cod_usuario','nome_usu');
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
  BAS_CarregarCombo('cb2_cod_statusAtivo','descricao_sta');
  BAS_CarregarCombo('cb3_cod_statusAtivo','descricao_sta');
  Obj_LoadCombo(Self, 'cbx_tipocondcomerc', 'nome_tcc', 'cod_tipocondcomerc', 'tbl_tipocondcomerc');
end;

procedure TFrm_Cad_Conveniado.MostrarEspecialidade(cod_conveniado : string);
begin
  DB_OpenSQL('select c.cod_espmedamb, e.nome_esp from tbl_espmedamb e, tbl_conveniadoespmed c '+
  'where e.cod_espmedamb = c.cod_espmedamb and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_espmedamb');
  LsB_Especialidade.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Especialidade.Items.Add(STR_AddZeros(Tab.FieldByName('cod_espmedamb').AsString, 4)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_esp').AsString, 50));
    Tab.Next;
  end;
end;

procedure TFrm_Cad_Conveniado.MostrarPlano(cod_conveniado : string);
begin

  DB_OpenSQL('select c.cod_plano, e.nome_pla from tbl_plano e, tbl_planoconveniado c '+
  'where e.cod_plano = c.cod_plano and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_plano');
  LsB_Plano.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Plano.Items.Add(STR_AddZeros(Tab.FieldByName('cod_plano').AsString, 4)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_pla').AsString, 50));
    Tab.Next;
  end;
  DB_OpenSQL('select c.cod_plano, e.nome_pla from tbl_plano e, tbl_planoAutorizacao c '+
  'where e.cod_plano = c.cod_plano and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_plano');
  LsB_Plano2.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Plano2.Items.Add(STR_AddZeros(Tab.FieldByName('cod_plano').AsString, 4)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_pla').AsString, 50));
    Tab.Next;
  end;
end;
{
procedure TFrm_Cad_Conveniado.MostrarItens(cod_conveniado : string);
begin
  DB_OpenSQL('select c.cod_itemservico, e.nome_its from tbl_itemservico e, tbl_itemhonorario c '+
  'where e.cod_itemservico = c.cod_itemservico and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_itemservico');
  LsB_Itens.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Itens.Items.Add(STR_AddZeros(Tab.FieldByName('cod_itemservico').AsString, 8)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_its').AsString, 50));
    Tab.Next;
  end;
end;
}
procedure TFrm_Cad_Conveniado.BAS_Alterar(Frm:Tform);
  var
    conv : string ;
begin
  CarregarCombos;
  inherited ;
  if FStatus = FST_Alteracao then begin
    conv := edt_cod_conveniado.text ;
    edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
    DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
    MostrarEspecialidade(edt_cod_conveniado.text);
    MostrarPlano(edt_cod_conveniado.text);
    edt_cod_conveniado.text := conv ;
    PageControl.Visible := true ;
    AtualizarSitConveniado(edt_cod_sitconveniado.text);
    FEmpenho2 := edt_empenho2_con.Text;
  end;
end;

procedure TFrm_Cad_Conveniado.BAS_Cancelar(Frm:TForm);
begin
  inherited;
  if FStatus = FST_Normal then
    PageControl.Visible := false ;
end;

function TFrm_Cad_Conveniado.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Código do Conveniado deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomereduzido_con.name, 'O Nome Reduzido deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_con.name, 'O Nome Fantasia deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_razao_con.name, 'A Razão Social deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cnpj_con.name, 'O CNPJ deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_ufjur_con.name, 'O Estado deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cepjur_con.name, 'O CEP deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_enderecojur_con.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairrojur_con.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cidadejur_con.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  if not Teste_CNPJ(edt_cnpj_con.text) then
  begin
    Dlg_Alerta('CNPJ Inválido !', self);
    Exit;
  end;
  result := false ;
end;

procedure TFrm_Cad_Conveniado.FormShow(Sender: TObject);
begin
  inherited;
  carregarcombos;
  if wCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := wCod_Conveniado;
    BAS_Alterar(self);
  end;
end;

procedure TFrm_Cad_Conveniado.btn_salvarClick(Sender: TObject);
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  edt_vlempenho2_con.Text := STR_SubstChar(STR_RemoveChar(edt_vlempenho2_con.text,'.'), ',', '.');
  edt_saldoempenho2_con.Text := STR_SubstChar(STR_RemoveChar(edt_saldoempenho2_con.text,'.'), ',', '.');
  edt_nome_con.SetFocus;
  inherited;

end;

procedure TFrm_Cad_Conveniado.btn_adicionarEspecialidadeClick(Sender: TObject);
  function VerCod_Especialidade(c:string): boolean ;
  var
    i : integer ;
  begin
    result := false ;
    for i := 0 to LsB_Especialidade.Items.Count-1 do
      if Trim(Copy(LsB_Especialidade.Items.Strings[i],1,4)) = c then
        result := true ;
  end;
var
  conven, v : string ;
begin
  inherited;
  if cbx_cod_espmedamb.text = '' then begin
    Dlg_Alerta('Selecione uma Especialidade Médica !', self);
    cbx_cod_espmedamb.setfocus;
    Exit ;
  end;
{
  if VerCod_Especialidade(cbx_cod_espmedamb.ValueItem) then begin
    Dlg_Alerta('Essa Especialidade já foi selecionado anteriormente !', self);
    cbx_cod_espmedamb.setfocus;
    Exit ;
  end;
}
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('insert into tbl_conveniadoespmed values ('+conven+', '+
  cbx_cod_espmedamb.getStrItemValue+')');
  cbx_cod_espmedamb.text := '' ;
  MostrarEspecialidade(conven);
  EscreveLog(btn_adicionarEspecialidade.Name);
end;

procedure TFrm_Cad_Conveniado.btn_removerEspecialidadeClick(Sender: TObject);
var
  conven : string ;
begin
  inherited;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('delete from tbl_conveniadoespmed where cod_conveniado = '+conven+
  ' and cod_espmedamb = '+Trim(Copy(LsB_Especialidade.Items.Strings[LsB_Especialidade.ItemIndex],1,4)));
  MostrarEspecialidade(conven);
  EscreveLog(btn_removerEspecialidade.Name);
end;

procedure TFrm_Cad_Conveniado.btn_adicionarPlanoClick(Sender: TObject);
var
  conven, v : string ;
begin
  inherited;
  if cbx_cod_plano.text = '' then begin
    Dlg_Alerta('Selecione um Plano !', self);
    cbx_cod_plano.setfocus;
    Exit ;
  end;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if ckb_plano.Checked then
  begin
    DB_ExecSql('insert into tbl_planoconveniado values ('+conven+', '+
    cbx_cod_plano.getStrItemValue+')');
    cbx_cod_plano.text := '' ;
    MostrarPlano(conven);
    EscreveLog(btn_adicionarPlano.Name);
  end
  else begin
    DB_ExecSql('insert into tbl_planoAutorizacao values ('+conven+', '+
    cbx_cod_plano.getStrItemValue+')');
    cbx_cod_plano.text := '' ;
    MostrarPlano(conven);
    EscreveLog(btn_adicionarPlano.Name);
  end;
end;

procedure TFrm_Cad_Conveniado.btn_RemoverPlanoClick(Sender: TObject);
var
  conven : string ;
begin
  inherited;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if ckb_plano.Checked then
    DB_ExecSql('delete from tbl_planoconveniado where cod_conveniado = '+conven+
    ' and cod_plano = '+Trim(Copy(LsB_Plano.Items.Strings[LsB_Plano.ItemIndex],1,4)))
  else
    DB_ExecSql('delete from tbl_planoAutorizacao where cod_conveniado = '+conven+
    ' and cod_plano = '+Trim(Copy(LsB_Plano2.Items.Strings[LsB_Plano2.ItemIndex],1,4)));
  MostrarPlano(conven);
  EscreveLog(btn_RemoverPlano.Name);
end;

procedure TFrm_Cad_Conveniado.edt_nomereduzido_conEnter(Sender: TObject);
begin
  inherited;
  if FStatus = fst_novo then begin
    edt_cod_conveniado.text := copy(STR_RemoveChar(edt_cod_conveniado.text,'-'),2,5)+'-'+
    STR_GeraDigito11(STR_RemoveChar(edt_cod_conveniado.text,'-'));
    if edt_cod_conveniado.text <> '' then begin
      if DB_OpenSQL('select cod_conveniado from tbl_conveniado where cod_conveniado = '+
      STR_RemoveChar(edt_cod_conveniado.text,'-')) > 0 then begin
        Dlg_Alerta('Código de Conveniado informado já cadastrado !', self);
        edt_cod_conveniado.setfocus;
      end;
    end;
  end;
end;

procedure TFrm_Cad_Conveniado.btn_situacaoClick(Sender: TObject);
var
 c : string ;
begin
  inherited;
  if Sit_AlterarSituacaoConven(edt_cod_conveniado.text, edt_nomereduzido_con.text,
  edt_dtsituacao_con.text, edt_cod_sitconveniado.text, Self) then begin
      c := Fsituacao;
      edt_dtsituacao_con.text := Fdtsituacao ;
  end;
  if c <> '' then
    edt_cod_sitconveniado.text := c ;
    EscreveLog(btn_situacao.Name);
end;

procedure TFrm_Cad_Conveniado.btn_novoClick(Sender: TObject);
begin
  inherited;
  pnl_alerta.Visible := false ;
  fdt_principal3.spc_cons_adm_corpoclinico.Close;
end;

procedure TFrm_Cad_Conveniado.edt_cnpj_conExit(Sender: TObject);
begin
  inherited;
  if not Teste_CNPJ(edt_cnpj_con.text) then
    Dlg_Alerta('CNPJ Inválido !', self);
end;

procedure TFrm_Cad_Conveniado.Label5Click(Sender: TObject);
  var
    url : string ;
begin
  inherited;
    url := 'http://servicos.conexia.com.br/prestador/clientes.asp?txtusuario='+
    STR_RemoveChar(STR_RemoveChar(STR_RemoveChar(edt_cnpj_con.text,'.'),'/'),'-') +
    '&txtsenha=imasf&txttipo=login';
  ShellExecute(Frm_Cad_Conveniado.Handle,nil,PChar(url),'','',SW_SHOWNORMAL);
end;

procedure TFrm_Cad_Conveniado.btn_novoclnClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  BotoesCorpoClinicoONOFF(false);
  Obj_EmptyEditTag(self,6);
  Obj_SetFormObjValueByName(self,cb2_cod_statusAtivo.Name,1);
  edt_cod_crm.Enabled := true ;
  edt_cod_crm.SetFocus;
  edt_dtcadastro_cln.Date := Date;
  EscreveLog(btn_novocln.Name);
end;

procedure TFrm_Cad_Conveniado.btn_alterarclnClick(Sender: TObject);
begin
  inherited;
  edt_cod_crm.Enabled := false ;
  FStatus2 := FST_Alteracao;
  BotoesCorpoClinicoONOFF(false);
  with fdt_principal3.spc_cons_adm_corpoclinico do begin
    edt_cod_crm.text := FieldByName('cod_crm').AsString ;
    Obj_SetFormObjValueByName(self, cb2_cod_espmedamb.name, FieldByName('cod_espmedamb').AsString);
    Obj_SetFormObjValueByName(self, cb2_cod_statusAtivo.name, FieldByName('cod_statusAtivo').AsString);
    edt_cpf_cln.text := FieldByName('cpf_cln').AsString ;
    edt_nome_cln.text := FieldByName('nome_cln').AsString ;
    edt_dtcadastro_cln.Date :=  FieldByName('dtcadastro_cln').AsDateTime;
  end;
  EscreveLog(btn_alterarcln.Name);
end;

procedure TFrm_Cad_Conveniado.btn_SalvarclnClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_crm.name, 'É necessário preencher o CRM', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cpf_cln.name, 'É necessário preencher o CPF', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cb2_cod_espmedamb.Name, 'É necessário preencher a Especialidade', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_nome_cln.Name, 'É necessário preencher o Nome', VLD_Preenchido)) then
    exit ;
  if FStatus2 = FST_Novo then
    DB_ExecSQL('insert into tbl_corpoclinico ('+
    'cod_conveniado,cod_crm, cpf_cln, cod_espmedamb, nome_cln, cod_statusAtivo, dtcadastro_cln ) values ('+
    STR_RemoveChar(edt_cod_conveniado.text, '-')+','+edt_cod_crm.text+', '''+STR_SubstChar(edt_cpf_cln.text,',','.')+
    ''', '+cb2_cod_espmedamb.getStrItemValue+','''+edt_nome_cln.text+''','+cb2_cod_statusAtivo.valueItem+
    ', getdate() )')
  else
    DB_ExecSQL('update tbl_corpoclinico set '+
    'cpf_cln = '''+STR_SubstChar(edt_cpf_cln.text,',','.')+''', '+
    'cod_espmedamb = '+cb2_cod_espmedamb.getStrItemValue+', '+
    'nome_cln = '''+edt_nome_cln.text+''', '+
    'cod_statusAtivo = '+cb2_cod_statusAtivo.valueItem+
    'where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+' and '+
    'cod_crm = '+edt_cod_crm.text);
  with fdt_principal3.spc_cons_adm_corpoclinico do begin
    Close;
    parambyname('@cod_conveniado').asstring := STR_RemoveChar(edt_cod_conveniado.text,'-') ;
    if rdb_corpoClinicoAtivo.Checked then
      parambyname('@cod_statusAtivo').AsInteger := 1
    else
      parambyname('@cod_statusAtivo').AsInteger:= 0;
    Open;
  end;
  BotoesCorpoClinicoONOFF(true);
  EscreveLog(btn_Salvarcln.Name);
end;

procedure TFrm_Cad_Conveniado.btn_cancelar_clnClick(Sender: TObject);
begin
  inherited;
  BotoesCorpoClinicoONOFF(true);
  EscreveLog(btn_cancelar_cln.Name);
end;

procedure TFrm_Cad_Conveniado.btn_Remover_clnClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Médico Selecionado ?', Self) then begin
    DB_ExecSQL('delete from tbl_corpoclinico where cod_conveniado = '+
    STR_RemoveChar(edt_cod_conveniado.text, '-')+' and cod_crm = '+fdt_principal3.spc_cons_adm_corpoclinico.FieldByName('cod_crm').asstring);
    fdt_principal3.spc_cons_adm_corpoclinico.close;
    fdt_principal3.spc_cons_adm_corpoclinico.open;
  end;
  EscreveLog(btn_Remover_cln.Name);
end;

procedure TFrm_Cad_Conveniado.edt_cpf_clnExit(Sender: TObject);
begin
  inherited;
  if not Test_CPF(edt_cpf_cln.text) then
    Dlg_Alerta('CPF Inválido !', self);
end;
procedure TFrm_Cad_Conveniado.tbs_corpoclinicoShow(Sender: TObject);
begin
  inherited;
  btn_cancelar_clnClick(self);
  with fdt_principal3.spc_cons_adm_corpoclinico do begin
    close;
    parambyname('@cod_conveniado').asstring := STR_RemoveChar(edt_cod_conveniado.text,'-') ;
    if rdb_corpoClinicoAtivo.Checked then
      parambyname('@cod_statusAtivo').AsInteger := 1
    else
      parambyname('@cod_statusAtivo').AsInteger := 0;
    Open;
  end;
  if Acs_AcessoEspecial('100101') then
    btn_Remover_cln.Visible := true;
end;


procedure TFrm_Cad_Conveniado.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3043 := TFrm_Rel_3043.Create(Self);
  Frm_Rel_3043.ShowModal;
  Frm_Rel_3043.Release;
  Show;
end;


procedure TFrm_Cad_Conveniado.btn_alterarFClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal3.spc_cons_adm_conveniadoendereco do
    begin
      btn_novoF.Enabled := false ;
      btn_alterarF.Enabled := false ;
      btn_removerF.Enabled := false ;
      btn_SalvarF.Enabled := true ;
      btn_cancelarF.Enabled := true ;
      DBG_Filial.visible := false ;
      edt_sequencia_cne.text := FieldByName('sequencia_cne').AsString ;
      edt_razao_cne.text := FieldByName('razao_cne').AsString ;
      edt_endereco_cne.text := FieldByName('endereco_cne').AsString ;
      edt_bairro_cne.text := FieldByName('bairro_cne').AsString ;
    //  edt_cidade_cne.text := FieldByName('cidade_cne').AsString ;
      edt_cnpj_cne.text := FieldByName('cnpj_cne').AsString ;
      edt_cep_cne.text := FieldByName('cep_cne').AsString ;
      edt_fone_cne.text := FieldByName('fone_cne').AsString ;
      edt_cod_fornecedorOrcom.Text := FieldByName('cod_fornecedorOrcom').AsString ;
      Obj_SetFormObjValueByName(self, cbx_cod_uf.name, FieldByName('cod_uf').AsString);
      cbx_cod_ufExit(self);
      Obj_SetFormObjValueByName(self, cbx_cod_cidadeCep.name, FieldByName('cod_cidadeCEP').AsString);
      chb_recolheISS.Checked := FieldByName('recolheISS_cne').Value;
    end;
    EscreveLog(btn_alterarF.Name);
end;

procedure TFrm_Cad_Conveniado.btn_novoFClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  btn_novoF.Enabled := false ;
  btn_alterarF.Enabled := false ;
  btn_removerF.Enabled := false ;
  btn_SalvarF.Enabled := true ;
  btn_cancelarF.Enabled := true;
  DBG_Filial.visible := false ;
  Obj_EmptyEditTag(self,5);
  edt_cep_cne.Text := '';
  Obj_LoadCombo(Self, 'cbx_cod_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
  DB_OpenSQL('select isnull(max(sequencia_cne),0) +1 as sequencia_cne from tbl_conveniadoendereco'+
  ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
  edt_sequencia_cne.Text := Tab.fieldbyName('sequencia_cne').AsString;
  edt_razao_cne.SetFocus;
  if edt_sequencia_cne.Text = '1' then
  begin
    edt_razao_cne.Text := edt_razao_con.Text;
    edt_endereco_cne.Text := edt_enderecojur_con.Text;
    edt_bairro_cne.Text := edt_bairrojur_con.Text;
    //edt_cidade_cne.Text := edt_cidadejur_con.Text;
    Obj_SetFormObjValueByName(self, cbx_cod_uf.name, cbx_cod_ufjur_con.getStrItemValue);
    cbx_cod_ufExit(self);
    edt_cnpj_cne.Text := edt_cnpj_con.Text;
    edt_cep_cne.Text := edt_cepjur_con.Text;
    edt_fone_cne.Text := edt_fonedirecao_con.Text;
  end;
  EscreveLog(btn_novoF.Name);
end;

procedure TFrm_Cad_Conveniado.TabSheet3Show(Sender: TObject);
begin
  inherited;
  btn_cancelarFClick(self);
  with fdt_principal3.spc_cons_adm_conveniadoendereco do
    begin
      close;
      parambyname('@cod_conveniado').asstring := STR_RemoveChar(edt_cod_conveniado.text,'-') ;
      Open;
    end;
end;

procedure TFrm_Cad_Conveniado.btn_SalvarFClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_razao_cne.name, 'É necessário preencher o Nome', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cep_cne.Name, 'É necessário preencher o CEP', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_endereco_cne.Name, 'É necessário preencher o Endereço', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_bairro_cne.Name, 'É necessário preencher o Bairro', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cod_uf.Name, 'É necessário preencher o Estado', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.Name, 'É necessário preencher a Cidade', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cnpj_cne.Name, 'É necessário preencher o CNPJ', VLD_Preenchido)) then
    exit ;
  if not Teste_CNPJ(edt_cnpj_cne.text) then
  begin
    Dlg_Alerta('CNPJ Inválido !', self);
    Exit;
  end;
  if FStatus2 = fst_novo then
    DB_ExecSQL('insert into tbl_conveniadoendereco ('+
    'cod_conveniado,sequencia_cne, razao_cne, cnpj_cne, endereco_cne, cep_cne, bairro_cne, cod_cidadeCEP, cod_uf, fone_cne, recolheISS_cne, cod_fornecedorOrcom) values ('+
    STR_RemoveChar(edt_cod_conveniado.text, '-')+','+edt_sequencia_cne.text+', '''+edt_razao_cne.text+
    ''', '''+edt_cnpj_cne.text+''','''+edt_endereco_cne.text+''', '''+edt_cep_cne.text+''', '''+
    edt_bairro_cne.text+''', '''+cbx_cod_cidadeCep.valueitem+''', '''+cbx_cod_uf.getStrItemValue+''','''+
    edt_fone_cne.text+''', '+DB_FormatDataSQL(chb_recolheISS.checked, ftBoolean)+', '+DB_FormatDataSQL(edt_cod_fornecedorOrcom.Text, ftInteger)+')')
  else
      DB_ExecSQL('update tbl_conveniadoendereco set '+
    'razao_cne = '''+edt_razao_cne.text+''', '+
    'cnpj_cne = '''+edt_cnpj_cne.text+''', '+
    'endereco_cne = '''+edt_endereco_cne.text+''', '+
    'cep_cne = '''+edt_cep_cne.text+''', '+
    'bairro_cne = '''+edt_bairro_cne.Text+''', '+
    'cod_cidadeCEP = '''+cbx_cod_cidadeCep.valueitem+''', '+
    'cod_uf = '''+cbx_cod_uf.getStrItemValue+''', '+
    'fone_cne = '''+edt_fone_cne.text+''', '+
    'recolheISS_cne = '+DB_FormatDataSQL(chb_recolheISS.checked, ftBoolean)+', '+
    'cod_fornecedorOrcom = '+DB_FormatDataSQL(edt_cod_fornecedorOrcom.Text,ftInteger)+
    ' where '+
    'cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+' and '+
    'sequencia_cne = '+edt_sequencia_cne.text);
  with fdt_principal3.spc_cons_adm_conveniadoendereco do begin
    Close;
    parambyname('@cod_conveniado').asstring := STR_RemoveChar(edt_cod_conveniado.text,'-') ;
    Open;
  end;
  btn_novoF.Enabled := true ;
  btn_alterarF.Enabled := true ;
  btn_removerF.Enabled := true ;
  DBG_Filial.visible := true ;
  EscreveLog(btn_SalvarF.Name);
end;

procedure TFrm_Cad_Conveniado.edt_cnpj_cneExit(Sender: TObject);
begin
  inherited;
  if not Teste_CNPJ(edt_cnpj_cne.text) then
    Dlg_Alerta('CNPJ Inválido !', self);
end;

procedure TFrm_Cad_Conveniado.btn_cancelarFClick(Sender: TObject);
begin
  inherited;
  btn_novoF.Enabled := true ;
  btn_alterarF.Enabled := true ;
  btn_removerF.Enabled := true ;
  btn_cancelarF.Enabled := false;
  btn_SalvarF.Enabled := false;
  DBG_Filial.visible := true ;
  EscreveLog(btn_cancelarF.Name);
end;

procedure TFrm_Cad_Conveniado.btn_removerFClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir a Filial ?', Self) then
    begin
      DB_ExecSQL('delete from tbl_conveniadoendereco where cod_conveniado = '+
      STR_RemoveChar(edt_cod_conveniado.text, '-')+' and sequencia_cne = '+fdt_principal3.spc_cons_adm_conveniadoendereco.FieldByName('sequencia_cne').asstring);
      fdt_principal3.spc_cons_adm_conveniadoendereco.close;
      fdt_principal3.spc_cons_adm_conveniadoendereco.open;
    end;
    EscreveLog(btn_removerF.Name);
end;

procedure TFrm_Cad_Conveniado.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  if (FStatus <> FST_Novo) then
    btn_alterarClick(self)
  else
    SelectNext(ActiveControl,True,True);;
end;

procedure TFrm_Cad_Conveniado.btn_alterarClick(Sender: TObject);
begin
  if rdb_ativos.Checked then
    FConvAtivo := 'and cod_sitconveniado = 1';
  if rdb_todos.Checked then
    FConvAtivo := '';
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con, cnpj_con from tbl_conveniado where cod_conveniado > 0 '+FConvAtivo;
  inherited;
end;

procedure TFrm_Cad_Conveniado.ckb_planoClick(Sender: TObject);
begin
  inherited;
  if ckb_plano.Checked then
    ckb_plano2.Checked := false;
end;

procedure TFrm_Cad_Conveniado.ckb_plano2Click(Sender: TObject);
begin
  inherited;
  if ckb_plano2.Checked then
    ckb_plano.Checked := false;
end;

procedure TFrm_Cad_Conveniado.BotoesContratoONOFF(b: boolean);
begin
  btn_novocto.Enabled := b ;
  btn_alterarcto.Enabled := b ;
  btn_Salvarcto.Enabled := not b ;
  btn_cancelarcto.Enabled := not b;
  btn_removercto.Enabled := b ;
  dbg_contrato.visible := b ;
end;

procedure TFrm_Cad_Conveniado.BotoesProcessoONOFF(b: boolean);
begin
  btn_adicionarProcesso.Enabled := b ;
  btn_alterarProcesso.Enabled := b ;
  btn_salvarProcesso.Enabled := not b ;
  btn_cancelarProcesso.Enabled := not b;
  btn_removerProcesso.Enabled := b ;
  dbg_processoConveniado.visible := b ;
end;

procedure TFrm_Cad_Conveniado.BotoesEmpenhoONOFF(b: boolean);
begin
  btn_adicionarEmpenho.Enabled := b ;
  btn_alterarEmpenho.Enabled := b ;
  btn_salvarEmpenho.Enabled := not b ;
  btn_cancelarEmpenho.Enabled := not b;
 // btn_removerEmpenho.Enabled := b ;
  dbg_empenho.visible := b ;
end;

procedure TFrm_Cad_Conveniado.BotoesRenovProcessoONOFF(b: boolean);
begin
  btn_adicionarrenovproc.Enabled := b ;
  btn_alterarrenovproc.Enabled := b ;
  btn_salvarrenovproc.Enabled := not b ;
  btn_cancelarrenovproc.Enabled := not b;
  dbg_histcondcomerciais.visible := b ;
end;

procedure TFrm_Cad_Conveniado.BotoesCorpoClinicoONOFF(b: boolean);
begin
  btn_novocln.Enabled := b ;
  btn_alterarcln.Enabled := b ;
  btn_Salvarcln.Enabled := not b ;
  btn_cancelar_cln.Enabled := not b;
  btn_Remover_cln.Enabled := b ;
  dbg_corpoClinico.visible := b ;
end;

procedure TFrm_Cad_Conveniado.BotoesItensServEspONOFF(b: boolean);
begin
  btn_novoise.Enabled := b ;
  btn_alterarise.Enabled := b ;
  btn_Salvarise.Enabled := not b ;
  btn_cancelarise.Enabled := not b;
  btn_removerise.Enabled := b ;
  dbg_itemservEsp.visible := b ;
end;

procedure TFrm_Cad_Conveniado.btn_novoctoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  edt_descricao_cse.SetFocus;
  Fcod_contrato := STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-')+
  STR_AddZeros(IntToStr(fdt_principal3.spc_cons_adm_contratoServicoEspecial.RecordCount + 1),3));
  BotoesContratoONOFF(false);
  Obj_EmptyEditTag(self,4);
  cbx_situacao_cse.ItemIndex := -1;
  EscreveLog(btn_novocto.name);
end;

procedure TFrm_Cad_Conveniado.btn_alterarctoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesContratoONOFF(false);
  with fdt_principal3.spc_cons_adm_contratoServicoEspecial do begin
    edt_descricao_cse.text := FieldByName('descricao_cse').AsString ;
    edt_dotacao_cse.text := FieldByName('dotacao_cse').AsString ;
    edt_empenho_cse.text := FieldByName('empenho_cse').AsString ;
    edt_valor_cse.text := FieldByName('valor_cse').AsString ;
    Obj_SetFormObjValueByName(self, cbx_situacao_cse.name, FieldByName('situacao_cse').AsString);
  end;
  EscreveLog(btn_alterarcto.name);
end;

procedure TFrm_Cad_Conveniado.btn_cancelarctoClick(Sender: TObject);
begin
  inherited;
  BotoesContratoONOFF(true);
  EscreveLog(btn_cancelarcto.name);
end;

procedure TFrm_Cad_Conveniado.btn_removerctoClick(Sender: TObject);
begin
  inherited;
  if fdt_principal3.spc_cons_adm_contratoServicoEspecial.RecordCount > 0 then
  begin
    if Dlg_YesNo('Tem Certeza que deseja Excluir ?', Self) then begin
      DB_ExecSQL('delete from tbl_itemServicoEspecial where cod_contratoServicoEspecial = '+
      fdt_principal3.spc_cons_adm_contratoServicoEspecial.FieldByName('cod_contratoServicoEspecial').asstring);
      DB_ExecSQL('delete from tbl_contratoServicoEspecial where cod_contratoServicoEspecial = '+
      fdt_principal3.spc_cons_adm_contratoServicoEspecial.FieldByName('cod_contratoServicoEspecial').asstring);
      fdt_principal3.spc_cons_adm_contratoServicoEspecial.close;
      fdt_principal3.spc_cons_adm_contratoServicoEspecial.open;
    end;
  end;
  EscreveLog(btn_removercto.name);
end;

procedure TFrm_Cad_Conveniado.TabSheet10Show(Sender: TObject);
begin
  inherited;
  btn_cancelarctoClick(self);
  btn_cancelariseClick(self);
  with fdt_principal3.spc_cons_adm_contratoServicoEspecial do begin
    Close;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
    open;
  end;
  with fdt_principal3.spc_cons_adm_itemServicoEspecial do begin
    close;
    ParamByName('@cod_contratoServicoEspecial').AsString := edt_cod_contratoServicoEspecial.Text;
    open;
  end;
  BAS_CarregarCombo('cb2_cod_plano','nome_pla');
  cbx_situacao_cse.Text := '' ;
  cbx_situacao_cse.Clear ;
  cbx_situacao_cse.ValueItem := '';
  cbx_situacao_cse.Refresh ;
  cbx_situacao_cse.Items.Add('Normal');
  cbx_situacao_cse.Items.Add('Cancelado');
  cbx_situacao_cse.ValItems.Add('1');
  cbx_situacao_cse.ValItems.Add('2');
end;

procedure TFrm_Cad_Conveniado.btn_salvarctoClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_descricao_cse.name, 'É necessário preencher a Descrição', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_valor_cse.name, 'É necessário preencher o Valor', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_situacao_cse.name, 'É necessário preencher a Situação', VLD_Preenchido)) then
    exit ;
  if FStatus2 = FST_Novo then
    DB_ExecSQL('insert into tbl_contratoServicoEspecial (cod_contratoServicoEspecial, cod_conveniado, descricao_cse, '+
    ' dotacao_cse, empenho_cse, valor_cse, situacao_cse) values('+
    Fcod_contrato+','+STR_RemoveChar(edt_cod_conveniado.text, '-')+','+DB_FormatDataSQL(edt_descricao_cse.text,ftString)+
    ','+DB_FormatDataSQL(edt_dotacao_cse.text,ftString)+','+DB_FormatDataSQL(edt_empenho_cse.text,ftString)+
    ','+DB_FormatDataSQL(edt_valor_cse.text, ftFloat)+','+cbx_situacao_cse.valueitem+')')
  else
      DB_ExecSQL('update tbl_contratoServicoEspecial set '+
    'descricao_cse = '+DB_FormatDataSQL(edt_descricao_cse.text,ftString)+','+
    'dotacao_cse = '+DB_FormatDataSQL(edt_dotacao_cse.text,ftString)+','+
    'empenho_cse = '+DB_FormatDataSQL(edt_empenho_cse.text,ftString)+','+
    'valor_cse = '+DB_FormatDataSQL(edt_valor_cse.text, ftFloat)+', '+
    'situacao_cse = '+cbx_situacao_cse.valueitem+
    ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' and cod_contratoServicoEspecial = '+fdt_principal3.spc_cons_adm_contratoServicoEspecial.fieldByName('cod_contratoServicoEspecial').AsString);
  fdt_principal3.spc_cons_adm_contratoServicoEspecial.close;
  fdt_principal3.spc_cons_adm_contratoServicoEspecial.open;
  BotoesContratoONOFF(true);
   EscreveLog(btn_salvarcto.name);
end;

procedure TFrm_Cad_Conveniado.btn_novoiseClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  cb2_cod_plano.SetFocus;
  Fcod_contrato := fdt_principal3.spc_cons_adm_contratoServicoEspecial.fieldByName('cod_contratoServicoEspecial').AsString;
  Fcod_itemServicoEspecial := Fcod_contrato+STR_AddZeros(IntToStr(fdt_principal3.spc_cons_adm_itemServicoEspecial.RecordCount + 1),2);
  BotoesItensServEspONOFF(false);
  edt_cod_itemServico.Text := '';
  edt_dotacao_ise.Text := '000';
  cb2_cod_plano.ItemIndex := -1;
  EscreveLog(btn_novoise.name);
end;

procedure TFrm_Cad_Conveniado.btn_alterariseClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesItensServEspONOFF(false);
  with fdt_principal3.spc_cons_adm_itemServicoEspecial do begin
    Obj_SetFormObjValueByName(self, cb2_cod_plano.name, FieldByName('cod_plano').AsString);
    edt_cod_itemServico.text := FieldByName('cod_itemServico').AsString ;
    edt_dotacao_ise.text := FieldByName('dotacao_ise').AsString ;
  end;
  EscreveLog(btn_alterarise.name);
end;

procedure TFrm_Cad_Conveniado.edt_cod_contratoServicoEspecialChange(
  Sender: TObject);
begin
  inherited;
  if not fdt_principal3.spc_cons_adm_contratoServicoEspecial.Active then
    exit;
  with fdt_principal3.spc_cons_adm_itemServicoEspecial do begin
    close;
    ParamByName('@cod_contratoServicoEspecial').AsString := edt_cod_contratoServicoEspecial.Text;
    open;
  end;
end;

procedure TFrm_Cad_Conveniado.btn_salvariseClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_plano.name, 'É necessário preencher o Plano', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cod_itemServico.Name, 'É necessário preencher o Item de Serviço', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_dotacao_ise.name, 'É necessário preencher a Dotação', VLD_Preenchido)) then
    exit ;
  if DB_OpenSQL('select * from tbl_itemservico where cod_itemservico = '+edt_cod_itemServico.Text) < 1 then
  begin
    Dlg_Alerta('Código do Item de Serviço não Existe!' ,self);
    Exit;
  end;
  if FStatus2 = FST_Novo then
    DB_ExecSQL('insert into tbl_itemServicoEspecial values('+Fcod_itemServicoEspecial+','+
    edt_cod_contratoServicoEspecial.Text+','+cb2_cod_plano.valueitem+','+DB_FormatDataSQL(edt_cod_itemServico.Text, ftInteger)+','+
    DB_FormatDataSQL(edt_dotacao_ise.Text, ftString)+')')
  else
    DB_ExecSQL('update tbl_itemServicoEspecial set '+
    'cod_plano = '+cb2_cod_plano.valueitem+', '+
    'cod_itemServico = '+DB_FormatDataSQL(edt_cod_itemServico.text, ftInteger)+', '+
    'dotacao_ise = '+DB_FormatDataSQL(edt_dotacao_ise.Text, ftString)+
    ' where cod_itemServicoEspecial = '+fdt_principal3.spc_cons_adm_itemServicoEspecial.fieldByName('cod_itemServicoEspecial').AsString);
  fdt_principal3.spc_cons_adm_itemServicoEspecial.close;
  fdt_principal3.spc_cons_adm_itemServicoEspecial.open;
  BotoesItensServEspONOFF(true);
  EscreveLog(btn_salvarise.name);
end;

procedure TFrm_Cad_Conveniado.btn_cancelariseClick(Sender: TObject);
begin
  inherited;
  BotoesItensServEspONOFF(true);
  EscreveLog(btn_cancelarise.name);
end;

procedure TFrm_Cad_Conveniado.btn_removeriseClick(Sender: TObject);
begin
  inherited;
  if fdt_principal3.spc_cons_adm_itemServicoEspecial.RecordCount > 0 then
  begin
    if Dlg_YesNo('Tem Certeza que deseja Excluir ?', Self) then begin
      DB_ExecSQL('delete from tbl_itemServicoEspecial where cod_itemServicoEspecial = '+
      fdt_principal3.spc_cons_adm_itemServicoEspecial.FieldByName('cod_itemServicoEspecial').asstring);
      fdt_principal3.spc_cons_adm_itemServicoEspecial.close;
      fdt_principal3.spc_cons_adm_itemServicoEspecial.open;
    end;
  end;
  EscreveLog(btn_removerise.name);
end;

procedure TFrm_Cad_Conveniado.btn_calcularsaldoClick(Sender: TObject);
begin
  inherited;
  if edt_vlempenho2_con.Text <> '' then
  begin
    if FEmpenho2 <> edt_empenho2_con.Text then
      edt_saldoempenho2_con.Text := FormatFloat('###,###,##0.00',StrToFloat(STR_RemoveChar(edt_vlempenho2_con.Text,'.')) + StrToFloat(STR_RemoveChar(edt_saldoempenho2_con.Text,'.')))
    else
    begin
      DB_OpenSQL('select isnull(sum(vlpago_cta),0) as vlpago_cta from tbl_lotecontamedica'+
      ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
      ' and dtreferencia_cta >= '''+FormatDateTime('01/01/yyyy',Date)+
      ''' and dtreferencia_cta <= '''+FormatDateTime('12/01/yyyy',Date)+'''');
      try
        edt_saldoempenho2_con.Text := FormatFloat('###,###,##0.00', (StrToFloat(STR_RemoveChar(edt_vlempenho2_con.Text, '.')) - Tab.FieldByName('vlpago_cta').AsFloat));
      except
        edt_saldoempenho2_con.Text := '0';
      end;
    end;
  end;
end;

procedure TFrm_Cad_Conveniado.btn_adicionarProcessoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  Obj_EmptyEditTag(self,5);
  edt_processo_cpr.SetFocus;
  Obj_SetFormObjValueByName(self,cb2_cod_usuario.Name,FCod_Usuario);
  Obj_SetFormObjValueByName(self,cbx_cod_statusAtivo.Name,1);
  edt_dataSistema_cpr.Date := Date;
  BotoesProcessoONOFF(false);
  EscreveLog(btn_adicionarProcesso.name);
end;

procedure TFrm_Cad_Conveniado.btn_alterarProcessoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesProcessoONOFF(false);
  with fdt_principal3.spc_cons_med_conveniadoProcesso do begin
    edt_processo_cpr.Text := fieldByName('processo_cpr').AsString;
    edt_anoProcesso_cpr.text := FieldByName('anoProcesso_cpr').AsString ;
    edt_numConvenio_cpr.Text := FieldByName('numConvenio_cpr').AsString;
    edt_anoConvenio_cpr.Text := FieldByName('anoConvenio_cpr').AsString;
    edt_dataAssinatura_cpr.Text := FieldByName('dataAssinatura_cpr').AsString;
    edt_dataRenovacao_cpr.Text := FieldByName('dataRenovacao_cpr').AsString;
    edt_dataVencimento_cpr.Text := FieldByName('dataVencimento_cpr').AsString;
    mem_obs_cpr.Text := FieldByName('obs_cpr').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_statusAtivo.name, FieldByName('cod_statusAtivo').AsInteger);
    Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FieldByName('cod_usuario').AsInteger);
    edt_dataSistema_cpr.Date := FieldByName('dataSistema_cpr').AsDateTime;
  end;
  EscreveLog(btn_alterarProcesso.name);
end;

procedure TFrm_Cad_Conveniado.btn_salvarProcessoClick(Sender: TObject);
begin
  inherited;
 if (not BAS_ValidarCampo(edt_processo_cpr.name, 'É necessário preencher o Numero do Processo', VLD_Preenchido)) or
 (not BAS_ValidarCampo(edt_anoProcesso_cpr.name, 'É necessário preencher o Ano do Processo', VLD_Preenchido)) or
 (not BAS_ValidarCampo(edt_numConvenio_cpr.name, 'É necessário preencher o Numero do Convênio', VLD_Preenchido)) or
 (not BAS_ValidarCampo(edt_anoConvenio_cpr.name, 'É necessário preencher o Ano do Convênio', VLD_Preenchido)) or
 (not BAS_ValidarCampo(edt_dataAssinatura_cpr.name, 'É necessário preencher a Data da Assinatura', VLD_DataPreenchida)) or
 (not BAS_ValidarCampo(edt_dataRenovacao_cpr.name, 'É necessário preencher a Data da Renovação', VLD_DataPreenchida)) or
 (not BAS_ValidarCampo(edt_dataVencimento_cpr.name, 'É necessário preencher a Data do Vencimento', VLD_DataPreenchida)) then
    exit ;
  if FStatus2 = FST_Novo then
    DB_ExecSQL('insert into tbl_conveniadoProcesso (cod_conveniado, processo_cpr,'+
    ' anoProcesso_cpr, numConvenio_cpr, anoConvenio_cpr, dataAssinatura_cpr, dataRenovacao_cpr,'+
    ' dataVencimento_cpr, obs_cpr, cod_statusAtivo, dataSistema_cpr, cod_usuario) values('+
    STR_RemoveChar(edt_cod_conveniado.text, '-')+','+DB_FormatDataSQL(edt_processo_cpr.text,ftInteger)+
    ','+edt_anoProcesso_cpr.Text+','+edt_numConvenio_cpr.Text+','+edt_anoConvenio_cpr.Text+
    ','+DB_FormatDataSQL(edt_dataAssinatura_cpr.Date,ftDate)+','+DB_FormatDataSQL(edt_dataRenovacao_cpr.date,ftDate)+
    ','+DB_FormatDataSQL(edt_dataVencimento_cpr.Date, ftDate)+','+DB_FormatDataSQL(mem_obs_cpr.Text, ftString)+
    ','+cbx_cod_statusAtivo.valueItem+', getdate(),'+IntToStr(FCod_Usuario)+')')
  else
      DB_ExecSQL('update tbl_conveniadoProcesso set '+
    'processo_cpr = '+edt_processo_cpr.text+','+
    'anoProcesso_cpr = '+edt_anoProcesso_cpr.text+','+
    'numConvenio_cpr = '+edt_numConvenio_cpr.text+','+
    'anoConvenio_cpr = '+edt_anoConvenio_cpr.Text+','+
    'dataAssinatura_cpr = '+DB_FormatDataSQL(edt_dataAssinatura_cpr.text,ftDate)+','+
    'dataRenovacao_cpr = '+DB_FormatDataSQL(edt_dataRenovacao_cpr.text,ftDate)+','+
    'dataVencimento_cpr = '+DB_FormatDataSQL(edt_dataVencimento_cpr.text,ftDate)+','+
    'obs_cpr = '+DB_FormatDataSQL(mem_obs_cpr.Text, ftString)+','+
    'cod_statusAtivo = '+cbx_cod_statusAtivo.valueItem+','+
    'dataSistema_cpr = getdate(),'+
    'cod_usuario = '+IntToStr(FCod_Usuario)+
    ' where cod_conveniadoProcesso = '+fdt_principal3.spc_cons_med_conveniadoProcesso.fieldByName('cod_conveniadoProcesso').AsString);
  fdt_principal3.spc_cons_med_conveniadoProcesso.close;
  fdt_principal3.spc_cons_med_conveniadoProcesso.open;
  BotoesProcessoONOFF(true);
  EscreveLog(btn_salvarProcesso.name);
end;

procedure TFrm_Cad_Conveniado.btn_cancelarProcessoClick(Sender: TObject);
begin
  inherited;
  BotoesProcessoONOFF(true);
  EscreveLog(btn_cancelarProcesso.name);
end;

procedure TFrm_Cad_Conveniado.btn_removerProcessoClick(Sender: TObject);
begin
  inherited;
  {if fdt_principal3.spc_cons_med_conveniadoProcesso.RecordCount > 0 then
  begin
    if Dlg_YesNo('Tem Certeza que deseja Excluir ?', Self) then begin
      DB_ExecSQL('delete from tbl_conveniadoProcesso where cod_conveniadoProcesso = '+
      fdt_principal3.spc_cons_med_conveniadoProcesso.FieldByName('cod_conveniadoProcesso').asstring);
      fdt_principal3.spc_cons_med_conveniadoProcesso.close;
      fdt_principal3.spc_cons_med_conveniadoProcesso.open;
    end;
  end;
  EscreveLog(btn_removerProcesso.name);}   
end;

procedure TFrm_Cad_Conveniado.tbs_processoShow(Sender: TObject);
begin
  inherited;
  fdt_principal3.spc_cons_med_conveniadoProcesso.close;
  with fdt_principal3.spc_cons_med_conveniadoProcesso do begin
    Close;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
    open;
  end;
  btn_cancelarProcessoClick(self);
  btn_cancelarEmpenhoClick(self);
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Cad_Conveniado.mem_obs_cprKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_salvarProcessoClick(self);
end;

procedure TFrm_Cad_Conveniado.dbg_processoConveniadoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('cod_statusAtivo').AsInteger = 2 then
    (Sender as TDBGrid).Canvas.Font.Color := clRed ;
  end;
  dbg_processoConveniado.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Cad_Conveniado.dbg_corpoClinicoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('cod_statusAtivo').AsInteger = 2 then
    (Sender as TDBGrid).Canvas.Font.Color := clRed ;
  end;
  dbg_corpoClinico.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Cad_Conveniado.rdb_corpoClinicoAtivoClick(Sender: TObject);
begin
  inherited;
  tbs_corpoclinicoShow(self);
end;

procedure TFrm_Cad_Conveniado.rdb_corpoClinicoTodosClick(Sender: TObject);
begin
  inherited;
  tbs_corpoclinicoShow(self);
end;

procedure TFrm_Cad_Conveniado.edt_cod_conveniadoProcessoChange(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniadoProcesso.Text <> '' then
  begin
    with fdt_principal3.spc_cons_med_empenhoConveniado do
    begin
      Close;
      ParamByName('@cod_conveniadoProcesso').AsString := edt_cod_conveniadoProcesso.Text;
      Open;
    end;
  end;
end;

procedure TFrm_Cad_Conveniado.btn_adicionarEmpenhoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  Obj_EmptyEditTag(self,6);
  Obj_LoadCombo(Self, 'cbx_cnpj_emc', 'cnpj_cne', 'sequencia_cne', 'tbl_conveniadoendereco where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
  edt_numEmpenho_emc.SetFocus;
  Obj_SetFormObjValueByName(self,cb3_cod_statusAtivo.Name,1);
  Obj_SetFormObjValueByName(self,cbx_cnpj_emc.Name,1);
  edt_dtsistema_emc.Date := Date;
  BotoesEmpenhoONOFF(false);
  EscreveLog(btn_adicionarEmpenho.name);
end;

procedure TFrm_Cad_Conveniado.btn_alterarEmpenhoClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesEmpenhoONOFF(false);
  Obj_LoadCombo(Self, 'cbx_cnpj_emc', 'cnpj_cne', 'sequencia_cne', 'tbl_conveniadoendereco where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
  with fdt_principal3.spc_cons_med_empenhoConveniado do begin
    edt_numEmpenho_emc.Text := fieldByName('numEmpenho_emc').AsString;
    edt_anoEmpenho_emc.text := FieldByName('anoEmpenho_emc').AsString ;
    edt_vlEmpenho_emc.Text := FieldByName('vlEmpenho_emc').AsString;
    edt_numeroPA_emc.Text := FieldByName('numeroPA_emc').AsString;
    Obj_SetFormObjValueByName(self, cb3_cod_statusAtivo.name, FieldByName('cod_statusAtivo').AsInteger);
    DB_OpenSQL('select sequencia_cne from tbl_conveniadoendereco where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
    ' and cnpj_cne = '''+FieldByName('cnpj_emc').AsString+'''');
    Obj_SetFormObjValueByName(self, cbx_cnpj_emc.name, Tab.FieldByName('sequencia_cne').AsInteger);
    edt_dtsistema_emc.Date := FieldByName('dtsistema_emc').AsDateTime;
  end;
  EscreveLog(btn_alterarEmpenho.name);
end;

procedure TFrm_Cad_Conveniado.btn_salvarEmpenhoClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_numEmpenho_emc.name, 'É necessário preencher o Numero do Empenho', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_anoEmpenho_emc.name, 'É necessário preencher o Ano do Empenho', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cnpj_emc.name, 'É necessário preencher o CNPJ', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_vlEmpenho_emc.name, 'É necessário preencher o Valor do Empenho', VLD_Preenchido)) then
    exit ;
  if FStatus2 = FST_Novo then
    DB_ExecSQL('insert into tbl_empenhoConveniado (cod_conveniadoProcesso, numEmpenho_emc,'+
    ' anoEmpenho_emc, vlEmpenho_emc, dtsistema_emc, cod_statusAtivo, cnpj_emc, numeroPA_emc) values('+
    DB_FormatDataSQL(edt_cod_conveniadoProcesso.Text, ftInteger)+','+DB_FormatDataSQL(edt_numEmpenho_emc.text,ftInteger)+
    ','+edt_anoEmpenho_emc.Text+','+DB_FormatDataSQL(edt_vlEmpenho_emc.Text, ftFloat)+
    ', getdate(),'+cb3_cod_statusAtivo.valueItem+','+DB_FormatDataSQL(cbx_cnpj_emc.Text, ftString)+','+
    DB_FormatDataSQL(edt_numeroPA_emc.Text, ftInteger)+')')
  else
      DB_ExecSQL('update tbl_empenhoConveniado set '+
    'numEmpenho_emc = '+edt_numEmpenho_emc.text+','+
    'anoEmpenho_emc = '+edt_anoEmpenho_emc.text+','+
    'vlEmpenho_emc = '+DB_FormatDataSQL(edt_vlEmpenho_emc.Text, ftFloat)+','+
    'dtsistema_emc = getdate(),'+
    'cod_statusAtivo = '+cb3_cod_statusAtivo.valueItem+','+
    'cnpj_emc = '+DB_FormatDataSQL(cbx_cnpj_emc.Text, ftString)+','+
    'numeroPA_emc = '+DB_FormatDataSQL(edt_numeroPA_emc.Text, ftInteger)+
    ' where cod_empenhoConveniado = '+ fdt_principal3.spc_cons_med_empenhoConveniado.fieldByName('cod_empenhoConveniado').AsString);
  fdt_principal3.spc_cons_med_empenhoConveniado.close;
  fdt_principal3.spc_cons_med_empenhoConveniado.open;
  BotoesEmpenhoONOFF(true);
  EscreveLog(btn_salvarEmpenho.name);
end;

procedure TFrm_Cad_Conveniado.btn_cancelarEmpenhoClick(Sender: TObject);
begin
  inherited;
  BotoesEmpenhoONOFF(true);
  EscreveLog(btn_cancelarEmpenho.name);
end;

procedure TFrm_Cad_Conveniado.cb3_cod_statusAtivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_salvarEmpenhoClick(self);
end;

procedure TFrm_Cad_Conveniado.btn_cancelarClick(Sender: TObject);
begin
  edt_nome_con.SetFocus;
  inherited;
end;

procedure TFrm_Cad_Conveniado.edt_cod_empenhoConveniadoChange(
  Sender: TObject);
begin
  inherited;
  if edt_cod_empenhoConveniado.Text <> '' then
  begin
    with fdt_principal5.spc_cons_med_histempenhoConveniado do
    begin
      Close;
      ParamByName('@cod_empenhoConveniado').AsString := edt_cod_empenhoConveniado.Text;
      Open;
    end;
    DB_OpenSQL('select vlEmpenho_emc - sum(isnull(vlpago_cta,0)) as saldo'+
    ' from tbl_empenhoConveniado e left join tbl_histempenhoConveniado h'+
    ' on e.cod_empenhoConveniado = h.cod_empenhoConveniado'+
    ' where e.cod_empenhoConveniado = '+edt_cod_empenhoConveniado.Text+' group by vlEmpenho_emc');

    lbl_saldo.Caption := 'Saldo R$ '+FormatFloat('###,###,##0.00',tab.FieldByName('saldo').AsFloat);
    lbl_saldo2.Caption := 'Saldo R$ '+FormatFloat('###,###,##0.00',tab.FieldByName('saldo').AsFloat);
  end;
end;

procedure TFrm_Cad_Conveniado.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  if cbx_cod_uf.Text <> '' then
  begin
    cbx_cod_cidadeCep.ValItems.Clear;
    Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cod_uf.getStrItemValue+' order by cidade_cep');
  end;
end;

procedure TFrm_Cad_Conveniado.btn_buscarcepClick(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if edt_cep_cne.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cep_cne.Text,'-')) > 0 then
    begin
      edt_endereco_cne.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairro_cne.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);
    end;
  end;
end;

procedure TFrm_Cad_Conveniado.edt_cep_cneExit(Sender: TObject);
begin
  inherited;
  if (edt_cep_cne.Text <> '') and (FStatus2 = FST_Novo) then
    btn_buscarcepClick(self);
  end;

procedure TFrm_Cad_Conveniado.btn_alterarrenovprocClick(Sender: TObject);
begin
  inherited;
  Panel14.Enabled:= True;
  Panel15.Enabled:= True;
  FStatus2 := FST_Alteracao;
  BotoesRenovProcessoONOFF(false);
  with fdt_principal3.spc_cons_med_histcondcomerciais do
    begin
    edt_percentual_cco.text := FieldByName('percentual_cco').AsString ;
    edt_datainicial_cco.Text := FieldByName('datainicial_cco').AsString;
    DtAnt:= edt_datainicial_cco.Text;
    edt_datafinal_cco.Text := FieldByName('datafinal_cco').AsString;
    cbx_tipocondcomerc.ValueItem:= FieldByName('cod_tipocondcomerc').AsString ;
//    edt_cod_histrenovconveniado.Text:= FieldByName('cod_histrenovconveniado').AsString;
    if edt_datafinal_cco.Text <> '' then
        begin
        Panel14.Enabled:= False;
        Panel15.Enabled:= False;
        end;
    end;
  EscreveLog(btn_alterarrenovproc.name);
end;

procedure TFrm_Cad_Conveniado.btn_adicionarrenovprocClick(Sender: TObject);
begin
  inherited;
  Panel14.Enabled:= True;
  Panel15.Enabled:= True;
  FStatus2 := FST_Novo;
  Obj_EmptyEditTag(self,6);
  BotoesRenovProcessoONOFF(false);
  EscreveLog(btn_adicionarrenovproc.name);
  Panel14.SetFocus;
  cbx_tipocondcomerc.ItemIndex:= -1;
  cbx_tipocondcomerc.SetFocus;
end;

procedure TFrm_Cad_Conveniado.btn_salvarrenovprocClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_percentual_cco.name, 'É necessário preencher o % da negociação', VLD_Preenchido)) or
     (not BAS_ValidarCampo(edt_datainicial_cco.name, 'É necessário preencher a Data da Renovação', VLD_DataPreenchida)) then
  exit ;
  if StrToFloat(edt_percentual_cco.Text) > 100 then
     begin
     Dlg_Alerta('Não aceita maior que 100% !', self);
     edt_percentual_cco.SetFocus;
     Exit;
     end;
  if StrToFloat(edt_percentual_cco.Text) < -100 then
     begin
     Dlg_Alerta('Não aceita menor que -100% !', self);
     edt_percentual_cco.SetFocus;
     Exit;
     end;
  if FStatus2 = FST_Novo then
     begin
// Atualizo o registro anterior com a data final
     DB_ExecSQL('update tbl_condcomerc set datafinal_cco = ' + DB_FormatDataSQL(edt_datafinal_cco.Date,ftDate) +
                ' where cod_conveniado = '+ STR_RemoveChar(edt_cod_conveniado.Text, '-') + ' and cod_tipocondcomerc = ' + cbx_tipocondcomerc.valueItem +
                ' and datafinal_cco = Null');
// Inserindo novo registro
     DB_ExecSQL('insert into tbl_condcomerc (cod_conveniado, cod_tipocondcomerc, datainicial_cco, datafinal_cco, percentual_cco) values('+
     STR_RemoveChar(edt_cod_conveniado.Text, '-') + ', ' + cbx_tipocondcomerc.valueItem + ', ' + DB_FormatDataSQL(edt_datainicial_cco.Date,ftDate)+ ', '+
     'Null, ' + DB_FormatDataSQL(edt_percentual_cco.text, ftfloat) + ')');
     end
  else
     begin
     DB_ExecSQL('update tbl_condcomerc set '+
    'cod_tipocondcomerc = ' + cbx_tipocondcomerc.valueItem + ', ' +
    'datainicial_cco = '+ DB_FormatDataSQL(edt_datainicial_cco.Date,ftDate) + ', ' +
    'datafinal_cco = '+ DB_FormatDataSQL(edt_datafinal_cco.date,ftDate) + ', ' +
    'percentual_cco = '+ DB_FormatDataSQL(edt_percentual_cco.text, ftfloat) +
    ' where cod_condcomerc = '+ edt_cod_condcomerc.Text);
    end;
  fdt_principal3.spc_cons_med_histcondcomerciais.Close;
  fdt_principal3.spc_cons_med_histcondcomerciais.Open;
  BotoesRenovProcessoONOFF(true);
  EscreveLog(btn_salvarrenovproc.name);
end;

procedure TFrm_Cad_Conveniado.edt_cd2_conveniadoProcessoChange(
  Sender: TObject);
begin
  inherited;
{  if edt_cd2_conveniadoProcesso.Text <> '' then
    begin
      with fdt_principal3.spc_cons_med_histrenovconveniado do
      begin
      Close;
      ParamByName('@processo_hrc').AsString := edt_processo3.Text;
      ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.Text, '-');
      Open;
      end;
    end;}
end;

procedure TFrm_Cad_Conveniado.btn_cancelarrenovprocClick(Sender: TObject);
begin
  inherited;
  BotoesRenovProcessoONOFF(true);
  EscreveLog(btn_cancelarrenovproc.name);
end;

procedure TFrm_Cad_Conveniado.edt_percsimpro_hrcKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',','-',#8]) then
     key :=#0;
end;

procedure TFrm_Cad_Conveniado.edt_processo3Change(Sender: TObject);
begin
  inherited;
  btn_alterarrenovproc.Enabled:= True;
{  if edt_processo3.Text <> '' then
    begin
      with fdt_principal3.spc_cons_med_histrenovconveniado do
      begin
      Close;
      ParamByName('@processo_hrc').AsString := edt_processo3.Text;
      ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.Text, '-');
      Open;
      if RecordCount = 0 then
         btn_alterarrenovproc.Enabled:= False;
      end;
    end;}
end;

procedure TFrm_Cad_Conveniado.TabSheet14Show(Sender: TObject);
begin
  inherited;
  dbg_histcondcomerciais.Visible:= True;
  with fdt_principal3.spc_cons_med_histcondcomerciais  do
    begin
      close;
      parambyname('@cod_conveniado').asstring := STR_RemoveChar(edt_cod_conveniado.text,'-') ;
      Open;
    end;
end;

procedure TFrm_Cad_Conveniado.edt_cod_condcomercChange(Sender: TObject);
begin
  inherited;
  if edt_cod_condcomerc .Text <> '' then
     with fdt_principal3.spc_cons_med_histcondcomerciais do
       begin
       edt_percentual_cco.text := FieldByName('percentual_cco').AsString ;
       edt_datainicial_cco.Text := FieldByName('datainicial_cco').AsString;
       DtAnt:= edt_datainicial_cco.Text;
       edt_datafinal_cco.Text := FieldByName('datafinal_cco').AsString;
       cbx_tipocondcomerc.ValueItem:= FieldByName('cod_tipocondcomerc').AsString ;
       Obj_SetFormObjValueByName(self, cbx_tipocondcomerc.name, FieldByName('cod_tipocondcomerc').AsString);
       end;
end;

procedure TFrm_Cad_Conveniado.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_nome_cln.text := Get_NomeMedico(edt_cod_crm.text);
end;

end.
