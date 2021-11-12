unit Mov_RemesTramite;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, Fun_Acesso, jpeg;

type
  TFrm_Mov_RemesTramite = class(TFrm_Bas_TelaPadrao)
    LsB_Remessa: TListBox;
    btn_imprimir: TPDJButton;
    Label1: TLabel;
    GrB_Andamento: TGroupBox;
    Panel7: TPanel;
    edt_remetente_tmt: TDCEdit;
    Panel15: TPanel;
    edt_destinatario_tmt: TDCEdit;
    cbx_cod_setorDestino: TDCComboBox;
    Panel16: TPanel;
    edt_dtdestino_tmt: TDCDateEdit;
    cbx_cod_setorOrigem: TDCComboBox;
    btn_limpaTela: TPDJButton;
    pnl_alerta: TPanel;
    edt_cod_usuario: TDCChoiceEdit;
    ed2_cod_usuario: TDCChoiceEdit;
    PDJButton1: TPDJButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btn_adicionar: TPDJButton;
    btn_remover: TPDJButton;
    edt_ano: TDCEdit;
    edt_processo: TDCEdit;
    cbx_cod_corprocesso: TDCComboBox;
    edt_inscricao: TDCEdit;
    Bevel1: TBevel;
    btn_beneficiario: TPDJButton;
    Label7: TLabel;
    pnl_AlertaConfirmacao: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    btn_confirmaAndamento: TPDJButton;
    PDJButton2: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_adicionarClick(Sender: TObject);
    procedure btn_removerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_confirmaAndamentoClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_limpaTelaClick(Sender: TObject);
    procedure edt_cod_usuarioButtonClick(Sender: TObject);
    procedure ed2_cod_usuarioButtonClick(Sender: TObject);
    procedure edt_cod_usuarioChange(Sender: TObject);
    procedure edt_cod_usuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed2_cod_usuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed2_cod_usuarioChange(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJButton2Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FDE, FPara, FRemetente, FDestin : String;
  end;

var
  Frm_Mov_RemesTramite: TFrm_Mov_RemesTramite;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ExtratoBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Fun_Obj,
dtm_principal2, Imp_Tmt_RemesProc001, Cad_Segurado, Mov_Tramite  ;

{$R *.DFM}

procedure TFrm_Mov_RemesTramite.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Acessos do Usuário ao Sistema' ;
  FEditChave    := 'edt_cod_usuario' ;
  FEditAlteracao:= 'cbx_cod_setorimasf' ;
  FUltFoco      := 'edt_descricao_usu' ;
  FTitPesquisa  := 'Localizar Usuarios' ;
  FPesquisa     := 'cod_usuario, nome_usu, descricao_usu' ;
  FPesquisaTit  := 'Código, Nome do Usuario, Nome Completo' ;
{  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
  'and s.tipo_sit = 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação' ;}
  inherited;
end;

function TFrm_Mov_RemesTramite.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_processo.name, 'Número do Processo deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano do Processo deve ser preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Mov_RemesTramite.btn_adicionarClick(Sender: TObject);
var s, wsql, linha : string ;
begin
  inherited;
  if edt_inscricao.text = '' then
  begin
    if (not BAS_ValidarCampo(cbx_cod_setorOrigem.name, 'O setor de Origem deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(cbx_cod_setorDestino.name, 'O setor de destino deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_processo.name, 'O processo deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_ano.name, 'O ano deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(cbx_cod_corprocesso.name, 'A Cor da Pasta deve ser preenchida !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_dtdestino_tmt.name, 'A Data de Envio deve ser preenchida !', VLD_DataPreenchida )) then
      Exit;
   end;   
  if edt_inscricao.text = '' then
    wsql := ('select top 1 t.cod_tramite, t.processo_tmt, t.ano_tmt, inscricao_ben, nome_ben, interessado_tmt, cod_setorDestino, cod_setorDestino, dtsistema_tmt '+
    ' from tbl_tramite t, tbl_tramitacao tr, tbl_corprocesso c  where t.cod_tramite = tr.cod_tramite and t.cod_corprocesso = c.cod_corprocesso and ((t.processo_tmt = '+edt_processo.text+
    ' and t.ano_tmt = '+edt_ano.text+' and c.cod_corprocesso = '+cbx_cod_corprocesso.valueItem+' )'+')'+
//    ' group by t.cod_tramite, t.processo_tmt, t.ano_tmt, inscricao_ben, nome_ben, interessado_tmt, cod_setorDestino, cod_setorDestino')
    ' order by dtDestino_tmt desc, dtSistema_tmt desc')
  else
    wsql := ('select top 1 t.cod_tramite, t.processo_tmt, t.ano_tmt, inscricao_ben, nome_ben, interessado_tmt, cod_setorDestino, cod_setorDestino, dtsistema_tmt '+
    ' from tbl_tramite t, tbl_tramitacao tr, tbl_corprocesso c  where t.cod_tramite = tr.cod_tramite and t.cod_corprocesso = c.cod_corprocesso and ((inscricao_ben = '+edt_inscricao.text+
    ' and c.cod_corprocesso = '+cbx_cod_corprocesso.valueItem+' and ((letra_tmt = ''Pe'') or (substring(assunto_tmt,1,1) = ''P'')))'+')'+
//    ' group by t.cod_tramite, t.processo_tmt, t.ano_tmt, inscricao_ben, nome_ben, interessado_tmt, cod_setorDestino, cod_setorDestino');
    ' order by dtDestino_tmt desc, dtSistema_tmt desc');
  if DB_OpenSql(wsql) < 1 then begin
    Dlg_Alerta('Processo não encontrado !', self);
    exit ;
  end else
 begin
  if (Tab.FieldByName('cod_setorDestino').AsString <> cbx_cod_setorOrigem.ValueItem) and
  (Tab.FieldByName('cod_setorDestino').AsString <> '') then begin
    Dlg_Alerta('Este Processo não está neste setor e não poderá ser tramitado!', self);
        exit ;
    end;
    if (Tab.FieldByName('inscricao_ben').AsString <> '') and (Tab.FieldByName('inscricao_ben').AsString <> '0') then
      s := Tab.FieldByName('inscricao_ben').AsString + ' - '+ Tab.FieldByName('nome_ben').AsString
    else
      s := Tab.FieldByName('interessado_tmt').AsString ;
    linha := STR_Addzeros(Tab.FieldByName('processo_tmt').AsString, 5)+'-'+
    STR_AddSpaces(Tab.FieldByName('ano_tmt').AsString, 5)+STR_AddSpaces(s, 50)+
    STR_AddSpaces(Tab.FieldByName('cod_tramite').AsString, 5);
    LsB_Remessa.Items.Add(linha);
    edt_processo.text := '' ;
    edt_ano.text := '' ;
    edt_processo.SetFocus;
    edt_inscricao.Text := '';
    edt_inscricao.SetFocus;
    EscreveLog(btn_adicionar.Name, linha);
  end;
end;

procedure TFrm_Mov_RemesTramite.btn_removerClick(Sender: TObject);
begin
  inherited;
  LsB_Remessa.Items.Delete(LsB_Remessa.ItemIndex);
  EscreveLog(btn_remover.Name);
end;

procedure TFrm_Mov_RemesTramite.FormShow(Sender: TObject);
begin
  inherited;
    Obj_LoadCombo(Self, 'cbx_cod_setorDestino', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
    Obj_LoadCombo(Self, 'cbx_cod_setorOrigem', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
    BAS_CarregarCombo('cbx_cod_corprocesso', 'nome_cor');
    edt_dtdestino_tmt.Date := date ;
    btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
end;

procedure TFrm_Mov_RemesTramite.btn_confirmaAndamentoClick(Sender: TObject);
var
  i : integer ;
  s : String ;
begin
  inherited;
  if pnl_alerta.Visible then exit ;
  if LsB_Remessa.Items.Count < 1 then begin
    Dlg_Alerta('E R R O !!!'+#13+'  COMPLETE AS INFORMAÇÕES PARA O TRAMITE !',self);
    exit;
  end;
  with LsB_Remessa do
  begin
    for i := 0 to Items.Count-1 do
    DB_ExecSQL('insert into tbl_tramitacao ('+
    'cod_tramite, processo_tmt, ano_tmt, cod_setorOrigem, cod_setorDestino, dtDestino_tmt, remetente_tmt, '+
    'destinatario_tmt, dtsistema_tmt, cod_usuario '+
    ') values ('+
    Trim(Copy(Items.Strings[i],63,15))+',' + Trim(Copy(Items.Strings[i],1,5)) + ', ' + Trim(Copy(Items.Strings[i],7,5)) + ', ' +
    cbx_cod_setorOrigem.valueitem + ', ' + cbx_cod_setorDestino.valueitem+', '+
    DB_FormatDataSQL(edt_dtdestino_tmt.text, ftDate)+','''+
    edt_remetente_tmt.text+''', '''+edt_destinatario_tmt.text+''', getdate(),'+
    STR_IntToStr(Fcod_usuario)+')');
  end;
  pnl_alerta.Visible := true ;
  pnl_AlertaConfirmacao.Visible := false ;
  GrB_Andamento.Enabled := false ;
  btn_imprimir.Enabled := true ;
  Dlg_Ok('Processos enviados',self);
  s := 'Cod_SetorOrigem : '+cbx_cod_setorOrigem.valueitem+'  - Cod_SetorDestino : '+cbx_cod_setorDestino.valueitem;
  EscreveLog(btn_confirmaAndamento.Name, s);
end;

procedure TFrm_Mov_RemesTramite.btn_imprimirClick(Sender: TObject);
var
  i : integer ;
  p : string ;
begin
  inherited;
  P := '' ;
  with Fdt_principal2.spc_cons_tramitacaoremessa do
  begin
    close;
    with LsB_Remessa do
    begin
      for i := 0 to Items.Count-1 do
        p := p + Trim(Copy(Items.Strings[i],63,15))+', ';
    end;
    ParamByName('@cod_tramite').AsString := copy(p,1, length(p)-2);
    ParamByName('@processo_tmt').AsString := '' ;
    ParamByName('@ano_tmt').AsString := '' ;
    open;
  end;
  Frm_Imp_Tmt_RemesProc001 := TFrm_Imp_Tmt_RemesProc001.Create(Self);
  Frm_Imp_Tmt_RemesProc001.FDE := cbx_cod_setorOrigem.Text;
  Frm_Imp_Tmt_RemesProc001.FPara :=  cbx_cod_setorDestino.Text;
  Frm_Imp_Tmt_RemesProc001.FRemetente := edt_remetente_tmt.Text;
  Frm_Imp_Tmt_RemesProc001.FDestin :=  edt_destinatario_tmt.text;
  Frm_Imp_Tmt_RemesProc001.QuickRep1.Preview;
  Frm_Imp_Tmt_RemesProc001.Release;
  Fdt_principal2.spc_cons_tramitacaoremessa.close;
end;

procedure TFrm_Mov_RemesTramite.btn_limpaTelaClick(Sender: TObject);
var
  i : integer ;
begin
  inherited;
  LsB_Remessa.Items.Clear;
  pnl_alerta.Visible := false ;
  cbx_cod_setorOrigem.Clear;
  cbx_cod_setorOrigem.Text := '' ;
  cbx_cod_setorOrigem.ValueItem:= 0 ;
  cbx_cod_setorOrigem.Refresh;
  cbx_cod_setorDestino.Clear;
  cbx_cod_setorDestino.Text := '' ;
  cbx_cod_setorDestino.ValueItem:= 0 ;
  cbx_cod_setorDestino.Refresh;
  edt_remetente_tmt.text := '' ;
  edt_destinatario_tmt.text := '' ;
  edt_cod_usuario.text := '' ;
  ed2_cod_usuario.text := '' ;
  edt_dtdestino_tmt.Date := date ;
  Obj_LoadCombo(Self, 'cbx_cod_setorDestino', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
  Obj_LoadCombo(Self, 'cbx_cod_setorOrigem', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
  BAS_CarregarCombo('cbx_cod_corprocesso', 'nome_cor');
  edt_dtdestino_tmt.Date := date ;
  edt_inscricao.Text := '';
  EscreveLog(btn_limpaTela.Name);
  pnl_AlertaConfirmacao.Visible := true ;
  GrB_Andamento.Enabled := true ;
  btn_imprimir.Enabled := false ;
end;

procedure TFrm_Mov_RemesTramite.edt_cod_usuarioButtonClick(
  Sender: TObject);
begin
  inherited;
    edt_cod_usuario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_RemesTramite.ed2_cod_usuarioButtonClick(
  Sender: TObject);
begin
  inherited;
    ed2_cod_usuario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_RemesTramite.edt_cod_usuarioChange(Sender: TObject);
begin
  inherited;
    edt_remetente_tmt.text := Acs_NomeUsuario(edt_cod_usuario.text);
end;

procedure TFrm_Mov_RemesTramite.edt_cod_usuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (edt_cod_usuario.Text = '') then
    edt_cod_usuarioButtonClick(self);
end;

procedure TFrm_Mov_RemesTramite.ed2_cod_usuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (ed2_cod_usuario.Text = '') then
    ed2_cod_usuarioButtonClick(self);
end;

procedure TFrm_Mov_RemesTramite.ed2_cod_usuarioChange(Sender: TObject);
begin
  inherited;
    edt_destinatario_tmt.text := Acs_NomeUsuario(ed2_cod_usuario.text);
end;

procedure TFrm_Mov_RemesTramite.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
  Frm_Cad_Segurado.wCod_Beneficiario := '' ;
  Frm_Cad_Segurado.ShowModal;
  Frm_Cad_Segurado.Release;
  Show;
end;

procedure TFrm_Mov_RemesTramite.PDJButton1Click(Sender: TObject);
var i : integer ;
begin
  inherited;
  if (Frm_Mov_Tramite <> nil) and (Frm_Mov_Tramite.ComponentCount > 5) then begin
    close;
    exit;
  end;
  if LsB_Remessa.ItemIndex > -1 then begin
  Hide;
  Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
  Frm_Mov_Tramite.edt_processo_tmt.Text := Trim(copy(LsB_Remessa.Items.Strings[LsB_Remessa.ItemIndex],1,5));
  Frm_Mov_Tramite.edt_ano_tmt.Text := Trim(copy(LsB_Remessa.Items.Strings[LsB_Remessa.ItemIndex],7,5));
  Frm_Mov_Tramite.btn_alterarClick(self);
  Frm_Mov_Tramite.ShowModal;
  Frm_Mov_Tramite.Release;
//  Frm_Mov_Tramite.Destroy;
  Show;
  end
  else begin
  Hide;
  Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
  Frm_Mov_Tramite.ShowModal;
  Frm_Mov_Tramite.Release;
//  Frm_Mov_Tramite.Destroy;
  Show;
  end;
end;

procedure TFrm_Mov_RemesTramite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (LsB_Remessa.Items.Count > 0) and (pnl_AlertaConfirmacao.Visible) then begin
      if Dlg_YesNo('ATENÇÃO ! Não foi confirmada a remessa destes processos ! Tem certeza que deseja sair e perder os dados ?', Self) then
        Exit else Action := caNone;
  end;
end;

procedure TFrm_Mov_RemesTramite.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if DB_OpenSQL('select cod_usuario, cod_setorimasf from tbl_usuario where cod_usuario = '+inttostr(FCod_Usuario)) > 0 then
  begin
    Obj_SetFormObjValueByName(self,'cbx_cod_setorOrigem',tab.fieldByName('cod_setorimasf').AsInteger);
    Obj_SetFormObjValueByName(self,'cbx_cod_setorDestino',tab.fieldByName('cod_setorimasf').AsInteger);
    edt_cod_usuario.Text := inttostr(Fcod_usuario);
    ed2_cod_usuario.SetFocus;
  end;
end;

end.



