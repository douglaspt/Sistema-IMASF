unit Cad_PedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, QuickRpt,
  jpeg, Grids, DBGrids, Db, DBCtrls, DBTables;

type
  TFrm_Cad_PedidoCompra = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_PedidoCompra: TDCChoiceEdit;
    Panel11: TPanel;
    cbx_cod_setorImasf: TDCComboBox;
    Panel9: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_discriminacao_ipc: TDCEdit;
    btn_imprimir: TPDJButton;
    cbx_cod_usuario: TDCComboBox;
    cbx_cod_dotacaoContabil: TDCComboBox;
    edt_dtSolicitacao_pcs: TDCDateEdit;
    edt_justificativa_pcs: TDCEdit;
    Panel7: TPanel;
    cbx_cod_usuarioChefe: TDCComboBox;
    cbx_cod_usuarioDiretor: TDCComboBox;
    cbx_cod_unidadeOrcam: TDCComboBox;
    edt_numPedido_pcs: TDCEdit;
    lbl_npedido: TLabel;
    Panel8: TPanel;
    edt_sequencia_ipc: TDCEdit;
    edt_qtde_ipc: TDCEdit;
    dbg_itemPedidoCompra: TDBGrid;
    edt_ano: TDCEdit;
    DataSource2: TDataSource;
    pnl_alerta: TPanel;
    UpdateSQL1: TUpdateSQL;
    Query1: TQuery;
    Query1cod_PedidoCompra: TIntegerField;
    Query1numOrdem_ipc: TIntegerField;
    Query1discriminacao_ipc: TStringField;
    Query1qtde_ipc: TIntegerField;
    Query1sequencia_ipc: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_PedidoCompraButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_cod_PedidoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edt_anoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_imprimirClick(Sender: TObject);
    procedure cbx_cod_setorImasfExit(Sender: TObject);
    procedure Query1AfterInsert(DataSet: TDataSet);
    procedure Query1EditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    numOrdem, pedidoComp, Fcod_PedidoCompra : String;
    FStatus2 : Integer ;
    procedure CarregarCombos;
    procedure CamposOnOff(b : Boolean);
    procedure CarregarCodDotacao;
  public
    { Public declarations }
    FResp, FPedido, FSetor, FChefe, FDiretor, FJust, FDotacao, FDtEntrada : String ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    procedure BAS_Salvar(Frm:Tform);                    override ;
  end;

var
  Frm_Cad_PedidoCompra: TFrm_Cad_PedidoCompra;

implementation
uses Constantes, Fun_DB, dtm_principal4, Dlg_Mensagem, Fun_Str,
  dtm_principal, Imp_4098, Fun_Obj, Fun_Acesso, Rel_3063;
{$R *.DFM}

procedure TFrm_Cad_PedidoCompra.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Pedido de Compra ' ;
  FEditChave    := 'edt_cod_PedidoCompra' ;
  FEditAlteracao:= 'cbx_cod_dotacao' ;
  FUltFoco      := '' ;
  FTitPesquisa  := 'Localizar Pedido de Compra' ;
  FPesquisa     := 'cod_PedidoCompra,numPedido_pcs, cod_unidadeOrcam, dtSolicitacao_pcs ' ;
  FPesquisaTit  := 'Cod. Pedido,Nº do Pedido, cod. Unidade, Data de Entrada' ;
  FTransacao    := true ;
  inherited;
//  DB_ExecSQL('set transaction isolation level read uncommitted');
end;

function TFrm_Cad_PedidoCompra.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_numPedido_pcs.name, 'O Número do Pedido deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_dotacaoContabil.name, 'O Código da Dotação deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtSolicitacao_pcs.name, 'A Data de Entrada deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_setorImasf.name, 'O Setor deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_usuario.name, 'O Responsável deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_usuarioChefe.name, 'O Chefe de Divisão deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_usuarioDiretor.name, 'O Diretor deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_justificativa_pcs.name, 'A Justificativa deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_PedidoCompra.BAS_Cancelar(Frm:Tform);
begin
  edt_justificativa_pcs.SetFocus;
  inherited ;
  CamposOnOff(true);
  lbl_npedido.Caption := '';
  edt_ano.Text := FormatDateTime('yyyy',date) ;
  CarregarCombos;
  btn_imprimir.enabled := true;

end;


procedure TFrm_Cad_PedidoCompra.BAS_Salvar(Frm:Tform);
begin
  Fcod_PedidoCompra := edt_cod_PedidoCompra.Text;

  if BAS_ValidarCadastro then Exit ;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
  
  Query1.ApplyUpdates;
  if FStatus = FST_Novo then begin
    if not BAS_SalvarInsert(Self) then
      Exit ;
  end else begin
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATENÇÃO ! Ocorreu algum erro ao tentar salvar ! Não foi possível salvar', self);
      Exit ;
    end;
  end;
//  inherited;
  if FTransacao then
    DB_Commit;
  BotoesOnOff(false);
  edt_cod_PedidoCompra.Enabled := true;


  if FStatus = FST_Novo then
    if Dlg_YesNo('Deseja Imprimir o Pedido de Compra',self) then
      btn_imprimirClick(self);
      edt_cod_PedidoCompra.SetFocus;

  BAS_LimparTela;
  FStatus := FST_Normal;


  lbl_npedido.Caption := '';
  CamposOnOff(true);
  edt_ano.Text := FormatDateTime('yyyy',date) ;
  CarregarCombos;

end;

procedure TFrm_Cad_PedidoCompra.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  pnl_alerta.Visible := false;
 inherited ;
   with fdt_principal4.spc_cons_adm_ItemPedidoCompra do begin
    Close;
    parambyname('@cod_PedidoCompra').asstring := edt_cod_PedidoCompra.text;
    Open;
  end;
  CarregarCodDotacao;
  lbl_npedido.Caption := 'Nº do Pedido';
  DB_OpenSQL('select cod_dotacaoContabil from tbl_PedidoCompra where cod_PedidoCompra = '+edt_cod_PedidoCompra.Text);
  Obj_SetFormObjValueByName(self, cbx_cod_dotacaoContabil.name, Tab.fieldbyname('cod_dotacaoContabil').AsString);
  btn_imprimir.Enabled := true;
end;

procedure TFrm_Cad_PedidoCompra.CarregarCodDotacao;
begin
  inherited ;
  lbl_npedido.Caption := 'Nº do Pedido';
  Obj_LoadCombo
  (Self, 'cbx_cod_dotacaoContabil', 'imasf.dbo.fun_FormatarDotacao(numeroDotacao_dtc)',
  'cod_dotacaoContabil', 'tbl_dotacaocontabil where ano_dtc = '+edt_ano.Text+
  ' and cod_unidadeOrcam = '+cbx_cod_unidadeOrcam.valueitem);
end;

procedure TFrm_Cad_PedidoCompra.CarregarCombos;
begin
  inherited;
  Obj_LoadCombo(Self,'cbx_cod_setorImasf','nome_sti','cod_setorImasf', 'tbl_setorImasf order by nome_sti');
  Obj_LoadCombo(Self,'cbx_cod_usuarioChefe','descricao_usu','cod_usuario', 'tbl_usuario order by descricao_usu');
  Obj_LoadCombo(Self,'cbx_cod_usuarioDiretor','descricao_usu','cod_usuario', 'tbl_usuario order by descricao_usu');
  Obj_LoadCombo(Self,'cbx_cod_usuario','descricao_usu','cod_usuario', 'tbl_usuario order by descricao_usu');
  Obj_LoadCombo(Self, 'cbx_cod_unidadeOrcam', 'cast(cod_unidadeOrcam as char(3)) + '' - '' + descUnidade_uno', 'cod_unidadeOrcam', 'tbl_unidadeorcam where exercicio_uno = '+edt_ano.Text);
  Query1.Close;
  Query1.Open;
end;

procedure TFrm_Cad_PedidoCompra.edt_cod_PedidoCompraButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_PedidoCompra.CamposOnOff(b : Boolean);
begin
  edt_ano.visible := b;
  cbx_cod_unidadeOrcam.Enabled := b;
  edt_numPedido_pcs.Enabled := b;
end;

procedure TFrm_Cad_PedidoCompra.btn_novoClick(Sender: TObject);
begin
  if not BAS_ValidarCampo(edt_ano.name, 'É necessário preencher o Ano!', VLD_Preenchido) or
  (not BAS_ValidarCampo(cbx_cod_unidadeOrcam.name, 'É necessário preencher o campo Unidade!', VLD_Preenchido)) then
    exit ;
  inherited;
  btn_imprimir.Enabled := false;
  pnl_alerta.Visible := false;
  CamposOnOff(false);
  CarregarCodDotacao;
  fdt_principal4.spc_cons_adm_ItemPedidoCompra.Close;
  edt_cod_PedidoCompra.Text := DB_GetPrimaryKey();
  cbx_cod_dotacaoContabil.SetFocus;
  edt_cod_PedidoCompra.Enabled := false;
  Obj_SetFormObjValueByName(self, cbx_cod_usuarioDiretor.name, 29);
  edt_dtSolicitacao_pcs.date := date ;
  if (FStatus = FST_Novo) or (FStatus = FST_Alteracao) then begin
    if DB_OpenSQL('select max(sequencia_uno) as sequencia_uno from tbl_unidadeorcam where cod_unidadeOrcam = '+cbx_cod_unidadeOrcam.valueItem ) > 0 then
      pedidoComp := IntToStr(Tab.FieldByName('sequencia_uno').AsInteger + 1)
    else
    pedidoComp := inttostr(1);
    edt_numPedido_pcs.Text := trim(pedidoComp+'/'+FormatDateTime('yyyy ', Now));
    DB_ExecSQL('update tbl_unidadeorcam set sequencia_uno = '+pedidoComp+' where cod_unidadeOrcam = '+cbx_cod_unidadeOrcam.valueItem);
  end;
  lbl_npedido.Caption := 'Nº do Pedido';
  Query1.Params[0].AsString := edt_cod_PedidoCompra.Text ;
  Query1.Close;
  Query1.Open;  
end;

procedure TFrm_Cad_PedidoCompra.btn_alterarClick(Sender: TObject);
begin
  if not BAS_ValidarCampo(edt_ano.name, 'É necessário preencher o Ano!', VLD_Preenchido) or
  (not BAS_ValidarCampo(cbx_cod_unidadeOrcam.name, 'É necessário preencher o campo Unidade!', VLD_Preenchido)) then
    exit ;
  if edt_cod_PedidoCompra.Text = '' then
  FPesquisaSQL := 'select cod_PedidoCompra,numPedido_pcs, cod_unidadeOrcam, '+
  ' dtSolicitacao_pcs from tbl_pedidoCompra where cod_unidadeOrcam = '+cbx_cod_unidadeOrcam.valueitem
  else
    FPesquisaSQL := 'select cod_PedidoCompra,numPedido_pcs, cod_unidadeOrcam, '+
  ' dtSolicitacao_pcs from tbl_pedidoCompra where cod_unidadeOrcam = '+cbx_cod_unidadeOrcam.valueitem+
  ' and numPedido_pcs = '''+edt_cod_PedidoCompra.Text+'''' ;
  edt_cod_PedidoCompra.Text := '' ;
  inherited;
  if cbx_cod_dotacaoContabil.Text <> '' then
    CamposOnOff(false);
    Query1.Params[0].AsString := edt_cod_PedidoCompra.Text ;
    Query1.Close;
    Query1.Open;
end;

procedure TFrm_Cad_PedidoCompra.edt_cod_PedidoCompraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btn_alterarClick(self);
end;

procedure TFrm_Cad_PedidoCompra.FormShow(Sender: TObject);
begin
  inherited;
  edt_ano.Text := FormatDateTime('yyyy',date) ;
  CarregarCombos;
end;

procedure TFrm_Cad_PedidoCompra.edt_anoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  begin
    cbx_cod_unidadeOrcam.Clear;
    cbx_cod_unidadeOrcam.ValueItem := '';
    cbx_cod_unidadeOrcam.ValItems.Clear;
    cbx_cod_unidadeOrcam.Refresh;
    CarregarCombos;
  end;
end;

procedure TFrm_Cad_PedidoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Query1.Close;
end;

procedure TFrm_Cad_PedidoCompra.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  Query1.ApplyUpdates;
  with fdt_principal4.spc_cons_adm_ItemPedidoCompra do
  begin
    close;
    if (FStatus = FST_Novo) or (FStatus = FST_Alteracao) then
      Fcod_PedidoCompra := edt_cod_PedidoCompra.Text;
    parambyname('@cod_PedidoCompra').asstring := Fcod_PedidoCompra;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4098 := TFrm_Imp_4098.Create(Self);
  Frm_Imp_4098.QuickRep1.Preview;
  Frm_Imp_4098.Release;
  Fcod_PedidoCompra := '';
  //fdt_principal4.spc_cons_adm_ItemPedidoCompra.close;
  If Fstatus = FST_Alteracao then
    pnl_alerta.Visible := true;
end;

procedure TFrm_Cad_PedidoCompra.cbx_cod_setorImasfExit(Sender: TObject);
begin
  inherited;
  if (cbx_cod_setorImasf.Text <> '') and (FStatus = FST_Novo) then
  begin
   DB_OpenSQL('select cod_usuarioResponsavel, cod_usuarioChefe from tbl_setorimasf where cod_setorimasf = '+cbx_cod_setorImasf.valueItem);
   Obj_SetFormObjValueByName(self, cbx_cod_usuarioChefe.name, Tab.fieldbyname('cod_usuarioChefe').AsString);
   Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, Tab.fieldbyname('cod_usuarioResponsavel').AsString);
  end;
end;

procedure TFrm_Cad_PedidoCompra.Query1AfterInsert(DataSet: TDataSet);
begin
  inherited;
    numOrdem := inttostr(Query1.recordcount + 1);
    Query1cod_PedidoCompra.Text := edt_cod_PedidoCompra.Text;
    Query1numOrdem_ipc.Text := numOrdem;
end;

procedure TFrm_Cad_PedidoCompra.Query1EditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if Query1discriminacao_ipc.Text = '' then
    Query1.Cancel;
end;

end.
