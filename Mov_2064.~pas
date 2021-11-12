unit Mov_2064;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2064 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    btn_limparcampos: TPDJButton;
    edt_idade: TDCEdit;
    cbx_cod_campanha: TDCComboBox;
    Panel6: TPanel;
    pnl_alerta: TPanel;
    edt_ultimoprocotolo_cph: TDCEdit;
    DataSource3: TDataSource;
    edt_plano1: TDCEdit;
    edt_plano: TDCEdit;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_placonsulta: TDCEdit;
    Label3: TLabel;
    cbx_tipoatend_hph: TDCComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    btn_confirma: TPDJButton;
    btn_cancela: TPDJButton;
    btn_cria: TPDJButton;
    btn_encerra: TPDJButton;
    Mem_autorizacao: TMemo;
    edt_protocolocancela: TDCEdit;
    btn_confirmacancelamento: TPDJButton;
    btn_sair: TPDJButton;
    btn_reimpressao: TPDJButton;
    TabSheet2: TTabSheet;
    btn_novocin: TPDJButton;
    btn_cancelar_cin: TPDJButton;
    btn_Salvarcin: TPDJButton;
    btn_alterarcin: TPDJButton;
    Panel11: TPanel;
    Panel9: TPanel;
    rdb_todos: TRadioButton;
    rdb_individual: TRadioButton;
    LsB_Plano: TListBox;
    cbx_cod_plano: TDCComboBox;
    btn_adicionarPlano: TPDJButton;
    btn_removerplano: TPDJButton;
    Panel7: TPanel;
    edt_valor_cph: TDCEdit;
    edt_idademenor_cph: TDCEdit;
    Panel8: TPanel;
    edt_obs_cph: TDCEdit;
    Panel13: TPanel;
    cbx_cod_usuario: TDCComboBox;
    Panel10: TPanel;
    cb2_cod_usuario: TDCComboBox;
    edt_dtfinal_cph: TDCDateEdit;
    Panel34: TPanel;
    edt_descricao_cph: TDCEdit;
    dbg_campanha: TDBGrid;
    btn_gerardebitos: TPDJButton;
    pgb_cobranca: TProgressBar;
    edt_idademaior_cph: TDCEdit;
    cbx_isencao: TDCComboBox;
    Label1: TLabel;
    btn_alterar: TPDJButton;
    lbl_obs: TLabel;
    cbx_obs_hph: TComboBox;
    edt_dtinicio_cph: TDCDateEdit;
    btn_imprimir: TPDJButton;
    edt_cartao: TDCEdit;
    btn_cartao: TPDJButton;
    lbl_cartao: TLabel;
    edt_situacao: TDCEdit;
    pnl_alerta2: TPanel;
    pnl_cartao: TPanel;
    edt_carteirinha: TDCEdit;
    edt_nome_ben: TDCEdit;
    ckb_inscricao: TRadioButton;
    ckb_funcioanrio: TRadioButton;
    edt_dtnascimento: TDCDateEdit;
    pnl_alerta3: TPanel;
    procedure btn_confirmaClick(Sender: TObject);
    procedure btn_cancelaClick(Sender: TObject);
    procedure btn_limparcamposClick(Sender: TObject);
    procedure btn_criaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_encerraClick(Sender: TObject);
    procedure btn_novocinClick(Sender: TObject);
    procedure btn_SalvarcinClick(Sender: TObject);
    procedure btn_cancelar_cinClick(Sender: TObject);
    procedure edt_valor_cphExit(Sender: TObject);
    procedure rdb_maiorClick(Sender: TObject);
    procedure rdb_individualClick(Sender: TObject);
    procedure btn_adicionarPlanoClick(Sender: TObject);
    procedure btn_removerplanoClick(Sender: TObject);
    procedure LsB_PlanoClick(Sender: TObject);
    procedure cbx_cod_campanhaChange(Sender: TObject);
    procedure btn_alterarcinClick(Sender: TObject);
    procedure cbx_cod_campanhaEnter(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benChange(Sender: TObject);
    procedure edt_inscricao_benEnter(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure planohabilitabotoes;
    procedure imprimedaruma;
    procedure btn_confirmacancelamentoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_reimpressaoClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_gerardebitosClick(Sender: TObject);
    procedure pesquisahistcampanha;
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_cartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_cartaoClick(Sender: TObject);
    procedure edt_cod_beneficiarioButtonClick(Sender: TObject);
    procedure edt_cartaoExit(Sender: TObject);
    procedure edt_cartaoEnter(Sender: TObject);
    procedure cbx_tipoatend_hphKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_obs_hphKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckb_inscricaoClick(Sender: TObject);
    procedure ckb_funcioanrioClick(Sender: TObject);
    procedure edt_dtnascimentoExit(Sender: TObject);

  private
    { Private declarations }
    wCod_Beneficiario, wInscricao, fplano, Wopcao, WSitBenef, WCONFIRMA,  NumProtocolo : String;
    wprotocolocampanha: integer;
    FPesquisaSQLDefalt, WBotao : String ;
    procedure BotoesConcessaoONOFF(b: boolean);
    procedure CamposONOFF(b : boolean);
    procedure CarregarCombos;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2064: TFrm_Mov_2064;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_str, Fun_Contabil,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Fun_Beneficiario, Fun_Data, Rel_3079, Fun_Desconto;

  //Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
  //Function Daruma_DUAL_VerificaStatus: Integer; StdCall; External 'Daruma32.dll'
  function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.DFM}

procedure TFrm_Mov_2064.btn_confirmaClick(Sender: TObject);
Var
 i : integer;
begin
  inherited;
  WBotao:= 'I';
  if cbx_cod_campanha.Text = '' then begin
     Dlg_Alerta('A campanha deve ser preenchida.',self);
     cbx_cod_campanha.SetFocus;
     Exit;
     end;
  if edt_situacao.Text <> 'Ativo' then begin
     Dlg_Alerta('A campanha deve estar ativa.',self);
     cbx_cod_campanha.SetFocus;
     Exit;
  end;
  if (edt_carteirinha.Text = '') and (ckb_inscricao.Checked) then begin
     Dlg_Alerta('O beneficiario deve ser preenchido.',self);
     edt_inscricao_ben.SetFocus;
     Exit;
     end;
  if cbx_tipoatend_hph.Text = '' then begin
     Dlg_Alerta('O tipo de Atendimento deve ser preenchido.',self);
     cbx_tipoatend_hph.SetFocus;
     Exit;
  end;
  //add este bloqueio em 2015
  if cbx_isencao.ValueItem = 'N' then
  begin
    Dlg_Alerta('Beneficiário não autorizado para Vacinação IMASF!',self);
    edt_inscricao_ben.SetFocus;
    Exit;
  end;
   if (WSitBenef <> '') and (ckb_inscricao.Checked) then
     if (WSitBenef = '3') or (WSitBenef = '4') or (WSitBenef = '5') or (WSitBenef = '9') or (WSitBenef = '31') or (WSitBenef = '50') then
     begin
        Dlg_Alerta('Segurado ' + Tab.FieldByName('nome_sit').AsString + '.',self);
        btn_limparcamposClick(Self);
        edt_inscricao_ben.SetFocus;
        Exit;
     end;
  if (edt_plano1.Text <> 'TODOS') and (ckb_inscricao.Checked) then
     begin
     WCONFIRMA:= 'N';
     for i := 1 to length(edt_plano1.Text) do
        if (edt_plano1.Text[i] = Fplano) then
           WCONFIRMA:= 'S';
     end;
  if (WCONFIRMA = 'N') and (ckb_inscricao.Checked) then
     begin
     Dlg_Alerta('Plano não atendido nessa campanha.',self);
     btn_limparcamposClick(Self);
     edt_inscricao_ben.SetFocus;
     Exit
     end;
  if (cbx_obs_hph.Visible) and (cbx_obs_hph.Text = '') then
  begin
    Dlg_Alerta('A Observação deve ser Preenchida!.',self);
    cbx_obs_hph.SetFocus;
    Exit;
  end;
  if (ckb_funcioanrio.Checked) and (edt_dtnascimento.Text = '') then
  begin
    Dlg_Alerta('A Data de Nascimento deve ser Preenchida!.',self);
    edt_dtnascimento.SetFocus;
    Exit;
  end;
  if (ckb_funcioanrio.Checked) and (edt_nome_ben.Text = '') then
  begin
    Dlg_Alerta('O Nome deve ser Preenchido!.',self);
    edt_dtnascimento.SetFocus;
    Exit;
  end;
  if (edt_cod_beneficiario.Text <> '') and (ckb_inscricao.Checked) then
  begin
    if DB_OpenSQL('select * from dbo.tbl_histcampanha where cod_campanha = '+cbx_cod_campanha.valueitem+
    ' and cod_beneficiario = '+edt_cod_beneficiario.Text+' and cancela_hph = 1') > 0 then
    begin
      Dlg_Alerta('Beneficiário já Cadastrado na Campanha!',self);
      edt_inscricao_ben.SetFocus;
      Exit;
    end;
  end;
    edt_ultimoprocotolo_cph.Text:= FormatFloat('000000000',StrToFloat(IntToStr(StrToInt(edt_ultimoprocotolo_cph.Text) + 1)));
    if DB_ExecSQL('insert tbl_histcampanha (cod_campanha, cod_beneficiario, cancela_hph, protocolo_hph, '+
    'dtaplicacao_hph, cobrado_hph, tipoatend_hph, isencao_hph, obs_hph, nomeFuncionario_hph, dtnascfunc_hph) values (' + IntToStr(cbx_cod_campanha.ValueItem) +
    ',' +DB_FormatDataSQL(edt_cod_beneficiario.text, ftInteger)+ ', 1, ' +
    edt_ultimoprocotolo_cph.Text + ', getdate(), 1, ' + IntToStr(cbx_tipoatend_hph.ValueItem)+
    ', '''+cbx_isencao.valueitem+''','''+cbx_obs_hph.Text+''', '''+edt_nome_ben.Text+''', '+DB_FormatDataSQL(edt_dtnascimento.Date, ftdatetime)+' )') then
    begin
      DB_ExecSQL('update tbl_campanha set ultimoprocotolo_cph = ' + edt_ultimoprocotolo_cph.Text +
      ' where cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem));
      // gerar impressão
      NumProtocolo := edt_ultimoprocotolo_cph.Text;
      imprimedaruma;
      Dlg_Ok('Confirmada a aplicação '+edt_carteirinha.Text,self);
      Obj_EmptyEditTag(self,0);
      cbx_obs_hph.Visible := false;
      lbl_obs.Visible := false;
      cbx_obs_hph.ItemIndex := -1;
    end
    else
        Dlg_Alerta('Não foi possível gravar a aplicação!',self);
  pnl_alerta.Visible := false;
  pnl_alerta2.Visible := false;
  pnl_alerta3.Visible := false;
  cbx_cod_campanhaChange(Self);
  cbx_tipoatend_hph.ItemIndex:= 0;
  ckb_inscricao.Checked := true;
  edt_cartao.SetFocus;
end;

procedure TFrm_Mov_2064.BotoesConcessaoONOFF(b: boolean);
begin
  btn_novocin.Enabled := b ;
  btn_alterarcin.Enabled := b ;
  btn_Salvarcin.Enabled := not b ;
  btn_cancelar_cin.Enabled := not b;
  dbg_campanha.visible := b ;
end;

procedure TFrm_Mov_2064.CarregarCombos;
begin
  inherited ;
  BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
  BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
  Obj_LoadCombo(Self, 'cbx_cod_campanha','descricao_cph','cod_campanha', 'tbl_campanha where cod_statusAtivo = 1');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  cbx_tipoatend_hph.Items.Clear;
  cbx_tipoatend_hph.Items.Add('Presencial');
  cbx_tipoatend_hph.Items.Add('Domiciliar');
  cbx_tipoatend_hph.ValItems.Add('1');
  cbx_tipoatend_hph.ValItems.Add('2');
  cbx_isencao.Items.Clear;
  cbx_isencao.Items.Add('Isento');
  cbx_isencao.Items.Add('Não Isento');
  cbx_isencao.ValItems.Add('S');
  cbx_isencao.ValItems.Add('N');
end;

procedure TFrm_Mov_2064.btn_cancelaClick(Sender: TObject);
begin
  inherited;
  WBotao:= 'C';
  if cbx_cod_campanha.Text = '' then begin
     Dlg_Alerta('A campanha deve ser preenchida.',self);
     cbx_cod_campanha.SetFocus;
     Exit;
     end;
  Label20.Visible:= True;
  edt_protocolocancela.Text:= '';
  edt_protocolocancela.Visible:= True;
  btn_confirmacancelamento.Visible:= True;
  btn_sair.Visible:= True;
  edt_protocolocancela.SetFocus;
end;

procedure TFrm_Mov_2064.btn_limparcamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  ckb_inscricao.Checked := true;
  pnl_alerta.Visible := false;
  pnl_alerta2.Visible := false;
  pnl_alerta3.Visible := false;
  cbx_cod_campanhaChange(Self);
  btn_confirma.Enabled:= True;
  btn_cancela.Enabled:= True;
  cbx_obs_hph.ItemIndex := -1;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2064.btn_criaClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 1;
  btn_novocinClick(Self);
end;

procedure TFrm_Mov_2064.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  pgb_cobranca.Visible:= False;
  PageControl1.ActivePageIndex:= 0;
  edt_situacao.Text:= '';
  edt_ultimoprocotolo_cph.Text:= '';
  btn_confirma.Enabled:= False;
  btn_cancela.Enabled:= False;
  btn_encerra.Enabled:= False;
 // btn_gerardebitos.Enabled:= False;
  if DB_OpenSQL('select * from tbl_campanha where cod_statusAtivo = 1') > 0 then
  begin
     btn_confirma.Enabled:= True;
     btn_cancela.Enabled:= True;
     btn_encerra.Enabled:= True;
     //btn_gerardebitos.Enabled:= True;
  end;
  cbx_cod_campanha.ItemIndex:= 0;
  cbx_tipoatend_hph.ItemIndex:= 0;
  cbx_cod_campanhaChange(Self);
  edt_cartao.SetFocus;
end;

procedure TFrm_Mov_2064.btn_encerraClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_campanha.Text = '' then begin
     Dlg_Alerta('A campanha deve ser preenchida.',self);
     cbx_cod_campanha.SetFocus;
     Exit;
     end;
  if DB_OpenSQL('select * from tbl_campanha where cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem) +
                ' and cod_statusAtivo = 2') > 0 then begin
     Dlg_Alerta('A campanha já está encerrada.',self);
     cbx_cod_campanha.SetFocus;
     Exit;
     end;
  if Dlg_YesNo('Tem certeza que deseja encerrar a campanha ' + cbx_cod_campanha.Text + ' ?',self) then
  begin
    edt_dtinicio_cph.Date := Date;
    Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
    DB_ExecSQL('update tbl_campanha set cod_statusAtivo = 2, dtfinal_cph = ' + DB_FormatDataSQL(edt_dtinicio_cph.Date, ftdatetime)+
               ', cod_usuarioFinal = '+ IntToStr(FCod_usuario) + ' where cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem));
    ShowMessage('Campanha encerrada com sucesso.');
    cbx_cod_campanhaChange(Self);

    // Verifica se ainda tem pessoas não cobradas
    pesquisahistcampanha;
   { if fdt_principal6.spc_adm_histcampanha.Recordcount > 0 then
       if Dlg_YesNo('A Campanha possue ' + IntToStr(fdt_principal6.spc_adm_histcampanha.Recordcount) +
          ' aplicações ainda não cobradas, deseja gerar a cobrança ?', Self) then
          btn_gerardebitosClick(Self)
       else
       begin
         Dlg_Alerta ('A Campanha não possui aplicações a serem cobradas!', Self);
         Close;
       end; }
  end;
  CarregarCombos;
end;

procedure TFrm_Mov_2064.btn_novocinClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  Obj_LoadCombo(Self, 'cbx_cod_campanha','descricao_cph','cod_campanha', 'tbl_campanha where cod_statusAtivo = 1');
  edt_descricao_cph.SetFocus;
  BotoesConcessaoONOFF(false);
  LsB_Plano.Items.Clear;
  edt_dtinicio_cph.Date := Date;
  Wopcao:= 'I';
end;

procedure TFrm_Mov_2064.btn_SalvarcinClick(Sender: TObject);
Var
  i: Integer;
begin
  inherited;
  if not BAS_ValidarCampo(edt_descricao_cph.name, 'A Descrição deve ser Preenchida!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_valor_cph.name, 'O Valor deve ser Preenchido!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_idademenor_cph.name, 'A Idade de Isenção menor igual deve ser Preenchido!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_idademaior_cph.name, 'A Idade de Isenção maior igual deve ser Preenchido!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_dtinicio_cph.name, 'A Data de Criação deve ser Preenchida!', VLD_DataPreenchida) or
  not BAS_ValidarCampo(edt_dtfinal_cph.name, 'A Data do encerramento deve ser Preenchida!', VLD_DataPreenchida) then
    exit ;
  if wprotocolocampanha <> 0 then
     if not Dlg_YesNo('Existe protocolos anteriores, tem certeza que deseja salvar?',self) then begin
        btn_cancelar_cin.SetFocus;
        Exit;
        end;
  edt_placonsulta.Text:= 'TODOS';
  if rdb_todos.Checked = False then
     begin
     edt_placonsulta.Text:= '';
     with LsB_Plano do
       begin
       for i := 0 to Items.Count-1 do
         edt_placonsulta.Text:= edt_placonsulta.Text + Trim(Copy(Items.Strings[i],1,2))+' ';
       end;
     end;
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FCod_usuario);
  if Wopcao = 'I' then
     begin
     if DB_ExecSQL('insert into tbl_campanha (descricao_cph, cod_statusAtivo, dtinicio_cph, cod_usuarioIinicio, ultimoprocotolo_cph, '+
                   'valor_cph, idademenor_cph, idademaior_cph, planos_cph, dtfinal_cph, cod_usuarioFinal, obs_cph) values '+
                   '('''+ edt_descricao_cph.Text+''', 1, '+ DB_FormatDataSQL(edt_dtinicio_cph.Date, ftdatetime)+ ','+ IntToStr(FCod_usuario)+
                   ',0,' +DB_FormatDataSQL(edt_valor_cph.Text,ftFloat)+ ', ' + edt_idademenor_cph.Text + ', ' + edt_idademaior_cph.text +
                   ', ''' + edt_placonsulta.Text + ''', ' + DB_FormatDataSQL(edt_dtfinal_cph.Date, ftdatetime)+ ','+ IntToStr(FCod_usuario)+
                   ',''' + edt_obs_cph.text + ''')') then
     ShowMessage('Campanha criada com sucesso.');
     end
  else
     if Wopcao = 'A' then
        begin
        if DB_ExecSQL('update tbl_campanha set descricao_cph = ''' + edt_descricao_cph.Text + ''', valor_cph = ' +DB_FormatDataSQL(edt_valor_cph.Text,ftFloat)+
        ', idademenor_cph = ' + edt_idademenor_cph.Text + ', idademaior_cph = ' + edt_idademaior_cph.text + ', planos_cph = ''' + edt_placonsulta.Text +
        ''', dtfinal_cph = ' + DB_FormatDataSQL(edt_dtfinal_cph.Date, ftdatetime)+ ', cod_usuarioFinal = ' + IntToStr(FCod_usuario)+
        ', obs_cph = ''' + edt_obs_cph.text + ''' where cod_campanha = ' + dbg_campanha.DataSource.DataSet.FieldByName('cod_campanha').AsString +
        ' and cod_statusAtivo = 1') then
        ShowMessage('Campanha alterada com sucesso.');
        end;
  Obj_EmptyEditTag(self,0);
  PageControl1.ActivePageIndex:= 0;
  BotoesConcessaoONOFF(true);
  CarregarCombos;
  cbx_cod_campanhaChange(Self);
  PageControl1.ActivePageIndex:= 0;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2064.btn_cancelar_cinClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  PageControl1.ActivePageIndex:= 0;
  BotoesConcessaoONOFF(true);
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2064.edt_valor_cphExit(Sender: TObject);
begin
  inherited;
  if edt_valor_cph.Text <> '' then
  begin
    try
      edt_valor_cph.Text := FormatFloat('###,###,##0.00', StrToFloat(STR_RemoveChar(edt_valor_cph.Text,'.')));
    except
     edt_valor_cph.Text := '0';
     edt_valor_cph.SetFocus;
    end;
  end;
end;

procedure TFrm_Mov_2064.rdb_maiorClick(Sender: TObject);
begin
  inherited;
  cbx_cod_plano.Visible:= False;
  LsB_Plano.Visible:= False;
  btn_adicionarPlano.Visible:= False;
  btn_removerplano.Visible:= False;
  Panel9.Height:= 32;
  rdb_todos.Top:= 8;
  rdb_individual.Top:= 8;
end;

procedure TFrm_Mov_2064.rdb_individualClick(Sender: TObject);
begin
  inherited;
  Panel9.Height:= 71;
  cbx_cod_plano.Visible:= True;
  LsB_Plano.Visible:= True;
  btn_adicionarPlano.Visible:= True;
  btn_removerplano.Visible:= True;
  rdb_todos.Top:= 15;
  rdb_individual.Top:= 15;
  CarregarCombos;
end;

procedure TFrm_Mov_2064.btn_adicionarPlanoClick(Sender: TObject);
function VerCod_Plano(c:string): boolean ;
var
  i : integer ;
begin
  result := false ;
  for i := 0 to LsB_Plano.Items.Count-1 do
    if Trim(Copy(LsB_Plano.Items.Strings[i],1,2)) = c then
      result := true ;
  end;
var
  v : string ;
begin
  inherited;
  if cbx_cod_plano.text = '' then
    begin
    Dlg_Alerta('Selecione um plano !', self);
    cbx_cod_plano.setfocus;
    Exit ;
    end;
  if VerCod_Plano(cbx_cod_plano.ValueItem) then
    begin
    Dlg_Alerta('Esse plano já foi selecionado anteriormente !', self);
    cbx_cod_plano.setfocus;
    Exit ;
    end;
  DB_OpenSQL('select * from tbl_plano where cod_plano = '+cbx_cod_plano.ValueItem);
  LsB_Plano.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_plano').AsString, 2)+
                      STR_AddSpaces(Tab.FieldByName('nome_pla').AsString, 20));
end;

procedure TFrm_Mov_2064.btn_removerplanoClick(Sender: TObject);
var
 i: integer;
begin
  inherited;
  LsB_Plano.Items[LsB_Plano.ItemIndex]:= '';
  btn_adicionarPlanoClick(Self);
  edt_placonsulta.Text:= '';
end;

procedure TFrm_Mov_2064.LsB_PlanoClick(Sender: TObject);
begin
  inherited;
  if Copy(LsB_Plano.Items.Text,1,1) <> '' then
     btn_removerplano.Enabled:= True;
end;

procedure TFrm_Mov_2064.cbx_cod_campanhaChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_campanha.ValueItem <> '' then
  begin
    if DB_OpenSQL('select c.cod_statusAtivo, descricao_sta, c.ultimoprocotolo_cph, c.planos_cph, c.dtinicio_cph, c.dtfinal_cph from tbl_campanha c '+
                ' left join tbl_statusAtivo sa on sa.cod_statusAtivo = c.cod_statusAtivo where c.cod_campanha = '+
                cbx_cod_campanha.ValueItem) > 0 then
     begin
     edt_situacao.Text:= Tab.FieldByName('descricao_sta').AsString;
     edt_ultimoprocotolo_cph.Text:= FormatFloat('000000000',Tab.FieldByName('ultimoprocotolo_cph').Value);
     edt_dtinicio_cph.Text:= Tab.FieldByName('dtinicio_cph').Text;
     edt_dtfinal_cph.Text:= Tab.FieldByName('dtfinal_cph').Text;
     edt_plano1.Text:= Tab.FieldByName('planos_cph').Value;
     if ckb_inscricao.Checked then
       edt_inscricao_ben.SetFocus
     else
       edt_dtnascimento.SetFocus;  

     end;
   end;  
end;

procedure TFrm_Mov_2064.btn_alterarcinClick(Sender: TObject);
var
 x : integer;
begin
  inherited;
  BotoesConcessaoONOFF(false);
  Wopcao:= 'A';
  dbg_campanha.Visible:= False;
  with fdt_principal6.spc_adm_campanhas do
  begin
    edt_descricao_cph.Text:= FieldByName('descricao_cph').AsString;
    edt_valor_cph.Text:= FormatFloat('##,##0.00', StrToFloat(FieldByName('valor_cph').AsString));
    edt_idademenor_cph.Text:= FieldByName('idademenor_cph').Text;
    edt_idademaior_cph.Text := FieldByName('idademaior_cph').Text;
    edt_obs_cph.Text:= FieldByName('obs_cph').Text;
    edt_dtinicio_cph.Text:= FieldByName('dtinicio_cph').Text;
    edt_dtfinal_cph.Text:= FieldByName('dtfinal_cph').Text;
    wprotocolocampanha:= FieldByName('ultimoprocotolo_cph').Value;
    edt_placonsulta.Text:= FieldByName('planos_cph').Value;
    Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FieldByName('cod_usuarioIinicio').Text);
    Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FieldByName('cod_usuarioFinal').Text);
    if FieldByName('planos_cph').Text = 'TODOS' then
      begin
        rdb_todos.Checked:= True;
        cbx_cod_plano.Visible:= False;
        LsB_Plano.Visible:= False;
        btn_adicionarPlano.Visible:= False;
        btn_removerplano.Visible:= False;
        Panel9.Height:= 32;
        rdb_todos.Top:= 8;
        rdb_individual.Top:= 8;
      end
      else
      begin
        rdb_individual.Checked:= True;
        Panel9.Height:= 71;
        cbx_cod_plano.Visible:= True;
        LsB_Plano.Visible:= True;
        btn_adicionarPlano.Visible:= True;
        btn_removerplano.Visible:= True;
        rdb_todos.Top:= 15;
        rdb_individual.Top:= 15;
        LsB_Plano.Clear;
        for x:= 1 to length(edt_placonsulta.Text) do
        begin
          if Copy(edt_placonsulta.Text,x,1) <> ' ' then
          begin
            DB_OpenSQL('select * from tbl_plano where cod_plano = ' + Copy(edt_placonsulta.Text,x,1));
            LsB_Plano.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_plano').AsString, 2)+
            STR_AddSpaces(Tab.FieldByName('nome_pla').AsString, 20));
          end;
        end;
      end;
  end;
end;

procedure TFrm_Mov_2064.cbx_cod_campanhaEnter(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Mov_2064.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  edt_cod_beneficiarioButtonClick(self);
end;

procedure TFrm_Mov_2064.edt_inscricao_benChange(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Mov_2064.edt_inscricao_benEnter(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Mov_2064.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(Self);
end;

procedure TFrm_Mov_2064.imprimedaruma;
Var
 i, Retorno : integer;
begin
    if DB_OpenSQL('select c.descricao_cph, b.inscricao_ben, isnull(b.nome_ben, nomeFuncionario_hph) as nome_ben, isnull(b1.nome_ben, nomeFuncionario_hph)  as responsavel, '+
                  'case when b.idade_ben is null then dbo.fun_difdata (dtnascfunc_hph, hc.dtaplicacao_hph) else b.idade_ben end as idade_ben, '+
                  ' hc.cancela_hph, hc.dtaplicacao_hph, hc.protocolo_hph, dtinicio_cph, '+
                  'dtfinal_cph, c.obs_cph, c.idademaior_cph, c.idademenor_cph, valor_cph, isencao_hph, isnull(b.dtnascim_ben, dtnascfunc_hph) as dtnascim_ben '+
                  ' from tbl_histcampanha hc left join tbl_beneficiario b on hc.cod_beneficiario = b.cod_beneficiario '+
                  'left join tbl_campanha c on hc.cod_campanha = c.cod_campanha '+
                  'left join tbl_beneficiario b1 on b1.inscricao_ben = b.inscricao_ben and b1.cod_tipodependente = 0 '+
                  'where c.cod_campanha = '+IntToStr(cbx_cod_campanha.ValueItem)+' and protocolo_hph = '+NumProtocolo) > 0 then
    begin
      with Mem_autorizacao do
      begin
        Clear;
  //      Lines.Add('<sp>28</sp>'+DateToStr(Date)+' <hr></hr><sp>10</sp>');
        Lines.Add('<e><b><ce>Ambulatório IMASF</ce></b></e>');
        Lines.Add('<e><b><ce>Controle de Vacinação</ce></b></e>');
  //      Lines.Add('<e><ce><b>' + Tab.FieldByName('descricao_cph').AsString +'</ce></b></e>');
        Lines.Add('<b><ce>' + Tab.FieldByName('descricao_cph').AsString +'</ce></b>');
        if Tab.Fieldbyname('dtfinal_cph').AsString <> '' then
           Lines.Add('<ce>Período de '+ Tab.Fieldbyname('dtinicio_cph').AsString + ' a ' + Tab.Fieldbyname('dtfinal_cph').AsString + '</ce>')
        else
           Lines.Add('<ce>A partir de '+ Tab.Fieldbyname('dtinicio_cph').AsString+ '</ce>');
        Lines.Add('<l></l>');
        if edt_carteirinha.Text <> '' then
          Lines.Add('Cartão IMASF: <e>'+ edt_carteirinha.Text +'</e>')
        else
          Lines.Add('Funcionário: <e>'+ edt_carteirinha.Text +'</e>');
        Lines.Add('Nome: <e>'+ Copy(Tab.FieldByName('nome_ben').AsString,1,20)+'</e>');
        edt_idade.text := Data_GetIdadeExt(Tab.FieldByName('dtnascim_ben').value, Date);
        Lines.Add('Idade: '+ edt_idade.text);
  //      Lines.Add('Idade: <e>'+ Tab.FieldByName('idade_ben').AsString+'</e>');
        if Tab.FieldByName('isencao_hph').AsString = 'S' then
           Lines.Add('Valor: GRATUITO')
        else
           Lines.Add('Valor: R$ '+ FormatFloat('##,##0.00', StrToFloat(Tab.FieldByName('valor_cph').AsString)));
        Lines.Add('Dt. da Aplicação: '+ Tab.FieldByName('dtaplicacao_hph').AsString);
        Lines.Add('Protocolo: '+ FormatFloat('000000000',StrToFloat(Tab.Fieldbyname('protocolo_hph').AsString)));
        if Tab.FieldByName('cancela_hph').AsString <> '1' then
           Lines.Add('<b>*** Aplicação Cancelada ***</b>');
        if Tab.FieldByName('isencao_hph').AsString = 'N' then
        begin
          Lines.Add('  ');
          Lines.Add('Autorizo o desconto em folha de pagamento no');
          Lines.Add('valor mencionado acima.');
        end;
        Lines.Add('  ');
        Lines.Add(pchar('  '));
        Lines.Add('<tc>-</tc>');
        if Tab.Fieldbyname('idade_ben').AsFloat >= 18 then
           Lines.Add('Ciente: '+Tab.FieldByName('nome_ben').AsString)
        else
           Lines.Add('Ciente: '+Tab.FieldByName('responsavel').AsString);
       // Lines.Add('<l></l>');
        Lines.Add('  ');
        if WBotao = 'R' then
           Lines.Add('<e>IMASF</e><c>                                           2v</c>')
        else
           Lines.Add('<e>IMASF</e>');
        Lines.Add('<c>Rua Dom Luiz, 201 - Nova Petrópolis - S. B. do Campo - SP</c>');
        Lines.Add('<c>3737-7000 - www.imasf.com.br - instituto@imasf.com.br</c>');
        //Lines.Add('<sl>1</sl>');
        Lines.Add('  ');
  //      Lines.Add('<gui></gui>');
      end;
      //Retorno := Daruma_Dual_VerificaStatus();
      Retorno := rStatusImpressora_DUAL_DarumaFramework();
      if Retorno = 1 then
      begin
        for i := 1 to 2 do
        begin
//          Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Mem_autorizacao.Text),0);
          Retorno := iImprimirTexto_DUAL_DarumaFramework(pchar(Mem_autorizacao.Text),0);
          sleep(1000);
          Application.ProcessMessages;
//          Retorno:= Daruma_DUAL_ImprimirTexto(pchar(' <gui></gui>'),0);
          Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(' <gui></gui>'),0);
        end;
      end;  
      Application.ProcessMessages;
    end;

end;

procedure TFrm_Mov_2064.planohabilitabotoes;
var
  i: integer;
begin
  inherited;
  if edt_nome_ben.Text = '' then
     Exit;
  if edt_plano1.Text = 'TODOS' then
     begin
     btn_confirma.Enabled:= True;
     btn_cancela.Enabled:= True;
//     btn_confirma.SetFocus;
     Exit;
     end;
  btn_confirma.Enabled:= False;
  btn_cancela.Enabled:= False;
  for i := 1 to length(edt_plano1.Text) do
      if (edt_plano1.Text[i] = Fplano) then
         begin
         btn_confirma.Enabled:= True;
         btn_cancela.Enabled:= True;
//         Exit;
         end;
//  Dlg_Alerta('Plano não atendido nessa campanha.',self);
//  PDJButton2Click(Self);
end;


procedure TFrm_Mov_2064.btn_confirmacancelamentoClick(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if edt_protocolocancela.Text = '' then begin
     Dlg_Alerta('O protocolo deve deve ser preenchido.',self);
     edt_protocolocancela.SetFocus;
     Exit;
     end;
  if WBotao = 'C' then
     if DB_OpenSQL('select * from tbl_histcampanha where cancela_hph = 1 and protocolo_hph = ' +edt_protocolocancela.Text +
                   ' and cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem)) = 0 then
        begin
        Dlg_Alerta('Protocolo ainda não cadastrado na campanha ou já cancelado.',self);
        edt_protocolocancela.Text:= '';
        edt_protocolocancela.SetFocus;
        Exit;
        end;
  if WBotao = 'C' then
     if not Dlg_YesNo('Tem certeza que deseja cancelar a aplicação da campanha ' + cbx_cod_campanha.Text +
                      ', Protocolo ' + edt_protocolocancela.Text + ' do Segurado ?',self) then begin
       Obj_EmptyEditTag(self,0);
       pnl_alerta.Visible := false;
       edt_nome_ben.SetFocus;
       edt_carteirinha.SetFocus;
       exit;
       end;
  if WBotao = 'C' then
     if DB_ExecSQL('update tbl_histcampanha set cancela_hph = 2 where protocolo_hph = ' +
                    edt_protocolocancela.Text + ' and cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem)) then
        begin
        Dlg_Ok('Cancelada a aplicação do protocolo '+ edt_protocolocancela.Text,self);
        Obj_EmptyEditTag(self,0);
        end
     else
        Dlg_Alerta('Não foi possível encontrar a aplicação desse protocolo!',self);
  if WBotao = 'R' then
     if DB_OpenSQL('select * from tbl_histcampanha where protocolo_hph = ' +edt_protocolocancela.Text +
                   ' and cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem)) = 0 then
        begin
        Dlg_Alerta('Protocolo ainda não cadastrado na campanha.',self);
        edt_protocolocancela.Text:= '';
        edt_protocolocancela.SetFocus;
        Exit;
        end
     else
        begin
      {  wCod_Beneficiario:= Tab.FieldByName('cod_beneficiario').Text;
        cbx_cod_campanha.ValueItem:= Tab.FieldByName('cod_campanha').Text;
        edt_ultimoprocotolo_cph.Text:= edt_protocolocancela.Text;
        DB_OpenSQL('SELECT b.nome_ben, p.descricao_pla, b.dtnascim_ben, cod_sitbeneficiario, b.cod_plano, b.cod_empresa, b.inscricao_ben, b.titulacartei_ben, b.digito_ben '+
                   'FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
                   'WHERE b.cod_beneficiario = '+wCod_Beneficiario);
        edt_carteirinha.text := FormatarCarteirinha(
        TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
        STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
        STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
        Tab.FieldByName('digito_ben').AsString) ;
        edt_nome_ben.Text := tab.fieldbyname('nome_ben').AsString;
        edt_plano.Text := tab.fieldByName('descricao_pla').AsString;
        edt_idade.text := Data_GetIdadeExt(Tab.FieldByName('dtnascim_ben').value, Date);  }
        NumProtocolo := edt_protocolocancela.Text;
        imprimedaruma;
        end;
  btn_sairClick(Self);
  pnl_alerta.Visible := false;
  pnl_alerta2.Visible := false;
  pnl_alerta3.Visible := false;
  cbx_cod_campanhaChange(Self);
  edt_cartao.SetFocus;
end;

procedure TFrm_Mov_2064.btn_sairClick(Sender: TObject);
begin
  inherited;
  Label20.Visible:= False;
  edt_protocolocancela.Visible:= False;
  btn_confirmacancelamento.Visible:= False;
  btn_sair.Visible:= False;
  edt_cartao.SetFocus;
end;

procedure TFrm_Mov_2064.btn_reimpressaoClick(Sender: TObject);
begin
  inherited;
  btn_cancelaClick(Self);
  WBotao:= 'R';
end;

procedure TFrm_Mov_2064.TabSheet2Show(Sender: TObject);
begin
  inherited;
  dbg_campanha.Visible:= True;
  with fdt_principal6.spc_adm_campanhas do
  begin
    Close;
    Open;
  end;
end;

procedure TFrm_Mov_2064.TabSheet1Show(Sender: TObject);
begin
  inherited;
  dbg_campanha.Visible:= False;
end;

procedure TFrm_Mov_2064.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3079 := TFrm_Rel_3079.Create(Self);
  Frm_Rel_3079.ShowModal;
  Frm_Rel_3079.Release;
  show;
end;

procedure TFrm_Mov_2064.btn_gerardebitosClick(Sender: TObject);
Var
  DtDesc: TDate;
  WQTMes, WQTMes1: Integer;
const
  msgErro = 'Atenção, Erro ao tentar salvar este registro, o aplicativo será fechado e este registro será perdido';
begin
  inherited;
  if not Dlg_YesNo('Deseja realmente gerar cobranças da campanha ' + cbx_cod_campanha.Text + ' ?',self) then
     Exit;
  pesquisahistcampanha;
  WQTMes:= 0;
  WQTMes1:= 0;
  if fdt_principal6.spc_adm_histcampanha.RecordCount > 0 then
     begin
     pgb_cobranca.Visible:= True;
     pgb_cobranca.Max:= fdt_principal6.spc_adm_histcampanha.RecordCount;
     with fdt_principal6.spc_adm_histcampanha do
       begin
       First;
       while not Eof do
          begin
          if FieldByName('cod_empresafolha').AsInteger <> 99 then
             begin
             DtDesc:= (Data_BOM(Data_Soma1mes(Ctb_DtUltimoEnvioGerado('5'))));
             INC(WQTMes);
             end
          else
             begin
             DtDesc:= (Data_BOM(Data_Soma1mes(Data_Soma1mes(Ctb_DtUltimoEnvioGerado('5')))));
             INC(WQTMes1);
             end;
          if not Set_IncluirDesconto(FieldByName('cod_beneficiario').AsString, FieldByName('matriculadebito_seg').AsString,
                 FieldByName('digitomatdeb_seg').AsString,FieldByName('valor_cph').AsString, '0', '632', FieldByName('cod_empresafolha').AsString,
                 FormatDateTime('mm', DtDesc), FormatDateTime('yyyy', DtDesc), Date,
                 FieldByName('descricao_cph').AsString, FCod_Usuario, FCod_TelaSistema) then
                 begin
                 Dlg_Erro( msgErro, self);
                 Application.Terminate;
                 end;
          pgb_cobranca.Position:= pgb_cobranca.Position + 1;
// Atualiza como cobrado ao ser incluido na folha
          DB_ExecSQL('update tbl_histcampanha set cobrado_hph = 2 where cod_hph = ' + FieldByName('cod_hph').AsString +
          ' and cobrado_hph = 1 and cod_campanha = ' + IntToStr(cbx_cod_campanha.ValueItem));
          Next;
          end
       end;
     Dlg_Ok('Gerado ' + IntToStr(pgb_cobranca.Position) + ' descontos, sendo:'#13+
     IntToStr(WQTMES) + ' descontos no mês de ' + FormatDateTime('mm/yyyy',(DtDesc-1))+'.'#13+
     IntToStr(WQTMES1) + ' descontos no mês de ' + FormatDateTime('mm/yyyy',(DtDesc))+'.',self);
     FormShow(Self);
     cbx_cod_campanha.Text:= '';
     cbx_cod_campanha.SetFocus;
     end
  else
     begin
     Dlg_Alerta('Não existem aplicações a ser cobradas !',self);
     end;
end;

procedure TFrm_Mov_2064.pesquisahistcampanha;
begin
  with fdt_principal6.spc_adm_histcampanha do
    begin
    Close;
    ParamByName('@cod_campanha').AsString:= cbx_cod_campanha.ValueItem;
    ParamByName('@dtini').AsString := '';
    ParamByName('@dtfim').AsString := '';
    ParamByName('@cancela_hph').AsString:= '1';
    ParamByName('@cobrado_hph').AsString:= '1';
    ParamByName('@isento').AsString:= 'N';
    ParamByName('@inscricao_ben').AsString:= '0';
    ParamByName('@cod_empresafolha').AsString:= '0';
    ParamByName('@matriculadebito_seg').AsString:= '0';
    ParamByName('@indice').AsString:= '0';
    ParamByName('@obs_hph').AsString:= '';
    Open;
    end;
end;

procedure TFrm_Mov_2064.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if cbx_isencao.ValueItem = 'N' then
  begin
    Obj_SetFormObjValueByName(self, cbx_isencao.Name, 'S');
    cbx_obs_hph.Visible := true;
    lbl_obs.Visible := true;
    cbx_obs_hph.SetFocus;
  end;

end;

procedure TFrm_Mov_2064.edt_cartaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
  begin
    if edt_cartao.Text <> '' then
    begin
      if length(edt_cartao.text) = 33 then
        edt_cod_beneficiario.Text := copy(edt_cartao.text, 2, 6)
      else
        edt_cod_beneficiario.Text := copy(edt_cartao.text, 2, 5);
      edt_cod_beneficiarioButtonClick(self);  
    end
    else
      cbx_cod_campanha.SetFocus;
  end;  
end;

procedure TFrm_Mov_2064.btn_cartaoClick(Sender: TObject);
begin
  inherited;
  edt_cartao.SetFocus;
end;

procedure TFrm_Mov_2064.edt_cod_beneficiarioButtonClick(Sender: TObject);
begin
  inherited;
  if edt_cod_beneficiario.text = '' then
  begin
    edt_carteirinha.text := '' ;
    edt_nome_ben.text := '' ;
    edt_plano.Text := '';
    edt_idade.Text := '';
  end
  else
  begin
    DB_OpenSQL('SELECT b.nome_ben, b.cod_empresa, p.descricao_pla, b.inscricao_ben, b.cod_beneficiario,'+
               ' b.digito_ben, b.dtnascim_ben, cod_sitbeneficiario, b.cod_plano, b.titulacartei_ben,'+
               ' case when (dbo.fun_difdata (b.dtnascim_ben, getdate()) < idademenor_cph) or (dbo.fun_difdata (b.dtnascim_ben, getdate()) >= idademaior_cph)'+
               ' then ''S'' else ''N'' end isento'+
               ' FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
               ' inner join tbl_campanha on cod_campanha = '+cbx_cod_campanha.valueitem+
               ' WHERE b.cod_beneficiario = '+ edt_cod_beneficiario.text);

    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteirinha.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome_ben.Text := tab.fieldbyname('nome_ben').AsString;
    edt_plano.Text := tab.fieldByName('descricao_pla').AsString;
    Fplano := copy(edt_carteirinha.text, 3, 1);
    Obj_SetFormObjValueByName(self, cbx_isencao.Name, Tab.FieldByName('isento').AsString);
    cbx_obs_hph.Visible := false;
    lbl_obs.Visible := false;
    cbx_obs_hph.ItemIndex := -1;
    if StrToInt(Fplano) <> Tab.FieldByName('cod_plano').AsInteger then
       pnl_alerta2.Visible := true
    else
       pnl_alerta2.Visible := false;
    edt_idade.text := Data_GetIdadeExt(Tab.FieldByName('dtnascim_ben').value, Date);
    wCod_Beneficiario := Tab.FieldByName('cod_beneficiario').AsString;
    if Tab.FieldByName('cod_sitbeneficiario').AsString <> '' then begin
       WSitBenef:= Tab.FieldByName('cod_sitbeneficiario').AsString;
       DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+Tab.FieldByName('cod_sitbeneficiario').AsString);
       pnl_alerta.Caption := '***  Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
       case Tab.FieldByName('tipo_sit').AsInteger of
         1 : pnl_alerta.color := clYellow;
         2 : pnl_alerta.color := clRed;
       end;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    pnl_alerta3.Visible := cbx_isencao.ValueItem = 'N';
  end;
end;

procedure TFrm_Mov_2064.edt_cartaoExit(Sender: TObject);
begin
  inherited;
  lbl_cartao.Visible := false;
end;

procedure TFrm_Mov_2064.edt_cartaoEnter(Sender: TObject);
begin
  inherited;
  lbl_cartao.Visible := true;
end;

procedure TFrm_Mov_2064.cbx_tipoatend_hphKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
  begin
    btn_confirmaClick(self);
  end;
end;

procedure TFrm_Mov_2064.cbx_obs_hphKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
  begin
    btn_confirmaClick(self);
  end;
end;


procedure TFrm_Mov_2064.CamposONOFF(b: boolean);
begin
  edt_inscricao_ben.Visible := b;
  edt_cod_beneficiario.Visible := b;
  btn_cartao.Visible := b;
  edt_carteirinha.Visible := b;
  edt_dtnascimento.Visible := not b;
  edt_nome_ben.TabStop := not b;
  edt_cod_beneficiario.Text := '';
  edt_inscricao_ben.Text := '';
  edt_carteirinha.Text := '';
  edt_nome_ben.Text := '';
  edt_cartao.Visible := b;
end;

procedure TFrm_Mov_2064.ckb_inscricaoClick(Sender: TObject);
begin
  inherited;
  CamposONOFF(true);
  pnl_cartao.Caption := '    Cartão                                                           Nome';
  edt_nome_ben.Color := clInfoBk;
  edt_nome_ben.ReadOnly := True;
  edt_cartao.SetFocus;
  cbx_obs_hph.ItemIndex := -1;
end;

procedure TFrm_Mov_2064.ckb_funcioanrioClick(Sender: TObject);
begin
  inherited;
  CamposONOFF(false);
  cbx_obs_hph.ItemIndex := -1;
  edt_nome_ben.Color := clWindow;
  edt_nome_ben.ReadOnly := false;
  pnl_cartao.Caption := '    Dt. Nascimento                                               Nome';
  Obj_SetFormObjValueByName(self, cbx_isencao.Name, 'S');
  edt_dtnascimento.setfocus;
  edt_obs_cph.Visible := false;
  edt_plano.Text := '';
  edt_idade.Text := '';
  lbl_obs.Visible := false;
  pnl_alerta.Visible := false;
  pnl_alerta2.Visible := false;
  pnl_alerta3.Visible := false;
end;

procedure TFrm_Mov_2064.edt_dtnascimentoExit(Sender: TObject);
begin
  inherited;
  if edt_dtnascimento.Text <> '' then
    edt_idade.text := Data_GetIdadeExt(edt_dtnascimento.Date, Date);
end;

end.



