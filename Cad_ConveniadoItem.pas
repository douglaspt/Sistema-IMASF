unit Cad_ConveniadoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, DB,
  Grids, DBGrids, DBCtrls, Mask, ShellApi, jpeg, Buttons, BEdit, CommCtrl;

type
  TFrm_Cad_ConveniadoItem = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    Panel1: TPanel;
    edt_nome_con: TDCEdit;
    Panel5: TPanel;
    edt_cnpj_con: TDCEdit;
    Panel6: TPanel;
    edt_razao_con: TDCEdit;
    edt_processo_con: TDCEdit;
    edt_nomereduzido_con: TDCEdit;
    dts_Lista: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    PageControl: TPageControl;
    TBS_IncluiManual: TTabSheet;
    Panel8: TPanel;
    edt_dtvalidade_hit: TDCDateEdit;
    TbS_Itens: TTabSheet;
    Label5: TLabel;
    pnl_especial: TPanel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    dbg_conveniadoItens: TDBGrid;
    TabSheet8: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_cod_itemservico: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    TabSheet9: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    dbg_honorarioEspecial: TDBGrid;
    TBS_AlteraManual: TTabSheet;
    Panel22: TPanel;
    edt_dtvalidade2: TDCDateEdit;
    TBS_AlteraLista: TTabSheet;
    TBS_Valores: TTabSheet;
    Panel16: TPanel;
    edt_vlhonorario_hit: TDCEdit;
    Panel23: TPanel;
    edt_fatormult_hit: TDCEdit;
    Panel24: TPanel;
    edt_PorteAnestesico_hit: TDCEdit;
    edt_NumAuxiliares_hit: TDCEdit;
    edt_vlFilme_hit: TDCEdit;
    btn_alteraItemServico: TPDJButton;
    TbS_Principal: TTabSheet;
    GroupBox2: TGroupBox;
    PDJButton5: TPDJButton;
    GroupBox3: TGroupBox;
    PDJButton6: TPDJButton;
    PDJButton7: TPDJButton;
    PDJButton8: TPDJButton;
    PDJButton9: TPDJButton;
    GroupBox4: TGroupBox;
    PDJButton10: TPDJButton;
    PDJButton12: TPDJButton;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel14: TPanel;
    edt_ggr1: TDCEdit;
    edt_gru1: TDCEdit;
    edt_sgr1: TDCEdit;
    edt_iti1: TDCEdit;
    edt_itf1: TDCEdit;
    Panel13: TPanel;
    edt_ggr2: TDCEdit;
    edt_gru2: TDCEdit;
    edt_sgr2: TDCEdit;
    edt_iti2: TDCEdit;
    edt_itf2: TDCEdit;
    Panel12: TPanel;
    edt_ggr3: TDCEdit;
    edt_gru3: TDCEdit;
    edt_sgr3: TDCEdit;
    edt_iti3: TDCEdit;
    edt_itf3: TDCEdit;
    Panel11: TPanel;
    edt_ggr4: TDCEdit;
    edt_gru4: TDCEdit;
    edt_sgr4: TDCEdit;
    edt_iti4: TDCEdit;
    edt_itf4: TDCEdit;
    Panel10: TPanel;
    edt_ggr5: TDCEdit;
    edt_gru5: TDCEdit;
    edt_sgr5: TDCEdit;
    edt_iti5: TDCEdit;
    edt_itf5: TDCEdit;
    PDJButton1: TPDJButton;
    Panel25: TPanel;
    Panel15: TPanel;
    Panel21: TPanel;
    edt_aggr1: TDCEdit;
    edt_agru1: TDCEdit;
    edt_asgr1: TDCEdit;
    edt_aiti1: TDCEdit;
    edt_aitf1: TDCEdit;
    Panel20: TPanel;
    edt_aggr2: TDCEdit;
    edt_agru2: TDCEdit;
    edt_asgr2: TDCEdit;
    edt_aiti2: TDCEdit;
    edt_aitf2: TDCEdit;
    Panel19: TPanel;
    edt_aggr3: TDCEdit;
    edt_agru3: TDCEdit;
    edt_asgr3: TDCEdit;
    edt_aiti3: TDCEdit;
    edt_aitf3: TDCEdit;
    Panel18: TPanel;
    edt_aggr4: TDCEdit;
    edt_agru4: TDCEdit;
    edt_asgr4: TDCEdit;
    edt_aiti4: TDCEdit;
    edt_aitf4: TDCEdit;
    Panel17: TPanel;
    edt_aggr5: TDCEdit;
    edt_agru5: TDCEdit;
    edt_asgr5: TDCEdit;
    edt_aiti5: TDCEdit;
    edt_aitf5: TDCEdit;
    PDJButton2: TPDJButton;
    GroupBox1: TGroupBox;
    cbx_cod_grandegrupo: TDCComboBox;
    RdB_alteragdegrupo: TRadioButton;
    Rdb_G: TRadioButton;
    GrB_Grupo: TGroupBox;
    cbx_cod_grupo: TDCComboBox;
    RdB_ItemGTodos: TRadioButton;
    Rdb_SG: TRadioButton;
    GrB_SubGrupo: TGroupBox;
    cbx_cod_subgrupo: TDCComboBox;
    RdB_ItemSGTodos: TRadioButton;
    RdB_ItemSG: TRadioButton;
    btn_lista: TPDJButton;
    Panel26: TPanel;
    edt_dtvalidade3: TDCDateEdit;
    Pnl_TitLista: TPanel;
    PDJButton13: TPDJButton;
    PDJButton14: TPDJButton;
    PDJButton15: TPDJButton;
    btn_voltar: TPDJButton;
    TbS_ItemSG: TTabSheet;
    pnl_Itemlista: TPanel;
    Panel30: TPanel;
    edt_cod_subgrupo: TDCEdit;
    Panel31: TPanel;
    edt_cod_grupo: TDCEdit;
    Panel32: TPanel;
    edt_cod_grandegrupo: TDCEdit;
    GroupBox5: TGroupBox;
    DBG_Itens: TDBGrid;
    ChB_SelecionaTodos: TCheckBox;
    btn_AlteraItemLista: TPDJButton;
    PDJButton18: TPDJButton;
    Panel27: TPanel;
    edt_retorno_hit: TDCEdit;
    btn_excluiItem: TPDJButton;
    TabSheet1: TTabSheet;
    GroupBox6: TGroupBox;
    Panel28: TPanel;
    edt_itemservicoIni: TDCEdit;
    GroupBox7: TGroupBox;
    PDJButton4: TPDJButton;
    edt_itemservicoFin: TDCEdit;
    PDJButton11: TPDJButton;
    Panel29: TPanel;
    edt_itemservicoIni2: TDCEdit;
    edt_itemservicoFin2: TDCEdit;
    TabSheet2: TTabSheet;
    DBGrid4: TDBGrid;
    DataSource1: TDataSource;
    TabSheet3: TTabSheet;
    mem_obs_hit: TMemo;
    PDJButton3: TPDJButton;
    Label9: TLabel;
    TBS_IncluiManualTUSS: TTabSheet;
    Panel33: TPanel;
    edt_dtvalidadetuss: TDCDateEdit;
    Panel34: TPanel;
    Panel35: TPanel;
    edt_tussggr1: TDCEdit;
    edt_tussgru1: TDCEdit;
    edt_tusssgr1: TDCEdit;
    edt_tussiti1: TDCEdit;
    edt_tussitf1: TDCEdit;
    PDJButton17: TPDJButton;
    PDJButton19: TPDJButton;
    Panel36: TPanel;
    TBS_AlteraManualTUSS: TTabSheet;
    Panel37: TPanel;
    Panel38: TPanel;
    edt_dtvalidadealteratuss: TDCDateEdit;
    Panel39: TPanel;
    Panel40: TPanel;
    edt_tussggr2: TDCEdit;
    edt_tussgru2: TDCEdit;
    edt_tusssgr2: TDCEdit;
    edt_tussiti2: TDCEdit;
    edt_tussitf2: TDCEdit;
    GroupBox8: TGroupBox;
    PDJButton20: TPDJButton;
    PDJButton16: TPDJButton;
    PDJButton21: TPDJButton;
    PDJButton22: TPDJButton;
    PDJButton23: TPDJButton;
    PDJButton24: TPDJButton;
    PDJButton25: TPDJButton;
    GroupBox9: TGroupBox;
    SpeedButton6: TSpeedButton;
    GroupBox10: TGroupBox;
    btn_desativar: TPDJButton;
    rdb_itemAtivo: TRadioButton;
    rdb_itemTodos: TRadioButton;
    btn_SalvarAtivarItem: TPDJButton;
    btn_cancelarAtivarItem: TPDJButton;
    Panel41: TPanel;
    edt_cod_itemAtivoIni: TDCEdit;
    edt_cod_itemAtivoFin: TDCEdit;
    Panel51: TPanel;
    cbx_cod_statusAtivo: TDCComboBox;
    edt_localizar: TBEdit;
    rdb_codigo: TRadioButton;
    rdb_nome: TRadioButton;
    btn_itemhonorario: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    btn_exportaIHE: TPDJButton;
    ckb_alteraFator1: TCheckBox;
    PDJButton26: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure TbS_ItensShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_cod_itemservicoChange(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_alteraItemServicoClick(Sender: TObject);
    procedure btn_listaClick(Sender: TObject);
    procedure Rdb_GClick(Sender: TObject);
    procedure Rdb_SGClick(Sender: TObject);
    procedure RdB_alteragdegrupoClick(Sender: TObject);
    procedure RdB_ItemGTodosClick(Sender: TObject);
    procedure cbx_cod_grandegrupoCloseUp(Sender: TObject);
    procedure cbx_cod_grupoCloseUp(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton12Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure ChB_SelecionaTodosClick(Sender: TObject);
    procedure btn_AlteraItemListaClick(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure TBS_IncluiManualShow(Sender: TObject);
    procedure TBS_AlteraManualShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure btn_excluiItemClick(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure dbg_conveniadoItensDblClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure PDJButton16Click(Sender: TObject);
    procedure PDJButton17Click(Sender: TObject);
    procedure TBS_IncluiManualTUSSShow(Sender: TObject);
    procedure PDJButton20Click(Sender: TObject);
    procedure PDJButton21Click(Sender: TObject);
    procedure PDJButton23Click(Sender: TObject);
    procedure PDJButton24Click(Sender: TObject);
    procedure TBS_AlteraListaShow(Sender: TObject);
    procedure PDJButton15Click(Sender: TObject);
    procedure PDJButton25Click(Sender: TObject);
    procedure btn_desativarClick(Sender: TObject);
    procedure dbg_conveniadoItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rdb_itemAtivoClick(Sender: TObject);
    procedure rdb_itemTodosClick(Sender: TObject);
    procedure btn_SalvarAtivarItemClick(Sender: TObject);
    procedure btn_cancelarAtivarItemClick(Sender: TObject);
    procedure rdb_codigoClick(Sender: TObject);
    procedure rdb_nomeClick(Sender: TObject);
    procedure edt_localizarEnter(Sender: TObject);
    procedure btn_itemhonorarioClick(Sender: TObject);
    procedure btn_exportaIHEClick(Sender: TObject);
    procedure PDJButton26Click(Sender: TObject);
    procedure dbg_honorarioEspecialDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    FaixaIni,
    FaixaFin, conven : String ;
    FStatusEdicao : Integer ;
    procedure LimpaTelaLista;
    function ValidarFaixa(grg, gru, sgr, iti, itf : string) : Boolean;
    procedure MostrarItens(cod_conveniado, cod_subgrupoIS : string);
    procedure MostrarItensEsp(cod_conveniado : string);
    procedure PreencherValores(cod_conveniado, cod_itemservico:string);
    procedure IncluiItemHonorario(faixa, dtvenc, grg, grui, gruf, sgri, sgrf, iti, itf : string);
    procedure AlteraItemHonorario(cod_itemservico, faixa, dtvenc, grg, grui, gruf, sgri, sgrf, iti, itf :string);
    procedure AlteraItensServico(agg, agr, asg, ait, aitf: string);
  public
    { Public declarations }
    wCod_Conveniado, FItemObservacao : String ;
    Cont: Integer;
    FPesquisaDetalhadaONOF : Boolean;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_ConveniadoItem: TFrm_Cad_ConveniadoItem;

implementation
uses Constantes, Fun_Obj, Fun_Str, Fun_DB, DLG_Mensagem, Dtm_Principal, Fun_Acesso,
Cad_ItemHonoraEspecial, Bas_Impressao, dtm_principal6;
{$R *.DFM}

const
  FST_ConsultaItem = 100 ;
  FST_IncluiItem   = 110 ;
  FST_IncluiItemLista = 120 ;
  FST_AlteraItem = 130 ;
  FST_AlteraItemLista = 140 ;
  FST_IncluiItemTUSS = 150;
  FST_AlteraItemTUSS = 160;
  FST_AlteraItemListaTUSS = 170;
  FST_IncluiItemListaTUSS = 180;

procedure TFrm_Cad_ConveniadoItem.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Itens de Serviços dos Conveniados';
  FEditChave    := 'edt_cod_conveniado' ;
  FEditAlteracao:= 'edt_nome_con' ;
  FUltFoco      := 'edt_site_con' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con, cnpj_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social, CNPJ' ;
  FTransacao    := false;
  inherited;

end;

procedure TFrm_Cad_ConveniadoItem.BAS_LimparTela;
begin
  inherited;
  PageControl.ActivePageIndex := 0 ;
  Fdt_principal.spc_cons_med_conveniadoItens.close;
  Fdt_principal.spc_cons_med_conveniadoItemdetalhe.close;
  Fdt_principal.spc_cons_med_conveniadoItemEspecial.close;
  fdt_principal6.spc_cons_med_conveniadoItemCrm.close;
  edt_localizar.Text := '';
end;

procedure TFrm_Cad_ConveniadoItem.LimpaTelaLista;
begin
  GrB_SubGrupo.Visible := false ;
  GrB_Grupo.Visible := false ;
  RdB_alteragdegrupo.Checked := true;
  RdB_ItemGTodos.Checked := true;
  RdB_ItemSGTodos.Checked := true;
  cbx_cod_grandegrupo.Clear;
  cbx_cod_subgrupo.Clear;
  cbx_cod_grupo.Clear;
  PageControl.ActivePage := TbS_Principal ;
  ckb_alteraFator1.Checked := false;
  ckb_alteraFator1.Visible := false;
  EscreveLog(btn_voltar.Name);
end;

function TFrm_Cad_ConveniadoItem.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  result := DB_Update(Frm) ;
  PageControl.Visible := false ;
end;

procedure TFrm_Cad_ConveniadoItem.MostrarItens(cod_conveniado, cod_subgrupoIS : string);
begin
  if (FStatusEdicao = FST_ConsultaItem) or (FStatusEdicao = FST_AlteraItemLista) then begin
//    dts_Lista.DataSet := Fdt_principal.spc_cons_med_conveniadoItens ;
    with Fdt_principal.spc_cons_med_conveniadoItens do begin
      close;
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
      ParamByName('@cod_itemservicoIni').AsString := '0' ;
      ParamByName('@cod_itemservicoFin').AsString := '0' ;
      if rdb_itemAtivo.Checked then
        ParamByName('@cod_statusAtivo').AsString := '1'
      else
        ParamByName('@cod_statusAtivo').AsString := '0';
      if rdb_codigo.Checked = True then
         begin
         ParamByName('@descricao').AsString := '';
         ParamByName('@cod_itemservicoIni').AsString := edt_localizar.Text;
         ParamByName('@cod_itemservicoFin').AsString := edt_localizar.Text;
         end
      else
         ParamByName('@descricao').AsString := edt_localizar.Text;
      open;
    end;
  end else begin
    dts_Lista.DataSet := Fdt_principal.spc_cons_med_Itens ;
    with Fdt_principal.spc_cons_med_Itens do begin
      close;
      ParamByName('@cod_subgrupoIS').AsString := cod_subgrupoIS ;
      open;
    end;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.MostrarItensEsp(cod_conveniado : string);
begin
{
  DB_OpenSQL('select c.cod_itemservico, e.nome_its from tbl_itemservico e, tbl_itemhonorarioespecial c '+
  'where e.cod_itemservico = c.cod_itemservico and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_itemservico');
  LsB_Itens.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Itens.Items.Add(STR_AddZeros(Tab.FieldByName('cod_itemservico').AsString, 8)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_its').AsString, 50));
    Tab.Next;
  end;
  }
end;

procedure TFrm_Cad_ConveniadoItem.BAS_Alterar(Frm:Tform);
  var
    conv : string ;
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  inherited ;
  if FStatus = FST_Alteracao then begin
    conv := edt_cod_conveniado.text ;
    edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
    edt_cod_conveniado.text := conv ;
    PageControl.Visible := true ;
  end;
end;

function TFrm_Cad_ConveniadoItem.BAS_ValidarCadastro: boolean ;
begin
  result := false ;
end;

procedure TFrm_Cad_ConveniadoItem.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_ConveniadoItem.FormShow(Sender: TObject);
begin
  inherited;
  edt_dtvalidade_hit.Date := date ;
  edt_localizar.MaxLength:= 8;
  edt_localizar.Text:= '';
  rdb_codigo.Checked:= True;
  edt_localizar.EditMask:= '99999999';
  edt_localizar.NumbersOnly:= True;
  if wCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := wCod_Conveniado;
    BAS_Alterar(Frm_Cad_ConveniadoItem);
  end;
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
  DateTime_SetFormat(edt_dtvalidade_hit.Handle, 'gg');
end;

procedure TFrm_Cad_ConveniadoItem.btn_salvarClick(Sender: TObject);
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  inherited;
end;

procedure TFrm_Cad_ConveniadoItem.btn_cancelarClick(Sender: TObject);
begin
  inherited;
if FStatus = FST_Normal then
  PageControl.Visible := false ;
end;

procedure TFrm_Cad_ConveniadoItem.TbS_ItensShow(Sender: TObject);
begin
  inherited;
  MostrarItens(STR_RemoveChar(edt_cod_conveniado.text, '-'),'0');
  PageControl2.ActivePageIndex := 0;
end;

function TFrm_Cad_ConveniadoItem.ValidarFaixa(grg, gru, sgr, iti, itf : string) : Boolean;
begin
  if (not BAS_ValidarCampo(grg, 'O Grande Grupo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(gru, 'O Grupo de Serviço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(sgr, 'O Sub Grupo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(iti, 'O Item de Serviço Inicial deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(itf, 'O Item de Serviço Final deve ser preenchido !', VLD_Preenchido )) then begin
    result := false;
    Dlg_Erro('Não foi possível Incluir os Itens de Serviços para este Convêniado', self);
  end else
    result := true ;
end;


procedure TFrm_Cad_ConveniadoItem.IncluiItemHonorario(faixa, dtvenc, grg, grui, gruf, sgri, sgrf, iti, itf : string);
begin
  if grg = '' then exit ;
//  if not ValidarFaixa(grg, grui, gruf, sgri, sgrf, iti, itf) then
//    exit;
  if (FStatusEdicao = FST_IncluiItem) or (FStatusEdicao = FST_IncluiItemLista) then
  begin
    FaixaIni := grg + STR_AddZeros(grui, 2) +
    STR_AddZeros(sgri, 2) + STR_AddZeros(iti, 3) ;
    FaixaFin := grg + STR_AddZeros(gruf, 2) +
    STR_AddZeros(sgrf, 2) + STR_AddZeros(itf, 3) ;
  end;
  if (FStatusEdicao = FST_IncluiItemTUSS) or (FStatusEdicao = FST_IncluiItemListaTUSS) then
  begin
    FaixaIni := grg + grui +  STR_AddZeros(sgri, 2) + STR_AddZeros(iti, 4);
    FaixaFin := grg + gruf +  STR_AddZeros(sgrf, 2) + STR_AddZeros(itf, 4);
  end;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if DB_ExecSQL('exec spc_inclui_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+FaixaIni+', '+FaixaFin) then begin
    Dlg_Ok('Itens de Serviço para "'+Faixa+'" incluidos com sucesso !', self);
    PageControl.ActivePage := TbS_Principal ;
    LimpaTelaLista;
  end else
    Dlg_Erro('Não foi possível incluir os Itens de Serviço para "'+Faixa+'"', self);
end;

procedure TFrm_Cad_ConveniadoItem.AlteraItemHonorario(cod_itemservico, faixa, dtvenc, grg, grui, gruf, sgri, sgrf, iti, itf :string);
begin
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  if cod_itemservico = '' then
  begin
    if grg = '' then exit ;
    if (FStatusEdicao = FST_AlteraItem) or (FStatusEdicao = FST_AlteraItemLista) then
    begin
      FaixaIni := grg + STR_AddZeros(grui, 2) +
      STR_AddZeros(sgri, 2) + STR_AddZeros(iti, 3) ;
      FaixaFin := grg + STR_AddZeros(gruf, 2) +
      STR_AddZeros(sgrf, 2) + STR_AddZeros(itf, 3) ;
    end;
    if (FStatusEdicao = FST_AlteraItemTUSS) or (FStatusEdicao = FST_AlteraItemListaTUSS) then
    begin
      FaixaIni := grg + grui + STR_AddZeros(sgri, 2) + STR_AddZeros(iti, 4);
      FaixaFin := grg + gruf + STR_AddZeros(sgrf, 2) + STR_AddZeros(itf, 4);
    end;
    if ckb_alteraFator1.Checked then
    begin
      DB_ExecSQL('delete from tbl_itemhonorario where cod_conveniado = '+conven+
      ' and cod_itemservico = '+FaixaIni+' and dtvalidade_hit = '+DB_FormatDataSQL(dtvenc, ftDate));
      Db_ExecSQL('insert into tbl_itemhonorario values('+conven+','+FaixaIni+','+DB_FormatDataSQL(dtvenc, ftDate)+
      ','+DB_FormatDataSQL(edt_vlhonorario_hit.Text, ftFloat)+','+ edt_PorteAnestesico_hit.text+
      ','+edt_NumAuxiliares_hit.Text+', '+ DB_FormatDataSQL(edt_vlFilme_hit.text, ftFloat)+
      ','+DB_FormatDataSQL(edt_fatormult_hit.text, ftFloat)+', 999999,'+edt_retorno_hit.Text+
      ', '''' , 1)');
      Dlg_Ok('Itens de Serviço"'+Faixa+'" alterados com sucesso !', self);
      PageControl.ActivePage := TbS_Principal ;
    end
    else
    begin
      if DB_ExecSQL('exec spc_altera_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+FaixaIni+
      ', '+FaixaFin+', '+DB_FormatDataSQL(edt_vlhonorario_hit.Text, ftFloat)+', '''+
      edt_PorteAnestesico_hit.text+''', '''+
      edt_NumAuxiliares_hit.text+''', '+DB_FormatDataSQL(edt_vlFilme_hit.text, ftFloat)+
      ', '+DB_FormatDataSQL(edt_fatormult_hit.text, ftFloat)+', '''+edt_retorno_hit.Text+'''') then
      begin
        Dlg_Ok('Itens de Serviço"'+Faixa+'" alterados com sucesso !', self);
        PageControl.ActivePage := TbS_Principal ;
      end
      else
      begin
        if Dlg_YesNo('ATENÇÃO ! Ocorreu um erro ao tentar alterar os honorários selecionados ! Possívelmente existem honorários para o mesmo dia de Vencimento Selecionado. Deseja Sobrescrever os Valores de Honorários para o Mesmo Vencimento ?', self) then
        begin
          DB_ExecSQL('exec spc_exclui_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+FaixaIni+', '+FaixaFin);
          if DB_ExecSQL('exec spc_altera_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+FaixaIni+
          ', '+FaixaFin+', '+DB_FormatDataSQL(edt_vlhonorario_hit.Text, ftFloat)+', '''+
          edt_PorteAnestesico_hit.text+''', '''+
          edt_NumAuxiliares_hit.text+''', '+DB_FormatDataSQL(edt_vlFilme_hit.text, ftFloat)+
          ', '+DB_FormatDataSQL(edt_fatormult_hit.text, ftFloat)+', '''+edt_retorno_hit.Text+'''') then
          begin
            Dlg_Ok('Itens de Serviço"'+Faixa+'" alterados com sucesso !', self);
            PageControl.ActivePage := TbS_Principal ;
          end
          else
            Dlg_Erro('Não foi possível alterar os Itens de Serviço'+Faixa+' !', self);
        end;
      end;

    end;
  end
  else
  begin
    Faixa := ' Cod. "'+cod_itemservico+'"' ;
    if not DB_ExecSQL('exec spc_altera_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+cod_itemservico+
    ', '+cod_itemservico+', '+DB_FormatDataSQL(edt_vlhonorario_hit.Text, ftFloat)+', '''+
    edt_PorteAnestesico_hit.text+''', '''+
    edt_NumAuxiliares_hit.text+''', '+DB_FormatDataSQL(edt_vlFilme_hit.text, ftFloat)+
    ', '+DB_FormatDataSQL(edt_fatormult_hit.text, ftFloat)+', '''+edt_retorno_hit.Text+'''') then
    begin
      DB_ExecSQL('exec spc_exclui_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+cod_itemservico+', '+cod_itemservico);
      if not DB_ExecSQL('exec spc_altera_itemhonorario '+conven+', '+DB_FormatDataSQL(dtvenc, ftDate)+', '+cod_itemservico+
      ', '+cod_itemservico+', '+DB_FormatDataSQL(edt_vlhonorario_hit.Text, ftFloat)+', '''+
      edt_PorteAnestesico_hit.text+''', '''+
      edt_NumAuxiliares_hit.text+''', '+DB_FormatDataSQL(edt_vlFilme_hit.text, ftFloat)+
      ', '+DB_FormatDataSQL(edt_fatormult_hit.text, ftFloat)+', '''+edt_retorno_hit.Text+'''') then
        Dlg_Erro('Não foi possível alterar os Itens de Serviço'+Faixa+' !', self);
    end;

    PageControl.ActivePage := TbS_Principal ;
    LimpaTelaLista;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtvalidade_hit.Name, 'A Data de Validade deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_ggr1.Name, 'O Grande Grupo deve ser Preenchido!', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_gru1.Name, 'O Grupo de Serviço deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sgr1.Name, 'O Sub Grupo deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_iti1.name, 'O Item de Serviço Inicial deve ser preenchido, deve ser preenchido com número maior que zero !', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_itf1.Name, 'O Item de Serviço Final deve ser preenchido, deve ser preenchido com número maior que zero !', VLD_NumMaiorZero )) then
    Exit;
  IncluiItemHonorario('Faixa 1', edt_dtvalidade_hit.text, edt_ggr1.text, edt_gru1.text,
  edt_gru1.text, edt_sgr1.text, edt_sgr1.text, edt_iti1.text, edt_itf1.text);
  IncluiItemHonorario('Faixa 2', edt_dtvalidade_hit.text, edt_ggr2.text, edt_gru2.text,
  edt_gru2.text, edt_sgr2.text, edt_sgr2.text, edt_iti2.text, edt_itf2.text);
    IncluiItemHonorario('Faixa 3', edt_dtvalidade_hit.text, edt_ggr3.text, edt_gru3.text,
  edt_gru3.text, edt_sgr3.text, edt_sgr3.text, edt_iti3.text, edt_itf3.text);
    IncluiItemHonorario('Faixa 4', edt_dtvalidade_hit.text, edt_ggr4.text, edt_gru4.text,
  edt_gru4.text, edt_sgr4.text, edt_sgr4.text, edt_iti4.text, edt_itf4.text);
    IncluiItemHonorario('Faixa 5', edt_dtvalidade_hit.text, edt_ggr5.text, edt_gru5.text,
  edt_gru5.text, edt_sgr5.text, edt_sgr5.text, edt_iti5.text, edt_itf5.text);
end;

procedure TFrm_Cad_ConveniadoItem.edt_cod_itemservicoChange(Sender: TObject);
begin
  inherited;
  if (TRIM(edt_cod_conveniado.text) <> '') and (edt_cod_itemservico.text <> '') then
  begin
    if FPesquisaDetalhadaONOF then
    begin
      with Fdt_principal.spc_cons_med_conveniadoItemdetalhe do begin
        close;
        ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
        ParamByName('@cod_itemservico').AsString := edt_cod_itemservico.text ;
        open;
      end;
      with Fdt_principal.spc_cons_med_conveniadoItemEspecial do begin
        close;
        ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
        ParamByName('@cod_itemservico').AsString := edt_cod_itemservico.text ;
        open;
        pnl_especial.visible := recordcount > 0 ;
      end;
    end;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.PreencherValores(cod_conveniado, cod_itemservico:string);
begin
  inherited;
  if DB_OpenSQL('select dtvalidade_hit, vlhonorario_hit, PorteAnestesico_hit, NumAuxiliares_hit, vlFilme_hit, fatormult_hit, retorno_hit '+
  ' from tbl_itemhonorario where cod_conveniado = '+cod_conveniado+' and cod_itemservico = '+cod_itemservico+
  ' group by dtvalidade_hit, vlhonorario_hit, PorteAnestesico_hit, NumAuxiliares_hit, vlFilme_hit, fatormult_hit, retorno_hit '+
  ' order by dtvalidade_hit desc') > 0 then begin
            edt_vlhonorario_hit.text := Tab.FieldByName('vlhonorario_hit').AsString ;
    edt_fatormult_hit.text := Tab.FieldByName('fatormult_hit').AsString ;
    edt_PorteAnestesico_hit.text := Tab.FieldByName('PorteAnestesico_hit').AsString ;
    edt_NumAuxiliares_hit.text := Tab.FieldByName('NumAuxiliares_hit').AsString ;
    edt_vlFilme_hit.text := Tab.FieldByName('vlFilme_hit').AsString ;
    edt_retorno_hit.text := Tab.FieldByName('retorno_hit').AsString;
    if edt_fatormult_hit.Text = '1' then
      ckb_alteraFator1.Visible := true;
  end;
  DB_ClearSQL;
end;

procedure TFrm_Cad_ConveniadoItem.AlteraItensServico(agg, agr, asg, ait, aitf: string);
begin
  if agg = '' then exit ;
  if (FStatusEdicao = FST_AlteraItem) then
  begin
    FaixaIni := agg + STR_AddZeros(agr, 2) +
    STR_AddZeros(asg, 2) + STR_AddZeros(ait, 3) ;
    FaixaFin := agg + STR_AddZeros(agr, 2) +
    STR_AddZeros(asg, 2) + STR_AddZeros(aitf, 3) ;
  end;
  if (FStatusEdicao = FST_AlteraItemTUSS) then
  begin
    FaixaIni := agg + agr + STR_AddZeros(asg, 2) + STR_AddZeros(ait, 4);
    FaixaFin := agg + agr + STR_AddZeros(asg, 2) + STR_AddZeros(aitf, 4);
  end;
  edt_vlhonorario_hit.text := '' ;
  edt_fatormult_hit.text := '' ;
  edt_PorteAnestesico_hit.text := '' ;
  edt_NumAuxiliares_hit.text := '' ;
  edt_vlFilme_hit.text := '' ;
  edt_retorno_hit.Text := '';
  if FaixaIni = FaixaFin then begin
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    PreencherValores(conven,FaixaIni);
  end;
  PageControl.ActivePage := TBS_Valores ;
  end;

procedure TFrm_Cad_ConveniadoItem.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtvalidade2.Name, 'A Data de Validade deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  AlteraItensServico(edt_aggr1.text, edt_agru1.text, edt_asgr1.text, edt_aiti1.text, edt_aitf1.text);
  AlteraItensServico(edt_aggr2.text, edt_agru2.text, edt_asgr2.text, edt_aiti2.text, edt_aitf2.text);
  AlteraItensServico(edt_aggr3.text, edt_agru3.text, edt_asgr3.text, edt_aiti3.text, edt_aitf3.text);
  AlteraItensServico(edt_aggr4.text, edt_agru4.text, edt_asgr4.text, edt_aiti4.text, edt_aitf4.text);
  AlteraItensServico(edt_aggr5.text, edt_agru5.text, edt_asgr5.text, edt_aiti5.text, edt_aitf5.text);
end;

procedure TFrm_Cad_ConveniadoItem.btn_alteraItemServicoClick(Sender: TObject);
var
  i : integer ;
  s : string;
begin
  inherited;
  if (FStatusEdicao = FST_AlteraItemLista) or (FStatusEdicao = FST_AlteraItemListaTUSS) then begin
    if RdB_ItemSG.Checked then
    begin
      with DBG_Itens do begin
        for i:= 0 to SelectedRows.Count-1 do
        begin
          DataSource.DataSet.GotoBookmark(pointer(SelectedRows.Items[i]));
          AlteraItemHonorario(Fields[0].AsString ,'', edt_dtvalidade3.text, '', '', '', '', '', '', '');
        end;
      end;
      Exit;
    end;
    if (RdB_ItemSGTodos.Checked) and (Rdb_SG.Checked) then begin
      s := copy(cbx_cod_subgrupo.valueitem, (Length(cbx_cod_subgrupo.valueitem) - 1),2);
      if (cbx_cod_grandegrupo.valueitem = 6) then
        AlteraItemHonorario('','', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, s, s, '0001', '9999')
      else
        AlteraItemHonorario('' ,'', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, s, s, '001', '999');
      Exit;
    end;
    if (RdB_ItemGTodos.Checked) and (Rdb_G.Checked) then begin
      if (cbx_cod_grandegrupo.valueitem = 6) then
        AlteraItemHonorario('', '', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, '01', '99', '0001', '9999')
      else
        AlteraItemHonorario('' ,'', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, '01', '99', '001', '999');
      Exit;
    end;
    if RdB_alteragdegrupo.Checked then begin
      if (cbx_cod_grandegrupo.valueitem = 6) then
        AlteraItemHonorario('', '', edt_dtvalidade3.text,  cbx_cod_grandegrupo.valueitem, '1', '9', '01', '99', '0001', '9999')
      else
        AlteraItemHonorario('' ,'', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, '01', '99', '01', '99', '001', '999');
      Exit;
    end;
  end;
  if (FStatusEdicao = FST_AlteraItem) then
  begin
    if not ValidarFaixa(edt_aggr1.name, edt_agru1.name, edt_asgr1.name, edt_aiti1.name, edt_aitf1.name) then
      exit;
    AlteraItemHonorario('',' para "Faixa 1"', edt_dtvalidade2.text, edt_aggr1.text, edt_agru1.text, edt_agru1.text, edt_asgr1.text, edt_asgr1.text, edt_aiti1.text, edt_aitf1.text);
  end;
  if (FStatusEdicao = FST_AlteraItemTUSS) then
  begin
    if not ValidarFaixa(edt_tussggr2.name, edt_tussgru2.name, edt_tusssgr2.name, edt_tussiti2.name, edt_tussitf2.name) then
      exit;
    AlteraItemHonorario('',' para "Faixa 1"', edt_dtvalidadealteratuss.text, edt_tussggr2.text, edt_tussgru2.text, edt_tussgru2.text, edt_tusssgr2.text, edt_tusssgr2.text, edt_tussiti2.text, edt_tussitf2.text);
  end;
  EscreveLog(btn_alteraItemServico.Name);
end;

procedure TFrm_Cad_ConveniadoItem.btn_listaClick(Sender: TObject);
var
 s : string;
begin
  inherited;
  edt_vlhonorario_hit.text := '' ;
  edt_fatormult_hit.text := '' ;
  edt_PorteAnestesico_hit.text := '' ;
  edt_NumAuxiliares_hit.text := '' ;
  edt_vlFilme_hit.text := '' ;
  edt_retorno_hit.Text := '';
  if edt_dtvalidade3.text = '' then begin
    Dlg_Alerta('A Data de Validade tem que ser Preenchida!',self);
    Exit;
  end;
  if (FStatusEdicao = FST_AlteraItemLista) or (FStatusEdicao = FST_AlteraItemListaTUSS) then begin
    if RdB_ItemSG.Checked then begin
      MostrarItens(STR_RemoveChar(edt_cod_conveniado.text, '-'),cbx_cod_subgrupo.valueitem);
      edt_cod_grandegrupo.text := cbx_cod_grandegrupo.text ;
      edt_cod_grupo.text := cbx_cod_grupo.text ;
      edt_cod_subgrupo.text := cbx_cod_subgrupo.text ;
      PageControl.ActivePage := TbS_ItemSG ;
    end else
      PageControl.ActivePage := TBS_Valores ;
  end else begin
    s := copy(cbx_cod_subgrupo.valueitem, (Length(cbx_cod_subgrupo.valueitem) - 1),2);
    if (RdB_ItemSGTodos.Checked) and (Rdb_SG.Checked) then begin
      if (cbx_cod_grandegrupo.valueitem = 6) then
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, s, s, '0001', '9999')
      else
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, s, s, '001', '999');
      Exit;
    end;
    if (RdB_ItemGTodos.Checked) and (Rdb_G.Checked) then begin
      if (cbx_cod_grandegrupo.valueitem = 6) then
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, '01', '99', '0001', '9999')
      else
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, '01', '99', '001', '999');
      Exit;
    end;
    if RdB_alteragdegrupo.Checked then begin
      if (cbx_cod_grandegrupo.valueitem = 6) then
        IncluiItemHonorario('', edt_dtvalidade3.text,  cbx_cod_grandegrupo.valueitem, '1', '9', '01', '99', '0001', '9999')
      else
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem, '00', '99', '01', '99', '001', '999');
      Exit;
    end;
      MostrarItens(STR_RemoveChar(edt_cod_conveniado.text, '-'), cbx_cod_subgrupo.valueitem);
      edt_cod_grandegrupo.text := cbx_cod_grandegrupo.text ;
      edt_cod_grupo.text := cbx_cod_grupo.text ;
      edt_cod_subgrupo.text := cbx_cod_subgrupo.text ;
      PageControl.ActivePage := TbS_ItemSG ;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.Rdb_GClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_grandegrupo.Text <> '' then
  begin
    Obj_LoadCombo(Self, 'cbx_cod_grupo', 'cod_grupo, nome_gru', 'cod_grupo', 'tbl_grupo where cod_grandegrupo = '+
    cbx_cod_grandegrupo.valueitem);
    GrB_Grupo.Visible := true ;
  end
  else begin
    RdB_alteragdegrupo.Checked := true;
    cbx_cod_grandegrupo.SetFocus;
  end;

end;

procedure TFrm_Cad_ConveniadoItem.Rdb_SGClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_grupo.Text <> '' then
  begin
    Obj_LoadCombo(Self, 'cbx_cod_subgrupo', 'substring(cast(cod_subgrupo as char(6)),4,2), nome_sgr', 'cod_subgrupo', 'tbl_subgrupo where cod_grupo = '+
    cbx_cod_grupo.valueitem+' and cod_grandegrupo = '+cbx_cod_grandegrupo.valueItem);
    GrB_SubGrupo.Visible := true ;
  end
  else begin
    RdB_ItemGTodos.Checked := true;
    cbx_cod_grupo.SetFocus;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.RdB_alteragdegrupoClick(Sender: TObject);
begin
  inherited;
  GrB_Grupo.Visible := false ;
end;

procedure TFrm_Cad_ConveniadoItem.RdB_ItemGTodosClick(Sender: TObject);
begin
  inherited;
  GrB_SubGrupo.Visible := false ;
end;

procedure TFrm_Cad_ConveniadoItem.cbx_cod_grandegrupoCloseUp(
  Sender: TObject);
begin
  inherited;
  if cbx_cod_grupo.Visible then
    Obj_LoadCombo(Self, 'cbx_cod_grupo', 'cod_grupo, nome_gru', 'cod_grupo', 'tbl_grupo where cod_grandegrupo = '+
    cbx_cod_grandegrupo.valueitem);
  Application.ProcessMessages;  
end;

procedure TFrm_Cad_ConveniadoItem.cbx_cod_grupoCloseUp(Sender: TObject);
begin
  inherited;
  if GrB_SubGrupo.Visible then
    Obj_LoadCombo(Self, 'cbx_cod_subgrupo', 'substring(cast(cod_subgrupo as char(6)),4,2), nome_sgr', 'cod_subgrupo', 'tbl_subgrupo where cod_grupo = '+
    cbx_cod_grupo.valueitem+' and cod_grandegrupo = '+cbx_cod_grandegrupo.valueItem);
  Application.ProcessMessages;   
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton5Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_ConsultaItem ;
  PageControl.ActivePage := TbS_Itens ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton12Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePage := TbS_Principal ;
  ckb_alteraFator1.Checked := false;
  Fdt_principal.spc_cons_med_conveniadoItens.close;
  Fdt_principal.spc_cons_med_conveniadoItemdetalhe.close;
  Fdt_principal.spc_cons_med_conveniadoItemEspecial.close;
  fdt_principal6.spc_cons_med_conveniadoItemCrm.close;
  edt_localizar.Text := '';
  EscreveLog(btn_voltar.Name);
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton6Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_IncluiItem ;
  PageControl.ActivePage := TBS_IncluiManual ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton9Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_AlteraItemLista ;
  Pnl_TitLista.Caption := 'Alteração de Itens de Serviço a Partir de Uma Lista';
  btn_lista.caption := '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)';
  PageControl.ActivePage := TBS_AlteraLista ;
  btn_alteraItemServico.caption := '&Alterar Itens de Serviço conforme a(s) Faixa(s) preenchida(s)' ;
  pnl_Itemlista.Caption := 'Alteração de Itens de Serviço a Partir de Uma Lista' ;
  btn_AlteraItemLista.CAption := '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)' ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton8Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_AlteraItem ;
  PageControl.ActivePage := TBS_AlteraManual ;
end;

procedure TFrm_Cad_ConveniadoItem.ChB_SelecionaTodosClick(Sender: TObject);
begin
  inherited;
    with Fdt_principal.spc_cons_med_conveniadoItens do begin
      Prior;
      while not EOF do begin
        DBG_Itens.SelectedRows.CurrentRowSelected := ChB_SelecionaTodos.Checked  ;
        Next;
      end;
    end;
end;

procedure TFrm_Cad_ConveniadoItem.btn_AlteraItemListaClick(Sender: TObject);
var
  i : integer ;
begin
  inherited;
  edt_vlhonorario_hit.text := '' ;
  edt_fatormult_hit.text := '' ;
  edt_PorteAnestesico_hit.text := '' ;
  edt_NumAuxiliares_hit.text := '' ;
  edt_vlFilme_hit.text := '' ;
  edt_retorno_hit.Text := '';
  if (FStatusEdicao = FST_AlteraItemLista) then begin
    if DBG_Itens.SelectedRows.Count <= 1 then begin
      FaixaIni := DBG_Itens.SelectedField.AsString;
      FaixaFin := DBG_Itens.SelectedField.AsString;
      conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
      PreencherValores(conven,FaixaIni);
    end;
    PageControl.ActivePage := TBS_Valores ;
  end else begin
    with DBG_Itens do begin
      for i:=0 to SelectedRows.Count-1 do
      begin
        DataSource.DataSet.GotoBookmark(pointer(SelectedRows.Items[i]));
//        IncluiItemHonorario(Fields[0].AsString ,'', edt_dtvalidade3.text, '', '', '', '', '', '', '');
        IncluiItemHonorario('', edt_dtvalidade3.text, cbx_cod_grandegrupo.valueitem,
        cbx_cod_grupo.valueitem, cbx_cod_grupo.valueitem, copy(Fields[0].AsString,4,2),
        copy(Fields[0].AsString,4,2), copy(Fields[0].AsString,6,3), copy(Fields[0].AsString,6,3));
      end;
    end;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton7Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_IncluiItemLista ;
  Pnl_TitLista.Caption := 'Inclusão de Itens de Serviço a Partir de Uma Lista';
  btn_lista.caption := '&Incluir Itens de Serviço conforme Lista(s) Selecionada(s)';
  PageControl.ActivePage := TBS_AlteraLista ;
  btn_alteraItemServico.caption := '&Incluir Itens de Serviço conforme a(s) Faixa(s) preenchida(s)' ;
  pnl_Itemlista.Caption := 'Incluir de Itens de Serviço a Partir de Uma Lista' ;
  btn_AlteraItemLista.CAption := '&Incluir Itens de Serviço conforme Lista(s) Selecionada(s)' ;
end;

procedure TFrm_Cad_ConveniadoItem.TBS_IncluiManualShow(Sender: TObject);
begin
  inherited;
  edt_ggr1.text := '' ;
  edt_gru1.text := '' ;
  edt_sgr1.text := '' ;
  edt_iti1.text := '' ;
  edt_itf1.text := '' ;
end;

procedure TFrm_Cad_ConveniadoItem.TBS_AlteraManualShow(Sender: TObject);
begin
  inherited;
  edt_aggr1.text := '' ;
  edt_agru1.text := '' ;
  edt_asgr1.text := '' ;
  edt_aiti1.text := '' ;
  edt_aitf1.text := '' ;
end;

procedure TFrm_Cad_ConveniadoItem.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if rdb_codigo.Checked = True then
     if (length(edt_localizar.text) > 0) and (length(edt_localizar.text) < 8) then
        begin
        Dlg_Alerta('Para pesquisa por código, digite 8 caracteres!',self);
        Exit;
        end;
  inc(Cont);
//  TbS_ItensShow(Self);
  if rdb_codigo.Checked then
    Fdt_principal.spc_cons_med_conveniadoItens.Locate('cod_itemservico', edt_localizar.text, [loCaseInsensitive]);
  if rdb_nome.Checked then
    if Copy(edt_localizar.Text,1,1) <> '' then
      begin
        if Cont = 1 then
          Fdt_principal.spc_cons_med_conveniadoItens.Locate('nome_its', edt_localizar.text, [lopartialkey])
        else
          if not Fdt_principal.spc_cons_med_conveniadoItens.Eof then
            Fdt_principal.spc_cons_med_conveniadoItens.Next
        else
        begin
          Fdt_principal.spc_cons_med_conveniadoItens.First;
          Exit;
        end;
      if pos(edt_localizar.Text,Fdt_principal.spc_cons_med_conveniadoItens.FieldByName('nome_its').Text) > 0 then
        Exit
      else
        SpeedButton6Click(Self);
      end;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton10Click(Sender: TObject);
begin
  inherited;
{  Hide;
  Frm_Cad_ItemHonoraEspecial := TFrm_Cad_ItemHonoraEspecial.Create(Self);
  Frm_Cad_ItemHonoraEspecial.FCod_Conv := STR_RemoveChar(edt_cod_conveniado.text, '-');
  Frm_Cad_ItemHonoraEspecial.ShowModal;
  Frm_Cad_ItemHonoraEspecial.Release;
  Show; }
end;

procedure TFrm_Cad_ConveniadoItem.btn_excluiItemClick(Sender: TObject);
begin
  inherited;
{  if Dlg_YesNo('Tem certeza que deseja Excluir o Item?',self) then
  begin
    DB_OpenSQL('select count(cod_itemservico) as total from tbl_itemconta where cod_conveniado = '+
    STR_RemoveChar(edt_cod_conveniado.text, '-')+' and status_itc = 1000 and cod_itemservico = '+
    Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString);
    if Tab.FieldByName('total').AsInteger > 0 then
      if not Dlg_YesNo('"ATENÇÃO" - Este Item ja foi ou está sendo utilizado tem certeza que Deseja Excluí-lo?',self) then
        Exit;
    DB_ExecSQL('delete from tbl_itemhonorario where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' and cod_itemservico = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString);
    Fdt_principal.spc_cons_med_conveniadoItens.close;
    Fdt_principal.spc_cons_med_conveniadoItens.open;
    edt_processo_con.SetFocus;
  end;  }
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton4Click(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_med_conveniadoItens01 do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := edt_itemservicoIni.Text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_itemservicoFin.Text;
    if rdb_itemAtivo.Checked then
     ParamByName('@cod_statusAtivo').AsString := '1'
    else
      ParamByName('@cod_statusAtivo').AsString := '0';
    open;
    if recordcount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
       close;
       exit;
       end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_conveniadoItens01;
  Frm_Bas_Impressao.FCampo1 := STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-'));
  Frm_Bas_Impressao.FCampo2 := edt_nome_con.Text;
  Frm_Bas_Impressao.showReport(4152);
  Fdt_principal.spc_cons_med_conveniadoItens01.close;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton11Click(Sender: TObject);
begin
  inherited;
  with fdt_principal6.spc_cons_med_conveniadoItemespecial02 do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := edt_itemservicoIni2.Text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_itemservicoFin2.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_conveniadoItemespecial02;
  Frm_Bas_Impressao.FCampo1 := STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-'));
  Frm_Bas_Impressao.FCampo2 := edt_nome_con.Text;
  Frm_Bas_Impressao.showReport(4154);
  fdt_principal6.spc_cons_med_conveniadoItemespecial02.close;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet7Show(Sender: TObject);
begin
  inherited;
  FPesquisaDetalhadaONOF := true;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet8Show(Sender: TObject);
begin
  inherited;
  FPesquisaDetalhadaONOF := true;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet9Show(Sender: TObject);
begin
  inherited;
  FPesquisaDetalhadaONOF := True;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet1Show(Sender: TObject);
begin
  inherited;
  FPesquisaDetalhadaONOF := false;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet2Show(Sender: TObject);
begin
  inherited;
  with fdt_principal6.spc_cons_med_conveniadoItemCrm do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    open;
  end;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if (FItemObservacao = '') then
    DB_ExecSQL('insert into tbl_obsItemHonorario values ('+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_conveniado').AsString+
    ','+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString+
    ','''+mem_obs_hit.Lines.Text+''')')
  else
    DB_ExecSQL('update tbl_obsItemHonorario set obs_oih = '''+mem_obs_hit.Lines.Text+
    ''' where cod_conveniado = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_conveniado').AsString+
    ' and cod_itemservico = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString);

   { DB_ExecSQL('update tbl_itemhonorario set obs_hit = '''+mem_obs_hit.Lines.Text+
    ''' where cod_conveniado = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_conveniado').AsString+
    ' and cod_itemservico = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString+
    ' and dtvalidade_hit = '+DB_FormatDataSQL(Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('dtvalidade_hit').AsString, ftDate));
    PageControl.ActivePage := TbS_Principal ;  }

end;

procedure TFrm_Cad_ConveniadoItem.dbg_conveniadoItensDblClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 5;
end;

procedure TFrm_Cad_ConveniadoItem.TabSheet3Show(Sender: TObject);
begin
  inherited;
  //mem_obs_hit.Text := Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('obs_hit').AsString;
  DB_OpenSQL('select cod_itemservico, obs_oih from tbl_obsItemHonorario where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
  ' and cod_itemservico = '+Fdt_principal.spc_cons_med_conveniadoItens.fieldByName('cod_itemservico').AsString);
  mem_obs_hit.Text := Tab.FieldByName('obs_oih').AsString;
  FItemObservacao :=  Tab.FieldByName('cod_itemservico').AsString;
  
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton16Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_IncluiItemTUSS ;
  PageControl.ActivePage := TBS_IncluiManualTUSS ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton17Click(Sender: TObject);
begin
  inherited;
   if (not BAS_ValidarCampo(edt_dtvalidadetuss.Name, 'A Data de Validade deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_tussggr1.Name, 'O Grande Grupo deve ser Preenchido!', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_tussgru1.Name, 'O Grupo de Serviço deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tusssgr1.Name, 'O Sub Grupo deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tussiti1.name, 'O Item de Serviço Inicial deve ser preenchido, deve ser preenchido com número maior que zero !', VLD_NumMaiorZero )) or
  (not BAS_ValidarCampo(edt_tussitf1.Name, 'O Item de Serviço Final deve ser preenchido, deve ser preenchido com número maior que zero !', VLD_NumMaiorZero )) then
    Exit;
  IncluiItemHonorario('', edt_dtvalidadetuss.text, edt_tussggr1.Text, edt_tussgru1.Text,
  edt_tussgru1.Text, edt_tusssgr1.Text, edt_tusssgr1.Text, edt_tussiti1.Text, edt_tussitf1.Text);
end;

procedure TFrm_Cad_ConveniadoItem.TBS_IncluiManualTUSSShow(
  Sender: TObject);
begin
  inherited;
  edt_tussggr1.text := '' ;
  edt_tussgru1.text := '' ;
  edt_tusssgr1.text := '' ;
  edt_tussiti1.text := '' ;
  edt_tussitf1.text := '' ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton20Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_AlteraItemTUSS ;
  PageControl.ActivePage := TBS_AlteraManualTUSS ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton21Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtvalidadealteratuss.Name, 'A Data de Validade deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  AlteraItensServico(edt_tussggr2.text, edt_tussgru2.text, edt_tusssgr2.text, edt_tussiti2.text, edt_tussitf2.text);
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton23Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_IncluiItemListaTUSS ;
  Pnl_TitLista.Caption := 'Inclusão de Itens de Serviço a Partir de Uma Lista';
  btn_lista.caption := '&Incluir Itens de Serviço conforme Lista(s) Selecionada(s)';
  PageControl.ActivePage := TBS_AlteraLista ;
  btn_alteraItemServico.caption := '&Incluir Itens de Serviço conforme a(s) Faixa(s) preenchida(s)' ;
  pnl_Itemlista.Caption := 'Incluir de Itens de Serviço a Partir de Uma Lista' ;
  btn_AlteraItemLista.CAption := '&Incluir Itens de Serviço conforme Lista(s) Selecionada(s)' ;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton24Click(Sender: TObject);
begin
  inherited;
  FStatusEdicao := FST_AlteraItemListaTUSS ;
  Pnl_TitLista.Caption := 'Alteração de Itens de Serviço a Partir de Uma Lista';
  btn_lista.caption := '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)';
  PageControl.ActivePage := TBS_AlteraLista ;
  btn_alteraItemServico.caption := '&Alterar Itens de Serviço conforme a(s) Faixa(s) preenchida(s)' ;
  pnl_Itemlista.Caption := 'Alteração de Itens de Serviço a Partir de Uma Lista' ;
  btn_AlteraItemLista.CAption := '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)' ;
end;

procedure TFrm_Cad_ConveniadoItem.TBS_AlteraListaShow(Sender: TObject);
begin
  inherited;
  if (FStatusEdicao = FST_IncluiItemLista ) or (FStatusEdicao = FST_AlteraItemLista) then
    Obj_LoadCombo(Self, 'cbx_cod_grandegrupo', 'cod_grandegrupo, nome_ggr', 'cod_grandegrupo','tbl_grandegrupo where cod_grandegrupo < 6');
  if (FStatusEdicao = FST_IncluiItemListaTUSS ) or (FStatusEdicao = FST_AlteraItemListaTUSS) then
    Obj_LoadCombo(Self, 'cbx_cod_grandegrupo', 'cod_grandegrupo, nome_ggr', 'cod_grandegrupo','tbl_grandegrupo where cod_grandegrupo = 6');
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton15Click(Sender: TObject);
begin
  inherited;
  LimpaTelaLista;
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton25Click(Sender: TObject);
begin
  inherited;
  Fdt_principal.spc_cons_med_conveniadoItemdetalhe.First;
  Fdt_principal.spc_cons_med_conveniadoItemEspecial.First;
  if Fdt_principal.spc_cons_med_conveniadoItemdetalhe.FieldByName('dtvalidade_hit').AsDateTime <>
  Fdt_principal.spc_cons_med_conveniadoItemEspecial.FieldByName('dtvalidade_ihe').AsDateTime then
  begin
    if DB_ExecSQL('insert into tbl_itemhonoraespecial'+
    ' select distinct i.cod_conveniado, i.cod_itemservico, ihe.cod_plano, vlhonorario_hit,'+
    ' PorteAnestesico_hit, NumAuxiliares_hit, vlFilme_hit, fatormult_hit, i.dtvalidade_hit'+
    ' from tbl_itemhonorario i, tbl_itemhonoraespecial ihe'+
    ' where i.cod_conveniado = ihe.cod_conveniado and i.cod_itemservico = ihe.cod_itemservico'+
    ' and i.cod_conveniado = '+Fdt_principal.spc_cons_med_conveniadoItemdetalhe.FieldByName('cod_conveniado').AsString+
    ' and i.cod_itemservico = '''+Fdt_principal.spc_cons_med_conveniadoItemdetalhe.FieldByName('cod_itemservico').AsString+
    ''' and i.dtvalidade_hit = (select max(dtvalidade_hit) from tbl_itemhonorario ih2'+
    ' where i.cod_conveniado = ih2.cod_conveniado and i.cod_itemservico = ih2.cod_itemservico)') then
    begin
      with Fdt_principal.spc_cons_med_conveniadoItemEspecial do begin
        close;
        ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
        ParamByName('@cod_itemservico').AsString := edt_cod_itemservico.text ;
        open;
      end;
    end;  
  end;

end;

procedure TFrm_Cad_ConveniadoItem.btn_desativarClick(Sender: TObject);
begin
  inherited;
  edt_cod_itemAtivoIni.Text := edt_cod_itemservico.Text;
  edt_cod_itemAtivoFin.text := edt_cod_itemservico.Text;
  Obj_SetFormObjValueByName(self,cbx_cod_statusAtivo.Name,2);
  dbg_conveniadoItens.Visible := false;
  edt_cod_itemAtivoIni.SetFocus;
end;

procedure TFrm_Cad_ConveniadoItem.dbg_conveniadoItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('cod_statusAtivo').AsInteger =  2 then
    (Sender as TDBGrid).Canvas.Font.Color := clRed ;
  end;
  dbg_conveniadoItens.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Cad_ConveniadoItem.rdb_itemAtivoClick(Sender: TObject);
begin
  inherited;
  MostrarItens(STR_RemoveChar(edt_cod_conveniado.text,'-'),'0');
end;

procedure TFrm_Cad_ConveniadoItem.rdb_itemTodosClick(Sender: TObject);
begin
  inherited;
  MostrarItens(STR_RemoveChar(edt_cod_conveniado.text,'-'),'0');
end;

procedure TFrm_Cad_ConveniadoItem.btn_SalvarAtivarItemClick(
  Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_itemAtivoIni.Name, 'O Item de Serviço Inicial deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemAtivoFin.Name, 'O Item de Serviço Final deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_statusAtivo.Name, 'A Situação deve ser preenchida!', VLD_Preenchido )) then
    Exit;
  DB_ExecSQL('update tbl_itemhonorario set cod_statusAtivo = '+cbx_cod_statusAtivo.valueItem+
  ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
  ' and cod_itemservico >= '+edt_cod_itemAtivoIni.Text+' and cod_itemservico <= '+edt_cod_itemAtivoFin.Text);
  MostrarItens(STR_RemoveChar(edt_cod_conveniado.text,'-'),'0');
 // edt_localizar.SetFocus;
 // dbg_conveniadoItens.SetFocus;
  dbg_conveniadoItens.Visible := true;

end;

procedure TFrm_Cad_ConveniadoItem.btn_cancelarAtivarItemClick(
  Sender: TObject);
begin
  inherited;
  edt_cod_itemAtivoIni.Text := '';
  edt_cod_itemAtivoFin.text := '';
  dbg_conveniadoItens.Visible := true;
end;

procedure TFrm_Cad_ConveniadoItem.rdb_codigoClick(Sender: TObject);
begin
  inherited;
  Cont:= 0;
  edt_localizar.MaxLength:= 8;
  edt_localizar.EditMask:= '99999999';
  edt_localizar.NumbersOnly:= True;
  edt_localizar.Text:= '';
  edt_localizar.SetFocus;
end;

procedure TFrm_Cad_ConveniadoItem.rdb_nomeClick(Sender: TObject);
begin
  inherited;
  Cont:= 0;
  edt_localizar.MaxLength:= 0;
  edt_localizar.EditMask:= '';
  edt_localizar.NumbersOnly:= False;
  edt_localizar.Text:= '';
  edt_localizar.SetFocus;
end;

procedure TFrm_Cad_ConveniadoItem.edt_localizarEnter(Sender: TObject);
begin
  inherited;
  Cont:= 0;
end;

procedure TFrm_Cad_ConveniadoItem.btn_itemhonorarioClick(
  Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
begin
  inherited;
  with Fdt_principal.spc_cons_med_conveniadoItens01 do
    begin
    Close;
    ParamByName('@cod_conveniado').AsString:= IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := edt_itemservicoIni.Text;
    ParamByName('@cod_itemservicoFin').AsString := edt_itemservicoFin.Text;
    if rdb_itemAtivo.Checked then
      ParamByName('@cod_statusAtivo').AsString := '1'
    else
      ParamByName('@cod_statusAtivo').AsString := '0';
    Open;
    Last;
    pgb_registros.Max:= RecordCount;
    if RecordCount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
       Close;
       Exit;
       end;
    end;

  Fdt_principal.spc_cons_med_conveniadoItens01.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= 'Cód.do Item;Cód.Padrão;Descrição;Dt.Validade;Vl.Honorário;Porte Anestésico;Num.Auxiliares;Vl.Filme;Fator Mult.;Vl.Total;Retorno';
     Writeln(byt_nameofthfile,S);
     S:= '';
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     with Fdt_principal.spc_cons_med_conveniadoItens01 do
        while not EOF do
        begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        S:= FieldByName('cod_itemservico').AsString + ';' +
            FieldByName('cod_padrao').AsString + ';' +
            FieldByName('nome_its').AsString + ';' +
            FieldByName('dtvalidade_hit').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlhonorario_hit').AsFloat) + ';' +
            FieldByName('PorteAnestesico_hit').AsString + ';' +
            FieldByName('NumAuxiliares_hit').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlFilme_hit').AsFloat) + ';' +
            FormatFloat('###,###,##0.0000', FieldByName('fatormult_hit').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlTotal_hit').AsFloat) + ';' +
            FieldByName('retorno_hit').AsString;
        Writeln(byt_nameofthfile, S);
        Next;
        end;
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal.spc_cons_med_conveniadoItens01.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Cad_ConveniadoItem.btn_exportaIHEClick(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
begin
  inherited;
  with fdt_principal6.spc_cons_med_conveniadoItemespecial02 do begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := edt_itemservicoIni2.Text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_itemservicoFin2.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;

  fdt_principal6.spc_cons_med_conveniadoItemespecial02.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= 'Cód.do Item;Descrição; Plano; Dt.Validade;Vl.Honorário;Porte Anestésico;Num.Auxiliares;Vl.Filme;Fator Mult.;Vl.Total';
     Writeln(byt_nameofthfile,S);
     S:= '';
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     with fdt_principal6.spc_cons_med_conveniadoItemespecial02 do
        while not EOF do
        begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        S:= FieldByName('cod_itemservico').AsString + ';' +
            //FieldByName('cod_padrao').AsString + ';' +
            FieldByName('nome_its').AsString + ';' +
            FieldByName('nome_pla').AsString + ';' +
            FieldByName('dtvalidade_ihe').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlhonorario_ihe').AsFloat) + ';' +
            FieldByName('PorteAnestesico_ihe').AsString + ';' +
            FieldByName('NumAuxiliares_ihe').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlFilme_ihe').AsFloat) + ';' +
            FormatFloat('###,###,##0.0000', FieldByName('fatormult_ihe').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlTotal_hit').AsFloat);
        Writeln(byt_nameofthfile, S);
        Next;
        end;
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  fdt_principal6.spc_cons_med_conveniadoItemespecial02.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Cad_ConveniadoItem.PDJButton26Click(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('update tbl_itemhonoraespecial set cod_statusAtivo = 2'+
  ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+' and cod_itemservico = '+Fdt_principal.spc_cons_med_conveniadoItemEspecial.fieldbyname('cod_itemservico').AsString+
  ' and cod_plano = '+Fdt_principal.spc_cons_med_conveniadoItemEspecial.fieldbyname('cod_plano').AsString+
  ' and dtvalidade_ihe = '+DB_FormatDataSQL(Fdt_principal.spc_cons_med_conveniadoItemEspecial.fieldbyname('dtvalidade_ihe').AsDateTime, ftDate));
end;

procedure TFrm_Cad_ConveniadoItem.dbg_honorarioEspecialDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('cod_statusAtivoEsp').AsInteger =  2 then
    (Sender as TDBGrid).Canvas.Font.Color := clRed ;
  end;
  dbg_honorarioEspecial.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

end.

