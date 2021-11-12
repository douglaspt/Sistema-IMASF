unit Men_Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Menus, ComCtrls, ExtCtrls, BarPopupMenu, PDJButton,
  BarMenus, BcDrawModule, BcCustomDrawModule, imglist, DCChoice, BDE, jpeg;

type
  TFrm_Men_Principal = class(TForm)
    StB_Principal: TStatusBar;
    Panel2: TPanel;
    Image1: TImage;
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
    Recepo1: TMenuItem;
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
    MenuItem1: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem24: TMenuItem;
    PDJButton2: TPDJButton;
    Conveniados1: TMenuItem;
    Processamento1: TMenuItem;
    GeraodeArquivoMagntico1: TMenuItem;
    ReceberConta1: TMenuItem;
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
    N3: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Extratos1: TMenuItem;
    porBeneficirio1: TMenuItem;
    porConveniado1: TMenuItem;
    AtendimentosRealizadospeloBeneficirio1: TMenuItem;
    porItemdeServio1: TMenuItem;
    AtendimentosRealizadosporBeneficirios1: TMenuItem;
    EmissodeExtratoparaEnvio1: TMenuItem;
    ResumodasContasdoConvnio1: TMenuItem;
    ProcedimentosExecutadosporConveniados1: TMenuItem;
    ExtratodoBeneficirioSimplificado1: TMenuItem;
    ExtratodoBeneficirioDetalhado1: TMenuItem;
    N10: TMenuItem;
    ExtratodoBeneficirioAnaltico1: TMenuItem;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ExtratodoBeneficirioAnaltico2: TMenuItem;
    ConveniadosItemServio1: TMenuItem;
    ResumodeContasdeConveniados1: TMenuItem;
    ConsultasporEspecialidade1: TMenuItem;
    porCRM1: TMenuItem;
    DistribuiodasContasdosConveniadosporPlano1: TMenuItem;
    DisquetedeAtualizao1: TMenuItem;
    ConsultarItemdeServio1: TMenuItem;
    GeraodeDescontos1: TMenuItem;
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
    ExcluiDescontosAutomticos1: TMenuItem;
    RenovaodaInscriodeDependentes1: TMenuItem;
    N11: TMenuItem;
    N18: TMenuItem;
    GerarDisqueteArquivoMagntico1: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    HistricodoSegurado1: TMenuItem;
    N22: TMenuItem;
    LanamentoManualdeDesconto1: TMenuItem;
    SetornoInstituto1: TMenuItem;
    Usurios1: TMenuItem;
    FaixaEtria1: TMenuItem;
    AcessosdosUsuriosnoSistema1: TMenuItem;
    Tmr_Senha: TTimer;
    PDJButton3: TPDJButton;
    N23: TMenuItem;
    ResumodeDescontosporInscrio1: TMenuItem;
    BaixaAutomtica1: TMenuItem;
    Panel4: TPanel;
    edt_cod_telasistema: TDCChoiceEdit;
    Label6: TLabel;
    btn_AbrirAtalho: TPDJButton;
    Panel3: TPanel;
    Label7: TLabel;
    PDJButton5: TPDJButton;
    cbx_cod_telasistema: TDCComboBox;
    Reembolso1: TMenuItem;
    CadastrodePrestadordeServiosMdicos1: TMenuItem;
    IndicesdeReajuste1: TMenuItem;
    FichadeBeneficirios1: TMenuItem;
    Parcelamento1: TMenuItem;
    Requerimentos1: TMenuItem;
    Etiquetas1: TMenuItem;
    Servidores1: TMenuItem;
    PDJButton4: TPDJButton;
    Men_Tramite: TBcBarPopupMenu;
    CadastroeTramitedeProcessos1: TMenuItem;
    RemessadeProcessos1: TMenuItem;
    UnimedABC1: TMenuItem;
    GeraodeDisquetedeBeneficirios1: TMenuItem;
    GerarDisqueteBancodoBrasil1: TMenuItem;
    N24: TMenuItem;
    GerarNossoNmerodeBoleto1: TMenuItem;
    PDJButton6: TPDJButton;
    RelacionamentodeItensdeServio1: TMenuItem;
    PDJButton7: TPDJButton;
    Tmr_Comunicador: TTimer;
    PDJButton8: TPDJButton;
    edt_carteirinha: TEdit;
    pnl_alertacartao: TPanel;
    Carteirinhas1: TMenuItem;
    pnl_alerta: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RelaodeContasnoRepassadas1: TMenuItem;
    N25: TMenuItem;
    Listagens1: TMenuItem;
    ListagemdePlanosdePagamentoEmpresa1: TMenuItem;
    ListagemdeCotaodoIndice1: TMenuItem;
    ListagemdeEspecialidadesMdicas1: TMenuItem;
    ListagemdeClassesdeConvenio1: TMenuItem;
    ListagemdeCID1: TMenuItem;
    ListagemdeUsuriosdoSistema1: TMenuItem;
    N26: TMenuItem;
    ErrosAutomaoImpsat1: TMenuItem;
    Relatriodecontratosprcerros1: TMenuItem;
    RelaodeAfiliadosErros1: TMenuItem;
    RelaodePrestadoresErros1: TMenuItem;
    RelaodeEstabelecimentosErros1: TMenuItem;
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
    procedure ReceberConta1Click(Sender: TObject);
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
    procedure AtendimentosRealizadospeloBeneficirio1Click(Sender: TObject);
    procedure ExtratodoBeneficirioAnaltico1Click(Sender: TObject);
    procedure Conveniados1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExtratodoBeneficirioAnaltico2Click(Sender: TObject);
    procedure ConveniadosItemServio1Click(Sender: TObject);
    procedure ResumodasContasdoConvnio1Click(Sender: TObject);
    procedure ProcedimentosExecutadosporConveniados1Click(Sender: TObject);
    procedure ResumodeContasdeConveniados1Click(Sender: TObject);
    procedure ConsultasporEspecialidade1Click(Sender: TObject);
    procedure AtendimentosRealizadosporBeneficirios1Click(Sender: TObject);
    procedure porCRM1Click(Sender: TObject);
    procedure DistribuiodasContasdosConveniadosporPlano1Click(
      Sender: TObject);
    procedure DisquetedeAtualizao1Click(Sender: TObject);
    procedure configuraodeParmetros1Click(Sender: TObject);
    procedure ConsultarItemdeServio1Click(Sender: TObject);
    procedure PlanosdePagamento1Click(Sender: TObject);
    procedure Tarifa1Click(Sender: TObject);
    procedure GeraodeDescontos1Click(Sender: TObject);
    procedure TotaldeItemdeServio1Click(Sender: TObject);
    procedure BcCustomDrawModule1DrawMenuItem(Sender: TObject;
      AMenuItem: TMenuItem; ACanvas: TCanvas; ARect: TRect;
      State: TOwnerDrawState; ABarVisible: Boolean;
      var DefaultDraw: Boolean);
    procedure BcCustomDrawModule1MeasureMenuItem(Sender: TObject;
      AMenuItem: TMenuItem; ACanvas: TCanvas; var Width, Height: Integer;
      ABarVisible: Boolean; var DefaultMeasure: Boolean);
    procedure ExcluiDescontosAutomticos1Click(Sender: TObject);
    procedure RenovaodaInscriodeDependentes1Click(Sender: TObject);
    procedure GerarDisqueteArquivoMagntico1Click(Sender: TObject);
    procedure HistricodoSegurado1Click(Sender: TObject);
    procedure LanamentoManualdeDesconto1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetornoInstituto1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FaixaEtria1Click(Sender: TObject);
    procedure AcessosdosUsuriosnoSistema1Click(Sender: TObject);
    procedure Tmr_SenhaTimer(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure ResumodeDescontosporInscrio1Click(Sender: TObject);
    procedure BaixaAutomtica1Click(Sender: TObject);
    procedure btn_AbrirAtalhoClick(Sender: TObject);
    procedure edt_cod_telasistemaButtonClick(Sender: TObject);
    procedure edt_cod_telasistemaKeyPress(Sender: TObject; var Key: Char);
    procedure CadastrodePrestadordeServiosMdicos1Click(Sender: TObject);
    procedure IndicesdeReajuste1Click(Sender: TObject);
    procedure FichadeBeneficirios1Click(Sender: TObject);
    procedure Parcelamento1Click(Sender: TObject);
    procedure Requerimentos1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Servidores1Click(Sender: TObject);
    procedure CadastroeTramitedeProcessos1Click(Sender: TObject);
    procedure RemessadeProcessos1Click(Sender: TObject);
    procedure GeraodeDisquetedeBeneficirios1Click(Sender: TObject);
    procedure GerarDisqueteBancodoBrasil1Click(Sender: TObject);
    procedure GerarNossoNmerodeBoleto1Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure RelacionamentodeItensdeServio1Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure Tmr_ComunicadorTimer(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure edt_carteirinhaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_carteirinhaExit(Sender: TObject);
    procedure Carteirinhas1Click(Sender: TObject);
    procedure RelaodeContasnoRepassadas1Click(Sender: TObject);
    procedure ListagemdePlanosdePagamentoEmpresa1Click(Sender: TObject);
    procedure ListagemdeCotaodoIndice1Click(Sender: TObject);
    procedure ListagemdeEspecialidadesMdicas1Click(Sender: TObject);
    procedure ListagemdeClassesdeConvenio1Click(Sender: TObject);
    procedure ListagemdeCID1Click(Sender: TObject);
    procedure ListagemdeUsuriosdoSistema1Click(Sender: TObject);
    procedure Relatriodecontratosprcerros1Click(Sender: TObject);
    procedure RelaodeAfiliadosErros1Click(Sender: TObject);
    procedure RelaodePrestadoresErros1Click(Sender: TObject);
    procedure RelaodeEstabelecimentosErros1Click(Sender: TObject);
  private
    { Private declarations }
    FDrawBuffer: TBitmap;
    function GetDrawBuffer: TBitmap;
    procedure ShowHint(Sender: TObject);
    function AbrirTela(Cod_TelaSistema : Integer): boolean;
    procedure ForceForegroundWindow(Handle: HWND);
    function IsTaskbarAutoHideOn : boolean;
  public
    { Public declarations }
    procedure DrawGradient(Canvas: TCanvas; ARect: TRect; StartingColor,
      EndingColor: TColor; Style: TGradientStyle);

    property DrawBuffer: TBitmap read GetDrawBuffer;
  end;

var
  Frm_Men_Principal: TFrm_Men_Principal;

implementation
uses Cad_Empresa, Dlg_Mensagem, Constantes, dtm_principal, Cad_Plano, Cad_uf, Fun_DB,
Cad_sitbeneficiario, Cad_estadociv, Cad_tiposegurado, Cad_Segurado, Cad_Seguradora,
Cad_TipoSeguro, Cad_FormaAdm, Cad_SituacEmpr, Cad_SetorEmp, Cad_TipoDependente,
Cad_EstFisico, Cad_grauparent, Cad_dependente, Mov_RecebeConta, Rel_StatusConta,
Mov_ProcessarConta, Mov_ExcluirConta, Mov_RepasseConta, Mov_CancRepasseConta,
Rel_ContaRepassar, Rel_ContaRepassada, Rel_Glosa, Rel_DespConvPlano001, Rel_ExtratoBenefi001,
Rel_ExtratoBenefi002, Cad_Conveniado, Rel_ExtratoBenefi003, Cad_ConveniadoItem,
Rel_ExtratoConven001, Rel_ExtratoItem001, Rel_ExtratoConven002, Rel_ExtratoItem002,
Rel_ExtratoItem003, Rel_ExtratoCRM001, Rel_DespConvPlano002, Mov_DisqueteBenefi,
Cad_PlanoItemValor, Rel_Item001, Cad_PlanoPagto, Cad_PlanoEmpresa, Cad_Tarifa,
Mov_GeraDescontoFolha, Rel_ExtratoItem004, ShellAPI, BcRectUtilities, Fun_Acesso,
Mov_ExcluiDescontoAutom, Rel_DependRenovacao, Mov_GeraDSKDesconto, Rel_HistoricoBenefi,
Mov_DescontoManual, dtm_principal2, Cad_SetorIMASF, Cad_Usuario, Rel_ExtratoItem006,
Cad_Acesso, Dlg_Senha, Rel_ExtratoDesconto001, Mov_DisqueteBaixaBanco, Cad_ItemTransposicao,
Fun_ConsCadastro, Cad_PrestadorSM, Cad_CotacaoIndice, Mov_Parcelamento, Rel_FichaBenefi001,
Rel_Requerimento001, Rel_EtiquetaBenefi001, cad_fpm, Mov_Tramite, Mov_RemesTramite,
Mov_GeraDSKUnimed, Mov_GeraDSKBancoBrasil, Mov_GeraNossoNumBoleto, Rel_ExtratoItemRelaciona001,
Dlg_Comunicador, Dlg_EnviaMensagem, Mov_2023, Cad_asstramite, Cad_cid, Cad_classeconvenio,
Cad_corprocesso, Cad_espmedamb, Cad_categoriadpd, Cad_crm,Cad_conveniadoendereco, Cad_erroglosa,
Cad_faixaetaria, Cad_grandegrupo, Cad_indice, Cad_nivelcar, Cad_parametro, Cad_sitconveniado,
Cad_sitdesconto, Cad_situacaodpd, Cad_statuscarteira, Cad_statusconta,Cad_statusenvio,
Cad_subgrupo, Cad_telasistema, Cad_tipoedicao, Imp_4049, Imp_4050, Imp_4051,
Rel_3030, Rel_3031, Rel_3032, Rel_3033, Rel_3034, Imp_4052, dtm_principal3;


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

procedure TFrm_Men_Principal.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Men_Principal.ShowHint(Sender: TObject);
begin
  StB_Principal.Panels[1].text := Application.Hint;
end;

procedure TFrm_Men_Principal.FormCreate(Sender: TObject);
begin
  pnl_alerta.visible := DB_OpenDataBase(self) > 1 ;
//  fdt_principal2.bd_imasf2.Open;
///////  fdt_relatorio.bd_imasfrelatorio.Open;
  Timer.Enabled := true ;
end;

procedure TFrm_Men_Principal.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint ;
  DB_ExecSQL('set transaction isolation level read uncommitted');
  IsTaskbarAutoHideOn;
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
  Hide;
  Frm_Cad_Plano := TFrm_Cad_Plano.Create(Self);
  Frm_Cad_Plano.ShowModal;
  Frm_Cad_Plano.Release;
  Show;
end;

procedure TFrm_Men_Principal.UnidadesdaFederao1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_uf := TFrm_Cad_uf.Create(Self);
  Frm_Cad_uf.ShowModal;
  Frm_Cad_uf.Release;
  Show;
end;

procedure TFrm_Men_Principal.SituaodosBeneficirios1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_sitbeneficiario := TFrm_Cad_sitbeneficiario.Create(Self);
  Frm_Cad_sitbeneficiario.ShowModal;
  Frm_Cad_sitbeneficiario.Release;
  Show;

end;

procedure TFrm_Men_Principal.EstadoCivil1Click(Sender: TObject);
begin
  AbrirTela(1005);
end;

procedure TFrm_Men_Principal.TipodeSegurado1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_tiposegurado := TFrm_Cad_tiposegurado.Create(Self);
  Frm_Cad_tiposegurado.ShowModal;
  Frm_Cad_tiposegurado.Release;
  Show;

end;
                                                                                                                                                                                                                                                                                                                                                                                                                    
procedure TFrm_Men_Principal.Segurados1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
  Frm_Cad_Segurado.ShowModal;
  Frm_Cad_Segurado.Release;
  Show;
end;

procedure TFrm_Men_Principal.TimerTimer(Sender: TObject);
begin
//  StB_Principal.Panels[2].text := DateTimeToStr(Now) ;
  StB_Principal.Panels[2].text := FormatDateTime('dd/mm/yyyy hh:mm', Now) ;
end;

procedure TFrm_Men_Principal.Seguradora1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_Seguradora := TFrm_Cad_Seguradora.Create(Self);
  Frm_Cad_Seguradora.ShowModal;
  Frm_Cad_Seguradora.Release;
  Show;
end;

procedure TFrm_Men_Principal.TipodeSeguros1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_TipoSeguro := TFrm_Cad_TipoSeguro.Create(Self);
  Frm_Cad_TipoSeguro.ShowModal;
  Frm_Cad_TipoSeguro.Release;
  Show;
end;

procedure TFrm_Men_Principal.FormadeAdmisso1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_formaadm := TFrm_Cad_formaadm.Create(Self);
  Frm_Cad_formaadm.ShowModal;
  Frm_Cad_formaadm.Release;
  Show;
end;

procedure TFrm_Men_Principal.SituaonaEmpresa1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_SituacEmpr := TFrm_Cad_SituacEmpr.Create(Self);
  Frm_Cad_SituacEmpr.ShowModal;
  Frm_Cad_SituacEmpr.Release;
  Show;
end;

procedure TFrm_Men_Principal.SetordaEmpresa1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_SetorEmp := TFrm_Cad_SetorEmp.Create(Self);
  Frm_Cad_SetorEmp.ShowModal;
  Frm_Cad_SetorEmp.Release;
  Show;
end;

procedure TFrm_Men_Principal.TipodeDependncia1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_TipoDependente := TFrm_Cad_TipoDependente.Create(Self);
  Frm_Cad_TipoDependente.ShowModal;
  Frm_Cad_TipoDependente.Release;
  Show;
end;

procedure TFrm_Men_Principal.EstadoFsico1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_EstFisico := TFrm_Cad_EstFisico.Create(Self);
  Frm_Cad_EstFisico.ShowModal;
  Frm_Cad_EstFisico.Release;
  Show;
end;

procedure TFrm_Men_Principal.GraudeParentesco1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_grauparent := TFrm_Cad_grauparent.Create(Self);
  Frm_Cad_grauparent.ShowModal;
  Frm_Cad_grauparent.Release;
  Show;
end;

procedure TFrm_Men_Principal.Dependentes1Click(Sender: TObject);
begin
  AbrirTela(1003);
end;

procedure TFrm_Men_Principal.GeraodeArquivoMagntico1Click(Sender: TObject);
begin
  winExec('c:\conveniado\stconven.exe', sw_show);
end;

procedure TFrm_Men_Principal.ReceberConta1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_RecebeConta := TFrm_Mov_RecebeConta.Create(Self);
  Frm_Mov_RecebeConta.ShowModal;
  Frm_Mov_RecebeConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.ReceberArquivoMagntico1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_ProcessarConta := TFrm_Mov_ProcessarConta.Create(Self);
  Frm_Mov_ProcessarConta.ShowModal;
  Frm_Mov_ProcessarConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.ExcluirConta1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_ExcluirConta := TFrm_Mov_ExcluirConta.Create(Self);
  Frm_Mov_ExcluirConta.ShowModal;
  Frm_Mov_ExcluirConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.RepassedeContas1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_RepasseConta := TFrm_Mov_RepasseConta.Create(Self);
  Frm_Mov_RepasseConta.ShowModal;
  Frm_Mov_RepasseConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.CancelamentodeRepasse1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_CancRepasseConta := TFrm_Mov_CancRepasseConta.Create(Self);
  Frm_Mov_CancRepasseConta.ShowModal;
  Frm_Mov_CancRepasseConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.Repasse1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_ContaRepassar := TFrm_Rel_ContaRepassar.Create(Self);
  Frm_Rel_ContaRepassar.ShowModal;
  Frm_Rel_ContaRepassar.Release;
  Show;
end;

procedure TFrm_Men_Principal.StatuddaConta1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_StatusConta := TFrm_Rel_StatusConta.Create(Self);
  Frm_Rel_StatusConta.ShowModal;
  Frm_Rel_StatusConta.Release;
  Show;
end;

procedure TFrm_Men_Principal.ContasRepassadasContabilidade1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ContaRepassada := TFrm_Rel_ContaRepassada.Create(Self);
  Frm_Rel_ContaRepassada.ShowModal;
  Frm_Rel_ContaRepassada.Release;
  Show;
end;

procedure TFrm_Men_Principal.RelaodeGlosas1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_Glosa := TFrm_Rel_Glosa.Create(Self);
  Frm_Rel_Glosa.ShowModal;
  Frm_Rel_Glosa.Release;
  Show;
end;

procedure TFrm_Men_Principal.DistribuiodeValoresdoConveniadoporPlano1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_DespConvPlano001 := TFrm_Rel_DespConvPlano001.Create(Self);
  Frm_Rel_DespConvPlano001.ShowModal;
  Frm_Rel_DespConvPlano001.Release;
  Show;
end;

procedure TFrm_Men_Principal.AtendimentosRealizadospeloBeneficirio1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoBenefi001 := TFrm_Rel_ExtratoBenefi001.Create(Self);
  Frm_Rel_ExtratoBenefi001.ShowModal;
  Frm_Rel_ExtratoBenefi001.Release;
  Show;
end;

procedure TFrm_Men_Principal.ExtratodoBeneficirioAnaltico1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoBenefi002 := TFrm_Rel_ExtratoBenefi002.Create(Self);
  Frm_Rel_ExtratoBenefi002.ShowModal;
  Frm_Rel_ExtratoBenefi002.Release;
  Show;
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
      82 : ReceberConta1Click(self) ;
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
  Hide;
  Frm_Rel_ExtratoBenefi003 := TFrm_Rel_ExtratoBenefi003.Create(Self);
  Frm_Rel_ExtratoBenefi003.ShowModal;
  Frm_Rel_ExtratoBenefi003.Release;
  Show;
end;

procedure TFrm_Men_Principal.ConveniadosItemServio1Click(Sender: TObject);
begin
  AbrirTela(1002);
end;

procedure TFrm_Men_Principal.ResumodasContasdoConvnio1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoConven001 := TFrm_Rel_ExtratoConven001.Create(Self);
  Frm_Rel_ExtratoConven001.ShowModal;
  Frm_Rel_ExtratoConven001.Release;
  Show;
end;

procedure TFrm_Men_Principal.ProcedimentosExecutadosporConveniados1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoItem001 := TFrm_Rel_ExtratoItem001.Create(Self);
  Frm_Rel_ExtratoItem001.ShowModal;
  Frm_Rel_ExtratoItem001.Release;
  Show;
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


procedure TFrm_Men_Principal.ConsultasporEspecialidade1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoItem002 := TFrm_Rel_ExtratoItem002.Create(Self);
  Frm_Rel_ExtratoItem002.ShowModal;
  Frm_Rel_ExtratoItem002.Release;
  Show;
end;

procedure TFrm_Men_Principal.AtendimentosRealizadosporBeneficirios1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoItem003 := TFrm_Rel_ExtratoItem003.Create(Self);
  Frm_Rel_ExtratoItem003.ShowModal;
  Frm_Rel_ExtratoItem003.Release;
  Show;
end;

procedure TFrm_Men_Principal.porCRM1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoCRM001 := TFrm_Rel_ExtratoCRM001.Create(Self);
  Frm_Rel_ExtratoCRM001.ShowModal;
  Frm_Rel_ExtratoCRM001.Release;
  Show;
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
  Hide;
  Frm_Mov_DisqueteBenefi := TFrm_Mov_DisqueteBenefi.Create(Self);
  Frm_Mov_DisqueteBenefi.ShowModal;
  Frm_Mov_DisqueteBenefi.Release;
  Show;
end;

procedure TFrm_Men_Principal.configuraodeParmetros1Click(Sender: TObject);
begin
  Hide;
{  Frm_Cad_PlanoItemValor := TFrm_Cad_PlanoItemValor.Create(Self);
  Frm_Cad_PlanoItemValor.ShowModal;
  Frm_Cad_PlanoItemValor.Release;}
  Frm_Cad_PlanoEmpresa := TFrm_Cad_PlanoEmpresa.Create(Self);
  Frm_Cad_PlanoEmpresa.ShowModal;
  Frm_Cad_PlanoEmpresa.Release;
  Show;
end;

procedure TFrm_Men_Principal.ConsultarItemdeServio1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_Item001 := TFrm_Rel_Item001.Create(Self);
  Frm_Rel_Item001.ShowModal;
  Frm_Rel_Item001.Release;
  Show;
end;

procedure TFrm_Men_Principal.PlanosdePagamento1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_PlanoPagto := TFrm_Cad_PlanoPagto.Create(Self);
  Frm_Cad_PlanoPagto.ShowModal;
  Frm_Cad_PlanoPagto.Release;
  Show;
end;

procedure TFrm_Men_Principal.Tarifa1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_Tarifa := TFrm_Cad_Tarifa.Create(Self);
  Frm_Cad_Tarifa.ShowModal;
  Frm_Cad_Tarifa.Release;
  Show;
end;

procedure TFrm_Men_Principal.GeraodeDescontos1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_GeraDescontoFolha := TFrm_Mov_GeraDescontoFolha.Create(Self);
  Frm_Mov_GeraDescontoFolha.ShowModal;
  Frm_Mov_GeraDescontoFolha.Release;
  Show;
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

procedure TFrm_Men_Principal.ExcluiDescontosAutomticos1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Mov_ExcluiDescontoAutom := TFrm_Mov_ExcluiDescontoAutom.Create(Self);
  Frm_Mov_ExcluiDescontoAutom.ShowModal;
  Frm_Mov_ExcluiDescontoAutom.Release;
  Show;
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
  Hide;
  Frm_Mov_GeraDSKDesconto := TFrm_Mov_GeraDSKDesconto.Create(Self);
  Frm_Mov_GeraDSKDesconto.ShowModal;
  Frm_Mov_GeraDSKDesconto.Release;
  Show;
end;

procedure TFrm_Men_Principal.HistricodoSegurado1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_HistoricoBenefi := TFrm_Rel_HistoricoBenefi.Create(Self);
  Frm_Rel_HistoricoBenefi.ShowModal;
  Frm_Rel_HistoricoBenefi.Release;
  Show;
end;

procedure TFrm_Men_Principal.LanamentoManualdeDesconto1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Mov_DescontoManual := TFrm_Mov_DescontoManual.Create(Self);
  Frm_Mov_DescontoManual.ShowModal;
  Frm_Mov_DescontoManual.Release;
  Show;
end;

procedure TFrm_Men_Principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fdt_principal.bd_imasf.Close;
//  fdt_principal2.bd_imasf2.Close;
end;

procedure TFrm_Men_Principal.SetornoInstituto1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_SetorIMASF := TFrm_Cad_SetorIMASF.Create(Self);
  Frm_Cad_SetorIMASF.ShowModal;
  Frm_Cad_SetorIMASF.Release;
  Show;
end;

procedure TFrm_Men_Principal.Usurios1Click(Sender: TObject);
begin
  Hide;
  Frm_Cad_Usuario := TFrm_Cad_Usuario.Create(Self);
  Frm_Cad_Usuario.ShowModal;
  Frm_Cad_Usuario.Release;
  Show;
end;

procedure TFrm_Men_Principal.FaixaEtria1Click(Sender: TObject);
begin
  Hide;
  Frm_Rel_ExtratoItem006 := TFrm_Rel_ExtratoItem006.Create(Self);
  Frm_Rel_ExtratoItem006.ShowModal;
  Frm_Rel_ExtratoItem006.Release;
  Show;
end;

procedure TFrm_Men_Principal.AcessosdosUsuriosnoSistema1Click(
  Sender: TObject);
begin
  Hide;
  Frm_Cad_Acesso := TFrm_Cad_Acesso.Create(Self);
  Frm_Cad_Acesso.ShowModal;
  Frm_Cad_Acesso.Release;
  Show;
end;

procedure TFrm_Men_Principal.Tmr_SenhaTimer(Sender: TObject);
begin
  Tmr_Senha.Enabled := false ;
  Hide;
  Frm_Dlg_Senha := TFrm_Dlg_Senha.Create(Self);
  Frm_Dlg_Senha.ShowModal;
  Frm_Dlg_Senha.Release;
  StB_Principal.Panels[0].text := 'Usuário => '+FNome_Usu ;
  Show;
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

procedure TFrm_Men_Principal.BaixaAutomtica1Click(Sender: TObject);
begin
  Hide;
  Frm_Mov_DisqueteBaixaBanco := TFrm_Mov_DisqueteBaixaBanco.Create(Self);
  Frm_Mov_DisqueteBaixaBanco.ShowModal;
  Frm_Mov_DisqueteBaixaBanco.Release;
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
      Frm_Cad_ItemTransposicao := TFrm_Cad_ItemTransposicao.Create(Self);
      Frm_Cad_ItemTransposicao.ShowModal;
      Frm_Cad_ItemTransposicao.Release;
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
      Frm_Cad_conveniadoendereco := TFrm_Cad_conveniadoendereco.Create(Self);
      Frm_Cad_conveniadoendereco.ShowModal;
      Frm_Cad_conveniadoendereco.Release;
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
    2001 : begin
      Frm_Mov_CancRepasseConta := TFrm_Mov_CancRepasseConta.Create(Self);
      Frm_Mov_CancRepasseConta.ShowModal;
      Frm_Mov_CancRepasseConta.Release;
    end;
    2002 : begin
{      Frm_Mov_DescontoFolha := TFrm_Mov_DescontoFolha.Create(Self);
      Frm_Mov_DescontoFolha.ShowModal;
      Frm_Mov_DescontoFolha.Release;}
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
      Frm_Mov_ExcluiDescontoAutom := TFrm_Mov_ExcluiDescontoAutom.Create(Self);
      Frm_Mov_ExcluiDescontoAutom.ShowModal;
      Frm_Mov_ExcluiDescontoAutom.Release;
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
      Frm_Mov_RecebeConta := TFrm_Mov_RecebeConta.Create(Self);
      Frm_Mov_RecebeConta.ShowModal;
      Frm_Mov_RecebeConta.Release;
    end;
    2011 : begin
      Frm_Mov_RepasseConta := TFrm_Mov_RepasseConta.Create(Self);
      Frm_Mov_RepasseConta.ShowModal;
      Frm_Mov_RepasseConta.Release;
    end;
    2012 : begin
    //Frm_Mov_SitBeneficiario
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
    2023 : begin
      Frm_Mov_2023 := TFrm_Mov_2023.Create(Self);
      Frm_Mov_2023.ShowModal;
      Frm_Mov_2023.Release;
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
      Frm_Rel_ExtratoBenefi001 := TFrm_Rel_ExtratoBenefi001.Create(Self);
      Frm_Rel_ExtratoBenefi001.ShowModal;
      Frm_Rel_ExtratoBenefi001.Release;
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

    end;
    3013 : begin
      Frm_Rel_ExtratoItem001 := TFrm_Rel_ExtratoItem001.Create(Self);
      Frm_Rel_ExtratoItem001.ShowModal;
      Frm_Rel_ExtratoItem001.Release;
    end;
    3014 : begin
      Frm_Rel_ExtratoItem002 := TFrm_Rel_ExtratoItem002.Create(Self);
      Frm_Rel_ExtratoItem002.ShowModal;
      Frm_Rel_ExtratoItem002.Release;
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
      Frm_Rel_Item001 := TFrm_Rel_Item001.Create(Self);
      Frm_Rel_Item001.ShowModal;
      Frm_Rel_Item001.Release;
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
    4049 : begin
    fdt_principal2.spc_cons_usuario.Open;
    Frm_Imp_4049 := TFrm_Imp_4049.Create(Self);
    Frm_Imp_4049.QuickRep1.Preview;
    Frm_Imp_4049.Release;
    fdt_principal2.spc_cons_usuario.close;
    end;
    4050 : begin
    fdt_principal2.spc_cons_med_cid.Open;
    Frm_Imp_4050 := TFrm_Imp_4050.Create(Self);
    Frm_Imp_4050.QuickRep1.Preview;
    Frm_Imp_4050.Release;
    fdt_principal2.spc_cons_med_cid.close;
    end;
    4051 : begin
    fdt_principal2.spc_cons_med_classeconvenio.Open;
    Frm_Imp_4051 := TFrm_Imp_4051.Create(Self);
    Frm_Imp_4051.QuickRep1.Preview;
    Frm_Imp_4051.Release;
    fdt_principal2.spc_cons_med_classeconvenio.close;
    end;
    4052 : begin
    fdt_principal2.spc_cons_med_espmedamb.Open;
    Frm_Imp_4052 := TFrm_Imp_4052.Create(Self);
    Frm_Imp_4052.QuickRep1.Preview;
    Frm_Imp_4052.Release;
    fdt_principal2.spc_cons_med_espmedamb.close;
    end;
  else result := false ;
  end;
  Show;
end;
 

procedure TFrm_Men_Principal.btn_AbrirAtalhoClick(Sender: TObject);
begin
  if edt_cod_telasistema.text <> '' then
    AbrirTela(strtoint(edt_cod_telasistema.text));
  edt_cod_telasistema.text := '' ;
end;

procedure TFrm_Men_Principal.edt_cod_telasistemaButtonClick(
  Sender: TObject);
begin
  edt_cod_telasistema.text := Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_telasistema',8,length('edt_cod_telasistema')),
  'cod_telasistema, nome_tls', 'Cod. Tela do Sistema, Nome / Título da Tela',
  'Localizar Tela do Sistema', '', true);
end;

procedure TFrm_Men_Principal.edt_cod_telasistemaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btn_AbrirAtalhoClick(self);
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

procedure TFrm_Men_Principal.Parcelamento1Click(Sender: TObject);
begin
  AbrirTela(2015);
end;

procedure TFrm_Men_Principal.Requerimentos1Click(Sender: TObject);
begin
  AbrirTela(3025);
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

procedure TFrm_Men_Principal.GerarDisqueteBancodoBrasil1Click(
  Sender: TObject);
begin
  AbrirTela(2019);
end;

procedure TFrm_Men_Principal.GerarNossoNmerodeBoleto1Click(
  Sender: TObject);
begin
  AbrirTela(2020);
end;

procedure TFrm_Men_Principal.PDJButton6Click(Sender: TObject);
begin
  AbrirTela(2003);
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

procedure TFrm_Men_Principal.Tmr_ComunicadorTimer(Sender: TObject);
begin
  Dlg_ComunicadorMSG(self);
  Application.ProcessMessages;
end;

procedure TFrm_Men_Principal.PDJButton8Click(Sender: TObject);
begin
  pnl_alertacartao.Visible := true ;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Men_Principal.edt_carteirinhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Hide;
    if copy(edt_carteirinha.text, 14, 2) = '00' then begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5) ;
      edt_carteirinha.Text := '' ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end else begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5) ;
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

procedure TFrm_Men_Principal.Carteirinhas1Click(Sender: TObject);
begin
  AbrirTela(2023);
end;

procedure TFrm_Men_Principal.RelaodeContasnoRepassadas1Click(
  Sender: TObject);
begin
  AbrirTela(3030);
end;

procedure TFrm_Men_Principal.ListagemdePlanosdePagamentoEmpresa1Click(
  Sender: TObject);
begin
  AbrirTela(4054);
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

procedure TFrm_Men_Principal.ListagemdeClassesdeConvenio1Click(
  Sender: TObject);
begin
  AbrirTela(4051);
end;

procedure TFrm_Men_Principal.ListagemdeCID1Click(Sender: TObject);
begin
  AbrirTela(4050);
end;

procedure TFrm_Men_Principal.ListagemdeUsuriosdoSistema1Click(
  Sender: TObject);
begin
  AbrirTela(4049);
end;

procedure TFrm_Men_Principal.Relatriodecontratosprcerros1Click(
  Sender: TObject);
begin
  AbrirTela(3031);
end;

procedure TFrm_Men_Principal.RelaodeAfiliadosErros1Click(Sender: TObject);
begin
  AbrirTela(3032);
end;

procedure TFrm_Men_Principal.RelaodePrestadoresErros1Click(
  Sender: TObject);
begin
  AbrirTela(3033);
end;

procedure TFrm_Men_Principal.RelaodeEstabelecimentosErros1Click(
  Sender: TObject);
begin
  AbrirTela(3034);
end;

end.
