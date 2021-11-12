unit Cad_PreCadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, Mask, DB,
  jpeg, BEditButton, Grids, DBGrids, Buttons;

type
  TFrm_Cad_PreCadastro = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    pnl_carteira: TPanel;
    pnl_situacao: TPanel;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel7: TPanel;
    edt_processo_ben: TDCEdit;
    cbx_cod_TipoSegurado: TDCComboBox;
    Panel8: TPanel;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_plano: TDCComboBox;
    Panel9: TPanel;
    edt_dtinscricao_ben: TDCDateEdit;
    Panel10: TPanel;
    cbx_cod_tipodependente: TDCComboBox;
    Panel5: TPanel;
    edt_dtrenovacao_dep: TDCDateEdit;
    edt_dtlimite_dep: TDCDateEdit;
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
    Panel24: TPanel;
    edt_nome_seg: TDCEdit;
    edt_dtsituacao_ben: TDCDateEdit;
    cbx_sexo_ben: TDCComboBox;
    pnl_alerta: TPanel;
    PDJButton4: TPDJButton;
    Panel38: TPanel;
    edt_dtalteracao_hsb: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    edt_dtcadastro_ben: TDCDateEdit;
    edt_dtplano_ben: TDCDateEdit;
    Panel45: TPanel;
    Panel44: TPanel;
    Panel43: TPanel;
    edt_foneresi_ben: TDCEdit;
    chb_recibomes_dep: TCheckBox;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    lbl_cod_beneficiario: TLabel;
    edt_nomecarteira_ben: TDCEdit;
    lbl_processo: TLabel;
    cbx_cod_tipocoberturaodonto: TDCComboBox;
    edt_email_ben: TDCEdit;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    edt_nomemae_ben: TDCEdit;
    edt_dtadesaoodonto_ben: TDCDateEdit;
    tbs_tabela: TTabSheet;
    Panel19: TPanel;
    cbx_cod_planoPagto: TDCComboBox;
    SpeedButton6: TSpeedButton;
    edt_titularidade_ben: TDCEdit;
    edt_titulacartei_ben: TDCEdit;
    lbl_ocorrencia: TLabel;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    edt_cep_ben: TMaskEdit;
    edt_endereco_ben: TDCEdit;
    edt_numero_ben: TDCEdit;
    edt_complemento_ben: TDCEdit;
    cbx_cod_uf: TDCComboBox;
    cbx_cod_cidadeCep: TDCComboBox;
    btn_buscarcep: TPDJButton;
    edt_bairro_ben: TDCEdit;
    btn_buscarcep2: TPDJButton;
    edt_enderecocor_ben: TDCEdit;
    edt_numerocor_ben: TDCEdit;
    edt_complementocor_ben: TDCEdit;
    cbx_cd2_uf: TDCComboBox;
    cbx_cod_cidadecorCEP: TDCComboBox;
    edt_cepcor_ben: TMaskEdit;
    edt_bairrocor_ben: TDCEdit;
    edt_dtendereco_ben: TDCDateEdit;
    btn_atualizarEndereco: TPDJButton;
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
    procedure edt_nome_benExit(Sender: TObject);
    procedure cbx_cod_tipodependenteExit(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure cbx_cod_empresaChange(Sender: TObject);
    procedure Panel14Exit(Sender: TObject);
    procedure edt_nome_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_processoClick(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure edt_dtendereco_benKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
    procedure tbs_tabelaShow(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
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
    function SalvarPlanoPagtoEspecial: boolean ;
    procedure ConfigurarDependenteAssistido(cod_tipodependente : integer);
    { Private declarations }
  public
    { Public declarations }
    wCod_Beneficiario, wTipoDependente : String ;
    procedure BotoesOnOff(b:boolean);                   override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarInsert(Frm:TForm) : boolean ;    override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Localizar;                            override ;
  end;

var
  Frm_Cad_PreCadastro: TFrm_Cad_PreCadastro;

implementation
uses Fun_Str, Fun_Data, Constantes, Dlg_Mensagem, Fun_DB, Mov_SitBeneficiario, Fun_Obj,
Fun_Beneficiario, Rel_HistoricoBenefi, Fun_Acesso, Rel_Requerimento001, Rel_FichaBenefi001,
Cad_Agendamento, Fun_Desconto, Mov_Tramite, dtm_principal, Mov_DescontoManual, Fun_ConsCadastro,
  dtm_principal6, Fun_ConsCEP ;
{$R *.DFM}

procedure TFrm_Cad_PreCadastro.FormCreate(Sender: TObject);
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
  'and b.cod_tipodependente = td.cod_tipodependente and b.titulacartei_ben > 0 and b.cod_sitbeneficiario = 29 ';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação, Plano' ;
  FOcultaIndice := true ;
  inherited;
  FTransacao := false ;
  if Acs_AcessoEspecial('100301') then begin
     tbs_obs.TabVisible := false;
  end;
end;

procedure TFrm_Cad_PreCadastro.ConfigurarDependenteAssistido(cod_tipodependente : integer);
begin
  tbs_tabela.TabVisible := cod_tipodependente = 2;
  cbx_cod_empresafolha.Enabled := cod_tipodependente = 2;
end;
 
procedure TFrm_Cad_PreCadastro.AtualizarSitBeneficiario(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    pnl_situacao.Caption := 'Situação : '+Tab.FieldByName('nome_sit').AsString;
    pnl_alerta.Caption := '***  '+pnl_situacao.Caption+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_PreCadastro.BAS_Localizar;
begin
  inherited;
  FPesquisaSQL  := FPesquisaSQLDefalt ;
end;

procedure TFrm_Cad_PreCadastro.BAS_LimparTela;
begin
  inherited;
  edt_dtinscricao_ben.Date := date ;
  edt_dtsituacao_ben.text := datetostr(date) ;
  edt_dtcadastro_ben.text := datetostr(date) ;
  edt_dtplano_ben.Date := edt_dtinscricao_ben.Date;
  PageControl.ActivePageIndex := 0 ;
  wCod_Plano_Old := '' ;
  wCod_TipDep_Old := '' ;
  wCod_Empresa_Old := '' ;
  pnl_alerta.Visible := false ;
end;

function TFrm_Cad_PreCadastro.SalvarHistorico: boolean ;
begin
  result := true ;
  if (wCod_Empresa_Old <> cbx_cod_empresa.ValueItem) and (FStatus = FST_Alteracao) then begin
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

function TFrm_Cad_PreCadastro.SalvarPlanoPagtoEspecial: boolean ;
begin
  if (cbx_cod_planoPagto.text <> '') and (wCod_planoPagto_Old <> cbx_cod_planoPagto.ValueItem) then begin
    DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.text );
    result := DB_ExecSQL('insert into tbl_beneficiarioPlanoPagtoEspecial (cod_beneficiario, cod_planoPagto, dtplanoPagto) values ('+
    edt_cod_beneficiario.text+', '+Obj_GetFormObjValueByName(self, cbx_cod_planoPagto.name)+', '+DB_FormatDataSQL(edt_dtplano_ben.text, ftDate)+')');
  end;
end;

function TFrm_Cad_PreCadastro.BAS_SalvarInsert(Frm:TForm): boolean ;
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
    result := SalvarPlanoPagtoEspecial ;
  if Result then
    result := DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'0, null,null,null,null, null)');
end;

function TFrm_Cad_PreCadastro.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  result := DB_Update(Frm) ;
  if result then
    result := DB_UpdateByFields(self, FCamposAux, FTabelaAux);
  if result then
    result := SalvarHistorico ;
 // if result then
 //   result := SalvarPlanoPagtoEspecial ;
end;

procedure TFrm_Cad_PreCadastro.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto', 'descricao_tco');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed', 'descricao_tcu');
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
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

function TFrm_Cad_PreCadastro.BAS_ValidarCadastro: boolean ;
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
  (not BAS_ValidarCampo(edt_dtrenovacao_dep.name, 'A data de renovação deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtlimite_dep.name, 'A data limite deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_estadociv.name, 'Um estado civil deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_grauparent.name, 'Um grau de parentesco deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_sexo_ben.name, 'Selecione o sexo do beneficiário !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascim_ben.name, 'A data de nascimento deve ser preencido, ou não é uma data de nascimento válida !', VLD_DataNascimento )) or
  (not BAS_ValidarCampo(cbx_cod_estfisico.name, 'O estado fisico deve ser selecionado !', VLD_Preenchido )) then
    Exit ;

  if cbx_cod_tipodependente.ValueItem = 2 then
    if (not BAS_ValidarCampo(cbx_cod_planoPagto.name, 'Selecione um Plano de Pagamento para o beneficiário !', VLD_Preenchido )) then
      Exit;  
  if not Ben_CriticaDependente(cbx_cod_grauparent.valueItem, cbx_cod_plano.ValueItem, cbx_cod_tipodependente.ValueItem,
  edt_inscricao_ben.Text, cbx_cod_estfisico.valueitem,Data_GetIdadeAnos(edt_dtnascim_ben.date, date), FStatus, edt_dtinscricao_ben.Date, self) then
    Exit ;
  PageControl.ActivePageIndex := 1 ;
  if (not BAS_ValidarCampo(edt_endereco_ben.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_numero_ben.name, 'O Numero deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) then
    Exit;
  PageControl.ActivePageIndex := 2 ;
  if (not BAS_ValidarCampo(edt_rg_ben.name, 'O R.G. deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_dtemissaorg_ben.name, 'A Data de emissão do RG deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) then
    Exit;
  if FStatus = FST_novo then begin
    PageControl.ActivePageIndex := 3 ;
    if cbx_cod_ocorrenciaEdital.text = '' then begin
      Dlg_Alerta('A Ocorrencia deve ser Preenchida !',self);
      Exit;
    end;
  end;  
  if cbx_cod_planoPagto.Text <> '' then
  begin
    DB_OpenSQL('select cod_plano from tbl_planoPagto where cod_planopagto = '+cbx_cod_planoPagto.valueItem);
    if tab.FieldByName('cod_plano').AsInteger <> cbx_cod_plano.ValueItem then
    begin
      Dlg_Alerta('Tabela de Plano de Pagamento Especial não permitida para o Plano '+cbx_cod_plano.Text, self);
      PageControl.ActivePageIndex := 4;
      cbx_cod_planoPagto.SetFocus;
      exit;
    end;
  end; 
  result := false ;
end;

procedure TFrm_Cad_PreCadastro.BAS_Alterar(Frm:Tform);
  function ultimaalteracao(cod_beneficiario:string): string;
  begin
    DB_OpenSQL('exec spc_cons_adm_ultimaalteracao '+cod_beneficiario);
    edt_nome_usu.text := Tab.Fields[1].AsString+', na tela Cod.: '+Tab.Fields[2].AsString ;
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
  if FStatus <> FST_Novo then
     BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp')
  else
     Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
  inherited ;
  cbx_cod_tipocoberturaodonto.Enabled := false;
  edt_dtadesaoodonto_ben.Enabled := false;
  DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
  edt_inscricao_benExit(self);
  AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
  wCod_Plano_Old := cbx_cod_plano.ValueItem;
  wCod_TipDep_Old := cbx_cod_tipodependente.ValueItem;
  wCod_Empresa_Old := cbx_cod_empresa.valueitem ;
  MostrarPlanoPagtoEspecial(edt_cod_beneficiario.text);
  lbl_cod_beneficiario.Caption := ('Cod. Beneficiário: '+edt_cod_beneficiario.Text);
  //Se for dependente Normal não pode alterar o plano   COMENTADO PELA MUDANÇA DA LEI 10/2002
  edt_dtalteracao_hsb.text := ultimaalteracao(edt_cod_beneficiario.text);
  ConfigurarDependenteAssistido(cbx_cod_tipodependente.ValueItem);
end;

procedure TFrm_Cad_PreCadastro.edt_cod_empresaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;


procedure TFrm_Cad_PreCadastro.edt_foneresi_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 2 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_PreCadastro.edt_tipodocume_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 3 ;
    SelectNext(ActiveControl,False,True);
    key := 0 ;
  end;
end;

procedure TFrm_Cad_PreCadastro.btn_novoClick(Sender: TObject);
begin
  CarregarCombos;
  edt_cod_beneficiario.text := '0';
  edt_titularidade_ben.text := '1';
  edt_digito_ben.text := '0';
  edt_cod_sitbeneficiario.text := '29';
  edt_titulacartei_ben.text := '0';
  cbx_cod_tipocoberturaodonto.Enabled := true;
  edt_dtadesaoodonto_ben.Enabled := true;
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Cad_PreCadastro.edt_dtnascim_benChange(Sender: TObject);
begin
  inherited;
  edt_idade.text := Data_GetIdadeExt(edt_dtnascim_ben.date, date);
end;

procedure TFrm_Cad_PreCadastro.edt_cod_beneficiarioButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_PreCadastro.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then exit ;
  if DB_OpenSQL('select nome_ben, endereco_ben, bairro_ben, cidade_ben, cod_uf, '+
  'cep_ben, numero_ben, complemento_ben, foneresi_ben, rg_ben, orgemissorrg_ben, dtemissaorg_ben, cpf_ben, '+
  'titeleitor_ben, outrosdocume_ben, tipodocume_ben, processo_ben, cod_tiposegurado,'+
  'cod_empresa, cod_plano, cod_cidadeCep, cod_empresafolha, numero_ben, complemento_ben '+
  'from tbl_beneficiario b where b.inscricao_ben = '+edt_inscricao_ben.text+' and titulacartei_ben = 0') > 0 then begin
    edt_nome_seg.text := Tab.FieldByName('nome_ben').AsString ;
    if edt_endereco_ben.text = '' then begin
      edt_endereco_ben.text := Tab.FieldByName('endereco_ben').AsString ;
      edt_numero_ben.Text :=  Tab.FieldByName('numero_ben').AsString ;
      edt_complemento_ben.Text := Tab.FieldByName('complemento_ben').AsString ;
      edt_bairro_ben.text := Tab.FieldByName('bairro_ben').AsString ;
      edt_cep_ben.text := Tab.FieldByName('cep_ben').AsString ;
      edt_foneresi_ben.text := Tab.FieldByName('foneresi_ben').AsString ;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf', Tab.FieldByName('cod_uf').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_TipoSegurado', Tab.FieldByName('cod_tiposegurado').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_empresa', Tab.FieldByName('cod_empresa').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_plano',Tab.FieldByName('cod_plano').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Tab.FieldByName('cod_cidadeCep').AsString);
      Obj_SetFormObjValueByName(Self, 'cbx_cod_empresafolha', Tab.FieldByName('cod_empresafolha').AsString);
     // Obj_SetFormObjValueByName(self,'cbx_cod_tipodependente', 2);
    end;
    if edt_enderecocor_ben.text = '' then
      btn_atualizarEnderecoClick(self);
    if edt_rg_ben.text = '' then begin
      edt_rg_ben.text := Tab.FieldByName('rg_ben').AsString ;
      edt_orgemissorrg_ben.text := Tab.FieldByName('orgemissorrg_ben').AsString ;
      edt_dtemissaorg_ben.text := Tab.FieldByName('dtemissaorg_ben').AsString ;
      edt_cpf_ben.text := Tab.FieldByName('cpf_ben').AsString ;
      edt_titeleitor_ben.text := Tab.FieldByName('titeleitor_ben').AsString ;
      edt_outrosdocume_ben.text := Tab.FieldByName('outrosdocume_ben').AsString ;
      edt_tipodocume_ben.text := Tab.FieldByName('tipodocume_ben').AsString ;
    end;
    if edt_processo_ben.text = '' then
      edt_processo_ben.text := Tab.FieldByName('processo_ben').AsString ;
  end else begin
    Dlg_Alerta('Inscrição não encontrada !', self);
    edt_inscricao_ben.SetFocus;
  end;
  cbx_cod_tipodependenteExit(self);
end;

procedure TFrm_Cad_PreCadastro.cbx_cod_TipoSeguradoChange(Sender: TObject);
begin
  inherited;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
end;

procedure TFrm_Cad_PreCadastro.edt_cod_beneficiarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then begin
    btn_alterarClick(self);
  end;
end;

procedure TFrm_Cad_PreCadastro.edt_cod_beneficiarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if edt_cod_beneficiario.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_cod_beneficiario.text;
end;

procedure TFrm_Cad_PreCadastro.BotoesOnOff(b:boolean);
begin
  inherited;
  if FStatus <> FST_Novo then begin
    cbx_cod_tipodependente.enabled := not b ;
    cbx_cod_plano.enabled := not b ;
    cbx_cod_planoPagto.Enabled := not b;
    edt_dtplano_ben.enabled := not b ;
    edt_dtsituacao_ben.enabled := not b ;
  end;
end;

procedure TFrm_Cad_PreCadastro.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_novo then begin
    ADM_ver_beneficiarioCadastrado(edt_inscricao_ben.text, edt_nome_ben.text, SELF);
  end;
end;

procedure TFrm_Cad_PreCadastro.cbx_cod_tipodependenteExit(Sender: TObject);
begin
  inherited;
    if (cbx_cod_tipodependente.VAlueItem = '') or (FStatus <> FST_Novo) then
      exit ;
  edt_titulacartei_ben.text := Ben_GeraTitularidadeCarteira(edt_inscricao_ben.text, cbx_cod_tipodependente.VAlueItem) ;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
  DB_ClearSQL;
  ConfigurarDependenteAssistido(cbx_cod_tipodependente.ValueItem);
  //Se for dependente Normal não pode alterar o plano    COMENTADO PELA MUDANÇA DA LEI 10/2002
//////  cbx_cod_plano.enabled := cbx_cod_tipodependente.ValueItem = '2' ;
end;

procedure TFrm_Cad_PreCadastro.btn_alterarClick(Sender: TObject);
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
  insc := Get_Cod_beneficiario(edt_cod_beneficiario.text) ;
  if insc = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt;
  edt_cod_beneficiario.text := insc ;
  edt_cod_beneficiario.text := '' ;
  inherited;
end;

procedure TFrm_Cad_PreCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbl_processo.Enabled := not Obj_LocalizarFormAtivo(Frm_Mov_Tramite);
end;

procedure TFrm_Cad_PreCadastro.btn_atualizarEnderecoClick(Sender: TObject);
begin
  inherited;
  edt_enderecocor_ben.text := edt_endereco_ben.text;
  edt_bairrocor_ben.text := edt_bairro_ben.text;
  Obj_SetFormObjValueByName(Self,'cbx_cod_cidadecorCEP',cbx_cod_cidadeCep.ValueItem);
  Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',cbx_cod_uf.ValueItem);
  edt_cepcor_ben.text := edt_cep_ben.text;
  edt_numerocor_ben.Text := edt_numero_ben.Text;
  edt_complementocor_ben.Text := edt_complemento_ben.Text;
  EscreveLog(btn_atualizarEndereco.Name);
end;

procedure TFrm_Cad_PreCadastro.cbx_cod_empresaChange(Sender: TObject);
begin
  inherited;
  pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
  MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
end;

procedure TFrm_Cad_PreCadastro.Panel14Exit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_novo then begin
    ADM_ver_beneficiarioCadastrado(edt_inscricao_ben.text, edt_nome_ben.text, SELF);
  end;
end;

procedure TFrm_Cad_PreCadastro.edt_nome_benKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (FStatus = FST_novo) then
    edt_nomecarteira_ben.text := edt_nome_ben.text ;
end;

procedure TFrm_Cad_PreCadastro.lbl_processoClick(Sender: TObject);
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

procedure TFrm_Cad_PreCadastro.btn_buscarcepClick(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if edt_cep_ben.Text <> '' then
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
  end;
end;

procedure TFrm_Cad_PreCadastro.edt_dtendereco_benKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  edt_dtendereco_ben.Date := Date;
end;

procedure TFrm_Cad_PreCadastro.SpeedButton6Click(Sender: TObject);
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

procedure TFrm_Cad_PreCadastro.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  cbx_cod_cidadeCep.ValItems.Clear;
  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cod_uf.ValueItem+' order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cod_uf.ValueItem+' order by cidade_cep');
end;

procedure TFrm_Cad_PreCadastro.tbs_tabelaShow(Sender: TObject);
begin
  inherited;
  if (cbx_cod_plano.Text <> '') and (FStatus = FST_Novo) then begin
    Obj_LoadCombo(Self,'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planoPagto',
    'tbl_planoPagto where cod_plano = '+cbx_cod_plano.valueitem + ' and cod_statusativo = 1');
  end;
  if FStatus = FST_Novo then begin
    cbx_cod_ocorrenciaEdital.Visible := True;
    lbl_ocorrencia.Visible := True;
  end
  else begin
    cbx_cod_ocorrenciaEdital.Visible := false;
    lbl_ocorrencia.Visible := false;
  end;
end;

procedure TFrm_Cad_PreCadastro.PDJButton4Click(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select s.cod_formaadm from tbl_segurado s, tbl_beneficiario b where '+
  'b.cod_beneficiario = s.cod_beneficiario and inscricao_ben = '+edt_inscricao_ben.text);
  edt_dtrenovacao_dep.text := ADM_critica_carteiravalidade(cbx_cod_tipodependente.valueitem,
  Tab.Fields[0].AsString, cbx_cod_grauparent.valueitem, formatdatetime('mm/dd/yyyy',edt_dtnascim_ben.date));
  edt_dtlimite_dep.text := edt_dtrenovacao_dep.text ;
  DB_ClearSQL;
end;

procedure TFrm_Cad_PreCadastro.btn_buscarcep2Click(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if edt_cep_ben.Text <> '' then
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
  end;
end;

end.
