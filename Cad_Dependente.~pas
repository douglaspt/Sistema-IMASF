unit Cad_Dependente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, Mask, DB,
  jpeg, BEditButton, Grids, DBGrids, Buttons;

type
  TFrm_Cad_Dependente = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    pnl_carteira: TPanel;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel10: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Panel11: TPanel;
    cbx_cod_estadociv: TDCComboBox;
    cbx_cod_grauparent: TDCComboBox;
    Panel12: TPanel;
    edt_idade: TDCEdit;
    edt_dtnascim_ben: TDCDateEdit;
    cbx_cod_estfisico: TDCComboBox;
    Panel13: TPanel;
    edt_nomepai_ben: TDCEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    TabSheet2: TTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    TabSheet3: TTabSheet;
    Panel20: TPanel;
    edt_cpf_ben: TMaskEdit;
    Panel21: TPanel;
    edt_rg_ben: TDCEdit;
    edt_orgemissorrg_ben: TDCEdit;
    edt_dtemissaorg_ben: TDCDateEdit;
    Panel22: TPanel;
    edt_titeleitor_ben: TDCEdit;
    Panel23: TPanel;
    edt_outrosdocume_ben: TDCEdit;
    edt_tipodocume_ben: TDCEdit;
    tbs_obs: TTabSheet;
    Label1: TLabel;
    mem_obs_ben: TMemo;
    Panel6: TPanel;
    chB_rgproprio_dep: TCheckBox;
    chB_cpfproprio_dep: TCheckBox;
    Panel30: TPanel;
    edt_digito_ben: TDCEdit;
    edt_cod_sitbeneficiario: TDCEdit;
    btn_proximo: TPDJButton;
    btn_anterior: TPDJButton;
    cbx_sexo_ben: TDCComboBox;
    btn_situacao: TPDJButton;
    pnl_alerta: TPanel;
    TabSheet4: TTabSheet;
    tbs_carteirinha: TTabSheet;
    Panel29: TPanel;
    edt_dtvalidade_car: TDCDateEdit;
    PDJButton3: TPDJButton;
    Panel31: TPanel;
    edt_dtemissao_car: TDCDateEdit;
    Panel32: TPanel;
    edt_via_car: TDCEdit;
    tbs_historico: TTabSheet;
    PDJButton5: TPDJButton;
    Panel38: TPanel;
    edt_dtalteracao_hsb: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    pnl_carencia: TPanel;
    Panel45: TPanel;
    Panel44: TPanel;
    Panel43: TPanel;
    edt_foneresi_ben: TDCEdit;
    btn_atualizarEndereco: TPDJButton;
    PDJButton6: TPDJButton;
    PDJButton7: TPDJButton;
    lbl_cod_beneficiario: TLabel;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    lbl_ocorrencia: TLabel;
    btn_descontos: TPDJButton;
    edt_email_ben: TDCEdit;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    edt_nomemae_ben: TDCEdit;
    PageControl1: TPageControl;
    tbs_carencia: TTabSheet;
    tbs_doencapre: TTabSheet;
    Panel26: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btn_adicionarCarencia: TPDJButton;
    btn_removerCarencia: TPDJButton;
    cbx_cod_nivelcar: TDCComboBox;
    edt_informacao_car: TDCEdit;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    Panel25: TPanel;
    edt_dtcarencia_ben: TDCDateEdit;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    btn_adicionarCID: TPDJButton;
    btn_removerCID: TPDJButton;
    edt_cod_cid: TEditButton;
    DataSource4: TDataSource;
    PDJButton1: TPDJButton;
    edt_dtendereco_ben: TDCDateEdit;
    tbs_tabela: TTabSheet;
    Panel19: TPanel;
    cbx_cod_planoPagto: TDCComboBox;
    tbs_relatorio: TTabSheet;
    SpeedButton6: TSpeedButton;
    edt_titularidade_ben: TDCEdit;
    edt_titulacartei_ben: TDCEdit;
    btn_senha: TPDJButton;
    ckb_cadastroRapido: TCheckBox;
    TabSheet5: TTabSheet;
    edt_cep_ben: TMaskEdit;
    btn_buscarcep: TPDJButton;
    edt_endereco_ben: TDCEdit;
    edt_numero_ben: TDCEdit;
    cbx_cod_uf: TDCComboBox;
    cbx_cod_cidadeCep: TDCComboBox;
    edt_complementocor_ben: TDCEdit;
    cbx_cd2_uf: TDCComboBox;
    cbx_cod_cidadecorCEP: TDCComboBox;
    edt_cepcor_ben: TMaskEdit;
    btn_buscarcep2: TPDJButton;
    edt_enderecocor_ben: TDCEdit;
    edt_numerocor_ben: TDCEdit;
    edt_bairrocor_ben: TDCEdit;
    chb_mailing_ben: TCheckBox;
    edt_certidaonascvivo_ben: TDCEdit;
    btn_chamacadcep: TPDJButton;
    edt_bairro_ben: TDCEdit;
    edt_complemento_ben: TDCEdit;
    edt_fonecel_ben: TDCEdit;
    ckb_pericia: TCheckBox;
    pnl_situacao: TPanel;
    stg_audi: TStringGrid;
    edt_cartaoUnimed_ben: TDCEdit;
    Panel24: TPanel;
    edt_nome_seg: TDCEdit;
    chb_recibomes_dep: TCheckBox;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    edt_nomecarteira_ben: TDCEdit;
    Panel7: TPanel;
    lbl_processo: TLabel;
    edt_processo_ben: TDCEdit;
    cbx_cod_TipoSegurado: TDCComboBox;
    cbx_cod_tipodependente: TDCComboBox;
    Panel8: TPanel;
    cbx_cod_plano: TDCComboBox;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    Panel9: TPanel;
    edt_dtinscricao_ben: TDCDateEdit;
    edt_dtsituacao_ben: TDCDateEdit;
    edt_dtplano_ben: TDCDateEdit;
    Panel5: TPanel;
    edt_dtrenovacao_dep: TDCDateEdit;
    edt_dtlimite_dep: TDCDateEdit;
    btn_preencheDtRenovacao: TPDJButton;
    edt_dtcadastro_ben: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_empresaButtonClick(Sender: TObject);
    procedure edt_foneresi_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_tipodocume_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_dtnascim_benChange(Sender: TObject);
    procedure edt_cod_beneficiarioButtonClick(Sender: TObject);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure cbx_cod_TipoSeguradoChange(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_beneficiarioKeyPress(Sender: TObject; var Key: Char);
    procedure btn_proximoClick(Sender: TObject);
    procedure edt_nome_benExit(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure pnl_situacaoDblClick(Sender: TObject);
    procedure btn_situacaoClick(Sender: TObject);
    procedure btn_removerCarenciaClick(Sender: TObject);
    procedure btn_adicionarCarenciaClick(Sender: TObject);
    procedure cbx_cod_tipodependenteExit(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure tbs_historicoShow(Sender: TObject);
    procedure Panel14Exit(Sender: TObject);
    procedure edt_nome_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_processoClick(Sender: TObject);
    procedure btn_descontosClick(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure btn_adicionarCIDClick(Sender: TObject);
    procedure btn_removerCIDClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure edt_dtendereco_benKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
    procedure btn_senhaClick(Sender: TObject);
    procedure edt_nome_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_tipodependenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtnascim_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_preencheDtRenovacaoClick(Sender: TObject);
    procedure chb_mailing_benClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_chamacadcepClick(Sender: TObject);
    procedure edt_cep_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cepcor_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_nivelcarChange(Sender: TObject);
    procedure cbx_sexo_benExit(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure tbs_tabelaShow(Sender: TObject);
    procedure cbx_cod_planoChange(Sender: TObject);
    procedure cbx_cod_empresaChange(Sender: TObject);
  private
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt,
    wCod_Plano_Old,
    wCod_Empresa_Old,
    wCod_TipDep_Old,
    wCod_planoPagto_Old : String ;
    procedure CarregarCombos;
    function SalvarHistorico: boolean ;
    procedure AtualizarSitBeneficiario(sit:string);
    function SalvarNivelCar: boolean ;
    procedure Prox_Anter(b:boolean);
    function SalvarPlanoPagtoEspecial: boolean ;
    function VerCod_NivelCar(c:string): boolean ;
    procedure PesquisaDoencaPreExistente;
    { Private declarations }
  public
    { Public declarations }
    wCod_Beneficiario, WCEPDEP : String ;
    procedure BotoesOnOff(b:boolean);                   override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarInsert(Frm:TForm) : boolean ;    override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Localizar;                            override ;
  end;

var
  Frm_Cad_Dependente: TFrm_Cad_Dependente;
  ChaveExp, WtitReq: Integer;
  WCEP, WNUM, WEND, WBAI, WCOMPLEMENTO, WCEPC, WENDC, WNUMC, WBAIC, WCOMPLEMENTOC, WBotAntes, WBenefAnt, WInsAnt: String;

implementation

uses Fun_Str, Fun_Data, Constantes, Dlg_Mensagem, Fun_DB, Mov_SitBeneficiario, Fun_Obj,
     Fun_Beneficiario, Rel_HistoricoBenefi, Fun_Acesso, Rel_Requerimento001, Rel_FichaBenefi001,
     Cad_Agendamento, Fun_Desconto, Mov_Tramite, dtm_principal, Mov_DescontoManual, Fun_ConsCadastro,
     dtm_principal6, Fun_ConsCEP, Mov_2063, Cad_Cep;

{$R *.DFM}

procedure TFrm_Cad_Dependente.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Dependentes e Assistidos';
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_seg' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Dependentes e Assistidos' ;
  FCamposAux    := 'edt_cod_beneficiario, '+
  'edt_dtrenovacao_dep, edt_dtlimite_dep, cbx_cod_grauparent, '+
  'chB_rgproprio_dep, chB_cpfproprio_dep, cbx_cod_estfisico, chb_recibomes_dep';
  FTabelaAux    := 'tbl_dependente';
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, td.nome_tdp, s.nome_sit, p.nome_pla '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_dependente d, tbl_tipodependente td, tbl_plano p '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario and d.cod_beneficiario = b.cod_beneficiario and p.cod_plano = b.cod_plano '+
  'and b.cod_tipodependente = td.cod_tipodependente and b.titulacartei_ben > 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação, Plano' ;
  FOcultaIndice := true ;
  inherited;
  FTransacao := false ;
  if Acs_AcessoEspecial('100301') then begin
     tbs_obs.TabVisible := false;
     tbs_carteirinha.TabVisible := false;
     tbs_relatorio.TabVisible := false;
     tbs_historico.TabVisible := false;
  end;
end;

procedure TFrm_Cad_Dependente.AtualizarSitBeneficiario(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit, cod_sitbeneficiario from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    pnl_situacao.Caption := 'Situação : '+Tab.FieldByName('nome_sit').AsString;
    pnl_alerta.Caption := '***  '+pnl_situacao.Caption+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    if  Tab.FieldByName('cod_sitbeneficiario').AsInteger = 29 then
      pnl_alerta.color := clAqua;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Dependente.BAS_Localizar;
begin
  inherited;
  FPesquisaSQL  := FPesquisaSQLDefalt ;
end;

procedure TFrm_Cad_Dependente.BAS_LimparTela;
begin
  inherited;
  edt_dtinscricao_ben.Date := date ;
  edt_dtsituacao_ben.text := datetostr(date) ;
  edt_dtcadastro_ben.text := datetostr(date) ;
  PageControl.ActivePageIndex := 0 ;
  wCod_Plano_Old := '' ;
  wCod_TipDep_Old := '' ;
  wCod_Empresa_Old := '' ;
  pnl_alerta.Visible := false ;
end;

function TFrm_Cad_Dependente.SalvarHistorico: boolean ;
begin
  result := true ;
  if (wCod_Empresa_Old <> cbx_cod_empresa.ValueItem) and  (FStatus = FST_Alteracao) then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histempresa where cod_beneficiario = '+edt_cod_beneficiario.text) > 0 then
        DB_execSql('update tbl_histempresa set dtfinal_hse = getdate()'+
        ' from tbl_beneficiario where tbl_beneficiario.cod_beneficiario = tbl_histempresa.cod_beneficiario and '+
        ' inscricao_ben = '+edt_inscricao_ben.text+' and dtfinal_hse is null');
  end;
  {if (wCod_TipDep_Old <> cbx_cod_tipodependente.ValueItem) and (FStatus = FST_Alteracao) then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histtipdepend where cod_beneficiario = '+edt_cod_beneficiario.text) > 0 then
        DB_execSql('update tbl_histtipdepend set dtfinal_hdp = getdate()'+
        ' where cod_beneficiario = '+edt_cod_beneficiario.text+' and dtfinal_hdp is null');
  end;
  if wCod_planoPagto_Old <> cbx_cod_planoPagto.ValueItem then begin
    if DB_OpenSQL('select cod_beneficiario from tbl_histPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then
      DB_ExecSQL('update tbl_histPlanoPagtoEspecial set dtfinal_hpe = getdate()'+
      ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtfinal_hpe is null');
  end;}
  Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), '', edt_titulacartei_ben.text , edt_cod_beneficiario.text);
end;

function TFrm_Cad_Dependente.SalvarNivelCar: boolean ;
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

function TFrm_Cad_Dependente.SalvarPlanoPagtoEspecial: boolean ;
begin
  if (cbx_cod_planoPagto.text <> '') and (wCod_planoPagto_Old <> cbx_cod_planoPagto.ValueItem) then begin
    DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.text );
    result := DB_ExecSQL('insert into tbl_beneficiarioPlanoPagtoEspecial (cod_beneficiario, cod_planoPagto, dtplanoPagto) values ('+
    edt_cod_beneficiario.text+', '+Obj_GetFormObjValueByName(self, cbx_cod_planoPagto.name)+', '+DB_FormatDataSQL(edt_dtplano_ben.text, ftDate)+')');
  end;
end;

function TFrm_Cad_Dependente.BAS_SalvarInsert(Frm:TForm): boolean ;
begin
//  edt_titularidade_ben.text := SequenciaTitularidade(edt_inscricao_ben.text);
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  result := DB_Insert(Frm) ;
  DB_OpenSQL('select max(cod_beneficiario) from tbl_beneficiario');
  edt_cod_beneficiario.text := Tab.Fields[0].AsString ;
  if result then
    result := Set_OcorrenciaEdital(edt_cod_beneficiario.text, edt_inscricao_ben.text, edt_titulacartei_ben.text,
  cbx_cod_ocorrenciaEdital.valueItem, edt_dtinscricao_ben.text, Get_MesReferenciaFolha('01/mm/yyyy'));
  if result then
    result := DB_InsertByFields(self, FCamposAux, FTabelaAux);
  if result then
    result := SalvarHistorico ;
  if result then
    result := SalvarNivelCar ;
  if result then
    result := SalvarPlanoPagtoEspecial ;
 { if edt_cod_sitbeneficiario.Text = '29' then
  begin
    if result then
      result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
      ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1)');
    if result then
      if cbx_cod_plano.ValueItem = 3 then
        result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1, 11)');
    result := DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'1, null,getdate(),null,null, null)');
  end }
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
     begin
     DB_Commit;
     WMudancas:= '';
     if FStatus = FST_Normal then
        GeraAuditoria(StrToInt(edt_cod_beneficiario.Text), edt_inscricao_ben.Text, 'Incluído', WMudancas, 0);
     end
  else
     begin
     DB_RollBack;
     Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 1003001 ', self);
     Close;
     end;
end;

function TFrm_Cad_Dependente.BAS_SalvarUpdate(Frm:TForm): boolean ;
var
  x: integer;
begin
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  result := DB_Update(Frm) ;
  if result then
    result := DB_UpdateByFields(self, FCamposAux, FTabelaAux);
  if result then
    result := SalvarHistorico ;
  if result then
    result := SalvarNivelCar ;
  if result then
    result := SalvarPlanoPagtoEspecial ;
  if result then
     begin
     DB_Commit;
     WMudancas:= '';
     DadosSaida:= LerDadosTela(Self);
     For x:= 1 to High(DadosSaida) do
        if DadosEntrada[x] <> DadosSaida[x] then
           if (DadosSaida[x-1] <> 'cod_ocorrenciaEdital') or (DadosSaida[x-1] <> 'digito_ben') then
              WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     if WMudancas <> '' then
        GeraAuditoria(StrToInt(edt_cod_beneficiario.Text), edt_inscricao_ben.Text, 'Alterado', 'Situação Anterior ' +WMudancas, 0);
     end
  else
     begin
     DB_RollBack;
     Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 1003002 ', self);
     Close;
     end;
end;

procedure TFrm_Cad_Dependente.CarregarCombos;
begin
//  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto', 'descricao_tco');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed', 'descricao_tcu');
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  if FStatus <> FST_Novo then
    BAS_CarregarCombo('cbx_cod_plano', 'nome_pla')
  else
    Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_statusativo = 1');  
  BAS_CarregarCombo('cbx_cod_estadociv', 'nome_civ');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  Obj_LoadCombo(Self, 'cbx_cd2_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
  cbx_cod_cidadeCep.ValItems.Clear;
  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep'+' order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep'+' order by cidade_cep');
//  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  Obj_LoadCombo(Self, 'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_estfisico', 'nome_efi');
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where tipo_oce = ''I'' or tipo_oce = ''M''');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  if FStatus <> FST_Novo then
     BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp')
  else
     Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
end;

function TFrm_Cad_Dependente.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  PageControl.ActivePageIndex := 0 ;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A inscrição informada inválida !', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_nome_ben.name, 'O nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomecarteira_ben.name, 'O nome para carteirinha deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_TipoSegurado.name, 'Um tipo de segurado deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_TipoDependente.name, 'Um tipo de dependente deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_processo_ben.name, 'O número / ano de processo deve ser preencido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresa.name, 'Uma empresa deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'Um Local de Desconto deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'Um plano deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtinscricao_ben.name, 'A data de inscrição deve ser preencida !', VLD_DataPreenchida )) or
 // (not BAS_ValidarCampo(edt_dtplano_ben.name, 'A data do Plano deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtrenovacao_dep.name, 'A data de renovação deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtlimite_dep.name, 'A data limite deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_estadociv.name, 'Um estado civil deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_grauparent.name, 'Um grau de parentesco deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_sexo_ben.name, 'Selecione o sexo do beneficiário !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascim_ben.name, 'A data de nascimento deve ser preencido, ou não é uma data de nascimento válida !', VLD_DataNascimento )) or
  (not BAS_ValidarCampo(cbx_cod_estfisico.name, 'O estado fisico deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_tipocoberturaunimed.name, 'O Tipo de Cobertura da Unimed deve ser Preenchido !', VLD_Preenchido )) then
    Exit ;

//  if cbx_cod_tipocoberturaodonto.Text = '' then
//    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, 0);
  if not Ben_CriticaDependente(cbx_cod_grauparent.valueItem, cbx_cod_plano.ValueItem, cbx_cod_tipodependente.ValueItem,
  edt_inscricao_ben.Text, cbx_cod_estfisico.valueitem,Data_GetIdadeAnos(edt_dtnascim_ben.date, date), FStatus, edt_dtinscricao_ben.Date,  self) then
    Exit ;
  PageControl.ActivePageIndex := 1 ;
  if (not BAS_ValidarCampo(edt_endereco_ben.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) then
    Exit;
  if FStatus = FST_Novo then
    if (not BAS_ValidarCampo(edt_numero_ben.name, 'O Numero deve ser preenchido !', VLD_Preenchido )) then
      Exit;
  if edt_enderecocor_ben.text = '' then
      btn_atualizarEnderecoClick(self);

  if cbx_cod_empresafolha.valueitem = 99 then
  begin
    if Length(edt_enderecocor_ben.Text + ', ' + edt_numerocor_ben.Text + ' ' + edt_complementocor_ben.Text+'-'+edt_bairrocor_ben.Text) > 60 then
    begin
      Dlg_Alerta('O Endereço de Correspondencia do Local de Desconto Tesouraria deve conter no maximo 60 caracteres. Endereco, numero, complemento e bairro!',self);
      PageControl.ActivePageIndex := 1 ;
      Exit;
    end;
  end;
  if (chb_mailing_ben.Checked) and (edt_email_ben.Text = '') then
  begin
    Dlg_Alerta('O Email deve ser preenchido!', self);
    PageControl.ActivePageIndex := 1 ;
    edt_email_ben.SetFocus;
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
        PageControl.ActivePageIndex := 0 ;
        Exit;
      end;
    end;
    //
    else
    begin
      if (cbx_cod_tipocoberturaunimed.ValueItem <> 1) then
      begin
        Dlg_Alerta('Tipo de Cobertura da Unimed deve ser Específica ABC (Cobertura Completa) para fora da Região Metropolitana!',self);
        PageControl.ActivePageIndex := 0 ;
        Exit;
      end;
    end;

  end;
  }
  PageControl.ActivePageIndex := 2 ;
  if (not BAS_ValidarCampo(edt_rg_ben.name, 'O R.G. deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_dtemissaorg_ben.name, 'A Data de emissão do RG deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) then
    Exit;
  if edt_cpf_ben.text = '   .   .   -  ' then
  begin
    Dlg_Alerta('CPF deve ser Preenchido!',self);
    PageControl.ActivePageIndex := 2 ;
    Exit;
  end;  
  PageControl.ActivePageIndex := 7 ;
  if FStatus = FST_novo then
  if cbx_cod_ocorrenciaEdital.text = '' then begin
    Dlg_Alerta('A Ocorrencia deve ser Preenchida !',self);
    Exit;
  end;
  if (cbx_cod_planoPagto.Text = '') then
  begin
    Dlg_Alerta('Tabela de Plano de Pagamento deve ser preenchido!',self);
    PageControl.ActivePageIndex := 6;
    tbs_tabelaShow(self);
    cbx_cod_planoPagto.SetFocus;
    exit;
  end;
  
  if cbx_cod_planoPagto.Text <> '' then
  begin
    DB_OpenSQL('select cod_plano from tbl_planoPagto where cod_planopagto = '+cbx_cod_planoPagto.valueItem);
    if tab.FieldByName('cod_plano').AsInteger <> cbx_cod_plano.ValueItem then
    begin
      Dlg_Alerta('Tabela de Plano de Pagamento não permitida para o Plano '+cbx_cod_plano.Text, self);
      PageControl.ActivePageIndex := 6;
      cbx_cod_planoPagto.SetFocus;
      exit;
    end;
  end;
  if edt_dtplano_ben.Text = '' then
    edt_dtplano_ben.Date := Date;
  if edt_titulacartei_ben.Text = '0' then
  begin
    Dlg_Alerta('Atenção! Ocorreu um erro ao gerar a titularidade do Dependente, tente salvar novamente', self);
    cbx_cod_tipodependenteExit(self);
    exit;
  end;
  if FStatus = FST_Alteracao then
  begin
    if VerCod_NivelCar('4') and (fdt_principal6.spc_cons_adm_doencaPreExistente.RecordCount <= 0) then
    begin
      Dlg_Alerta('É necessário cadastrar Doenças Pré Existentes (CID)',self);
      PageControl.ActivePageIndex := 4;
      PageControl1.ActivePageIndex := 1;
      Exit;
    end;
  end;

  result := false ;
end;

procedure TFrm_Cad_Dependente.BAS_Alterar(Frm:Tform);
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
  procedure MostrarPlanoPagtoEspecial(cod_beneficiario : string);
  begin
    DB_OpenSQL('select cod_planoPagto from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+cod_beneficiario);
    Obj_SetFormObjValueByName(self, cbx_cod_planoPagto.name, Tab.fields[0].asstring);
  end;
begin
  CarregarCombos;
  inherited ;
  PesquisaDoencaPreExistente;
  if Acs_AcessoEspecial('101402') then begin
    cbx_cod_TipoSegurado.Enabled := false;
    edt_processo_ben.Enabled := false;
    cbx_cod_empresa.Enabled := false;
    cbx_cod_empresafolha.Enabled := false;
    tbs_carencia.Enabled := false;
    tbs_doencapre.Enabled := false;
  end;
//  cbx_cod_tipocoberturaodonto.Enabled := false;
//  edt_dtadesaoodonto_ben.Enabled := false;
  DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
  edt_inscricao_benExit(self);
  AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
  wCod_Plano_Old := cbx_cod_plano.ValueItem;
  wCod_TipDep_Old := cbx_cod_tipodependente.ValueItem;
  wCod_Empresa_Old := cbx_cod_empresa.valueitem ;
  MostrarNivelCar(edt_cod_beneficiario.text);
  MostrarPlanoPagtoEspecial(edt_cod_beneficiario.text);
  lbl_cod_beneficiario.Caption := ('Cod. Beneficiário: '+edt_cod_beneficiario.Text);
  //Se for dependente Normal não pode alterar o plano   COMENTADO PELA MUDANÇA DA LEI 10/2002
  edt_dtalteracao_hsb.text := ultimaalteracao(edt_cod_beneficiario.text);
  pnl_carencia.Visible := ADM_VerCarencia(edt_cod_beneficiario.text) and (edt_dtcarencia_ben.Date <= Date);
  WCEP:= edt_cep_ben.Text;
  WEND:= edt_endereco_ben.Text;
  WNUM:= edt_numero_ben.Text;
  WBAI:= edt_bairro_ben.Text;
  WCOMPLEMENTO:= edt_complemento_ben.Text;
  WCEPC:= edt_cepcor_ben.Text;
  WENDC:= edt_enderecocor_ben.Text;
  WNUMC:= edt_numerocor_ben.Text;
  WBAIC:= edt_bairrocor_ben.Text;
  WCOMPLEMENTOC:= edt_complementocor_ben.Text;
  DadosEntrada := LerDadosTela(Self);
end;

procedure TFrm_Cad_Dependente.edt_cod_empresaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Dependente.edt_foneresi_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 2 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_Dependente.edt_tipodocume_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 3 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_Dependente.btn_novoClick(Sender: TObject);
begin
  WBotAntes:= 'I';
  CarregarCombos;
  pnl_carencia.Visible := false;
  LsB_Carencia.Items.Clear;
  edt_cod_beneficiario.text := '0';
  edt_titularidade_ben.text := '1';
  edt_digito_ben.text := '0';
  edt_cod_sitbeneficiario.text := '1';
  edt_titulacartei_ben.text := '0';
  edt_dtinscricao_ben.date := date;
//  cbx_cod_tipocoberturaodonto.Enabled := true;
//  edt_dtadesaoodonto_ben.Enabled := true;
  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 0);
//  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, 0);
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_statusativo = 1');
  Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1 and (cod_tipodependente = 1 or cod_planopagto = 211)');
  Obj_LoadCombo(Self, 'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0 and cod_statusAtivo = 1');
  edt_inscricao_ben.SetFocus;
  if ckb_cadastroRapido.Checked then
  begin
    if DB_OpenSQL('select * from tbl_parametroCadRapido') > 0 then
    begin
      Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.Name, Tab.fieldByName('cod_tipodependente').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, Tab.fieldByName('cod_empresafolha').AsInteger);
      edt_dtinscricao_ben.Date := Tab.fieldByName('dtinscricao_pcr').AsDateTime;
      edt_dtsituacao_ben.Date := Tab.fieldByName('dtsituacao_pcr').AsDateTime;
      edt_dtplano_ben.Date := Tab.fieldByName('dtplano_pcr').AsDateTime;
      edt_nomepai_ben.Text := Tab.fieldByName('nomepai_pcr').AsString;
      edt_nomemae_ben.Text := Tab.fieldByName('nomemae_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, Tab.fieldByName('cod_tipocoberturaunimed').AsInteger);
//      Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, Tab.fieldByName('cod_tipocoberturaodonto').AsInteger);
      Obj_SetFormObjValueByName(self, cbx_cod_estfisico.Name, Tab.fieldByName('cod_estfisico').AsInteger);
      edt_rg_ben.Text := Tab.fieldByName('rg_pcr').AsString;
      edt_cpf_ben.Text := Tab.fieldByName('cpf_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_ocorrenciaEdital.Name, Tab.fieldByName('cod_ocorrenciaEdital').AsInteger);
    end;
  end;
  if ckb_pericia.Checked then
  begin
    Obj_LoadCombo(Self,'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_plano in (2,3) order by cod_plano');
   // edt_cod_sitbeneficiario.Text :=  '29';
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
    //Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 9); --comentado em 24/10/2016
    Obj_SetFormObjValueByName(self, cbx_cod_nivelcar.Name, 10);
    cbx_cod_nivelcarChange(self);
    btn_adicionarCarenciaClick(self);
    //AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
    pnl_carencia.Visible := true;
    //cbx_cod_plano.Enabled := false;
  end;
end;

procedure TFrm_Cad_Dependente.edt_dtnascim_benChange(Sender: TObject);
begin
  inherited;
  edt_idade.text := Data_GetIdadeExt(edt_dtnascim_ben.date, date);
end;

procedure TFrm_Cad_Dependente.edt_cod_beneficiarioButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Dependente.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then exit ;
  if DB_OpenSQL('select nome_ben, endereco_ben, bairro_ben, cidade_ben, cod_uf, '+
  'cep_ben, foneresi_ben, rg_ben, orgemissorrg_ben, dtemissaorg_ben, cpf_ben, '+
  'titeleitor_ben, outrosdocume_ben, tipodocume_ben, processo_ben, cod_tiposegurado,'+
  'cod_empresa, cod_plano, cod_cidadeCep, numero_ben, complemento_ben, cod_empresafolha '+
  'from tbl_beneficiario b where b.inscricao_ben = '+edt_inscricao_ben.text+' and titulacartei_ben = 0') > 0 then begin
    edt_nome_seg.text := Tab.FieldByName('nome_ben').AsString ;
    if edt_rg_ben.text = '' then begin
      edt_rg_ben.text := Tab.FieldByName('rg_ben').AsString ;
      edt_orgemissorrg_ben.text := Tab.FieldByName('orgemissorrg_ben').AsString ;
      edt_dtemissaorg_ben.text := Tab.FieldByName('dtemissaorg_ben').AsString ;
      //edt_cpf_ben.text := Tab.FieldByName('cpf_ben').AsString ;
      edt_titeleitor_ben.text := Tab.FieldByName('titeleitor_ben').AsString ;
      edt_outrosdocume_ben.text := Tab.FieldByName('outrosdocume_ben').AsString ;
      edt_tipodocume_ben.text := Tab.FieldByName('tipodocume_ben').AsString ;
    end;
    if edt_processo_ben.text = '' then
      edt_processo_ben.text := Tab.FieldByName('processo_ben').AsString ;
    if edt_endereco_ben.text = '' then begin
      edt_endereco_ben.text := Tab.FieldByName('endereco_ben').AsString ;
      edt_bairro_ben.text := Tab.FieldByName('bairro_ben').AsString ;
      edt_numero_ben.Text :=  Tab.FieldByName('numero_ben').AsString ;
      edt_complemento_ben.Text := Tab.FieldByName('complemento_ben').AsString ;
      edt_cep_ben.text := Tab.FieldByName('cep_ben').AsString ;
      edt_foneresi_ben.text := Tab.FieldByName('foneresi_ben').AsString ;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf', Tab.FieldByName('cod_uf').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_TipoSegurado', Tab.FieldByName('cod_tiposegurado').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_empresa', Tab.FieldByName('cod_empresa').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_plano',Tab.FieldByName('cod_plano').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_empresafolha',Tab.FieldByName('cod_empresafolha').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Tab.FieldByName('cod_cidadeCep').AsString);
      btn_atualizarEnderecoClick(self);
    end;
   // LsB_Carencia.Clear;
    edt_nome_ben.SetFocus;
  end else begin
    Dlg_Alerta('Inscrição não encontrada !', self);
    edt_inscricao_ben.SetFocus;
  end;
end;

procedure TFrm_Cad_Dependente.cbx_cod_TipoSeguradoChange(Sender: TObject);
begin
  inherited;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
  
end;

procedure TFrm_Cad_Dependente.edt_cod_beneficiarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then begin
    btn_alterarClick(self);
  end;
end;

procedure TFrm_Cad_Dependente.edt_cod_beneficiarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if edt_cod_beneficiario.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_cod_beneficiario.text;
end;

procedure TFrm_Cad_Dependente.BotoesOnOff(b:boolean);
begin
  inherited;
  if FStatus <> FST_Novo then begin
    btn_proximo.enabled := b ;
    btn_anterior.enabled := b ;
    btn_situacao.enabled :=  b ;
    btn_senha.Visible := b and (not FAlterar) ;
    if not Acs_AcessoEspecial('100303') then
    begin
      cbx_cod_tipodependente.enabled := not b ;
      cbx_cod_plano.enabled := not b ;
      cbx_cod_planoPagto.Enabled := not b;
      edt_dtplano_ben.enabled := not b ;
      edt_dtsituacao_ben.enabled := not b ;
    end;
    if not Acs_AcessoEspecial('100304') then
    begin
      cbx_cod_tipocoberturaunimed.Enabled := not b;
      edt_cartaoUnimed_ben.Enabled := not b;
    end;
  end;
end;

procedure TFrm_Cad_Dependente.Prox_Anter(b:boolean);
var
  cod, Tit : string ;
begin
  inherited;
    cod := edt_inscricao_ben.text ;
    FStatus := FST_Normal;
    BotoesOnOff(false);
    Tit := edt_titulacartei_ben.Text;
    BAS_LimparTela;
    DB_RollBack;
    if b then begin
      DB_OpenSQL('select isnull(min(titulacartei_ben),0) from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben > '+Tit);
      if Tab.Fields[0].AsString <> '0' then begin
        Tit := Tab.Fields[0].AsString;
        DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben = '+Tit);
        edt_cod_beneficiario.text := Tab.Fields[0].AsString;
      end
      else begin
        DB_OpenSQL('select min(inscricao_ben) from tbl_beneficiario where inscricao_ben > '+cod+' and titulacartei_ben > 0 ');
        cod := Tab.Fields[0].AsString;
        DB_OpenSQL('select  min(titulacartei_ben) from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben > 0');
        Tit := Tab.Fields[0].AsString;
        DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben = '+Tit);
        edt_cod_beneficiario.text := Tab.Fields[0].AsString;
      end
    end
    else begin
      DB_OpenSQL('select isnull(MAX(titulacartei_ben),0) from tbl_beneficiario where inscricao_ben = '+cod+
      ' and titulacartei_ben > 0 and titulacartei_ben < '+Tit);
      if Tab.Fields[0].AsString <> '0' then begin
        Tit := Tab.Fields[0].AsString;
        DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben = '+Tit);
        edt_cod_beneficiario.text := Tab.Fields[0].AsString;
      end
      else begin
        DB_OpenSQL('select  max(inscricao_ben) from tbl_beneficiario where inscricao_ben < '+cod+' and titulacartei_ben > 0 ');
        cod := Tab.Fields[0].AsString;
        DB_OpenSQL('select  max(titulacartei_ben) from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben > 0');
        Tit := Tab.Fields[0].AsString;
        DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+cod+' and titulacartei_ben = '+Tit);
        edt_cod_beneficiario.text := Tab.Fields[0].AsString;
      end
    end;
    CarregarCombos;
    BAS_Alterar(self);
end;

procedure TFrm_Cad_Dependente.btn_proximoClick(Sender: TObject);
var
  cod : string ;
begin
  Prox_Anter(true);
  inherited;
end;

procedure TFrm_Cad_Dependente.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_novo then begin
    ADM_ver_beneficiarioCadastrado(edt_inscricao_ben.text, edt_nome_ben.text, SELF);
  end;
end;

procedure TFrm_Cad_Dependente.btn_anteriorClick(Sender: TObject);
begin
  Prox_Anter(false);
  inherited;
end;

procedure TFrm_Cad_Dependente.pnl_situacaoDblClick(Sender: TObject);
begin
  inherited;
  btn_situacaoClick(self);
end;

procedure TFrm_Cad_Dependente.btn_situacaoClick(Sender: TObject);
var
 c : string ;
begin
  inherited;
{  if Sit_AlterarSituacao(edt_cod_beneficiario.text, edt_inscricao_ben.text, edt_titulacartei_ben.text, pnl_carteira.caption,
  edt_nome_ben.text, edt_dtsituacao_ben.text, edt_cod_sitbeneficiario.text, Self) then begin
      c := Fsituacao;
      edt_dtsituacao_ben.text := Fdtsituacao ;
  end;
  if c <> '' then begin
    edt_cod_sitbeneficiario.text := c ;
    AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
  end;  }
//  Hide;
  Frm_Cad_Agendamento := TFrm_Cad_Agendamento.Create(Self);
  Frm_Cad_Agendamento.wInscricao := edt_inscricao_ben.Text;
  Frm_Cad_Agendamento.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Cad_Agendamento.ShowModal;
  Frm_Cad_Agendamento.Release;
//  Show;
  EscreveLog(btn_situacao.Name);
end;
     
procedure TFrm_Cad_Dependente.btn_removerCarenciaClick(Sender: TObject);
begin
  inherited;
  LsB_Carencia.Items.Delete(LsB_Carencia.ItemIndex);
  EscreveLog(btn_removerCarencia.Name);
end;

function TFrm_Cad_Dependente.VerCod_NivelCar(c:string): boolean ;
var
  i : integer ;
begin
  result := false ;
  for i := 0 to LsB_Carencia.Items.Count-1 do
    if Trim(Copy(LsB_Carencia.Items.Strings[i],1,2)) = c then
      result := true ;
end;

procedure TFrm_Cad_Dependente.btn_adicionarCarenciaClick(Sender: TObject);
var
  v : string ;
begin
  inherited;
  if edt_dtcarencia_ben.text = '' then begin
    Dlg_Alerta('É necessário preencher a Data de Inicio da Carência!', self);
    edt_dtcarencia_ben.setfocus;
    Exit ;
  end;
  if cbx_cod_nivelcar.text = '' then begin
    Dlg_Alerta('Selecione um nível de carência !', self);
    cbx_cod_nivelcar.setfocus;
    Exit ;
  end;
  if VerCod_NivelCar(cbx_cod_nivelcar.ValueItem) then begin
    Dlg_Alerta('Esse nível de carência já foi selecionado anteriormente !', self);
    cbx_cod_nivelcar.setfocus;
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
  edt_informacao_car.text := '' ;
  cbx_cod_nivelcar.text := '' ;
  EscreveLog(btn_adicionarCarencia.Name);
end;

procedure TFrm_Cad_Dependente.cbx_cod_tipodependenteExit(Sender: TObject);
begin
  inherited;
    if (cbx_cod_tipodependente.VAlueItem = '') then //or (FStatus <> FST_Novo))
    begin
      //ShowMessage('EXIT xxxxxxx');
      exit ;
    end;  
  edt_titulacartei_ben.text := Ben_GeraTitularidadeCarteira(edt_inscricao_ben.text, cbx_cod_tipodependente.VAlueItem) ;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
 // DB_ClearSQL;
  //Se for dependente Normal não pode alterar o plano    COMENTADO PELA MUDANÇA DA LEI 10/2002
//////  cbx_cod_plano.enabled := cbx_cod_tipodependente.ValueItem = '2' ;

end;

procedure TFrm_Cad_Dependente.btn_alterarClick(Sender: TObject);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao +' and titulacartei_ben = 0');
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin
  WBotAntes:= 'A';
  insc := Get_Cod_beneficiario(edt_cod_beneficiario.text) ;
  if insc = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt;
  edt_cod_beneficiario.text := insc ;
  edt_cod_beneficiario.text := '' ;
  inherited;
  Refresh;
  //DadosEntrada := LerDadosTela(Self);
end;

procedure TFrm_Cad_Dependente.FormShow(Sender: TObject);
begin
  inherited;
  if wCod_Beneficiario <> '' then begin
    Frm_Cad_Dependente.edt_cod_beneficiario.text := wCod_Beneficiario ;
    Frm_Cad_Dependente.BAS_Alterar(Frm_Cad_Dependente);
  end;
  lbl_processo.Enabled := not Obj_LocalizarFormAtivo(Frm_Mov_Tramite);
  btn_descontos.Visible := not Obj_LocalizarFormAtivo(Frm_Mov_DescontoManual);
end;

procedure TFrm_Cad_Dependente.PDJButton5Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_HistoricoBenefi := TFrm_Rel_HistoricoBenefi.Create(Self);
  Frm_Rel_HistoricoBenefi.wCod_Beneficiario := edt_cod_beneficiario.text ;
  Frm_Rel_HistoricoBenefi.wInscricao := edt_inscricao_ben.text ;
  Frm_Rel_HistoricoBenefi.ShowModal;
  Frm_Rel_HistoricoBenefi.Release;
  Show;
end;

procedure TFrm_Cad_Dependente.btn_atualizarEnderecoClick(Sender: TObject);
var
  Fcod_cidadeCepcor : integer;
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

procedure TFrm_Cad_Dependente.PDJButton6Click(Sender: TObject);
begin
  inherited;
Hide;
  Frm_Rel_FichaBenefi001 := TFrm_Rel_FichaBenefi001.Create(Self);
  Frm_Rel_FichaBenefi001.wInscricao := edt_inscricao_ben.Text;
  Frm_Rel_FichaBenefi001.wCod_Beneficiario := edt_cod_beneficiario.text;
  Frm_Rel_FichaBenefi001.ShowModal;
  Frm_Rel_FichaBenefi001.Release;
  Show;
end;

procedure TFrm_Cad_Dependente.PDJButton7Click(Sender: TObject);
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

procedure TFrm_Cad_Dependente.tbs_historicoShow(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then begin
    cbx_cod_ocorrenciaEdital.Visible := True;
    lbl_ocorrencia.Visible := True;
  end
  else begin
    cbx_cod_ocorrenciaEdital.Visible := false;
    lbl_ocorrencia.Visible := false;
  end;
end;

procedure TFrm_Cad_Dependente.Panel14Exit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_novo then begin
    ADM_ver_beneficiarioCadastrado(edt_inscricao_ben.text, edt_nome_ben.text, SELF);
  end;
end;

procedure TFrm_Cad_Dependente.edt_nome_benKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (FStatus = FST_novo) then
    edt_nomecarteira_ben.text := edt_nome_ben.text ;
end;

procedure TFrm_Cad_Dependente.lbl_processoClick(Sender: TObject);
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

procedure TFrm_Cad_Dependente.btn_descontosClick(Sender: TObject);
var
b : string;
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

procedure TFrm_Cad_Dependente.edt_cod_cidButtonClick(Sender: TObject);
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

procedure TFrm_Cad_Dependente.btn_adicionarCIDClick(Sender: TObject);
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
  edt_cod_beneficiario.text+','''+edt_cod_cid.text+''')');
  fdt_principal6.spc_cons_adm_doencaPreExistente.close;
  fdt_principal6.spc_cons_adm_doencaPreExistente.open;
  DBGrid1.SetFocus;
  EscreveLog(btn_adicionarCID.name);

end;

procedure TFrm_Cad_Dependente.btn_removerCIDClick(Sender: TObject);
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

procedure TFrm_Cad_Dependente.PesquisaDoencaPreExistente();
begin
  with fdt_principal6.spc_cons_adm_doencaPreExistente do
  begin
    Close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    Open;
  end;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrm_Cad_Dependente.TabSheet4Show(Sender: TObject);
begin
  inherited;
  PesquisaDoencaPreExistente;
end;

procedure TFrm_Cad_Dependente.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if cbx_cod_nivelcar.text <> '' then begin
    DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
    edt_informacao_car.Text := Tab.fields[0].asstring;
  end;
end;

procedure TFrm_Cad_Dependente.btn_buscarcepClick(Sender: TObject);
var
  Fcod_cidadeCep, WQtd : integer;
begin
  inherited;
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

procedure TFrm_Cad_Dependente.edt_dtendereco_benKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  edt_dtendereco_ben.Date := Date;
end;

procedure TFrm_Cad_Dependente.SpeedButton6Click(Sender: TObject);
var
  FCep : String;
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

procedure TFrm_Cad_Dependente.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  cbx_cod_cidadeCep.ValItems.Clear;
  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cod_uf.ValueItem+' order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cd2_uf.ValueItem+' order by cidade_cep');
end;

procedure TFrm_Cad_Dependente.btn_senhaClick(Sender: TObject);
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

procedure TFrm_Cad_Dependente.edt_nome_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
    edt_nomecarteira_ben.SetFocus;
end;

procedure TFrm_Cad_Dependente.cbx_cod_tipodependenteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
    edt_dtcadastro_ben.SetFocus;
end;

procedure TFrm_Cad_Dependente.edt_dtnascim_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ckb_cadastroRapido.Checked) then
  begin
    btn_preencheDtRenovacaoClick(self);
    PageControl.ActivePageIndex := 6;
    cbx_cod_planoPagto.SetFocus;
  end;
end;

procedure TFrm_Cad_Dependente.btn_preencheDtRenovacaoClick(
  Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.Text <> '') and (cbx_cod_tipodependente.Text <> '') and (cbx_cod_grauparent.Text <> '') then
  begin
    DB_OpenSQL('select s.cod_formaadm from tbl_segurado s, tbl_beneficiario b where '+
    'b.cod_beneficiario = s.cod_beneficiario and inscricao_ben = '+edt_inscricao_ben.text);
    edt_dtvalidade_car.text := ADM_critica_carteiravalidade(cbx_cod_tipodependente.valueitem,
    Tab.Fields[0].AsString, cbx_cod_grauparent.valueitem, formatdatetime('mm/dd/yyyy',edt_dtnascim_ben.date));
    edt_dtrenovacao_dep.text := edt_dtvalidade_car.text ;
    edt_dtlimite_dep.text := edt_dtvalidade_car.text ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Dependente.chb_mailing_benClick(Sender: TObject);
begin
  inherited;
  if (chb_mailing_ben.Checked) and (PageControl.ActivePageIndex = 1) then
    edt_email_ben.SetFocus;
end;

procedure TFrm_Cad_Dependente.TabSheet5Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= StrToInt(edt_cod_beneficiario.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Cad_Dependente.btn_buscarcep2Click(Sender: TObject);
var
  Fcod_cidadeCepcor, WQtd : integer;
begin
  inherited;
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

procedure TFrm_Cad_Dependente.btn_salvarClick(Sender: TObject);
var
  s, WMensagem : string;
  x: integer;
begin
  s := edt_cod_beneficiario.text;
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
  if WCEP = edt_cep_ben.Text then
     if WEND = edt_endereco_ben.Text then
        if WNUM = edt_numero_ben.Text then
           if WCOMPLEMENTO = edt_complemento_ben.Text then
              if WCEPC = edt_cepcor_ben.Text then
                 if WENDC = edt_enderecocor_ben.Text then
                    if WNUMC = edt_numerocor_ben.Text then
                       if WCOMPLEMENTOC = edt_complementocor_ben.Text then
                          begin
                          inherited;
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
              if (DadosSaida[x-1] <> 'cod_ocorrenciaEdital') or (DadosSaida[x-1] <> 'digito_ben') then
                 WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
        if WMudancas <> '' then
           GeraAuditoria(StrToInt(WBenefAnt), WInsAnt, 'Alterado', 'Situação Anterior ' + WMudancas, 0);
        end
     else
        begin
        WMudancas:= '';
        GeraAuditoria(StrToInt(WBenefAnt), WInsAnt, 'Incluído', WMudancas, 0);
        end;

  WtitReq:= 1;
// Quando titularidade = Segurado, a Mov_2063 permitirá alteração de endereço dos demais dependentes/assistidos
// senão, altera-se somente o beneficiário selecionado
  {if Dlg_YesNo('Gostaria de atualizar endereço dos demais dessa inscrição?', Self) then
  begin
    Hide;
    Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
    frm_Mov_2063.wCod_Beneficiario := s;
    Frm_Mov_2063.Wtit:= WtitReq;
    wCod_Beneficiario := '';
    Frm_Mov_2063.ShowModal;
    Frm_Mov_2063.Release;
    Show;
  end;}
end;

procedure TFrm_Cad_Dependente.btn_chamacadcepClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Cep := TFrm_Cad_Cep.Create(Self);
  Frm_Cad_Cep.WCOD_CEP := WCEPDEP;
  Frm_Cad_Cep.ShowModal;
  Frm_Cad_Cep.Release;
  Show;
end;

procedure TFrm_Cad_Dependente.edt_cep_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     btn_buscarcepClick(Self);
end;

procedure TFrm_Cad_Dependente.edt_cepcor_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     btn_buscarcep2Click(Self);
end;

procedure TFrm_Cad_Dependente.cbx_cod_nivelcarChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_nivelcar.ItemIndex <> -1 then
     if cbx_cod_nivelcar.text <> '' then begin
        DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
        edt_informacao_car.Text := Tab.fields[0].asstring;
     end;
end;

procedure TFrm_Cad_Dependente.cbx_sexo_benExit(Sender: TObject);
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

procedure TFrm_Cad_Dependente.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Cad_Dependente.tbs_tabelaShow(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
  begin
    if cbx_cod_plano.Text = '' then
    begin
      Dlg_Alerta('Plano de Benefícios deve ser Preenchido!', self);
      cbx_cod_plano.setfocus;
    end
    else
    begin
      Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto',
      'tbl_planopagto where cod_statusativo = 1 and (cod_tipodependente = 1 or cod_planopagto = 211) and cod_plano = '+cbx_cod_plano.valueItem);
    end;
  end;
end;

procedure TFrm_Cad_Dependente.cbx_cod_planoChange(Sender: TObject);
begin
  inherited;
 // if FStatus = FST_alteracao then
 //   tbs_tabelaShow(self);
end;

procedure TFrm_Cad_Dependente.cbx_cod_empresaChange(Sender: TObject);
begin
  inherited;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
end;

end.
