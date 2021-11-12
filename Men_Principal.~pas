unit Men_Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Menus, ComCtrls, ExtCtrls, BarPopupMenu, PDJButton,
  BarMenus, BcDrawModule, BcCustomDrawModule, imglist, DCChoice, BDE, jpeg, comobj,
  ActnList, DBCtrls, Mask, BEdit, BChoiceEdit, BEditButton, DBTables;

type
  TFrm_Men_Principal = class(TForm)
    StB_Principal: TStatusBar;
    Panel2: TPanel;
    img_principal: TImage;
    Men_Administ: TBcBarPopupMenu;
    configuraodeParmetros1: TMenuItem;
    Parmetros2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Empresa1: TMenuItem;
    PlanosdeBenefcios1: TMenuItem;
    Consultas1: TMenuItem;
    N7: TMenuItem;
    Processamento2: TMenuItem;
    Btn_Administ: TPDJButton;
    PDJButton1: TPDJButton;
    UnidadesdaFederao1: TMenuItem;
    SituaodosBeneficirios1: TMenuItem;
    EstadoCivil1: TMenuItem;
    TipodeSegurado1: TMenuItem;
    Segurados1: TMenuItem;
    Dependentes1: TMenuItem;
    Timer: TTimer;
    Seguradora1: TMenuItem;
    TipodeSeguros1: TMenuItem;
    FormadeAdmisso1: TMenuItem;
    SituaonaEmpresa1: TMenuItem;
    SetordaEmpresa1: TMenuItem;
    TipodeDependncia1: TMenuItem;
    EstadoFsico1: TMenuItem;
    GraudeParentesco1: TMenuItem;
    Men_Medico: TBcBarPopupMenu;
    MenuItem17: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem24: TMenuItem;
    PDJButton2: TPDJButton;
    Conveniados1: TMenuItem;
    Processamento1: TMenuItem;
    GeraodeArquivoMagntico1: TMenuItem;
    ReceberArquivoMagntico1: TMenuItem;
    ExcluirConta1: TMenuItem;
    RepassedeContas1: TMenuItem;
    CancelamentodeRepasse1: TMenuItem;
    Repasse1: TMenuItem;
    StatuddaConta1: TMenuItem;
    ContasRepassadasContabilidade1: TMenuItem;
    RelaodeGlosas1: TMenuItem;
    DistribuiodeValoresdoConveniadoporPlano1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Extratos1: TMenuItem;
    porConveniado1: TMenuItem;
    porItemdeServio1: TMenuItem;
    AtendimentosRealizadosporBeneficirios1: TMenuItem;
    EmissodeExtratoparaEnvio1: TMenuItem;
    ResumodasContasdoConvnio1: TMenuItem;
    ProcedimentosExecutadosporConveniados1: TMenuItem;
    ExtratodoBeneficirioSimplificado1: TMenuItem;
    ExtratodoBeneficirioDetalhado1: TMenuItem;
    N10: TMenuItem;
    ExtratodoBeneficirioAnaltico1: TMenuItem;
    ExtratodoBeneficirioAnaltico2: TMenuItem;
    ConveniadosItemServio1: TMenuItem;
    ResumodeContasdeConveniados1: TMenuItem;
    porCRM1: TMenuItem;
    DistribuiodasContasdosConveniadosporPlano1: TMenuItem;
    DisquetedeAtualizao1: TMenuItem;
    PlanosdePagamento1: TMenuItem;
    tbn_diretoria: TPDJButton;
    Tarifa1: TMenuItem;
    TotaldeItemdeServio1: TMenuItem;
    BcCustomDrawModule1: TBcCustomDrawModule;
    Men_Diretoria: TBcBarPopupMenu;
    Segurados4: TMenuItem;
    Dependentes3: TMenuItem;
    N13: TMenuItem;
    Conveniados2: TMenuItem;
    ContasRepassadasporPlano1: TMenuItem;
    StatusdaContadoConveniado1: TMenuItem;
    DistribuiodeValoresdasContasdoConveniadoporPlano1: TMenuItem;
    N15: TMenuItem;
    ExtratodoBeneficirioporInscrio1: TMenuItem;
    ExtratosporConveniadosItemdeServioCRMFaixas1: TMenuItem;
    ExtratodoBeneficirioporFaixas1: TMenuItem;
    N16: TMenuItem;
    porCRM2: TMenuItem;
    porItemdeServioProcedimentos1: TMenuItem;
    ItemdeServioProcedimentoporEspecialidade1: TMenuItem;
    ItemdeServioProcedimentoporConveniados1: TMenuItem;
    ItemdeServioProcedimentoporBeneficirios1: TMenuItem;
    porConveniado2: TMenuItem;
    ResumodeContas1: TMenuItem;
    ResumodasContasporConvnio1: TMenuItem;
    N17: TMenuItem;
    ExtratosporConveniadosItemdeServioCRMFaixas2: TMenuItem;
    ExtratodoBeneficirioporFaixas2: TMenuItem;
    N12: TMenuItem;
    porCRM3: TMenuItem;
    porItemdeServioProcedimentos2: TMenuItem;
    ItemdeServioProcedimentoporEspecialidade2: TMenuItem;
    ItemdeServioProcedimentoporConveniados2: TMenuItem;
    ItemdeServioProcedimentoporBeneficirios2: TMenuItem;
    porConveniado3: TMenuItem;
    ResumodeContas2: TMenuItem;
    ResumodasContasporConvnio2: TMenuItem;
    N14: TMenuItem;
    N1: TMenuItem;
    RenovaodaInscriodeDependentes1: TMenuItem;
    N18: TMenuItem;
    GerarDisqueteArquivoMagntico1: TMenuItem;
    N20: TMenuItem;
    HistricodoSegurado1: TMenuItem;
    SetornoInstituto1: TMenuItem;
    Usurios1: TMenuItem;
    FaixaEtria1: TMenuItem;
    AcessosdosUsuriosnoSistema1: TMenuItem;
    Tmr_Senha: TTimer;
    PDJButton3: TPDJButton;
    N23: TMenuItem;
    ResumodeDescontosporInscrio1: TMenuItem;
    Reembolso1: TMenuItem;
    CadastrodePrestadordeServiosMdicos1: TMenuItem;
    IndicesdeReajuste1: TMenuItem;
    FichadeBeneficirios1: TMenuItem;
    Requerimentos1: TMenuItem;
    Etiquetas1: TMenuItem;
    Servidores1: TMenuItem;
    PDJButton4: TPDJButton;
    Men_Tramite: TBcBarPopupMenu;
    CadastroeTramitedeProcessos1: TMenuItem;
    RemessadeProcessos1: TMenuItem;
    UnimedABC1: TMenuItem;
    GeraodeDisquetedeBeneficirios1: TMenuItem;
    N24: TMenuItem;
    btn_contabil: TPDJButton;
    RelacionamentodeItensdeServio1: TMenuItem;
    PDJButton7: TPDJButton;
    PDJButton8: TPDJButton;
    edt_carteirinha: TEdit;
    Carteirinhas1: TMenuItem;
    pnl_alerta: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RelaodeContasnoRepassadas1: TMenuItem;
    N25: TMenuItem;
    Listagens1: TMenuItem;
    ListagemdeCotaodoIndice1: TMenuItem;
    ListagemdeUsuriosdoSistema1: TMenuItem;
    N26: TMenuItem;
    ArquivosdeerrosIMPSAT1: TMenuItem;
    Men_3043: TMenuItem;
    RelatriodeCID1: TMenuItem;
    RelatriodeHistricoBeneficirio1: TMenuItem;
    RelatriodeListadeBeneficirios1: TMenuItem;
    RelatriodeContribuioeDescontos1: TMenuItem;
    RelatriodeDescontosporCdigo1: TMenuItem;
    RelatriodeDescontoPlano1: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    Listagens2: TMenuItem;
    TotaldeContasCarregadasporMs2: TMenuItem;
    Relatrios1: TMenuItem;
    N30: TMenuItem;
    SolicitaoparaInternao1: TMenuItem;
    ControledeInternaes1: TMenuItem;
    RelaodeTotaldeMateriaisporProcPrincipal1: TMenuItem;
    RelatriodefalhasdebaixadaPrefeitura1: TMenuItem;
    RelatriodeBeneficiriopoFaixaSalarial1: TMenuItem;
    RelatriodeHistricodeSalrios1: TMenuItem;
    CadastrodeDescriodeGlosa1: TMenuItem;
    CadastrodeAssuntosdeProcessos1: TMenuItem;
    CadastrodeCID1: TMenuItem;
    CadastrodeClassesdoConveniado1: TMenuItem;
    CadastrodeCoresdePastasdeProcesso1: TMenuItem;
    CadastrodeEspecialidadesMdicasAMB1: TMenuItem;
    CadastrodeCategoriaDPD1: TMenuItem;
    CadastrodeCRM1: TMenuItem;
    CadastrodeErroglosa1: TMenuItem;
    CadastrodeFaixaEtaria1: TMenuItem;
    CadastrodeGrandeGrupo1: TMenuItem;
    CadastrodeIndice1: TMenuItem;
    CadastrodeNivelcar1: TMenuItem;
    CadastrodeParametros1: TMenuItem;
    Segurados2: TMenuItem;
    CadastroSitdesconto1: TMenuItem;
    CadastrodeSituaoDPD1: TMenuItem;
    CadastroStatuscarteira1: TMenuItem;
    CadastrodeStatusconta1: TMenuItem;
    CadastrodeStatusenvio1: TMenuItem;
    CadastrodeSubgrupo1: TMenuItem;
    CadastrodeTelasistema1: TMenuItem;
    CadastrodeTipoEdio1: TMenuItem;
    CadastrodeAcomodao1: TMenuItem;
    CadastrodeTiposdeSaidaInternao1: TMenuItem;
    CadastrodeTiposdeInternao1: TMenuItem;
    Mov20241: TMenuItem;
    EspecialidadesMdicas1: TMenuItem;
    Processos1: TMenuItem;
    N19: TMenuItem;
    Sistema1: TMenuItem;
    Processamento3: TMenuItem;
    NoSeguradosServidores1: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    Parmetros1: TMenuItem;
    N38: TMenuItem;
    btn_AbrirAtalho: TPDJButton;
    btn_close: TPDJButton;
    btn_minim: TPDJButton;                             
    pnl_alertacartao: TImage;
    CadastrodeTelasFavoritas1: TMenuItem;
    CadastrodeDotao1: TMenuItem;
    CadastrodeUnidadeOramentria1: TMenuItem;
    ReagendaentodeParcelamentosemAtraso1: TMenuItem;
    Requerimentopara2viadeCarteirinha1: TMenuItem;
    RelaodasInternaes1: TMenuItem;
    PDJButton5: TPDJButton;
    Label2: TLabel;
    Relatrios2: TMenuItem;
    RelatriodeProcessosporSetor1: TMenuItem;
    lbl_versao: TLabel;
    CadastrodePedidodeCompra1: TMenuItem;
    Agendamento1: TMenuItem;
    CadastrodeReembolso1: TMenuItem;
    Autorizao1: TMenuItem;
    AutorizaoMdica1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    RequerimentosdaRecepo1: TMenuItem;
    Req1: TMenuItem;
    N39: TMenuItem;
    SimulaodeContribuio2: TMenuItem;
    RelatriodeBeneficiriosAtivos1: TMenuItem;
    RelatriodeMovimentaoCadastral1: TMenuItem;
    Edital1: TMenuItem;
    N40: TMenuItem;
    d1: TMenuItem;
    d2: TMenuItem;
    pa: TPanel;
    Label5: TLabel;
    pnl_alerta2: TPanel;
    ExcluirInternao1: TMenuItem;
    N41: TMenuItem;
    ExcluirOcorrncia1: TMenuItem;
    ExcluirContaeoItem1: TMenuItem;
    RelatriodeAgendamentos1: TMenuItem;
    N42: TMenuItem;
    RelatriodosLotesdeEnviodeDescontos1: TMenuItem;
    CadastrodeItemHonorrioEspecial1: TMenuItem;
    CadastrodePendncias1: TMenuItem;
    Label6: TLabel;
    CadastrodeItensdeServio1: TMenuItem;
    CadastrodeTiposdeConveniado1: TMenuItem;
    RecuperaodeGlosas1: TMenuItem;
    SituaesdoConeviado1: TMenuItem;
    N3: TMenuItem;
    CompraseDotaesOramentrias1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    Requerimentos2: TMenuItem;
    Men_Contabil: TBcBarPopupMenu;
    ProcessamentodoBoletoBancrio1: TMenuItem;
    TesourariaDescontos1: TMenuItem;
    ProcessamentodaFolha1: TMenuItem;
    N22: TMenuItem;
    N29: TMenuItem;
    RelatriodeCustoAgregadoporMdico1: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    RelatriosGernciais1: TMenuItem;
    PDJButton6: TPDJButton;
    Men_Farmacia: TBcBarPopupMenu;
    CadastrodeFornecedoresdaFarmciadoIMASF1: TMenuItem;
    RelatriodeFornecedoresdaFarmciadoIMASF1: TMenuItem;
    ConsultasdeVendasdaFarmciapeloBeneficirio1: TMenuItem;
    cbx_cod_telasistema: TComboBox;
    edt_cod_telasistema: TEditButton;
    CadastrodeItensdeTransposio1: TMenuItem;
    Ext1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    AutorizaodeAtendimento1: TMenuItem;
    CadastrodeSubGrupos1: TMenuItem;
    CadastrodeValorBaseparaItensdeServio1: TMenuItem;
    RelaodeTotaldeMateriaiseMedicamentosporPeriodo1: TMenuItem;
    CadastrodeTestoparaoRequerimento1: TMenuItem;
    ListagemTemporriaTutelado1: TMenuItem;
    CadastrodeItemHonorrioporCRM1: TMenuItem;
    EmissodeCarteirinha1: TMenuItem;
    RecebimentodeCarteirinhas1: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    ComprasdaFarmacia1: TMenuItem;
    SugestodeCompra1: TMenuItem;
    PedidosEfetuados1: TMenuItem;
    Patronal1: TMenuItem;
    CarregarArquivoTXT1: TMenuItem;
    ConsultarPatronal1: TMenuItem;
    RelatriodeContribuioPatronal1: TMenuItem;
    ItemdeServioProcedimentonorealizadopeloBeneficirio1: TMenuItem;
    RelatriodeDescontosAntigos1: TMenuItem;
    CadastrodeOfciosdeReembolso1: TMenuItem;
    Etiquetasdo1: TMenuItem;
    ProcedimentosRealizadosporCodigodeAutorizao1: TMenuItem;
    RelaodasAutorizaesMdicas1: TMenuItem;
    RelatriodeIncidnciadeCID1: TMenuItem;
    A1: TMenuItem;
    AlteraodeAgendamentos1: TMenuItem;
    PorMdico1: TMenuItem;
    porEspecialidade1: TMenuItem;
    RelatriodePagamentosporConveniado1: TMenuItem;
    DescontosPFGB1: TMenuItem;
    N47: TMenuItem;
    ArquivodeBaixasdeDescontos1: TMenuItem;
    RegiesABCMetropolitanaetc1: TMenuItem;
    PrCadastrodeAssistidos1: TMenuItem;
    AcompanhamentodaInscriodeAssistidos1: TMenuItem;
    N48: TMenuItem;
    AfiliadosOdontolgico1: TMenuItem;
    CadastrodeAfiliados1: TMenuItem;
    TranfernciadeMatrculas1: TMenuItem;
    EntradaeSaidadeDependente1: TMenuItem;
    CriticasdeAutorizaes1: TMenuItem;
    CriticasdeCorpoClinico1: TMenuItem;
    FatorModeradorparaHospitaisProcedimentos1: TMenuItem;
    BeneficiariosemTratamentoemHospitais1: TMenuItem;
    HospitaisdeReferncia15reais1: TMenuItem;
    EmissodeCarteirinhasdaUnimed1: TMenuItem;
    RecebimentodeCarteirinhasdaUnimed1: TMenuItem;
    ParmetrosparaCadastroRpido1: TMenuItem;
    menuAtualizaRelatorio: TMenuItem;
    N49: TMenuItem;
    CadastrodeCeps1: TMenuItem;
    Vacinao1: TMenuItem;
    RelatriodeProcessossemAndamento1: TMenuItem;
    RelaodeBeneficiariosdoPFGBmaiorouiguala16anos1: TMenuItem;
    GerarArquivosdeFolhaConsignumeFAEE1: TMenuItem;
    ConfigurarEnviodeemail1: TMenuItem;
    GeraodosarquivosdeFolha1: TMenuItem;
    men_simulacontrib: TMenuItem;
    RepassedeContasNovosEmpenhos1: TMenuItem;
    ExtratodeCoparticipao1: TMenuItem;
    CadastrodeGestante1: TMenuItem;
    FechamentoMensal1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PlanosdeBenefcios1Click(Sender: TObject);
    procedure UnidadesdaFederao1Click(Sender: TObject);
    procedure SituaodosBeneficirios1Click(Sender: TObject);
    procedure EstadoCivil1Click(Sender: TObject);
    procedure TipodeSegurado1Click(Sender: TObject);
    procedure Segurados1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure Seguradora1Click(Sender: TObject);
    procedure TipodeSeguros1Click(Sender: TObject);
    procedure FormadeAdmisso1Click(Sender: TObject);
    procedure SituaonaEmpresa1Click(Sender: TObject);
    procedure SetordaEmpresa1Click(Sender: TObject);
    procedure TipodeDependncia1Click(Sender: TObject);
    procedure EstadoFsico1Click(Sender: TObject);
    procedure GraudeParentesco1Click(Sender: TObject);
    procedure Dependentes1Click(Sender: TObject);
    procedure GeraodeArquivoMagntico1Click(Sender: TObject);
    procedure ReceberArquivoMagntico1Click(Sender: TObject);
    procedure ExcluirConta1Click(Sender: TObject);
    procedure RepassedeContas1Click(Sender: TObject);
    procedure CancelamentodeRepasse1Click(Sender: TObject);
    procedure Repasse1Click(Sender: TObject);
    procedure StatuddaConta1Click(Sender: TObject);
    procedure ContasRepassadasContabilidade1Click(Sender: TObject);
    procedure RelaodeGlosas1Click(Sender: TObject);
    procedure DistribuiodeValoresdoConveniadoporPlano1Click(
      Sender: TObject);
    procedure ExtratodoBeneficirioAnaltico1Click(Sender: TObject);
    procedure Conveniados1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExtratodoBeneficirioAnaltico2Click(Sender: TObject);
    procedure ConveniadosItemServio1Click(Sender: TObject);
    procedure ResumodasContasdoConvnio1Click(Sender: TObject);
    procedure ProcedimentosExecutadosporConveniados1Click(Sender: TObject);
    procedure ResumodeContasdeConveniados1Click(Sender: TObject);
    procedure AtendimentosRealizadosporBeneficirios1Click(Sender: TObject);
    procedure porCRM1Click(Sender: TObject);
    procedure DistribuiodasContasdosConveniadosporPlano1Click(
      Sender: TObject);
    procedure DisquetedeAtualizao1Click(Sender: TObject);
    procedure configuraodeParmetros1Click(Sender: TObject);
    procedure PlanosdePagamento1Click(Sender: TObject);
    procedure Tarifa1Click(Sender: TObject);
    procedure TotaldeItemdeServio1Click(Sender: TObject);
    procedure BcCustomDrawModule1DrawMenuItem(Sender: TObject;
      AMenuItem: TMenuItem; ACanvas: TCanvas; ARect: TRect;
      State: TOwnerDrawState; ABarVisible: Boolean;
      var DefaultDraw: Boolean);
    procedure BcCustomDrawModule1MeasureMenuItem(Sender: TObject;
      AMenuItem: TMenuItem; ACanvas: TCanvas; var Width, Height: Integer;
      ABarVisible: Boolean; var DefaultMeasure: Boolean);
    procedure RenovaodaInscriodeDependentes1Click(Sender: TObject);
    procedure GerarDisqueteArquivoMagntico1Click(Sender: TObject);
    procedure HistricodoSegurado1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetornoInstituto1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FaixaEtria1Click(Sender: TObject);
    procedure AcessosdosUsuriosnoSistema1Click(Sender: TObject);
    procedure Tmr_SenhaTimer(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure ResumodeDescontosporInscrio1Click(Sender: TObject);
    procedure btn_AbrirAtalhoClick(Sender: TObject);
    procedure CadastrodePrestadordeServiosMdicos1Click(Sender: TObject);
    procedure IndicesdeReajuste1Click(Sender: TObject);
    procedure FichadeBeneficirios1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Servidores1Click(Sender: TObject);
    procedure CadastroeTramitedeProcessos1Click(Sender: TObject);
    procedure RemessadeProcessos1Click(Sender: TObject);
    procedure GeraodeDisquetedeBeneficirios1Click(Sender: TObject);
    procedure RelacionamentodeItensdeServio1Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure edt_carteirinhaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_carteirinhaExit(Sender: TObject);
    procedure RelaodeContasnoRepassadas1Click(Sender: TObject);
    procedure ListagemdeCotaodoIndice1Click(Sender: TObject);
    procedure ListagemdeEspecialidadesMdicas1Click(Sender: TObject);
    procedure ListagemdeUsuriosdoSistema1Click(Sender: TObject);
    procedure Men_3043Click(Sender: TObject);
    procedure RelatriodeCID1Click(Sender: TObject);
    procedure TotaldeContasCarregadasporMs2Click(Sender: TObject);
    procedure RelatriodeHistricoBeneficirio1Click(Sender: TObject);
    procedure RelatriodeListadeBeneficirios1Click(Sender: TObject);
    procedure RelatriodeContribuioeDescontos1Click(Sender: TObject);
    procedure RelatriodeDescontosporCdigo1Click(Sender: TObject);
    procedure RelatriodeDescontoPlano1Click(Sender: TObject);
    procedure SolicitaoparaInternao1Click(Sender: TObject);
    procedure ControledeInternaes1Click(Sender: TObject);
    procedure RelaodeTotaldeMateriaisporProcPrincipal1Click(
      Sender: TObject);
    procedure RelatriodefalhasdebaixadaPrefeitura1Click(Sender: TObject);
    procedure RelatriodeHistricodeSalrios1Click(Sender: TObject);
    procedure RelatriodeBeneficiriopoFaixaSalarial1Click(Sender: TObject);
    procedure Transferenciadedescontosematraso1Click(Sender: TObject);
    procedure CadastrodeDescriodeGlosa1Click(Sender: TObject);
    procedure CadastrodeAssuntosdeProcessos1Click(Sender: TObject);
    procedure CadastrodeCID1Click(Sender: TObject);
    procedure CadastrodeClassesdoConveniado1Click(Sender: TObject);
    procedure CadastrodeCoresdePastasdeProcesso1Click(Sender: TObject);
    procedure CadastrodeEspecialidadesMdicasAMB1Click(Sender: TObject);
    procedure CadastrodeCategoriaDPD1Click(Sender: TObject);
    procedure CadastrodeCRM1Click(Sender: TObject);
    procedure CadastrodeErroglosa1Click(Sender: TObject);
    procedure CadastrodeFaixaEtaria1Click(Sender: TObject);
    procedure CadastrodeGrandeGrupo1Click(Sender: TObject);
    procedure CadastrodeIndice1Click(Sender: TObject);
    procedure CadastrodeNivelcar1Click(Sender: TObject);
    procedure CadastrodeParametros1Click(Sender: TObject);
    procedure CadastroSitdesconto1Click(Sender: TObject);
    procedure CadastrodeSituaoDPD1Click(Sender: TObject);
    procedure CadastroStatuscarteira1Click(Sender: TObject);
    procedure CadastrodeStatusconta1Click(Sender: TObject);
    procedure CadastrodeStatusenvio1Click(Sender: TObject);
    procedure CadastrodeSubgrupo1Click(Sender: TObject);
    procedure CadastrodeTelasistema1Click(Sender: TObject);
    procedure CadastrodeTipoEdio1Click(Sender: TObject);
    procedure CadastrodeAcomodao1Click(Sender: TObject);
    procedure CadastrodeTiposdeSaidaInternao1Click(Sender: TObject);
    procedure CadastrodeTiposdeInternao1Click(Sender: TObject);
    procedure MovDisqueteBaixaRemessa1Click(Sender: TObject);
    procedure Mov20241Click(Sender: TObject);
    procedure EspecialidadesMdicas1Click(Sender: TObject);
    procedure btn_minimClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure CadastrodeTelasFavoritas1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CadastrodeDotao1Click(Sender: TObject);
    procedure CadastrodeUnidadeOramentria1Click(Sender: TObject);
    procedure Requerimentopara2viadeCarteirinha1Click(Sender: TObject);
    procedure RelaodasInternaes1Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure RelatriodeProcessosporSetor1Click(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure CadastrodeReembolso1Click(Sender: TObject);
    procedure Autorizao1Click(Sender: TObject);
    procedure AutorizaoMdica1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure RequerimentosdaRecepo1Click(Sender: TObject);
    procedure Req1Click(Sender: TObject);
    procedure SimulaodeContribuio2Click(Sender: TObject);
    procedure RelatriodeBeneficiriosAtivos1Click(Sender: TObject);
    procedure RelatriodeMovimentaoCadastral1Click(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure d2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure ExcluirInternao1Click(Sender: TObject);
    procedure ExcluirOcorrncia1Click(Sender: TObject);
    procedure ExcluirContaeoItem1Click(Sender: TObject);
    procedure RelatriodeAgendamentos1Click(Sender: TObject);
    procedure RelatriodosLotesdeEnviodeDescontos1Click(Sender: TObject);
    procedure CadastrodeItemHonorrioEspecial1Click(Sender: TObject);
    procedure CadastrodePendncias1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure CadastrodeItensdeServio1Click(Sender: TObject);
    procedure CadastrodeTiposdeConveniado1Click(Sender: TObject);
    procedure RecuperaodeGlosas1Click(Sender: TObject);
    procedure SituaesdoConeviado1Click(Sender: TObject);
    procedure ArquivosdeerrosIMPSAT1Click(Sender: TObject);
    procedure Requerimentos2Click(Sender: TObject);
    procedure ProcessamentodoBoletoBancrio1Click(Sender: TObject);
    procedure TesourariaDescontos1Click(Sender: TObject);
    procedure ProcessamentodaFolha1Click(Sender: TObject);
    procedure CadastrodeFornecedoresdaFarmciadoIMASF1Click(
      Sender: TObject);
    procedure RelatriodeFornecedoresdaFarmciadoIMASF1Click(
      Sender: TObject);
    procedure ConsultasdeVendasdaFarmciapeloBeneficirio1Click(
      Sender: TObject);
    procedure edt_cod_telasistemaButtonClick(Sender: TObject);
    procedure CadastrodeItensdeTransposio1Click(Sender: TObject);
    procedure Ext1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AutorizaodeAtendimento1Click(Sender: TObject);
    procedure CadastrodeSubGrupos1Click(Sender: TObject);
    procedure CadastrodeValorBaseparaItensdeServio1Click(Sender: TObject);
    procedure RelaodeTotaldeMateriaiseMedicamentosporPeriodo1Click(
      Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CadastrodeTestoparaoRequerimento1Click(Sender: TObject);
    procedure ListagemTemporriaTutelado1Click(Sender: TObject);
    procedure CadastrodeItemHonorrioporCRM1Click(Sender: TObject);
    procedure RecebimentodeCarteirinhas1Click(Sender: TObject);
    procedure EmissodeCarteirinha1Click(Sender: TObject);
    procedure SugestodeCompra1Click(Sender: TObject);
    procedure PedidosEfetuados1Click(Sender: TObject);
    procedure CarregarArquivoTXT1Click(Sender: TObject);
    procedure ConsultarPatronal1Click(Sender: TObject);
    procedure RelatriodeContribuioPatronal1Click(Sender: TObject);
    procedure ItemdeServioProcedimentonorealizadopeloBeneficirio1Click(
      Sender: TObject);
    procedure RelatriodeDescontosAntigos1Click(Sender: TObject);
    procedure CadastrodeOfciosdeReembolso1Click(Sender: TObject);
    procedure Etiquetasdo1Click(Sender: TObject);
    procedure ProcedimentosRealizadosporCodigodeAutorizao1Click(
      Sender: TObject);
    procedure RelaodasAutorizaesMdicas1Click(Sender: TObject);
    procedure RelatriodeIncidnciadeCID1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure AlteraodeAgendamentos1Click(Sender: TObject);
    procedure PorMdico1Click(Sender: TObject);
    procedure porEspecialidade1Click(Sender: TObject);
    procedure RelatriodePagamentosporConveniado1Click(Sender: TObject);
    procedure DescontosPFGB1Click(Sender: TObject);
    procedure ArquivodeBaixasdeDescontos1Click(Sender: TObject);
    procedure RegiesABCMetropolitanaetc1Click(Sender: TObject);
    procedure PrCadastrodeAssistidos1Click(Sender: TObject);
    procedure AcompanhamentodaInscriodeAssistidos1Click(Sender: TObject);
    procedure CadastrodeAfiliados1Click(Sender: TObject);
    procedure TranfernciadeMatrculas1Click(Sender: TObject);
    procedure EntradaeSaidadeDependente1Click(Sender: TObject);
    procedure CriticasdeAutorizaes1Click(Sender: TObject);
    procedure CriticasdeCorpoClinico1Click(Sender: TObject);
    procedure FatorModeradorparaHospitaisProcedimentos1Click(
      Sender: TObject);
    procedure BeneficiariosemTratamentoemHospitais1Click(Sender: TObject);
    procedure HospitaisdeReferncia15reais1Click(Sender: TObject);
    procedure EmissodeCarteirinhasdaUnimed1Click(Sender: TObject);
    procedure RecebimentodeCarteirinhasdaUnimed1Click(Sender: TObject);
    procedure ParmetrosparaCadastroRpido1Click(Sender: TObject);
    procedure menuAtualizaRelatorioClick(Sender: TObject);
    procedure CadastrodeCeps1Click(Sender: TObject);
    procedure Vacinao1Click(Sender: TObject);
    procedure cbx_cod_telasistemaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatriodeProcessossemAndamento1Click(Sender: TObject);
    procedure RelaodeBeneficiariosdoPFGBmaiorouiguala16anos1Click(
      Sender: TObject);
    procedure GerarArquivosdeFolhaConsignumeFAEE1Click(Sender: TObject);
    procedure ConfigurarEnviodeemail1Click(Sender: TObject);
    procedure GeraodosarquivosdeFolha1Click(Sender: TObject);
    procedure men_simulacontribClick(Sender: TObject);
    procedure RepassedeContasNovosEmpenhos1Click(Sender: TObject);
    procedure ExtratodeCoparticipao1Click(Sender: TObject);
    procedure CadastrodeGestante1Click(Sender: TObject);
    procedure FechamentoMensal1Click(Sender: TObject);
  private
    { Private declarations }
    FDrawBuffer: TBitmap;
    function GetDrawBuffer: TBitmap;
    procedure ShowHint(Sender: TObject);
    function AbrirTela(Cod_TelaSistema : Integer): boolean;
    procedure ForceForegroundWindow(Handle: HWND);
    function IsTaskbarAutoHideOn : boolean;
    procedure CarregarFavoritos;
    procedure CarregarParametros;
    procedure AtualizaRelatorios;
    procedure WMEndSession(var Msg : TWMEndSession); message WM_ENDSESSION;
  public
    { Public declarations }
    procedure DrawGradient(Canvas: TCanvas; ARect: TRect; StartingColor,
      EndingColor: TColor; Style: TGradientStyle);

    property DrawBuffer: TBitmap read GetDrawBuffer;
  end;

var
  Frm_Men_Principal: TFrm_Men_Principal;

implementation

uses Cad_Empresa, Dlg_Mensagem, Constantes, dtm_principal, Cad_Plano, Cad_uf, Fun_DB, Fun_Str,
Cad_sitbeneficiario, Cad_estadociv, Cad_tiposegurado, Cad_Segurado, Cad_Seguradora,
Cad_TipoSeguro, Cad_FormaAdm, Cad_SituacEmpr, Cad_SetorEmp, Cad_TipoDependente,
Cad_EstFisico, Cad_grauparent, Cad_dependente, Rel_StatusConta,
Mov_ProcessarConta, Mov_ExcluirConta, Mov_RepasseConta, Mov_CancRepasseConta,
Rel_ContaRepassar, Rel_ContaRepassada, Rel_Glosa, Rel_DespConvPlano001,
Rel_ExtratoBenefi002, Cad_Conveniado, Rel_ExtratoBenefi003, Cad_ConveniadoItem,
Rel_ExtratoConven001, Rel_ExtratoItem001, Rel_ExtratoConven002,
Rel_ExtratoItem003, Rel_ExtratoCRM001, Rel_DespConvPlano002, Mov_DisqueteBenefi,
Cad_PlanoItemValor, Cad_PlanoPagto, Cad_PlanoEmpresa, Cad_Tarifa,
Mov_GeraDescontoFolha, Rel_ExtratoItem004, ShellAPI, BcRectUtilities, Fun_Acesso,
Rel_DependRenovacao, Mov_GeraDSKDesconto, Rel_HistoricoBenefi, Rel_3032,
Mov_DescontoManual, dtm_principal2, Cad_SetorIMASF, Cad_Usuario, Rel_ExtratoItem006,
Cad_Acesso, Dlg_Senha, Rel_ExtratoDesconto001, Mov_DisqueteBaixaBanco,
Fun_ConsCadastro, Cad_PrestadorSM, Cad_CotacaoIndice, Mov_Parcelamento, Rel_FichaBenefi001,
Rel_Requerimento001, Rel_EtiquetaBenefi001, cad_fpm, Mov_Tramite, Mov_RemesTramite,
Mov_GeraDSKUnimed, Mov_GeraDSKBancoBrasil, Mov_GeraNossoNumBoleto, Rel_ExtratoItemRelaciona001,
Dlg_Comunicador, Dlg_EnviaMensagem, Mov_2023, Cad_asstramite, Cad_cid, Cad_classeconvenio,
Cad_corprocesso, Cad_espmedamb, Cad_categoriadpd, Cad_crm, Cad_erroglosa,
Cad_faixaetaria, Cad_grandegrupo, Cad_indice, Cad_nivelcar, Cad_parametro, Cad_sitconveniado,
Cad_sitdesconto, Cad_situacaodpd, Cad_statuscarteira, Cad_statusconta,Cad_statusenvio,
Cad_subgrupo, Cad_telasistema, Cad_tipoedicao, Imp_4049, Imp_4053, Imp_4054,
Rel_3030, Rel_3031, Imp_4052, Rel_3036, Rel_3037, Rel_3006, Mov_2010, Rel_3014,
Rel_3038, Rel_3039, Rel_3028, Rel_3041, Rel_3040, Rel_3042, Rel_3043, Cad_acomodacao,
Cad_Tiposaidainternacao, Cad_Autorizainternacao, Mov_2024, Cad_TipoInternacao, Mov_2025, Mov_2026,
Mov_2027, Rel_3044, Rel_3045, Rel_3046, Rel_3047, Mov_2022, Cad_DescricaoGlosa, Cad_Favorito,
Cad_Dotacao, Cad_UnidadeOrcam, Rel_3048, Cad_PedidoCompra, Rel_3049, Rel_3050, Rel_3034,
Imp_Basico, Rel_3051, Fun_Obj, Fun_Data, Mov_2028, Cad_Agendamento, Rel_3052, Rel_3053,
Cad_AutorizacaoMedica, Rel_3054, Rel_3055, Mov_2030, Rel_3056, Rel_3057, Rel_3058, Rel_3059,
Rel_3060, Cad_TextoEdital, Cad_OcorrenciaEdital, Mov_2032, Mov_2033, Mov_2034, Cad_pendenciaContaMed,
Cad_ItemHonoraEspecial, Rel_3061, Cad_ItemServico, Mov_2035, Rel_3062, Cad_classificacaoConveniado,
Rel_3019, Mov_2005, Mov_2002, Mov_2029, Rel_3029, Cad_fornecedorFarmacia, Rel_3033,
Cad_itemTransposicao, Mov_2036, Mov_2037, Mov_2038, Mov_2039, Mov_2040, Rel_3063, Rel_3064,
Rel_3065, Rel_3066, Tmp_1, Tmp_2, Tmp_3, Rel_3067, Cad_ItemCusto, Rel_3068, Mov_2041,
Mov_2042, Mov_2043, Cad_afiliadoOdonto, Mov_2044, Cad_textoRequerimento, mov_2045,
dtm_principal6, Bas_Impressao, Cad_itemHonorarioCrm, Rel_3069, Rel_3070, Rel_3071,
Cad_oficioReembolso, Rel_3072, Rel_3073, Rel_3074, Rel_3075, Mov_2012, Rel_3012, Cad_Regiao,
Cad_PreCadastro, Mov_2046, Mov_2047, Mov_2048, Mov_2049, Mov_2050, Rel_3076, Mov_2051,
Mov_2052, Mov_2053, Mov_2054, Mov_2055, Rel_3077, Mov_2056, Mov_2057, Mov_2058, Mov_2059,
Mov_2060, Mov_2061, Mov_2062, Rel_3078, Cad_Cep, Mov_2063, Mov_2064, Rel_3079, Mov_2066, Mov_2065,
Mov_2067, Mov_2068, Rel_3080, Mov_2069, Mov_2071, Mov_2070, Rel_3081, Mov_2072, Cad_DocIngresso,
Cad_CargoUsuario, Rel_3082, Rel_3083, Mov_2074, Cad_ConfigEmail, Rel_3084, Mov_2075, Rel_3085,
Rel_3086,Mov_2076, Mov_2077, Rel_3087, Mov_2078;//, Mov_2073, Cad_EmpresaFolha;

{$R *.DFM}

function TFrm_Men_Principal.IsTaskbarAutoHideOn : boolean;
// requer a unit ShellAPI na clausula uses
var
ABData : TAppBarData;
begin
  ABData.cbSize := sizeof(ABData);
  Result := (SHAppBarMessage(ABM_GETSTATE, ABData) and ABS_AUTOHIDE) > 0;
  if result = True then
    Dlg_Alerta('Atenção, A Barra de Tarefas do Windows está definido como alto ocultar, para o sistema é recomendado que esta configuração esteja desabilitada, assim como a opção sempre visivel também deve ser desabilitada !', self);
//    Showmessage('Esta no modo Auto Ocultar .')
end;

procedure TFrm_Men_Principal.CarregarFavoritos;
begin
  DB_OpenSQL('select f.cod_telasistema, t.nome_tls from tbl_favorito f, tbl_telasistema t '+
  ' where f.cod_telasistema = t.cod_telasistema and f.cod_usuario = '+str_inttostr(FCod_Usuario));
  cbx_cod_telasistema.Text := '' ;
  cbx_cod_telasistema.Style := csDropDownList ;
  cbx_cod_telasistema.Items.Clear;
  while not Tab.EOF do begin
    cbx_cod_telasistema.Items.AddObject(Tab.Fields[0].AsString + '  ' + Tab.Fields[1].AsString, TObject(Tab.Fields[0].AsInteger));
    Tab.Next;
  end;
  DB_ClearSQL;
end;

procedure TFrm_Men_Principal.CarregarParametros;
begin
  DB_OpenSQL('select nomeChefeSecaoMedica_par, nomeChefeSecaoAdministrativa_par, nomeChefeRevContasMed_par,'+
  ' cargoChefeSecaoMedia_par, cargoChefeSecaoAdministrativa_par, cargoChefeRevContasMed_par from tbl_parametro ');
  PAR_ChefiaMedico := Tab.Fields[0].AsString;
  PAR_ChefiaADM := Tab.Fields[1].AsString;
  PAR_ChefiaRevContas := Tab.Fields[2].AsString;
  PAR_CargoMedico := Tab.Fields[3].AsString;
  PAR_CargoADM := Tab.Fields[4].AsString;
  PAR_CargoRevContas := Tab.Fields[5].AsString;
  DB_ClearSQL;
end;

procedure TFrm_Men_Principal.AtualizaRelatorios;
var
 Arquivo : TSHFileOpStruct;
 origem, destino: String;
begin
  try
    origem:= 'P:\reports';
    destino:='C:\Sistemas';
    FillChar(Arquivo,SizeOf(Arquivo), 0);
    with Arquivo do
    begin
      wFunc := FO_COPY;
      pFrom := PChar(origem);
      pTo := PChar(destino);
      fFlags:= FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
    end;
    SHFileOperation(Arquivo);
  except

  end;
end;

procedure TFrm_Men_Principal.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;
                                          
procedure TFrm_Men_Principal.ShowHint(Sender: TObject);
begin
  StB_Principal.Panels[1].text := Application.Hint;
end;

procedure TFrm_Men_Principal.FormCreate(Sender: TObject);
var
 horaAtual : TDateTime;
 horaPermitida : TDateTime;
begin
  IniciaLog(LOG_LOCALGRAVACAO); //Abre o Log do Sistema
  horaAtual := now;
  horaPermitida := StrToDateTime(FormatDateTime('dd/mm/yyyy',date)+' 10:00:00');
  if (DayOfWeek(Date) = 2) and (horaAtual <= horaPermitida) then
  begin
    AtualizaRelatorios;
  end;
  pnl_alerta.visible := DB_OpenDataBase(self) > 1 ;
  pnl_alerta2.Visible := BD_ServerName <> 'dti-sql-02';
//  SetTaskBar(false);
end;

procedure TFrm_Men_Principal.FormShow(Sender: TObject);
begin
  edt_cod_telasistema.SetFocus;
  Application.OnHint := ShowHint ;
  DB_ExecSQL('set transaction isolation level read uncommitted');
  IsTaskbarAutoHideOn;
  Top := 0;
  Left := 0;
  Width := Screen.Width;
  Height := Screen.Height;
  CarregarFavoritos;
  CarregarParametros;
end;

procedure TFrm_Men_Principal.Empresa1Click(Sender: TObject);
begin
  AbrirTela(1004);
end;

procedure TFrm_Men_Principal.PDJButton1Click(Sender: TObject);
begin
  if not Dlg_YesNo(MSG_DB_CON_SaiSistema, Self) then Exit ;
  Close;
end;

procedure TFrm_Men_Principal.PlanosdeBenefcios1Click(Sender: TObject);
begin
  AbrirTela(1010);
end;

procedure TFrm_Men_Principal.UnidadesdaFederao1Click(Sender: TObject);
begin
  AbrirTela(1023);
end;

procedure TFrm_Men_Principal.SituaodosBeneficirios1Click(Sender: TObject);
begin
  AbrirTela(1017);

end;

procedure TFrm_Men_Principal.EstadoCivil1Click(Sender: TObject);
begin
  AbrirTela(1005);
end;

procedure TFrm_Men_Principal.TipodeSegurado1Click(Sender: TObject);
begin
  AbrirTela(1021);

end;
                                                                                                                                                                                                                                                                                                                                                                                                                    
procedure TFrm_Men_Principal.Segurados1Click(Sender: TObject);
begin
  AbrirTela(1014);
end;

procedure TFrm_Men_Principal.TimerTimer(Sender: TObject);
begin
//  StB_Principal.Panels[2].text := DateTimeToStr(Now) ;
  StB_Principal.Panels[2].text := FormatDateTime('dd/mm/yyyy hh:mm', Now) ;
end;

procedure TFrm_Men_Principal.Seguradora1Click(Sender: TObject);
begin
  AbrirTela(1015);
end;

procedure TFrm_Men_Principal.TipodeSeguros1Click(Sender: TObject);
begin
  AbrirTela(1022);
end;

procedure TFrm_Men_Principal.FormadeAdmisso1Click(Sender: TObject);
begin
 AbrirTela(1007);
end;

procedure TFrm_Men_Principal.SituaonaEmpresa1Click(Sender: TObject);
begin
  AbrirTela(1018);
end;

procedure TFrm_Men_Principal.SetordaEmpresa1Click(Sender: TObject);
begin
  AbrirTela(1016);
end;

procedure TFrm_Men_Principal.TipodeDependncia1Click(Sender: TObject);
begin
  AbrirTela(1020);
end;

procedure TFrm_Men_Principal.EstadoFsico1Click(Sender: TObject);
begin
  AbrirTela(1006);
end;

procedure TFrm_Men_Principal.GraudeParentesco1Click(Sender: TObject);
begin
  AbrirTela(1008);
end;

procedure TFrm_Men_Principal.Dependentes1Click(Sender: TObject);
begin
  AbrirTela(1003);
end;

procedure TFrm_Men_Principal.GeraodeArquivoMagntico1Click(Sender: TObject);
begin
  winExec('c:\conveniado\stconven.exe', sw_show);
end;

procedure TFrm_Men_Principal.ReceberArquivoMagntico1Click(Sender: TObject);
begin
  AbrirTela(2009);
end;

procedure TFrm_Men_Principal.ExcluirConta1Click(Sender: TObject);
begin
  AbrirTela(2006);
end;

procedure TFrm_Men_Principal.RepassedeContas1Click(Sender: TObject);
begin
  AbrirTela(2011);
end;

procedure TFrm_Men_Principal.CancelamentodeRepasse1Click(Sender: TObject);
begin
  AbrirTela(2001);
end;

procedure TFrm_Men_Principal.Repasse1Click(Sender: TObject);
begin
  AbrirTela(3002);
end;

procedure TFrm_Men_Principal.StatuddaConta1Click(Sender: TObject);
begin
  AbrirTela(3020);
end;

procedure TFrm_Men_Principal.ContasRepassadasContabilidade1Click(
  Sender: TObject);
begin
  AbrirTela(3001);
end;

procedure TFrm_Men_Principal.RelaodeGlosas1Click(Sender: TObject);
begin
  AbrirTela(3017);
end;

procedure TFrm_Men_Principal.DistribuiodeValoresdoConveniadoporPlano1Click(
  Sender: TObject);
begin
  AbrirTela(3004);
end;

procedure TFrm_Men_Principal.ExtratodoBeneficirioAnaltico1Click(
  Sender: TObject);
begin
  AbrirTela(3007);
end;

procedure TFrm_Men_Principal.Conveniados1Click(Sender: TObject);
begin
  AbrirTela(1001);
end;

procedure TFrm_Men_Principal.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then begin
    case key of
    //  82 : ReceberConta1Click(self) ;
      67 : ReceberArquivoMagntico1Click(self) ;
      80 : RepassedeContas1Click(self) ;
      83 : Segurados1Click(self) ;
      68 : Dependentes1Click(self) ;
    end;

  end;
//    showmessage(floattostr(key));
end;

procedure TFrm_Men_Principal.ExtratodoBeneficirioAnaltico2Click(
  Sender: TObject);
begin
  AbrirTela(3008);
end;

procedure TFrm_Men_Principal.ConveniadosItemServio1Click(Sender: TObject);
begin
  AbrirTela(1002);
end;

procedure TFrm_Men_Principal.ResumodasContasdoConvnio1Click(Sender: TObject);
begin
  AbrirTela(3009);
end;

procedure TFrm_Men_Principal.ProcedimentosExecutadosporConveniados1Click(
  Sender: TObject);
begin
  AbrirTela(3013);
end;

procedure TFrm_Men_Principal.ResumodeContasdeConveniados1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoConven002 := TFrm_Rel_ExtratoConven002.Create(Self);
  Frm_Rel_ExtratoConven002.ShowModal;
  Frm_Rel_ExtratoConven002.Release;
  Show;
end;


procedure TFrm_Men_Principal.AtendimentosRealizadosporBeneficirios1Click(
  Sender: TObject);
begin
  AbrirTela(3015);
end;

procedure TFrm_Men_Principal.porCRM1Click(Sender: TObject);
begin
  AbrirTela(3011)
end;

procedure TFrm_Men_Principal.DistribuiodasContasdosConveniadosporPlano1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_DespConvPlano002 := TFrm_Rel_DespConvPlano002.Create(Self);
  Frm_Rel_DespConvPlano002.ShowModal;
  Frm_Rel_DespConvPlano002.Release;
  Show;
end;

procedure TFrm_Men_Principal.DisquetedeAtualizao1Click(Sender: TObject);
begin
  AbrirTela(2004);
end;

procedure TFrm_Men_Principal.configuraodeParmetros1Click(Sender: TObject);
begin
  AbrirTela(1011);
end;

procedure TFrm_Men_Principal.PlanosdePagamento1Click(Sender: TObject);
begin
  AbrirTela(1013);
end;

procedure TFrm_Men_Principal.Tarifa1Click(Sender: TObject);
begin
 AbrirTela(1019);
end;

procedure TFrm_Men_Principal.TotaldeItemdeServio1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoItem004 := TFrm_Rel_ExtratoItem004.Create(Self);
  Frm_Rel_ExtratoItem004.ShowModal;
  Frm_Rel_ExtratoItem004.Release;
  Show;
end;


function TFrm_Men_Principal.GetDrawBuffer: TBitmap;
begin
  if not Assigned(FDrawBuffer) then
    FDrawBuffer := TBitmap.Create;
  Result := FDrawBuffer;
end;

{ Gradient drawing uses DrawBuffer to buffer the drawing to memory and then
  copying drawn part to visible screen (makes things faster but uses a bit
  more memory and resources). Recommended way if using gsDiagonal* gradient
  styles. BarMenus.DrawGradient does not use buffer as it is low level procedure. }
procedure TFrm_Men_Principal.DrawGradient(Canvas: TCanvas; ARect: TRect; StartingColor,
  EndingColor: TColor; Style: TGradientStyle);
begin
  DrawBuffer.Height := RectHeight(ARect);
  DrawBuffer.Width := RectWidth(ARect);
  BarMenus.DrawGradient(DrawBuffer, nil, BitmapRect(DrawBuffer), startingColor, EndingColor, Style);
  Canvas.Draw(ARect.Left, ARect.Top, DrawBuffer); // copy the buffer
  DrawBuffer.Height := 0;
  DrawBuffer.Width := 0;
end;

procedure TFrm_Men_Principal.BcCustomDrawModule1DrawMenuItem(
  Sender: TObject; AMenuItem: TMenuItem; ACanvas: TCanvas; ARect: TRect;
  State: TOwnerDrawState; ABarVisible: Boolean; var DefaultDraw: Boolean);
var
  R: TRect;
  ImageList: TCustomImageList;

  procedure DrawCheckedPattern(Inflate: Boolean);
  begin
    if odChecked in State then
    begin
      if Inflate then InflateRect(R, -2, -2);
//      ACanvas.Brush.Bitmap := AllocPatternBitmap(clBtnFace, clWhite);
//      ACanvas.FillRect(R);
      ACanvas.Brush.Color := clBlack;
      ACanvas.FrameRect(R);
      if Inflate then InflateRect(R, 2, 2);
    end;
  end;

begin
  DefaultDraw := False;
  { menuitem drawing }
  if (AMenuItem.Caption = cLineCaption) then
  begin
    { background }
    DrawGradient(ACanvas, ARect, clWhite, clBtnFace, gsHorizontal);

    { align the text and draw it }
    R := ARect;
    R.Left := R.Right - ACanvas.TextWidth(AMenuItem.Hint) - 15;
    ACanvas.Brush.Style := bsClear;
    DrawText(ACanvas.Handle,
      PChar(AMenuItem.Hint), Length(AMenuItem.Hint),
      R, 0);

    { draw the line so that it won't draw over text }
    R := ARect;
    Inc(R.Top, (R.Bottom - R.Top) div 2);
    R.Bottom := R.Top + 1;
    Dec(R.Right, ACanvas.TextWidth(AMenuItem.Hint) + 10 + 10);
    ACanvas.Brush.Color := clGray;
    ACanvas.FillRect(R);
  end else
  begin
    { use default drawing for mainmenu top items }
    if IsInTopMainMenu(AMenuItem) then
    begin
      DefaultDraw := True;
      Exit;
    end;
    with ACanvas do
    begin
      R := ARect;
      if odSelected in State then
      begin
        { draw frame and selection gradient }
        Brush.Color := clGray;
        FrameRect(R);
        InflateRect(R, -2, -2);
        DrawGradient(ACanvas, R, clWhite, AMenuItem.Tag, gsDiagonalLeftRight);
        DrawCheckedPattern(False);
        { adjust rect so that text will be aligned to right }
        R.Left := R.Right - TextWidth(AMenuItem.Caption) - 5;
        Font.Color := clWhite; // caption color
      end else
      begin
        { draw background gradient }
        DrawGradient(ACanvas, R, clWhite, clBtnFace, gsHorizontal);
        DrawCheckedPattern(True);
        { leave space for menuitem image }
        Inc(R.Left, 38);
        Font.Color := clBlack; // caption color
      end;
      if (odDisabled in State) or (odGrayed in State) then
        Font.Color := clGrayText;

      { draw caption }
      InflateRect(R, 0, -(
        (R.Bottom - R.Top - TextHeight(AMenuItem.Caption) - 1)
         div 2));
      Brush.Style := bsClear;
      DrawText(Handle,
        PChar(AMenuItem.Caption), Length(AMenuItem.Caption),
        R, 0);

      { draw menuitem image }
      with AMenuItem do
      begin
        ImageList := GetImageList;              
        if (ImageIndex <> -1) and Assigned(ImageList) then
          ImageList.Draw(ACanvas, ARect.Left + 11,
            ARect.Top + (ARect.Bottom - ARect.Top - ImageList.Height) div 2, ImageIndex);
      end;
    end;
  end;
end;

procedure TFrm_Men_Principal.BcCustomDrawModule1MeasureMenuItem(
  Sender: TObject; AMenuItem: TMenuItem; ACanvas: TCanvas; var Width,
  Height: Integer; ABarVisible: Boolean; var DefaultMeasure: Boolean);
begin
  if not IsInTopMainMenu(AMenuItem) then
  begin
    DefaultMeasure := False;
    if not (AMenuItem.Caption = cLineCaption) then
    begin
      Height := 22;
      Width := Width + 32;
    end;
  end;
end;

procedure TFrm_Men_Principal.RenovaodaInscriodeDependentes1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_DependRenovacao := TFrm_Rel_DependRenovacao.Create(Self);
  Frm_Rel_DependRenovacao.ShowModal;
  Frm_Rel_DependRenovacao.Release;
  Show;
end;

procedure TFrm_Men_Principal.GerarDisqueteArquivoMagntico1Click(
  Sender: TObject);
begin
  AbrirTela(2008);
end;

procedure TFrm_Men_Principal.HistricodoSegurado1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_HistoricoBenefi := TFrm_Rel_HistoricoBenefi.Create(Self);
  Frm_Rel_HistoricoBenefi.ShowModal;
  Frm_Rel_HistoricoBenefi.Release;
  Show;
end;

procedure TFrm_Men_Principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DB_TranCount > 0 then begin
    while DB_TranCount > 0 do
      DB_Commit;
    Dlg_Erro('! ! ! A T E N Ç Ã O ! ! ! COMUNIQUE URGENTE AO CPD QUE OCORREU O ERRO "T00100" ! As informações cadastradas no sistema serão perdidas !', SELF);
    Dlg_EnviaMSGbyNetSend(SYS_Operadores, 'SISTEMA ENCERROU COM A TRANSAÇÃO ABERTA : '+Acs_GetComputerName);
    Action := caNone;
    exit;
  end;
  fdt_principal.bd_imasf.Close;
  Application.Terminate;
//  fdt_principal2.bd_imasf2.Close;
end;

procedure TFrm_Men_Principal.SetornoInstituto1Click(Sender: TObject);
begin
  AbrirTela(1024);
end;

procedure TFrm_Men_Principal.Usurios1Click(Sender: TObject);
begin
  AbrirTela(1025);
end;

procedure TFrm_Men_Principal.FaixaEtria1Click(Sender: TObject);
begin
  AbrirTela(3022);
end;

procedure TFrm_Men_Principal.AcessosdosUsuriosnoSistema1Click(
  Sender: TObject);
begin
  AbrirTela(1026);

end;

procedure TFrm_Men_Principal.Tmr_SenhaTimer(Sender: TObject);
begin
  Tmr_Senha.Enabled := false ;
  if Pos('P:\', ExtractFilePath(ParamStr(0))) > 0 then begin
    Dlg_Alerta('O programa não pode ser executado diretamente de uma unidade de rede ! Ele deve ser executado em uma pasta local, como "C:\Sistemas".',self);
    Application.Terminate;
    exit;
  end;
  Hide;
  Frm_Dlg_Senha := TFrm_Dlg_Senha.Create(Self);
  Frm_Dlg_Senha.ShowModal;
  Frm_Dlg_Senha.Release;
  StB_Principal.Panels[0].text := 'Usuário => '+FNome_Usu ;
  StB_Principal.Panels[3].text := 'SN : '+BD_ServerName ;
  lbl_versao.Caption := 'Versão : '+getversion;
  Show;
  //  IniciaLog(LOG_LOCALGRAVACAO); //Abre o Log do Sistema  
  EscreveLog('','Entrou no Sistema Normalmente '+lbl_versao.Caption+' ----------- INICIA LOG ----------');
end;

procedure TFrm_Men_Principal.PDJButton3Click(Sender: TObject);
begin
  Tmr_Senha.Enabled := true ;
end;

procedure TFrm_Men_Principal.ResumodeDescontosporInscrio1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoDesconto001 := TFrm_Rel_ExtratoDesconto001.Create(Self);
  Frm_Rel_ExtratoDesconto001.FMesReferencia := '' ;
  Frm_Rel_ExtratoDesconto001.FAnoReferencia := '' ;
  Frm_Rel_ExtratoDesconto001.FEmpresaFolha := '' ;
  Frm_Rel_ExtratoDesconto001.ShowModal;
  Frm_Rel_ExtratoDesconto001.Release;
  Show;
end;

function TFrm_Men_Principal.AbrirTela(Cod_TelaSistema : Integer): boolean;
begin
  result := true ;
  Hide;
  case Cod_TelaSistema of
    1001 : begin
      Frm_Cad_Conveniado := TFrm_Cad_Conveniado.Create(Self);
      Frm_Cad_Conveniado.ShowModal;
      Frm_Cad_Conveniado.Release;
    end;
    1002 : begin
     Frm_Cad_ConveniadoItem := TFrm_Cad_ConveniadoItem.Create(Self);
     Frm_Cad_ConveniadoItem.ShowModal;
     Frm_Cad_ConveniadoItem.Release;
    end;
    1003 : begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := '' ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
    end;
    1004 : begin
      Frm_Cad_Empresa := TFrm_Cad_Empresa.Create(Self);
      Frm_Cad_Empresa.ShowModal;
      Frm_Cad_Empresa.Release;
    end;
    1005 : begin
      Frm_Cad_EstadoCiv := TFrm_Cad_EstadoCiv.Create(Self);
      Frm_Cad_EstadoCiv.ShowModal;
      Frm_Cad_EstadoCiv.Release;
    end;
    1006 : begin
      Frm_Cad_EstFisico := TFrm_Cad_EstFisico.Create(Self);
      Frm_Cad_EstFisico.ShowModal;
      Frm_Cad_EstFisico.Release;
    end;
    1007 : begin
      Frm_Cad_FormaAdm := TFrm_Cad_FormaAdm.Create(Self);
      Frm_Cad_FormaAdm.ShowModal;
      Frm_Cad_FormaAdm.Release;
    end;
    1008 : begin
      Frm_Cad_GrauParent := TFrm_Cad_GrauParent.Create(Self);
      Frm_Cad_GrauParent.ShowModal;
      Frm_Cad_GrauParent.Release;
    end;
    1009 : begin
      Frm_Cad_fornecedorFarmacia := TFrm_Cad_fornecedorFarmacia.Create(Self);
      Frm_Cad_fornecedorFarmacia.ShowModal;
      Frm_Cad_fornecedorFarmacia.Release;
    end;
    1010 : begin
      Frm_Cad_Plano := TFrm_Cad_Plano.Create(Self);
      Frm_Cad_Plano.ShowModal;
      Frm_Cad_Plano.Release;
    end;
    1011 : begin
      Frm_Cad_PlanoEmpresa := TFrm_Cad_PlanoEmpresa.Create(Self);
      Frm_Cad_PlanoEmpresa.ShowModal;
      Frm_Cad_PlanoEmpresa.Release;
    end;
    1012 : begin
      Frm_Cad_PlanoItemValor := TFrm_Cad_PlanoItemValor.Create(Self);
      Frm_Cad_PlanoItemValor.ShowModal;
      Frm_Cad_PlanoItemValor.Release;
    end;
    1013 : begin
      Frm_Cad_PlanoPagto := TFrm_Cad_PlanoPagto.Create(Self);
      Frm_Cad_PlanoPagto.ShowModal;
      Frm_Cad_PlanoPagto.Release;
    end;
    1014 : begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := '' ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end;
    1015 : begin
      Frm_Cad_Seguradora := TFrm_Cad_Seguradora.Create(Self);
      Frm_Cad_Seguradora.ShowModal;
      Frm_Cad_Seguradora.Release;
    end;
    1016 : begin
      Frm_Cad_SetorEmp := TFrm_Cad_SetorEmp.Create(Self);
      Frm_Cad_SetorEmp.ShowModal;
      Frm_Cad_SetorEmp.Release;
    end;
    1017 : begin
      Frm_Cad_SitBeneficiario := TFrm_Cad_SitBeneficiario.Create(Self);
      Frm_Cad_SitBeneficiario.ShowModal;
      Frm_Cad_SitBeneficiario.Release;
    end;
    1018 : begin
      Frm_Cad_SituacEmpr := TFrm_Cad_SituacEmpr.Create(Self);
      Frm_Cad_SituacEmpr.ShowModal;
      Frm_Cad_SituacEmpr.Release;
    end;
    1019 : begin
      Frm_Cad_Tarifa := TFrm_Cad_Tarifa.Create(Self);
      Frm_Cad_Tarifa.ShowModal;
      Frm_Cad_Tarifa.Release;
    end;
    1020 : begin
      Frm_Cad_TipoDependente := TFrm_Cad_TipoDependente.Create(Self);
      Frm_Cad_TipoDependente.ShowModal;
      Frm_Cad_TipoDependente.Release;
    end;
    1021 : begin
      Frm_Cad_TipoSegurado := TFrm_Cad_TipoSegurado.Create(Self);
      Frm_Cad_TipoSegurado.ShowModal;
      Frm_Cad_TipoSegurado.Release;
    end;
    1022 : begin
      Frm_Cad_TipoSeguro := TFrm_Cad_TipoSeguro.Create(Self);
      Frm_Cad_TipoSeguro.ShowModal;
      Frm_Cad_TipoSeguro.Release;
    end;
    1023 : begin
      Frm_Cad_UF := TFrm_Cad_UF.Create(Self);
      Frm_Cad_UF.ShowModal;
      Frm_Cad_UF.Release;
    end;
    1024 : begin
      Frm_Cad_SetorIMASF := TFrm_Cad_SetorIMASF.Create(Self);
      Frm_Cad_SetorIMASF.ShowModal;
      Frm_Cad_SetorIMASF.Release;
    end;
    1025 : begin
      Frm_Cad_Usuario := TFrm_Cad_Usuario.Create(Self);
      Frm_Cad_Usuario.ShowModal;
      Frm_Cad_Usuario.Release;
    end;
    1026 : begin
      Frm_Cad_Acesso := TFrm_Cad_Acesso.Create(Self);
      Frm_Cad_Acesso.ShowModal;
      Frm_Cad_Acesso.Release;
    end;
    1027 : begin
      Frm_Cad_PrestadorSM := TFrm_Cad_PrestadorSM.Create(Self);
      Frm_Cad_PrestadorSM.ShowModal;
      Frm_Cad_PrestadorSM.Release;
    end;
    1028 : begin
      Frm_Cad_CotacaoIndice := TFrm_Cad_CotacaoIndice.Create(Self);
      Frm_Cad_CotacaoIndice.ShowModal;
      Frm_Cad_CotacaoIndice.Release;
    end;
    1029 : begin
      Frm_Cad_fpm := TFrm_Cad_fpm.Create(Self);
      Frm_Cad_fpm.ShowModal;
      Frm_Cad_fpm.Release;
    end;
    1030 : begin
      Frm_Cad_asstramite := TFrm_Cad_asstramite.Create(Self);
      Frm_Cad_asstramite.ShowModal;
      Frm_Cad_asstramite.Release;
    end;
    1031 : begin
      Frm_Cad_Cid := TFrm_Cad_Cid.Create(Self);
      Frm_Cad_Cid.ShowModal;
      Frm_Cad_Cid.Release;
    end;
    1032 : begin
      Frm_Cad_classeconvenio := TFrm_Cad_classeconvenio.Create(Self);
      Frm_Cad_classeconvenio.ShowModal;
      Frm_Cad_classeconvenio.Release;
    end;
    1033 : begin
      Frm_Cad_corprocesso := TFrm_Cad_corprocesso.Create(Self);
      Frm_Cad_corprocesso.ShowModal;
      Frm_Cad_corprocesso.Release;
    end;
    1034 : begin
      Frm_Cad_espmedamb := TFrm_Cad_espmedamb.Create(Self);
      Frm_Cad_espmedamb.ShowModal;
      Frm_Cad_espmedamb.Release;
    end;
    1035 : begin
      Frm_Cad_categoriadpd := TFrm_Cad_categoriadpd.Create(Self);
      Frm_Cad_categoriadpd.ShowModal;
      Frm_Cad_categoriadpd.Release;
      end;
    1036 : begin
      Frm_Cad_itemTransposicao := TFrm_Cad_itemTransposicao.Create(Self);
      Frm_Cad_itemTransposicao.ShowModal;
      Frm_Cad_itemTransposicao.Release;
    end;
    1037 : begin
      Frm_Cad_crm := TFrm_Cad_crm.Create(Self);
      Frm_Cad_crm.ShowModal;
      Frm_Cad_crm.Release;
    end;
    1038 : begin
      Frm_Cad_erroglosa := TFrm_Cad_erroglosa.Create(Self);
      Frm_Cad_erroglosa.ShowModal;
      Frm_Cad_erroglosa.Release;
    end;
    1039 : begin
      Frm_Cad_faixaetaria := TFrm_Cad_faixaetaria.Create(Self);
      Frm_Cad_faixaetaria.ShowModal;
      Frm_Cad_faixaetaria.Release;
    end;
    1040 : begin
      Frm_Cad_grandegrupo := TFrm_Cad_grandegrupo.Create(Self);
      Frm_Cad_grandegrupo.ShowModal;
      Frm_Cad_grandegrupo.Release;
    end;
    1041 : begin
      Frm_Cad_indice := TFrm_Cad_indice.Create(Self);
      Frm_Cad_indice.ShowModal;
      Frm_Cad_indice.Release;
    end;
    1042 : begin
      Frm_Cad_nivelcar := TFrm_Cad_nivelcar.Create(Self);
      Frm_Cad_nivelcar.ShowModal;
      Frm_Cad_nivelcar.Release;
    end;
    1043 : begin
      Frm_Cad_parametro := TFrm_Cad_parametro.Create(Self);
      Frm_Cad_parametro.ShowModal;
      Frm_Cad_parametro.Release;
    end;
    1044 : begin
      Frm_Cad_sitconveniado := TFrm_Cad_sitconveniado.Create(Self);
      Frm_Cad_sitconveniado.ShowModal;
      Frm_Cad_sitconveniado.Release;
    end;
    1045 : begin
      Frm_Cad_sitdesconto := TFrm_Cad_sitdesconto.Create(Self);
      Frm_Cad_sitdesconto.ShowModal;
      Frm_Cad_sitdesconto.Release;
    end;
    1046 : begin
      Frm_Cad_situacaodpd := TFrm_Cad_situacaodpd.Create(Self);
      Frm_Cad_situacaodpd.ShowModal;
      Frm_Cad_situacaodpd.Release;
    end;
    1047 : begin
      Frm_Cad_statuscarteira := TFrm_Cad_statuscarteira.Create(Self);
      Frm_Cad_statuscarteira.ShowModal;
      Frm_Cad_statuscarteira.Release;
    end;
    1048 : begin
      Frm_Cad_statusconta := TFrm_Cad_statusconta.Create(Self);
      Frm_Cad_statusconta.ShowModal;
      Frm_Cad_statusconta.Release;
    end;
    1049 : begin
      Frm_Cad_statusenvio := TFrm_Cad_statusenvio.Create(Self);
      Frm_Cad_statusenvio.ShowModal;
      Frm_Cad_statusenvio.Release;
    end;
    1050 : begin
      Frm_Cad_subgrupo := TFrm_Cad_subgrupo.Create(Self);
      Frm_Cad_subgrupo.ShowModal;
      Frm_Cad_subgrupo.Release;
    end;
    1051 : begin
      Frm_Cad_telasistema := TFrm_Cad_telasistema.Create(Self);
      Frm_Cad_telasistema.ShowModal;
      Frm_Cad_telasistema.Release;
    end;
    1052 : begin
      Frm_Cad_tipoedicao := TFrm_Cad_tipoedicao.Create(Self);
      Frm_Cad_tipoedicao.ShowModal;
      Frm_Cad_tipoedicao.Release;
    end;
    1053 : begin
      Frm_Cad_Acomodacao := TFrm_Cad_Acomodacao.Create(Self);
      Frm_Cad_Acomodacao.ShowModal;
      Frm_Cad_Acomodacao.Release;
    end;
    1054 : begin
      Frm_Cad_Tiposaidainternacao := TFrm_Cad_Tiposaidainternacao.Create(Self);
      Frm_Cad_Tiposaidainternacao.ShowModal;
      Frm_Cad_Tiposaidainternacao.Release;
    end;
    1055 : begin
      Frm_Cad_Autorizainternacao := TFrm_Cad_Autorizainternacao.Create(Self);
      Frm_Cad_Autorizainternacao.ShowModal;
      Frm_Cad_Autorizainternacao.Release;
    end;
    1056 : begin
      Frm_Cad_TipoInternacao := TFrm_Cad_TipoInternacao.Create(Self);
      Frm_Cad_TipoInternacao.ShowModal;
      Frm_Cad_TipoInternacao.Release;
    end;
    1057 : begin
      Frm_Cad_DescricaoGlosa := TFrm_Cad_DescricaoGlosa.Create(Self);
      Frm_Cad_DescricaoGlosa.ShowModal;
      Frm_Cad_DescricaoGlosa.Release;
    end;
    1058 : begin
      Frm_Cad_Favorito := TFrm_Cad_Favorito.Create(Self);
      Frm_Cad_Favorito.ShowModal;
      Frm_Cad_Favorito.Release;
    end;
    1059 : begin
      Frm_Cad_Dotacao := TFrm_Cad_Dotacao.Create(Self);
      Frm_Cad_Dotacao.ShowModal;
      Frm_Cad_Dotacao.Release;
    end;
    1060 : begin
      Frm_Cad_UnidadeOrcam := TFrm_Cad_UnidadeOrcam.Create(Self);
      Frm_Cad_UnidadeOrcam.ShowModal;
      Frm_Cad_UnidadeOrcam.Release;
    end;
    1061 : begin
      Frm_Cad_PedidoCompra := TFrm_Cad_PedidoCompra.Create(Self);
//      Frm_Cad_PedidoCompra.PesquisarChavePrimaria('20');
      Frm_Cad_PedidoCompra.ShowModal;
      Frm_Cad_PedidoCompra.Release;
    end;
    1062 : begin
      Frm_Cad_Agendamento := TFrm_Cad_Agendamento.Create(Self);
      Frm_Cad_Agendamento.ShowModal;
      Frm_Cad_Agendamento.Release;
    end;
    1063 : begin
      Frm_Cad_AutorizacaoMedica := TFrm_Cad_AutorizacaoMedica.Create(Self);
//      Frm_Cad_AutorizacaoMedica.PesquisarChavePrimaria('43943638');
      Frm_Cad_AutorizacaoMedica.ShowModal;
      Frm_Cad_AutorizacaoMedica.Release;
    end;
    1064 : begin
      Frm_Cad_TextoEdital := TFrm_Cad_TextoEdital.Create(Self);
      Frm_Cad_TextoEdital.ShowModal;
      Frm_Cad_TextoEdital.Release;
    end;
    1065 : begin
      Frm_Cad_OcorrenciaEdital := TFrm_Cad_OcorrenciaEdital.Create(Self);
      Frm_Cad_OcorrenciaEdital.ShowModal;
      Frm_Cad_OcorrenciaEdital.Release;
    end;
    1066 : begin
      Frm_Cad_pendenciaContaMed := TFrm_Cad_pendenciaContaMed.Create(Self);
      Frm_Cad_pendenciaContaMed.ShowModal;
      Frm_Cad_pendenciaContaMed.Release;
    end;
    1067 : begin
      FRm_Cad_ItemHonoraEspecial := TFRm_Cad_ItemHonoraEspecial.Create(Self);
      FRm_Cad_ItemHonoraEspecial.ShowModal;
      FRm_Cad_ItemHonoraEspecial.Release;
    end;
    1068 : begin
      Frm_Cad_ItemServico := TFrm_Cad_ItemServico.Create(Self);
      Frm_Cad_ItemServico.ShowModal;
      Frm_Cad_ItemServico.Release;
    end;
    1069 : begin
      Frm_Cad_classificacaoConveniado := TFrm_Cad_classificacaoConveniado.Create(Self);
      Frm_Cad_classificacaoConveniado.ShowModal;
      Frm_Cad_classificacaoConveniado.Release;
    end;
    1070 : begin
      Frm_Cad_ItemCusto := TFrm_Cad_ItemCusto.Create(Self);
      Frm_Cad_ItemCusto.ShowModal;
      Frm_Cad_ItemCusto.Release;
    end;
    1071 : begin
      Frm_Cad_afiliadoOdonto := TFrm_Cad_afiliadoOdonto.Create(Self);
      Frm_Cad_afiliadoOdonto.ShowModal;
      Frm_Cad_afiliadoOdonto.Release;
    end;
    1072 : begin
      Frm_Cad_textoRequerimento := TFrm_Cad_textoRequerimento.Create(Self);
      Frm_Cad_textoRequerimento.ShowModal;
      Frm_Cad_textoRequerimento.Release;
    end;
    1073 : begin
      Frm_Cad_itemHonorarioCrm := TFrm_Cad_itemHonorarioCrm.Create(Self);
      Frm_Cad_itemHonorarioCrm.ShowModal;
      Frm_Cad_itemHonorarioCrm.Release;
    end;
    1074 : begin
      Frm_Cad_oficioReembolso := TFrm_Cad_oficioReembolso.Create(Self);
      Frm_Cad_oficioReembolso.ShowModal;
      Frm_Cad_oficioReembolso.Release;
    end;
    1075 : begin
      Frm_Cad_Regiao := TFrm_Cad_Regiao.Create(Self);
      Frm_Cad_Regiao.ShowModal;
      Frm_Cad_Regiao.Release;
    end;
    1076 : begin
      Frm_Cad_PreCadastro := TFrm_Cad_PreCadastro.Create(Self);
      Frm_Cad_PreCadastro.ShowModal;
      Frm_Cad_PreCadastro.Release;
    end;
    1077 : begin
      Frm_Cad_Cep := TFrm_Cad_Cep.Create(Self);
      Frm_Cad_Cep.ShowModal;
      Frm_Cad_Cep.Release;
    end;
    1078 : begin
      Frm_Cad_DocIngresso := TFrm_Cad_DocIngresso.Create(Self);
      Frm_Cad_DocIngresso.ShowModal;
      Frm_Cad_DocIngresso.Release;
    end;
    1079 : begin
      Frm_Cad_CargoUsuario := TFrm_Cad_CargoUsuario.Create(Self);
      Frm_Cad_CargoUsuario.ShowModal;
      Frm_Cad_CargoUsuario.Release;
    end;
  {  1080 : begin
      Frm_Cad_Empresafolha := TFrm_Cad_Empresafolha.Create(Self);
      Frm_Cad_Empresafolha.ShowModal;
      Frm_Cad_Empresafolha.Release;
    end; }
    1081 : begin
      Frm_Cad_ConfigEmail := TFrm_Cad_ConfigEmail.Create(Self);
      Frm_Cad_ConfigEmail.ShowModal;
      Frm_Cad_ConfigEmail.Release;
    end;
    2001 : begin
      Frm_Mov_CancRepasseConta := TFrm_Mov_CancRepasseConta.Create(Self);
      Frm_Mov_CancRepasseConta.ShowModal;
      Frm_Mov_CancRepasseConta.Release;
    end;
    2002 : begin
      Frm_Mov_2002 := TFrm_Mov_2002.Create(Self);
      Frm_Mov_2002.ShowModal;
      Frm_Mov_2002.Release;
    end;
    2003 : begin
      Frm_Mov_DescontoManual := TFrm_Mov_DescontoManual.Create(Self);
      Frm_Mov_DescontoManual.ShowModal;
      Frm_Mov_DescontoManual.Release;
    end;
    2004 : begin
      Frm_Mov_DisqueteBenefi := TFrm_Mov_DisqueteBenefi.Create(Self);
      Frm_Mov_DisqueteBenefi.ShowModal;
      Frm_Mov_DisqueteBenefi.Release;
    end;
    2005 : begin
      Frm_Mov_2005 := TFrm_Mov_2005.Create(Self);
      Frm_Mov_2005.ShowModal;
      Frm_Mov_2005.Release;
    end;
    2006 : begin
      Frm_Mov_ExcluirConta := TFrm_Mov_ExcluirConta.Create(Self);
      Frm_Mov_ExcluirConta.ShowModal;
      Frm_Mov_ExcluirConta.Release;
    end;
    2007 : begin
      Frm_Mov_GeraDescontoFolha := TFrm_Mov_GeraDescontoFolha.Create(Self);
      Frm_Mov_GeraDescontoFolha.ShowModal;
      Frm_Mov_GeraDescontoFolha.Release;
    end;
    2008 : begin
      Frm_Mov_GeraDSKDesconto := TFrm_Mov_GeraDSKDesconto.Create(Self);
      Frm_Mov_GeraDSKDesconto.ShowModal;
      Frm_Mov_GeraDSKDesconto.Release;
    end;
    2009 : begin
      Frm_Mov_ProcessarConta := TFrm_Mov_ProcessarConta.Create(Self);
      Frm_Mov_ProcessarConta.ShowModal;
      Frm_Mov_ProcessarConta.Release;
    end;
    2010 : begin
      Frm_Mov_2010 := TFrm_Mov_2010.Create(Self);
      Frm_Mov_2010.ShowModal;
      Frm_Mov_2010.Release;
    end;
    2011 : begin
      Frm_Mov_RepasseConta := TFrm_Mov_RepasseConta.Create(Self);
      Frm_Mov_RepasseConta.ShowModal;
      Frm_Mov_RepasseConta.Release;
    end;
    2012 : begin
      Frm_Mov_2012 := TFrm_Mov_2012.Create(self);
      FRm_Mov_2012.ShowModal;
      FRm_Mov_2012.Release;
    end;
    2013 : begin
    //Frm_MovSitConveniado
    end;
    2014 : begin
      Frm_Mov_DisqueteBaixaBanco := TFrm_Mov_DisqueteBaixaBanco.Create(Self);
      Frm_Mov_DisqueteBaixaBanco.ShowModal;
      Frm_Mov_DisqueteBaixaBanco.Release;
    end;
    2015 : begin
      Frm_Mov_Parcelamento := TFrm_Mov_Parcelamento.Create(Self);
      Frm_Mov_Parcelamento.ShowModal;
      Frm_Mov_Parcelamento.Release;
    end;
    2016 : begin
      Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
      Frm_Mov_Tramite.ShowModal;
      Frm_Mov_Tramite.Release;
    end;
    2017 : begin
      Frm_Mov_RemesTramite := TFrm_Mov_RemesTramite.Create(Self);
      Frm_Mov_RemesTramite.ShowModal;
      Frm_Mov_RemesTramite.Release;
    end;
    2018 : begin
      Frm_Mov_GeraDSKUnimed := TFrm_Mov_GeraDSKUnimed.Create(Self);
      Frm_Mov_GeraDSKUnimed.ShowModal;
      Frm_Mov_GeraDSKUnimed.Release;
    end;
    2019 : begin
      Frm_Mov_GeraDSKBancoBrasil := TFrm_Mov_GeraDSKBancoBrasil.Create(Self);
      Frm_Mov_GeraDSKBancoBrasil.ShowModal;
      Frm_Mov_GeraDSKBancoBrasil.Release;
    end;
    2020 : begin
      Frm_Mov_GeraNossoNumBoleto := TFrm_Mov_GeraNossoNumBoleto.Create(Self);
      Frm_Mov_GeraNossoNumBoleto.ShowModal;
      Frm_Mov_GeraNossoNumBoleto.Release;
    end;
    2022 : begin
      Frm_Mov_2022 := TFrm_Mov_2022.Create(Self);
      Frm_Mov_2022.ShowModal;
      Frm_Mov_2022.Release;
    end;
    2023 : begin
      Frm_Mov_2023 := TFrm_Mov_2023.Create(Self);
      Frm_Mov_2023.ShowModal;
      Frm_Mov_2023.Release;
    end;
    2024 : begin
      Frm_Mov_2024 := TFrm_Mov_2024.Create(Self);
      Frm_Mov_2024.ShowModal;
      Frm_Mov_2024.Release;
    end;
    2025 : begin
      Frm_Mov_2025 := TFrm_Mov_2025.Create(Self);
      Frm_Mov_2025.ShowModal;
      Frm_Mov_2025.Release;
    end;
    2026 : begin
      Frm_Mov_2026 := TFrm_Mov_2026.Create(Self);
      Frm_Mov_2026.ShowModal;
      Frm_Mov_2026.Release;
    end;
    2027 : begin
      Frm_Mov_2027 := TFrm_Mov_2027.Create(Self);
      Frm_Mov_2027.ShowModal;
      Frm_Mov_2027.Release;
    end;
    2028 : begin
      Frm_Mov_2028 := TFrm_Mov_2028.Create(Self);
      Frm_Mov_2028.ShowModal;
      Frm_Mov_2028.Release;
    end;
    2029 : begin
      Frm_Mov_2029 := TFrm_Mov_2029.Create(Self);
      Frm_Mov_2029.ShowModal;
      Frm_Mov_2029.Release;
    end;
    2030 : begin
      Frm_Mov_2030 := TFrm_Mov_2030.Create(Self);
      Frm_Mov_2030.ShowModal;
      Frm_Mov_2030.Release;
    end;
    2032 : begin
      Frm_Mov_2032 := TFrm_Mov_2032.Create(Self);
      Frm_Mov_2032.ShowModal;
      Frm_Mov_2032.Release;
    end;
    2033 : begin
      Frm_Mov_2033 := TFrm_Mov_2033.Create(Self);
      Frm_Mov_2033.ShowModal;
      Frm_Mov_2033.Release;
    end;
    2034 : begin
      Frm_Mov_2034 := TFrm_Mov_2034.Create(Self);
      Frm_Mov_2034.ShowModal;
      Frm_Mov_2034.Release;
    end;
    2035 : begin
      Frm_Mov_2035 := TFrm_Mov_2035.Create(Self);
      Frm_Mov_2035.ShowModal;
      Frm_Mov_2035.Release;
    end;
    2036 : begin
      Frm_Mov_2036 := TFrm_Mov_2036.Create(Self);
      Frm_Mov_2036.ShowModal;
      Frm_Mov_2036.Release;
    end;
    2037 : begin
      Frm_Mov_2037 := TFrm_Mov_2037.Create(Self);
      Frm_Mov_2037.ShowModal;
      Frm_Mov_2037.Release;
    end;
    2038 : begin
      Frm_Mov_2038 := TFrm_Mov_2038.Create(Self);
      Frm_Mov_2038.ShowModal;
      Frm_Mov_2038.Release;
    end;
    2039 : begin
      Frm_Mov_2039 := TFrm_Mov_2039.Create(Self);
      Frm_Mov_2039.ShowModal;
      Frm_Mov_2039.Release;
    end;
    2040 : begin
      Frm_Mov_2040 := TFrm_Mov_2040.Create(Self);
      Frm_Mov_2040.ShowModal;
      Frm_Mov_2040.Release;
    end;
    2041 : begin
      Frm_Mov_2041 := TFrm_Mov_2041.Create(Self);
      Frm_Mov_2041.ShowModal;
      Frm_Mov_2041.Release;
    end;
    2042 : begin
      Frm_Mov_2042 := TFrm_Mov_2042.Create(Self);
      Frm_Mov_2042.ShowModal;
      Frm_Mov_2042.Release;
    end;
    2043 : begin
      Frm_Mov_2043 := TFrm_Mov_2043.Create(Self);
      Frm_Mov_2043.ShowModal;
      Frm_Mov_2043.Release;
    end;
    2044 : begin
      Frm_Mov_2044 := TFrm_Mov_2044.Create(Self);
      Frm_Mov_2044.ShowModal;
      Frm_Mov_2044.Release;
    end;
    2045 : begin
      Frm_Mov_2045 := TFrm_Mov_2045.Create(Self);
      Frm_Mov_2045.ShowModal;
      Frm_Mov_2045.Release;
    end;
    2046 : begin
      Frm_Mov_2046 := TFrm_Mov_2046.Create(Self);
      Frm_Mov_2046.ShowModal;
      Frm_Mov_2046.Release;
    end;
    2047 : begin
      Frm_Mov_2047 := TFrm_Mov_2047.Create(Self);
      Frm_Mov_2047.ShowModal;
      Frm_Mov_2047.Release;
    end;
    2048 : begin
      Frm_Mov_2048 := TFrm_Mov_2048.Create(Self);
      Frm_Mov_2048.ShowModal;
      Frm_Mov_2048.Release;
    end;
    2049 : begin
      Frm_Mov_2049 := TFrm_Mov_2049.Create(Self);
      Frm_Mov_2049.ShowModal;
      Frm_Mov_2049.Release;
    end;
    2050 : begin
      Frm_Mov_2050 := TFrm_Mov_2050.Create(Self);
      Frm_Mov_2050.ShowModal;
      Frm_Mov_2050.Release;
    end;
    2051 : begin
      Frm_Mov_2051 := TFrm_Mov_2051.Create(Self);
      Frm_Mov_2051.ShowModal;
      Frm_Mov_2051.Release;
    end;
    2052 : begin
      Frm_Mov_2052 := TFrm_Mov_2052.Create(Self);
      Frm_Mov_2052.ShowModal;
      Frm_Mov_2052.Release;
    end;
    2053 : begin
      Frm_Mov_2053 := TFrm_Mov_2053.Create(Self);
      Frm_Mov_2053.ShowModal;
      Frm_Mov_2053.Release;
    end;
    2054 : begin
      Frm_Mov_2054 := TFrm_Mov_2054.Create(Self);
      Frm_Mov_2054.ShowModal;
      Frm_Mov_2054.Release;
    end;
    2055 : begin
      Frm_Mov_2055 := TFrm_Mov_2055.Create(Self);
      Frm_Mov_2055.ShowModal;
      Frm_Mov_2055.Release;
    end;
    2056 : begin
      Frm_Mov_2056 := TFrm_Mov_2056.Create(Self);
      Frm_Mov_2056.ShowModal;
      Frm_Mov_2056.Release;
    end;
    2057 : begin
      Frm_Mov_2057 := TFrm_Mov_2057.Create(Self);
      Frm_Mov_2057.ShowModal;
      Frm_Mov_2057.Release;
    end;
    2058 : begin
      Frm_Mov_2058 := TFrm_Mov_2058.Create(Self);
      Frm_Mov_2058.ShowModal;
      Frm_Mov_2058.Release;
    end;
    2059 : begin
      Frm_Mov_2059:= TFrm_Mov_2059.Create(Self);
      Frm_Mov_2059.ShowModal;
      Frm_Mov_2059.Release;
    end;
    2060 : begin
      Frm_Mov_2060:= TFrm_Mov_2060.Create(Self);
      Frm_Mov_2060.ShowModal;
      Frm_Mov_2060.Release;
    end;
    2061 : begin
      Frm_Mov_2061:= TFrm_Mov_2061.Create(Self);
      Frm_Mov_2061.ShowModal;
      Frm_Mov_2061.Release;
    end;
    2062 : begin
      Frm_Mov_2062:= TFrm_Mov_2062.Create(Self);
      Frm_Mov_2062.ShowModal;
      Frm_Mov_2062.Release;
    end;
    2063 : begin
      Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
      Frm_Mov_2063.ShowModal;
      Frm_Mov_2063.Release;
    end;
    2064 : begin
      Frm_Mov_2064:= TFrm_Mov_2064.Create(Self);
      Frm_Mov_2064.ShowModal;
      Frm_Mov_2064.Release;
    end;
    2065 : begin
      Frm_Mov_2065:= TFrm_Mov_2065.Create(Self);
      Frm_Mov_2065.ShowModal;
      Frm_Mov_2065.Release;
    end;
    2066 : begin
      Frm_Mov_2066:= TFrm_Mov_2066.Create(Self);
      Frm_Mov_2066.ShowModal;
      Frm_Mov_2066.Release;
    end;
   2067 : begin
      Frm_Mov_2067:= TFrm_Mov_2067.Create(Self);
      Frm_Mov_2067.FGroupBoxONOFF := true;
      Frm_Mov_2067.ShowModal;
      Frm_Mov_2067.Release;
    end;
    2068 : begin
      Frm_Mov_2068:= TFrm_Mov_2068.Create(Self);
      Frm_Mov_2068.ShowModal;
      Frm_Mov_2068.Release;
    end;
    2069 : begin
      Frm_Mov_2069:= TFrm_Mov_2069.Create(Self);
      Frm_Mov_2069.ShowModal;
      Frm_Mov_2069.Release;
    end;
    2070 : begin
      Frm_Mov_2070:= TFrm_Mov_2070.Create(Self);
      Frm_Mov_2070.ShowModal;
      Frm_Mov_2070.Release;
    end;
    2071 : begin
      Frm_Mov_2071:= TFrm_Mov_2071.Create(Self);
      Frm_Mov_2071.ShowModal;
      Frm_Mov_2071.Release;
    end;
    2072 : begin
      Frm_Mov_2072:= TFrm_Mov_2072.Create(Self);
      Frm_Mov_2072.ShowModal;
      Frm_Mov_2072.Release;
    end;
{    2073 : begin
      Frm_Mov_2073:= TFrm_Mov_2073.Create(Self);
      Frm_Mov_2073.ShowModal;
      Frm_Mov_2073.Release;
    end;}
    2074 : begin
      Frm_Mov_2074:= TFrm_Mov_2074.Create(Self);
      Frm_Mov_2074.ShowModal;
      Frm_Mov_2074.Release;
    end;
    2075 : begin
      Frm_Mov_2075:= TFrm_Mov_2075.Create(Self);
      Frm_Mov_2075.ShowModal;
      Frm_Mov_2075.Release;
    end;
    2076 : begin
      Frm_Mov_2076:= TFrm_Mov_2076.Create(Self);
      Frm_Mov_2076.ShowModal;
      Frm_Mov_2076.Release;
    end;
    2077 : begin
      Frm_Mov_2077:= TFrm_Mov_2077.Create(Self);
      Frm_Mov_2077.ShowModal;
      Frm_Mov_2077.Release;
    end;
    2078 : begin
      Frm_Mov_2078:= TFrm_Mov_2078.Create(Self);
      Frm_Mov_2078.ShowModal;
      Frm_Mov_2078.Release;
    end;
    3001 : begin
      Frm_Rel_ContaRepassada := TFrm_Rel_ContaRepassada.Create(Self);
      Frm_Rel_ContaRepassada.ShowModal;
      Frm_Rel_ContaRepassada.Release;
    end;
    3002 : begin
      Frm_Rel_ContaRepassar := TFrm_Rel_ContaRepassar.Create(Self);
      Frm_Rel_ContaRepassar.ShowModal;
      Frm_Rel_ContaRepassar.Release;
    end;
    3003 : begin
      Frm_Rel_DependRenovacao := TFrm_Rel_DependRenovacao.Create(Self);
      Frm_Rel_DependRenovacao.ShowModal;
      Frm_Rel_DependRenovacao.Release;
    end;
    3004 : begin
      Frm_Rel_DespConvPlano001 := TFrm_Rel_DespConvPlano001.Create(Self);
      Frm_Rel_DespConvPlano001.ShowModal;
      Frm_Rel_DespConvPlano001.Release;
    end;
    3005 : begin
      Frm_Rel_DespConvPlano002 := TFrm_Rel_DespConvPlano002.Create(Self);
      Frm_Rel_DespConvPlano002.ShowModal;
      Frm_Rel_DespConvPlano002.Release;
    end;
    3006 : begin
      Frm_Rel_3006 := TFrm_Rel_3006.Create(Self);
      Frm_Rel_3006.ShowModal;
      Frm_Rel_3006.Release;
    end;
    3007 : begin
      Frm_Rel_ExtratoBenefi002 := TFrm_Rel_ExtratoBenefi002.Create(Self);
      Frm_Rel_ExtratoBenefi002.ShowModal;
      Frm_Rel_ExtratoBenefi002.Release;
    end;
    3008 : begin
      Frm_Rel_ExtratoBenefi003 := TFrm_Rel_ExtratoBenefi003.Create(Self);
      Frm_Rel_ExtratoBenefi003.ShowModal;
      Frm_Rel_ExtratoBenefi003.Release;
    end;
    3009 : begin
      Frm_Rel_ExtratoConven001 := TFrm_Rel_ExtratoConven001.Create(Self);
      Frm_Rel_ExtratoConven001.ShowModal;
      Frm_Rel_ExtratoConven001.Release;
    end;
    3010 : begin
      Frm_Rel_ExtratoConven002 := TFrm_Rel_ExtratoConven002.Create(Self);
      Frm_Rel_ExtratoConven002.ShowModal;
      Frm_Rel_ExtratoConven002.Release;
    end;
    3011 : begin
      Frm_Rel_ExtratoCRM001 := TFrm_Rel_ExtratoCRM001.Create(Self);
      Frm_Rel_ExtratoCRM001.ShowModal;
      Frm_Rel_ExtratoCRM001.Release;
    end;
    3012 : begin
      Frm_Rel_3012 := TFrm_Rel_3012.Create(Self);
      Frm_Rel_3012.ShowModal;
      Frm_Rel_3012.Release;
    end;
    3013 : begin
      Frm_Rel_ExtratoItem001 := TFrm_Rel_ExtratoItem001.Create(Self);
      Frm_Rel_ExtratoItem001.ShowModal;
      Frm_Rel_ExtratoItem001.Release;
    end;
    3014 : begin
      Frm_Rel_3014 := TFrm_Rel_3014.Create(Self);
      Frm_Rel_3014.ShowModal;
      Frm_Rel_3014.Release;
    end;
    3015 : begin
      Frm_Rel_ExtratoItem003 := TFrm_Rel_ExtratoItem003.Create(Self);
      Frm_Rel_ExtratoItem003.ShowModal;
      Frm_Rel_ExtratoItem003.Release;
    end;
    3016 : begin
      Frm_Rel_ExtratoItem004 := TFrm_Rel_ExtratoItem004.Create(Self);
      Frm_Rel_ExtratoItem004.ShowModal;
      Frm_Rel_ExtratoItem004.Release;
    end;
    3017 : begin
      Frm_Rel_Glosa := TFrm_Rel_Glosa.Create(Self);
      Frm_Rel_Glosa.ShowModal;
      Frm_Rel_Glosa.Release;
    end;
    3018 : begin
      Frm_Rel_HistoricoBenefi := TFrm_Rel_HistoricoBenefi.Create(Self);
      Frm_Rel_HistoricoBenefi.ShowModal;
      Frm_Rel_HistoricoBenefi.Release;
    end;
    3019 : begin
      Frm_Rel_3019 := TFrm_Rel_3019.Create(Self);
      Frm_Rel_3019.ShowModal;
      Frm_Rel_3019.Release;
    end;
    3020 : begin
      Frm_Rel_StatusConta := TFrm_Rel_StatusConta.Create(Self);
      Frm_Rel_StatusConta.ShowModal;
      Frm_Rel_StatusConta.Release;
    end;
    3021 : begin

    end;
    3022 : begin
      Frm_Rel_ExtratoItem006 := TFrm_Rel_ExtratoItem006.Create(Self);
      Frm_Rel_ExtratoItem006.ShowModal;
      Frm_Rel_ExtratoItem006.Release;
    end;
    3023 : begin
      Frm_Rel_ExtratoDesconto001 := TFrm_Rel_ExtratoDesconto001.Create(Self);
      Frm_Rel_ExtratoDesconto001.ShowModal;
      Frm_Rel_ExtratoDesconto001.Release;
    end;
    3024 : begin
      Frm_Rel_FichaBenefi001 := TFrm_Rel_FichaBenefi001.Create(Self);
      Frm_Rel_FichaBenefi001.ShowModal;
      Frm_Rel_FichaBenefi001.Release;
    end;
    3025 : begin
      Frm_Rel_Requerimento001 := TFrm_Rel_Requerimento001.Create(Self);
      Frm_Rel_Requerimento001.ShowModal;
      Frm_Rel_Requerimento001.Release;
    end;
    3026 : begin
      Frm_Rel_EtiquetaBenefi001 := TFrm_Rel_EtiquetaBenefi001.Create(Self);
      Frm_Rel_EtiquetaBenefi001.ShowModal;
      Frm_Rel_EtiquetaBenefi001.Release;
    end;
    3027 : begin
      Frm_Rel_ExtratoItemRelaciona001 := TFrm_Rel_ExtratoItemRelaciona001.Create(Self);
      Frm_Rel_ExtratoItemRelaciona001.ShowModal;
      Frm_Rel_ExtratoItemRelaciona001.Release;
    end;
    3028 : begin
      Frm_Rel_3028 := TFrm_Rel_3028.Create(Self);
      Frm_Rel_3028.ShowModal;
      Frm_Rel_3028.Release;
    end;
    3029 : begin
      Frm_Rel_3029 := TFrm_Rel_3029.Create(Self);
      Frm_Rel_3029.ShowModal;
      Frm_Rel_3029.Release;
    end;
    3030 : begin
      Frm_Rel_3030 := TFrm_Rel_3030.Create(Self);
      Frm_Rel_3030.ShowModal;
      Frm_Rel_3030.Release;
    end;
    3031 : begin
      Frm_Rel_3031 := TFrm_Rel_3031.Create(Self);
      Frm_Rel_3031.ShowModal;
      Frm_Rel_3031.Release;
    end;
    3032 : begin
      Frm_Rel_3032 := TFrm_Rel_3032.Create(Self);
      Frm_Rel_3032.ShowModal;
      Frm_Rel_3032.Release;
    end;
    3033 : begin
      Frm_Rel_3033 := TFrm_Rel_3033.Create(Self);
      Frm_Rel_3033.ShowModal;
      Frm_Rel_3033.Release;
    end;
    3034 : begin
      Frm_Rel_3034 := TFrm_Rel_3034.Create(Self);
      Frm_Rel_3034.ShowModal;
      Frm_Rel_3034.Release;
    end;
    3036 : begin
      Frm_Rel_3036 := TFrm_Rel_3036.Create(Self);
      Frm_Rel_3036.ShowModal;
      Frm_Rel_3036.Release;
    end;
    3037 : begin
      Frm_Rel_3037 := TFrm_Rel_3037.Create(Self);
      Frm_Rel_3037.ShowModal;
      Frm_Rel_3037.Release;
    end;
    3038 : begin
      Frm_Rel_3038 := TFrm_Rel_3038.Create(Self);
      Frm_Rel_3038.ShowModal;
      Frm_Rel_3038.Release;
    end;
    3039 : begin
      Frm_Rel_3039 := TFrm_Rel_3039.Create(Self);
      Frm_Rel_3039.ShowModal;
      Frm_Rel_3039.Release;
    end;
    3040 : begin
      Frm_Rel_3040 := TFrm_Rel_3040.Create(Self);
      Frm_Rel_3040.ShowModal;
      Frm_Rel_3040.Release;
    end;
     3041 : begin
      Frm_Rel_3041 := TFrm_Rel_3041.Create(Self);
      Frm_Rel_3041.ShowModal;
      Frm_Rel_3041.Release;
    end;
    3042 : begin
      Frm_Rel_3042 := TFrm_Rel_3042.Create(Self);
      Frm_Rel_3042.ShowModal;
      Frm_Rel_3042.Release;
    end;
    3043 : begin
      Frm_Rel_3043 := TFrm_Rel_3043.Create(Self);
      Frm_Rel_3043.ShowModal;
      Frm_Rel_3043.Release;
    end;
    3044 : begin
      Frm_Rel_3044 := TFrm_Rel_3044.Create(Self);
      Frm_Rel_3044.ShowModal;
      Frm_Rel_3044.Release;
    end;
    3045 : begin
      Frm_Rel_3045 := TFrm_Rel_3045.Create(Self);
      Frm_Rel_3045.ShowModal;
      Frm_Rel_3045.Release;
    end;
    3046 : begin
      Frm_Rel_3046 := TFrm_Rel_3046.Create(Self);
      Frm_Rel_3046.ShowModal;
      Frm_Rel_3046.Release;
    end;
    3047 : begin
      Frm_Rel_3047 := TFrm_Rel_3047.Create(Self);
      Frm_Rel_3047.ShowModal;
      Frm_Rel_3047.Release;
    end;
    3048 : begin
//      Frm_Rel_3048 := TFrm_Rel_3048.Create(Self);
      Frm_Rel_3048.ShowModal;
//      Frm_Rel_3048.Release;
    end;
    3049 : begin
      Frm_Rel_3049 := TFrm_Rel_3049.Create(Self);
      Frm_Rel_3049.ShowModal;
      Frm_Rel_3049.Release;
    end;
    3050 : begin
      Frm_Rel_3050 := TFrm_Rel_3050.Create(Self);
      Frm_Rel_3050.ShowModal;
      Frm_Rel_3050.Release;
    end;
    3051 : begin
      Frm_Rel_3051 := TFrm_Rel_3051.Create(Self);
      Frm_Rel_3051.ShowModal;
      Frm_Rel_3051.Release;
    end;
    3052 : begin
      Frm_Rel_3052 := TFrm_Rel_3052.Create(Self);
      Frm_Rel_3052.ShowModal;
      Frm_Rel_3052.Release;
    end;
    3053 : begin
      Frm_Rel_3053 := TFrm_Rel_3053.Create(Self);
      Frm_Rel_3053.ShowModal;
      Frm_Rel_3053.Release;
    end;
    3054 : begin
      Frm_Rel_3054 := TFrm_Rel_3054.Create(Self);
      Frm_Rel_3054.ShowModal;
      Frm_Rel_3054.Release;
    end;
    3055 : begin
      Frm_Rel_3055 := TFrm_Rel_3055.Create(Self);
      Frm_Rel_3055.ShowModal;
      Frm_Rel_3055.Release;
    end;
    3056 : begin
      Frm_Rel_3056 := TFrm_Rel_3056.Create(Self);
      Frm_Rel_3056.ShowModal;
      Frm_Rel_3056.Release;
    end;
    3057 : begin
      Frm_Rel_3057 := TFrm_Rel_3057.Create(Self);
      Frm_Rel_3057.ShowModal;
      Frm_Rel_3057.Release;
    end;
    3058 : begin
      Frm_Rel_3058 := TFrm_Rel_3058.Create(Self);
      Frm_Rel_3058.ShowModal;
      Frm_Rel_3058.Release;
    end;
    3059 : begin
      Frm_Rel_3059 := TFrm_Rel_3059.Create(Self);
      Frm_Rel_3059.ShowModal;
      Frm_Rel_3059.Release;
    end;
    3060 : begin
      Frm_Rel_3060 := TFrm_Rel_3060.Create(Self);
      Frm_Rel_3060.ShowModal;
      Frm_Rel_3060.Release;
    end;
    3061 : begin
      Frm_Rel_3061 := TFrm_Rel_3061.Create(Self);
      Frm_Rel_3061.ShowModal;
      Frm_Rel_3061.Release;
    end;
    3062 : begin
      Frm_Rel_3062 := TFrm_Rel_3062.Create(Self);
      Frm_Rel_3062.ShowModal;
      Frm_Rel_3062.Release;
    end;
    3063 : begin
      Frm_Rel_3063 := TFrm_Rel_3063.Create(Self);
      Frm_Rel_3063.ShowModal;
      Frm_Rel_3063.Release;
    end;
    3064 : begin
      Frm_Rel_3064 := TFrm_Rel_3064.Create(Self);
      Frm_Rel_3064.ShowModal;
      Frm_Rel_3064.Release;
    end;
    3065 : begin
      Frm_Rel_3065 := TFrm_Rel_3065.Create(Self);
      Frm_Rel_3065.ShowModal;
      Frm_Rel_3065.Release;
    end;
    3066 : begin
      Frm_Rel_3066 := TFrm_Rel_3066.Create(Self);
      Frm_Rel_3066.ShowModal;
      Frm_Rel_3066.Release;
    end;
    3067 : begin
      Frm_Rel_3067 := TFrm_Rel_3067.Create(Self);
      Frm_Rel_3067.ShowModal;
      Frm_Rel_3067.Release;
    end;
    3068 : begin
      Frm_Rel_3068 := TFrm_Rel_3068.Create(Self);
      Frm_Rel_3068.ShowModal;
      Frm_Rel_3068.Release;
    end;
    3069 : begin
      Frm_Rel_3069 := TFrm_Rel_3069.Create(Self);
      Frm_Rel_3069.ShowModal;
      Frm_Rel_3069.Release;
    end;
    3070 : begin
      Frm_Rel_3070 := TFrm_Rel_3070.Create(Self);
      Frm_Rel_3070.ShowModal;
      Frm_Rel_3070.Release;
    end;
    3071 : begin
      Frm_Rel_3071 := TFrm_Rel_3071.Create(Self);
      Frm_Rel_3071.ShowModal;
      Frm_Rel_3071.Release;
    end;
    3072 : begin
      Frm_Rel_3072 := TFrm_Rel_3072.Create(Self);
      Frm_Rel_3072.ShowModal;
      Frm_Rel_3072.Release;
    end;
    3073 : begin
      Frm_Rel_3073 := TFrm_Rel_3073.Create(Self);
      Frm_Rel_3073.ShowModal;
      Frm_Rel_3073.Release;
    end;
    3074 : begin
      Frm_Rel_3074 := TFrm_Rel_3074.Create(Self);
      Frm_Rel_3074.ShowModal;
      Frm_Rel_3074.Release;
    end;
    3075 : begin
      Frm_Rel_3075 := TFrm_Rel_3075.Create(Self);
      Frm_Rel_3075.ShowModal;
      Frm_Rel_3075.Release;
    end;
    3076 : begin
      Frm_Rel_3076 := TFrm_Rel_3076.Create(Self);
      Frm_Rel_3076.ShowModal;
      Frm_Rel_3076.Release;
    end;
    3077 : begin
      Frm_Rel_3077 := TFrm_Rel_3077.Create(Self);
      Frm_Rel_3077.ShowModal;
      Frm_Rel_3077.Release;
    end;
    3078 : begin
      Frm_Rel_3078 := TFrm_Rel_3078.Create(Self);
      Frm_Rel_3078.ShowModal;
      Frm_Rel_3078.Release;
    end;
    3079 : begin
      Frm_Rel_3079 := TFrm_Rel_3079.Create(Self);
      Frm_Rel_3079.ShowModal;
      Frm_Rel_3079.Release;
    end;
    3080 : begin
      Frm_Rel_3080 := TFrm_Rel_3080.Create(Self);
      Frm_Rel_3080.ShowModal;
      Frm_Rel_3080.Release;
    end;
    3081 : begin
      Frm_Rel_3081 := TFrm_Rel_3081.Create(Self);
      Frm_Rel_3081.ShowModal;
      Frm_Rel_3081.Release;
    end;
    3082 : begin
      Frm_Rel_3082 := TFrm_Rel_3082.Create(Self);
      Frm_Rel_3082.ShowModal;
      Frm_Rel_3082.Release;
    end;
    3083 : begin
      Frm_Rel_3083 := TFrm_Rel_3083.Create(Self);
      Frm_Rel_3083.ShowModal;
      Frm_Rel_3083.Release;
    end;
    3084 : begin
      Frm_Rel_3084 := TFrm_Rel_3084.Create(Self);
      Frm_Rel_3084.ShowModal;
      Frm_Rel_3084.Release;
    end;
    3085 : begin
      Frm_Rel_3085 := TFrm_Rel_3085.Create(Self);
      Frm_Rel_3085.ShowModal;
      Frm_Rel_3085.Release;
    end;

    3086 : begin
      Frm_Rel_3086 := TFrm_Rel_3086.Create(Self);
      Frm_Rel_3086.ShowModal;
      Frm_Rel_3086.Release;
    end;

    3087 : begin
      Frm_Rel_3087 := TFrm_Rel_3087.Create(Self);
      Frm_Rel_3087.ShowModal;
      Frm_Rel_3087.Release;
    end;

    4049 : begin
      fdt_principal2.spc_cons_usuario.Open;
      Frm_Imp_4049 := TFrm_Imp_4049.Create(Self);
      Frm_Imp_4049.QuickRep1.Preview;
      Frm_Imp_4049.Release;
      fdt_principal2.spc_cons_usuario.close;
    end;
    4052 : begin
      fdt_principal2.spc_cons_med_espmedamb.Open;
      Frm_Imp_4052 := TFrm_Imp_4052.Create(Self);
      Frm_Imp_4052.QuickRep1.Preview;
      Frm_Imp_4052.Release;
      fdt_principal2.spc_cons_med_espmedamb.close;
    end;
    4053 : begin
      fdt_principal2.spc_cons_cotacaoindice.parambyname('@cod_indice').asstring := '1';
      fdt_principal2.spc_cons_cotacaoindice.open;
      Frm_Imp_4053 := TFrm_Imp_4053.Create(Self);
      Frm_Imp_4053.QuickRep1.Preview;
      Frm_Imp_4053.Release;
      fdt_principal2.spc_cons_cotacaoindice.close;
    end;
  else result := false ;
  end;
  Show;
end;


procedure TFrm_Men_Principal.btn_AbrirAtalhoClick(Sender: TObject);
var s : integer;
begin
  if trim(edt_cod_telasistema.text) <> '' then
    begin
      AbrirTela(strtoint(edt_cod_telasistema.text));
      edt_cod_telasistema.text := '' ;
    end;
    if cbx_cod_telasistema.text <> '' then
      begin
        s := Integer(cbx_cod_telasistema.Items.Objects[cbx_cod_telasistema.ItemIndex]);
        AbrirTela(s);
        cbx_cod_telasistema.Clear;
        cbx_cod_telasistema.Refresh;
        CarregarFavoritos;
      end;
end;

procedure TFrm_Men_Principal.CadastrodePrestadordeServiosMdicos1Click(
  Sender: TObject);
begin
  AbrirTela(1027);
end;

procedure TFrm_Men_Principal.IndicesdeReajuste1Click(Sender: TObject);
begin
  AbrirTela(1028);
end;

procedure TFrm_Men_Principal.FichadeBeneficirios1Click(Sender: TObject);
begin
  AbrirTela(3024);
end;

procedure TFrm_Men_Principal.Etiquetas1Click(Sender: TObject);
begin
  AbrirTela(3026);
end;

procedure TFrm_Men_Principal.Servidores1Click(Sender: TObject);
begin
  AbrirTela(1029);
end;

procedure TFrm_Men_Principal.CadastroeTramitedeProcessos1Click(
  Sender: TObject);
begin
  AbrirTela(2016);
end;

procedure TFrm_Men_Principal.RemessadeProcessos1Click(Sender: TObject);
begin
  AbrirTela(2017);
end;

procedure TFrm_Men_Principal.GeraodeDisquetedeBeneficirios1Click(
  Sender: TObject);
begin
  AbrirTela(2018);
end;

procedure TFrm_Men_Principal.RelacionamentodeItensdeServio1Click(
  Sender: TObject);
begin
  AbrirTela(3027);
end;

procedure TFrm_Men_Principal.ForceForegroundWindow(Handle: HWND);
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  pid, tid: DWORD;
  timeout, temp: DWORD;
  needsHack: Boolean;
begin
  tid := GetWindowThreadProcessId(handle, @pid);
  if pid = GetCurrentProcessId then
    SetForegroundWindow(handle)
  else
  begin
    AttachThreadInput(GetCurrentThreadId, tid, True);
    try
      needsHack := ((Win32Platform = VER_PLATFORM_WIN32_NT)
and
        (Win32MajorVersion > 4)) or
        ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS)
and
        ((Win32MajorVersion > 4) or
        ((Win32MajorVersion = 4) and (Win32MinorVersion
> 0))));
      if needsHack then
      begin
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT,
0,
@timeout, 0);
        temp := 0;
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT,
0, @temp,
0);
      end;
      SetForegroundWindow(handle);
      if needsHack then
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT,
timeout,
@timeout,
          0);
    finally
      AttachThreadInput(GetCurrentThreadId, tid, False);
    end;
  end;
end;


procedure TFrm_Men_Principal.PDJButton7Click(Sender: TObject);
begin
  Dlg_EnviaMSG(self, '');
end;

procedure TFrm_Men_Principal.PDJButton8Click(Sender: TObject);
begin
  pnl_alertacartao.Visible := true ;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Men_Principal.edt_carteirinhaKeyPress(Sender: TObject; var Key: Char);
var
  FTit, FCod_beneficiario : String;
begin
 if key = #13 then begin
    Hide;
    if Length(edt_carteirinha.Text) = 33 then begin
      FCod_beneficiario := copy(edt_carteirinha.text, 2, 6) ;
      FTit := copy(edt_carteirinha.text, 15, 2);
    end
    else begin
      FCod_beneficiario := copy(edt_carteirinha.text, 2, 5) ;
      FTit := copy(edt_carteirinha.text, 14, 2);
    end;
    if FTit = '00' then begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := FCod_beneficiario ;
      edt_carteirinha.Text := '' ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end else begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := FCod_beneficiario;
      edt_carteirinha.Text := '' ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
    end;
    Show;
  end;
end;

procedure TFrm_Men_Principal.edt_carteirinhaExit(Sender: TObject);
begin
  pnl_alertacartao.Visible := false ;
end;

procedure TFrm_Men_Principal.RelaodeContasnoRepassadas1Click(
  Sender: TObject);
begin
  AbrirTela(3030);
end;

procedure TFrm_Men_Principal.ListagemdeCotaodoIndice1Click(
  Sender: TObject);
begin
  AbrirTela(4053);
end;

procedure TFrm_Men_Principal.ListagemdeEspecialidadesMdicas1Click(
  Sender: TObject);
begin
  AbrirTela(4052);
end;

procedure TFrm_Men_Principal.ListagemdeUsuriosdoSistema1Click(
  Sender: TObject);
begin
  AbrirTela(4049);
end;

procedure TFrm_Men_Principal.Men_3043Click(
  Sender: TObject);
begin
   AbrirTela(3043);
end;

procedure TFrm_Men_Principal.RelatriodeCID1Click(Sender: TObject);
begin
   AbrirTela(3037);
end;

procedure TFrm_Men_Principal.TotaldeContasCarregadasporMs2Click(
  Sender: TObject);
begin
   AbrirTela(3036);
end;

procedure TFrm_Men_Principal.RelatriodeHistricoBeneficirio1Click(
  Sender: TObject);
begin
   AbrirTela(3038);
end;

procedure TFrm_Men_Principal.RelatriodeListadeBeneficirios1Click(
  Sender: TObject);
begin
   AbrirTela(3039);
end;

procedure TFrm_Men_Principal.RelatriodeContribuioeDescontos1Click(
  Sender: TObject);
begin
   AbrirTela(3040);
end;

procedure TFrm_Men_Principal.RelatriodeDescontosporCdigo1Click(
  Sender: TObject);
begin
   AbrirTela(3041);
end;

procedure TFrm_Men_Principal.RelatriodeDescontoPlano1Click(
  Sender: TObject);
begin
   AbrirTela(3042);
end;

procedure TFrm_Men_Principal.SolicitaoparaInternao1Click(Sender: TObject);
begin
   AbrirTela(1055);
end;

procedure TFrm_Men_Principal.ControledeInternaes1Click(Sender: TObject);
begin
   AbrirTela(2026);
end;

procedure TFrm_Men_Principal.RelaodeTotaldeMateriaisporProcPrincipal1Click(
  Sender: TObject);
begin
  AbrirTela(3044);
end;

procedure TFrm_Men_Principal.RelatriodefalhasdebaixadaPrefeitura1Click(
  Sender: TObject);
begin
  AbrirTela(3045);
end;

procedure TFrm_Men_Principal.RelatriodeHistricodeSalrios1Click(
  Sender: TObject);
begin
  AbrirTela(3047);
end;

procedure TFrm_Men_Principal.RelatriodeBeneficiriopoFaixaSalarial1Click(
  Sender: TObject);
begin
  AbrirTela(3046);
end;

procedure TFrm_Men_Principal.Transferenciadedescontosematraso1Click(
  Sender: TObject);
begin
  AbrirTela(2022);
end;

procedure TFrm_Men_Principal.CadastrodeDescriodeGlosa1Click(
  Sender: TObject);
begin
  AbrirTela(1057);
end;

procedure TFrm_Men_Principal.CadastrodeAssuntosdeProcessos1Click(
  Sender: TObject);
begin
  AbrirTela(1030);
end;

procedure TFrm_Men_Principal.CadastrodeCID1Click(Sender: TObject);
begin
  AbrirTela(1031);
end;

procedure TFrm_Men_Principal.CadastrodeClassesdoConveniado1Click(
  Sender: TObject);
begin
  AbrirTela(1032);
end;

procedure TFrm_Men_Principal.CadastrodeCoresdePastasdeProcesso1Click(
  Sender: TObject);
begin
  AbrirTela(1033);
end;

procedure TFrm_Men_Principal.CadastrodeEspecialidadesMdicasAMB1Click(
  Sender: TObject);
begin
  AbrirTela(1034);
end;

procedure TFrm_Men_Principal.CadastrodeCategoriaDPD1Click(Sender: TObject);
begin
  AbrirTela(1035);
end;

procedure TFrm_Men_Principal.CadastrodeCRM1Click(Sender: TObject);
begin
  AbrirTela(1037);
end;

procedure TFrm_Men_Principal.CadastrodeErroglosa1Click(Sender: TObject);
begin
  AbrirTela(1038);
end;

procedure TFrm_Men_Principal.CadastrodeFaixaEtaria1Click(Sender: TObject);
begin
  AbrirTela(1039);
end;

procedure TFrm_Men_Principal.CadastrodeGrandeGrupo1Click(Sender: TObject);
begin
  AbrirTela(1040);
end;

procedure TFrm_Men_Principal.CadastrodeIndice1Click(Sender: TObject);
begin
  AbrirTela(1041);
end;

procedure TFrm_Men_Principal.CadastrodeNivelcar1Click(Sender: TObject);
begin
  AbrirTela(1042);
end;

procedure TFrm_Men_Principal.CadastrodeParametros1Click(Sender: TObject);
begin
  AbrirTela(1043);
end;

procedure TFrm_Men_Principal.CadastroSitdesconto1Click(Sender: TObject);
begin
  AbrirTela(1045);
end;

procedure TFrm_Men_Principal.CadastrodeSituaoDPD1Click(Sender: TObject);
begin
  AbrirTela(1046);
end;

procedure TFrm_Men_Principal.CadastroStatuscarteira1Click(Sender: TObject);
begin
  AbrirTela(1047);
end;

procedure TFrm_Men_Principal.CadastrodeStatusconta1Click(Sender: TObject);
begin
  AbrirTela(1048);
end;

procedure TFrm_Men_Principal.CadastrodeStatusenvio1Click(Sender: TObject);
begin
  AbrirTela(1049);
end;

procedure TFrm_Men_Principal.CadastrodeSubgrupo1Click(Sender: TObject);
begin
  AbrirTela(1050);
end;

procedure TFrm_Men_Principal.CadastrodeTelasistema1Click(Sender: TObject);
begin
  AbrirTela(1051);
end;

procedure TFrm_Men_Principal.CadastrodeTipoEdio1Click(Sender: TObject);
begin
  AbrirTela(1052);
end;

procedure TFrm_Men_Principal.CadastrodeAcomodao1Click(Sender: TObject);
begin
  AbrirTela(1053);
end;

procedure TFrm_Men_Principal.CadastrodeTiposdeSaidaInternao1Click(
  Sender: TObject);
begin
  AbrirTela(1054);
end;

procedure TFrm_Men_Principal.CadastrodeTiposdeInternao1Click(
  Sender: TObject);
begin
  AbrirTela(1056);
end;

procedure TFrm_Men_Principal.MovDisqueteBaixaRemessa1Click(
  Sender: TObject);
begin
  AbrirTela(2021);
end;

procedure TFrm_Men_Principal.Mov20241Click(Sender: TObject);
begin
  AbrirTela(2024);
end;

procedure TFrm_Men_Principal.EspecialidadesMdicas1Click(Sender: TObject);
begin
  AbrirTela(4052);
end;

procedure TFrm_Men_Principal.btn_minimClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrm_Men_Principal.btn_closeClick(Sender: TObject);
begin
    if not Dlg_YesNo(MSG_DB_CON_SaiSistema, Self) then Exit ;
    Close;
end;

procedure TFrm_Men_Principal.CadastrodeTelasFavoritas1Click(
  Sender: TObject);
begin
  AbrirTela(1058);
end;

procedure TFrm_Men_Principal.FormDestroy(Sender: TObject);
begin
FinalizaLog;
end;

procedure TFrm_Men_Principal.CadastrodeDotao1Click(Sender: TObject);
begin
  AbrirTela(1059);
end;

procedure TFrm_Men_Principal.CadastrodeUnidadeOramentria1Click(
  Sender: TObject);
begin
  AbrirTela(1060);
end;

procedure TFrm_Men_Principal.Requerimentopara2viadeCarteirinha1Click(
  Sender: TObject);
begin
  AbrirTela(3049);
end;

procedure TFrm_Men_Principal.RelaodasInternaes1Click(Sender: TObject);
begin
  AbrirTela(3050);
end;

procedure TFrm_Men_Principal.PDJButton5Click(Sender: TObject);
begin
  AbrirTela(3048);
end;

procedure TFrm_Men_Principal.RelatriodeProcessosporSetor1Click(
  Sender: TObject);
begin
  AbrirTela(3051);
end;

procedure TFrm_Men_Principal.Agendamento1Click(Sender: TObject);
begin
  AbrirTela(2012);
end;

procedure TFrm_Men_Principal.CadastrodeReembolso1Click(Sender: TObject);
begin
  AbrirTela(2028);
end;

procedure TFrm_Men_Principal.Autorizao1Click(Sender: TObject);
begin
  AbrirTela(2025);
end;

procedure TFrm_Men_Principal.AutorizaoMdica1Click(Sender: TObject);
begin
  AbrirTela(1063);
end;

procedure TFrm_Men_Principal.Label3Click(Sender: TObject);
var wordapp:olevariant;
    WordDoc : OLEVariant;
begin
try
    WordApp := GetActiveOleObject('Word.Application');
  except on exception do
    WordApp := CreateOleObject('Word.Application');
  end;
      wordapp.Visible:=false;
 WordDoc:=WordApp.Documents.Open(DOC_AdmDeclaracoes+'Adesão - Dependente.mht');
// WordDoc.PrintOut;
WordDoc.PrintPreview;

//ShellExecute(Handle, 'open', PChar(DOC_AdmDeclaracoes+'2º via - declaração de perda.doc'), nil, nil, SW_SHOW);
//ShellExecute(Handle, 'open', PChar('D:\teste\Adesão - Mudança de Plano.xml'), nil, nil, SW_SHOW);
//ShellExecute(Handle, 'print', PChar(DOC_AdmDeclaracoes+'2º via - declaração de perda.doc'), nil, nil, SW_SHOW);
end;


procedure TFrm_Men_Principal.Label4Click(Sender: TObject);

//ShellExecute(Handle, 'open', PChar('net send douglas "teste 2"'), nil, nil, SW_show);
/////ShellExecute(Handle, 'open', 'http://imasf.netunify.com/54',nil,nil, SW_SHOWNORMAL);

//var em_subject, em_body, em_mail : string;
begin
   Frm_Tmp1.show;
{ em_subject := 'teste do assunto';
 em_body := 'teste do corpo da mensagem';

 em_mail := 'mailto:bruno.abc@uol.com.br?subject=' +
   em_subject + '&body=' + em_body ;

 ShellExecute(Handle,'open',
   PChar(em_mail), nil, nil, SW_SHOWNORMAL);  }
end;



////WinExec('net send spd10 "testeeeeee"', SW_HIDE);



procedure TFrm_Men_Principal.WMEndSession(var Msg : TWMEndSession);
begin 
  if Msg.EndSession = TRUE then
    Dlg_Erro('ATENÇÃO !!! NÃO DESLIGUE O WINDOWS COM O SISTEMA LIGADO', self);
  inherited;
end;

procedure TFrm_Men_Principal.RequerimentosdaRecepo1Click(Sender: TObject);
begin
  AbrirTela(3025);
end;

procedure TFrm_Men_Principal.Req1Click(Sender: TObject);
begin
  AbrirTela(3057);
end;

procedure TFrm_Men_Principal.SimulaodeContribuio2Click(Sender: TObject);
begin
  AbrirTela(3058);
end;

procedure TFrm_Men_Principal.RelatriodeBeneficiriosAtivos1Click(
  Sender: TObject);
begin
  AbrirTela(3059);
end;

procedure TFrm_Men_Principal.RelatriodeMovimentaoCadastral1Click(
  Sender: TObject);
begin
  AbrirTela(3060);
end;

procedure TFrm_Men_Principal.d1Click(Sender: TObject);
begin
  AbrirTela(1064);
end;

procedure TFrm_Men_Principal.d2Click(Sender: TObject);
begin
  AbrirTela(1065);
end;

procedure TFrm_Men_Principal.Label5Click(Sender: TObject);
begin
  if DB_TranCount > 0 then begin
    pa.Caption := 'TRANSACTIONS = '+INTTOSTR(DB_TranCount);
    pa.Visible := true ;
  end else
    pa.Visible := false ;
  ShowMessage('Verificado Transação');  
end;

procedure TFrm_Men_Principal.ExcluirInternao1Click(Sender: TObject);
begin
  AbrirTela(2032);
end;

procedure TFrm_Men_Principal.ExcluirOcorrncia1Click(Sender: TObject);
begin
  AbrirTela(2033);
end;

procedure TFrm_Men_Principal.ExcluirContaeoItem1Click(Sender: TObject);
begin
  AbrirTela(2034);
end;

procedure TFrm_Men_Principal.RelatriodeAgendamentos1Click(Sender: TObject);
begin
  AbrirTela(3053);
end;

procedure TFrm_Men_Principal.RelatriodosLotesdeEnviodeDescontos1Click(
  Sender: TObject);
begin
  AbrirTela(3052);
end;

procedure TFrm_Men_Principal.CadastrodeItemHonorrioEspecial1Click(
  Sender: TObject);
begin
  AbrirTela(1067);
end;

procedure TFrm_Men_Principal.CadastrodePendncias1Click(Sender: TObject);
begin
  AbrirTela(1066);
end;

procedure TFrm_Men_Principal.Label6Click(Sender: TObject);
begin
  if DB_TranCount > 0 then
    DB_Commit;
end;

procedure TFrm_Men_Principal.CadastrodeItensdeServio1Click(
  Sender: TObject);
begin
  AbrirTela(1068);
end;

procedure TFrm_Men_Principal.CadastrodeTiposdeConveniado1Click(
  Sender: TObject);
begin
  AbrirTela(1069);
end;

procedure TFrm_Men_Principal.RecuperaodeGlosas1Click(Sender: TObject);
begin
  AbrirTela(2035);
end;

procedure TFrm_Men_Principal.SituaesdoConeviado1Click(Sender: TObject);
begin
  AbrirTela(1044);
end;

procedure TFrm_Men_Principal.ArquivosdeerrosIMPSAT1Click(Sender: TObject);
begin
  AbrirTela(3031);
end;

procedure TFrm_Men_Principal.Requerimentos2Click(Sender: TObject);
begin
  AbrirTela(3025);
end;

procedure TFrm_Men_Principal.ProcessamentodoBoletoBancrio1Click(
  Sender: TObject);
begin
  AbrirTela(2002);
end;

procedure TFrm_Men_Principal.TesourariaDescontos1Click(Sender: TObject);
begin
  abrirTela(2003);
end;

procedure TFrm_Men_Principal.ProcessamentodaFolha1Click(
  Sender: TObject);
begin
  AbrirTela(2005);
end;

procedure TFrm_Men_Principal.CadastrodeFornecedoresdaFarmciadoIMASF1Click(
  Sender: TObject);
begin
  AbrirTela(1009);
end;

procedure TFrm_Men_Principal.RelatriodeFornecedoresdaFarmciadoIMASF1Click(
  Sender: TObject);
begin
  AbrirTela(3032);
end;

procedure TFrm_Men_Principal.ConsultasdeVendasdaFarmciapeloBeneficirio1Click(
  Sender: TObject);
begin
  AbrirTela(3033);
end;

procedure TFrm_Men_Principal.edt_cod_telasistemaButtonClick(Sender: TObject);
var
  FPesquisaSQL : String ;
begin
  FPesquisaSQL := 'select cod_telasistema, nome_tls from tbl_telasistema where cod_telasistema < 4000';
  if edt_cod_telasistema.text = '' then
    edt_cod_telasistema.text := Cons_ConsultaCadastro(self, 'tbl_telasistema', '',
    'Cod. Tela do Sistema, Nome / Título da Tela', 'Localizar Tela do Sistema', FPesquisaSQL, true)
  else
    btn_AbrirAtalhoClick(self);
end;

procedure TFrm_Men_Principal.CadastrodeItensdeTransposio1Click(
  Sender: TObject);
begin
  AbrirTela(1036);
end;

procedure TFrm_Men_Principal.Ext1Click(Sender: TObject);
begin
  AbrirTela(3063);
end;

procedure TFrm_Men_Principal.Button1Click(Sender: TObject);
begin
  Frm_Tmp2.show;
end;

procedure TFrm_Men_Principal.Button2Click(Sender: TObject);
begin
  Frm_Tmp3.show;
end;

procedure TFrm_Men_Principal.AutorizaodeAtendimento1Click(Sender: TObject);
begin
  AbrirTela(3066);
end;

procedure TFrm_Men_Principal.CadastrodeSubGrupos1Click(Sender: TObject);
begin
  AbrirTela(1050);
end;

procedure TFrm_Men_Principal.CadastrodeValorBaseparaItensdeServio1Click(
  Sender: TObject);
begin
  AbrirTela(1070);
end;

procedure TFrm_Men_Principal.RelaodeTotaldeMateriaiseMedicamentosporPeriodo1Click(
  Sender: TObject);
begin
  AbrirTela(3068);
end;

procedure TFrm_Men_Principal.FormResize(Sender: TObject);
begin
  btn_minim.left := img_principal.Width - btn_minim.Width - btn_close.Width - 1;
  btn_close.left := img_principal.Width - btn_close.Width + 1;
end;

procedure TFrm_Men_Principal.CadastrodeTestoparaoRequerimento1Click(
  Sender: TObject);
begin
  AbrirTela(1072);
end;

procedure TFrm_Men_Principal.ListagemTemporriaTutelado1Click(
  Sender: TObject);
begin
  with Fdt_principal6.spc_tmp_relatorioTutelado do
  begin
    close;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_tmp_relatorioTutelado;
  Frm_Bas_Impressao.showReport(4160);
  Fdt_principal6.spc_tmp_relatorioTutelado.close;
end;

procedure TFrm_Men_Principal.CadastrodeItemHonorrioporCRM1Click(
  Sender: TObject);
begin
  AbrirTela(1073);
end;

procedure TFrm_Men_Principal.RecebimentodeCarteirinhas1Click(
  Sender: TObject);
begin
  AbrirTela(2045);
end;

procedure TFrm_Men_Principal.EmissodeCarteirinha1Click(Sender: TObject);
begin
  AbrirTela(2023);
end;

procedure TFrm_Men_Principal.SugestodeCompra1Click(Sender: TObject);
begin
  AbrirTela(2037);
end;

procedure TFrm_Men_Principal.PedidosEfetuados1Click(Sender: TObject);
begin
  AbrirTela(3064);
end;

procedure TFrm_Men_Principal.CarregarArquivoTXT1Click(Sender: TObject);
begin
  AbrirTela(2029);
end;

procedure TFrm_Men_Principal.ConsultarPatronal1Click(Sender: TObject);
begin
  AbrirTela(3029);
end;

procedure TFrm_Men_Principal.RelatriodeContribuioPatronal1Click(
  Sender: TObject);
begin
  AbrirTela(3070);
end;

procedure TFrm_Men_Principal.ItemdeServioProcedimentonorealizadopeloBeneficirio1Click(
  Sender: TObject);
begin
  AbrirTela(3069);
end;

procedure TFrm_Men_Principal.RelatriodeDescontosAntigos1Click(
  Sender: TObject);
begin
  AbrirTela(3071);
end;

procedure TFrm_Men_Principal.CadastrodeOfciosdeReembolso1Click(
  Sender: TObject);
begin
  AbrirTela(1074);
end;

procedure TFrm_Men_Principal.Etiquetasdo1Click(Sender: TObject);
begin
  AbrirTela(3062);
end;

procedure TFrm_Men_Principal.ProcedimentosRealizadosporCodigodeAutorizao1Click(
  Sender: TObject);
begin
  AbrirTela(3072);
end;

procedure TFrm_Men_Principal.RelaodasAutorizaesMdicas1Click(
  Sender: TObject);
begin
  AbrirTela(3073);
end;

procedure TFrm_Men_Principal.RelatriodeIncidnciadeCID1Click(
  Sender: TObject);
begin
  AbrirTela(3034);
end;

procedure TFrm_Men_Principal.A1Click(Sender: TObject);
begin
  AbrirTela(3074);
end;

procedure TFrm_Men_Principal.AlteraodeAgendamentos1Click(Sender: TObject);
begin
  AbrirTela(1062);
end;

procedure TFrm_Men_Principal.PorMdico1Click(Sender: TObject);
begin
  AbrirTela(3006);
end;

procedure TFrm_Men_Principal.porEspecialidade1Click(Sender: TObject);
begin
  AbrirTela(3012);
end;

procedure TFrm_Men_Principal.RelatriodePagamentosporConveniado1Click(
  Sender: TObject);
begin
  AbrirTela(3031);
end;

procedure TFrm_Men_Principal.DescontosPFGB1Click(Sender: TObject);
begin
  AbrirTela(2042);
end;

procedure TFrm_Men_Principal.ArquivodeBaixasdeDescontos1Click(
  Sender: TObject);
begin
  AbrirTela(3014);
end;

procedure TFrm_Men_Principal.RegiesABCMetropolitanaetc1Click(
  Sender: TObject);
begin
  AbrirTela(1075);
end;

procedure TFrm_Men_Principal.PrCadastrodeAssistidos1Click(Sender: TObject);
begin
  AbrirTela(1076);
end;

procedure TFrm_Men_Principal.AcompanhamentodaInscriodeAssistidos1Click(
  Sender: TObject);
begin
  AbrirTela(2046);
end;

procedure TFrm_Men_Principal.CadastrodeAfiliados1Click(Sender: TObject);
begin
  AbrirTela(1071);
end;

procedure TFrm_Men_Principal.TranfernciadeMatrculas1Click(Sender: TObject);
begin
  AbrirTela(2048);
end;

procedure TFrm_Men_Principal.EntradaeSaidadeDependente1Click(
  Sender: TObject);
begin
  AbrirTela(3076);
end;

procedure TFrm_Men_Principal.CriticasdeAutorizaes1Click(Sender: TObject);
begin
  AbrirTela(2051);
end;

procedure TFrm_Men_Principal.CriticasdeCorpoClinico1Click(Sender: TObject);
begin
  AbrirTela(2052);
end;

procedure TFrm_Men_Principal.FatorModeradorparaHospitaisProcedimentos1Click(
  Sender: TObject);
begin
  AbrirTela(2053);
end;

procedure TFrm_Men_Principal.BeneficiariosemTratamentoemHospitais1Click(
  Sender: TObject);
begin
  AbrirTela(2054);
end;

procedure TFrm_Men_Principal.HospitaisdeReferncia15reais1Click(
  Sender: TObject);
begin
  AbrirTela(3077);
end;

procedure TFrm_Men_Principal.EmissodeCarteirinhasdaUnimed1Click(
  Sender: TObject);
begin
  AbrirTela(2056);
end;

procedure TFrm_Men_Principal.RecebimentodeCarteirinhasdaUnimed1Click(
  Sender: TObject);
begin
  AbrirTela(2057);
end;

procedure TFrm_Men_Principal.ParmetrosparaCadastroRpido1Click(
  Sender: TObject);
begin
  AbrirTela(2058);
end;

procedure TFrm_Men_Principal.menuAtualizaRelatorioClick(Sender: TObject);
begin
  AtualizaRelatorios;
end;

procedure TFrm_Men_Principal.CadastrodeCeps1Click(Sender: TObject);
begin
  AbrirTela(1077);
end;

procedure TFrm_Men_Principal.Vacinao1Click(Sender: TObject);
begin
   AbrirTela(2064);
end;

procedure TFrm_Men_Principal.cbx_cod_telasistemaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    btn_AbrirAtalhoClick(self);
end;

procedure TFrm_Men_Principal.RelatriodeProcessossemAndamento1Click(
  Sender: TObject);
begin
  AbrirTela(3080);
end;

procedure TFrm_Men_Principal.RelaodeBeneficiariosdoPFGBmaiorouiguala16anos1Click(
  Sender: TObject);
begin
  AbrirTela(3083);
end;

procedure TFrm_Men_Principal.GerarArquivosdeFolhaConsignumeFAEE1Click(
  Sender: TObject);
begin
  AbrirTela(2074);
end;

procedure TFrm_Men_Principal.ConfigurarEnviodeemail1Click(Sender: TObject);
begin
  AbrirTela(1081);
end;

procedure TFrm_Men_Principal.GeraodosarquivosdeFolha1Click(
  Sender: TObject);
begin
  AbrirTela(2074);
end;

procedure TFrm_Men_Principal.men_simulacontribClick(Sender: TObject);
begin
  AbrirTela(3084);
end;

procedure TFrm_Men_Principal.RepassedeContasNovosEmpenhos1Click(
  Sender: TObject);
begin
  AbrirTela(2075);
end;

procedure TFrm_Men_Principal.ExtratodeCoparticipao1Click(Sender: TObject);
begin
  AbrirTela(3085);
end;

procedure TFrm_Men_Principal.CadastrodeGestante1Click(Sender: TObject);
begin
  AbrirTela(2076);
end;

procedure TFrm_Men_Principal.FechamentoMensal1Click(Sender: TObject);
begin
  AbrirTela(3086);
end;

end.


