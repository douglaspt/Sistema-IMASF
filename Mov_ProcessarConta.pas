unit Mov_ProcessarConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Menus, BEditButton, ShellApi;

type
  TFrm_Mov_ProcessarConta = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    cbx_criticatudo: TCheckBox;
    btn_efetuarProcesCritica: TPDJButton;
    dlg_leitura: TOpenDialog;
    Animate: TAnimate;
    PageControl2: TPageControl;
    tbs_conta: TTabSheet;
    tbs_glosaconta: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    dbg_itemConta: TDBGrid;
    DataSource1: TDataSource;
    tbs_glosaitem: TTabSheet;
    btn_acerto: TSpeedButton;
    btn_acertoItem: TSpeedButton;
    lbl_tlitem: TLabel;
    DataSource2: TDataSource;
    edt_sequenciaconta_ctm: TDBEdit;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    edt_cod_especialidade: TDCEdit;
    edt_crm: TDCEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    edt_cod_autorizacao: TDCEdit;
    edt_cod_acomodacao: TDCEdit;
    Panel10: TPanel;
    edt_carteira: TDCEdit;
    edt_nomedigitado: TDCEdit;
    edt_cod_tipatendimento: TDCEdit;
    edt_cid: TDCEdit;
    Label2: TLabel;
    DataSource3: TDataSource;
    lbl_tlglosa: TLabel;
    btn_voltar: TSpeedButton;
    btn_gravaralteracaoconta: TSpeedButton;
    cbx_status: TDCComboBox;
    edt_dtentrada: TDCDateEdit;
    edt_dtsaida: TDCDateEdit;
    edt_vlInformado: TDCEdit;
    Label3: TLabel;
    edt_vlPagar: TDCEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton3: TSpeedButton;
    btn_gravarAlteracaoItem: TSpeedButton;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    edt_descricao_itc: TDCEdit;
    Panel11: TPanel;
    edt_dtrealizacao_itc: TDCDateEdit;
    Panel12: TPanel;
    edt_emergencia_itc: TDCEdit;
    edt_dhe_itc: TDCEdit;
    Panel13: TPanel;
    edt_cod_itemservico: TDCEdit;
    edt_cod_padrao: TDCEdit;
    edt_cod_posicao: TDCEdit;
    edt_retorno_itc: TDCEdit;
    Panel14: TPanel;
    edt_qtde_itc: TDCEdit;
    edt_vlinformado_itc: TDCEdit;
    edt_reducacresc_itc: TDCEdit;
    edt_vlpagar_itc: TDCEdit;
    TabSheet4: TTabSheet;
    PDJButton3: TPDJButton;
    edt_diferenca: TDCEdit;
    Label7: TLabel;
    ProgressBar1: TProgressBar;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    chb_pagtoconta: TCheckBox;
    chb_pagtoitem: TCheckBox;
    edt_obs_glosaconta: TDCEdit;
    Label8: TLabel;
    Label9: TLabel;
    edt_obs_glosaitem: TDCEdit;
    btn_glosaManualItem: TSpeedButton;
    btn_atualizar: TSpeedButton;
    lbl_tlcontaslidas: TLabel;
    lbl_tlitenslidos: TLabel;
    lbl_linha: TLabel;
    TabSheet5: TTabSheet;
    Panel16: TPanel;
    edt_dtrecebimento_con: TDCDateEdit;
    Panel18: TPanel;
    cbx_cod_Midia: TDCComboBox;
    Panel19: TPanel;
    btn_receber: TPDJButton;
    Panel15: TPanel;
    edt_obs_itc: TDCEdit;
    Label10: TLabel;
    rdb_sequencia: TRadioButton;
    rdb_carteira: TRadioButton;
    rdb_nome: TRadioButton;
    rdb_data: TRadioButton;
    rdb_statuscarteira: TRadioButton;
    rdb_statusnome: TRadioButton;
    rdb_statusdata: TRadioButton;
    Panel17: TPanel;
    rdb_internacoes: TRadioButton;
    rdb_ambulatorio: TRadioButton;
    rdb_todos: TRadioButton;
    PDJButton8: TPDJButton;
    edt_vlglosa: TDCEdit;
    SpeedButton7: TSpeedButton;
    Panel20: TPanel;
    rdb_ambulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_tds: TRadioButton;
    lbl_tlcontas: TLabel;
    ckb_itemservico: TCheckBox;
    SpeedButton6: TSpeedButton;
    edt_localizar: TEdit;
    Label11: TLabel;
    btn_beneficiario: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Label12: TLabel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    edt_cod_descricaoglosa: TDCChoiceEdit;
    ed2_cod_descricaoglosa: TDCChoiceEdit;
    TabSheet6: TTabSheet;
    dbg_Pendencia: TDBGrid;
    DataSource4: TDataSource;
    btn_pesquisar: TPDJButton;
    PDJButton7: TPDJButton;
    PDJButton10: TPDJButton;
    tbs_material: TTabSheet;
    SpeedButton2: TSpeedButton;
    btn_confirmarmat: TSpeedButton;
    dts_medicamento: TDataSource;
    dts_material: TDataSource;
    lbl_totalmaterial: TLabel;
    lbl_titulomatmad: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    PDJButton11: TPDJButton;
    PDJButton12: TPDJButton;
    PopupMenu1: TPopupMenu;
    ImprimirProcedi1: TMenuItem;
    PDJButton14: TPDJButton;
    Label14: TLabel;
    LsB_Plano: TListBox;
    btn_imprimirmat: TSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    tbs_medicamento: TTabSheet;
    Label19: TLabel;
    lbl_totalmedicamento: TLabel;
    btn_adicionarmat: TPDJButton;
    btn_alterarmat: TPDJButton;
    btn_salvarmat: TPDJButton;
    btn_cancelarmat: TPDJButton;
    btn_removermat: TPDJButton;
    btn_adicionarMed: TPDJButton;
    btn_alterarMed: TPDJButton;
    btn_salvarMed: TPDJButton;
    btn_cancelarMed: TPDJButton;
    btn_removerMed: TPDJButton;
    SpeedButton4: TSpeedButton;
    btn_confirmarMed: TSpeedButton;
    pnl_crm: TPanel;
    edt_cod_padraomat: TDCEdit;
    Panel21: TPanel;
    edt_qtde_mtc: TDCEdit;
    Panel22: TPanel;
    edt_qtdepagar_mtc: TDCEdit;
    edt_descricao_mtc: TDCEdit;
    edt_vlinformado_mtc: TDCEdit;
    edt_vlpagar_mtc: TDCEdit;
    Panel23: TPanel;
    edt_qtdepagar_mdc: TDCEdit;
    edt_vlpagar_mdc: TDCEdit;
    Panel24: TPanel;
    edt_qtde_mdc: TDCEdit;
    edt_vlinformado_mdc: TDCEdit;
    Panel25: TPanel;
    edt_cod_padraomed: TDCEdit;
    edt_descricao_mdc: TDCEdit;
    Label20: TLabel;
    edt_TlinformadoMat: TDCEdit;
    Label21: TLabel;
    edt_TlPagarMat: TDCEdit;
    Label22: TLabel;
    edt_TlDiferencaMat: TDCEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edt_TlinformadoMed: TDCEdit;
    edt_TlPagarMed: TDCEdit;
    edt_TlDiferencaMed: TDCEdit;
    btn_voltarmat: TSpeedButton;
    btn_voltarmed: TSpeedButton;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    btn_carregarArqMagnetico: TPDJButton;
    lbl_lermatmed: TCheckBox;
    ckb_carteirinha: TCheckBox;
    PDJButton13: TPDJButton;
    GroupBox2: TGroupBox;
    btn_carregarArqMagneticoTISS: TPDJButton;
    GroupBox3: TGroupBox;
    btn_carregarArqMagneticoUNIMED: TPDJButton;
    btn_repbenanal: TPDJButton;
    dts_gimtcm: TDataSource;
    dbg_gimtcm: TDBGrid;
    dbg_material: TDBGrid;
    dbg_gimdcm: TDBGrid;
    dts_gimdcm: TDataSource;
    dbg_medicamento: TDBGrid;
    edt_status_mtc: TDCEdit;
    Panel26: TPanel;
    edt_descricao: TEdit;
    btn_cod_simpro: TSpeedButton;
    Panel27: TPanel;
    btn_cod_brasindice: TSpeedButton;
    edt_descricao_med: TEdit;
    chb_pagtomaterial: TCheckBox;
    chb_pagtomedicamento: TCheckBox;
    Edit1: TEdit;
    Label27: TLabel;
    btn_glosasparaconveniado: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    dbe_cod_padraomat: TDBEdit;
    DBEdit1: TDBEdit;
    ppm_item: TPopupMenu;
    MenuItem1: TMenuItem;
    Label28: TLabel;
    edt_localizarItem: TEdit;
    btn_pesquisaItem: TSpeedButton;
    lbl_indice: TLabel;
    PDJButton15: TPDJButton;
    Panel28: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    Panel29: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel30: TPanel;
    ed2_cod_conveniado: TDCChoiceEdit;
    ed2_razao_con: TDCEdit;
    PesquisarContas1: TMenuItem;
    Panel31: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    btn_limpaConveniado: TPDJButton;
    Label29: TLabel;
    btn_conveniado: TPDJButton;
    cbx_cod_classeGlosa: TDCComboBox;
    cb2_cod_classeGlosa: TDCComboBox;
    btn_addglosa: TSpeedButton;
    btn_glosamanualconta: TSpeedButton;
    btn_addglosa02: TSpeedButton;
    btn_removerGlosa: TSpeedButton;
    btn_removerGlosa02: TSpeedButton;
    procedure CriaContaMedica(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_carregarArqMagneticoClick(Sender: TObject);
    procedure edt_sequenciaconta_ctmChange(Sender: TObject);
    procedure btn_acertoClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure cbx_statusCloseUp(Sender: TObject);
    procedure btn_gravaralteracaocontaClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure btn_acertoItemClick(Sender: TObject);
    procedure btn_gravarAlteracaoItemClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure dbg_itemContaDblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure btn_glosamanualcontaClick(Sender: TObject);
    procedure btn_glosaManualItemClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_efetuarProcesCriticaClick(Sender: TObject);
    procedure btn_receberClick(Sender: TObject);
    procedure edt_carteiraExit(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edt_descricao_dgl2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tbs_glosaitemShow(Sender: TObject);
    procedure edt_cod_descricaoglosaExit(Sender: TObject);
    procedure edt_cod_descricaoglosaButtonClick(Sender: TObject);
    procedure ed2_cod_descricaoglosaButtonClick(Sender: TObject);
    procedure ed2_cod_descricaoglosaExit(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_confirmarmatClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure PDJButton12Click(Sender: TObject);
    procedure ImprimirProcedi1Click(Sender: TObject);
    procedure PDJButton13Click(Sender: TObject);
    procedure PDJButton14Click(Sender: TObject);
    procedure btn_imprimirmatClick(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure btn_adicionarmatClick(Sender: TObject);
    procedure btn_alterarmatClick(Sender: TObject);
    procedure btn_cancelarmatClick(Sender: TObject);
    procedure btn_salvarmatClick(Sender: TObject);
    procedure btn_removermatClick(Sender: TObject);
    procedure btn_adicionarMedClick(Sender: TObject);
    procedure btn_alterarMedClick(Sender: TObject);
    procedure btn_salvarMedClick(Sender: TObject);
    procedure btn_cancelarMedClick(Sender: TObject);
    procedure btn_removerMedClick(Sender: TObject);
    procedure dbg_medicamentoDblClick(Sender: TObject);
    procedure dbg_materialDblClick(Sender: TObject);
    procedure btn_voltarmatClick(Sender: TObject);
    procedure btn_voltarmedClick(Sender: TObject);
    procedure btn_carregarArqMagneticoUNIMEDClick(Sender: TObject);
    procedure btn_carregarArqMagneticoTISSClick(Sender: TObject);
    procedure btn_repbenanalClick(Sender: TObject);
    procedure dbg_medicamentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbg_materialDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btn_cod_simproClick(Sender: TObject);
    procedure btn_cod_brasindiceClick(Sender: TObject);
    procedure chb_pagtomedicamentoClick(Sender: TObject);
    procedure chb_pagtomaterialClick(Sender: TObject);
    procedure dbg_itemContaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_glosasparaconveniadoClick(Sender: TObject);
    procedure dbe_cod_padraomatChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btn_pesquisaItemClick(Sender: TObject);
    procedure dbg_itemContaTitleClick(Column: TColumn);
    procedure PDJButton15Click(Sender: TObject);
    procedure ed2_cod_conveniadoButtonClick(Sender: TObject);
    procedure ed2_cod_conveniadoExit(Sender: TObject);
    procedure PesquisarContas1Click(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_limpaConveniadoClick(Sender: TObject);
    procedure dbg_PendenciaDblClick(Sender: TObject);
    procedure btn_conveniadoClick(Sender: TObject);
    procedure btn_addglosaClick(Sender: TObject);
    procedure btn_addglosa02Click(Sender: TObject);
    procedure btn_removerGlosaClick(Sender: TObject);
    procedure btn_removerGlosa02Click(Sender: TObject);

  private
    { Private declarations }
    FTlInformado, FTlPagar : double;
    dtrefe, conven, dtrealizacao, FIndice : string ;
    FMatMed, FStatus2, FStatus3, FsequenciaitemMat, FsequenciaitemMed  : integer;
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    procedure CarregarArquivo(arquivo:string);
    procedure atualizarVerificacao;
    procedure AtualizaContas;
    procedure AtualizaItemConta;
    procedure MostrarPlano(cod_conveniado : string);
    procedure BotoesMateriaisONOFF(b: boolean);
    procedure BotoesMedicamentosONOFF(b: boolean);
    procedure AtualizaMateriais;
    procedure AtualizaMedicamentos;
  public
    { Public declarations }
    CConveniado, FMes, FAno, FSeq : string ;
  end;

var
  Frm_Mov_ProcessarConta: TFrm_Mov_ProcessarConta;
  nomearquivo, registro, wnome, carteira, acomodacao, w60, TamArquivo, Cod_Benef, Idade, dtReal,
  dtRealMatMed, autoriz, guiaant, Wqtde, WStrMatMed_Ant, str_arquiventrad, S, Algo: String;
  Arq : TextFile;
  Seq, TlItem, TlLinha, SeqItm, InscAnter, Sequencia, Qtcarac, sequenciamat, sequenciamed, WTotalCtaMed,
  WMatMed_Ant: Integer;
  TamArq: Real;
  vlinformadomat, vlinformadomed, WDif : Double;
  byt_nameofthfile : TextFile;

implementation

uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str,
dtm_principal, Imp_Med_ResumoConta, Imp_Med_ContaGlosa, Imp_Med_DespConvPlano001,
Imp_4074, Cad_Dependente, Cad_Segurado, Fun_Acesso, Cad_ConveniadoItem, Imp_4104, dtm_principal4,
dtm_principal5, Mov_2034, Mov_RepasseConta, Bas_Impressao, dtm_principal6, Fun_Beneficiario,
Cad_crm, Cad_cid, Cad_AutorizacaoMedica, Cad_Autorizainternacao, Cad_espmedamb,
Rel_3048, dtm_principal2, Mov_2044, Mov_2075, Mov_2026, Imp_Med_ExtratoConven001, Cad_Conveniado ;

{$R *.DFM}

function Arredondar(Valor: Double; Dec: Integer): Double;
var valor1, Numero1, Numero2, Numero3: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;

function tbFileSize(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR);
  end;
end;

procedure TFrm_Mov_ProcessarConta.CriaContaMedica(Sender: TObject);
begin
  SeqItm:= 0;
  vlinformadomed:= 0;
  guiaant:= TabADO.FieldByName('guia_tmp').value;
  dtrealizacao:= TabADO.FieldByName('data_tmp').Value;
  autoriz:= copy(TabADO.FieldByName('guia_tmp').value,3,8);
  inc(Sequencia);
  if not DB_ExecSQL('insert into tbl_contamedica '+
         '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, '+
         'cod_endconveniado, carteirainform_ctm, cod_beneficiario, nomebenefi_ctm, '+
         'cod_autorizacao, cod_acomodacao, dtentrada_ctm, dtsaida_ctm, '+
         'cod_tipatendimento, cod_cid, cod_especialidade, cod_crm, status_ctm, '+
         'pagtoincondicional_ctm, idadeben_ctm, cod_usuario, dtsistema_ctm, '+
         'cod_tipatendimentoInternacao, cod_planoPagto, cod_classificacaoPlano) values ('+
         conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(Sequencia)+', '+
         '001, '''+carteira+''', ' + Cod_Benef + ', ''' + Trim(TabADO.FieldByName('nome_tmp').AsString)+''', '''+
         autoriz +''', '+acomodacao+', '''+
         TabADO.FieldByName('data_tmp').asString +''+' 00:00'+''', '''+
         TabADO.FieldByName('data_tmp').asString +''+' 00:00'+''', '''+
         '6'', ''0'', 0, 0, 9, 1, ' + Idade + ', ' + IntToStr(FCod_Usuario)+ ', getdate(), 0, 0, 0)') then
         begin
         DB_ExecSQL(' insert into tbl_erroLeituraContaMed (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, registro_ecm) '+
                    ' values ('+conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(Sequencia)+', 0, '+''''+ Cod_benef+''')');
         end;
end;

procedure TFrm_Mov_ProcessarConta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Processamento de Leitura / Critica / Verificação e Acerto de Conta' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Mov_ProcessarConta.CarregarArquivo(arquivo:string);
  var dtRealMatMed : string;
  function CriticaHeader(r:string): boolean ;
  begin
    result := false ;
    //Critica CSMH0
    if copy(r, 1, 5) <> 'CSMH0' then begin
      Dlg_Erro('Não foi possível Carregar a Conta ! O arquivo está corrompido - Falta registro Header.'+#13+'Falta o registro 0 (zero) de identificação.', self);
      result := true ;
    end;
    //Csritica Cod. do Conveniado
    try
      strtoint(copy(r, 29, 5))
    except
       Dlg_Erro('Não foi possível Carregar a Conta ! Impossível determinar o código do conveniado.'
       + #13 +  'Falta o registro 0 (zero) de identificação.', self);
       result := true ;
    end;
  end;
Procedure CarregarCSMH1(registro, sequencia :string);
var
  carteira, cid, t, autoriz, crm, acomodacao, horaE, horaS, dataS, especialidade : string ;
  i : integer ;
begin
  if ckb_carteirinha.Checked then
    carteira := trim(copy(registro,040,10))
  else
    carteira := trim(copy(registro,032,18)) ;
  carteira := STR_RemoveSimbolos(carteira);
  carteira := STR_RemoveChars(carteira);
  carteira := STR_RemoveZero(carteira);
//  if (length(carteira) > 10) then
  if (length(carteira) <= 10) or (length(carteira) > 10) then
    carteira := copy(carteira,1,10);
//  else
//    carteira := copy(carteira,length(carteira)-9 ,10);
  if carteira = 'Err' then
    carteira := '0000000000';
//  if length(carteira) > 10 then
//    carteira := copy(carteira,1,10);
  cid := '' ;
  try
    StrToInt64(carteira);
  except;
    carteira := '0000000000' ;
  end;
  t := trim(copy(registro,094,6)) ;
  for i := 1 to length(t) do
    if (t[i] <> #0) and (t[i] <> '.') and (t[i] <> ' ') and (t[i] <> '') and (t[i] <> '''') then
      if not ((cid = '') and (t[i] = '0')) then
        cid := cid + t[i];
  if cid = '' then
    cid := '000' ;
  try
    strtoint(STR_RemoveSimbolos(trim(copy(registro,108,6))));
    crm := STR_RemoveSimbolos(trim(copy(registro,108,6))) ;
  except
    crm := '00000' ;
  end;

  acomodacao := trim(copy(registro,060,1));

  if ((acomodacao = '') or (acomodacao = '0')) then
    acomodacao := '1';

  try
    horaE := copy(registro,067,02)+':'+copy(registro,069,02);
    StrToTime(horaE);
  except
    horaE := '00:00';
  end;

  try
    horaS := copy(registro,077,02)+':'+copy(registro,079,02);
    StrToTime(horaS);
  except
    horaS := '00:00';
  end;

  try
    dataS := copy(registro,073,02)+'/'+copy(registro,071,02)+'/'+copy(registro,075,02);
    StrToDate(copy(registro,071,02)+'/'+copy    (registro,073,02)+'/'+copy(registro,075,02));
  except
    dataS := copy(registro,063,02)+'/'+copy(registro,061,02)+'/'+copy(registro,065,02);
  end;
  autoriz := STR_RemoveChars(trim(copy(registro,50,10)));

  //Zerar codigo de Autorização do Hospital IFOR para Ambulatorio
  if (conven = '2100') and (acomodacao = '5') then
    autoriz := '0';
  especialidade := trim(copy(registro,100,8));
  if especialidade = '' then
    especialidade := '0';

  if not DB_ExecSQL('insert into tbl_contamedica '+
  '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, '+
  'cod_endconveniado, carteirainform_ctm, nomebenefi_ctm, '+
  'cod_autorizacao, cod_acomodacao, dtentrada_ctm, dtsaida_ctm, '+
  'cod_tipatendimento, cod_cid, cod_especialidade, cod_crm, status_ctm, '+
  'pagtoincondicional_ctm, cod_usuario, dtsistema_ctm) values ('+
  conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+
  '001, '''+carteira+''', ''Nome nao Informado'', '''+
  autoriz+''', '+acomodacao+', '''+
  copy(registro,063,02)+'/'+copy(registro,061,02)+'/'+copy(registro,065,02)+' '+horaE+''', '''+
  dataS+' '+horaS+''', '+
  trim(copy(registro,093,1))+', '''+cid+''', '+especialidade+', '+crm+', 9, 0, ' + IntToStr(FCod_Usuario)+ ', getdate())') then
    begin
    DB_ExecSQL(' insert into tbl_erroLeituraContaMed (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, registro_ecm) '+
    ' values ('+conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', 0, '+''''+trim(copy(registro,01,200))+''')');
    end;
  dtRealMatMed := ''''+copy(registro,063,02)+'/'+copy(registro,061,02)+'/'+copy(registro,065,02)+'''';
end;
Procedure CarregarCSMH2(registro, sequencia, sequenciaitem :string);
var
  dtReal, reducacresc, wS, matmed : String;
begin
  try
    strtodate(copy(registro,092,02)+'/'+copy(registro,094,02)+'/'+copy(registro,096,02));
    dtReal := copy(registro,094,02)+'/'+copy(registro,092,02)+'/'+copy(registro,096,02);
  except
    dtReal := '01/01/1950';
  end;
  reducacresc := trim(copy(registro,119,3)) ;
  try
    if strtoint(reducacresc) < 5 then
      reducacresc := '100' ;
  except
      reducacresc := '100' ;
  end;
  if (lbl_lermatmed.Checked) then
    matmed := copy(registro,130,1)
  else
    matmed := '';

// Se Qtde = 0, assume 1
  Wqtde:= trim(copy(registro,099,5));
  if StrToInt(Wqtde) < 1 then
     Wqtde:= '1';

  if (matmed <> '1') and (matmed <> '2') then
  begin
    matmed := copy(registro,122,2);
    if (matmed <> 'ME') and (matmed <> 'MA') then
    begin
      wS := 'insert into tbl_itemconta '+
      '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
      'cod_padrao, descricao_itc, emergencia_itc, '+
      'dhe_itc, dtrealizacao_itc, '+
      'cod_posicao, qtde_itc, vlinformado_itc, retorno_itc, status_itc, reducacresc_itc, qtdeinformada_itc  ) values ( '+
      conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+sequenciaitem+', '''+
      trim(copy(registro,032,8))+''', '''+trim(copy(registro,040,50))+''', '''+trim(copy(registro,090,1))+''', '''+
      trim(copy(registro,091,1))+''', '''+dtReal+''', '+
//      STR_AddZeros(trim(copy(registro,098,1)),1)+', '+trim(copy(registro,099,5))+', '''+
      STR_AddZeros(trim(copy(registro,098,1)),1)+', '+Wqtde+', '''+
      STR_SubstChar(floattostr(str_strtofloat(trim(copy(registro,104,15)))/100),',','.')+''', ''N'', 9, '+reducacresc+
      ', '+trim(copy(registro,099,5))+')';
      if not DB_ExecSQL(wS) then begin
        DB_ExecSQL(' insert into tbl_erroLeituraContaMed (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, registro_ecm) '+
        ' values ('+conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+sequenciaitem+', '+''''+trim(copy(registro,01,200))+''')');
      end;
    end;
  end;
  if (matmed = '1') or (matmed = 'ME') then
  begin
    DB_ExecSQL('insert into tbl_medicamentocontamedica '+
    ' (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_mdc,'+
    ' cod_padraomed, descricao_mdc, dtrealizacao_mdc,'+
    ' qtde3_mdc, qtdepagar_mdc,'+
    ' vlinformado_mdc,'+
    ' vlpagar_mdc,'+
    ' status_mdc, '+
    ' reducacresc_mdc, '+
    ' qtde_mdc, '+
    ' pagtoincondicional_itc) values ( '+
    conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+sequenciaitem+', '''+
    trim(copy(registro,032,8))+''', '''+trim(copy(registro,040,50))+''', '''+dtReal+''', '+
//    trim(copy(registro,099,5))+', '+trim(copy(registro,099,5))+', '''+
    Wqtde+', '+Wqtde+', '''+
    STR_SubstChar(floattostr(strtofloat(trim(copy(registro,104,15)))/100),',','.')+''','''+
    STR_SubstChar(floattostr(strtofloat(trim(copy(registro,104,15)))/100),',','.')+
    ''', 9, '+reducacresc+ ', ' + Wqtde + ', 0)');
  end;
  if (matmed = '2') or (matmed = 'MA') then
  begin
    DB_ExecSQL('insert into tbl_materialcontamedica '+
    '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_mtc, '+
    ' cod_padraomat, descricao_mtc, dtrealizacao_mtc, '+
    ' qtde3_mtc, qtdepagar_mtc,'+
    ' vlinformado_mtc,'+
    ' vlpagar_mtc,'+
    ' status_mtc, reducacresc_mtc, qtde_mtc, pagtoincondicional_itc) values ( '+
    conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+sequenciaitem+', '''+
    trim(copy(registro,032,8))+''', '''+trim(copy(registro,040,50))+''', '''+dtReal+''', '+
//    trim(copy(registro,099,5))+', '+trim(copy(registro,099,5))+', '''+
    Wqtde+', '+Wqtde+', '''+
    STR_SubstChar(floattostr(strtofloat(trim(copy(registro,104,15)))/100),',','.')+''','''+
    STR_SubstChar(floattostr(strtofloat(trim(copy(registro,104,15)))/100),',','.')+
    ''', 9, '+reducacresc + ', ' + Wqtde+', 0)');
  end;
end;
Procedure CarregarCSMH3(registro, sequencia :string);
var
  sequenciamat, sequenciamed : integer;
  vlinformadomat, vlinformadomed : Double;
  dtReal : String;
begin
  if DB_OpenSQL('select isnull(sum(vlinformado_mtc), 0) as vlinformado_mtc from tbl_materialcontamedica '+
  'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
  ' and sequenciaconta_ctm = '+sequencia) > 0 then
  begin
    vlinformadomat := Tab.FieldByName('vlinformado_mtc').AsFloat;
    if (lbl_lermatmed.Checked) and (FloatToStr(vlinformadomat) <> '') and (FloatToStr(vlinformadomat) <> '0') then
    begin
      DB_OpenSQL('select max(sequenciaitem_itc) as sequenciaitem_itc from Tbl_itemconta where cod_conveniado = '+
      conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
      ' and sequenciaconta_ctm = '+sequencia);
      sequenciamat := (tab.fieldbyName('sequenciaitem_itc').AsInteger + 1);
      DB_ExecSQL('insert into tbl_itemconta '+
      '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
      'cod_padrao, descricao_itc, emergencia_itc, '+
      'dhe_itc, dtrealizacao_itc, '+
      'cod_posicao, qtde_itc, vlinformado_itc, retorno_itc, status_itc, reducacresc_itc ) values ( '+
      conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+IntToStr(sequenciamat)+
      ', 80080014, ''MATERIAIS'', ''N'', ''N'', '+dtRealMatMed+', 0, 1, '''+
      STR_SubstChar(FloatToStr(vlinformadomat),',','.')+''', ''N'', 9, 100)');
    end;
  end;
  if DB_OpenSQL('select isnull(sum(vlinformado_mdc),0) as vlinformado_mdc from tbl_medicamentocontamedica '+
  'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
  ' and sequenciaconta_ctm = '+sequencia) > 0 then
  begin
    vlinformadomed := Tab.FieldByName('vlinformado_mdc').AsFloat;
    if (lbl_lermatmed.Checked) and (FloatToStr(vlinformadomed) <> '') and (FloatToStr(vlinformadomed) <> '0') then
    begin
      DB_OpenSQL('select max(sequenciaitem_itc) as sequenciaitem_itc from Tbl_itemconta where cod_conveniado = '+
      conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
      ' and sequenciaconta_ctm = '+sequencia);
      sequenciamed := (tab.fieldbyName('sequenciaitem_itc').AsInteger + 1);
      DB_ExecSQL('insert into tbl_itemconta '+
      '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
      'cod_padrao, descricao_itc, emergencia_itc, '+
      'dhe_itc, dtrealizacao_itc, '+
      'cod_posicao, qtde_itc, vlinformado_itc, retorno_itc, status_itc, reducacresc_itc ) values ( '+
      conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+sequencia+', '+IntToStr(sequenciamed)+
      ', 80070019, ''MEDICAMENTOS'', ''N'', ''N'', '+dtRealMatMed+', 0, 1, '''+
      STR_SubstChar(FloatToStr(vlinformadomed),',','.')+''', ''N'', 9, 100)');
    end;
  end;
  DB_ExecSQL('update tbl_contamedica set nomebenefi_ctm = '''+
  STR_SubstChar(trim(copy(registro,047,40)),'''','"')+''' where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
  ' and sequenciaconta_ctm = '+sequencia);
end;

var
  nomearquivo, registro : string ;
  Arq : TextFile;
  Seq, TlItem, TlLinha, SeqItm : Integer ;

begin
  if arquivo = '' then begin
    if not dlg_leitura.execute then
      exit ;
    nomearquivo := dlg_leitura.filename;
//    conven := conven+STR_GeraDigito11(conven) ;
  end else begin
    nomearquivo := 'I:\atendimentos\'+arquivo ;
    conven := copy(arquivo, 1, 4);
  end;
  AssignFile(Arq, nomearquivo);
  try
    Reset (Arq);
  except;
    exit;
  end;
  //Verifica o Tamanho do Arquivo se é Válido
  if FileSize(Arq) < 1 then begin
    Dlg_Erro('Não foi possível Carregar a Conta ! O arquivo está vazio.' +  #13 +  'Se foi enviado pelo conveniado, solicitar um disquete correto.'
    +  #13 +  'Se foi gerado a partir de planilhas,' +  #13 +  '   tentar re-gravar as informações digitadas.'
    +  #13 +  'Caso não seja possível efetuar nova gravação,' +  #13 +  'será necessária a re-digitação das planilhas envolvidas.',self);
    closefile (Arq);
    Exit;
  end;
  Read (Arq, registro);
  if CriticaHeader(registro) then begin
    closefile (Arq);
    Exit;
  end;
//  if (arquivo = '') and (conven+'-'+STR_GeraDigito11(conven) <> edt_cod_conveniado.text) then begin
  if (arquivo = '') and (conven <> STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-'))) then begin
    Dlg_Erro('Não foi possível Carregar a Conta ! O Código do Conveniado no Arquivo é diferente ao Digitado !', self);
    closefile (Arq);
    Exit;
  end;
  DB_BeginTrans;
  if arquivo <> '' then begin
    DB_ExecSQL('insert into tbl_lotecontamedica '+
    ' (cod_conveniado, dtreferencia_cta, sequencia_cta, dtrecebimento_cta, cod_midia)'+
    ' values ('+conven+', '+dtrefe+
    ', '+edt_sequencia_con.text+',getdate(), 2)');
  end;
  ProgressBar1.Visible := true ;
  lbl_tlcontaslidas.visible := true ;
  lbl_tlitenslidos.visible := true ;
  lbl_linha.visible := true ;
  ProgressBar1.max := FileSize (Arq);// - 150 ;
  if DB_OpenSQL('select max(sequenciaconta_ctm) from tbl_itemconta where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) > 0 then
    seq := Tab.Fields[0].AsInteger
  else
    seq:=0;
//  if length(trim(registro)) <= 150 then begin
    while not EOF(Arq) do begin
      with ProgressBar1 do begin
        position := position + 1
      end;
      Application.ProcessMessages;
      readln(Arq, registro ) ;
      Inc(TlLinha);
      lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(TlLinha);
      if (copy(registro, 1, 5) = 'CSMH1') then begin
        inc(Seq);
        SeqItm := 0 ;
        CarregarCSMH1(registro, IntToStr(seq));
        lbl_tlcontaslidas.Caption := 'Total de Contas Carregadas : '+IntToStr(Seq);
      end;
      if (copy(registro, 1, 5) = 'CSMH2') then begin
        Inc(TlItem);
        inc(SeqItm);
        CarregarCSMH2(registro, IntToStr(seq), IntToStr(seqItm));
        lbl_tlitenslidos.Caption := 'Total de Itens Carregados : '+IntToStr(TlItem);
      end;
      if (copy(registro, 1, 5) = 'CSMH3') then begin
        CarregarCSMH3(registro, IntToStr(seq));
      end;
    end;
//  end else
//    beep ;
  closefile (Arq);
  DB_ExecSQL('update tbl_lotecontamedica set vlapresentado_cta = (select isnull(sum(vlinformado_itc), 0) '+
  ' from tbl_itemconta where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
  ' and sequencia_cta = '+edt_sequencia_con.Text+'), dtleitura_cta = getdate() where cod_conveniado = '+
  conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text);
  DB_Commit;
  with ProgressBar1 do
    position := max ;
  if arquivo = '' then
    Dlg_Ok('Arquivo "'+nomearquivo+'" Carregado Com Sucesso !',self);
  ProgressBar1.visible := false ;
  lbl_tlcontaslidas.visible := false ;
  lbl_tlitenslidos.visible := false ;
  lbl_linha.visible := false ;
end;

procedure TFrm_Mov_ProcessarConta.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_ProcessarConta.FormShow(Sender: TObject);
begin
  inherited;
//  PageControl.ActivePageIndex:= 0;
  FIndice := 'status_itc, sequenciaitem_itc';
  pgb_registros.Visible:= False;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_classeGlosa', 'Descricao_cgl');
  BAS_CarregarCombo('cb2_cod_classeGlosa', 'Descricao_cgl');
  ed2_ano.text := FormatDateTime('yyyy', date);
  ed3_ano.text := FormatDateTime('yyyy', date);
  Obj_LoadCombo(Self, 'cbx_status', 'descricao_sts', 'cod_status', 'tbl_statusconta where cod_status < 100 or cod_status = 999');
  edt_dtrecebimento_con.date := date ;
  cbx_cod_Midia.ValItems.Add('0') ;
  cbx_cod_Midia.ValItems.Add('1') ;
  if edt_ano.Text = '' then
  edt_ano.text := FormatDateTime('yyyy', date);
  if edt_sequencia_con.Text = '' then
     edt_sequencia_con.text := '1';

  if CConveniado <> '' then begin
    edt_cod_conveniado.Text := CConveniado;
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FMes);
    edt_ano.Text := Fano;
    edt_sequencia_con.Text := Fseq;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Mov_ProcessarConta.MostrarPlano(cod_conveniado : string);
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
end;

procedure TFrm_Mov_ProcessarConta.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then begin
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
    MostrarPlano(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  end;
end;

function TFrm_Mov_ProcessarConta.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveniado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequência da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;

function DescricaoGlosa(C:String): String;
begin
  if c = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select descricao_dgl from tbl_descricaoglosa where cod_descricaoglosa = '+c);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;

end;
  



procedure TFrm_Mov_ProcessarConta.btn_carregarArqMagneticoClick(Sender: TObject);
begin
  inherited;
  TlItem := 0;
  TlLinha := 0;
  Seq := 0;
  lbl_tlcontaslidas.Visible:= True;
  lbl_tlitenslidos.Visible:= True;
  lbl_linha.Visible:= True;
    if CriticaParametros then
       begin
       Panel7.SetFocus;
       Exit;
       end;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then begin
      Dlg_Alerta('A Conta Não foi Registrada !', self);
      DB_ClearSQL;
      Exit;
    end else begin
      if Tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
        Dlg_Alerta('A Conta ja foi Repassada !', self);
        DB_ClearSQL;
        Exit;
      end;
    end;
    CarregarArquivo('');
    EscreveLog(btn_carregarArqMagnetico.Name);
end;

procedure TFrm_Mov_ProcessarConta.AtualizaItemConta;
var
  vlI, vlP : double ;
begin
  with Fdt_principal.spc_cons_itemconta do begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@status_ctm').AsString := '';
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@indice').AsString := FIndice;
    open;
    Frm_Mov_ProcessarConta.lbl_tlitem.Caption := 'Total de Itens da Conta Selecionada => '+intTostr(recordcount) ;
    first;
    vlI := 0 ;
    vlP := 0 ;
    while not eof do
    begin
      vlI := vlI + Fdt_principal.spc_cons_itemconta.fieldbyname('vlInformado_itc').AsFloat;
      vlP := vlP + Fdt_principal.spc_cons_itemconta.fieldbyname('vlPagar_itc').AsFloat;
      next;
    end;
    edt_vlInformado.text := FormatFloat('###,###,##0.00', vlI);
    edt_vlPagar.text := FormatFloat('###,###,##0.00', vlP);
    edt_diferenca.text := FormatFloat('###,###,##0.00', vlI-vlP);
  end;
end;

procedure TFrm_Mov_ProcessarConta.edt_sequenciaconta_ctmChange(Sender: TObject);
var
  vlI, vlP : double ;
begin
  inherited;
  FIndice := 'status_itc, sequenciaitem_itc';
  if (edt_sequenciaconta_ctm.text <> '') and (edt_sequenciaconta_ctm.text <> Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString) then
    AtualizaItemConta;
end;

procedure TFrm_Mov_ProcessarConta.btn_acertoClick(Sender: TObject);
begin
  inherited;
  edt_carteira.text := Fdt_principal.spc_cons_contamedica.fieldbyname('carteirainform_ctm').AsString ;
  edt_nomedigitado.text := Fdt_principal.spc_cons_contamedica.fieldbyname('nomebenefi_ctm').AsString ;
  edt_cod_autorizacao.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_autorizacao').AsString ;
  edt_cod_acomodacao.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_acomodacao').AsString ;
  edt_cod_tipatendimento.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_tipatendimento').AsString ;
  edt_dtentrada.text := Fdt_principal.spc_cons_contamedica.fieldbyname('dtentrada_ctm').AsString ;
  edt_dtsaida.text := Fdt_principal.spc_cons_contamedica.fieldbyname('dtsaida_ctm').AsString ;
  edt_cod_especialidade.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_especialidade').AsString ;
  edt_crm.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_crm').AsString ;
  edt_cid.text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_cid').AsString ;
  chb_pagtoconta.Checked := Fdt_principal.spc_cons_contamedica.fieldbyname('pagtoincondicional_ctm').AsBoolean ;
  Obj_SetFormObjValueByName(self,'cbx_cod_classeGlosa',3);
  PageControl2.ActivePageIndex := 1 ;
  with Fdt_principal.spc_cons_glosa do begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@status_ctm').AsString := '';
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := '0';
    open;
    Frm_Mov_ProcessarConta.lbl_tlglosa.Caption := 'Total de Glosas => '+intTostr(recordcount) ;
  end;
  Btn_Fechar.Enabled := false ;
  edt_carteira.setfocus;
  EscreveLog(btn_acerto.Name);
end;

procedure TFrm_Mov_ProcessarConta.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0 ;
  Btn_Fechar.Enabled := true ;
  DB_RollBack;
end;

procedure TFrm_Mov_ProcessarConta.cbx_statusCloseUp(Sender: TObject);
begin
  inherited;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_ProcessarConta.btn_gravaralteracaocontaClick(Sender: TObject);
var
  cs : integer;
  Executado : boolean;
begin
  inherited;
//  Fdt_principal.spc_cons_contamedica.next;
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
//  Fdt_principal.spc_cons_contamedica.prior;
  if chb_pagtoconta.Checked then begin
    if DB_OpenSQL('select nome_ben from tbl_beneficiario where inscricao_ben = '+
    copy(edt_carteira.text,3,5)+' and titulacartei_ben = '+copy(edt_carteira.text,8,2)) < 1 then begin
      Dlg_Alerta('Atenção não é possível efetuar pagamento incondicional para inscrições inválidas !', self);
      edt_carteira.SetFocus;
      exit;
    end;
  end;
  DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and sequencia_cta = '+edt_sequencia_con.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível efetuar a alteração porque a conta ja foi Repassada !', self);
    btn_voltarClick(self);
    Exit;
  end;
  DB_BeginTrans;
  Executado := DB_ExecSQL('update tbl_contamedica set '+
  'carteirainform_ctm = '''+edt_carteira.text+''', cod_beneficiario = null, '+
  'nomebenefi_ctm = '''+edt_nomedigitado.text+''', cod_autorizacao = '+edt_cod_autorizacao.text+', '+
  'cod_acomodacao = '+edt_cod_acomodacao.text+', dtentrada_ctm = '+DB_FormatDataSQL(edt_dtentrada.text,ftDate)+', '+
  'dtsaida_ctm = '+DB_FormatDataSQL(edt_dtsaida.text, ftDate)+', cod_tipatendimento = '+edt_cod_tipatendimento.text+', '+
  'cod_cid = '''+edt_cid.text+''', cod_especialidade = '+edt_cod_especialidade.text+', '+
  'cod_crm = '+edt_crm.text+', status_ctm = 9, '+
  'pagtoincondicional_ctm = '+intTostr(ord(chb_pagtoconta.checked))+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado := DB_ExecSQL('update tbl_itemconta set status_itc = 9, vlpagar_itc = 0, pagtoincondicional_itc = '+intTostr(ord(chb_pagtoconta.checked))+
    ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado :=  DB_ExecSQL('delete from tbl_glosa '+
    ' where cod_erroglosa <> 10 and cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado := DB_ExecSQL('update tbl_materialcontamedica set status_mtc = 9, qtdepagar_mtc = Null, vlpagar_mtc = Null, pagtoincondicional_itc = '+intTostr(ord(chb_pagtoconta.checked))+
    ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado := DB_ExecSQL('update tbl_medicamentocontamedica set status_mdc = 9, qtdepagar_mdc = Null, vlpagar_mdc = Null, pagtoincondicional_itc = '+intTostr(ord(chb_pagtoconta.checked))+
    ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado := DB_ExecSQL('delete from tbl_glosamat '+
    'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    Executado := DB_ExecSQL('delete from tbl_glosamed '+
    'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
    ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
    ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
    ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Executado then
    DB_Commit
  else
    DB_RollBack;  
  with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_contamedica.open;
    spc_cons_itemconta.open;
    spc_cons_contamedica.Locate('sequenciaconta_ctm', cs, [loCaseInsensitive]);
  end;
  btn_voltarClick(self);
  EscreveLog(btn_gravaralteracaoconta.Name);
end;

procedure TFrm_Mov_ProcessarConta.PageControlChange(Sender: TObject);
begin
  inherited;
  //comentado em 28/11/2016
 { with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_glosa.close;
  end; }
end;

procedure TFrm_Mov_ProcessarConta.btn_acertoItemClick(Sender: TObject);
begin
  inherited;
  edt_cod_itemservico.text := Fdt_principal.spc_cons_itemconta.fieldbyname('cod_itemservico').AsString;
  edt_cod_padrao.text := Fdt_principal.spc_cons_itemconta.fieldbyname('cod_padrao').AsString;
  edt_descricao_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('descricao_itc').AsString;
  edt_emergencia_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('emergencia_itc').AsString;
  edt_dhe_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('dhe_itc').AsString;
  edt_cod_posicao.text := Fdt_principal.spc_cons_itemconta.fieldbyname('cod_posicao').AsString;
  edt_retorno_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('retorno_itc').AsString;
  edt_dtrealizacao_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('dtrealizacao_itc').AsString;
  edt_qtde_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('qtde_itc').AsString;
  edt_vlinformado_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('vlinformado_itc').AsString;
 // edt_vlinformado_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('vlinformado_itc').AsString;
  edt_vlpagar_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('vlpagar_itc').AsString;
  edt_reducacresc_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('reducacresc_itc').AsString;
  chb_pagtoitem.Checked := Fdt_principal.spc_cons_itemconta.fieldbyname('pagtoincondicional_itc').AsBoolean ;
  edt_obs_itc.text := Fdt_principal.spc_cons_itemconta.fieldbyname('obs_itc').AsString;
  PageControl2.ActivePageIndex := 2 ;
  edt_vlglosa.text := FormatFloat('###,###,##0.00',(strtofloat(edt_vlinformado_itc.text)-
  str_strtofloat(edt_vlpagar_itc.text)));
  Obj_SetFormObjValueByName(self,'cb2_cod_classeGlosa',3);
  with Fdt_principal.spc_cons_glosa do begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@status_ctm').AsString := '';
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString;
    open;
    Frm_Mov_ProcessarConta.lbl_tlglosa.Caption := 'Total de Glosas => '+intTostr(recordcount) ;
  end;
  edt_vlinformado_itc.Enabled := Acs_AcessoEspecial('200901');
  Btn_Fechar.Enabled := false ;
  edt_cod_itemservico.SetFocus;
  DB_BeginTrans;
  EscreveLog(btn_acertoItem.Name);
end;

procedure TFrm_Mov_ProcessarConta.AtualizaContas;
Begin
  DB_ExecSQL('update tbl_contamedica set '+
  ' status_ctm = 9 '+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  DB_ExecSQL('update tbl_itemconta set '+
  ' cod_itemservico = '''+edt_cod_itemservico.text+''', cod_padrao = '''+edt_cod_padrao.text+''', '+
  ' descricao_itc = '''+edt_descricao_itc.text+''', emergencia_itc = '''+edt_emergencia_itc.text+''', '+
  ' dhe_itc = '''+edt_dhe_itc.text+''', dtrealizacao_itc = '+DB_FormatDataSQL(edt_dtrealizacao_itc.text, ftDate)+', '+
  ' cod_posicao = '+edt_cod_posicao.text+', qtde_itc = '+edt_qtde_itc.text+', '+
  ' vlinformado_itc = '''+STR_SubstChar(edt_vlinformado_itc.text,',','.')+''', vlpagar_itc = '''+STR_SubstChar(edt_vlpagar_itc.text,',','.')+''', '+
  ' reducacresc_itc = '''+STR_SubstChar(edt_reducacresc_itc.text,',','.')+''', retorno_itc = '''+edt_retorno_itc.text+''', '+
  ' obs_itc = '''+edt_obs_itc.text+''', '+
  ' status_itc = 9, '+
  ' pagtoincondicional_itc = '+intTostr(ord(chb_pagtoitem.checked))+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ' and sequenciaitem_itc = '+Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString);
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80080014' then
     DB_ExecSQL('update tbl_materialcontamedica set status_mtc = 9, qtdepagar_mtc = Null, vlpagar_mtc = Null, pagtoincondicional_itc = '+intTostr(ord(chb_pagtoitem.checked))+
     ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
     ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
     ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
     ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80070019' then
     DB_ExecSQL('update tbl_medicamentocontamedica set status_mdc = 9, qtdepagar_mdc = Null, vlpagar_mdc = Null, pagtoincondicional_itc = '+intTostr(ord(chb_pagtoitem.checked))+
     ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
     ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
     ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
     ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
end;

procedure TFrm_Mov_ProcessarConta.btn_gravarAlteracaoItemClick(Sender: TObject);
var
  cs, csitem : integer;
begin
  inherited;
//  Fdt_principal.spc_cons_contamedica.next;
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  csitem :=Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsInteger ;
//  Fdt_principal.spc_cons_contamedica.prior;
  if chb_pagtoitem.Checked then begin
    if Get_DescricaoServico(edt_cod_itemservico.text) = '' then begin
      Dlg_Alerta('Atenção não é possível efetuar pagamento incondicional para itens de serviços inválidos ou não cadastrados!', self);
      edt_cod_itemservico.SetFocus;
      exit;
    end;
  end;
  edt_vlinformado_itc.text := STR_RemoveChar(edt_vlinformado_itc.text, '.');
  edt_vlglosa.text := STR_RemoveChar(edt_vlglosa.text, '.');
  edt_vlpagar_itc.text := STR_RemoveChar(edt_vlpagar_itc.text, '.');
  DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and sequencia_cta = '+edt_sequencia_con.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível efetuar a alteração porque a conta ja foi Repassada !', self);
    btn_voltarClick(self);
    Exit;
  end;
  if (StrToFloat(edt_vlglosa.Text) <> 0) and (Fdt_principal.spc_cons_glosa.RecordCount = 0)  then begin
    Dlg_Alerta('O Campo Vl.Glosa foi preenchido. É necessário fazer uma Glosa Manual ou preencher o valor com 0',self);
    Exit;
  end;
  AtualizaContas;
  DB_Commit;
  with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_contamedica.open;
    spc_cons_itemconta.open;
    spc_cons_contamedica.Locate('sequenciaconta_ctm', cs, [loCaseInsensitive]);
    //spc_cons_itemconta.Locate('sequenciaitem_itc', csitem, [loCaseInsensitive]);
  end;
  btn_voltarClick(self);
  EscreveLog(btn_gravarAlteracaoItem.Name);
end;

procedure TFrm_Mov_ProcessarConta.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_resumoconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@indice').AsString := '0' ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 5 ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 6 ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 0 ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_resumoconta;
  Frm_Bas_Impressao.showReport(4179);
  Fdt_principal.spc_cons_med_resumoconta.close;
  {Frm_Imp_Med_ResumoConta := TFrm_Imp_Med_ResumoConta.Create(Self);
  Frm_Imp_Med_ResumoConta.QuickRep1.Preview;
  Fdt_principal.spc_cons_med_resumoconta.close;
  Frm_Imp_Med_ResumoConta.Release;}
end;

procedure TFrm_Mov_ProcessarConta.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

procedure TFrm_Mov_ProcessarConta.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_itemglosa do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ContaGlosa := TFrm_Imp_Med_ContaGlosa.Create(Self);
  Frm_Imp_Med_ContaGlosa.QuickRep1.Preview;
  Fdt_principal.spc_cons_itemglosa.close;
  Frm_Imp_Med_ContaGlosa.Release;
end;

procedure TFrm_Mov_ProcessarConta.dbg_itemContaDblClick(Sender: TObject);
begin
  inherited;
  btn_acertoItem.click;
end;

procedure TFrm_Mov_ProcessarConta.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btn_acerto.click;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_resumoconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@indice').AsString := '1' ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ResumoConta := TFrm_Imp_Med_ResumoConta.Create(Self);
  Frm_Imp_Med_ResumoConta.QuickRep1.Preview;
  Fdt_principal.spc_cons_med_resumoconta.close;
  Frm_Imp_Med_ResumoConta.Release;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_resumoconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@indice').AsString := '2' ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ResumoConta := TFrm_Imp_Med_ResumoConta.Create(Self);
  Frm_Imp_Med_ResumoConta.QuickRep1.Preview;
  Fdt_principal.spc_cons_med_resumoconta.close;
  Frm_Imp_Med_ResumoConta.Release;
end;

procedure TFrm_Mov_ProcessarConta.btn_glosamanualcontaClick(Sender: TObject);
var
  cs : integer;
  Executado : boolean;
begin
  inherited;
  DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and sequencia_cta = '+edt_sequencia_con.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível efetuar a alteração porque a conta ja foi Repassada !', self);
    btn_voltarClick(self);
    Exit;
  end;
  if cbx_cod_classeGlosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o campo Classe Glosa!',self);
    exit;
  end
  else
 { if not(strtoint(edt_cod_classeGlosa.Text) in [1,2,3])  then begin
    Dlg_alerta('O Campo Classe Glosa tem que ser preenchido com 1,2 ou 3',self);
    exit;
  end; }
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  DB_BeginTrans;
  DB_ExecSQL('update tbl_contamedica set '+
  ' status_ctm = 11, '+
  'pagtoincondicional_ctm = 0'+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  DB_ExecSQL('update tbl_itemconta set '+
  'status_itc = 9, vlpagar_itc = 0, '+
  'pagtoincondicional_itc = 0 '+
  'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
 { DB_ExecSQL('delete from tbl_glosa '+
  'where cod_erroglosa <> 10 and cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  DB_ExecSQL('insert into tbl_glosa ('+
  'cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, descricao_glo, cod_erroglosa, cod_classeGlosa) values ('+
  Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+', '+
  DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
  Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+', '+
  Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ', 0, '''+edt_obs_glosaconta.text+''', 10, '+cbx_cod_classeGlosa.valueItem+')');    }
  DB_Commit;
  with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_contamedica.open;
    spc_cons_itemconta.open;
    spc_cons_contamedica.Locate('sequenciaconta_ctm', cs, [loCaseInsensitive]);
  end;
  edt_obs_glosaconta.text := '' ;
  btn_voltarClick(self);
  EscreveLog(btn_glosamanualconta.Name);
end;

procedure TFrm_Mov_ProcessarConta.atualizarVerificacao;
  function VerIndice: string;
  begin
    if rdb_sequencia.Checked then result := '1';
    if rdb_carteira.Checked then result := '2';
    if rdb_nome.Checked then result := '3';
    if rdb_data.Checked then result := '4';
    if rdb_statuscarteira.Checked then result := '5';
    if rdb_statusnome.Checked then result := '6';
    if rdb_statusdata.Checked then result := '7';
  end;
  function VerInternacao: string;
  begin
    if rdb_internacoes.Checked then result := '4';
    if rdb_ambulatorio.Checked then result := '5';
    if rdb_todos.Checked then result := '0';
  end;
begin
  Fdt_principal.spc_cons_itemconta.Close;
  with Fdt_principal.spc_cons_contamedica do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text;
    ParamByName('@status_ctm').AsString := cbx_status.ValueItem;
    ParamByName('@indice').AsString := VerIndice ;
    ParamByName('@internacao').AsString := VerInternacao;
    open;
    lbl_tlcontas.Caption := 'Total de Contas Médicas => '+intTostr(recordcount) ;
  end;
end;

procedure TFrm_Mov_ProcessarConta.btn_glosaManualItemClick(Sender: TObject);
var
  cs, csitem : integer;
begin
  inherited;
  {if edt_obs_glosaitem.Text = '' then begin
    Dlg_Alerta('É necessário preencher a Observação da Glosa!',self);
    exit;
  end;
    if cb2_cod_classeGlosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o campo Classe Glosa!',self);
    exit;
  end
  else
  if not(strtoint(edt_classeglosa.Text) in [1,2,3])  then begin
    Dlg_alerta('O Campo Classe Glosa tem que ser preenchido com 1,2 ou 3',self);
    exit;
  end; 
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  DB_ExecSQL('delete from tbl_glosa '+
  'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ' and cod_erroglosa <> 10');
  if (strtofloat(STR_RemoveChar(edt_vlglosa.Text,'.')) = 0) or (edt_vlglosa.Text = edt_vlinformado_itc.Text) then begin
    DB_ExecSQL('insert into tbl_glosa ('+
    'cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, descricao_glo, cod_erroglosa, cod_classeGlosa) values ('+
    Fdt_principal.spc_cons_itemconta.fieldbyname('cod_conveniado').AsString+', '+
    DB_FormatDataSQL(Fdt_principal.spc_cons_itemconta.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequencia_cta').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString+', '''+ edt_obs_glosaitem.text+''', 10, '+cb2_cod_classeGlosa.valueItem+')');
  end
  else begin
    if edt_cod_descricaoglosa.Text = '' then begin
      Dlg_Alerta('É necessário preencher a Observação da Glosa!',self);
      exit;
    end;
    DB_ExecSQL('insert into tbl_glosaparcial (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm,'+
    ' sequenciaitem_itc, descricao_glp, cod_erroglosa, cod_classeGlosa, cod_descricaoGlosa, vlglosado_glp) values('+
    Fdt_principal.spc_cons_itemconta.fieldbyname('cod_conveniado').AsString+', '+
    DB_FormatDataSQL(Fdt_principal.spc_cons_itemconta.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequencia_cta').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString+', '''+edt_obs_glosaitem.text+''', 10, '+
    cb2_cod_classeGlosa.valueitem+', '+edt_cod_descricaoglosa.Text+', '+STR_SubstChar(edt_vlglosa.text,',','.')+')');
  end;
  DB_Commit; }
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  csitem :=Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsInteger ;
  AtualizaContas;
  with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_contamedica.open;
    spc_cons_itemconta.open;
    spc_cons_contamedica.Locate('sequenciaconta_ctm', cs, [loCaseInsensitive]);
    //spc_cons_itemconta.Locate('sequenciaitem_itc', csitem, [loCaseInsensitive]);
  end;
  edt_obs_glosaitem.text := '' ;
  btn_voltarClick(self);
  EscreveLog(btn_glosaManualItem.Name);
end;

procedure TFrm_Mov_ProcessarConta.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  atualizarVerificacao;
  EscreveLog(btn_atualizar.Name);
end;

procedure TFrm_Mov_ProcessarConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdt_principal.spc_cons_contamedica.close;
  Fdt_principal.spc_cons_itemconta.close;
  Fdt_principal.spc_cons_glosa.close;
  fdt_principal5.spc_cons_med_pendenciaContaMed.close;
  fdt_principal5.spc_cons_adm_medicamentocontamedica.close;
  fdt_principal5.spc_cons_adm_materialcontamedica.close;
  DB_Commit;
  inherited;
end;

procedure TFrm_Mov_ProcessarConta.btn_efetuarProcesCriticaClick(Sender: TObject);
  procedure CriticarConta(conven, dtrefe, seguen, status : string);
  begin
    Animate.Visible := true ;
    Animate.Active := true ;
    Med_CriticaConta(conven, dtrefe, seguen, status, self);
    Animate.Visible := false ;
    Animate.Active := false ;
  end;
  var
    status : string ;
begin
  inherited;
   if CriticaParametros then
      Exit;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if DB_OpenSQL('select * from tbl_pendenciaContaMed where cod_statuspendencia = 0 and cod_conveniado = '+
    conven+' and dtreferencia_ctm = '+dtrefe) > 0 then begin
        Dlg_Alerta('Não é possível Criticar a Conta pois há Pendências em Aberto', self);
        exit;
    end;
    if DB_OpenSQL('select * from tbl_pendenciaContaMed where cod_statuspendencia = 2 and cod_conveniado = '+
    conven+' and dtreferencia_ctm = '+dtrefe) > 0 then begin
      if not(Dlg_YesNo('ATENÇÃO ! Existem Pendências em Andamento ! Tem certeza que deseja Criticar a Conta ?', self)) then
        exit;
    end;
    if (cbx_criticatudo.checked) then
    begin
      status := '0';
      DB_ExecSQL('delete from tbl_glosa where cod_conveniado = '+conven+
      ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+' and cod_erroglosa <> 10');
    end
      else status := '9' ;
    if DB_OpenSQL('select * from tbl_contamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then begin
      Dlg_Alerta('A Conta Não foi Recebida !', self);
      Exit;
    end;
    DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text);
    if Tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
      Dlg_Alerta('A Conta ja foi Repassada !', self);
      Exit;
    end;
    DB_ClearSQL;
    CriticarConta(conven, dtrefe, edt_sequencia_con.text, status);
    btn_atualizarClick(self);
    EscreveLog(btn_efetuarProcesCritica.Name);
end;

procedure TFrm_Mov_ProcessarConta.btn_receberClick(Sender: TObject);
var
  dtrefe, conven: string ;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveniado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtrecebimento_con.name, 'Data de Recebimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_Midia.name, 'O Tipo de Mídia deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if RecebimentoConta(conven, dtrefe,edt_sequencia_con.text,copy(cbx_cod_Midia.text,1,1)) = false then
     begin
     Dlg_Alerta('Esse Recebimento ja foi Efetuado!',self);
     exit;
     end;
  Dlg_Ok('Movimento Registrado Como Recebido!', self);
//  Obj_EmptyEdit(Self);]
  EscreveLog(btn_receber.Name);
end;

procedure TFrm_Mov_ProcessarConta.edt_carteiraExit(Sender: TObject);
begin
  inherited;
  if edt_carteira.text <> '' then begin
    if DB_OpenSQL('select nome_ben '+
    'from tbl_beneficiario where inscricao_ben = '+
    copy(edt_carteira.text,3,5)+' and titulacartei_ben = '+copy(edt_carteira.text,8,2)) > 0 then
      edt_nomedigitado.text := Tab.FieldByName('nome_ben').AsString ;
  end;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton8Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_itemglosa do
  begin
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_4074 := TFrm_Imp_4074.Create(Self);
  Frm_Imp_4074.Fcod_nome := edt_cod_conveniado.text +('      '+edt_razao_con.Text);
  Frm_Imp_4074.QuickRep1.Preview;
  Fdt_principal.spc_cons_itemglosa.close;
  Frm_Imp_4074.Release;
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton6Click(Sender: TObject);
var seqconta, acomodacao  : String ;
begin
  inherited;
  if ckb_itemservico.Checked then
    begin
      if rdb_sequencia.Checked = false then
        begin
          rdb_sequencia.Checked := true;
          Fdt_principal.spc_cons_contamedica.close;
          atualizarVerificacao;
          Application.ProcessMessages;
          Fdt_principal.spc_cons_contamedica.first;
          Application.ProcessMessages;
        end;
      seqconta := Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').asstring;
       if rdb_internacoes.Checked then
       acomodacao := ' and c.cod_acomodacao <> 5';
       if rdb_ambulatorio.Checked then
       acomodacao := ' and c.cod_acomodacao = 5';

      DB_OpenSQL('select min(i.sequenciaconta_ctm) as sequenciaconta_ctm from tbl_itemconta i '+
' inner join tbl_contamedica c on i.cod_conveniado = c.cod_conveniado and i.dtreferencia_cta = c.dtreferencia_cta '+
' and i.sequencia_cta = c.sequencia_cta and i.sequenciaconta_ctm = c.sequenciaconta_ctm '+
' where i.cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+' and i.dtreferencia_cta = '''+cbx_cod_mes.ValueItem+'/01/'+edt_ano.text+''' and i.sequencia_cta = '+edt_sequencia_con.text+
' and i.cod_itemservico = '+edt_localizar.text+' and i.sequenciaconta_ctm > '+seqconta+ acomodacao);
Fdt_principal.spc_cons_contamedica.Locate('sequenciaconta_ctm', Tab.Fieldbyname('sequenciaconta_ctm').AsInteger, [loCaseInsensitive]);
    end
    else
    begin
      if rdb_sequencia.Checked  then
        begin
          Fdt_principal.spc_cons_contamedica.Locate('sequenciaconta_ctm', edt_localizar.text, [loCaseInsensitive]);
        end;
      if rdb_carteira.Checked then
        begin
          Fdt_principal.spc_cons_contamedica.Locate('carteirainform_ctm', edt_localizar.text, [loCaseInsensitive]);
        end;
      if rdb_nome.Checked then
        begin
          Fdt_principal.spc_cons_contamedica.Locate('nomebenefi_ctm', edt_localizar.text, [loPartialKey]);
        end;
    end;
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  edt_vlpagar_itc.Text := FormatFloat('########0.00',(strtofloat(edt_vlinformado_itc.text)-
  strtofloat(edt_vlglosa.text)));
//  edt_reducacresc_itc.text := Formatfloat('##0.0000001', (strtofloat(edt_vlpagar_itc.Text)/
//  strtofloat(edt_vlinformado_itc.Text)*100));
  edt_reducacresc_itc.text := Formatfloat('##0.0000001', (strtofloat(edt_vlinformado_itc.Text) /
  strtofloat(edt_vlpagar_itc.Text)) *100);

end;

procedure TFrm_Mov_ProcessarConta.edt_descricao_dgl2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if edt_cod_descricaoglosa.text <> '' then
 edt_obs_glosaitem.Text := DescricaoGlosa(edt_cod_descricaoglosa.Text);
end;

procedure TFrm_Mov_ProcessarConta.btn_beneficiarioClick(Sender: TObject);
var Tit : integer;
begin
  inherited;
  Hide;
  with Fdt_principal.spc_cons_contamedica do
    begin
//    Frm_Rel_3048 := Frm_Rel_3048.Create(Self);
    Frm_Rel_3048.wCod_Beneficiario:= FieldByName('cod_beneficiario').AsString ;
    Frm_Rel_3048.ShowModal;
//    Frm_Rel_3048.Release;
{  Tit := strtoint(copy(FieldByName('carteirainform_ctm').Asstring,8,2));
  //ShowMessage(Tit);
    if Tit = 0 then begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end else begin
//aquiu
//          if DB_OpenSQL('select cod_beneficiario from tbl_beneficiario '+
//                        'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
//  ' and sequenciaconta_ctm = '+sequencia) > 0 then
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
      end;}
    end;
  Show;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_ConveniadoItem := TFrm_Cad_ConveniadoItem.Create(Self);
  Frm_Cad_ConveniadoItem.wCod_Conveniado := STR_RemoveChar(edt_cod_conveniado.text, '-') ;
  Frm_Cad_ConveniadoItem.ShowModal;
  Frm_Cad_ConveniadoItem.Release;
  Show;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_erroleituracontamed do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
  end;
  Frm_Imp_4104 := TFrm_Imp_4104.Create(Self);
  Frm_Imp_4104.QuickRep1.Preview;
  Frm_Imp_4104.Release;
  Fdt_principal4.spc_cons_med_erroleituracontamed.close;
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edt_vlglosa.Enabled := True;
  edt_vlglosa.Text := '0';
  DB_ExecSQL('delete from tbl_glosa '+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ' and sequenciaitem_itc = '+Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString+
  ' and cod_erroglosa <> 10');
  DB_ExecSQL('delete from tbl_glosaparcial '+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ' and sequenciaitem_itc = '+Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString);
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80080014' then
     DB_ExecSQL('delete from tbl_glosamat '+
     'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
     ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
     ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
     ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80070019' then
     DB_ExecSQL('delete from tbl_glosamed '+
     'where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
     ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
     ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
     ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);
  Fdt_principal.spc_cons_glosa.Close;
  Fdt_principal.spc_cons_glosa.Open;
end;

procedure TFrm_Mov_ProcessarConta.tbs_glosaitemShow(Sender: TObject);
begin
  inherited;
  edt_vlglosa.Enabled := false;
end;

procedure TFrm_Mov_ProcessarConta.edt_cod_descricaoglosaExit(Sender: TObject);
begin
  inherited;
   if edt_cod_descricaoglosa.text <> '' then
     edt_obs_glosaitem.Text := DescricaoGlosa(edt_cod_descricaoglosa.Text);
end;

procedure TFrm_Mov_ProcessarConta.edt_cod_descricaoglosaButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_descricaoglosa',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_descricaoglosa',8,length('edt_cod_descricaoglosa')),
  'cod_descricaoglosa, descricao_dgl', 'Código, Descrição da Glosa',
  'Localizar Descrição da Glosa', '', true));
  edt_cod_descricaoglosaExit(self);
end;

procedure TFrm_Mov_ProcessarConta.ed2_cod_descricaoglosaButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'ed2_cod_descricaoglosa',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('ed2_cod_descricaoglosa',8,length('ed2_cod_descricaoglosa')),
  'cod_descricaoglosa, descricao_dgl', 'Código, Descrição da Glosa',
  'Localizar Descrição da Glosa', '', true));
  ed2_cod_descricaoglosaExit(self);
end;

procedure TFrm_Mov_ProcessarConta.ed2_cod_descricaoglosaExit(Sender: TObject);
begin
  inherited;
   if ed2_cod_descricaoglosa.text <> '' then
     edt_obs_glosaconta.Text := DescricaoGlosa(ed2_cod_descricaoglosa.Text);
end;



procedure TFrm_Mov_ProcessarConta.PDJButton7Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2034 := TFrm_Mov_2034.Create(Self);
  Frm_Mov_2034.FCod_Conveniado := STR_RemoveChar(edt_cod_conveniado.text, '-') ;
  Frm_Mov_2034.FMes := cbx_cod_mes.valueItem ;
  Frm_Mov_2034.FAno := edt_ano.Text ;
  Frm_Mov_2034.FSeq := edt_sequencia_con.Text ;
  Frm_Mov_2034.FSeqconta := Fdt_principal.spc_cons_contamedica.fieldByName('sequenciaconta_ctm').AsString;
  Frm_Mov_2034.FSeqItem := Fdt_principal.spc_cons_itemconta.fieldByName('sequenciaitem_itc').AsString;
  Frm_Mov_2034.ShowModal;
  Frm_Mov_2034.Release;
  Show;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton10Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2075 := TFrm_Mov_2075.Create(Self);
  Frm_Mov_2075.FCod_Conveniado := edt_cod_conveniado.text ;
  Frm_Mov_2075.FMes := cbx_cod_mes.valueItem ;
  Frm_Mov_2075.FAno := edt_ano.Text ;
  Frm_Mov_2075.FSeq := edt_sequencia_con.Text ;
  Frm_Mov_2075.ShowModal;
  Frm_Mov_2075.Release;
  Show;
end;

procedure TFrm_Mov_ProcessarConta.AtualizaMateriais;
begin
  FTlInformado := 0;
  FTlPagar := 0;
  dbg_material.Visible:= True;
  PageControl2.ActivePageIndex := 3;
  with fdt_principal5.spc_cons_adm_materialcontamedica do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text;
    ParamByName('@sequenciaconta_ctm').AsString := Fdt_principal.spc_cons_itemconta.FieldByName('sequenciaconta_ctm').AsString;
    open;
    lbl_totalmaterial.Caption := 'Total de Materiais => '+intTostr(RecordCount) ;
    while not Eof do
    begin
      FTlInformado := FTlInformado + (fieldByName('vlinformado_mtc').AsFloat);
      FTlPagar := FTlPagar + (fieldByName('vlpagar_mtc').AsFloat);
      Next;
    end;
    edt_TlinformadoMat.text := FormatFloat('###,###,##0.00', FTlInformado);
    edt_TlPagarMat.text := FormatFloat('###,###,##0.00', FTlPagar);
    edt_TlDiferencaMat.text := FormatFloat('###,###,##0.00', FTlInformado-FTlPagar);
    PageControl2.ActivePageIndex := 3;
    FMatMed := 0;
  end;
end;

procedure TFrm_Mov_ProcessarConta.AtualizaMedicamentos;
begin
  FTlInformado := 0;
  FTlPagar := 0;
  with fdt_principal5.spc_cons_adm_medicamentocontamedica do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text;
    ParamByName('@sequenciaconta_ctm').AsString := Fdt_principal.spc_cons_itemconta.FieldByName('sequenciaconta_ctm').AsString;
    open;
    lbl_totalmedicamento.Caption := 'Total de Medicamentos => '+intTostr(RecordCount) ;
    while not Eof do
    begin
      FTlInformado := FTlInformado + (fieldByName('vlinformado_mdc').AsFloat);
      FTlPagar := FTlPagar + (fieldByName('vlpagar_mdc').AsFloat);
      Next;
    end;
    edt_TlinformadoMed.text := FormatFloat('###,###,##0.00', FTlInformado);
    edt_TlPagarMed.text := FormatFloat('###,###,##0.00', FTlPagar);
    edt_TlDiferencaMed.text := FormatFloat('###,###,##0.00', FTlInformado-FTlPagar);
    PageControl2.ActivePageIndex := 4;
    FMatMed := 1;
  end;
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  btn_voltarmat.Enabled:= True;
  btn_voltarmed.Enabled:= True;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  dtrealizacao := DB_FormatDataSQL(Fdt_principal.spc_cons_itemconta.fieldByName('dtrealizacao_itc').AsDateTime, ftDateTime);
  dtRealMatMed:= copy(dtrealizacao,8,4)+'-'+copy(dtrealizacao,2,2)+'-'+copy(dtrealizacao,5,2);
  conven := STR_RemoveChar(edt_cod_conveniado.text, '-');
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80080014' then
  begin
    AtualizaMateriais;
  end;
  if Fdt_principal.spc_cons_itemconta.FieldByName('cod_padrao').AsString = '80070019' then
  begin
    AtualizaMedicamentos;
  end;
end;

procedure TFrm_Mov_ProcessarConta.btn_confirmarmatClick(Sender: TObject);
var
  cs : integer;
begin
  inherited;
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and sequencia_cta = '+edt_sequencia_con.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
   // Dlg_Alerta('Não é possível efetuar a alteração porque a conta ja foi Repassada !', self);
    PageControl2.ActivePageIndex := 0 ;
    Exit;
  end;
  PageControl2.ActivePageIndex := 0 ;
  Btn_Fechar.Enabled := true ;
  DB_ExecSQL('update tbl_contamedica set '+
  ' status_ctm = 9 '+
  ' where cod_conveniado = '+Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+
  ' and dtreferencia_cta = '+DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+
  ' and sequencia_cta = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+
  ' and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString);

  DB_ExecSQL('update tbl_itemconta set '+
  ' status_itc = 9, vlpagar_itc = '+DB_FormatDataSQL(FTlPagar, ftFloat)+' , '+
  ' pagtoincondicional_itc = '+intTostr(ord(chb_pagtoconta.checked))+ ' , '+
  ' reducacresc_itc = '+DB_FormatDataSQL(((FTlPagar / FTlInformado) * 100), ftFloat)+
  ' where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+
  ' and sequencia_cta = '+edt_sequencia_con.text+
  ' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
  ' and sequenciaitem_itc = '+Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString);

  fdt_principal5.spc_cons_adm_medicamentocontamedica.close;
  fdt_principal5.spc_cons_adm_materialcontamedica.close;
  with Fdt_principal do
  begin
    spc_cons_contamedica.close;
    spc_cons_itemconta.close;
    spc_cons_contamedica.open;
    spc_cons_itemconta.open;
    spc_cons_contamedica.Locate('sequenciaconta_ctm', cs, [loCaseInsensitive]);
  end;
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton5Click(Sender: TObject);
var
  dtrefe, conven : String;
begin
  inherited;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  // xxxxxxxxxxxxxxxx
 { if edt_cod_acomodacao.Text = '5' then
  begin
    if DB_OpenSQL('select * from tbl_autorizacaoMedica where cod_autorizacaoMedica = '+edt_cod_autorizacao.Text+
    ' and cod_beneficiario = '+Fdt_principal.spc_cons_contamedica.FieldByName('cod_beneficiario').AsString) < 1 then
    begin
      Dlg_Alerta('Codigo de Autorização Invalido!',self);
      Exit;
    end;
  end
  else
    if DB_OpenSQL('select * from tbl_autorizainternacao  where cod_autorizainternacao = '+edt_cod_autorizacao.Text+
    ' and cod_beneficiario = '+Fdt_principal.spc_cons_contamedica.FieldByName('cod_beneficiario').AsString) < 1 then
    begin
      Dlg_Alerta('Codigo de Autorização Invalido!',self);
      Exit;
    end;   }
  if DB_ExecSQL('update tbl_contamedica set cod_autorizacao = '+edt_cod_autorizacao.Text+
  ', cod_acomodacao = '+edt_cod_acomodacao.Text+
  ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+
  edt_sequencia_con.Text+ 'and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.FieldByName('sequenciaconta_ctm').AsString) then begin
      Dlg_Alerta('Codigo de Autorização Atualizado!',self);
      btn_voltarClick(self);
//      btn_atualizarClick(self);
  end    
  else
    Dlg_Alerta('Erro ao Atualizar o Codigo de Autorização!',self);
end;

procedure TFrm_Mov_ProcessarConta.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if DB_OpenSQL('select * from tbl_crm where cod_crm = '+edt_crm.Text) > 0 then
  begin
    if DB_ExecSQL('update tbl_contamedica set cod_crm = '+edt_crm.Text+
    ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+
    edt_sequencia_con.Text+ 'and sequenciaconta_ctm = '+Fdt_principal.spc_cons_contamedica.FieldByName('sequenciaconta_ctm').AsString) then
    begin
      Dlg_Alerta('CRM Atualizado!',self);
      btn_atualizarClick(self);
    end  
    else
      Dlg_Alerta('Erro ao Atualizar o CRM!',self);
  end
  else
    Dlg_Alerta('CRM Inválido!',self);
end;

procedure TFrm_Mov_ProcessarConta.PDJButton11Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal.spc_cons_itemglosa do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal.spc_cons_itemglosa;
  Frm_Bas_Impressao.FCampo1 := 'Conveniado: 1805      Dt. Referência: 10/01/2005       Seq: 1';
  Frm_Bas_Impressao.showReport(4143);
  fdt_principal.spc_cons_itemglosa.close;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton12Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_despconvplano001 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@status').AsString := '0';
    open;
  end;
  Frm_Imp_Med_DespConvPlano001 := TFrm_Imp_Med_DespConvPlano001.Create(Self);
  Frm_Imp_Med_DespConvPlano001.QuickRep1.Preview;
  Frm_Imp_Med_DespConvPlano001.Release;
  Fdt_principal.spc_cons_med_despconvplano001.close;
end;

procedure TFrm_Mov_ProcessarConta.ImprimirProcedi1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal6.spc_cons_med_itemContaBenef do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.Text;
    Open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_itemContaBenef;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_mes.Text+' de '+edt_ano.Text;
  Frm_Bas_Impressao.showReport(4153);
  fdt_principal6.spc_cons_med_itemContaBenef.close;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton13Click(Sender: TObject);
var
  nomearquivo : string ;
begin
  inherited;
  if not dlg_leitura.execute then
    exit ;
  nomearquivo := dlg_leitura.filename;
  Memo1.Lines.LoadFromFile(nomearquivo);
  Memo1.Lines.SaveToFile(copy(nomearquivo,1,Length(nomearquivo)-4)+'2.txt');
end;

procedure TFrm_Mov_ProcessarConta.PDJButton14Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
//  if conven <> '8958' then
  if conven <> '9750' then
  begin
    Dlg_Alerta('O Código do Acqua está incorreto!',self);
    Exit;
  end;
  DB_ExecSQL('exec spc_med_repasseCMI '+dtrefe);
end;

procedure TFrm_Mov_ProcessarConta.btn_imprimirmatClick(Sender: TObject);
begin
  inherited;
  if FMatMed = 0 then begin
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_materialcontamedica;
    Frm_Bas_Impressao.FCampo1 := 'Conveniado   '+STR_RemoveChar(edt_cod_conveniado.Text,'-')+' - '+edt_razao_con.Text;
    Frm_Bas_Impressao.FCampo2 := 'Mês / Ano de Referência   '+cbx_cod_mes.Text+' / '+edt_ano.Text+'                  Sequencia   '+edt_sequencia_con.Text;
    Frm_Bas_Impressao.FCampo3 := FormatarCarteirinha(Fdt_principal.spc_cons_contamedica.fieldByName('carteirainform_ctm').AsString)+
    '   '+Fdt_principal.spc_cons_contamedica.fieldByName('nomebenefi_ctm').AsString;
    Frm_Bas_Impressao.FCampo4 := edt_sequenciaconta_ctm.Text;
    Frm_Bas_Impressao.showReport(4177);
  end;
  if FMatMed = 1 then begin
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_medicamentocontamedica;
    Frm_Bas_Impressao.FCampo1 := 'Conveniado   '+STR_RemoveChar(edt_cod_conveniado.Text,'-')+' - '+edt_razao_con.Text;
    Frm_Bas_Impressao.FCampo2 := 'Mês / Ano de Referência   '+cbx_cod_mes.Text+' / '+edt_ano.Text+'                  Sequencia   '+edt_sequencia_con.Text;
    Frm_Bas_Impressao.FCampo3 := FormatarCarteirinha(Fdt_principal.spc_cons_contamedica.fieldByName('carteirainform_ctm').AsString)+
    '   '+Fdt_principal.spc_cons_contamedica.fieldByName('nomebenefi_ctm').AsString;
    Frm_Bas_Impressao.FCampo4 := edt_sequenciaconta_ctm.Text;
    Frm_Bas_Impressao.showReport(4178);
  end;
end;

procedure TFrm_Mov_ProcessarConta.Label16Click(Sender: TObject);
begin
  inherited;
  if edt_crm.Text <> '' then
  begin
   Hide;
   Frm_Cad_crm := TFrm_Cad_crm.Create(Self);
   Frm_Cad_crm.edt_cod_crm.Text := edt_crm.Text;
  // Frm_Cad_crm.edt_cod_crmButtonClick(self);
   Frm_Cad_crm.ShowModal;
   Frm_Cad_crm.Release;
   Show;
  end;
end;

procedure TFrm_Mov_ProcessarConta.Label17Click(Sender: TObject);
begin
  inherited;
  if edt_cid.Text <> '' then
  begin
    Hide;
    Frm_Cad_cid := TFrm_Cad_cid.Create(Self);
    Frm_Cad_cid.edt_cod_cid.Text := edt_cid.Text;
    //Frm_Cad_cid.edt_cod_cidButtonClick(self);
    Frm_Cad_cid.ShowModal;
    Frm_Cad_cid.Release;
    Show;
  end;
end;

procedure TFrm_Mov_ProcessarConta.Label15Click(Sender: TObject);
begin
  inherited;
  if (edt_cod_autorizacao.Text <> '') and (edt_cod_autorizacao.Text <> '0') then
  begin
    Hide;
    if edt_cod_acomodacao.Text = '5' then
    begin
      Frm_Cad_AutorizacaoMedica := TFrm_Cad_AutorizacaoMedica.Create(Self);
      Frm_Cad_AutorizacaoMedica.edt_cod_autorizacaoMedica.Text := edt_cod_autorizacao.Text;
      //Frm_Cad_AutorizacaoMedica.edt_cod_autorizacaoMedicaButtonClick(self);
      Frm_Cad_AutorizacaoMedica.ShowModal;
      Frm_Cad_AutorizacaoMedica.Release;
    end
    else
    begin
      Frm_Mov_2026 := TFrm_Mov_2026.Create(Self);
      Frm_Mov_2026.edt_cod_autorizainternacao.Text := edt_cod_autorizacao.Text;
     // Frm_Cad_Autorizainternacao.edt_cod_autorizainternacaoButtonClick(self);
      Frm_Mov_2026.ShowModal;
      Frm_Mov_2026.Release;
    end;
    Show;
  end;
end;

procedure TFrm_Mov_ProcessarConta.Label18Click(Sender: TObject);
begin
  inherited;
  if edt_cod_especialidade.Text <> '' then
  begin
    Hide;
    Frm_Cad_espmedamb := TFrm_Cad_espmedamb.Create(Self);
    Frm_Cad_espmedamb.edt_cod_espmedamb.Text := edt_cod_especialidade.Text;
    //Frm_Cad_cid.edt_cod_cidButtonClick(self);
    Frm_Cad_espmedamb.ShowModal;
    Frm_Cad_espmedamb.Release;
    Show;
  end;
end;

procedure TFrm_Mov_ProcessarConta.BotoesMedicamentosONOFF(b: boolean);
begin
  btn_adicionarMed.Enabled := b ;
  btn_alterarMed.Enabled := b ;
  btn_salvarMed.Enabled := not b ;
  btn_cancelarMed.Enabled := not b;
  btn_removerMed.Enabled := b ;
  dbg_medicamento.visible := b ;
end;

procedure TFrm_Mov_ProcessarConta.BotoesMateriaisONOFF(b: boolean);
begin
  btn_adicionarmat.Enabled := b ;
  btn_alterarmat.Enabled := b ;
  btn_salvarmat.Enabled := not b ;
  btn_cancelarmat.Enabled := not b;
  btn_removermat.Enabled := b ;
  dbg_material.visible := b ;
end;

procedure TFrm_Mov_ProcessarConta.btn_adicionarmatClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  DB_OpenSQL('select max(sequenciaitem_mtc) as sequenciaitem_mtc from tbl_materialcontamedica'+
  ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text);
  FsequenciaitemMat := Tab.fieldbyName('sequenciaitem_mtc').AsInteger + 1;
  edt_cod_padraomat.Enabled := true;
  edt_descricao_mtc.Enabled := true;
  edt_qtde_mtc.Enabled := true;
  edt_vlinformado_mtc.Enabled  := true;
  edt_cod_padraomat.SetFocus;
  BotoesMateriaisONOFF(false);
  Obj_EmptyEditTag(self,3);
  EscreveLog(btn_adicionarmat.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_alterarmatClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  edt_cod_padraomat.Enabled := false;
  edt_descricao_mtc.Enabled := false;
//  edt_qtde_mtc.Enabled := false;
  edt_vlinformado_mtc.Enabled  := false;
  edt_qtdepagar_mtc.SetFocus;
  with fdt_principal5.spc_cons_adm_materialcontamedica do begin
    BotoesMateriaisONOFF(false);
    chb_pagtomaterial.Checked := FieldByName('pagtoincondicional_itc').AsBoolean ;
    edt_status_mtc.Text:= FieldByName('status_mtc').AsString ;
    edt_cod_padraomat.text := FieldByName('cod_padraomat').AsString ;
    WMatMed_Ant:= FieldByName('cod_padraomat').Value;
    edt_descricao_mtc.text := FieldByName('descricao_mtc').AsString ;
    edt_descricao.text := FieldByName('descricao_mtc').AsString ;
    edt_qtde_mtc.text := FormatFloat('###,###,##0.00', FieldByName('qtde_mtc').Value);
    edt_vlinformado_mtc.text := FormatFloat('###,###,##0.00', FieldByName('vlinformado_mtc').Value);
    edt_qtdepagar_mtc.text := FormatFloat('###,###,##0.00', FieldByName('qtdepagar_mtc').Value);
    edt_vlpagar_mtc.Text := FormatFloat('###,###,##0.00', FieldByName('vlpagar_mtc').Value);
  end;

  dbg_gimtcm.Visible:= False;
  with fdt_principal2.spc_exibir_critica_materialcontamedica_codsimpro do
    begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := fdt_principal5.spc_cons_adm_materialcontamedica.fieldbyname('sequenciaitem_mtc').AsString;
    open;
    lbl_totalmaterial.Caption := 'Total de Glosas no Materiail => ' + IntToStr(fdt_principal2.spc_exibir_critica_materialcontamedica_codsimpro.RecordCount);
    if fdt_principal2.spc_exibir_critica_materialcontamedica_codsimpro.RecordCount > 0 then
       dbg_gimtcm.Visible:= True;
    end;
  EscreveLog(btn_alterarmat.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_cancelarmatClick(Sender: TObject);
begin
  inherited;
  BotoesMateriaisONOFF(true);
  EscreveLog(btn_cancelarmat.name);
  lbl_totalmaterial.Caption := 'Total de Materiais => ' + IntToStr(dbg_material.DataSource.DataSet.RecordCount);
end;

procedure TFrm_Mov_ProcessarConta.btn_salvarmatClick(Sender: TObject);
begin
  inherited;
 // if not Dlg_YesNo('Tem Certeza que Deseja Salvar a Concessão ?', Self) then Exit;
  if FStatus2 = FST_Novo then
  begin
    if not BAS_ValidarCampo(edt_cod_padraomat.name, 'O Código Padrão deve ser Preenchido!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_descricao_mtc.name, 'A Descrição deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_qtde_mtc.name, 'A Qtde. Informada deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_vlinformado_mtc.name, 'O Valor Informado deve ser Preenchido!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_qtdepagar_mtc.name, 'A Qtde. a Pagar deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_vlpagar_mtc.name, 'O Valor a Pagar deve ser Preenchido!', VLD_Preenchido) then
      exit ;
    DB_ExecSQL('insert into tbl_materialcontamedica '+
    '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm,'+
    ' sequenciaitem_mtc, cod_itemmaterial, cod_padraomat, descricao_mtc, dtrealizacao_mtc, '+
    ' qtde3_mtc, vlinformado_mtc, vlpagar_mtc, reducacresc_mtc, status_mtc, qtdepagar_mtc, qtde_mtc, pagtoincondicional_itc) values ( '+
    conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+edt_sequenciaconta_ctm.Text+
    ', '+IntToStr(FsequenciaitemMat)+', Null, '''+edt_cod_padraomat.text+''','''+edt_descricao_mtc.text+''','+dtrealizacao+
    ', Null, '+ DB_FormatDataSQL(edt_vlinformado_mtc.text, ftFloat)+','+DB_FormatDataSQL(edt_vlpagar_mtc.Text, ftFloat)+
    ', 100, 9, ' +DB_FormatDataSQL(edt_qtdepagar_mtc.Text, ftFloat)+', '+DB_FormatDataSQL(edt_qtde_mtc.Text, ftFloat) + ', 0)');
  end
  else
     begin
  WStrMatMed_Ant:= edt_cod_padraomat.Text;

// Somente se alterar o código do material que veio da conta médica pelo código semelhante da simpro, terá que refazer a crítica.
//  if WMatMed_Ant <> StrToInt(edt_cod_padraomat.Text)) then
     if IntToStr(WMatMed_Ant) = edt_cod_padraomat.Text then
        DB_ExecSQL('update tbl_materialcontamedica set '+
        ' qtdepagar_mtc = Null, '+
        ' vlpagar_mtc = Null, '+
        ' pagtoincondicional_itc = ' + intTostr(ord(chb_pagtomaterial.checked))+', '+
        ' status_mtc = 9 '+
        ' where cod_conveniado = '+conven+
        ' and dtreferencia_cta = '+dtrefe+
        ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
        ' and sequenciaitem_mtc = '+fdt_principal5.spc_cons_adm_materialcontamedica.fieldByName('sequenciaitem_mtc').AsString)
    else
        DB_ExecSQL('update tbl_materialcontamedica set '+
        ' cod_padraomat = ' + edt_cod_padraomat.Text + ', ' +
        ' descricao_mtc = ''' + edt_descricao_mtc.Text + ''', ' +
        ' qtdepagar_mtc = ''' + STR_SubstChar(edt_qtdepagar_mtc.Text,',','.') + ''', ' +
        ' vlpagar_mtc = ''' + STR_SubstChar(edt_vlpagar_mtc.Text,',','.') + ''', ' +
        ' pagtoincondicional_itc = ' + intTostr(ord(chb_pagtomaterial.checked))+', '+
        ' status_mtc = 9 '+
        ' where cod_conveniado = '+conven+
        ' and dtreferencia_cta = '+dtrefe+
        ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
        ' and sequenciaitem_mtc = '+fdt_principal5.spc_cons_adm_materialcontamedica.fieldByName('sequenciaitem_mtc').AsString);
    end;

  DB_ExecSQL('delete from tbl_glosamat '+
  'where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+
  ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
  ' and sequenciaitem_itc = ' + fdt_principal5.spc_cons_adm_materialcontamedica.fieldbyName('sequenciaitem_mtc').AsString);

//  if WMatMed_Ant <> StrToInt(edt_cod_padraomat.Text) then
//     btn_gravaralteracaocontaClick(Self);
  AtualizaMateriais;
  btn_voltarmat.Enabled:= False;  
  BotoesMateriaisONOFF(true);
  EscreveLog(btn_salvarmat.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_removermatClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Material ?', Self) then begin
    DB_ExecSQL('delete from tbl_materialcontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
    ' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
    ' and sequenciaitem_mtc = '+fdt_principal5.spc_cons_adm_materialcontamedica.fieldByName('sequenciaitem_mtc').AsString);
  end;
  AtualizaMateriais;
  EscreveLog(btn_removermat.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_adicionarMedClick(Sender: TObject);
begin
  inherited;
  FStatus3 := FST_Novo;
  DB_OpenSQL('select max(sequenciaitem_mtc) as sequenciaitem_mtc from tbl_medicamentocontamedica'+
  ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text);
  FsequenciaitemMed := Tab.fieldbyName('sequenciaitem_mdc').AsInteger + 1;
  edt_cod_padraoMed.Enabled := true;
  edt_descricao_mdc.Enabled := true;
  edt_qtde_mdc.Enabled := true;
  edt_vlinformado_mdc.Enabled  := true;
  edt_cod_padraomat.SetFocus;
  BotoesMedicamentosONOFF(false);
  Obj_EmptyEditTag(self,4);
  EscreveLog(btn_adicionarMed.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_alterarMedClick(Sender: TObject);
begin
  inherited;
  FStatus3 := FST_Alteracao;
  edt_cod_padraomed.Enabled := false;
  edt_descricao_mdc.Enabled := false;
  edt_vlinformado_mdc.Enabled := false;
  edt_qtdepagar_mdc.SetFocus;
  with fdt_principal5.spc_cons_adm_medicamentocontamedica do begin
    BotoesMedicamentosONOFF(false);
    chb_pagtomedicamento.Checked := FieldByName('pagtoincondicional_itc').AsBoolean ;
    edt_status_mtc.Text:= FieldByName('status_mdc').AsString ;
    edt_cod_padraomed.text := FieldByName('cod_padraomed').AsString ;
    WMatMed_Ant:= FieldByName('cod_padraomed').Value ;
    edt_descricao_mdc.text := FieldByName('descricao_mdc').AsString ;
    edt_descricao_med.text := FieldByName('descricao_mdc').AsString ;
    edt_qtde_mdc.text := FormatFloat('###,###,##0.00', FieldByName('qtde_mdc').Value);
    edt_vlinformado_mdc.text := FormatFloat('###,###,##0.00', FieldByName('vlinformado_mdc').Value);
    edt_qtdepagar_mdc.text := FormatFloat('###,###,##0.00', FieldByName('qtdepagar_mdc').Value);
    edt_vlpagar_mdc.Text := FormatFloat('###,###,##0.00', FieldByName('vlpagar_mdc').Value);
  end;

  dbg_gimdcm.Visible:= False;
  with fdt_principal5.spc_exibir_critica_medicamentocontamedica_codbrasindice do
    begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := fdt_principal5.spc_cons_adm_medicamentocontamedica.fieldbyname('sequenciaitem_mdc').AsString;
    open;
    lbl_totalmedicamento.Caption := 'Total de Glosa(s) do Medicamento => ' + IntToStr(fdt_principal5.spc_exibir_critica_medicamentocontamedica_codbrasindice.RecordCount);
    if fdt_principal5.spc_exibir_critica_medicamentocontamedica_codbrasindice.RecordCount > 0 then
       dbg_gimdcm.Visible:= True;
    end;
  EscreveLog(btn_alterarMed.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_salvarMedClick(Sender: TObject);
begin
  inherited;
  if FStatus3 = FST_Novo then
  begin
    if not BAS_ValidarCampo(edt_cod_padraomed.name, 'O Código Padrão deve ser Preenchido!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_descricao_mdc.name, 'A Descrição deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_qtde_mdc.name, 'A Qtde. Informada deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_vlinformado_mdc.name, 'O Valor Informado deve ser Preenchido!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_qtdepagar_mdc.name, 'A Qtde. a Pagar deve ser Preenchida!', VLD_Preenchido) or
    not BAS_ValidarCampo(edt_vlpagar_mdc.name, 'O Valor a Pagar deve ser Preenchido!', VLD_Preenchido) then
      exit ;
    DB_ExecSQL('insert into tbl_medicamentocontamedica '+
    '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm,'+
    ' sequenciaitem_mdc, cod_padraomed, descricao_mdc, dtrealizacao_mdc, '+
    ' qtde3_mdc, qtdepagar_mdc,'+
    ' vlinformado_mdc, vlpagar_mdc,'+
    ' status_mdc, reducacresc_mdc, qtde_mdc, pagtoincondicional_itc) values ( '+
    conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+edt_sequenciaconta_ctm.Text+
    ', '+IntToStr(FsequenciaitemMed)+', '''+edt_cod_padraomed.text+''','''+edt_descricao_mdc.text+''','+dtrealizacao+
    ', '+edt_qtde_mdc.Text+', '+edt_qtdepagar_mdc.Text+', '+
    DB_FormatDataSQL(edt_vlinformado_mdc.text, ftFloat)+','+DB_FormatDataSQL(edt_vlpagar_mdc.Text, ftFloat)+
    ', 9, 100, ' + edt_qtde_mdc.Text + ', 0)');
  end
  else
    begin
    if WMatMed_Ant = StrToInt(edt_cod_padraomed.Text) then
       DB_ExecSQL('update tbl_medicamentocontamedica set '+
       ' qtdepagar_mdc = Null, '+
       ' vlpagar_mdc = Null, '+
       ' pagtoincondicional_itc = ' + intTostr(ord(chb_pagtomedicamento.checked))+', '+
       ' status_mdc = 9 '+
       ' where cod_conveniado = '+conven+
       ' and dtreferencia_cta = '+dtrefe+
       ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
       ' and sequenciaitem_mdc = '+fdt_principal5.spc_cons_adm_medicamentocontamedica.fieldByName('sequenciaitem_mdc').AsString)
    else
       DB_ExecSQL('update tbl_medicamentocontamedica set '+
       ' cod_padraomed = ' + edt_cod_padraomed.Text + ', ' +
       ' descricao_mdc = ''' + edt_descricao_mdc.Text + ''', ' +
       ' qtdepagar_mdc = ''' + STR_SubstChar(edt_qtdepagar_mdc.Text,',','.') + ''', ' +
       ' vlpagar_mdc = ''' + STR_SubstChar(edt_vlpagar_mdc.Text,',','.') + ''', ' +
       ' pagtoincondicional_itc = ' + intTostr(ord(chb_pagtomedicamento.checked))+', '+
       ' status_mdc = 9 '+
       ' where cod_conveniado = '+conven+
       ' and dtreferencia_cta = '+dtrefe+
       ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
       ' and sequenciaitem_mdc = '+fdt_principal5.spc_cons_adm_medicamentocontamedica.fieldByName('sequenciaitem_mdc').AsString)
    end;

  DB_ExecSQL('delete from tbl_glosamed '+
  'where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+
  ' and sequencia_cta = '+edt_sequencia_con.text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
  ' and sequenciaitem_itc = ' + fdt_principal5.spc_cons_adm_medicamentocontamedica.fieldbyName('sequenciaitem_mdc').AsString);
  btn_voltarmed.Enabled:= False;

  AtualizaMedicamentos;
  BotoesMedicamentosONOFF(true);
  EscreveLog(btn_salvarmed.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_cancelarMedClick(Sender: TObject);
begin
  inherited;
  BotoesMedicamentosONOFF(true);
  EscreveLog(btn_cancelarmed.name);
  lbl_totalmedicamento.Caption := 'Total de Medicamentos => ' + IntToStr(dbg_medicamento.DataSource.DataSet.RecordCount);
end;

procedure TFrm_Mov_ProcessarConta.btn_removerMedClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Medicamento ?', Self) then begin
    DB_ExecSQL('delete from tbl_medicamentocontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
    ' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
    ' and sequenciaitem_mdc = '+fdt_principal5.spc_cons_adm_medicamentocontamedica.fieldByName('sequenciaitem_mdc').AsString);
  end;
  AtualizaMedicamentos;
  EscreveLog(btn_removermed.name);
end;

procedure TFrm_Mov_ProcessarConta.dbg_medicamentoDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarMedClick(self);
end;

procedure TFrm_Mov_ProcessarConta.dbg_materialDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarmatClick(self);
end;

procedure TFrm_Mov_ProcessarConta.btn_voltarmatClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0 ;
end;

procedure TFrm_Mov_ProcessarConta.btn_voltarmedClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0 ;
end;

procedure TFrm_Mov_ProcessarConta.btn_carregarArqMagneticoUNIMEDClick(Sender: TObject);
var
  Wmaterial_tmp: String;
  algo: integer;
begin
  lbl_tlcontaslidas.Visible:= False;
  lbl_tlitenslidos.Visible:= False;
  lbl_linha.Visible:= False;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
                ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then
     begin
     Dlg_Alerta('A Conta Não foi Registrada !', self);
     DB_ClearSQL;
     Exit;
     end
  else
     begin
     if Tab.FieldByName('dtrepasse_cta').AsString <> '' then
        begin
        Dlg_Alerta('A Conta ja foi Repassada !', self);
        DB_ClearSQL;
        Exit;
        end;
     end;

  InscAnter:= 0;
  Sequencia:= 0;
  dtrealizacao:= '0';
  TlLinha:= 0;
  Seq:= 0;
  guiaant:= '';
  dtrefe:= ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  dtRealMatMed:= ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if not dlg_leitura.execute then
     exit;
  nomearquivo := dlg_leitura.filename;
  conven:= (STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-')));
  AssignFile(Arq, nomearquivo);
  try
    Reset (Arq);
  except;
    exit;
  end;
  //Verifica o Tamanho do Arquivo se é Válido
  if FileSize(Arq) < 1 then
    begin
    Dlg_Erro('Não foi possível Carregar a Conta ! O arquivo está vazio.' +  #13 +  'Se foi enviado pelo conveniado, solicitar um disquete correto.'
    +  #13 +  'Se foi gerado a partir de planilhas,' +  #13 +  '   tentar re-gravar as informações digitadas.'
    +  #13 +  'Caso não seja possível efetuar nova gravação,' +  #13 +  'será necessária a re-digitação das planilhas envolvidas.',self);
    closefile (Arq);
    Exit;
    end;

 if DB_OpenSQL('select * from tbl_itemconta where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe +
               ' and sequencia_cta = ' + edt_sequencia_con.Text) > 0 then
    begin
    Dlg_Alerta('O arquivo para este mês de referência da UNIMED já foi carregado!',self);
    Exit;
    end;

//  Read (Arq, registro);
  Qtcarac:= 360;//Length(registro);

  DB_BeginTrans;
  ProgressBar1.Visible := true ;
  TamArq:= tbFileSize(nomearquivo) / Qtcarac;
  TamArquivo:= FloatToStr(Arredondar(TamArq,0));
  ProgressBar1.max:= StrToInt(TamArquivo);
  Label26.Caption:= 'Aguarde, classificando arquivo Unimed';
  Label26.Refresh;

// Criando Tab.Temporária
  DB_ExecADOSQL('create table #tbl_tempunimed (sequencia_tmp INT IDENTITY(1,1) PRIMARY KEY, '+
                                           'inscricao_tmp INT, '+
                                           'titularidade_tmp INT, '+
                                           'digito_tmp INT, '+
                                           'nome_tmp nvarchar(60), '+
                                           'guia_tmp nvarchar(10), '+
                                           'local_tmp nvarchar(8), '+
                                           'data_tmp nvarchar(10), '+
                                           'tipo_tmp nvarchar(20), '+
                                           'material_tmp nvarchar(8), '+
                                           'nomeproc_tmp nvarchar(60), '+
                                           'qtde_tmp varchar(4), '+
                                           'vlref_tmp nvarchar(13), '+
                                           'vlcobrado_tmp nvarchar(13))');

// Ler Arquivo TXT Unimed gravando Tab.Temporária
  while not EOF(Arq) do
      begin
      readln(Arq, registro);
      if registro <> '' then
         begin
         if Copy(registro,19,7) <> '0110083' then
            begin
            DB_ExecADOSQL('drop table #tbl_tempunimed');
            Dlg_Alerta('O arquivo está fora do padrão UNIMED!',self);
            Exit;
            end;
         with ProgressBar1 do
              position := position + 1;

//Subtitui apóstrofe por espaço e algumas letras com acento ou cedilha por letras básicas
         w60:= Str_AnsiToAscii(copy(registro,149,60));
         Wmaterial_tmp:= copy(registro,209,4);
         try
           StrToInt(Wmaterial_tmp);
         except;
           Wmaterial_tmp := '0000';
         end;

// Se Qtde = 0, assume 1
         Wqtde:= trim(copy(registro,228,2));
         if StrToInt(Wqtde) < 1 then
            Wqtde:= '1';

         if copy(registro,27,5) <> '' then
            DB_ExecADOSQL('insert into #tbl_tempunimed ' +
                          '(inscricao_tmp, titularidade_tmp, digito_tmp, nome_tmp, guia_tmp, local_tmp, '+
                          'data_tmp, tipo_tmp, material_tmp, nomeproc_tmp, qtde_tmp, vlref_tmp, vlcobrado_tmp) values ('+
                          trim(copy(registro,27,5)) + ','+ copy(registro,32,2) + ','+ copy(registro,34,1) + ','''+
                          trim(copy(registro,35,60)) + ''', ''' + copy(registro,95,10) + ''','+ copy(registro,105,8) + ','+
                          ''''+copy(registro,117,2)+ '/' + copy(registro,119,2)+ '/' + copy(registro,113,4)+ ''', '''+
                          copy(registro,121,20) + ''','+ copy(registro,141,8) + ','''+ w60 + ''','+
                          Wmaterial_tmp + ','+ trim(copy(registro,218,10)) + '.' + Wqtde + ', ' +
                          trim(copy(registro,231,10)) + '.' + trim(copy(registro,241,2)) +')');
         end;
      end;
  seq:= 0;

// Ordenando por Inscrição/Nome e Guia (pois o arquivo não está em ordem)
  DB_OpenADOSQL('select * from #tbl_tempunimed order by inscricao_tmp, titularidade_tmp, nome_tmp, guia_tmp, sequencia_tmp');
  Label26.Caption:= 'Aguarde, lendo arquivo classificado Unimed';
  Label26.Refresh;
  lbl_linha.Visible:= True;
  ProgressBar1.Position:= 0;
  algo:= 0;
  while not TabADO.Eof do
    begin
    with ProgressBar1 do
      position := position + 1;
      inc(algo);
      Application.ProcessMessages;
      Inc(TlLinha);
      // Monto carteira com qualquer valor, pois se não achar a inscrição, ele joga os valores lidos do arquivo Unimed
      carteira:= '83' + FormatFloat('00000', TabADO.FieldByName('inscricao_tmp').Value)+
                        FormatFloat('00', TabADO.FieldByName('titularidade_tmp').Value) +
                        FormatFloat('0', TabADO.FieldByName('digito_tmp').Value);
      lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(TlLinha);

      //Se a inscrição for diferente da linha anterior, ele cria um registro de conta médica
      //fazendo a pesquisa pelo No.da inscrição e 10 caracteres do nome
      if InscAnter <> TabADO.FieldByName('inscricao_tmp').AsInteger + StrToInt(Copy(TabADO.FieldByName('guia_tmp').AsString,3,8)) then
         begin
         InscAnter:= TabADO.FieldByName('inscricao_tmp').AsInteger + StrToInt(Copy(TabADO.FieldByName('guia_tmp').AsString,3,8));
         wnome:= (copy(TabADO.FieldByName('nome_tmp').AsString,1,10));
         if DB_OpenSQL('select * from tbl_beneficiario where inscricao_ben = ' + TabADO.FieldByName('inscricao_tmp').AsString +
                       ' and substring(nome_ben,1,10) = ''' + wnome + '''') = 0 then
            begin
// Quando o Nome não coincide com o campo do cad.beneficiário, incluimos como Titular para acerto da matrícula
            if DB_OpenSQL('select * from tbl_beneficiario where inscricao_ben = ' + TabADO.FieldByName('inscricao_tmp').AsString +
                          ' and titulacartei_ben = 00') = 1 then
               begin
               carteira:= Copy(Tab.FieldByName('cod_empresa').Value,1,1) +
                          FormatFloat('0', Tab.FieldByName('cod_plano').Value) +
                          FormatFloat('00000', Tab.FieldByName('inscricao_ben').Value) +
                          FormatFloat('00', Tab.FieldByName('titulacartei_ben').Value) +
                          FormatFloat('0', Tab.FieldByName('digito_ben').Value);
               Cod_Benef:= Tab.FieldByName('cod_beneficiario').AsString;
               Idade:= Tab.FieldByName('idade_ben').AsString;
               end;
            end
         else
            if DB_OpenSQL('select * from tbl_beneficiario where inscricao_ben = ' + TabADO.FieldByName('inscricao_tmp').AsString +
                          ' and substring(nome_ben,1,10) = ''' + wnome + '''') = 1 then
// Quando somente 1 registro, não importa se está ou não cancelada
//               if Tab.RecordCount = 1 then
                  begin
                  carteira:= Copy(Tab.FieldByName('cod_empresa').Value,1,1) +
                             FormatFloat('0', Tab.FieldByName('cod_plano').Value) +
                             FormatFloat('00000', Tab.FieldByName('inscricao_ben').Value) +
                             FormatFloat('00', Tab.FieldByName('titulacartei_ben').Value) +
                             FormatFloat('0', Tab.FieldByName('digito_ben').Value);
                  Cod_Benef:= Tab.FieldByName('cod_beneficiario').AsString;
                  Idade:= Tab.FieldByName('idade_ben').AsString;
                  end
            else
               if DB_OpenSQL('select * from tbl_beneficiario where inscricao_ben = ' + TabADO.FieldByName('inscricao_tmp').AsString +
                             ' and substring(nome_ben,1,10) = ''' + wnome + ''' and cod_sitbeneficiario = 1 order by cod_beneficiario') > 0 then
                  begin
// Quando + de 1 registro, pegar dados da não cancelada
                  carteira:= Copy(Tab.FieldByName('cod_empresa').Value,1,1) +
                             FormatFloat('0', Tab.FieldByName('cod_plano').Value) +
                             FormatFloat('00000', Tab.FieldByName('inscricao_ben').Value) +
                             FormatFloat('00', Tab.FieldByName('titulacartei_ben').Value) +
                             FormatFloat('0', Tab.FieldByName('digito_ben').Value);
                  Cod_Benef:= Tab.FieldByName('cod_beneficiario').AsString;
                  Idade:= Tab.FieldByName('idade_ben').AsString;
                  end;
         end;
      autoriz:= '0';
      acomodacao:= '5';
      autoriz:= TabADO.FieldByName('guia_tmp').AsString;
      dtRealMatMed:= TabADO.FieldByName('data_tmp').asString;

      if guiaant = '' then
         CriaContaMedica(Sender);
      if guiaant <> TabADO.FieldByName('guia_tmp').value then
         begin
         DB_OpenSQL('select isnull(sum(vlinformado_mdc),0) as vlinformado_mdc from tbl_medicamentocontamedica '+
         'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
         ' and sequenciaconta_ctm = '+IntToStr(sequencia));
         vlinformadomed := Tab.FieldByName('vlinformado_mdc').AsFloat;
         if vlinformadomed > 0 then
            begin
            sequenciamed:= SeqItm + 1;
            DB_ExecSQL('insert into tbl_itemconta '+
                      '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
                      'cod_padrao, descricao_itc, emergencia_itc, dhe_itc, dtrealizacao_itc, '+
                      'cod_posicao, qtde_itc, vlinformado_itc, retorno_itc, status_itc, reducacresc_itc, pagtoincondicional_itc ) values ( '+
                      conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(sequencia)+', '+IntToStr(sequenciamed)+
                      ', 80070019, ''MEDICAMENTOS'', ''N'', ''N'', '''+ dtrealizacao +''', 0, 1, '''+
                      STR_SubstChar(FloatToStr(vlinformadomed),',','.')+''', ''N'', 9, 100, 1)');
            end;
         CriaContaMedica(Sender);
         end;
   inc(SeqItm);
   if DB_OpenSQL('select * from tbl_itemservico where cod_padrao = ' + TabADO.FieldByName('material_tmp').AsString) = 1 then
      begin
      DB_ExecSQL('insert into tbl_itemconta ' +
                 '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
                 ' cod_itemservico, cod_padrao, descricao_itc, emergencia_itc, dhe_itc, '+
                 'dtrealizacao_itc, cod_posicao, qtde_itc, '+
                 'vlinformado_itc, vlpagar_itc, reducacresc_itc, retorno_itc, '+
                 ' status_itc, pagtoincondicional_itc, obs_itc, qtdeinformada_itc) values ('+
                 conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(Sequencia)+', '+IntToStr(seqitm)+
                 ', 0, ' + Trim(TabADO.FieldByName('material_tmp').AsString) + ', ' + ''''+ Trim(TabADO.FieldByName('nomeproc_tmp').AsString)+''', ''N'', ''N'', '''+
                 TabADO.FieldByName('data_tmp').asString + ''', 0, ' + TabADO.FieldByName('qtde_tmp').AsString + ', ' +
                 TabADO.FieldByName('vlcobrado_tmp').AsString + ', 0.00, 100,''N'', 9, 1, '''+ autoriz + ''', ' +
                 TabADO.FieldByName('qtde_tmp').AsString +')');
      end
   else
      DB_ExecSQL('insert into tbl_medicamentocontamedica ' +
                '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_mdc, ' +
                'cod_padraomed, descricao_mdc, dtrealizacao_mdc, qtde3_mdc, vlinformado_mdc, vlpagar_mdc, ' +
                'reducacresc_mdc, status_mdc, qtdepagar3_mdc, qtde_mdc, pagtoincondicional_itc, qtdepagar_mdc) values ( '+
                conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(Sequencia)+', '+IntToStr(seqitm)+', '+
                TabADO.FieldByName('material_tmp').AsString + ', ' + ''''+TabADO.FieldByName('nomeproc_tmp').AsString+''', '''+
                TabADO.FieldByName('data_tmp').asString+ ''', '+ TabADO.FieldByName('qtde_tmp').AsString + ', ' +
                TabADO.FieldByName('vlcobrado_tmp').AsString + ', 0, 0, 9, 0,' + TabADO.FieldByName('qtde_tmp').AsString + ', 0, 0)');
    TabADO.Next;
    end;

    DB_OpenSQL('select isnull(sum(vlinformado_mdc),0) as vlinformado_mdc from tbl_medicamentocontamedica '+
               'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
               ' and sequenciaconta_ctm = '+IntToStr(sequencia));
    vlinformadomed := Tab.FieldByName('vlinformado_mdc').AsFloat;
    if vlinformadomed > 0 then
       begin
       sequenciamed:= SeqItm + 1;
       DB_ExecSQL('insert into tbl_itemconta '+
                  '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
                  'cod_padrao, descricao_itc, emergencia_itc, dhe_itc, dtrealizacao_itc, '+
                  'cod_posicao, qtde_itc, vlinformado_itc, retorno_itc, status_itc, reducacresc_itc, pagtoincondicional_itc ) values ( '+
                  conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+IntToStr(sequencia)+', '+IntToStr(sequenciamed)+
                  ', 80070019, ''MEDICAMENTOS'', ''N'', ''N'', '''+ dtrealizacao +''', 0, 1, '''+
                  STR_SubstChar(FloatToStr(vlinformadomed),',','.')+''', ''N'', 9, 100, 1)');
       end;
  DB_ExecSQL('update tbl_lotecontamedica set vlapresentado_cta = (select isnull(sum(vlinformado_itc), 0) '+
  ' from tbl_itemconta where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
  ' and sequencia_cta = '+edt_sequencia_con.Text+'), dtleitura_cta = getdate() where cod_conveniado = '+
  conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text);

// Zerando cod_autorizacao
  DB_ExecSQL('update tbl_contamedica set cod_autorizacao = 0 ' +
             'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
             ' and sequencia_cta = '+edt_sequencia_con.Text);

// Zerando pagto incondicional para quem está cancelado tipo_sit = 2
  DB_ExecSQL('update tbl_contamedica set pagtoincondicional_ctm = 0 from tbl_contamedica '+
             'inner join tbl_beneficiario b on b.cod_beneficiario = tbl_contamedica.cod_beneficiario '+
             'inner join tbl_sitbeneficiario sb on b.cod_sitbeneficiario = sb.cod_sitbeneficiario '+
             'where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
             ' and sequencia_cta = '+edt_sequencia_con.Text +' and tipo_sit = 2 and dtentrada_ctm > dtsituacao_ben');
  DB_Commit;

  with ProgressBar1 do
    position := max ;
  Label26.Caption:= '';
  Label26.Refresh;
  Dlg_Ok('Arquivo "'+nomearquivo+'" Carregado Com Sucesso !',self);
  DB_ExecADOSQL('drop table #tbl_tempunimed');
  ProgressBar1.visible := false ;
  lbl_tlcontaslidas.visible := false ;
  lbl_tlitenslidos.visible := false ;
  lbl_linha.visible := false ;
end;

procedure TFrm_Mov_ProcessarConta.btn_carregarArqMagneticoTISSClick(
  Sender: TObject);
Var
  WCodConv: String;
begin
  inherited;
//Comentado crítica, pois no programa que será aberto, já pede-se esses campos
{  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;}
  WCodConv:= edt_cod_conveniado.Text;
//  WinExec(PChar('C:\SISTEMAS\TISS\XML_TISS.EXE '+ WCodConv), Sw_ShowNormal);
  WinExec('C:\SISTEMAS\XML_TISS.EXE', SW_SHOWNORMAL);
end;

procedure TFrm_Mov_ProcessarConta.btn_repbenanalClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     Exit;
  with Fdt_principal.spc_cons_med_resumocontaanalitica do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@indice').AsString := '0' ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 5 ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 6 ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 0 ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_resumocontaanalitica;
  Frm_Bas_Impressao.FCampo1 := edt_razao_con.Text;
  Frm_Bas_Impressao.showReport(4236);
  Fdt_principal.spc_cons_med_resumocontaanalitica.close;
end;

procedure TFrm_Mov_ProcessarConta.dbg_medicamentoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  dbg_medicamento.Canvas.Font.Color:= clRed;
  dbg_medicamento.Canvas.Font.Style:= [fsbold];
  if (fdt_principal5.spc_cons_adm_medicamentocontamedica.FieldByName('status_mdc').Value <> 9) then
     dbg_medicamento.Canvas.Font.Color:= clBlack;
  if (fdt_principal5.spc_cons_adm_medicamentocontamedica.FieldByName('diferenca').Value <> 0) and
     (fdt_principal5.spc_cons_adm_medicamentocontamedica.FieldByName('diferenca').Value <> Null) then
      dbg_medicamento.Canvas.Font.Color:= clRed;
  if (fdt_principal5.spc_cons_adm_medicamentocontamedica.FieldByName('pagtoincondicional_itc').Value = 0) then
      dbg_medicamento.Canvas.Font.Style:= [];
  dbg_medicamento.DefaultDrawDataCell(Rect, dbg_medicamento.columns[datacol].field, State);
end;

procedure TFrm_Mov_ProcessarConta.dbg_materialDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  dbg_material.Canvas.Font.Color:= clRed;
  dbg_material.Canvas.Font.Style:= [fsbold];
  if (fdt_principal5.spc_cons_adm_materialcontamedica.FieldByName('status_mtc').Value <> 9) then
      dbg_material.Canvas.Font.Color:= clBlack;
  if (fdt_principal5.spc_cons_adm_materialcontamedica.FieldByName('diferenca').Value <> 0) and
     (fdt_principal5.spc_cons_adm_materialcontamedica.FieldByName('diferenca').Value <> Null) then
      dbg_material.Canvas.Font.Color:= clRed;
  if (fdt_principal5.spc_cons_adm_materialcontamedica.FieldByName('pagtoincondicional_itc').Value = 0) then
      dbg_material.Canvas.Font.Style:= [];
  dbg_material.DefaultDrawDataCell(Rect, dbg_material.columns[datacol].field, State);
end;

procedure TFrm_Mov_ProcessarConta.btn_cod_simproClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL:= 'select cod_simpro, descricao, (s.pc_em_fab * (1+(percentual_cco / 100))) as pc_em_fab, '+
                 '(s.pc_em_fab / s.qtde_embal * (1+(percentual_cco / 100))) as pc_fr_fab, tp_embal, qtde_embal, tp_fracao, cd_tuss ' +
                 'from tbl_simpro s ' +
                 'inner join tbl_conveniadoProcesso cp on cp.cod_conveniado = ' + conven +
                 'inner join tbl_condcomerc cc on cp.cod_conveniado = cc.cod_conveniado ' +
                 'and s.cod_tipocondcomerc = cc.cod_tipocondcomerc '+
                 'where descricao like ''%'+ edt_descricao.Text + '%'' ' +
                 'and dtvigenciainic = (select max(s1.dtvigenciainic) from tbl_simpro s1 where s1.cod_simpro = s.cod_simpro ' +
                 'and s1.dtvigenciainic <= ''' + dtRealMatMed + ''')';
  edt_cod_padraomat.Text:= Cons_ConsultaCadastro(self, 'tbl'+Copy('btn_cod_simpro',8,length('btn_cod_simpro')),
    'cod_simpro, descricao, pc_em_fab, pc_fr_fab, tp_embal, qtde_embal, tp_fracao, cd_tuss', 'Cod.Simpro, Descrição, Valor, Vlr.Frac., T.Emb., Qtd., Unidade, Cód.Tuss',
    'Localizar material p/descrição em cond.comerciais', FPesquisaSQL , True);
  if edt_cod_padraomat.Text = '' then
     edt_cod_padraomat.Text:= IntToStr(WMatMed_Ant);
  WStrMatMed_Ant:= edt_cod_padraomat.Text;

// Somente se alterar o código do material que veio da conta médica pelo código semelhante da simpro, terá que refazer a crítica.
//  if (WMatMed_Ant <> StrToInt(edt_cod_padraomat.Text)) or (edt_descricao_mtc.Text <> Tab.FieldByName('descricao').Text) then
  if IntToStr(WMatMed_Ant) <> WStrMatMed_Ant then
     begin
     if DB_OpenSQL('select cod_simpro, descricao, (s.pc_em_fab * (1+(percentual_cco / 100))) as pc_em_fab, '+
                  '(s.pc_em_fab / s.qtde_embal * (1+(percentual_cco / 100))) as pc_fr_fab, tp_embal, qtde_embal, tp_fracao ' +
                  'from tbl_simpro s ' +
                  'inner join tbl_conveniadoProcesso cp on cp.cod_conveniado = ' + conven +
                  'inner join tbl_condcomerc cc on cp.cod_conveniado = cc.cod_conveniado ' +
                  'and s.cod_tipocondcomerc = cc.cod_tipocondcomerc '+
                  'where cod_simpro = '+ edt_cod_padraomat.Text +
                  'and dtvigenciainic = (select max(s1.dtvigenciainic) from tbl_simpro s1 where s1.cod_simpro = s.cod_simpro ' +
                  'and s1.dtvigenciainic <= ''' + dtRealMatMed + ''')' ) > 0 then
        begin
        edt_descricao_mtc.Text:= Tab.FieldByName('descricao').Text;
        edt_qtdepagar_mtc.Text:= edt_qtde_mtc.Text;
        edt_vlpagar_mtc.Text:= FloatToStr(Tab.FieldByName('pc_fr_fab').Value * edt_qtdepagar_mtc.Text);
        if StrToFloat(edt_vlinformado_mtc.Text) < StrToFloat(edt_vlpagar_mtc.Text) then
           edt_vlpagar_mtc.Text:= edt_vlinformado_mtc.Text;
        edt_qtde_mtc.SetFocus;
        end;
     end;
end;

procedure TFrm_Mov_ProcessarConta.btn_cod_brasindiceClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL:= 'select b.cod_brasindice, b.nome_medicamento + '' '' + b.nome_apresentacao as nome_medicamento,' +
                 'case when b.cod_tipocondcomerc <> 2 then '+
                 '(b.preco_pmc_medicamento * (1+(percentual_cco / 100))) '+
                 'else '+
                 '(b.preco_pfb_medicamento * (1+(percentual_cco / 100))) '+
                 'end as preco_pmc_medicamento, '+
                 'case when b.cod_tipocondcomerc <> 2 then '+
                 '(b.preco_pmc_medicamento * (1+(percentual_cco / 100)) / qtde_fracionamento) '+
                 'else '+
                 '(b.preco_pfb_medicamento * (1+(percentual_cco / 100)) / qtde_fracionamento) '+
                 'end as preco_pmc_medicamentofrac, qtde_fracionamento, cod_tuss from tbl_brasindice b '+
                 'inner join tbl_conveniadoProcesso cp on cp.cod_conveniado = ' + conven +
                 'inner join tbl_condcomerc cc on cp.cod_conveniado = cc.cod_conveniado and b.cod_tipocondcomerc = cc.cod_tipocondcomerc ' +
                 'where nome_medicamento like ''%'+ edt_descricao_med.Text + '%'' ' +
                 'and dtvigencia_bic = (select max(b1.dtvigencia_bic) from tbl_brasindice b1 where b1.cod_brasindice = b.cod_brasindice ' +
                 'and b1.dtvigencia_bic <= ''' + dtRealMatMed + ''')';
  edt_cod_padraomed.Text:= Cons_ConsultaCadastro(self, 'tbl'+Copy('btn_cod_brasindice',8,length('btn_cod_brasindice')),
    'cod_brasindice, nome_medicamento, preco_pmc_medicamento, preco_pmc_medicamentofrac, qtde_fracionamento, cod_tuss', 'Cod.Brasindice, Descrição, Valor, Vlr.Frac., Qtd., Cód.Tuss',
    'Localizar medicamento p/descrição em cond.comerciais', FPesquisaSQL , True);
  if edt_cod_padraomed.Text = '' then
     edt_cod_padraomed.Text:= IntToStr(WMatMed_Ant);

// Somente se alterar o código do medicamento que veio da conta médica pelo código semelhante da brasindice, terá que refazer a crítica.
  if WMatMed_Ant <> StrToInt(edt_cod_padraomed.Text) then
     begin
     if DB_OpenSQL('select b.cod_brasindice, b.nome_medicamento + '' '' + b.nome_apresentacao as nome_medicamento,' +
                 'case when b.cod_tipocondcomerc <> 2 then '+
                 '(b.preco_pmc_medicamento * (1+(percentual_cco / 100))) '+
                 'else '+
                 '(b.preco_pfb_medicamento * (1+(percentual_cco / 100))) '+
                 'end as preco_pmc_medicamento, '+
                 'case when b.cod_tipocondcomerc <> 2 then '+
                 '(b.preco_pmc_medicamento * (1+(percentual_cco / 100)) / qtde_fracionamento) '+
                 'else '+
                 '(b.preco_pfb_medicamento * (1+(percentual_cco / 100)) / qtde_fracionamento) '+
                 'end as preco_pmc_medicamentofrac, qtde_fracionamento, cod_tuss from tbl_brasindice b '+
                 'inner join tbl_conveniadoProcesso cp on cp.cod_conveniado = ' + conven +
                 'inner join tbl_condcomerc cc on cp.cod_conveniado = cc.cod_conveniado and b.cod_tipocondcomerc = cc.cod_tipocondcomerc ' +
                 'where nome_medicamento like ''%'+ edt_descricao_med.Text + '%'' ' +
                 'and dtvigencia_bic = (select max(b1.dtvigencia_bic) from tbl_brasindice b1 where b1.cod_brasindice = b.cod_brasindice ' +
                 'and b1.dtvigencia_bic <= ''' + dtRealMatMed + ''')') > 0 then
        begin
        edt_descricao_mdc.Text:= Tab.FieldByName('nome_medicamento').Text;
        edt_qtdepagar_mdc.Text:= edt_qtde_mdc.Text;
        edt_vlpagar_mdc.Text:= FloatToStr(Tab.FieldByName('preco_pmc_medicamentofrac').Value * edt_qtdepagar_mdc.Text);
        if StrToFloat(edt_vlinformado_mdc.Text) < StrToFloat(edt_vlpagar_mdc.Text) then
           edt_vlpagar_mdc.Text:= edt_vlinformado_mdc.Text;
        edt_qtde_mdc.SetFocus;
        end;
     end;
end;

procedure TFrm_Mov_ProcessarConta.chb_pagtomedicamentoClick(
  Sender: TObject);
begin
  inherited;
{  edt_qtdepagar_mdc.Text:= '0';
  edt_vlpagar_mdc.Text:= '0';
  if chb_pagtomedicamento.Checked then
     begin
     edt_qtdepagar_mdc.Text:= edt_qtde_mdc.Text;
     edt_vlpagar_mdc.Text:= edt_vlinformado_mdc.Text;
     end; }
end;

procedure TFrm_Mov_ProcessarConta.chb_pagtomaterialClick(Sender: TObject);
begin
  inherited;
{  edt_qtdepagar_mtc.Text:= '0';
  edt_vlpagar_mtc.Text:= '0';
  if chb_pagtomaterial.Checked then
     begin
     edt_qtdepagar_mtc.Text:= edt_qtde_mtc.Text;
     edt_vlpagar_mtc.Text:= edt_vlinformado_mtc.Text;
     end;}
end;

procedure TFrm_Mov_ProcessarConta.dbg_itemContaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  
//  DBGrid3.Canvas.Font.Color:= clRed;
  dbg_itemConta.Canvas.Font.Style:= [fsbold];
  if (Fdt_principal.spc_cons_itemconta.FieldByName('status_itc').Value <> 9) then
     dbg_itemConta.Canvas.Font.Color:= clBlack;
  {if (Fdt_principal.spc_cons_itemconta.FieldByName('diferenca').Value <> 0) and
     (Fdt_principal.spc_cons_itemconta.FieldByName('diferenca').Value <> Null) then
      DBGrid3.Canvas.Font.Color:= clRed;}
  if (Fdt_principal.spc_cons_itemconta.FieldByName('status_itc').Value = 9) then
     dbg_itemConta.Canvas.Font.Color:= clRed;

  if (Fdt_principal.spc_cons_itemconta.FieldByName('pagtoincondicional_itc').Value = 0) then
      dbg_itemConta.Canvas.Font.Style:= [];
  dbg_itemConta.DefaultDrawDataCell(Rect, dbg_itemConta.columns[datacol].field, State);




end;

procedure TFrm_Mov_ProcessarConta.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
{  DBGrid1.Canvas.Font.Color:= clRed;
  DBGrid1.Canvas.Font.Style:= [fsbold];
  if (Fdt_principal.spc_cons_contamedica.FieldByName('cod_status').Value <> 9) then
     DBGrid1.Canvas.Font.Color:= clBlack;
  if (Fdt_principal.spc_cons_contamedica.FieldByName('pagtoincondicional_ctm').Value = 0) then
      DBGrid1.Canvas.Font.Style:= [];
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);}
end;

procedure TFrm_Mov_ProcessarConta.btn_glosasparaconveniadoClick(
  Sender: TObject);
var
  WSeq, WSeqitem, WQT, Wcod_erroglosa: Integer;
  Wdescricao_glo, WResto: String;
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_itemglosa do
  begin
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  if Fdt_principal.spc_cons_itemglosa.RecordCount = 0 then
     begin
     Dlg_Alerta('Não há registros a listar!', self);
     Exit;
     end;
  Fdt_principal.spc_cons_itemglosa.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= 'Seq;Dt.Atend.;Carteira;Nome do Beneficiário;Vl.Informado;Vl.Pagar;Vl.Diferença;Cód.Padrão;Descrição;Descrição da Glosa;Observação;Classe da Glosa';
     Writeln(byt_nameofthfile,S);
     S:= '';
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     WSeq:= 0;
     WSeqitem:= 0;
     WQT:= 0;
     Wdescricao_glo:= '';
     pgb_registros.Max:= Fdt_principal.spc_cons_itemglosa.RecordCount;
     with Fdt_principal.spc_cons_itemglosa do
        while not EOF do
        begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        if WSeq = 0 then
           WSeq:= FieldByName('sequenciaconta_ctm').Value;
        if WSeq <> FieldByName('sequenciaconta_ctm').Value then
           begin
           if WQT > 1 then
              S:= S + WResto + FieldByName('descricao_cgl').AsString
           else
              if WResto = '' then
                 S:= S + WResto + ';;' + FieldByName('descricao_cgl').AsString
              else
                 S:= S + WResto + ';' + FieldByName('descricao_cgl').AsString;
           Writeln(byt_nameofthfile, S);
           S:= '';
           WSeqitem:= FieldByName('sequenciaitem_itc').Value;
           WSeq:= FieldByName('sequenciaconta_ctm').Value;
           Wdescricao_glo:= '';
           WResto:= '';
           WQT:= 0;
           end;
        if WSeqitem = 0 then
           WSeqitem:= FieldByName('sequenciaitem_itc').Value;
        if WSeqitem <> FieldByName('sequenciaitem_itc').Value then
           begin
           if WQT > 1 then
              S:= S + WResto + FieldByName('descricao_cgl').AsString
           else
              if WResto = '' then
                 S:= S + Wdescricao_glo + ';' + FieldByName('descricao_cgl').AsString
              else
                 S:= S + WResto + ';' + FieldByName('descricao_cgl').AsString;
           Writeln(byt_nameofthfile, S);
           S:= '';
           WSeqitem:= FieldByName('sequenciaitem_itc').Value;
           WSeq:= FieldByName('sequenciaconta_ctm').Value;
           Wdescricao_glo:= '';
           WResto:= '';
           WQT:= 0;
           end;
        if Wdescricao_glo <> Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString then
           if Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString <> '' then
              if Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger <> 106 then
                 if Wcod_erroglosa <> Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger then
                    Wdescricao_glo:= Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString
                 else
                    if WQT > 0 then
                       Wdescricao_glo:= Wdescricao_glo + ', ' + Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString
                    else
                       Wdescricao_glo:= Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString;
        WDif:= FieldByName('vlinformado_itc').AsFloat - FieldByName('vlpagar_itc').AsFloat;
        Inc(WQT);
        if ((Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger in [10,101..105]) or
           (Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger = 1001)) and
           (Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString <> '') then
              WResto:= WResto + Wdescricao_glo + ';'
           else
              begin
              if Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString = '' then
                 if Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger = 1001 then
                    if WQT = 1 then
                       WResto:= Wdescricao_glo + ';'
                    else
                       WResto:= Wdescricao_glo + ';;'
                 else
                    if (FieldByName('vlpagar_itc').Value = Null) and (Wdescricao_glo = '') then
                       WResto:= Wdescricao_glo + ';'
                    else
                       WResto:= Wdescricao_glo + ';;'
              else
                 if WQT = 2 then
                    WResto:= WResto + ';';
              end;
        S:= FieldByName('sequenciaconta_ctm').AsString + ';' +
            FieldByName('dtentrada_ctm').AsString + ';' +
            FieldByName('carteirainform_ctm').AsString + ';' +
            FieldByName('nomebenefi_ctm').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlinformado_itc').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlpagar_itc').AsFloat) + ';' +
            FormatFloat('###,###,##0.00',(WDif)) + ';'+
            FieldByName('cod_padrao').AsString + ';' +
            FieldByName('descricao_itc').AsString + ';';
        Wcod_erroglosa:= Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger;
        Next;
        end;
    if WQT > 1 then
       S:= S + WResto + Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_cgl').AsString
    else
       if WResto = '' then
          S:= S + WResto + ';;' + Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_cgl').AsString
       else
          S:= S + WResto + ';' + Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_cgl').AsString;
    Writeln(byt_nameofthfile, S);
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal.spc_cons_itemglosa.close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Mov_ProcessarConta.dbe_cod_padraomatChange(Sender: TObject);
begin
  inherited;
  dbg_gimtcm.Visible:= False;
end;

procedure TFrm_Mov_ProcessarConta.DBEdit1Change(Sender: TObject);
begin
  inherited;
  dbg_gimdcm.Visible:= False;
end;

procedure TFrm_Mov_ProcessarConta.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal.spc_cons_med_procedRealizadoBenef do
  begin
    close;
    ParamByName('@cod_beneficiario').AsInteger := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_beneficiario').AsInteger;
    ParamByName('@cod_itemservico').AsString := Fdt_principal.spc_cons_itemconta.fieldbyname('cod_itemservico').AsString;
    Open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal.spc_cons_med_procedRealizadoBenef;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_mes.Text+' de '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := edt_sequencia_con.Text;
  Frm_Bas_Impressao.FCampo3 := STR_RemoveChar(edt_cod_conveniado.text,'-')+' - '+edt_razao_con.Text;
  Frm_Bas_Impressao.FCampo4 := FormatarCarteirinha(Fdt_principal.spc_cons_contamedica.fieldbyname('carteirainform_ctm').AsString)+
  ' - '+Fdt_principal.spc_cons_contamedica.fieldbyname('nomebenefi_ctm').AsString;
  Frm_Bas_Impressao.FCampo5 := Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString;
  Frm_Bas_Impressao.FCampo6 := Fdt_principal.spc_cons_itemconta.fieldbyname('cod_itemservico').AsString+
  ' - '+Fdt_principal.spc_cons_itemconta.fieldbyname('descricao_itc').AsString;
  Frm_Bas_Impressao.showReport(4251);
  fdt_principal.spc_cons_med_procedRealizadoBenef.close;
end;

procedure TFrm_Mov_ProcessarConta.btn_pesquisaItemClick(Sender: TObject);
begin
  inherited;
  if (edt_localizarItem.text <> '') and (edt_sequenciaconta_ctm.text <> '') then
     Fdt_principal.spc_cons_itemconta.Locate(FIndice, edt_localizarItem.text, [loPartialKey])
end;

procedure TFrm_Mov_ProcessarConta.dbg_itemContaTitleClick(Column: TColumn);
begin
  inherited;
  if (edt_sequenciaconta_ctm.text <> '') then
  begin
    FIndice := Column.FieldName ;
    if FIndice = 'descricao_sts' then
      FIndice := 'status_itc, sequenciaitem_itc';
    lbl_indice.Caption := 'Indice de Pesquisa: '+Column.Title.Caption;
    AtualizaItemConta;
  end;
end;

procedure TFrm_Mov_ProcessarConta.PDJButton15Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven001 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := '0' ;
    ParamByName('@cod_itemservicoFin').AsString := '0' ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := edt_sequencia_con.Text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaFinal_cta').AsString := edt_sequencia_con.Text;
    ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoConven001 := TFrm_Imp_Med_ExtratoConven001.Create(Self);
  Frm_Imp_Med_ExtratoConven001.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven001.FPeriodoFinal := cbx_cod_mes.text+'/'+edt_ano.text;
  //Frm_Imp_Med_ExtratoConven001.FDataInicial := edt_dtinicial.text;
  //Frm_Imp_Med_ExtratoConven001.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoConven001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven001.Release;
  Fdt_principal.spc_cons_med_extratoconven001.close;
end;

procedure TFrm_Mov_ProcessarConta.ed2_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  ed2_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), 'cod_conveniado, nome_con, razao_con' ,
  'Código, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
end;

procedure TFrm_Mov_ProcessarConta.ed2_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if ed2_cod_conveniado.text <> '' then begin
    ed2_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(ed2_cod_conveniado.text,1,5)+copy(ed2_cod_conveniado.text,7,1))));
  end;
end;

procedure TFrm_Mov_ProcessarConta.PesquisarContas1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  Obj_SetFormObjValueByName(self,'cb2_cod_mes',cbx_cod_mes.ValueItem);
  Obj_SetFormObjValueByName(self,'cb3_cod_mes',cbx_cod_mes.ValueItem);
  ed2_ano.text := edt_ano.text;
  ed3_ano.text := edt_ano.text;
  ed2_cod_conveniado.Text := edt_cod_conveniado.Text;
  edt_cod_beneficiario.Text := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_beneficiario').AsString;
  ed2_cod_conveniadoExit(self);
  edt_inscricao_benButtonClick(self);
  btn_pesquisarClick(self);
  PageControl.ActivePageIndex := 5;

end;

procedure TFrm_Mov_ProcessarConta.edt_inscricao_benButtonClick(
  Sender: TObject);
var
  FPesquisaSQLBen, FPesquisaBen, wCod_Beneficiario : string;
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQLBen  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, 'Localizar Beneficiarios', FPesquisaSQLBen, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQLBen  := FPesquisaSQLDefalt
    else
      FPesquisaSQLBen  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, 'Localizar Beneficiarios', FPesquisaSQLBen, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_nome.text := '' ;
  end
  else
  begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, cod_empresafolha'+
    ' from tbl_beneficiario where cod_beneficiario = '+ edt_cod_beneficiario.text);
    edt_inscricao_ben.Text := Tab.FieldByNAme('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Mov_ProcessarConta.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_ProcessarConta.btn_pesquisarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb3_cod_mes.name, 'Mês Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A inscrição deve ser preenchida!', VLD_Preenchido )) then
    Exit;
  with Fdt_principal5.spc_cons_contamedicaBenefi do
  begin
    close;
    ParamByName('@referenciaIni').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
    ParamByName('@referenciaFin').AsString := cb3_cod_mes.valueItem + '/01/'+ed3_ano.text;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(ed2_cod_conveniado.text,'-');
    open;
  end;
    
end;

procedure TFrm_Mov_ProcessarConta.btn_limpaConveniadoClick(
  Sender: TObject);
begin
  inherited;
  ed2_cod_conveniado.Text := '';
  ed2_razao_con.Text := '';
  edt_inscricao_ben.Text := '';
  edt_nome.Text := '';
  edt_cod_beneficiario.Text := '';
end;

procedure TFrm_Mov_ProcessarConta.dbg_PendenciaDblClick(Sender: TObject);
begin
  inherited;
  if Fdt_principal5.spc_cons_contamedicaBenefi.RecordCount > 0 then
  begin
    with Fdt_principal5.spc_cons_contamedicaBenefi do
    begin
    edt_cod_conveniado.Text := FieldByName('cod_conveniado').AsString;
    edt_cod_conveniadoExit(self);
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',StrToInt(FormatDateTime('mm', FieldByName('dtreferencia_cta').AsDateTime)));
    edt_ano.Text := FormatDateTime('yyyy', FieldByName('dtreferencia_cta').AsDateTime);
    edt_sequencia_con.Text := FieldByName('sequencia_cta').AsString;
    PageControl.ActivePageIndex := 3;
    btn_atualizarClick(self);
    Application.ProcessMessages;
    Fdt_principal.spc_cons_contamedica.Locate('sequenciaconta_ctm', FieldByName('sequenciaconta_ctm').AsString, [loCaseInsensitive]);

    end;
  end;

end;

procedure TFrm_Mov_ProcessarConta.btn_conveniadoClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Conveniado := TFrm_Cad_Conveniado.Create(Self);
  Frm_Cad_Conveniado.wCod_Conveniado := STR_RemoveChar(edt_cod_conveniado.text, '-') ;
  Frm_Cad_Conveniado.ShowModal;
  Frm_Cad_Conveniado.Release;
  Show;
end;

procedure TFrm_Mov_ProcessarConta.btn_addglosaClick(Sender: TObject);
begin
  inherited;
 DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and sequencia_cta = '+edt_sequencia_con.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível efetuar a alteração porque a conta ja foi Repassada !', self);
    btn_voltarClick(self);
    Exit;
  end;
  if ed2_cod_descricaoglosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o Codigo de Glosa!',self);
    exit;
  end;
  if cbx_cod_classeGlosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o campo Classe Glosa!',self);
    exit;
  end
  else
 { if not(strtoint(edt_cod_classeGlosa.Text) in [1,2,3])  then begin
    Dlg_alerta('O Campo Classe Glosa tem que ser preenchido com 1,2 ou 3',self);
    exit;
  end; }
  DB_BeginTrans;
  DB_ExecSQL('insert into tbl_glosa ('+
  'cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, descricao_glo, cod_erroglosa, cod_classeGlosa, cod_descricaoglosa) values ('+
  Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString+', '+
  DB_FormatDataSQL(Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
  Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString+', '+
  Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsString+
  ', 0, '''+edt_obs_glosaconta.text+''', 10, '+cbx_cod_classeGlosa.valueItem+', '+ed2_cod_descricaoglosa.text+')');
  DB_Commit;
  edt_obs_glosaconta.text := '' ;
  ed2_cod_descricaoglosa.Text := '';
  ed2_cod_descricaoglosa.SetFocus;
  EscreveLog(btn_addglosa.Name);
  with Fdt_principal.spc_cons_glosa do begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@status_ctm').AsString := '';
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := '0';
    open;
    Frm_Mov_ProcessarConta.lbl_tlglosa.Caption := 'Total de Glosas => '+intTostr(recordcount) ;
  end;
end;

procedure TFrm_Mov_ProcessarConta.btn_addglosa02Click(Sender: TObject);
var
  cs : integer;
begin
  inherited;
  if edt_obs_glosaitem.Text = '' then begin
    Dlg_Alerta('É necessário preencher a Observação da Glosa!',self);
    exit;
  end;
  if edt_cod_descricaoglosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o Codigo de Glosa!',self);
    exit;
  end;

  if cb2_cod_classeGlosa.Text = '' then  begin
    Dlg_Alerta('É necessário preencher o campo Classe Glosa!',self);
    exit;
  end
  else
  cs :=Fdt_principal.spc_cons_contamedica.fieldbyname('sequenciaconta_ctm').AsInteger ;
  DB_ExecSQL('insert into tbl_glosa ('+
  'cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, descricao_glo, cod_erroglosa, cod_classeGlosa, cod_descricaoglosa) values ('+
  Fdt_principal.spc_cons_itemconta.fieldbyname('cod_conveniado').AsString+', '+
  DB_FormatDataSQL(Fdt_principal.spc_cons_itemconta.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
  Fdt_principal.spc_cons_itemconta.fieldbyname('sequencia_cta').AsString+', '+
  Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString+', '+
  Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString+', '''+ edt_obs_glosaitem.text+''', 10, '+cb2_cod_classeGlosa.valueItem+', '+edt_cod_descricaoglosa.text+')');
  {
  else begin
    if edt_cod_descricaoglosa.Text = '' then begin
      Dlg_Alerta('É necessário preencher a Observação da Glosa!',self);
      exit;
    end;
    DB_ExecSQL('insert into tbl_glosaparcial (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm,'+
    ' sequenciaitem_itc, descricao_glp, cod_erroglosa, cod_classeGlosa, cod_descricaoGlosa, vlglosado_glp) values('+
    Fdt_principal.spc_cons_itemconta.fieldbyname('cod_conveniado').AsString+', '+
    DB_FormatDataSQL(Fdt_principal.spc_cons_itemconta.fieldbyname('dtreferencia_cta').AsString, ftDate)+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequencia_cta').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaconta_ctm').AsString+', '+
    Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString+', '''+edt_obs_glosaitem.text+''', 10, '+
    cb2_cod_classeGlosa.valueitem+', '+edt_cod_descricaoglosa.Text+', '+STR_SubstChar(edt_vlglosa.text,',','.')+')');
  end;}
  DB_Commit;
  edt_obs_glosaitem.text := '' ;
  edt_cod_descricaoglosa.Text := '';
  edt_cod_descricaoglosa.SetFocus;
  EscreveLog(btn_addglosa02.Name);
  with Fdt_principal.spc_cons_glosa do begin
    close;
    ParamByName('@cod_conveniado').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal.spc_cons_contamedica.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := Fdt_principal.spc_cons_contamedica.fieldbyname('sequencia_cta').AsString;
    ParamByName('@status_ctm').AsString := '';
    ParamByName('@sequenciaconta_ctm').AsString := edt_sequenciaconta_ctm.text;
    ParamByName('@sequenciaitem_itc').AsString := Fdt_principal.spc_cons_itemconta.fieldbyname('sequenciaitem_itc').AsString;
    open;
    Frm_Mov_ProcessarConta.lbl_tlglosa.Caption := 'Total de Glosas => '+intTostr(recordcount) ;
  end;
end;

procedure TFrm_Mov_ProcessarConta.btn_removerGlosaClick(Sender: TObject);
begin
  inherited;
//  if Dlg_YesNo('Tem Certeza que deseja excluir a Glosa ?', Self) then
//  begin
     with Fdt_principal.spc_cons_glosa do
     begin
       DB_ExecSQL('delete from tbl_glosa where cod_conveniado = '+FieldByName('cod_conveniado').AsString+
       ' and dtreferencia_cta = '+DB_FormatDataSQL(FieldByName('dtreferencia_cta').AsDateTime, ftDateTime)+
       ' and sequencia_cta = '+FieldByName('sequencia_cta').AsString+' and sequenciaconta_ctm = '+FieldByName('sequenciaconta_ctm').AsString+
       ' and sequenciaitem_itc = '+FieldByName('sequenciaitem_itc').AsString+' and cod_erroglosa = '+FieldByName('cod_erroglosa').AsString+
       ' and cod_descricaoGlosa = '+FieldByName('cod_descricaoGlosa').AsString);
     end;
    Fdt_principal.spc_cons_glosa.close;
    Fdt_principal.spc_cons_glosa.open;
 // end;
 // DBGrid2.SetFocus;
  EscreveLog(btn_removerGlosa.name);
end;

procedure TFrm_Mov_ProcessarConta.btn_removerGlosa02Click(Sender: TObject);
begin
  inherited;
 // if Dlg_YesNo('Tem Certeza que deseja excluir a Glosa ?', Self) then
 // begin
     with Fdt_principal.spc_cons_glosa do
     begin
       DB_ExecSQL('delete from tbl_glosa where cod_conveniado = '+FieldByName('cod_conveniado').AsString+
       ' and dtreferencia_cta = '+DB_FormatDataSQL(FieldByName('dtreferencia_cta').AsDateTime, ftDateTime)+
       ' and sequencia_cta = '+FieldByName('sequencia_cta').AsString+' and sequenciaconta_ctm = '+FieldByName('sequenciaconta_ctm').AsString+
       ' and sequenciaitem_itc = '+FieldByName('sequenciaitem_itc').AsString+' and cod_erroglosa = '+FieldByName('cod_erroglosa').AsString+
       ' and cod_descricaoGlosa = '+FieldByName('cod_descricaoGlosa').AsString);
     end;
    Fdt_principal.spc_cons_glosa.close;
    Fdt_principal.spc_cons_glosa.open;
 // end;
 // DBGrid4.SetFocus;
  EscreveLog(btn_removerGlosa02.name);

end;

end.

