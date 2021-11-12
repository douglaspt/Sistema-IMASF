unit Mov_Tramite;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, Grids,
  DBGrids, Db, jpeg;

type
  TFrm_Mov_Tramite = class(TFrm_Bas_Cadastro)
    pnl_pesquisa: TPanel;
    edt_cod_tramite: TDCChoiceEdit;
    Panel1: TPanel;
    Panel5: TPanel;
    PageControl: TPageControl;
    tbs_andamento: TTabSheet;
    edt_dtprocesso_tmt: TDCDateEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    edt_obs_tmt: TDCEdit;
    GroupBox1: TGroupBox;
    Tbs_NovoAndamento: TTabSheet;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    edt_dtdestino: TDCDateEdit;
    Panel13: TPanel;
    edt_ano_tmt: TDCEdit;
    cbx_assunto_tmt: TDCComboBox;
    edt_assunto_tmt: TDCEdit;
    btn_digita: TPDJButton;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
    DBG_matricula: TDBGrid;
    edt_origem: TDCEdit;
    edt_destino: TDCEdit;
    edt_remetente: TDCEdit;
    edt_destinatario: TDCEdit;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    edt_setorOrigem: TDCEdit;
    edt_remetente_tmt: TDCEdit;
    Panel15: TPanel;
    edt_destinatario_tmt: TDCEdit;
    Panel16: TPanel;
    edt_dtdestino_tmt: TDCDateEdit;
    PDJButton2: TPDJButton;
    btn_cancelarand: TPDJButton;
    cbx_cod_setorDestino: TDCComboBox;
    cbx_cod_setor: TDCComboBox;
    edt_inscricao_ben: TDCEdit;
    edt_interessado_tmt: TDCEdit;
    edt_nome_ben: TDCEdit;
    rdb_processo: TRadioButton;
    rdb_inscricao: TRadioButton;
    edt_inscricao: TDCChoiceEdit;
    edt_cod_usuario: TDCEdit;
    edt_dtalteracao_tmt: TDCEdit;
    btn_beneficiario: TPDJButton;
    rdb_nome: TRadioButton;
    edt_nome: TDCEdit;
    PDJButton4: TPDJButton;
    PDJButton1: TPDJButton;
    cbx_cod_setorImasf: TDCComboBox;
    btn_SalvarObs: TPDJButton;
    edt_matricula_tmt: TDCEdit;
    edt_digito_tmt: TDCEdit;
    btn_receber: TPDJButton;
    edt_processo_tmt: TDCChoiceEdit;
    lbl_ast1: TLabel;
    lbl_ast2: TLabel;
    lbl_ast3: TLabel;
    lbl_ast4: TLabel;
    lbl_ast5: TLabel;
    lbl_ast6: TLabel;
    lbl_ast7: TLabel;
    lbl_ast0: TLabel;
    Label1: TLabel;
    cbx_cod_corprocesso: TDCComboBox;
    ckb_anoanterior: TCheckBox;
    btn_imprimeprocesso: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_digitaClick(Sender: TObject);
    procedure btn_cancelarandClick(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tbs_andamentoShow(Sender: TObject);
    procedure edt_processo_tmtButtonClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure rdb_processoClick(Sender: TObject);
    procedure rdb_inscricaoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure rdb_nomeClick(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_inscricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_excluirClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_receberClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure edt_assunto_tmtEnter(Sender: TObject);
    procedure edt_inscricaoButtonClick(Sender: TObject);
    procedure ckb_anoanteriorClick(Sender: TObject);
    procedure edt_ano_tmtExit(Sender: TObject);
    procedure edt_inscricaoExit(Sender: TObject);
    procedure cbx_cod_corprocessoChange(Sender: TObject);
    procedure edt_nome_benExit(Sender: TObject);
    procedure btn_imprimeprocessoClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux : String ;
    FPesquisaSQLDefalt : String ;
    wCod_Beneficiario : String ;
    procedure CarregarCombos;
//    procedure MostrarBeneficiario(c:string);
    function VerAndamento : boolean ;
    procedure HabilitarTela;
    function CriticaProcessoExistente(Ano, Inscricao, Nome, CorProcesso : String) : Boolean;
  public
    { Public declarations }

     FInsc, FNome, FdtCriacao, FCorPasta, FIntere, FAssunto, FObs, FCod_Proc, FAno : String ;

    procedure BotoesOnOff(b:boolean);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
  //  function BAS_SalvarUpdate(Frm:TForm): boolean ;     override ;
    function BAS_SalvarInsert(Frm:TForm): boolean ;     override ;
    procedure BAS_LimparTela;                           override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
  end;

var
  Frm_Mov_Tramite: TFrm_Mov_Tramite;
  WBotao: Integer;

implementation

uses Constantes, Fun_Obj, Fun_Str, Fun_DB, DLG_Mensagem, Mov_SitConveniado,
     dtm_principal, Fun_ConsCadastro, Fun_beneficiario, dtm_principal2, Fun_Acesso,
     Imp_Tmt_RemesProc001, Cad_Segurado, Imp_4077, Mov_RemesTramite, Rel_3051, Rel_3065, Fun_Data ;

{$R *.DFM}

procedure TFrm_Mov_Tramite.FormCreate(Sender: TObject);
begin
  inherited;
  WBotao:= 0;
  FTitulo       := '' ;
  FEditChave    := 'edt_cod_tramite' ;
  FEditAlteracao:= 'edt_inscricao_ben' ;
  FUltFoco      := 'obs_tmt' ;
  FTitPesquisa  := 'Localizar Processo' ;
  FPesquisa     := 'Cod_tramite, processo_tmt, Ano_tmt, assunto_tmt, interessado_tmt, obs_tmt' ;
  FPesquisaTit  := 'Cod., Inscrição, Nº Processo, Ano, Nome do Segurado, Tipo de Processo, Assunto, Interessado, Observações' ;
  FOcultaIndice := true ;
  FTransacao    := false;
end;

procedure TFrm_Mov_Tramite.BAS_Novo(Frm:Tform);
begin
  edt_inscricao_ben.Color := clwhite ;
  edt_nome_ben.Color := clwhite ;
  inherited;
    PageControl.Visible := false ;
    CarregarCombos;
end;

procedure TFrm_Mov_Tramite.BAS_LimparTela;
begin
  inherited;
  edt_dtprocesso_tmt.text := datetostr(date) ;
  PageControl.ActivePageIndex := 0 ;
end;

procedure TFrm_Mov_Tramite.BotoesOnOff(b:boolean);
begin
  inherited;
  rdb_processo.visible := not b ;
  rdb_inscricao.visible := not b ;
  rdb_nome.visible := not b ;
end;

procedure TFrm_Mov_Tramite.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
  Obj_LoadCombo(Self, 'cbx_assunto_tmt', 'assunto_atr', 'assunto_atr', 'tbl_asstramite');
  Obj_LoadCombo(Self, 'cbx_cod_setor', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf');
  Obj_LoadCombo(Self, 'cbx_cod_setorDestino', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf');
  Obj_LoadCombo(Self, 'cbx_cod_setorImasf', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
end;

procedure TFrm_Mov_Tramite.BAS_Alterar(Frm:Tform);
  var
    conv : string ;
begin
  CarregarCombos;
  inherited ;
//aqui
  if Panel13.Visible = True then

  if FStatus = FST_Alteracao then begin
    PageControl.Visible := true ;
    VerAndamento;
    cbx_cod_corprocessoChange(self);
    edt_inscricao.Visible := false ;
    pnl_pesquisa.Caption := '    Processo                                                                         Ano                     Tipo de Processo';
  end;
  if (Acs_AcessoEspecial('201601')) then
  begin
    pnl_pesquisa.Enabled := true;
  end;
end;

{function TFrm_Mov_Tramite.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  if cbx_assunto_tmt.visible then begin
    edt_assunto_tmt.text := cbx_assunto_tmt.text ;
    cbx_assunto_tmt.visible := false ;
  end;
 result := DB_ExecSQL('update tbl_tramite set obs_tmt = '''+edt_obs_tmt.text+
  ''', cod_usuario = '+edt_cod_usuario.text+', dtalteracao_tmt = '''+edt_dtalteracao_tmt.text+
  ''', matricula_tmt = '''+edt_matricula_tmt.Text+''', digito_tmt = '''+edt_digito_tmt.Text+
  ''' where cod_tramite = '+edt_cod_tramite.text) ;
end; }

function TFrm_Mov_Tramite.BAS_SalvarInsert(Frm:TForm): boolean ;
begin
  if cbx_assunto_tmt.visible then begin
    edt_assunto_tmt.text := cbx_assunto_tmt.text ;
    cbx_assunto_tmt.visible := false ;
  end;
  result := DB_Insert(Frm) ;
end;

procedure TFrm_Mov_Tramite.BAS_Cancelar(Frm:TForm);
begin
  inherited;
  if FStatus = FST_Normal then begin
    PageControl.Visible := false ;
    HabilitarTela;
  end;
end;

function TFrm_Mov_Tramite.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
//  pnl_pesquisa.SetFocus;
  if (not BAS_ValidarCampo(edt_processo_tmt.name, 'O Processo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano_tmt.name, 'O ano do processo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_corprocesso.name, 'O Tipo de Processo deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  if cbx_cod_corprocesso.ValueItem = 5 then
  begin
    if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A inscrição deve ser Preenchida !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_nome_ben.name, 'O Nome deve ser Preenchido !', VLD_Preenchido )) then
    //  (not BAS_ValidarCampo(edt_matricula_tmt.name, 'A matrícula deve ser Preenchida !', VLD_Preenchido )) or
    //  (not BAS_ValidarCampo(edt_digito_tmt.name, 'O digito deve ser Preenchido !', VLD_Preenchido )) or
      Exit;
  end;
  if (not BAS_ValidarCampo(edt_dtprocesso_tmt.name, 'A data de criação do processo deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_setorImasf.name, 'Setor de Origem deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_interessado_tmt.name, 'O Nome do interessado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_assunto_tmt.name, 'O assunto deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  if STR_StrToInt(edt_ano_tmt.text) < 1900 then begin
    Dlg_Ok('O Ano digitado não é um ano válido !', self);
    Exit
  end;                                
  result := false ;
end;

procedure TFrm_Mov_Tramite.FormShow(Sender: TObject);
begin
  inherited;
  carregarcombos;
  edt_processo_tmt.visible := true ;
  edt_ano_tmt.visible := true ;
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
   edt_cod_tramite.Visible := false ;
  rdb_processoClick(Self);
  Label1.Visible:= False;
  lbl_ast0.Visible:= False;
  lbl_ast1.Visible:= False;
  lbl_ast2.Visible:= False;
  lbl_ast3.Visible:= False;
  lbl_ast4.Visible:= False;
  lbl_ast5.Visible:= False;
  lbl_ast6.Visible:= False;
  lbl_ast7.Visible:= False;
  ckb_anoanterior.Visible:= False;
end;

procedure TFrm_Mov_Tramite.HabilitarTela;
begin
  inherited;
  PageControl.Visible := false ;
  if rdb_processo.Checked then
     rdb_processoClick(Self);
  if rdb_inscricao.Checked then
     rdb_inscricaoClick(Self);
  if rdb_nome.Checked then
     rdb_nomeClick(Self);
//aqui
//    rdb_inscricao.Checked := true ;
 //   rdb_inscricaoClick(Self);
end;

procedure TFrm_Mov_Tramite.btn_digitaClick(Sender: TObject);
begin
  inherited;
  if btn_digita.Caption = '&Digitar Assunto' then
     begin
     btn_digita.Caption := '&Selecionar Assunto' ;
     edt_assunto_tmt.Visible := true ;
     edt_assunto_tmt.SetFocus;
     cbx_assunto_tmt.Visible := false ;
     end
  else
     begin
     btn_digita.Caption := '&Digitar Assunto';
     cbx_assunto_tmt.Visible := true ;
     cbx_assunto_tmt.SetFocus;
     edt_assunto_tmt.Visible := false ;
     end;
end;

function TFrm_Mov_Tramite.VerAndamento : boolean ;
begin
  with fdt_principal2.spc_cons_tramitacao do begin
    close;
    parambyname('@cod_tramite').AsString := edt_cod_tramite.text ;
    open;
    edt_origem.Text := FieldByName('sigla_sti_1').AsString + '   ' + FieldByName('nome_sti_1').AsString;
    edt_destino.Text := FieldByName('sigla_sti').AsString + '   ' + FieldByName('nome_sti').AsString;
    edt_remetente.Text := FieldByName('remetente_tmt').AsString ;
    edt_destinatario.Text := FieldByName('Destinatario_tmt').AsString ;
    edt_dtdestino.Text := FieldByName('dtDestino_tmt').AsString ;
  end;
end;

procedure TFrm_Mov_Tramite.btn_cancelarandClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePage := Tbs_Andamento ;
end;

procedure TFrm_Mov_Tramite.PDJButton2Click(Sender: TObject);
var
  s : string ;
begin
  inherited;
  if fdt_principal2.spc_cons_tramitacao.fieldbyname('cod_setorDestino').asstring <> '' then
    s := fdt_principal2.spc_cons_tramitacao.fieldbyname('cod_setorDestino').asstring
  else
    s := '2';//cbx_cod_setorimasf.valueitem ;
  DB_ExecSQL('insert into tbl_tramitacao ('+
  'processo_tmt, ano_tmt, cod_setorOrigem, cod_setorDestino, dtDestino_tmt, remetente_tmt, destinatario_tmt, dtsistema_tmt '+
  ') values ('+
  edt_processo_tmt.text + ', ' + edt_ano_tmt.text + ', ' + s + ', ' +
  cbx_cod_setorDestino.valueitem+', '+DB_FormatDataSQL(edt_dtdestino_tmt.text, ftDate)+','''+
  edt_remetente_tmt.text+''', '''+edt_destinatario_tmt.text+''', getdate())');
  btn_cancelarandClick(self);
end;



procedure TFrm_Mov_Tramite.btn_salvarClick(Sender: TObject);
begin
  if cbx_assunto_tmt.Visible = True then
     begin
     edt_assunto_tmt.Text := cbx_assunto_tmt.text ;
     edt_assunto_tmt.Visible:= True;
     cbx_assunto_tmt.visible := false ;
     end;
  //Pesquisa último processo do ano e da cor selecionados
  if FStatus = FST_Novo then
  begin
    if cbx_cod_corprocesso.ValueItem <> 6 then
    begin
      DB_OpenSQL('select isnull(max(processo_tmt),0) + 1 as proximo from tbl_tramite where ano_tmt = ' + edt_ano_tmt.Text +
      ' and cod_corprocesso <> 6');
      edt_processo_tmt.Text:= Tab.FieldByName('proximo').AsString;
    end;  
    // else
    //   DB_OpenSQL('select isnull(max(processo_tmt),0) + 1 as proximo from tbl_tramite where ano_tmt = ' + edt_ano_tmt.Text +
    //              ' and cod_corprocesso = 6');
  end;
  if BAS_ValidarCadastro then
     Exit;
  if CriticaProcessoExistente(edt_ano_tmt.Text,edt_inscricao_ben.Text,edt_nome_ben.Text, cbx_cod_corprocesso.valueItem) then
     begin
     edt_inscricao_ben.SetFocus;
     Exit;
     end;

  edt_dtalteracao_tmt.text := FormatDateTime('mm/dd/yyyy', date) ;
  edt_cod_usuario.text := STR_IntToStr(FCod_Usuario);
  if FStatus = FST_Novo then begin
    DB_OpenSQL('select processo_tmt, ano_tmt, cod_corprocesso from tbl_tramite where processo_tmt = '+edt_processo_tmt.Text+
    ' and ano_tmt = '+edt_ano_tmt.Text+' and cod_corprocesso = '+cbx_cod_corprocesso.ValueItem);
    if tab.RecordCount >= 1 then
      if not Dlg_YesNo('Este processo ja existe, tem certeza que deseja continuar ?',self) then Exit;
  end;
  inherited;
  if FStatus = FST_Normal then begin
    HabilitarTela;
    EscreveLog(btn_salvar.Name);
    rdb_processoClick(self);
    rdb_processo.Checked := true ;
  end;
  lbl_ast4.Visible:= False;
  if ckb_anoanterior.Checked then
     ckb_anoanterior.Checked:= False;
  ckb_anoanterior.Visible:= False;
  pnl_pesquisa.SetFocus;
end;

procedure TFrm_Mov_Tramite.tbs_andamentoShow(Sender: TObject);
begin
  inherited;
  VerAndamento;
end;

procedure TFrm_Mov_Tramite.edt_processo_tmtButtonClick(Sender: TObject);
begin
  inherited;
  if rdb_processo.Checked then
  //   if edt_processo_tmt.Text <> '' then
        btn_alterarClick(self);
end;

procedure TFrm_Mov_Tramite.btn_alterarClick(Sender: TObject);
begin
  ckb_anoanterior.Visible:= False;
  FStatus := FST_Alteracao;
    if cbx_cod_corprocesso.text <> '' then
      FPesquisaSQL := 'select t.Cod_tramite, t.inscricao_ben, t.processo_tmt, t.Ano_tmt, t.nome_ben, cp.nome_cor, t.assunto_tmt, '+
      't.interessado_tmt, t.obs_tmt from tbl_tramite t, tbl_corprocesso cp where cp.cod_corprocesso = t.cod_corprocesso and t.cod_corprocesso = '+
      cbx_cod_corprocesso.valueitem
    else
      FPesquisaSQL := 'select t.Cod_tramite, t.inscricao_ben, t.processo_tmt, t.Ano_tmt, t.nome_ben, cp.nome_cor, t.assunto_tmt, '+
      't.interessado_tmt, t.obs_tmt from tbl_tramite t, tbl_corprocesso cp where cp.cod_corprocesso = t.cod_corprocesso and t.Cod_tramite >= 0';
      if edt_processo_tmt.text <> '' then
        FPesquisaSQL := FPesquisaSQL + ' and t.processo_tmt = '+edt_processo_tmt.text ;
      if edt_ano_tmt.text <> '' then
        FPesquisaSQL := FPesquisaSQL + ' and t.ano_tmt = '+ edt_ano_tmt.text;
      if edt_inscricao.text <> '' then
        FPesquisaSQL := FPesquisaSQL + ' and t.inscricao_ben = '+ edt_inscricao.text;
      if edt_nome.text <> '' then
        FPesquisaSQL := FPesquisaSQL + ' and t.nome_ben like ''%'+ edt_nome.text+'%''';
//      edt_nome.Visible := false ;
      EscreveLog(btn_alterar.Name);
  inherited;
  {    if edt_inscricao_ben.Text = '' then
         if rdb_nome.Checked = True then
            begin
            edt_nome.Text:= '';
            cbx_cod_corprocesso.ItemIndex:= -1;
            end
         else
            if rdb_inscricao.Checked = True then
               begin
               edt_inscricao.Text:= '';
               cbx_cod_corprocesso.ItemIndex:= -1;
               end
            else
               if rdb_processo.Checked = True then
                  begin
                  edt_processo_tmt.Text:= '';
                  edt_ano_tmt.Text:= '';
                  cbx_cod_corprocesso.ItemIndex:= -1;
                  end;   }
    if rdb_nome.Checked = True then
       edt_nome.Visible:= False;
    btn_SalvarObs.Visible := true ;
    cbx_cod_corprocesso.Visible:= True;
end;


procedure TFrm_Mov_Tramite.rdb_processoClick(Sender: TObject);
begin
  inherited;
  pnl_pesquisa.Caption := '    Processo                                                                         Ano                     Tipo de Processo';
  edt_inscricao.Visible := false ;
  cbx_cod_corprocesso.Visible:= True;
  edt_ano_tmt.Visible := true ;
  edt_processo_tmt.Visible := true;
  edt_nome.Visible := false ;
  edt_nome.text := '' ;
  if WBotao = 0 then
     edt_processo_tmt.text := '' ;
  edt_inscricao.text := '' ;
  edt_ano_tmt.text := '' ;
  edt_processo_tmt.Color:= clWindow;
  edt_processo_tmt.ReadOnly:= False;
  edt_ano_tmt.Color:= clWindow;
  edt_ano_tmt.ReadOnly:= False;
  edt_ano_tmt.Left:= 301;
  cbx_cod_corprocesso.Left:= 445;
  edt_processo_tmt.Left:= 141;
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
  WBotao:= 0;
  edt_processo_tmt.SetFocus;
end;

procedure TFrm_Mov_Tramite.rdb_inscricaoClick(Sender: TObject);
begin
  inherited;
  pnl_pesquisa.Caption := '    Inscrição' ;
  edt_inscricao.Visible := True ;
  edt_ano_tmt.Visible := false ;
  edt_nome.Visible := false ;
  cbx_cod_corprocesso.Visible:= False;
  edt_processo_tmt.Visible := false ;
  edt_processo_tmt.text := '' ;
  edt_nome.text := '' ;
  edt_ano_tmt.text := '' ;
  edt_inscricao.text := '' ;
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
  WBotao:= 0;
  edt_inscricao.SetFocus;
end;

procedure TFrm_Mov_Tramite.btn_novoClick(Sender: TObject);
begin
  inherited;
  Label1.Visible:= True;
  if Acs_AcessoEspecial('101401') then
     ckb_anoanterior.Visible:= True;
  cbx_cod_corprocesso.Visible:= True;
  lbl_ast0.Visible:= True;
  lbl_ast1.Visible:= True;
  lbl_ast2.Visible:= True;
  lbl_ast3.Visible:= True;
  lbl_ast4.Visible:= True;
  lbl_ast5.Visible:= True;
  FStatus := FST_Novo;
  //pnl_pesquisa.Caption := '    Ano                                                           Tipo de Processo                                                                      Processo';
  //edt_ano_tmt.Left:= 141;
  //cbx_cod_corprocesso.Left:= 301;
  //edt_processo_tmt.Left:= 550;
  btn_SalvarObs.Visible := false ;
  EscreveLog(btn_novo.Name);
  edt_ano_tmt.Text := IntToStr(Data_Year(Date));
  //edt_processo_tmt.Color:= clInfoBk;
  //edt_processo_tmt.ReadOnly:= True;
  //edt_ano_tmt.Color:= clInfoBk;
  //edt_ano_tmt.ReadOnly:= True;
  edt_nome_ben.ReadOnly:= False;
  edt_nome_ben.Color:= clWindow;
  edt_nome.Visible:= False;
  edt_matricula_tmt.ReadOnly:= False;
  edt_matricula_tmt.Color:= clWindow;
  edt_digito_tmt.ReadOnly:= False;
  edt_digito_tmt.Color:= clWindow;
  edt_inscricao.Visible:= False;
  //cbx_cod_corprocesso.SetFocus;
  edt_processo_tmt.SetFocus;
end;

procedure TFrm_Mov_Tramite.btn_beneficiarioClick(Sender: TObject);
var
  b : string ;
begin
  inherited;
  WBotao:= 1;
  b := GetCodBeneficiario(edt_inscricao_ben.text, '0') ;
  if b <> '' then begin
    Hide;
    Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
    Frm_Cad_Segurado.wCod_Beneficiario := b ;
    Frm_Cad_Segurado.ShowModal;
    Frm_Cad_Segurado.Release;
    Show;
  end else
    Dlg_Ok('Beneficiário não encontrado !', self);
end;

procedure TFrm_Mov_Tramite.rdb_nomeClick(Sender: TObject);
begin
  inherited;
  pnl_pesquisa.Caption := '    Nome                                                                    Ano                              Tipo de Processo' ;
  edt_inscricao.Visible := false ;
  edt_ano_tmt.Visible := false ;
  edt_nome.Visible := true ;
  edt_processo_tmt.Visible := true ;
  cbx_cod_corprocesso.Visible:= True;
  cbx_cod_corprocesso.Left:= 452;
  edt_processo_tmt.Visible := false ;
  edt_processo_tmt.text := '' ;
  edt_nome.text := '' ;
  edt_ano_tmt.text := '' ;
  edt_inscricao.text := '' ;
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
  WBotao:= 0;
  edt_nome.SetFocus;
end;

procedure TFrm_Mov_Tramite.PDJButton4Click(Sender: TObject);
begin
  inherited;
  with Fdt_principal2.spc_cons_tramitacao do
  begin
    close;
    ParamByName('@cod_tramite').AsString := edt_cod_tramite.text ;
    open;
  end;
  Frm_Imp_4077 := TFrm_Imp_4077.Create(Self);
  Frm_Imp_4077.FInsc := edt_inscricao_ben.text;
  Frm_Imp_4077.FNome := edt_nome_ben.text;
  Frm_Imp_4077.FdtCriacao := edt_dtprocesso_tmt.Text;
  Frm_Imp_4077.FCorPasta := cbx_cod_corprocesso.text;
  Frm_Imp_4077.FIntere := edt_interessado_tmt.text;
  Frm_Imp_4077.FAssunto := edt_assunto_tmt.text;
  Frm_Imp_4077.FCod_Proc := edt_processo_tmt.text;
  Frm_Imp_4077.FObs := edt_obs_tmt.text;
  Frm_Imp_4077.FAno := edt_ano_tmt.text;
  if edt_inscricao_ben.text = '' then
    Frm_Imp_4077.lbl_inscricao.Enabled := false;
  if edt_inscricao_ben.text = '' then
    Frm_Imp_4077.lbl_nome.Enabled := false;
  Frm_Imp_4077.QuickRep1.Preview;
  Frm_Imp_4077.Release;
end;

procedure TFrm_Mov_Tramite.edt_inscricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
      edt_processo_tmtButtonClick(self);
end;

procedure TFrm_Mov_Tramite.btn_excluirClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_excluir.Name);
end;

procedure TFrm_Mov_Tramite.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (Frm_Mov_RemesTramite <> nil) and (Frm_Mov_RemesTramite.ComponentCount > 5) then begin
    close;
    exit;
  end;
  Hide;
  Frm_Mov_RemesTramite := TFrm_Mov_RemesTramite.Create(Self);
  Frm_Mov_RemesTramite.ShowModal;
  Frm_Mov_RemesTramite.Release;
  Show;
end;

function TFrm_Mov_Tramite.CriticaProcessoExistente(Ano, Inscricao, Nome, CorProcesso  : String) : Boolean;
var
  FSQL, FMSG : String;
begin
  Result := false;
  FSQL:= '';
  if FStatus = 1 then
  begin
    {if (NProcesso <> '') and (Ano <> '') then begin
      FSQL := 'select processo_tmt from tbl_tramite where processo_tmt = '+NProcesso+
      ' and ano_tmt = '+Ano+' and cod_corprocesso = '+CorProcesso;
      FMSG := 'Processo já Cadastrado!';
    end;}

//daqui
    if cbx_cod_corprocesso.ValueItem = 5 then
    begin
      if DB_OpenSQL('select processo_tmt, ano_tmt, cod_corprocesso from tbl_tramite where inscricao_ben = '+
      edt_inscricao_ben.Text + ' and cod_corprocesso = '+ cbx_cod_corprocesso.ValueItem) > 0 then
      begin
        Dlg_Alerta('Já existe um processo verde cadastrado nessa inscrição!', Self);
        cbx_cod_corprocesso.SetFocus;
        Result := true;
      end;
    end;
  end;
end;

procedure TFrm_Mov_Tramite.btn_receberClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3065 := TFrm_Rel_3065.Create(Self);
  Frm_Rel_3065.ShowModal;
  Frm_Rel_3065.Release;
  Show;
end;

procedure TFrm_Mov_Tramite.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  if rdb_nome.Checked = True then
     edt_nome.Visible:= True;
  lbl_ast4.Visible:= False;
  ckb_anoanterior.Visible:= False;
  pnl_pesquisa.SetFocus;
end;

procedure TFrm_Mov_Tramite.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.Text <> '') and (edt_inscricao_ben.Text <> '0') then
  begin
    if DB_OpenSQL('select b.inscricao_ben, b.nome_ben, me.matricula_mte, me.digito_mte from tbl_beneficiario b '+
    'inner join tbl_matriculaentrada me on me.cod_beneficiario = b.cod_beneficiario where b.inscricao_ben = ' +
    edt_inscricao_ben.Text) > 0 then
    begin
      edt_nome_ben.Text:= Tab.FieldByName('nome_ben').Text;
      edt_matricula_tmt.Text:= Tab.FieldByName('matricula_mte').Text;
      edt_digito_tmt.Text:= Tab.FieldByName('digito_mte').Text;
      if FStatus = FST_Novo then
         edt_interessado_tmt.Text:= Tab.FieldByName('nome_ben').Text;
      cbx_cod_setorImasf.SetFocus;
    end;
  if FStatus = 1 then
     if cbx_cod_corprocesso.ValueItem = 5 then
     begin
       if DB_OpenSQL('select processo_tmt, ano_tmt, cod_corprocesso from tbl_tramite where inscricao_ben = '+
       edt_inscricao_ben.Text + ' and cod_corprocesso = '+ cbx_cod_corprocesso.ValueItem) > 0 then
       begin
         Dlg_Alerta('Já existe um processo verde cadastrado nessa inscrição!', Self);
         cbx_cod_corprocesso.SetFocus;
         Exit;
       end;
      edt_assunto_tmt.Text := cbx_assunto_tmt.ValItems[0];
     end;
  end;
end;

procedure TFrm_Mov_Tramite.edt_assunto_tmtEnter(Sender: TObject);
begin
  inherited;
{  if (edt_processo_tmt.Text <> '') and (edt_ano_tmt.Text <> '') and (cbx_cod_corprocesso.Text <> '') then
    if CriticaProcessoExistente(edt_processo_tmt.Text,edt_ano_tmt.Text,'','', cbx_cod_corprocesso.valueItem) then
      edt_processo_tmt.setfocus;}
  if (edt_inscricao_ben.Text <> '') and (edt_inscricao_ben.Text <> '0') and (cbx_cod_corprocesso.Text <> '') then
    if CriticaProcessoExistente('',edt_inscricao_ben.Text,'', cbx_cod_corprocesso.valueItem) then
      edt_inscricao_ben.SetFocus;
  if (edt_nome_ben.Text <> '') and (cbx_cod_corprocesso.Text <> '') then
    begin
    if edt_interessado_tmt.text = '' then
       edt_interessado_tmt.text := edt_nome_ben.text ;
       if CriticaProcessoExistente('','',edt_nome_ben.Text, cbx_cod_corprocesso.valueItem) then
          edt_nome_ben.SetFocus;
    end;
end;

procedure TFrm_Mov_Tramite.edt_inscricaoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Mov_Tramite.ckb_anoanteriorClick(Sender: TObject);
begin
  inherited;
  if ckb_anoanterior.Checked = True then
     begin
     edt_ano_tmt.ReadOnly:= False;
     edt_ano_tmt.Color:= clWindow;
     edt_ano_tmt.SetFocus;
     end
  else
     begin
     edt_ano_tmt.Text := IntToStr(Data_Year(Date));
     edt_ano_tmt.ReadOnly:= True;
     edt_ano_tmt.Color:= clInfoBk;
     cbx_cod_corprocesso.SetFocus;
     end;
end;

procedure TFrm_Mov_Tramite.edt_ano_tmtExit(Sender: TObject);
begin
  inherited;
  if (edt_ano_tmt.Text <> '') and (FStatus = FST_Novo) then
  begin
    if strToInt(edt_ano_tmt.text) > Data_Year(Date) then
    begin
      Dlg_Alerta('O Ano não pode ser maior que o ano Atual!', Self);
      edt_ano_tmt.SetFocus;
    end;
  end;
end;

procedure TFrm_Mov_Tramite.edt_inscricaoExit(Sender: TObject);
begin
  inherited;
  if edt_inscricao.Text <> '' then
     edt_inscricaoButtonClick(Self);
end;

procedure TFrm_Mov_Tramite.cbx_cod_corprocessoChange(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
  begin
    edt_assunto_tmt.Text := '';
    lbl_ast6.Visible:= False;
    lbl_ast7.Visible:= False;
  end;
  if cbx_cod_corprocesso.ValueItem <> '' then
  case cbx_cod_corprocesso.ValueItem of
    1 : begin
      edt_inscricao_ben.Color := $0095DFFF ;
      edt_nome_ben.Color := $0095DFFF ;
    end;
    2 : begin
      edt_inscricao_ben.Color := clwhite ;
      edt_nome_ben.Color := clwhite ;
    end;
    3 : begin
      edt_inscricao_ben.Color := $00D6D6D6 ;
      edt_nome_ben.Color := $00D6D6D6 ;
    end;
    4 : begin
      edt_inscricao_ben.Color := $00DBB7FF ;
      edt_nome_ben.Color := $00DBB7FF ;
    end;
    5 : begin
      edt_inscricao_ben.Color := $005FD697 ;
      edt_nome_ben.Color := $005FD697 ;
      if FStatus = FST_Novo then
         begin
         edt_assunto_tmt.Text := cbx_assunto_tmt.ValItems[0];
         lbl_ast6.Visible:= True;
         lbl_ast7.Visible:= True;
         end;
    end;
    6 : begin
      edt_inscricao_ben.Color := $00FFFFB0 ;
      edt_nome_ben.Color := $00FFFFB0 ;
    end;
    7 : begin
      edt_inscricao_ben.Color := $0009FFFF ;
      edt_nome_ben.Color := $0009FFFF ;
    end;
  else ;
    begin
      edt_inscricao_ben.Color := clwhite ;
      edt_nome_ben.Color := clwhite ;
    end;
  end;
end;

procedure TFrm_Mov_Tramite.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
     if cbx_cod_corprocesso.ValueItem = 5 then
        edt_interessado_tmt.Text:= edt_nome_ben.Text;
end;

procedure TFrm_Mov_Tramite.btn_imprimeprocessoClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3051 := TFrm_Rel_3051.Create(Self);
  Frm_Rel_3051.ShowModal;
  Frm_Rel_3051.Release;
  Show;
end;

end.
