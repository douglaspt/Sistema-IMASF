unit Cad_AutorizacaoMedica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, QuickRpt,
  jpeg, Grids, DBGrids, Db, printers, BComboBox;

type
  TFrm_Cad_AutorizacaoMedica = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_autorizacaoMedica: TDCChoiceEdit;
    Panel1: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    Panel32: TPanel;
    Panel6: TPanel;
    cbx_cod_usuario: TDCComboBox;
    edt_dtsistema_aum: TDCDateEdit;
    Panel8: TPanel;
    edt_nomeMedico_aum: TDCEdit;
    edt_cod_crm: TDCChoiceEdit;
    pnl_historico: TPanel;
    PDJButton1: TPDJButton;
    DataSource1: TDataSource;
    pnl_alerta: TPanel;
    PageControl: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    dbg_histautorizacao: TDBGrid;
    Panel7: TPanel;
    edt_descricao_itc: TDCEdit;
    edt_cod_itemservico: TDCChoiceEdit;
    btn_adicionaritem: TPDJButton;
    btn_alteraitem: TPDJButton;
    btn_removeritem: TPDJButton;
    btn_salvaritem: TPDJButton;
    btn_cancelaritem: TPDJButton;
    DataSource2: TDataSource;
    pnl_carencia: TPanel;
    edt_idade: TDCEdit;
    Panel5: TPanel;
    edt_obs_ita: TDCEdit;
    btn_imprimirAutorizacao: TPDJButton;
    edt_qtde_ita: TDCEdit;
    Panel9: TPanel;
    edt_nome_con: TDCEdit;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_cod_tipoAutorizacao: TDCEdit;
    pnl_tipoautorizacao: TPanel;
    edt_descricao_aum: TDCEdit;
    edt_carteirinha2: TDCEdit;
    edt_carteirinha: TEdit;
    btn_leituracarteirinha: TPDJButton;
    edt_apelido_its: TDCEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_nomereduzido_con: TDCEdit;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    Panel10: TPanel;
    Panel11: TPanel;
    edt_dtatendimento_aum: TDCDateEdit;
    btn_beneficiario: TPDJButton;
    cbx_conveniadoendereco: TBComboBox;
    DataSource3: TDataSource;
    dbg_listaItem: TDBGrid;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    btn_adicionarItens: TPDJButton;
    btn_senha: TPDJButton;
    Mem_autorizacao: TMemo;
    Panel38: TPanel;
    edt_dtatendimento_ita: TDCDateEdit;
    Panel39: TPanel;
    edt_dtalteracao_ita: TDCDateEdit;
    cb2_cod_usuario: TDCComboBox;
    dbg_itemservico: TDBGrid;
    ckb_isentoCopart_aum: TCheckBox;
    btn_pdf: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_autorizacaoMedicaButtonClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_autorizacaoMedicaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_adicionaritemClick(Sender: TObject);
    procedure btn_alteraitemClick(Sender: TObject);
    procedure btn_salvaritemClick(Sender: TObject);
    procedure btn_cancelaritemClick(Sender: TObject);
    procedure btn_removeritemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_descricao_aumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_imprimirAutorizacaoClick(Sender: TObject);
    procedure edt_qtde_itaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_leituracarteirinhaClick(Sender: TObject);
    procedure edt_carteirinhaExit(Sender: TObject);
    procedure edt_carteirinhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_apelido_itsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_nomereduzido_conKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_adicionarItensClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_senhaClick(Sender: TObject);
    procedure dbg_histautorizacaoDblClick(Sender: TObject);
    procedure s(Sender: TObject);
  private
    { Private declarations }
    FStatus2, FPlano, Int_Retorno : integer;
    FCMI : Boolean;

    FPesquisaSQLDefalt, FPesquisaItemSevico : String ;
    procedure BotoesOnOffItem(b: boolean);
    procedure PreencherHistorico;
    procedure AlertaTipoAutrizacao;
    procedure MostrarNivelCar(cod_beneficiario : string);
    procedure criticaReutilizacao(cod_beneficiario, itemservico : string ; quantidade,
    mesesReut, QtdeReut : integer; Dt_atendimento : tdatetime);
    function CriticaItem(cod_itemservico : string) : boolean;
  public
    { Public declarations }
    wCod_Beneficiario, FSexo : String;
    FIdade : Integer;
    FSenha : boolean;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure AbrirHistorico;
    procedure BAS_LimparTela;                           override;
    procedure BAS_Salvar(Frm:TForm);                    override ;
    procedure BotoesOnOff(b:boolean);                   override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Excluir(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_AutorizacaoMedica: TFrm_Cad_AutorizacaoMedica;

implementation

uses Constantes, Fun_ConsCadastro, Fun_DB, Fun_Beneficiario, Fun_Str, Dlg_Mensagem,
Fun_Acesso, Fun_Obj, Fun_Medico, dtm_principal4, Rel_3054, Fun_data, Imp_4120,
Cad_Segurado, Cad_Dependente, dtm_principal6, Dlg_SenhaAcesso,
  Bas_Impressao;

//  Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
//  Function Daruma_DUAL_VerificaStatus: Integer; StdCall; External 'Daruma32.dll'
  function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'


{$R *.DFM}

procedure TFrm_Cad_AutorizacaoMedica.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Autorização Médica' ;
  FEditChave    := 'edt_cod_autorizacaoMedica' ;
  FEditAlteracao:= 'edt_inscricao_ben' ;
  FUltFoco      := 'cbx_cod_usuario' ;
  FTitPesquisa  := 'Localizar Autorização Médica' ;
  FPesquisa     := 'cod_autorizacaoMedica, cod_beneficiario, dtatendimento_aum, cod_itemservico' ;
  DB_OpenSQL('select cod_setorimasf from tbl_usuario where cod_usuario ='+inttostr(FCod_Usuario));
  if Tab.FieldByName('cod_setorimasf').AsInteger = 34 then
    FCMI := true
  else
    FCMI := false;
  inherited;

end;

procedure TFrm_Cad_AutorizacaoMedica.BAS_Alterar(Frm:Tform);
begin

  inherited ;
  wCod_Beneficiario := edt_cod_beneficiario.Text;
  edt_inscricao_benButtonClick(self);
  edt_cod_conveniadoExit(self);
  btn_imprimirAutorizacao.Visible := true;
  AlertaTipoAutrizacao;
  cbx_conveniadoendereco.SetFocus;
end;

procedure TFrm_Cad_AutorizacaoMedica.BAS_Excluir(Frm:Tform);
begin
  if not Dlg_YesNo(MSG_DB_CON_Exclui, Self) then Exit ;
  if not DB_Delete(Self) then
    Exit ;
  DB_ExecSQL('delete from tbl_itemautorizacao where cod_autorizacaoMedica = '+edt_cod_autorizacaoMedica.text);
 // inherited;
  if FTransacao then
    DB_Commit;
  BotoesOnOff(false);
  BAS_LimparTela;
  Dlg_Ok('Registro Excluído com Sucesso !', self);
end;

function TFrm_Cad_AutorizacaoMedica.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome.name, 'Selecione um Beneficiário Existente!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Conveniado deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtatendimento_aum.name, 'A Data do Atendimento deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_cod_crm.Name, 'O  Código do CRM deve ser preenchido!',VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_nomeMedico_aum.Name, 'Selecione um CRM Existente!',VLD_Preenchido)) then
  Exit;
  if fdt_principal4.spc_cons_adm_itemautorizacao.RecordCount = 0 then begin
    Dlg_Alerta('É necessário cadastrar um Item de Serviço',self);
    exit;
  end;
  if FCMI then
  begin
    if DB_OpenSQL('select cod_crm from tbl_corpoclinico where cod_conveniado = 8958'+
    ' and cod_crm = '+edt_cod_crm.Text) <= 0 then
    begin
      Dlg_Alerta('Médico não Cadastrado no CMI',self);
      exit;
    end;
  end;
  if (edt_cod_conveniado.Text <> '') and (edt_nome_con.Text = '') then
  begin
    Dlg_Alerta('Código do Conveniado não Existe ou Conveniado está Cancelado!',self);
    exit;
  end;
  result := false ;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_autorizacaoMedicaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.BAS_LimparTela;
begin
  inherited;
  wCod_Beneficiario := '';
  edt_cod_beneficiario.Text := '';
  edt_carteirinha.Text := '';
  edt_carteirinha2.Text := '';
end;

procedure TFrm_Cad_AutorizacaoMedica.BAS_Salvar(Frm:TForm);
begin
 if BAS_ValidarCadastro then Exit ;
 fdt_principal4.spc_cons_adm_itemautorizacao.First;
 while not fdt_principal4.spc_cons_adm_itemautorizacao.Eof do
  begin
    if not Med_ConveniadoItem(edt_cod_conveniado.text, fdt_principal4.spc_cons_adm_itemautorizacao.FieldByName('cod_itemservico').AsString,self) then
      Exit;
    fdt_principal4.spc_cons_adm_itemautorizacao.Next;
  end;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
  if FStatus = FST_Novo then begin
    if not BAS_SalvarInsert(Self) then
      Exit ;
  end else begin
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATENÇÃO ! Ocorreu algum erro ao tentar salvar ! Não foi possível salvar', self);
      Exit ;
    end;
  end;
  DB_Commit;
  Application.ProcessMessages;
  if FStatus = FST_Novo then
    if Dlg_YesNo('Deseja Imprimir Autorização?',self) then
      btn_imprimirAutorizacaoClick(self);
  BotoesOnOff(false);
  BAS_LimparTela;
  FStatus := FST_Normal;
  pnl_tipoautorizacao.Visible := false;
end;

procedure TFrm_Cad_AutorizacaoMedica.MostrarNivelCar(cod_beneficiario : string);
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

procedure TFrm_Cad_AutorizacaoMedica.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben,'+
    ' digito_ben, b.cod_sitbeneficiario, nome_sit, tipo_sit, dtnascim_ben, sexo_ben, bn.cod_planoPagtoOld, pp.cod_plano as cod_planoOld'+
    ' from tbl_beneficiario b, tbL_sitbeneficiario s, tbl_beneficiarioPlanoPagtoEspecial bn, tbl_planopagto pp'+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.cod_beneficiario = bn.cod_beneficiario'+
    ' and bn.cod_planoPagtoOld = pp.cod_planopagto and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    if (Date >= StrToDate('01/12/2021')) then
      FPlano := Tab.FieldByNAme('cod_plano').AsInteger
    else
      FPlano := Tab.FieldByNAme('cod_planoOld').AsInteger;
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+IntToStr(FPlano)+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.text := Data_GetIdadeExt(Tab.FieldByNAme('dtnascim_ben').AsDateTime, date);
    FSexo := Tab.FieldByNAme('sexo_ben').AsString;
    FIdade := Data_GetIdadeAnos(Tab.FieldByNAme('dtnascim_ben').AsDateTime, date);
    pnl_alerta.Caption := '***   Situação: '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    btn_salvar.Enabled := Tab.FieldByName('tipo_sit').AsInteger <> 2;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    pnl_carencia.Visible := ADM_VerCarencia(edt_cod_beneficiario.text);
    TabSheet1.TabVisible := ADM_VerCarencia(edt_cod_beneficiario.text);
    MostrarNivelCar(edt_cod_beneficiario.text);
    AbrirHistorico;
    with fdt_principal4.spc_cons_adm_itemautorizacao do begin
      Close;
      parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizacaoMedica.text ;
      Open;
    end;
  end;
  wCod_Beneficiario := '';
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_beneficiarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin
  inherited;

end;

procedure TFrm_Cad_AutorizacaoMedica.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_autorizacaoMedicaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_alterarClick(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.Text <> '' then
  begin
    FPesquisaItemSevico := 'select i.cod_itemservico, cod_padrao, nome_its, apelido_its, max(dtvalidade_hit)'+
    ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+edt_cod_conveniado.text+
    ' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
    FPesquisaSQL  := FPesquisaItemSevico;
    edt_cod_itemservico.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, 'Cod. Item Serv., Cod.AMB, Descrição, Apelido, Dt. Ult. Atual.', 'Localizar Item de Serviço', FPesquisaSQL, true);
    edt_cod_itemservicoExit(self);
  end;

  {
  FPesquisaItemSevico := 'select i.cod_itemservico, cod_padrao, nome_its, apelido_its, max(dtvalidade_hit) '+
  ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
  ' where cod_statusAtivo = 1';
  FPesquisaTit := 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento, Apelido, Dt. Validade';
  if (edt_cod_conveniado.text = '') or (edt_cod_conveniado.Text = '0') then
    FPesquisaSQL  := FPesquisaItemSevico+' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its'
  else
    FPesquisaSQL  := FPesquisaItemSevico+' and cod_conveniado = '+edt_cod_conveniado.text+' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
  edt_cod_itemservico.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  edt_cod_itemservicoExit(self);   }
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_novoClick(Sender: TObject);
var
  VerificaCodigo : Boolean;
begin
  PreencherHistorico;
  inherited;
  VerificaCodigo := false;
  fdt_principal4.spc_cons_adm_autorizacaomedica.Close;
  fdt_principal4.spc_cons_adm_itemautorizacao.close;
  pnl_carencia.Visible := false;
  pnl_alerta.Visible := false;
  PageControl.ActivePageIndex := 1 ;
  edt_cod_autorizacaoMedica.Text := DB_GetPrimaryKey();
  while not VerificaCodigo  do
  begin
    if DB_OpenSQL('select * from tbl_autorizainternacao where cod_autorizainternacao = '+edt_cod_autorizacaoMedica.Text) > 0 then
      edt_cod_autorizacaoMedica.Text := DB_GetPrimaryKey()
    else
      VerificaCodigo := true;
  end;
  edt_cod_tipoAutorizacao.Text := '0';
  edt_cod_autorizacaoMedica.Enabled := false;
  btn_imprimirAutorizacao.Visible := false;
  TabSheet1.TabVisible := false;
  pnl_tipoautorizacao.Visible := false;
//  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_itemservicoExit(
  Sender: TObject);
begin
  inherited;
  if (edt_cod_itemservico.text <> '') and (edt_cod_conveniado.Text <> '') then
  begin
    DB_OpenSQL('select distinct i.nome_its from tbl_itemservico i '+
    ' inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico'+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+edt_cod_conveniado.Text+
    ' and i.cod_itemservico = '+edt_cod_itemservico.text);
    edt_descricao_itc.text := Tab.FieldByName('nome_its').AsString;
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.PreencherHistorico;
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_usuario','nome_usu');
  BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
  edt_dtsistema_aum.Text := DateToStr(date);
  edt_dtatendimento_aum.Text := DateToStr(date);
end;

procedure TFrm_Cad_AutorizacaoMedica.FormShow(Sender: TObject);
begin
  PreencherHistorico;
  inherited;
  FSenha := false;
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Dependente);
  ckb_isentoCopart_aum.Enabled := Acs_AcessoEspecial('106302');
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_crmButtonClick(
  Sender: TObject);
var
  FPesquisaSQL : String;
begin
  inherited;
  FPesquisaSQL := 'select cod_crm, nome_cln from tbl_corpoclinico where cod_conveniado = 8958';
  if FCMI then
  begin
    edt_cod_crm.Text := Cons_ConsultaCadastro(self,'','','Cod. CRM, Nome do Médico','Localizar Corpo Clínico',FPesquisaSQL,true);
    edt_cod_crmExit(self);
  end  
  else begin
    Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
    Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
    'cod_crm, medico_crm', 'Cod. CRM, Nome do Médico',
    'Localizar CRM', '', true));
    edt_cod_crmExit(self);
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.AbrirHistorico ;
begin
 with fdt_principal4.spc_cons_adm_autorizacaomedica  do
 begin
   close;
   ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
   open;
 end;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_nomeMedico_aum.text := Get_NomeMedico(edt_cod_crm.text);
end;

procedure TFrm_Cad_AutorizacaoMedica.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3054 := TFrm_Rel_3054.Create(Self);
  Frm_Rel_3054.wInscricao := edt_inscricao_ben.text;
  Frm_Rel_3054.ShowModal;
  Frm_Rel_3054.Release;
  Show;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_adicionaritemClick(
  Sender: TObject);
begin
  inherited;
  edt_dtatendimento_ita.Date:= edt_dtatendimento_aum.Date;
  FStatus2 := FST_Novo;
  btn_senha.Visible := false;
  FSenha := false;
  BotoesOnOffItem(false);
  Obj_EmptyEditTag(self,0);
  edt_qtde_ita.Text := '1';
  edt_apelido_its.SetFocus;
end;

procedure TFrm_Cad_AutorizacaoMedica.BotoesOnOff(b:boolean);
begin
  inherited;
  btn_leituracarteirinha.Enabled := not b;
end;

procedure TFrm_Cad_AutorizacaoMedica.BotoesOnOffItem(b: boolean);
begin
  btn_adicionaritem.Enabled := b ;
  btn_adicionarItens.Enabled := b;
  btn_alteraitem.Enabled := b ;
  btn_removeritem.Enabled := b ;
  btn_salvaritem.Enabled := not b ;
  btn_cancelaritem.Enabled := not b;
  dbg_itemservico.visible := b ;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_alteraitemClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesOnOffItem(false);
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    edt_cod_itemservico.text := fieldbyname('cod_itemservico').AsString;
    edt_descricao_itc.Text := fieldbyname('nome_its').AsString;
    edt_obs_ita.Text := fieldbyname('obs_ita').AsString;
    edt_qtde_ita.Text := fieldbyname('qtde_ita').AsString;
    edt_dtalteracao_ita.Text := fieldbyname('dtsistema_ita').AsString;
    edt_dtatendimento_ita.Date:= fieldbyname('dtatendimento_ita').AsDateTime;
    Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, fieldbyname('cod_usuario').Value);
  end;
end;

function ADM_VerCarencia(cod_beneficiario : string): boolean ;
begin
  DB_OpenSql('exec spc_cons_adm_maiorcarencia '+cod_beneficiario);
  result := Tab.Fields[0].AsString <> '' ;
  DB_ClearSQL;
end;

procedure TFrm_Cad_AutorizacaoMedica.criticaReutilizacao(cod_beneficiario, itemservico : string ; quantidade, mesesReut, QtdeReut : integer; Dt_atendimento : tdatetime);
begin
  DB_OpenSql('select sum(qtde_ita) as qtde_ita from tbl_itemautorizacao it, tbl_autorizacaomedica a'+
  ' where it.cod_autorizacaoMedica = a.cod_autorizacaoMedica and a.cod_beneficiario = '+
  cod_beneficiario+' and it.cod_itemservico = '+itemservico+ ' and dtatendimento_aum >= '+
  DB_FormatDataSQL(Data_SubtraiMeses(Dt_atendimento,mesesReut), ftdate));
  if (tab.FieldByName('qtde_ita').AsInteger + quantidade) > QtdeReut then
    edt_cod_tipoAutorizacao.Text := '3';
end;


function TFrm_Cad_AutorizacaoMedica.CriticaItem(cod_itemservico : string) : boolean;
begin
  result := false;
 // Frm_Dlg_SenhaAcesso.FRetornoAcesso := false;

  DB_OpenSQL('SELECT  reutilizacao_its, qtdeReutilizacao_its, idadeInicial_its, idadeFinal_its,'+
  ' qtdeVida_its, qtdeAtendimento_its, cod_tipoAutorizacao, sexo_its from tbl_itemservico'+
  ' where cod_itemservico = '+cod_itemservico);
  if not((Tab.FieldByName('sexo_its').AsString = Fsexo) or (Tab.FieldByName('sexo_its').AsString = 'A')) then begin
    Dlg_Alerta('Procedimento não realizado para este Sexo',self);
    Result := true;
  end;
  if not ((FIdade >= Tab.FieldByName('idadeInicial_its').AsInteger) and (FIdade <= Tab.FieldByName('idadeFinal_its').AsInteger)) then begin
    Dlg_Alerta('Idade não Autorizada para este Procedimento',self);
    Result := true;
  end;
 { if (edt_cod_tipoAutorizacao.Text = '3') and (FSenha = false) and (FStatus2 = FST_Novo) then
  begin
    Dlg_Alerta('A Autorização Necessita de aprovação Médica',self);
    btn_senha.Visible := true;
    result := true;
  end;   }
end;                                                                                                                    

procedure TFrm_Cad_AutorizacaoMedica.btn_salvaritemClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_cod_itemservico.name, 'É necessário preencher o Item de Serviço', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_qtde_ita.name, 'É necessário preencher a Qtde.', VLD_Preenchido) then
    exit ;
  if StrToInt(edt_qtde_ita.Text) = 0 then begin
    Dlg_Alerta('A Quantidade tem que ser maior que zero!',self);
    exit;
  end;
  if edt_descricao_itc.Text = '' then begin
    Dlg_Alerta('O Codigo do Item de Serviço não Existe ou Não está cadastradado para o Conveniado',self);
    exit;
  end;

  if edt_dtatendimento_ita.Date < edt_dtatendimento_aum.Date then
     begin
     Dlg_Alerta('A Data de Atendimento não pode ser menor que a Data de Internação.',self);
     edt_dtatendimento_ita.Date:= 0;
     edt_dtatendimento_ita.SetFocus;
     Exit;
     end;
  if edt_dtatendimento_ita.Date > Date then
     begin
     Dlg_Alerta('A Data de Atendimento não pode ser maior que Data de Hoje.',self);
     edt_dtatendimento_ita.Date:= 0;
     edt_dtatendimento_ita.SetFocus;
     Exit;
     end;
  edt_dtalteracao_ita.Date := Date ;
  BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
  Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FCod_usuario);
  if not Med_ConveniadoItem(edt_cod_conveniado.text, edt_cod_itemservico.text,self) then
  Exit;
  DB_OpenSQL('select cod_tipoAutorizacao, reutilizacao_its, qtdeReutilizacao_its from tbl_itemservico where cod_itemservico = '+edt_cod_itemservico.Text);
  if Tab.FieldByName('cod_tipoAutorizacao').AsInteger > STR_StrToInt(edt_cod_tipoAutorizacao.Text) then
    edt_cod_tipoAutorizacao.Text := Tab.FieldByName('cod_tipoAutorizacao').AsString;
  if edt_cod_tipoAutorizacao.Text <> '4' then
    criticaReutilizacao(edt_cod_beneficiario.text,edt_cod_itemservico.text, STR_StrToInt(edt_qtde_ita.text),
    Tab.FieldByName('reutilizacao_its').AsInteger, Tab.FieldByName('qtdeReutilizacao_its').AsInteger, edt_dtatendimento_aum.Date);  
  AlertaTipoAutrizacao;
  if CriticaItem(edt_cod_itemservico.text) then
    Exit;
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_itemautorizacao (cod_autorizacaoMedica, cod_itemservico, obs_ita, qtde_ita, dtsistema_ita, cod_usuario, dtatendimento_ita) values ('+
  edt_cod_autorizacaoMedica.text+','+edt_cod_itemservico.text+','''+edt_obs_ita.text+''','+edt_qtde_ita.Text+', '''+
  Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+IntToStr(FCod_Usuario)+', '''+Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+''')')
  else
  DB_ExecSQL('update tbl_itemautorizacao set '+
    'cod_itemservico = '''+edt_cod_itemservico.text+''','+
    ' obs_ita = '''+edt_obs_ita.Text+''','+
    ' qtde_ita = '+edt_qtde_ita.text+','+
    ' dtatendimento_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+''','+
    ' dtsistema_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+
    ' cod_usuario = '+IntToStr(FCod_Usuario)+
    ' where '+
    ' cod_autorizacaoMedica = '+edt_cod_autorizacaoMedica.text+' and cod_itemservico =  '''+edt_cod_itemservico.Text+'''');
  with fdt_principal4.spc_cons_adm_itemautorizacao do begin
    Close;
    parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizacaoMedica.text ;
    Open;
  end;
  BotoesOnOffItem(true);
  edt_nomeMedico_aum.SetFocus;
  EscreveLog(btn_salvaritem.name);
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_cancelaritemClick(
  Sender: TObject);
begin
  inherited;
  BotoesOnOffItem(true);
  EscreveLog(btn_cancelaritem.name);
  btn_senha.Visible := false;
end;

procedure TFrm_Cad_AutorizacaoMedica.AlertaTipoAutrizacao;
begin
  if edt_cod_tipoAutorizacao.Text <> '' then begin
    case StrToInt(edt_cod_tipoAutorizacao.Text) of
      2 : begin
        pnl_tipoautorizacao.Caption := 'A Autorização Necessita de aprovação Administrativa';
        pnl_tipoautorizacao.Color := clYellow;
        pnl_tipoautorizacao.Visible := true;
      end;
      3 : begin
        pnl_tipoautorizacao.Caption := 'A Autorização Necessita de aprovação Médica';
        pnl_tipoautorizacao.Color := clRed;
        pnl_tipoautorizacao.Visible := true;
      end;
      4 : begin
        pnl_tipoautorizacao.Caption := 'DUT';
        pnl_tipoautorizacao.Color := clFuchsia;
        pnl_tipoautorizacao.Visible := true;
      end;
    end;
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_removeritemClick(Sender: TObject);
begin
  inherited;
    if Dlg_YesNo('Tem Certeza que deseja excluir o Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_itemautorizacao where cod_autorizacaoMedica = '+
    edt_cod_autorizacaoMedica.text+' and cod_itemservico = '+fdt_principal4.spc_cons_adm_itemautorizacao.FieldByName('cod_itemservico').asstring);
    fdt_principal4.spc_cons_adm_itemautorizacao.close;
    fdt_principal4.spc_cons_adm_itemautorizacao.open;
  end;
  EscreveLog(btn_removeritem.name);
end;

procedure TFrm_Cad_AutorizacaoMedica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal4.spc_cons_adm_autorizacaomedica.Close;
  fdt_principal4.spc_cons_adm_itemautorizacao.close;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_descricao_aumKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    PageControl.ActivePageIndex := 0;
    btn_adicionaritemClick(self);
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_imprimirAutorizacaoClick(Sender: TObject);
var
  DtValidade : TDateTime;
begin
  inherited;
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    close;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacaoMedica.text;
    open;
    while not EOF do
    begin
      if (edt_dtatendimento_aum.Date >= StrToDate('01/09/2021')) then
        DtValidade := StrToDate('30/09/2021')
      else
      begin
        if FieldByName('cod_padrao').AsString = '20101074' then
          DtValidade := edt_dtatendimento_aum.Date + 30
        else
          DtValidade := edt_dtatendimento_aum.Date + 30;
      end;
      Next;
    end;
  end;
  fdt_principal4.spc_cons_adm_itemautorizacao.First;
  while not fdt_principal4.spc_cons_adm_itemautorizacao.Eof do
  begin
    if not Med_ConveniadoItem(edt_cod_conveniado.text, fdt_principal4.spc_cons_adm_itemautorizacao.FieldByName('cod_itemservico').AsString,self) then
      Exit;
    fdt_principal4.spc_cons_adm_itemautorizacao.Next;
  end;
  Int_Retorno := rStatusImpressora_DUAL_DarumaFramework();
  if Int_Retorno = 1 then
  begin
    with Mem_autorizacao do
    begin
      Clear;
      Lines.Add('<sp>28</sp>'+DateToStr(Date)+' <hr></hr><sp>10</sp>');
      Lines.Add('<e><b><ce>Guia de Autorização</ce></b></e>');
      Lines.Add('<l></l>');
      Lines.Add('Autorização: <e>'+edt_cod_autorizacaoMedica.Text+'</e>');
      Lines.Add('Dt. Autorização: '+edt_dtatendimento_aum.Text);
      with fdt_principal4.spc_cons_adm_itemautorizacao do
      begin
        close;
        ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacaoMedica.text;
        open;
        Application.ProcessMessages;
        while not EOF do
        begin
          if (edt_dtatendimento_aum.Date >= StrToDate('01/09/2021')) then
            DtValidade := StrToDate('30/09/2021')
          else
          begin
            if FieldByName('cod_padrao').AsString = '20101074' then
              DtValidade := edt_dtatendimento_aum.Date + 30
            else
              DtValidade := edt_dtatendimento_aum.Date + 30;
          end;
          Next;
        end;
        Lines.Add('Dt. Validade: '+DateToStr(DtValidade));
        if (edt_dtatendimento_aum.Date >= StrToDate('01/09/2021')) then
          Lines.Add('Após esta data verificar com a GNDI de acordo com seu novo plano');
        Lines.Add('Paciente: '+edt_nome.Text);
        Lines.Add('Carteira: '+edt_carteira.Text);
       // Lines.Add('<l></l>');
        //Lines.Add('<ce><tc>-</tc></ce>');
        Lines.Add('<tc>-</tc>');
        Lines.Add('<b>Procedimentos Autorizados: </b>');
        Lines.Add(STR_AddSpaces('Cod. AMB',8)+STR_AddSpaces('Descrição',30)+'  Qtde.');
        Lines.Add('  ');
        First;
        while not EOF do
        begin
          Lines.Add(STR_AddSpaces(FieldByName('cod_padrao').AsString,8)+STR_AddSpaces(FieldByName('nome_its').AsString,30)+'  '+FieldByName('qtde_ita').AsString);
          if FieldByName('obs_ita').AsString <> '' then begin
            Lines.Add('Obs: '+FieldByName('obs_ita').AsString);
            Lines.Add(pchar('  '));
          end else
            Lines.Add(pchar('  '));
          Next;
        end;
      end;
      Lines.Add('<tc>-</tc>');
      if edt_nome_con.Text <> '' then
      DB_OpenSQL('select razao_cne, endereco_cne, bairro_cne, fone_cne, nome_con'+
      ' from tbl_conveniadoendereco ce, tbl_conveniado c where ce.cod_conveniado = c.cod_conveniado and ce.cod_conveniado = '+edt_cod_conveniado.text+
      ' and sequencia_cne = '+cbx_conveniadoendereco.getStrItemValue);
      Lines.Add('Conveniado: '+tab.fieldbyName('nome_con').AsString);
      Lines.Add('End: '+tab.fieldbyName('endereco_cne').AsString);
      Lines.Add('Bairro: '+tab.fieldbyName('bairro_cne').AsString);
      Lines.Add('Telefone: '+tab.fieldbyName('fone_cne').AsString);
      Lines.Add('Médico solic.: '+edt_cod_crm.text+' - '+edt_nomeMedico_aum.Text);
      Lines.Add('<l></l>');
      //Lines.Add('  ');
      Lines.Add('<tc>_</tc>');
      Lines.Add('Emitente: '+FNome_Usu);
      Lines.Add('<l></l>');
      Lines.Add('<tc>_</tc>');
      Lines.Add('Assinatura do beneficiário');
      Lines.Add('  ');
      //Lines.Add('<tc>_</tc>');
      Lines.Add('<e>IMASF</e>');
      Lines.Add('<c>Rua Dom Luiz, 201 - Nova Petrópolis - S. B. do Campo - SP</c>');
      Lines.Add('<c>3737-7000 - www.imasf.com.br - autorizacao@imasf.com.br</c>');
      Lines.Add('<sl>3</sl>');
      Lines.Add('<gui></gui>');
    end;
    Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(Mem_autorizacao.Text),0);
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_qtde_itaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  btn_salvaritemClick(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con, nomereduzido_con  from tbl_conveniado where cod_sitconveniado <> 3';
  FPesquisaTit := 'Cod. Conveniado, Nome do Conveniado, Razão Social, Nome Reduzido';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, 'Localizar Conveniado', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
  begin
    edt_nome_con.text := Get_NomeConveniadoAtivo(edt_cod_conveniado.text);
    Obj_LoadCombo(Self, 'cbx_conveniadoendereco', 'endereco_cne+ '' - '' +bairro_cne+'' - ''+cidade_cne', 'sequencia_cne', 'tbl_conveniadoendereco where cod_conveniado = '+edt_cod_conveniado.Text);
    Obj_SetFormObjValueByName(self,'cbx_conveniadoendereco',1);
    DB_OpenSQL('select cod_planopagto, cod_planopagtoOld from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.Text);
    if DB_OpenSQL('select * from tbl_planoAutorizacao where cod_conveniado = '+
    edt_cod_conveniado.text+' and cod_plano = '+IntToStr(FPlano)) > 0 then
    begin
      Dlg_Alerta('Plano não atendido por este Convênio!',self);
    end;
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  pnl_tipoautorizacao.Visible := false;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_leituracarteirinhaClick(
  Sender: TObject);
begin
  inherited;
  edt_carteirinha.SetFocus;
  btn_leituracarteirinha.color := clLime;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_carteirinhaExit(Sender: TObject);
begin
  inherited;
  btn_leituracarteirinha.color := clBtnFace;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_carteirinhaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (key = 13) and (edt_carteirinha.Text <> '') then begin
    btn_novoClick(self);
    wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5);
    edt_inscricao_benButtonClick(self);
    Application.ProcessMessages;
    edt_idade.setfocus;
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_apelido_itsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    if (edt_apelido_its.Text <> '') and (edt_cod_conveniado.Text <> '') then
    begin
      DB_OpenSQL('select distinct i.cod_itemservico '+
      ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico'+
      ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
      ' and apelido_its = '''+edt_apelido_its.Text+'''');
      edt_cod_itemservico.Text := tab.fieldbyName('cod_itemservico').AsString;
      edt_cod_itemservicoExit(self);
    end;  
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.edt_nomereduzido_conKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    edt_cod_conveniado.Text := Get_CodConveniado(edt_nomereduzido_con.Text);
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_beneficiarioClick(
  Sender: TObject);
var
 Tit : integer;
begin
  inherited;

  if edt_carteira.Text = '' then begin
    Dlg_Alerta('Um Beneficiário deve ser Selecionado!',self);
    Exit;
  end;
  Hide;
  Tit := strtoint(copy(edt_carteira.Text,11,2));
  if Tit = 0 then begin
    Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
    Frm_Cad_Segurado.wCod_Beneficiario := edt_cod_beneficiario.text;
    Frm_Cad_Segurado.ShowModal;
    Frm_Cad_Segurado.Release;
  end else begin
    Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
    Frm_Cad_Dependente.wCod_Beneficiario := edt_cod_beneficiario.text;
    Frm_Cad_Dependente.ShowModal;
    Frm_Cad_Dependente.Release;
  end;
  Show;
end;

procedure TFrm_Cad_AutorizacaoMedica.PDJButton3Click(Sender: TObject);
var
 i : integer;
begin
  inherited;
  if dbg_listaItem.SelectedRows.Count>0 then
    for i:=0 to dbg_listaItem.SelectedRows.Count-1 do
    begin
      dbg_listaItem.DataSource.DataSet.GotoBookmark(pointer(dbg_listaItem.SelectedRows.Items[i]));
      DB_OpenSQL('select cod_tipoAutorizacao, reutilizacao_its, qtdeReutilizacao_its from tbl_itemservico where cod_itemservico = '+
      dbg_listaItem.DataSource.DataSet.FieldByName('cod_itemservico').AsString);
      if Tab.FieldByName('cod_tipoAutorizacao').AsInteger > STR_StrToInt(edt_cod_tipoAutorizacao.Text) then
        edt_cod_tipoAutorizacao.Text := Tab.FieldByName('cod_tipoAutorizacao').AsString;
      criticaReutilizacao(edt_cod_beneficiario.text,dbg_listaItem.DataSource.DataSet.FieldByName('cod_itemservico').AsString, 1,
      Tab.FieldByName('reutilizacao_its').AsInteger, Tab.FieldByName('qtdeReutilizacao_its').AsInteger, edt_dtatendimento_aum.Date);
      AlertaTipoAutrizacao;
      if CriticaItem(dbg_listaItem.DataSource.DataSet.FieldByName('cod_itemservico').AsString) then
        Exit;
      DB_ExecSQL('insert into tbl_itemautorizacao (cod_autorizacaoMedica, cod_itemservico, obs_ita, qtde_ita) values ('+
      edt_cod_autorizacaoMedica.text+','+dbg_listaItem.DataSource.DataSet.FieldByName('cod_itemservico').AsString+
      ','''',1)');
    end;
    with fdt_principal4.spc_cons_adm_itemautorizacao do begin
      Close;
      parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizacaoMedica.text ;
      Open;
    end;
    PageControl.ActivePageIndex := 0;
end;

procedure TFrm_Cad_AutorizacaoMedica.PDJButton2Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 0;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_adicionarItensClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  PageControl.ActivePageIndex := 3;
  btn_senha.Visible := false;
  FSenha := false;
  with fdt_principal6.spc_cons_med_conveniadoItens02 do
  begin
    Close;
    ParamByName('@cod_conveniado').AsString := edt_cod_conveniado.Text;
    Open;
  end;
end;

procedure TFrm_Cad_AutorizacaoMedica.btn_alterarClick(Sender: TObject);
begin
  FPesquisaSQL := 'select a.cod_autorizacaoMedica, b.inscricao_ben, b.nome_ben, a.dtatendimento_aum, a.cod_conveniado, c.nome_con'+
  ' from tbl_autorizacaoMedica AS a inner join tbl_beneficiario AS b ON a.cod_beneficiario = b.cod_beneficiario'+
  ' left join tbl_conveniado AS c ON a.cod_conveniado = c.cod_conveniado where a.cod_autorizacaoMedica > 0 ';
  FPesquisaTit  := 'Autorização, Inscrição, Nome do Beneficiário, Dt. Emissão, Cod. Conv., Nome do Conveniado';
  PreencherHistorico;
  inherited;

end;

procedure TFrm_Cad_AutorizacaoMedica.btn_senhaClick(Sender: TObject);
begin
  inherited;
   //Hide;
 { Frm_Dlg_SenhaAcesso := TFrm_Dlg_SenhaAcesso.Create(Self);
  Frm_Dlg_SenhaAcesso.ShowModal;
  FSenha := Frm_Dlg_SenhaAcesso.FRetornoAcesso;
  Frm_Dlg_SenhaAcesso.Release;
  if FSenha = true then
    btn_senha.Visible := false;  }
 // Show;
end;

procedure TFrm_Cad_AutorizacaoMedica.dbg_histautorizacaoDblClick(
  Sender: TObject);
var
  Str_cod_autorizacao : string;
begin
  inherited;
  Str_cod_autorizacao := fdt_principal4.spc_cons_adm_autorizacaomedica.fieldbyname('cod_autorizacaoMedica').AsString;
  BAS_ExecuteCancelar(Frm_Cad_AutorizacaoMedica);
  edt_cod_autorizacaoMedica.Text := Str_cod_autorizacao;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_AutorizacaoMedica.s(Sender: TObject);
var
  DtValidade : TDateTime;
begin
  inherited;
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    close;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacaoMedica.text;
    open;
    while not EOF do
    begin
      if (edt_dtatendimento_aum.Date >= StrToDate('01/09/2021')) then
        DtValidade := StrToDate('30/09/2021')
      else
      begin
        if FieldByName('cod_padrao').AsString = '20101074' then
          DtValidade := edt_dtatendimento_aum.Date + 30
        else
          DtValidade := edt_dtatendimento_aum.Date + 30;
      end;
      Next;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_itemautorizacao;
  if edt_nome_con.Text <> '' then
  begin
    DB_OpenSQL('select razao_cne, endereco_cne, bairro_cne, fone_cne, nome_con'+
    ' from tbl_conveniadoendereco ce, tbl_conveniado c where ce.cod_conveniado = c.cod_conveniado and ce.cod_conveniado = '+edt_cod_conveniado.text+
    ' and sequencia_cne = '+cbx_conveniadoendereco.getStrItemValue);
    Frm_Bas_Impressao.FCampo1 := tab.fieldbyName('nome_con').AsString;
    Frm_Bas_Impressao.FCampo2:= tab.fieldbyName('endereco_cne').AsString;
    Frm_Bas_Impressao.FCampo3 := tab.fieldbyName('bairro_cne').AsString;
    Frm_Bas_Impressao.FCampo4 := tab.fieldbyName('fone_cne').AsString;
    Frm_Bas_Impressao.FCampo5 := DateToStr(DtValidade);
    Frm_Bas_Impressao.FCampo6 := edt_dtatendimento_aum.Text;
    Frm_Bas_Impressao.FCampo7 := edt_cod_crm.Text+' - '+edt_nomeMedico_aum.Text;
    Frm_Bas_Impressao.FCampo8 := edt_nome.Text;
    Frm_Bas_Impressao.FCampo9 := edt_carteira.Text;
    Frm_Bas_Impressao.FCampo10 := FNome_Usu;
    if (edt_dtatendimento_aum.Date >= StrToDate('01/09/2021')) then
      Frm_Bas_Impressao.FCampo11 := 'Após esta data verificar com a GNDI de acordo com seu novo plano';
  end;
  Frm_Bas_Impressao.showReport(4259);
  {
  Frm_Imp_4120 := TFrm_Imp_4120.Create(Self);
  Frm_Imp_4120.FDtAut := edt_dtatendimento_aum.Text;
  Frm_Imp_4120.FMedSol := edt_cod_crm.Text+' - '+edt_nomeMedico_aum.Text;
  Frm_imp_4120.FPacie := edt_nome.Text;
  Frm_Imp_4120.FCartei := edt_carteira.Text;
  if edt_nome_con.Text <> '' then begin
    DB_OpenSQL('select razao_cne, endereco_cne, bairro_cne, fone_cne, nome_con'+
    ' from tbl_conveniadoendereco ce, tbl_conveniado c where ce.cod_conveniado = c.cod_conveniado and ce.cod_conveniado = '+edt_cod_conveniado.text+
    ' and sequencia_cne = '+cbx_conveniadoendereco.getStrItemValue);
    Frm_imp_4120.FNomeConv := tab.fieldbyName('nome_con').AsString;
    Frm_imp_4120.FEndConv := tab.fieldbyName('endereco_cne').AsString;
    Frm_imp_4120.FBairroConv := tab.fieldbyName('bairro_cne').AsString;
    Frm_imp_4120.FTelConv := tab.fieldbyName('fone_cne').AsString;
    Frm_Imp_4120.FDtValidade := DtValidade;
    }
  end;
  //Frm_Imp_4120.QuickRep1.Preview;

end.
