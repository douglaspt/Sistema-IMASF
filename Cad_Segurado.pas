unit Cad_Segurado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, Fun_DB,
  Mask, DB, Grids, DCGrids, DCDBGrids, DCKnots, DCDataGrid, DCStringGrid,
  CheckLst, DBGrids, dbtables, ADODB, jpeg, DBCtrls, Mov_Tramite, Fun_Obj,
  BEditButton, Buttons;

type
  TFrm_Cad_Segurado = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_nome_ben: TDCEdit;
    pnl_carteira: TPanel;
    pnl_dependente: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    edt_processo_ben: TDCEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    edt_nomepai_ben: TDCEdit;
    Panel14: TPanel;
    edt_idade: TDCEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    edt_endereco_ben: TDCEdit;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    edt_foneresi_ben: TDCEdit;
    Panel20: TPanel;
    Panel21: TPanel;
    edt_rg_ben: TDCEdit;
    edt_orgemissorrg_ben: TDCEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    edt_outrosdocume_ben: TDCEdit;
    edt_tipodocume_ben: TDCEdit;
    tbs_empresa: TTabSheet;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    edt_fonecome_seg: TDCEdit;
    Panel27: TPanel;
    edt_funcaocomiss_seg: TDCEdit;
    edt_funcaoemp_seg: TDCEdit;
    Panel28: TPanel;
    tbs_obs: TTabSheet;
    mem_obs_ben: TMemo;
    edt_dtinscricao_ben: TDCDateEdit;
    edt_dtnascim_ben: TDCDateEdit;
    edt_dtadmiss_seg: TDCDateEdit;
    cbx_cod_TipoSegurado: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_plano: TDCComboBox;
    cbx_cod_estadociv: TDCComboBox;
    cbx_cod_uf: TDCComboBox;
    cbx_cod_setoremp: TDCComboBox;
    cbx_cod_situacempr: TDCComboBox;
    cbx_cod_formaadm: TDCComboBox;
    edt_dtsituempr_seg: TDCDateEdit;
    edt_dtemissaorg_ben: TDCDateEdit;
    Panel30: TPanel;
    edt_titularidade_ben: TDCEdit;
    edt_digito_ben: TDCEdit;
    edt_cod_sitbeneficiario: TDCEdit;
    edt_titulacartei_ben: TDCEdit;
    Label1: TLabel;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_cpf_ben: TMaskEdit;
    edt_titeleitor_ben: TDCEdit;
    edt_dtsituacao_ben: TDCDateEdit;
    edt_dtcadastro_ben: TDCDateEdit;
    cbx_sexo_ben: TDCComboBox;
    btn_anterior: TPDJButton;
    btn_proximo: TPDJButton;
    btn_situacao: TPDJButton;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBG_Itens: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    tbs_carteirinha: TTabSheet;
    tbs_matricula: TTabSheet;
    DBG_matricula: TDBGrid;
    DataSource2: TDataSource;
    Label5: TLabel;
    Panel33: TPanel;
    edt_matricula_mte: TDCEdit;
    edt_digito_mte: TDCEdit;
    Panel34: TPanel;
    edt_vlbase_mte: TDCEdit;
    pnl_matDebito: TPanel;
    edt_matriculadebito_seg: TDCEdit;
    pnl_MatPrincipal: TPanel;
    edt_matriculaprinc_seg: TDCEdit;
    edt_digitomatdeb_seg: TDCEdit;
    edt_digitomatpri_seg: TDCEdit;
    edt_percentual_mte: TDCEdit;
    btn_atualizadep: TPDJButton;
    btn_dependente: TPDJButton;
    tbs_historico: TTabSheet;
    PDJButton4: TPDJButton;
    edt_dtplano_ben: TDCDateEdit;
    Panel38: TPanel;
    edt_dtalteracao_hsb: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    pnl_carencia: TPanel;
    Panel39: TPanel;
    edt_obs_cdv: TDCEdit;
    edt_dtdevolucao_cdv: TDCDateEdit;
    pnl_devolucao: TPanel;
    DataSource3: TDataSource;
    Panel40: TPanel;
    Panel41: TPanel;
    btn_registrarSolicitacao: TPDJButton;
    edt_devolvido_cdv: TDCDateEdit;
    Panel42: TPanel;
    btn_registrarDevolucao: TPDJButton;
    edt_obsdv_cdv: TDCEdit;
    Panel44: TPanel;
    cbx_cd2_uf: TDCComboBox;
    Panel45: TPanel;
    btn_atualizarEndereco: TPDJButton;
    edt_alerta_ben: TDCEdit;
    PDJButton10: TPDJButton;
    PDJButton11: TPDJButton;
    pnl_cod_beneficiario: TPanel;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    lbl_ocorrencia: TLabel;
    lbl_vldesconto_adf: TLabel;
    edt_cod_dep: TDBEdit;
    edt_vldesconto_adf: TDCDateEdit;
    Label7: TLabel;
    edt_dtreferencia_flh: TDCDateEdit;
    edt_vlcontribuicao: TDCDateEdit;
    edt_nomecarteira_ben: TDCEdit;
    lbl_processo: TLabel;
    btn_descontos: TPDJButton;
    edt_email_ben: TDCEdit;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    edt_nomemae_ben: TDCEdit;
    PageControl1: TPageControl;
    tbs_carencia: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    btn_adicionarCarencia: TPDJButton;
    btn_removerCarencia: TPDJButton;
    cbx_cod_nivelcar: TDCComboBox;
    edt_informacao_car: TDCEdit;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    PDJButton1: TPDJButton;
    Panel5: TPanel;
    edt_dtcarencia_ben: TDCDateEdit;
    tbs_doencapre: TTabSheet;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    btn_adicionarCID: TPDJButton;
    btn_removerCID: TPDJButton;
    edt_cod_cid: TEditButton;
    DataSource4: TDataSource;
    PDJButton2: TPDJButton;
    Panel6: TPanel;
    edt_ano: TDCEdit;
    PDJButton8: TPDJButton;
    edt_dtendereco_ben: TDCDateEdit;
    DBGrid2: TDBGrid;
    DataSource5: TDataSource;
    pnl_planoEspecial: TPanel;
    cbx_cod_planoPagto: TDCComboBox;
    Panel31: TPanel;
    edt_dtlimite_seg: TDCDateEdit;
    lbl_vlContrib: TLabel;
    TabSheet4: TTabSheet;
    DataSource6: TDataSource;
    SpeedButton6: TSpeedButton;
    cbx_cod_cidadeCep: TDCComboBox;
    cbx_cod_cidadecorCEP: TDCComboBox;
    btn_senha: TPDJButton;
    ckb_cadastroRapido: TCheckBox;
    PDJButton3: TPDJButton;
    chb_mailing_ben: TCheckBox;
    btn_atualizar: TSpeedButton;
    TabSheet5: TTabSheet;
    edt_cep_ben: TMaskEdit;
    btn_buscarcep: TPDJButton;
    edt_numero_ben: TDCEdit;
    Panel43: TPanel;
    edt_enderecocor_ben: TDCEdit;
    edt_cepcor_ben: TMaskEdit;
    edt_numerocor_ben: TDCEdit;
    btn_buscarcep2: TPDJButton;
    edt_complemento_ben: TDCEdit;
    edt_bairro_ben: TDCEdit;
    edt_complementocor_ben: TDCEdit;
    edt_bairrocor_ben: TDCEdit;
    rdb_irpf: TRadioButton;
    rdb_Socontribuicao: TRadioButton;
    edt_certidaonascvivo_ben: TDCEdit;
    dbg_odonto: TDBGrid;
    Panel29: TPanel;
    cb2_cod_empresafolha: TDCComboBox;
    gbx_matriculaentrada: TGroupBox;
    btn_novoMat: TPDJButton;
    btn_alterarMat: TPDJButton;
    btn_excluirMat: TPDJButton;
    gbx_matriculadebito: TGroupBox;
    btn_editaMatDeb: TPDJButton;
    btn_salvaMatDeb: TPDJButton;
    btn_cancelaMatDeb: TPDJButton;
    btn_salvarMatricula: TPDJButton;
    PDJButton7: TPDJButton;
    cbx_status_mte: TDCComboBox;
    cb3_cod_empresafolha: TDCComboBox;
    cbx_cod_empresafolha: TDCComboBox;
    btn_chamacadcep: TPDJButton;
    edt_fonecel_ben: TDCEdit;
    ckb_pericia: TCheckBox;
    pnl_alerta: TPanel;
    stg_audi: TStringGrid;
    edt_cartaoUnimed_ben: TDCEdit;
    procedure FormCreate(Sender: TObject); 
    procedure edt_cod_beneficiarioButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_dtnascim_benChange(Sender: TObject);
    procedure edt_foneresi_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_tipodocume_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_funcaocomiss_segKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benChange(Sender: TObject);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_situacaoClick(Sender: TObject);
    procedure btn_adicionarCarenciaClick(Sender: TObject);
    procedure btn_removerCarenciaClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure DBG_ItensDblClick(Sender: TObject);
    procedure PDJButton3Clic(Sender: TObject);
    procedure tbs_matriculaShow(Sender: TObject);
    procedure btn_novoMatClick(Sender: TObject);
    procedure btn_excluirMatClick(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure btn_salvarMatriculaClick(Sender: TObject);
    procedure btn_alterarMatClick(Sender: TObject);
    procedure edt_matricula_mteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_dependenteClick(Sender: TObject);
    procedure btn_atualizadepClick(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_registrarSolicitacaoClick(Sender: TObject);
    procedure tbs_carteirinhaShow(Sender: TObject);
    procedure btn_registrarDevolucaoClick(Sender: TObject);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_nome_benExit(Sender: TObject);
    procedure DBG_ItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure edt_vlbase_mteEnter(Sender: TObject);
    procedure tbs_historicoShow(Sender: TObject);
    procedure edt_cod_depChange(Sender: TObject);
    procedure edt_nome_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_processoClick(Sender: TObject);
    procedure btn_descontosClick(Sender: TObject);
    procedure edt_matriculadebito_segKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_matriculaprinc_segKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure btn_adicionarCIDClick(Sender: TObject);
    procedure btn_removerCIDClick(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure edt_cpf_benExit(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
    procedure btn_editaMatDebClick(Sender: TObject);
    procedure btn_salvaMatDebClick(Sender: TObject);
    procedure btn_cancelaMatDebClick(Sender: TObject);
    procedure btn_senhaClick(Sender: TObject);
    procedure edt_nome_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_processo_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_matricula_mteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtnascim_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton3Click(Sender: TObject);
    procedure chb_mailing_benClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure cbx_cod_nivelcarChange(Sender: TObject);
    procedure DBG_matriculaDblClick(Sender: TObject);
    procedure cbx_cod_empresafolhaChange(Sender: TObject);
    procedure cb3_cod_empresafolhaChange(Sender: TObject);
    procedure edt_cep_benExit(Sender: TObject);
    procedure edt_cepcor_benExit(Sender: TObject);
    procedure edt_cep_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cepcor_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_chamacadcepClick(Sender: TObject);
    procedure cbx_sexo_benExit(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbx_cod_planoChange(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FCamposCart,
    FTabelaCart,
    wCod_Plano_Old,
    wCod_TipSeg_Old,
    wCod_Empresa_Old,
    wMatriculaOld,
    wDigitoOld,
    wEnderecoFoneOld,
    wCod_planoPagto_Old, wCod_ufOld : String ;
    procedure MatriculaOnOff(b: boolean);
    procedure Prox_Anter(b:boolean);
    procedure CarregarCombos;
    procedure Get_VlContribuicao;
    procedure AtualizarSitBeneficiario(sit:string);
    function SalvarHistorico: boolean ;
    function SalvarNivelCar: boolean ;
    function SalvarPlanoPagtoEspecial: boolean ;
    procedure EdicaoMatDeb(onnOff:boolean) ;
    procedure CadastraPericia;
    function VerCod_NivelCar(c:string): boolean ;
    procedure PesquisaDoencaPreExistente();
  public
    { Public declarations }
    wCod_Beneficiario, WMudancas, WCEPDEP : String ;
    DadosEntrada, DadosSaida: TResultArray;
    procedure BotoesOnOff(b:boolean);                   override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarInsert(Frm:TForm) : boolean ;    override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Segurado: TFrm_Cad_Segurado;
  ChaveExp, Wcod_empresafolha, WtitReq: Integer;
  WCEP, WNUM, WCOMPLEMENTO, WCEPC, WNUMC, WCOMPLEMENTOC, FCod_beneficiario, FInscricao, Wmatriculadebito_seg,
  Wdigitomatdeb_seg, WBotAntes, WBenefAnt, WInsAnt: String;
  wAlteraEndereco : boolean;

implementation

uses Fun_Str, Fun_Data, Constantes, Dlg_Mensagem, Mov_SitBeneficiario, Fun_Beneficiario,
     Cad_Dependente, dtm_principal, Rel_HistoricoBenefi, Fun_Acesso, Fun_Desconto, Mov_DescontoManual,
     dtm_principal2, Rel_Requerimento001, Rel_FichaBenefi001, Cad_Agendamento, dtm_principal5,
     Fun_ConsCadastro, dtm_principal6, Rel_3033, Bas_Impressao, Cad_afiliadoOdonto, Fun_ConsCEP, Mov_2063, Cad_Cep;

{$R *.DFM}

procedure TFrm_Cad_Segurado.AtualizarSitBeneficiario(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit, cod_sitbeneficiario from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    //pnl_situacao.Caption := 'Situação : '+Tab.FieldByName('nome_sit').AsString;
    pnl_alerta.Caption := '***  '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    if  Tab.FieldByName('cod_sitbeneficiario').AsInteger = 28 then
      pnl_alerta.color := clAqua;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Segurado.BotoesOnOff(b:boolean);
begin
  inherited;
  if FStatus <> FST_Novo then begin
    btn_proximo.enabled  := b ;
    btn_anterior.enabled := b ;
    btn_situacao.enabled := b ;
    btn_senha.Visible := b and (not FAlterar) ;

    if not Acs_AcessoEspecial('101403') then
    begin
      cbx_cod_plano.enabled := not b ;
      cbx_cod_planoPagto.Enabled := not b;
      edt_dtplano_ben.enabled := not b ;
      edt_dtsituacao_ben.enabled := not b ;
      btn_excluirMat.Enabled := not b;
      //cb2_cod_empresafolha.enabled := not b ;
    end;
    if not Acs_AcessoEspecial('101404') then
    begin
      cbx_cod_tipocoberturaunimed.Enabled := not b;
      edt_cartaoUnimed_ben.Enabled := not b;
    end;
  end;
end;

function TFrm_Cad_Segurado.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A inscrição informada inválida !', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_nome_ben.name, 'O nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomecarteira_ben.name, 'O nome para carteirinha deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_TipoSegurado.name, 'Um tipo de segurado deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_processo_ben.name, 'O número / ano de processo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresa.name, 'Uma empresa deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'Um plano deve ser selecionado !', VLD_Preenchido )) or
 // (not BAS_ValidarCampo(edt_dtplano_ben.name, 'A data do Plano deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtinscricao_ben.name, 'A data de Inscrição deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtsituacao_ben.name, 'A data de Situação deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_estadociv.name, 'Um estado civil deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_sexo_ben.name, 'Selecione o sexo do beneficiário !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascim_ben.name, 'A data de nascimento deve ser preenchida, ou não é uma data de nascimento válida !', VLD_DataNascimento )) or
  (not BAS_ValidarCampo(edt_nomemae_ben.name, 'O Nome da Mãe deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_tipocoberturaunimed.name, 'O Tipo de Cobertura da Unimed deve ser Preenchido !', VLD_Preenchido )) then
  begin
    PageControl.ActivePageIndex := 0 ;
    Exit ;
  end;


//  if cbx_cod_tipocoberturaodonto.Text = '' then
//    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, 0);
  if (not BAS_ValidarCampo(edt_endereco_ben.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) then
  begin
    PageControl.ActivePageIndex := 1 ;
    Exit;
  end;
  {
  if (cbx_cod_plano.ValueItem = 3) then
  begin
    if (DB_OpenSQL('select * from tbl_regiaoCidade where cod_regiao = 1'+
    ' and cod_cidadeCEP = '+cbx_cod_cidadeCep.valueItem) > 0) then
    begin
      if (cbx_cod_tipocoberturaunimed.ValueItem <> 4) then
      begin
        Dlg_Alerta('Tipo de Cobertura da Unimed deve ser Emergência / Urgência para Região Metropolitana!',self);
        Exit;
      end;
    end;
      else
    begin
      if (cbx_cod_tipocoberturaunimed.ValueItem <> 1) then
      begin
        Dlg_Alerta('Tipo de Cobertura da Unimed deve ser Específica ABC (Cobertura Completa) para fora da Região Metropolitana!',self);
        Exit;
      end;
    end;
  end;  }
  if FStatus = FST_Novo then
    if (not BAS_ValidarCampo(edt_numero_ben.name, 'O Numero deve ser preenchido !', VLD_Preenchido )) then
    begin
      PageControl.ActivePageIndex := 1 ;
      Exit;
    end;
  if edt_enderecocor_ben.text = '' then
      btn_atualizarEnderecoClick(self);
  if (chb_mailing_ben.Checked) and (edt_email_ben.Text = '') then
  begin
    Dlg_Alerta('O Email deve ser preenchido!', self);
    PageControl.ActivePageIndex := 1 ;
    edt_email_ben.SetFocus;
    Exit;
  end;
  if (not BAS_ValidarCampo(edt_rg_ben.name, 'O R.G. deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_dtemissaorg_ben.name, 'A Data de emissão do RG deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) then
  begin
    PageControl.ActivePageIndex := 2 ;
    Exit;
  end;
  if edt_cpf_ben.text = '   .   .   -  ' then
  begin
    Dlg_Alerta('CPF deve ser Preenchido!',self);
    PageControl.ActivePageIndex := 2 ;
    Exit;
  end;
 // if (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser selecionado !', VLD_Preenchido )) or
  if (not BAS_ValidarCampo(cbx_cod_setoremp.name, 'Um setor da empresa deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_funcaoemp_seg.name, 'A função/cargo deve ser preenchida !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_fonecome_seg.name, 'O telefone comercial deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtadmiss_seg.name, 'A data de admissão deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_situacempr.name, 'Uma situação na empresa deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtsituempr_seg.name, 'A data de situação na empresa deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_formaadm.name, 'Uma forma de admissão deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtlimite_seg.name, 'A Data Limite deve ser preenchida !', VLD_DataPreenchida)) then
  begin
    PageControl.ActivePageIndex := 3 ;
    exit ;
  end;
  if FStatus = FST_novo then
    if cbx_cod_ocorrenciaEdital.text = '' then begin
      Dlg_Alerta('A Ocorrencia deve ser Preenchida !',self);
      PageControl.ActivePageIndex := 9 ;
      Exit;
    end;
  if (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser selecionado !', VLD_Preenchido )) then
  begin
    PageControl.ActivePageIndex := 7 ;
    exit;
  end;
  if cbx_cod_empresafolha.valueitem = 99 then
  begin
    if Length(edt_enderecocor_ben.Text + ', ' + edt_numerocor_ben.Text + ' ' + edt_complementocor_ben.Text+'-'+edt_bairrocor_ben.Text) > 60 then
    begin
      Dlg_Alerta('O Endereço de Correspondencia do Local de Desconto Tesouraria deve conter no maximo 60 caracteres. Endereco, numero, complemento e bairro!',self);
      PageControl.ActivePageIndex := 1 ;
      Exit;
    end;
  end;
  if (edt_matriculadebito_seg.Text = '') or (edt_matriculadebito_seg.Text = '0') then
  begin
    Dlg_Alerta('É necessário cadastrar uma matrícula para o Segurado!',self);
    PageControl.ActivePageIndex := 7 ;
    exit;
  end;
  if (cbx_cod_planoPagto.Text = '') then
  begin
    Dlg_Alerta('Tabela de Plano de Pagamento deve ser preenchido!',self);
    PageControl.ActivePageIndex := 7;
    tbs_matriculaShow(self);
    cbx_cod_planoPagto.SetFocus;
    exit;
  end;
  if cbx_cod_planoPagto.Text <> '' then
  begin
    DB_OpenSQL('select cod_plano from tbl_planoPagto where cod_planopagto = '+cbx_cod_planoPagto.valueItem);
    if tab.FieldByName('cod_plano').AsInteger <> cbx_cod_plano.ValueItem then
    begin
      Dlg_Alerta('Tabela de Plano de Pagamento não permitida para o Plano '+cbx_cod_plano.Text, self);
      PageControl.ActivePageIndex := 7;
      cbx_cod_planoPagto.SetFocus;
      exit;
    end;
  end;
  if FStatus = FST_Alteracao then
  begin
    if VerCod_NivelCar('4') and (fdt_principal6.spc_cons_adm_doencaPreExistente.RecordCount <= 0) then
    begin
      Dlg_Alerta('É necessário cadastrar Doenças Pré Existentes (CID)',self);
      PageControl.ActivePageIndex := 5;
      PageControl1.ActivePageIndex := 1;
      Exit;
    end;
  end;
  result := false ;
end;

procedure TFrm_Cad_Segurado.BAS_Alterar(Frm:Tform);
  function totaldependentes(inscricao:string): string;
  begin
    DB_OpenSQL('select count(*) from tbl_beneficiario where inscricao_ben = '+
    inscricao +' and titulacartei_ben > 0 and cod_sitbeneficiario = 1');
    result := Tab.Fields[0].AsString;
  end;
  function ultimaalteracao(cod_beneficiario:string): string;
  begin
    DB_OpenSQL('exec spc_cons_adm_ultimaalteracao '+cod_beneficiario);
    edt_nome_usu.text := Tab.Fields[1].AsString+', na tela Cod.: '+Tab.Fields[2].AsString +
    ' - '+ Tab.Fields[3].AsString;
    result := Tab.Fields[0].AsString;
  end;
  function dataalteracaoplano(cod_beneficiario:string): string;
  begin
    DB_OpenSQL('select max(dtinicial_hlp) from tbl_histplano where cod_beneficiario = '+
    cod_beneficiario);
    result := Tab.Fields[0].AsString;
  end;
  procedure MostrarNivelCar(cod_beneficiario : string);
  begin
    DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv '+
    'from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar and '+
    'cod_beneficiario = '+cod_beneficiario+' order by c.cod_nivelcar');
    LsB_Carencia.Items.Clear;
    while not Tab.Eof do
    begin
      LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
      STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
      STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
      Tab.FieldByName('informacao_car').AsString);
      Tab.Next;
    end;
  end;
  procedure MostrarPlanoPagtoEspecial(cod_beneficiario : string);
  begin
    DB_OpenSQL('select cod_planoPagto from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+cod_beneficiario);
    Obj_SetFormObjValueByName(self, cbx_cod_planoPagto.name, Tab.fields[0].asstring);
    wCod_planoPagto_Old := Tab.fields[0].asstring;
  end;
  procedure ConfiguraRestricaoAlteracao;
  begin
//    cbx_cod_TipoSegurado
//    edt_dtinscricao_ben.Enabled := false;

  end;
begin
  PesquisaDoencaPreExistente;
  CarregarCombos;
  Get_VlContribuicao;
  inherited ;
  if Acs_AcessoEspecial('101402') then begin
    cbx_cod_TipoSegurado.Enabled := false;
    edt_processo_ben.Enabled := false;
    cbx_cod_empresa.Enabled := false;
    cbx_cod_empresafolha.Enabled := false;
//    tbs_empresa.Enabled := false;
    tbs_carencia.Enabled := false;
    tbs_doencapre.Enabled := false;
    tbs_matricula.Enabled := false;
  end;
//  cbx_cod_tipocoberturaodonto.Enabled := false;
//  edt_dtadesaoodonto_ben.Enabled := false;
  DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
  //DB_OpenTableByFields(self, FCamposCart, FTabelaCart);
  //edt_dtsituacao_ben.Enabled := false ;
  cb2_cod_empresafolha.Enabled := false ;
  Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.Name, cbx_cod_empresafolha.ValueItem);
  pnl_dependente.caption := 'N° Dependentes : ' + totaldependentes(edt_inscricao_ben.text);
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, '00' )) ;
  AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
  wCod_Plano_Old := cbx_cod_plano.ValueItem;
  pnl_cod_beneficiario.Caption := 'Cod. Beneficiario: '+edt_cod_beneficiario.text;
  wCod_Empresa_Old := cbx_cod_empresa.valueitem ;
  wCod_TipSeg_Old := cbx_cod_TipoSegurado.valueItem;
  wEnderecoFoneOld := edt_endereco_ben.text+edt_foneresi_ben.text;
  MostrarNivelCar(edt_cod_beneficiario.text);
  MostrarPlanoPagtoEspecial(edt_cod_beneficiario.text);
  edt_dtalteracao_hsb.text := ultimaalteracao(edt_cod_beneficiario.text);
  pnl_carencia.Visible := ADM_VerCarencia(edt_cod_beneficiario.text) and (edt_dtcarencia_ben.Date <= Date);
  pnl_devolucao.Visible := ADM_VerDevolucao(edt_cod_beneficiario.text);
  wCod_ufOld := cbx_cod_uf.valueItem;
  WCEP:= edt_cep_ben.Text;
  WNUM:= edt_numero_ben.Text;
  WCOMPLEMENTO:= edt_complemento_ben.Text;
  WCEPC:= edt_cepcor_ben.Text;
  WNUMC:= edt_numerocor_ben.Text;
  WCOMPLEMENTOC:= edt_complementocor_ben.Text;
  Application.ProcessMessages;
  Refresh;
  DadosEntrada := LerDadosTela(Self);
  gbx_matriculadebito.Visible := true;
end;

function TFrm_Cad_Segurado.SalvarHistorico: boolean ;
begin
  result := true ;
  if (wCod_Empresa_Old <> cbx_cod_empresa.ValueItem) and (FStatus = FST_Alteracao) then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histempresa where cod_beneficiario = '+edt_cod_beneficiario.text) > 0 then
        DB_execSql('update tbl_histempresa set dtfinal_hse = getdate()'+
        ' from tbl_beneficiario where tbl_beneficiario.cod_beneficiario = tbl_histempresa.cod_beneficiario and '+
        ' inscricao_ben = '+edt_inscricao_ben.text+' and dtfinal_hse is null');
  end;
  if (wCod_TipSeg_Old <> cbx_cod_TipoSegurado.ValueItem) and (FStatus = FST_Alteracao) then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histtipsegurado where cod_beneficiario = '+edt_cod_beneficiario.text) > 0 then
        DB_execSql('update tbl_histtipsegurado set dtfinal_hsg = getdate()'+
        ' from tbl_beneficiario where tbl_beneficiario.cod_beneficiario = tbl_histtipsegurado.cod_beneficiario '+
        ' and inscricao_ben = '+edt_inscricao_ben.text+' and dtfinal_hsg is null');
      DB_execSql('update tbl_beneficiario set cod_tiposegurado = '+cbx_cod_TipoSegurado.ValueItem+
      ' where inscricao_ben = '+edt_inscricao_ben.text);
  end;
 { if wCod_planoPagto_Old <> cbx_cod_planoPagto.ValueItem then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then
      DB_ExecSQL('update tbl_histPlanoPagtoEspecial set dtfinal_hpe = getdate()'+
      ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtfinal_hpe is null');
  end;  }
  result := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');
end;

function TFrm_Cad_Segurado.SalvarNivelCar: boolean ;
var
  i : integer ;
begin
  DB_ExecSQL('delete from tbl_carencia where cod_beneficiario = '+edt_cod_beneficiario.text );
  if LsB_Carencia.Items.Count = 0 then begin
    result := true;
    exit;
  end;
  with LsB_Carencia do
  begin
    for i := 0 to Items.Count-1 do
      result := DB_ExecSQL('insert into tbl_carencia values ('+edt_cod_beneficiario.text+', '+
      Trim(Copy(Items.Strings[i],1,2))+', '+
      DB_FormatDataSQL(Trim(Copy(Items.Strings[i],14,11)), ftDate)+', '''+
      Trim(Copy(Items.Strings[i],25,200))+''')');
  end;
end;

function TFrm_Cad_Segurado.SalvarPlanoPagtoEspecial: boolean ;
begin
  if (cbx_cod_planoPagto.text <> '') and (wCod_planoPagto_Old <> cbx_cod_planoPagto.ValueItem) then begin
    DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.text );
    result := DB_ExecSQL('insert into tbl_beneficiarioPlanoPagtoEspecial (cod_beneficiario, cod_planoPagto, dtplanoPagto) values ('+
    edt_cod_beneficiario.text+', '+Obj_GetFormObjValueByName(self, cbx_cod_planoPagto.name)+','+DB_FormatDataSQL(edt_dtplano_ben.text,ftDate)+')');
  end;
end;

function TFrm_Cad_Segurado.BAS_SalvarInsert(Frm:TForm): boolean ;
var
  wInscricao : String ;
begin
  DB_BeginTrans;
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  result := DB_Insert(Frm) ;
  DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario '+
  'where inscricao_ben < 99999');
  edt_cod_beneficiario.text := Tab.Fields[0].AsString ;
  wInscricao := Tab.Fields[1].AsString ;
//  edt_dtemissao_car.date := date;
  if result then
    result := Set_OcorrenciaEdital(edt_cod_beneficiario.text, edt_inscricao_ben.text, edt_titulacartei_ben.text,
  cbx_cod_ocorrenciaEdital.valueitem, edt_dtinscricao_ben.text, Get_MesReferenciaFolha('01/mm/yyyy'));
 // if edt_dtvalidade_car.text = '' then
 //   edt_dtvalidade_car.text := '31/12/2999';
  if result then
    result := DB_InsertByFields(self, FCamposAux, FTabelaAux);
  if result then
    result := DB_InsertByFields(self, FCamposCart, FTabelaCart);
  if result then
    result := SalvarHistorico ;
  if result then
    result := SalvarNivelCar ;
  if result then
    result := SalvarPlanoPagtoEspecial ;

  { //comtado em 25/10/2016
  if edt_cod_sitbeneficiario.Text = '28' then
  begin
    if result then
      result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
      ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1)');
    if result then
      if cbx_cod_plano.ValueItem = 3 then
        result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1, 11)');
    result := DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'1, null,getdate(),null,null, null)');
  end else     }
  if VerCod_NivelCar('11') then
  begin
    DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'1, null,getdate(),null,null, null)');
  end
  else
  begin
    if result then
      result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
      ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1)');
    if result then
      if cbx_cod_plano.ValueItem = 3 then
        result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1, 11)');
  end;

  if result then
    DB_Commit
  else begin
    DB_RollBack;
    Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 1014001 ', self);
    Close;
  end;
//aqui
{  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Incluido ' + pnl_carteira.Caption +
                ', ' + edt_nome_ben.Text + ', Matr.Deb. ' + edt_matriculadebito_seg.Text + '-' +
                edt_digitomatdeb_seg.Text, 'TPPE. ' + cbx_cod_planoPagto.Text +
                ', Loc.Desc. ' + cbx_cod_empresafolha.Text + ', Dt.Inscr/Sit/Plano/Nasc ' +
                edt_dtinscricao_ben.Text + ', ' + edt_dtsituacao_ben.Text + ', ' +
                edt_dtplano_ben.Text + ', ' + edt_dtnascim_ben.Text + ',Unimed ' + cbx_cod_tipocoberturaunimed.Text +
                ', End. ' + edt_endereco_ben.Text +', Cep: ' + edt_cep_ben.Text + ', Fone: ' + edt_foneresi_ben.Text,0);}
end;

function TFrm_Cad_Segurado.BAS_SalvarUpdate(Frm:TForm): boolean ;
  function SalvarEndereco: boolean ;
  begin
    result := true ;
    if strtoint(edt_titulacartei_ben.text) > 0 then exit ;
    if edt_endereco_ben.text+edt_foneresi_ben.text = wEnderecoFoneOld then Exit ;
    result := DB_ExecSQL('update tbl_beneficiario set endereco_ben = '''+edt_endereco_ben.text+
    ''', bairro_ben = '''+edt_bairro_ben.text+''', cep_ben = '''+edt_cep_ben.text+''', foneresi_ben = '''+edt_foneresi_ben.text+
    ''', enderecocor_ben = '''+edt_enderecocor_ben.text+
    ''', bairrocor_ben = '''+edt_bairrocor_ben.text+''', cepcor_ben = '''+edt_cepcor_ben.text+
    ''' where inscricao_ben = '+edt_inscricao_ben.text+' and titulacartei_ben < 50'+
    ' and cod_tipodependente = 1');
  end;
  function SalvarAlteracoesDependente: boolean;
  var
    tq : TQuery ;
  begin
    result := true ;
    if strtoint(edt_titulacartei_ben.text) > 0 then exit ;
    if (wCod_Plano_Old = cbx_cod_plano.ValueItem) and (wCod_Empresa_Old = cbx_cod_empresa.ValueItem) then Exit ;
    if wCod_Empresa_Old <> cbx_cod_empresa.ValueItem then
      result := DB_ExecSQL('update tbl_beneficiario set cod_empresa = '+
      cbx_cod_empresa.ValueItem+', digito_ben = 999 '+
      ' where inscricao_ben = '+edt_inscricao_ben.text+' and titulacartei_ben > '+
      edt_titulacartei_ben.text); // retirei o fltro de assistido em 05/03/2021  -- and titulacartei_ben < 50
  end;
begin
    DB_OpenSQL('select nome_ben from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
  if edt_nome_ben.Text <> Tab.FieldByName('nome_ben').AsString then
    DB_ExecSQL('update tbL_tramite set nome_ben = '''+edt_nome_ben.text+''' where inscricao_ben = '+edt_inscricao_ben.Text);
  DB_BeginTrans;
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  FCod_beneficiario := edt_cod_beneficiario.Text;
 // if edt_dtemissao_car.text = '' then
 //   edt_dtemissao_car.date := date;
 // if edt_dtvalidade_car.text = '' then
 //   edt_dtvalidade_car.text := '31/12/2999';
  result := DB_Update(Frm) ;
  if result then
    result := DB_UpdateByFields(self, FCamposAux, FTabelaAux);
  if result then
    result := DB_UpdateByFields(self, FCamposCart, FTabelaCart);
  if result then
    result := SalvarHistorico ;
// comentado para usar nova tela 2063
//  if result then
//    result := SalvarEndereco ;
  if result then
    result := SalvarNivelCar ;
  if result then
    result := SalvarAlteracoesDependente ;
  if result then
    result := SalvarNivelCar ;
  if result then
    result := SalvarPlanoPagtoEspecial ;
  if result then
    DB_Commit
  else begin
    DB_RollBack;
    Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 1014002 ', self);
    Close;
  end;
//aqui
{    GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Alterado ' + pnl_carteira.Caption +
  ', ' + edt_nome_ben.Text + ', Matr.Deb. ' + edt_matriculadebito_seg.Text + '-' +
  edt_digitomatdeb_seg.Text, 'TPPE. ' + cbx_cod_planoPagto.Text +
  ', Loc.Desc. ' + cbx_cod_empresafolha.Text + ', Dt.Inscr/Sit/Plano/Nasc ' +
  edt_dtinscricao_ben.Text + ', ' + edt_dtsituacao_ben.Text + ', ' +
  edt_dtplano_ben.Text + ', ' + edt_dtnascim_ben.Text + ',Unimed ' + cbx_cod_tipocoberturaunimed.Text +
  ', End. ' + edt_endereco_ben.Text + ', Cep: ' + edt_cep_ben.Text + ', Fone: ' + edt_foneresi_ben.Text,0);
  }
  if (WCEP = edt_cep_ben.Text) and (WNUM = edt_numero_ben.Text) and (WCOMPLEMENTO = edt_complemento_ben.Text)
  and (WCEPC = edt_cepcor_ben.Text) and (WNUMC = edt_numerocor_ben.Text) and (WCOMPLEMENTOC = edt_complementocor_ben.Text) then
    wAlteraEndereco := false
  else
    wAlteraEndereco := true;
end;

procedure TFrm_Cad_Segurado.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb3_cod_empresafolha', 'nome_emp');
  if FStatus <> FST_Novo then
    BAS_CarregarCombo('cbx_cod_plano', 'nome_pla')
  else
    Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_statusativo = 1');
  BAS_CarregarCombo('cbx_cod_estadociv', 'nome_civ');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  Obj_LoadCombo(Self, 'cbx_cd2_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
  cbx_cod_cidadeCep.ValItems.Clear;
  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  BAS_CarregarCombo('cbx_cod_setoremp', 'nome_ste');
  BAS_CarregarCombo('cbx_cod_situacempr', 'nome_sie');
  BAS_CarregarCombo('cbx_cod_formaadm', 'nome_fad')     ;
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed','descricao_tcu');
//  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto','descricao_tco');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  cbx_status_mte.Items.Add('Ativo');
  cbx_status_mte.Items.Add('Inativo');
  cbx_status_mte.ValItems.Add('1');
  cbx_status_mte.ValItems.Add('2');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where tipo_oce = ''I'' or tipo_oce = ''M''');
  if FStatus <> FST_Novo then
     BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp')
  else
     Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
end;

procedure TFrm_Cad_Segurado.BAS_LimparTela;
begin
  inherited;
  edt_dtinscricao_ben.Date := date ;
  edt_dtsituacao_ben.text := datetostr(date) ;
  edt_dtcadastro_ben.text := datetostr(date) ;
  //cbx_cod_uf.text := 'SP' ;
  PageControl.ActivePageIndex := 0 ;
//  edt_dtsituacao_ben.Enabled := true ;
  wCod_Plano_Old := '' ;
  wCod_Empresa_Old := '' ;
  wCod_TipSeg_Old := '' ;
  pnl_alerta.visible := false ;
end;

procedure TFrm_Cad_Segurado.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Segurados';
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_dtcadastro_ben' ;
  FUltFoco      := 'mem_obs2_ben' ;
  FTitPesquisa  := 'Localizar Segurados' ;
  FCamposAux    := 'edt_cod_beneficiario, '+
  'cbx_cod_setoremp, edt_funcaoemp_seg, edt_fonecome_seg, edt_dtadmiss_seg, '+
  'cbx_cod_situacempr, edt_dtsituempr_seg, cbx_cod_formaadm, edt_funcaocomiss_seg, '+
  'edt_matriculadebito_seg, edt_digitomatdeb_seg, edt_matriculaprinc_seg, edt_digitomatpri_seg, edt_dtlimite_seg';
  FTabelaAux    := 'tbl_segurado';
  FCamposCart   := 'edt_cod_beneficiario, '+
  'edt_dtemissao_car, edt_dtvalidade_car, edt_via_car';
  FTabelaCart   := 'tbl_carteira';
//  FPesquisaSQL  := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_segurado g '+
//  ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.titulacartei_ben = 0 and b.cod_beneficiario = g.cod_beneficiario';
  FPesquisaSQL  := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit from tbl_beneficiario b, tbl_sitbeneficiario s where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.titulacartei_ben = 0';
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Situação' ;
  FOcultaIndice := true ;
  inherited;
  FTransacao    := false ;
  if Acs_AcessoEspecial('101401') then begin
     edt_vlcontribuicao.Visible := false;
     lbl_vlContrib.Visible := false;
     edt_vldesconto_adf.Visible := false;
     lbl_vldesconto_adf.Visible := false;
//     tbs_empresa.TabVisible := false;
//     tbs_obs.TabVisible := false;
     tbs_carteirinha.TabVisible := false;
     tbs_matricula.TabVisible := false;
     tbs_historico.TabVisible := false;
  end;
end;

procedure TFrm_Cad_Segurado.edt_cod_beneficiarioButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Segurado.btn_novoClick(Sender: TObject);
begin
  WBotAntes:= 'I';
  CarregarCombos;
  pnl_carencia.Visible := false;
  LsB_Carencia.Items.Clear;
  edt_cod_beneficiario.text := '0';
  edt_titularidade_ben.text := '00';
  edt_digito_ben.text := '0';
  edt_cod_sitbeneficiario.text := '1';
  edt_titulacartei_ben.text := '0';
  edt_cpf_ben.Text := '' ;
  edt_cep_ben.text := '' ;
  edt_dtinscricao_ben.text := '' ;
  edt_dtsituacao_ben.text := '' ;
  LsB_Carencia.Items.Clear;
  cb2_cod_empresafolha.ItemIndex := -1;
  cb2_cod_empresafolha.Enabled := false ;
  gbx_matriculadebito.Visible := false;
  edt_dtinscricao_ben.date := date;
  inherited;
  //edt_inscricao_ben.text := DB_GetSeq ('inscricao_ben') ;
  Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_statusativo = 1');
  Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1 and cod_tipodependente = 0');
  edt_inscricao_ben.SetFocus;
  if ckb_cadastroRapido.Checked then
  begin
    if DB_OpenSQL('select * from tbl_parametroCadRapido') > 0 then
    begin
      Obj_SetFormObjValueByName(self, cbx_cod_TipoSegurado.Name, Tab.fieldByName('cod_tiposegurado').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_empresa.Name, Tab.fieldByName('cod_empresa').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, Tab.fieldByName('cod_plano').AsInteger);
      edt_dtplano_ben.Date := Tab.fieldByName('dtplano_pcr').AsDateTime;
      edt_dtinscricao_ben.Date := Tab.fieldByName('dtinscricao_pcr').AsDateTime;
      edt_dtsituacao_ben.Date := Tab.fieldByName('dtsituacao_pcr').AsDateTime;
      edt_nomepai_ben.Text := Tab.fieldByName('nomepai_pcr').AsString;
      edt_nomemae_ben.Text := Tab.fieldByName('nomemae_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, Tab.fieldByName('cod_tipocoberturaunimed').AsInteger);
//      Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, Tab.fieldByName('cod_tipocoberturaodonto').AsInteger);
      edt_endereco_ben.Text := Tab.fieldByName('endereco_pcr').AsString;
      edt_bairro_ben.Text := Tab.fieldByName('bairro_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_uf.Name, Tab.fieldByName('cod_uf').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_cidadeCep.Name, Tab.fieldByName('cod_cidadeCep').AsInteger);
      edt_cep_ben.Text := Tab.fieldByName('cep_pcr').AsString;
      btn_atualizarEnderecoClick(self);
      edt_rg_ben.Text := Tab.fieldByName('rg_pcr').AsString;
      edt_cpf_ben.Text := Tab.fieldByName('cpf_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, Tab.fieldByName('cod_empresafolha').AsInteger);
      Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.Name, Tab.fieldByName('cod_empresafolha').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_setoremp.Name, Tab.fieldByName('cod_setoremp').AsInteger);
      edt_funcaoemp_seg.Text := Tab.fieldByName('funcaoemp_pcr').AsString;
      edt_fonecome_seg.Text := Tab.fieldByName('fonecome_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_situacempr.Name, Tab.fieldByName('cod_situacempr').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_formaadm.Name, Tab.fieldByName('cod_formaadm').AsInteger);
      edt_dtlimite_seg.Date := Tab.fieldByName('dtlimite_pcr').AsDateTime;
      edt_dtadmiss_seg.Date := Tab.fieldByName('dtadmiss_pcr').AsDateTime;
      edt_dtsituempr_seg.Date := Date;
      Obj_SetFormObjValueByName(self, cbx_cod_ocorrenciaEdital.Name, Tab.fieldByName('cod_ocorrenciaEdital').AsInteger);
      edt_cod_sitbeneficiario.Text := Tab.fieldByName('cod_sitbeneficiario').AsString;
    end;
  end;
  if ckb_pericia.Checked then
  begin
    CadastraPericia;
  end;
end;

procedure TFrm_Cad_Segurado.CadastraPericia;
begin
  Obj_LoadCombo(Self,'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_plano in (2,3) order by cod_plano');
  //edt_cod_sitbeneficiario.Text :=  '28';
  edt_dtcarencia_ben.Date := edt_dtinscricao_ben.date;
  //24 Horas para Urgências e Emergências
  Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 1);
  cbx_cod_nivelcarChange(self);
  btn_adicionarCarenciaClick(self);
  //Exames de Alta Complexidade / Internações Clínicas ou Cirúrgicas
  Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 3);
  cbx_cod_nivelcarChange(self);
  btn_adicionarCarenciaClick(self);
  //Consulta somente ambulatório IMASF
 // Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 9); //--comentado em 24/10/2016
  Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 10);
  cbx_cod_nivelcarChange(self);
  btn_adicionarCarenciaClick(self);
 // AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
  pnl_carencia.Visible := true;
end;

procedure TFrm_Cad_Segurado.edt_dtnascim_benChange(Sender: TObject);
begin
  inherited;
  edt_idade.text := Data_GetIdadeExt(edt_dtnascim_ben.date, date);
end;



procedure TFrm_Cad_Segurado.edt_foneresi_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 2 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_Segurado.edt_tipodocume_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 3 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_Segurado.edt_funcaocomiss_segKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 4 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_Segurado.edt_cod_beneficiarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) and (edt_cod_beneficiario.text <> '') and (FStatus = FST_Normal) then
      btn_alterarClick(self);
end;

procedure TFrm_Cad_Segurado.edt_inscricao_benChange(Sender: TObject);
begin
  inherited;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, '00' )) ;
end;

procedure TFrm_Cad_Segurado.Get_VlContribuicao;
begin
  if (edt_cod_beneficiario.text <> '') and (edt_cod_beneficiario.text <> '0') then
  begin
    with Fdt_principal5.spc_cons_adm_vlcontribuicao do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
      open;
    end;
    edt_vlcontribuicao.Text := FormatFloat('###,###,##0.00',Fdt_principal5.spc_cons_adm_vlcontribuicao.fieldByName('vldesconto_adf').AsFloat);
  end;  
end;

procedure TFrm_Cad_Segurado.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text <> '' then begin
    if DB_OpenSQL('select nome_ben, endereco_ben, bairro_ben, cidade_ben, cod_uf, '+
    'cep_ben, foneresi_ben, rg_ben, orgemissorrg_ben, dtemissaorg_ben, cpf_ben, '+
    'titeleitor_ben, outrosdocume_ben, tipodocume_ben, processo_ben from tbl_beneficiario where inscricao_ben = '+
    edt_inscricao_ben.text+' and titulacartei_ben = 0') > 0 then begin
      Dlg_Alerta('Inscrição informada já cadastrada !', self);
      edt_inscricao_ben.setfocus;
      exit;
    end;
    Get_VlContribuicao;
    DB_OpenSQL('select max(inscricao_ben) as inscricao_ben from tbl_beneficiario where inscricao_ben < 99999');
    if StrToInt(edt_inscricao_ben.Text) > (Tab.FieldByName('inscricao_ben').AsInteger + 30) then
    Begin
      Dlg_Alerta('A Inscrição não pode ser superior a 30 da ultima Inscrição Cadastrada!',self);
      Exit;
    end;
    if DB_OpenSQL('select processo_tmt, ano_tmt, nome_ben from tbl_tramite where inscricao_ben = '+edt_inscricao_ben.Text) > 0 then
    begin
      edt_processo_ben.Text := Tab.fieldByName('processo_tmt').AsString+'/'+tab.fieldByName('ano_tmt').AsString;
      edt_nome_ben.Text := Tab.fieldByName('nome_ben').AsString;
    end;
    edt_nome_ben.SetFocus;
  end;
end;

procedure TFrm_Cad_Segurado.Prox_Anter(b:boolean);
var
  cod : string ;
begin
  inherited;
    cod := edt_inscricao_ben.text ;
    FStatus := FST_Normal;
    BotoesOnOff(false);
    BAS_LimparTela;
    DB_RollBack;
    if b then
      DB_OpenSQL('select min(inscricao_ben) from tbl_beneficiario where inscricao_ben > '+cod+' and titulacartei_ben = 0 ')
    else
      DB_OpenSQL('select max(inscricao_ben) from tbl_beneficiario where inscricao_ben < '+cod+' and titulacartei_ben = 0 ');
    edt_cod_beneficiario.text := Tab.Fields[0].AsString;
    CarregarCombos;
    btn_alterarClick(self);
    //BAS_Alterar(self);
end;

procedure TFrm_Cad_Segurado.btn_anteriorClick(Sender: TObject);
begin
  Prox_Anter(false);
  inherited;

end;

procedure TFrm_Cad_Segurado.btn_proximoClick(Sender: TObject);
begin
  Prox_Anter(true);
  inherited;

end;

procedure TFrm_Cad_Segurado.btn_situacaoClick(Sender: TObject);
var
 c : string ;
begin
  inherited;
  {if Sit_AlterarSituacao(edt_cod_beneficiario.text, edt_inscricao_ben.text, edt_titulacartei_ben.text, pnl_carteira.caption, edt_nome_ben.text,
    edt_dtsituacao_ben.text, edt_cod_sitbeneficiario.text, Self) then begin
      c := Fsituacao;
      edt_dtsituacao_ben.text := Fdtsituacao ;
  end;
  if c <> '' then begin
    edt_cod_sitbeneficiario.text := c ;
    AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
    btn_atualizadepClick(self);
  end;  }
  Hide;
  Frm_Cad_Agendamento := TFrm_Cad_Agendamento.Create(Self);
  Frm_Cad_Agendamento.wInscricao := edt_inscricao_ben.Text;
  Frm_Cad_Agendamento.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Cad_Agendamento.ShowModal;
  Frm_Cad_Agendamento.Release;
  Show;
//  EscreveLog(btn_situacao.name);
end;

function TFrm_Cad_Segurado.VerCod_NivelCar(c:string): boolean ;
var
  i : integer ;
begin
// Atenção: O cod_nivelcar da tbl_nivelcar está fixo em 2 dígitos para essa função
  result := false ;
  for i := 0 to LsB_Carencia.Items.Count-1 do
    if Trim(Copy(LsB_Carencia.Items.Strings[i],1,2)) = c then
      result := true ;
end;

procedure TFrm_Cad_Segurado.btn_adicionarCarenciaClick(Sender: TObject);

var
  v, b : string ;
begin
  inherited;
  if edt_dtcarencia_ben.text = '' then begin
    Dlg_Alerta('É necessário preencher a Data de Inicio da Carência!', self);
    tbs_carencia.SetFocus;
    edt_dtcarencia_ben.setfocus;
    Exit ;
  end;
  if cbx_cod_nivelcar.text = '' then begin
    Dlg_Alerta('Selecione um nível de carência !', self);
    tbs_carencia.SetFocus;
    cbx_cod_nivelcar.setfocus;
    Exit ;
  end;
  if VerCod_NivelCar(cbx_cod_nivelcar.ValueItem) and (cbx_cod_nivelcar.ValueItem <> 4) and (cbx_cod_nivelcar.ValueItem <> 7) then begin
    Dlg_Alerta('Esse nível de carência já foi selecionado anteriormente !', self);
    tbs_carencia.SetFocus;
    cbx_cod_nivelcar.setfocus;
    edt_informacao_car.text := '' ;
    cbx_cod_nivelcar.text := '' ;
    cbx_cod_nivelcar.ItemIndex:= -1;
    Exit ;
  end;
  if cbx_cod_nivelcar.ValueItem = '4' then
  begin
    if VerCod_NivelCar('11') then
    begin
      Dlg_Alerta('É necessário exluir o Nível IV-a antes de incluir o Nível IV',self);
      Exit;
    end;
  end;
  if ((pos(',',edt_informacao_car.text)) or (pos(';',edt_informacao_car.text))) > 0 then
  begin
    Dlg_Alerta('Não é possivel utilizar os caracteres , ou ; substitua por - !', self);
    edt_informacao_car.setfocus;
    Exit ;
  end;
  DB_OpenSQL('select * from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.ValueItem);
  v := DateToStr(edt_dtcarencia_ben.date + Tab.FieldByName('dias_niv').AsInteger);
  LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
  STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
  STR_AddSpaces(v, 10)+edt_informacao_car.text);
  b := LsB_Carencia.Items.Strings[0];
  edt_informacao_car.text := '' ;
  cbx_cod_nivelcar.text := '' ;
  cbx_cod_nivelcar.ItemIndex:= -1;
end;

procedure TFrm_Cad_Segurado.btn_removerCarenciaClick(Sender: TObject);
begin
  inherited;
  LsB_Carencia.Items.Delete(LsB_Carencia.ItemIndex);
  EscreveLog(btn_removerCarencia.name);
end;

procedure TFrm_Cad_Segurado.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  DB_DevSeq ('inscricao_ben' , edt_inscricao_ben.text);
end;

procedure TFrm_Cad_Segurado.TabSheet7Show(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.Text <> '' then
  begin
    with Fdt_principal.spc_cons_dependente do begin
      close;
      parambyname('@cod_beneficiario').AsInteger := 0 ;
      parambyname('@inscricao_ben').AsString := edt_inscricao_ben.text ;
      parambyname('@titulacartei_ben').AsInteger := 0 ;
      open;
    end;
  end;
end;

procedure TFrm_Cad_Segurado.DBG_ItensDblClick(Sender: TObject);
var
  b : string ;
begin
  inherited;
  b := edt_cod_beneficiario.Text ;
  Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
  Frm_Cad_Dependente.wCod_Beneficiario := Fdt_principal.spc_cons_dependente.FieldByName('cod_beneficiario').AsString ;
//  btn_salvarClick(self);
//  if (FStatus = FST_Novo) or (FStatus = FST_Alteracao) then begin //Na menssagem confirma salvar o usuário clicou na opção "Não"
    BAS_ExecuteCancelar(self);
//  end;
  Hide;
  Frm_Cad_Dependente.ShowModal;
  Frm_Cad_Dependente.Release;
  wCod_Beneficiario := b;
  Show;
  btn_atualizadepClick(self);
end;

procedure TFrm_Cad_Segurado.PDJButton3Clic(Sender: TObject);
begin
  inherited;
 // edt_dtvalidade_car.text := ADM_critica_carteiravalidade('0',
 // cbx_cod_formaadm.valueitem, '0', '');
end;

procedure TFrm_Cad_Segurado.tbs_matriculaShow(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_adm_matriculaentrada do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    if (edt_cod_beneficiario.text <> '') and (edt_cod_beneficiario.text <> '0') then
    open;
  end;
end;

procedure TFrm_Cad_Segurado.btn_novoMatClick(Sender: TObject);
begin
  inherited;
{  if cb3_cod_empresafolha.Text = '' then
  begin
    Dlg_Alerta('O Local de Desconto deve ser preenchido!',self);
    PageControl.ActivePageIndex := 3 ;
    cb3_cod_empresafolha.SetFocus;
    Exit;
  end;}
  btn_novoMat.Enabled := false ;
  btn_alterarMat.Enabled := false ;
  btn_excluirMat.Enabled := false ;
  DBG_matricula.visible := false ;
  btn_salvarMatricula.Enabled:= True;
  PDJButton7.Enabled:= True;
  edt_matricula_mte.Text := '' ;
  edt_digito_ben.Text := '' ;
  edt_vlbase_mte.Text := '800,00' ;
  edt_percentual_mte.Text := '100' ;
  cbx_status_mte.ItemIndex := 0;
  wMatriculaOld := '' ;
  wDigitoOld := '' ;
  Application.ProcessMessages;
  if ckb_cadastroRapido.Checked then
  begin
    edt_vlbase_mte.Text := '0';
    edt_percentual_mte.Text := '100';
  end;
  EscreveLog(btn_novoMat.name);
  Panel33.Enabled:= True;
  Obj_SetFormObjValueByName(self, cb3_cod_empresafolha.Name, -1);
  cb3_cod_empresafolha.SetFocus;
end;

procedure TFrm_Cad_Segurado.btn_excluirMatClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir essa Matricula de Entrada ?', Self) then begin
    if DB_OpenSQL('select top 1 * from tbl_descontofolha where matriculadebito_seg = '+
    Fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('matricula_mte').AsString+
    ' and digitomatdeb_seg = '+fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('digito_mte').AsString) > 0 then
    begin
      Dlg_Alerta('Não é possível Remover pois há Descontos lançados para esta Matrícula !',self);
      Exit;
    end;
    if DB_OpenSQL('select * from tbl_afiliadoodonto where matricula_mte = '+
    Fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('matricula_mte').AsString+
    ' and digito_mte = '+fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('digito_mte').AsString) > 0 then
    begin
      Dlg_Alerta('Não é possível Remover a Matrícula pois há Afiliados cadastrados para esta Matricula!',self);
      Exit;
    end;
    DB_ExecSQL('delete from tbl_matriculaentrada where cod_beneficiario = '+
    edt_cod_beneficiario.text+' and matricula_mte = '+
    Fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('matricula_mte').AsString+
    ' and digito_mte = '+
    fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('digito_mte').AsString);
    //Histórico de exclusão
    GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Exclusão','Matrícula: '+
    Fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('matricula_mte').AsString+' Dig.: '+
    fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('digito_mte').AsString+' Excluido.', 3);
    fdt_principal.spc_cons_adm_matriculaentrada.close;
    fdt_principal.spc_cons_adm_matriculaentrada.open;
  end;
  EscreveLog(btn_excluirMat.name);

  end;

procedure TFrm_Cad_Segurado.PDJButton7Click(Sender: TObject);
begin
  inherited;
  btn_novoMat.Enabled := true ;
  btn_alterarMat.Enabled := true ;
  btn_excluirMat.Enabled := true ;
  DBG_matricula.visible := true ;
  btn_salvarMatricula.Enabled:= False;
  PDJButton7.Enabled:= False;
  MatriculaOnOff(true);
  if FStatus = FST_Novo then
  begin
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, 0);
    edt_matriculadebito_seg.Text := '';
    edt_digitomatdeb_seg.Text := '';
  end;
end;

procedure TFrm_Cad_Segurado.btn_salvarMatriculaClick(Sender: TObject);
var cb : string ;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida!', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_matricula_mte.name, 'A Matricula deve ser Preenchida!', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_status_mte.name, 'A Situação deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb3_cod_empresafolha.name, 'A Empresa Origem deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlbase_mte.name, 'O Salario / Valor Base deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_percentual_mte.name, 'O Percentual sobre o Salario deve ser Preenchido!', VLD_Preenchido )) then
    Exit;
  edt_digito_mte.Text:= IntToStr(CalculaDigito(cb3_cod_empresafolha.valueitem, edt_matricula_mte.Text));
  if wMatriculaOld = '' then
    if DB_OpenSQL('select b.inscricao_ben from tbl_matriculaentrada m, tbl_beneficiario b where b.cod_beneficiario = m.cod_beneficiario and matricula_mte = '+
    edt_matricula_mte.Text+' and digito_mte = '+edt_digito_mte.Text+' and  m.cod_empresafolha = '+cb3_cod_empresafolha.ValueItem+' and cod_sitbeneficiario = 1') > 0 then
    begin
      Dlg_Alerta('Matrícula já Cadastrada na Inscrição '+Tab.Fields[0].AsString,self);
      Exit;
    end;
{  if edt_matriculadebito_seg.Text <> '' then
    if DB_OpenSQL('select b.inscricao_ben, matricula_mte from tbl_matriculaentrada m, tbl_beneficiario b where b.cod_beneficiario = m.cod_beneficiario and matricula_mte = '+
       edt_matricula_mte.Text+' and digito_mte = '+ edt_digito_mte.Text+ ' and b.cod_beneficiario = '+ edt_cod_beneficiario.text+
       ' and situacao_mte = 1 and cod_sitbeneficiario = 1') = 1 then
       if Tab.FieldByName('matricula_mte').Text = edt_matriculadebito_seg.Text then
          if cbx_status_mte.ValueItem = 2 then
             begin
             Dlg_Alerta('Antes de Inativar esta Matrícula, altere a Matrícula de Débito.',self);
             PDJButton7Click(Self);
             btn_salvarMatricula.Enabled:= False;
             PDJButton7.Enabled:= False;
             Exit;
             end; }
  btn_novoMat.Enabled := true ;
  btn_alterarMat.Enabled := true ;
  btn_excluirMat.Enabled := true ;
  DBG_matricula.visible := true ;
  if edt_cod_beneficiario.text <> '' then
    cb := edt_cod_beneficiario.text
  else
    cb := '0' ;
  if wMatriculaOld = '' then
    DB_ExecSQL('insert into tbl_matriculaentrada (cod_beneficiario, matricula_mte, '+
    'digito_mte, vlbase_mte, percentual_mte, inscricao_ben, situacao_mte, cod_empresafolha) values ( '+cb+' ,'+
    edt_matricula_mte.text+', '+edt_digito_mte.text+', '''+STR_SubstChar(edt_vlbase_mte.text,',','.')+
    ''', '''+STR_SubstChar(edt_percentual_mte.text,',','.')+''', '+edt_inscricao_ben.text+','+cbx_status_mte.valueItem+',' +IntToStr(cb3_cod_empresafolha.ValueItem)+')')
  else
    DB_ExecSQL('update tbl_matriculaentrada set '+
    'matricula_mte = '+edt_matricula_mte.text+', '+
    'digito_mte = '+edt_digito_mte.text+', '+
    'vlbase_mte = '''+STR_SubstChar(edt_vlbase_mte.text,',','.')+''', '+
    'percentual_mte = '''+STR_SubstChar(edt_percentual_mte.text,',','.')+''', '+
    'situacao_mte = '+cbx_status_mte.valueItem+', '+
    'cod_empresafolha = '+IntToStr(cb3_cod_empresafolha.ValueItem)+
    ' where '+
    'matricula_mte = '+wMatriculaOld+' and '+
    'digito_mte = '+wDigitoOld+' and '+
    'cod_beneficiario = '+edt_cod_beneficiario.text +
    ' and cod_empresafolha = '+ IntToStr(cb3_cod_empresafolha.ValueItem));

// Compara se inativou na matricula de entrada e a mesma matrícula está como desconto, avisa para mudança na de débito
  if (cbx_status_mte.valueItem = 2) and
     (wMatriculaOld = edt_matriculadebito_seg.Text) and
     (wDigitoOld = edt_digitomatdeb_seg.Text) and
     (cb3_cod_empresafolha.ValueItem = cbx_cod_empresafolha.ValueItem) then
     Dlg_Alerta('Altere também a Matrícula de Débito!', self);

  if DB_OpenSQL('select * from imasf_farmacia.dbo.tbl_conveniado where cod_empresafolha = '+cbx_cod_empresafolha.valueItem+
  ' and matriculaDebito_seg = '+edt_matricula_mte.text) = 0 then
    DB_ExecSQL('insert into imasf_farmacia.dbo.tbl_conveniado (cod_empresafolha, matriculaDebito_seg, sequencia_cvn,'+
    ' cod_beneficiario, salario_cvn, limiteCompra_int, bloqueio_stc, tipoConveniado_cvn)'+
    ' values ('+cbx_cod_empresafolha.valueItem+', '+edt_matricula_mte.Text+',  0,'+edt_cod_beneficiario.Text+
    ', '+DB_FormatDataSQL(edt_vlbase_mte.text, ftFloat)+', 20, 0, 0)');
  with Fdt_principal.spc_cons_adm_matriculaentrada do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    if (edt_cod_beneficiario.text <> '') and (edt_cod_beneficiario.text <> '0') then
    open;
  end;
  if FStatus = FST_Novo then begin
    edt_matriculadebito_seg.text := edt_matricula_mte.text ;
    edt_matriculaprinc_seg.text := edt_matricula_mte.text ;
    edt_digitomatdeb_seg.Text := edt_digito_mte.Text;
    edt_digitomatpri_seg.Text := edt_digito_mte.Text;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, cb3_cod_empresafolha.ValueItem);
  end;
  btn_salvarMatricula.Enabled:= False;
  PDJButton7.Enabled:= False;
  MatriculaOnOff(true);
end;

procedure TFrm_Cad_Segurado.MatriculaOnOff(b: boolean);
begin
  edt_matricula_mte.Enabled := b;
  edt_matriculadebito_seg.Enabled := b;
  edt_matriculaprinc_seg.Enabled := b;
  edt_digitomatdeb_seg.Enabled := b;
  edt_digitomatpri_seg.Enabled := b;
  edt_digito_mte.Enabled := b;
end;

procedure TFrm_Cad_Segurado.btn_alterarMatClick(Sender: TObject);
begin
  inherited;
  with fdt_principal.spc_cons_adm_matriculaentrada do begin
    btn_novoMat.Enabled := false ;
    btn_alterarMat.Enabled := false ;
    btn_excluirMat.Enabled := false ;
    DBG_matricula.visible := false ;
    edt_matricula_mte.text := FieldByName('matricula_mte').AsString ;
    edt_digito_mte.text := FieldByName('digito_mte').AsString ;
    edt_vlbase_mte.text := FieldByName('vlbase_mte').AsString ;
    edt_percentual_mte.text := FieldByName('percentual_mte').AsString ;
    Obj_SetFormObjValueByName(self, cbx_status_mte.name, FieldByName('situacao_mte').AsString);
    Obj_SetFormObjValueByName(self, cb3_cod_empresafolha.Name, FieldByName('cod_empresafolha').AsString);
    Panel33.Enabled:= False;
    wMatriculaOld := edt_matricula_mte.text ;
    wDigitoOld := edt_digito_mte.text ;
    EscreveLog(btn_alterarMat.name);
  end;
  MatriculaOnOff(False);
  btn_salvarMatricula.Enabled:= True;
  PDJButton7.Enabled:= True;  
end;

procedure TFrm_Cad_Segurado.edt_matricula_mteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edt_digito_mte.Text := IntToStr(CalculaDigito(cb3_cod_empresafolha.valueitem, edt_matricula_mte.Text));
end;

procedure TFrm_Cad_Segurado.btn_dependenteClick(Sender: TObject);
begin
  inherited;
////  DB_Commit ;
  Hide;
  Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
  Frm_Cad_Dependente.wCod_Beneficiario := '' ;
  Frm_Cad_Dependente.ShowModal;
  Frm_Cad_Dependente.Release;
  btn_atualizadepClick(self);
  Show;
  EscreveLog(btn_dependente.name);
////  DB_BeginTrans;
end;

procedure TFrm_Cad_Segurado.btn_atualizadepClick(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_dependente do begin
    close;
    open;
  end;
  EscreveLog(btn_atualizadep.name);
end;

procedure TFrm_Cad_Segurado.PDJButton4Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_HistoricoBenefi := TFrm_Rel_HistoricoBenefi.Create(Self);
  Frm_Rel_HistoricoBenefi.wInscricao := edt_inscricao_ben.text ;
  Frm_Rel_HistoricoBenefi.wCod_Beneficiario := edt_cod_beneficiario.text ;
  Frm_Rel_HistoricoBenefi.ShowModal;
  Frm_Rel_HistoricoBenefi.Release;
  Show;
end;

procedure TFrm_Cad_Segurado.FormShow(Sender: TObject);
begin
  inherited;
  wAlteraEndereco := false;
  if wCod_Beneficiario <> '' then begin
    edt_cod_beneficiario.text := wCod_Beneficiario ;
    BAS_Alterar(Frm_Cad_Segurado);
  end;
  lbl_processo.Enabled := not Obj_LocalizarFormAtivo(Frm_Mov_Tramite);
  btn_descontos.Visible := not Obj_LocalizarFormAtivo(Frm_Mov_DescontoManual);
  btn_editaMatDeb.Enabled:= True;
end;

procedure TFrm_Cad_Segurado.btn_registrarSolicitacaoClick(Sender: TObject);
begin
  inherited;
  if edt_dtdevolucao_cdv.Text <> '' then
    if DB_ExecSQL('insert into tbl_carteiradevolucao '+
    '(cod_beneficiario, dtdevolucao_cdv, obs_cdv) values ('+
    edt_cod_beneficiario.text+', '+DB_FormatDataSQL(edt_dtdevolucao_cdv.text, ftdate)+', '''+
    edt_obs_cdv.text+''')') then Dlg_Ok('Pedido de Devolução Registrado',self);
    EscreveLog(btn_registrarSolicitacao.name);
end;

procedure TFrm_Cad_Segurado.tbs_carteirinhaShow(Sender: TObject);
begin
  inherited;
  edt_dtdevolucao_cdv.Text := '';
  edt_obs_cdv.Text := '' ;

  edt_obsdv_cdv.Text := '' ;
  with fdt_principal2.spc_cons_adm_carteiradevolucao do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
    if (recordcount > 0) and (FieldByName('dtdevolvido_cdv').asstring = '') then begin
      edt_dtdevolucao_cdv.Text := FieldByName('dtdevolucao_cdv').asstring ;
      edt_obs_cdv.Text := FieldByName('obs_cdv').asstring ;
    end;
  end;
  if edt_inscricao_ben.Text <> '' then
  begin
    with fdt_principal2.spc_cons_adm_emissaocarteira do begin
      close;
      parambyname('@inscricao_ben').AsString := edt_inscricao_ben.Text ;
      parambyname('@dtemissaoInicial').AsString := '' ;
      parambyname('@dtemissaoFinal').AsString := '' ;
      parambyname('@cod_emissaocarteira').AsString := '0' ;
      parambyname('@cod_statuscarteira').AsString := '0' ;
      parambyname('@cod_order').AsInteger := 0;
      open;
    end;
  end;  
end;

procedure TFrm_Cad_Segurado.btn_registrarDevolucaoClick(Sender: TObject);
begin
  inherited;
  if DB_ExecSQL('update tbl_carteiradevolucao set '+
  ' dtdevolvido_cdv = '+DB_FormatDataSQL(edt_devolvido_cdv.text, ftdate)+
  ', obsdv_cdv = '''+edt_obsdv_cdv.text+''''+
  ' where cod_beneficiario = '+edt_cod_beneficiario.text+' and dtdevolucao_cdv = '+
  DB_FormatDataSQL(edt_dtdevolucao_cdv.text, ftdate)) then Dlg_Ok('Devolução Registrada',self);
  EscreveLog(btn_registrarDevolucao.name);
end;

procedure TFrm_Cad_Segurado.btn_atualizarEnderecoClick(Sender: TObject);
begin
  inherited;
  edt_cepcor_ben.text := edt_cep_ben.text;
  edt_enderecocor_ben.text := edt_endereco_ben.text;
  edt_bairrocor_ben.text := edt_bairro_ben.text;
  Obj_SetFormObjValueByName(Self,'cbx_cod_cidadecorCEP',cbx_cod_cidadeCep.ValueItem);
  Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',cbx_cod_uf.ValueItem);
  edt_numerocor_ben.Text := edt_numero_ben.Text;
  edt_complementocor_ben.Text := edt_complemento_ben.Text;
  EscreveLog(btn_atualizarEndereco.name);
end;

procedure TFrm_Cad_Segurado.btn_alterarClick(Sender: TObject);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao <> '' then begin
      DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
      inscricao +' and titulacartei_ben = 0');
      result := Tab.Fields[0].AsString;
    end else
      result := '' ;
  end;
  var
    insc : string ;
begin
  WBotAntes:= 'A';
    insc := Get_Cod_beneficiario(edt_cod_beneficiario.text) ;
    if (insc = '') and (edt_cod_beneficiario.text <> '') then
      Dlg_Alerta('Inscrição não encontrada !', self);
    edt_cod_beneficiario.text := insc ;
  inherited;
end;

procedure TFrm_Cad_Segurado.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_novo then begin
    ADM_ver_beneficiarioCadastrado(edt_inscricao_ben.text, edt_nome_ben.text, SELF);
  end;
end;

procedure TFrm_Cad_Segurado.DBG_ItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then begin
    case Column.Field.Dataset.FieldbyName('cod_sitbeneficiario').AsInteger of
      1 : (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
      2, 21 ..30 : (Sender as TDBGrid).Canvas.Font.Color := clGreen ;
    else
      (Sender as TDBGrid).Canvas.Font.Color := clRed ;
    end;
  end else
    (Sender as TDBGrid).Canvas.Font.Color := clWhite ;
    dbg_itens.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;                                                              

procedure TFrm_Cad_Segurado.PDJButton10Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_FichaBenefi001 := TFrm_Rel_FichaBenefi001.Create(Self);
  Frm_Rel_FichaBenefi001.wInscricao := edt_inscricao_ben.text;
  Frm_Rel_FichaBenefi001.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Rel_FichaBenefi001.ShowModal;
  Frm_Rel_FichaBenefi001.Release;
  Show;
end;

procedure TFrm_Cad_Segurado.PDJButton11Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_Requerimento001 := TFrm_Rel_Requerimento001.Create(Self);
  Frm_Rel_Requerimento001.wInscricao := edt_inscricao_ben.text;
  Frm_Rel_Requerimento001.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Rel_Requerimento001.ShowModal;
  Frm_Rel_Requerimento001.Release;
  Show;

end;

procedure TFrm_Cad_Segurado.edt_vlbase_mteEnter(Sender: TObject);
begin
  inherited;
  if (edt_matricula_mte.text <> '') and (edt_digito_mte.text <> '') then
  begin
    if DB_OpenSQL('select vlbase_mte from tbl_fpm where matricula_mte = '+edt_matricula_mte.text+' and digito_mte = '+edt_digito_mte.text) > 0 then
      edt_vlbase_mte.Text := Tab.FieldbyName('vlbase_mte').AsString;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Segurado.tbs_historicoShow(Sender: TObject);
begin
  inherited;
  rdb_Socontribuicao.Checked:= True;
  edt_ano.Text := inttostr(strtoint(FormatDateTime('yyyy',date)) - 1);
  if FStatus = FST_Novo then begin
    cbx_cod_ocorrenciaEdital.Visible := True;
    lbl_ocorrencia.Visible := True;
  end
  else begin
    cbx_cod_ocorrenciaEdital.Visible := false;
    lbl_ocorrencia.Visible := false;
  end;
end;

procedure TFrm_Cad_Segurado.edt_cod_depChange(Sender: TObject);
begin
  inherited;
  with Fdt_principal5.spc_cons_adm_vlcontribuicao do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_dep.Text;
    open;
  end;
  edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',Fdt_principal5.spc_cons_adm_vlcontribuicao.fieldByName('vldesconto_adf').AsFloat);
  edt_dtreferencia_flh.Text := Fdt_principal5.spc_cons_adm_vlcontribuicao.fieldByName('dtreferencia_flh').AsString;
end;

procedure TFrm_Cad_Segurado.edt_nome_benKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (FStatus = FST_novo) then
    edt_nomecarteira_ben.text := edt_nome_ben.text ;
end;

procedure TFrm_Cad_Segurado.lbl_processoClick(Sender: TObject);
var
b : string ;
begin
  inherited;
  if edt_processo_ben.Text <> '' then
  begin
    b := edt_cod_beneficiario.Text ;
    Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
    Frm_Mov_Tramite.edt_processo_tmt.Text := Trim(copy(edt_processo_ben.Text,1,Length(edt_processo_ben.Text) - 5));
    Frm_Mov_Tramite.edt_ano_tmt.Text := Trim(copy(edt_processo_ben.Text,(Length(edt_processo_ben.Text) - 3), 4));
    Frm_Mov_Tramite.btn_alterarClick(self);
    BAS_ExecuteCancelar(self);
    Hide;
    Frm_Mov_Tramite.ShowModal;
    Frm_Mov_Tramite.Release;
    wCod_Beneficiario := b;
    Show;
  end;
end;

procedure TFrm_Cad_Segurado.btn_descontosClick(Sender: TObject);
var
b : string ;
begin
  inherited;
    b := edt_cod_beneficiario.Text ;
    Frm_Mov_DescontoManual := TFrm_Mov_DescontoManual.Create(Self);
    BAS_ExecuteCancelar(self);
    Hide;
    Frm_Mov_DescontoManual.ShowModal;
    Frm_Mov_DescontoManual.Release;
    wCod_Beneficiario := b;
    Show;
end;

procedure TFrm_Cad_Segurado.edt_matriculadebito_segKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edt_digitomatdeb_seg.Text := IntToStr(CalculaDigito(cbx_cod_empresafolha.valueitem, edt_matriculadebito_seg.Text));
end;

procedure TFrm_Cad_Segurado.edt_matriculaprinc_segKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edt_digitomatpri_seg.Text := IntToStr(CalculaDigito(cbx_cod_empresafolha.valueitem, edt_matriculaprinc_seg.Text));
end;

procedure TFrm_Cad_Segurado.PDJButton1Click(Sender: TObject);
begin
  inherited;
{  if cbx_cod_nivelcar.text <> '' then begin
    DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
    edt_informacao_car.Text := Tab.fields[0].asstring;
  end;}
end;

procedure TFrm_Cad_Segurado.edt_cod_cidButtonClick(Sender: TObject);
begin
  inherited;
  if edt_cod_cid.Text = '' then
    Obj_SetFormObjValueByName(Self, 'edt_cod_cid',
    Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_cid',8,length('edt_cod_cid')),
    'cod_cid, nome_cid', 'Cod.Cid, CID',
    'Localizar CID', '', true))
  else
    btn_adicionarCIDClick(self);
end;

procedure TFrm_Cad_Segurado.btn_adicionarCIDClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_cid.name, 'O CID deve ser Preenchido !', VLD_Preenchido )) then
    exit;
  if DB_OpenSQL('select cod_cid from tbl_cid where cod_cid = '''+edt_cod_cid.Text+'''') < 1 then
  begin
    Dlg_Alerta('Código de CID Inválido',self);
    DBGrid1.SetFocus;
    Exit;
  end;
  DB_ExecSQL('insert into tbl_doencaPreExistente (cod_beneficiario, cod_cid) values ('+
  edt_cod_beneficiario.text+','''+UpperCase(edt_cod_cid.text)+''')');
  fdt_principal6.spc_cons_adm_doencaPreExistente.close;
  fdt_principal6.spc_cons_adm_doencaPreExistente.open;
  DBGrid1.SetFocus;
  EscreveLog(btn_adicionarCID.name);
end;

procedure TFrm_Cad_Segurado.btn_removerCIDClick(Sender: TObject);
begin                                                                                                           
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir O Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_doencaPreExistente where cod_beneficiario = '+
    edt_cod_beneficiario.text+' and cod_cid = '''+fdt_principal6.spc_cons_adm_doencaPreExistente.FieldByName('cod_cid').asstring+'''');
    fdt_principal6.spc_cons_adm_doencaPreExistente.close;
    fdt_principal6.spc_cons_adm_doencaPreExistente.open;
  end;
  EscreveLog(btn_removerCID.name);
end;

procedure TFrm_Cad_Segurado.PesquisaDoencaPreExistente();
begin
  with fdt_principal6.spc_cons_adm_doencaPreExistente do
  begin
    Close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    Open;
  end;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrm_Cad_Segurado.TabSheet6Show(Sender: TObject);
begin
  inherited;
  PesquisaDoencaPreExistente;
end;

procedure TFrm_Cad_Segurado.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3033 := TFrm_Rel_3033.Create(Self);
  Frm_Rel_3033.wInscricao := edt_inscricao_ben.text;
  Frm_Rel_3033.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Rel_3033.ShowModal;
  Frm_Rel_3033.Release;
  Show;
end;

procedure TFrm_Cad_Segurado.PDJButton8Click(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_ano.name, 'O Ano deve ser Preenchido !', VLD_Preenchido ) then
    exit;
  with fdt_principal6.spc_cons_adm_ImpostodeRenda do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    ParamByName('@dtreferenciaIni').AsString := '01/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := '01/01/'+IntToStr(StrToInt(edt_ano.text) + 1);
    if rdb_irpf.Checked = True then
       ParamByName('@opcao').AsString := '1'
    else
       ParamByName('@opcao').AsString := '0';
    Open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_ImpostodeRenda;
  Frm_Bas_Impressao.FMesReferencia := edt_ano.text;
  Frm_Bas_Impressao.FCampo1 := 'São Bernardo do Campo, '+Data_Format('dd',date)+' de '+Data_GetMonthName(StrToInt(Data_Format('mm', Date)))+' de '+Data_Format('yyyy',Date);
  DB_OpenSQL('select matriculadebito_seg, digitomatdeb_seg from tbl_segurado where cod_beneficiario = '+edt_cod_beneficiario.Text);
  Frm_Bas_Impressao.FCampo2 := Tab.fieldByName('matriculadebito_seg').AsString+' - '+Tab.fieldByName('digitomatdeb_seg').AsString;
  if edt_numero_ben.Text = '' then
    Frm_Bas_Impressao.FCampo3 := edt_endereco_ben.Text
  else
    Frm_Bas_Impressao.FCampo3 := edt_endereco_ben.Text+', '+edt_numero_ben.Text+' '+edt_complemento_ben.Text;
  Frm_Bas_Impressao.FCampo4 := edt_bairro_ben.Text;
  Frm_Bas_Impressao.FCampo5 := cbx_cod_cidadeCep.Text+' - '+cbx_cod_uf.Text;
  Frm_Bas_Impressao.FCampo6 := edt_cep_ben.Text;
  Frm_Bas_Impressao.showReport(4145);
  fdt_principal6.spc_cons_adm_ImpostodeRenda.close;
end;

procedure TFrm_Cad_Segurado.btn_buscarcepClick(Sender: TObject);
var
//  Fcod_cidadeCep : integer;
  Fcod_cidadeCep, WQtd : integer;
begin
  inherited;
{  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cep_ben.Text,'-')) > 0 then
    begin
      edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);
      edt_dtendereco_ben.Date := Date;
    end;
  end;}


  edt_endereco_ben.ReadOnly:= True;
  edt_bairro_ben.ReadOnly:= True;
  edt_endereco_ben.Color:= clInfoBk;
  edt_bairro_ben.Color:= clInfoBk;
  edt_endereco_ben.SetFocus;
  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select c.tipoLogradouro_cep, c.endereco_cep, c.bairro_cep, c.cod_uf, c.cod_cidadeCep, '+
                  'ci.qtd_cep from tbl_CEP c inner join tbl_cidadeCEP ci on c.cod_cidadeCEP = ci.cod_cidadeCEP '+
                  'where c.cod_cep = ' + STR_RemoveChar(edt_cep_ben.Text,'-')) > 0 then
    begin
      WQtd:= Tab.fieldByName('qtd_cep').AsInteger;
      if WQTD > 2 then
         begin
         edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
         edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
         end
      else
         if WCEP = edt_cep_ben.Text then
            begin
            edt_endereco_ben.Text := WEND;
            edt_bairro_ben.Text := WBAI;
            end
         else
            begin
            edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
            edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
            end;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);

// Se existe apenas uma única rua na Cidade
      if WQtd < 2 then
         begin
         Dlg_Alerta('ATENÇÃO, CEP Único para a Cidade! ', Self);
         edt_endereco_ben.ReadOnly:= False;
         edt_bairro_ben.ReadOnly:= False;
         edt_endereco_ben.Color:= clWindow;
         edt_bairro_ben.Color:= clWindow;
         Panel16.SetFocus;
         edt_endereco_ben.SetFocus;
         end;
      edt_dtendereco_ben.Date := Date;
    end
    else
      begin
      if not Dlg_YesNo('CEP ' + edt_cep_ben.Text + ' Não Cadastrado, Deseja Cadastrar?', Self) then
         begin
        // edt_cep_ben.Text = '';
         Panel16.SetFocus;
         edt_cep_ben.SetFocus;
         Exit;
         end
      else
         begin
         WCEPDEP:= edt_cep_ben.Text;
         btn_chamacadcepClick(Self);
         edt_cep_ben.Text:= WCEPDEP;
         Panel16.SetFocus;
         btn_buscarcepClick(Self);
         btn_buscarcep2Click(Self);
         edt_cep_ben.SetFocus;
         end;
      end;
  end;


end;

procedure TFrm_Cad_Segurado.TabSheet4Show(Sender: TObject);
begin
  inherited;
  if edt_matriculadebito_seg.Text <> '' then
  begin
    with Fdt_principal6.spc_cons_adm_afiliadoodonto do begin
      close;
      parambyname('@matricula_mte').AsString := edt_matriculadebito_seg.text ;
      parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
      open;
    end;
  end;  
end;

procedure TFrm_Cad_Segurado.SpeedButton6Click(Sender: TObject);
var
  FCep, FPesquisaCEP : String;
begin
  inherited;
  FCep := Cons_ConsultaCadastroCEP(self, 'tbl_cep',
  'cod_cep, bairro_cep, enderecoCompleto_cep, cidade_cep, UF_cep', 'CEP, Bairro, Endereço, Cidade, UF',
  'Localizar CEP', '', true);
  if FCep <> '' then
  begin
    edt_cep_ben.text := copy(FCep,1,5)+'-'+copy(FCep,6,3);
    btn_buscarcepClick(self);
  end;
end;

procedure TFrm_Cad_Segurado.DBGrid3DblClick(Sender: TObject);
var
 b : string;
begin
  inherited;
  b := edt_cod_beneficiario.Text ;
  Frm_Cad_afiliadoOdonto := TFrm_Cad_afiliadoOdonto.Create(Self);
  Frm_Cad_afiliadoOdonto.wCod_afiliado := fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_afiliadoOdonto').AsString;
  BAS_ExecuteCancelar(self);
  Hide;
  Frm_Cad_afiliadoOdonto.ShowModal;
  Frm_Cad_afiliadoOdonto.Release;
  wCod_Beneficiario := b;
  Show;
end;

procedure TFrm_Cad_Segurado.edt_cpf_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
  begin
    if Trim(STR_RemoveChar(STR_RemoveChar(edt_cpf_ben.text,'.'),'-')) <> '' then
      if DB_OpenSQL('select cpf_ben from tbl_beneficiario b, tbl_sitbeneficiario s'+
      ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and tipo_sit <= 1'+
      ' and cpf_ben = '''+edt_cpf_ben.Text+'''') > 0 then
        Dlg_Alerta('CPF ja cadastrado no Cadastro de Segurados !',self);
  end;
end;

procedure TFrm_Cad_Segurado.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  //cbx_cod_cidadeCep.ValItems.Clear;
 // cbx_cod_cidadecorCEP.ValItems.Clear;
 // Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where siglaUf_cep = '+cbx_cod_uf.ValueItem+' order by cidade_cep');
//  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where siglaUf_cep = '+cbx_cod_uf.ValueItem+' order by cidade_cep');
end;

procedure TFrm_Cad_Segurado.EdicaoMatDeb(onnOff:boolean) ;
begin
  pnl_matDebito.Enabled := onnOff ;
//  pnl_MatPrincipal.Enabled := onnOff ;
  btn_editaMatDeb.Enabled := not onnOff ;
  btn_salvaMatDeb.Enabled := onnOff ;
  btn_cancelaMatDeb.Enabled := onnOff ;
end;

procedure TFrm_Cad_Segurado.btn_editaMatDebClick(Sender: TObject);
begin
  inherited;
   { if DB_OpenSQL('select cod_descontofolha as vldesconto_adf'+
    ' from tbl_descontofolha d, tbl_beneficiario b where b.cod_beneficiario = d.cod_beneficiario and matriculadebito_seg = '+
    edt_matriculadebito_seg.text+' and d.cod_empresafolha = '+cbx_cod_empresafolha.valueitem+
    ' and cod_sitdesconto = 1 and cod_sitbeneficiario = 1 and cod_descontofolha not in (select cod_descontofolha from tbl_parcelamento)') > 0 then
    begin
      Dlg_Alerta('Atenção! Há Descontos em Aberto na matrícula '+edt_matriculadebito_seg.text+' Local de Desconto '+cbx_cod_empresafolha.text+'!',self);
      ///////////////Exit;
    end; }
  if FStatus = FST_Alteracao then
  begin
    if DB_OpenSQL('select cod_descontofolha from tbl_descontofolha d where cod_sitdesconto = 1 and dtreferencia_flh >= getdate()-90'+
    ' and matriculadebito_seg = '+edt_matriculadebito_seg.text+' and d.cod_empresafolha = '+cbx_cod_empresafolha.valueitem+
    ' and cod_descontofolha  not in (select cod_descontofolha from tbl_parcelamento)'+
    ' union select d.cod_descontofolha from tbl_descontofolha d, tbl_parcelamento p'+
    ' where d.cod_descontofolha = p.cod_descontofolha  and p.cod_sitdesconto = 1 and dtvencimento_par >= getdate()-90'+
    ' and d.matriculadebito_seg = '+edt_matriculadebito_seg.text+' and d.cod_empresafolha = '+cbx_cod_empresafolha.valueitem) > 0 then
    begin
      Dlg_Alerta('Atenção! Há Descontos em Aberto na matrícula '+edt_matriculadebito_seg.text+' Local de Desconto '+cbx_cod_empresafolha.text+'!',self);
      ///////////////Exit;
    end;
   { if DB_OpenSQL('select * from tbl_afiliadoodonto where matricula_mte = '+edt_matriculadebito_seg.text  +
//    Fdt_principal.spc_cons_adm_matriculaentrada.fieldbyname('matricula_mte').AsString
    ' and cod_empresafolha = '+cbx_cod_empresafolha.valueitem + ' and cod_tipocoberturaodonto <> 9') > 0 then
    begin
      Dlg_Alerta('Não é possível remover a matrícula pois há afiliados cadastrados para esta matricula! Transfira as matrículas dos afiliados para a nova matrícula pela tela 2066.',self);
      Exit;
    end;  }
    EdicaoMatDeb(true);
    Wmatriculadebito_seg:= edt_matriculadebito_seg.Text;
    Wdigitomatdeb_seg:= edt_digitomatdeb_seg.Text;
    Wcod_empresafolha:= cbx_cod_empresafolha.ValueItem;
   // pnl_matDebito.Enabled:= True;
    cbx_cod_empresafolha.SetFocus;
  end;  
end;

procedure TFrm_Cad_Segurado.btn_salvaMatDebClick(Sender: TObject);
begin
  inherited;
  EdicaoMatDeb(false);
  edt_digitomatdeb_seg.Text := IntToStr(CalculaDigito(cbx_cod_empresafolha.valueitem, edt_matriculadebito_seg.Text));
  if edt_matriculadebito_seg.Text <> '' then
    if DB_OpenSQL('select b.inscricao_ben from tbl_matriculaentrada m, tbl_beneficiario b where b.cod_beneficiario = m.cod_beneficiario and matricula_mte = '+
       edt_matriculadebito_seg.Text+' and digito_mte = '+ edt_digitomatdeb_seg.Text+ ' and b.cod_beneficiario = '+ edt_cod_beneficiario.text+
       ' and m.cod_empresafolha = '+cbx_cod_empresafolha.ValueItem+' and situacao_mte = 1 and cod_sitbeneficiario in (1,21,22,24,25,30)') = 0 then
       begin
       Dlg_Alerta('Matrícula de Débito não existe nas Matrículas de Entrada ou Situação Inativo.',self);
       btn_cancelaMatDebClick(Self);
       Exit;
       end;
  edt_matriculaprinc_seg.Text:= edt_matriculadebito_seg.Text;
  edt_digitomatpri_seg.Text:= edt_digitomatdeb_seg.Text;
  Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, cbx_cod_empresafolha.ValueItem);
end;

procedure TFrm_Cad_Segurado.btn_cancelaMatDebClick(Sender: TObject);
begin
  inherited;
  edt_matriculadebito_seg.Text:= Wmatriculadebito_seg;
  edt_digitomatdeb_seg.Text:= Wdigitomatdeb_seg;
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, Wcod_empresafolha);
  EdicaoMatDeb(false);
end;

procedure TFrm_Cad_Segurado.btn_senhaClick(Sender: TObject);
begin
  inherited;
    if DB_OpenSQL('select a.cod_telasistema, a.consultar_acs, a.incluir_acs, a.alterar_acs, '+
    ' a.excluir_acs from tbl_acesso a where a.cod_telasistema = ' + inttostr(FCod_TelaSistema)+
    ' and cod_usuario = '+inttostr(Acs_ValidaDesbloqueio(self)) + ' and a.alterar_acs = 1') > 0 then begin // Verifica se o usuário possui permissão de alterar para a tela
      EscreveLog(btn_senha.name);
      Bas_Salvar(Self);
  end else
    Dlg_Alerta('As alterações NÃO foram salvas!', self);
end;

procedure TFrm_Cad_Segurado.edt_nome_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
    cbx_cod_TipoSegurado.SetFocus;

end;

procedure TFrm_Cad_Segurado.edt_processo_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
  begin
    edt_dtcadastro_ben.SetFocus;
  end;
end;

procedure TFrm_Cad_Segurado.edt_matricula_mteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
  begin
    btn_salvarMatriculaClick(self);
  end;
end;

procedure TFrm_Cad_Segurado.edt_dtnascim_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
  begin
    Key := 0;
    Application.ProcessMessages;
    PageControl.ActivePageIndex := 7;
    btn_novoMatClick(self);
  end;
end;

procedure TFrm_Cad_Segurado.PDJButton3Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
  Frm_Cad_Dependente.wCod_Beneficiario := '' ;
  Frm_Cad_Dependente.ShowModal;
  Frm_Cad_Dependente.Release;
  Show;
end;

procedure TFrm_Cad_Segurado.chb_mailing_benClick(Sender: TObject);
begin
  inherited;
  if (chb_mailing_ben.Checked) and (PageControl.ActivePageIndex = 1) then
    edt_email_ben.SetFocus;
end;

procedure TFrm_Cad_Segurado.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  edt_digito_mte.Text := IntToStr(CalculaDigito(cb3_cod_empresafolha.valueitem, edt_matricula_mte.Text));
end;

procedure TFrm_Cad_Segurado.TabSheet5Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= StrToInt(edt_cod_beneficiario.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Cad_Segurado.btn_buscarcep2Click(Sender: TObject);
var
//  Fcod_cidadeCep : integer;
  Fcod_cidadeCepcor, WQtd : integer;
begin
  inherited;
  {if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cidade_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cepcor_ben.Text,'-')) > 0 then
    begin
      edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadecorCEP', Fcod_cidadeCep);
      edt_dtendereco_ben.Date := Date;
    end;
  end;}

  if edt_cepcor_ben.Text <> '' then
    begin
    if DB_OpenSQL('select c.tipoLogradouro_cep, c.endereco_cep, c.bairro_cep, c.cod_uf, c.cod_cidadeCep, '+
                  'ci.qtd_cep from tbl_CEP c inner join tbl_cidadeCEP ci on c.cod_cidadeCEP = ci.cod_cidadeCEP '+
                  'where c.cod_cep = ' + STR_RemoveChar(edt_cepcor_ben.Text,'-')) > 0 then
      begin
      WQtd:= Tab.fieldByName('qtd_cep').AsInteger;
      if WQTD > 2 then
         begin
         edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
         edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
         end
      else
         if WCEPC = edt_cepcor_ben.Text then
            begin
            edt_enderecocor_ben.Text := WENDC;
            edt_bairrocor_ben.Text := WBAIC;
            end
         else
            begin
            edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
            edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
            end;
      Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCepcor := Tab.fieldByName('cod_cidadeCep').AsInteger;
      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadecorCEP', Fcod_cidadeCepcor);

// Se existe apenas uma única rua na Cidade
      if WQtd < 2 then
         begin
         Dlg_Alerta('ATENÇÃO, CEP Único para a Cidade! ', Self);
         edt_enderecocor_ben.ReadOnly:= False;
         edt_bairrocor_ben.ReadOnly:= False;
         edt_enderecocor_ben.Color:= clWindow;
         edt_bairrocor_ben.Color:= clWindow;
         Panel43.SetFocus;
         edt_enderecocor_ben.SetFocus;
         end;
      edt_dtendereco_ben.Date := Date;
      end
    else
      begin
      if not Dlg_YesNo('CEP ' + edt_cepcor_ben.Text + ' Não Cadastrado, Deseja Cadastrar?', Self) then
         begin
         Panel43.SetFocus;
         edt_cepcor_ben.SetFocus;
         Exit;
         end
      else
         begin
         WCEPDEP:= edt_cepcor_ben.Text;
         btn_chamacadcepClick(Self);
         edt_cepcor_ben.Text:= WCEPDEP;
         Panel43.SetFocus;
         btn_buscarcep2Click(Self);
         edt_cepcor_ben.SetFocus;
         end;
      end;
   end;
end;

procedure TFrm_Cad_Segurado.btn_salvarClick(Sender: TObject);
Var
  x: integer;
begin
  if edt_inscricao_ben.text <> '' then
     FInscricao:= edt_inscricao_ben.text;
  if FStatus = FST_Alteracao then
     if Length(edt_endereco_ben.Text + ', ' + edt_numero_ben.Text + ' ' + edt_complemento_ben.Text) > 80 then
        begin
        Dlg_Alerta('ATENÇÃO ! Logradouro, Nº e Complemento não podem exceder 80 caracteres!', Self);
        Panel16.SetFocus;
        edt_endereco_ben.SetFocus;
        Exit;
        end;
     if Length(edt_enderecocor_ben.Text + ', ' + edt_numerocor_ben.Text + ' ' + edt_complementocor_ben.Text) > 80 then
        begin
        Dlg_Alerta('ATENÇÃO ! Logradouro de Correspondência, Nº e Complemento não podem exceder 80 caracteres!', Self);
        Panel43.SetFocus;
        edt_enderecocor_ben.SetFocus;
        Exit;
        end;
  WMudancas:= '';
  DadosSaida:= LerDadosTela(Self);
  WBenefAnt:= edt_cod_beneficiario.Text;
  WInsAnt:= edt_inscricao_ben.Text;

  inherited;

// Se realmente salvar, gravo auditoria
  if FStatus = FST_Normal then
     if WBotAntes = 'A' then
        begin
        For x:= 1 to High(DadosSaida) do
           if DadosEntrada[x] <> DadosSaida[x] then
              if (DadosSaida[x-1] <> 'digito_mte') or (DadosSaida[x-1] <> 'vldesconto_adf') or (DadosSaida[x-1] <> 'dtreferencia_flh') then
                  WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
        if WMudancas <> '' then
           GeraAuditoria(StrToInt(WBenefAnt), WInsAnt, 'Alterado', 'Situação Anterior ' +WMudancas, 0);
        end
     else
        begin
        WMudancas:= '';
        GeraAuditoria(StrToInt(WBenefAnt), WInsAnt, 'Incluído', WMudancas, 0);
        end;

//  cb2_cod_empresafolha.Tag:= 5;

// Quando titularidade = Segurado, a Mov_2063 permitirá alteração de endereço dos demais dependentes/assistidos
// senão, altera-se somente o beneficiário selecionado
  WtitReq:= 0;
  if wAlteraEndereco then
     begin
     with Fdt_principal.spc_cons_dependente do
        begin
        Close;
        parambyname('@cod_beneficiario').AsInteger := 0 ;
        parambyname('@inscricao_ben').AsString := FInscricao;
        parambyname('@titulacartei_ben').AsInteger := 0 ;
        Open;
        if RecordCount > 0 then
           if Dlg_YesNo('Gostaria de atualizar endereço dos demais dessa inscrição?', Self) then
              begin
              Hide;
              Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
              Frm_Mov_2063.wCod_Beneficiario := FCod_beneficiario;
              Frm_Mov_2063.Wtit:= WtitReq;
              wCod_Beneficiario := '';
              Frm_Mov_2063.ShowModal;
              Frm_Mov_2063.Release;
              Show;
              end;
        end;
     end;
end;

procedure TFrm_Cad_Segurado.cbx_cod_nivelcarChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_nivelcar.ItemIndex <> -1 then
     if cbx_cod_nivelcar.text <> '' then begin
        DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
        edt_informacao_car.Text := Tab.fields[0].asstring;
     end;
end;

procedure TFrm_Cad_Segurado.DBG_matriculaDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarMatClick(Self);
end;

procedure TFrm_Cad_Segurado.cbx_cod_empresafolhaChange(Sender: TObject);
begin
  inherited;
  if pnl_matDebito.Enabled then
    edt_digitomatdeb_seg.Text := IntToStr(CalculaDigito(cbx_cod_empresafolha.valueitem, edt_matriculadebito_seg.Text));
end;

procedure TFrm_Cad_Segurado.cb3_cod_empresafolhaChange(Sender: TObject);
begin
  inherited;
  btn_atualizarClick(self);
  if FStatus = FST_Novo then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, cb3_cod_empresafolha.ValueItem);
end;

procedure TFrm_Cad_Segurado.edt_cep_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
    btn_buscarcepClick(self);
end;

procedure TFrm_Cad_Segurado.edt_cepcor_benExit(Sender: TObject);
begin
  inherited;
    if FStatus = FST_Novo then
    btn_buscarcep2Click(self);
end;

procedure TFrm_Cad_Segurado.edt_cep_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     btn_buscarcepClick(Self);
end;

procedure TFrm_Cad_Segurado.edt_cepcor_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     btn_buscarcep2Click(Self);
end;

procedure TFrm_Cad_Segurado.btn_chamacadcepClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Cep := TFrm_Cad_Cep.Create(Self);
  Frm_Cad_Cep.WCOD_CEP := WCEPDEP;
  Frm_Cad_Cep.ShowModal;
  Frm_Cad_Cep.Release;
  Show;
end;

procedure TFrm_Cad_Segurado.cbx_sexo_benExit(Sender: TObject);
begin
  inherited;
  if ckb_pericia.Checked then
  begin
    if cbx_sexo_ben.ValueItem = 'F' then
    begin
      //Parto a Têrmo
      Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 2);
      cbx_cod_nivelcarChange(self);
      btn_adicionarCarenciaClick(self);
    end;
  end;
end;

procedure TFrm_Cad_Segurado.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  stg_audi.ColWidths[2]:= -1;
  stg_audi.ColWidths[3]:= -1;
  stg_audi.ColWidths[6]:= -1;
  stg_audi.ColWidths[7]:= 440;
  stg_audi.ColWidths[8]:= 80;
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];

  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

procedure TFrm_Cad_Segurado.cbx_cod_planoChange(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
  begin
    cbx_cod_planoPagto.ItemIndex := -1;
    if (cbx_cod_plano.ItemIndex >= 0) then
    begin
      Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto',
      'tbl_planopagto where cod_statusativo = 1 and cod_tipodependente = 0 and cod_plano = '+cbx_cod_plano.valueItem);
    end;
  end;
end;

end.


