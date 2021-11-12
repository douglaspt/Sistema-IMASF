unit mov_2062;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList,
  Menus;

type
  TFrm_Mov_2062 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    DataSource3: TDataSource;
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_alterar: TPDJButton;
    btn_novo: TPDJButton;
    btn_excluir: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    pnl_benefi: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nossonumero_flh: TDCEdit;
    rdb_benefi: TRadioButton;
    rdb_matricula: TRadioButton;
    Panel4: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    cb2_cod_sitdesconto: TDCComboBox;
    RgB_Indice: TRadioGroup;
    DBMemo1: TDBMemo;
    btn_localizar: TPDJButton;
    PDJButton11: TPDJButton;
    lbl_aviso: TLabel;
    lbl_total: TLabel;
    TabSheet2: TTabSheet;
    Panel: TPanel;
    ed2_cod_beneficiario: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    edt_matriculadebito: TDCEdit;
    rdb_beneficiario: TRadioButton;
    rdg_naobenefi: TRadioButton;
    Panel9: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel24: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    Panel8: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel10: TPanel;
    cb2_cod_tarifa: TDCComboBox;
    edt_codtarifa: TDCEdit;
    edt_dtrefatraso_flh: TDCDateEdit;
    Panel11: TPanel;
    edt_vldesconto_adf: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_vlcorrecao_flh: TDCEdit;
    edt_vljuros_flh: TDCEdit;
    edt_vlmulta_flh: TDCEdit;
    pnl_parcelamento: TPanel;
    edt_parcelan_par: TDCEdit;
    edt_nparcela_par: TDCEdit;
    edt_vlparcelamento: TDCEdit;
    edt_vloriginal: TDCEdit;
    Panel17: TPanel;
    edt_obs_flh: TDCEdit;
    GrB_Status: TGroupBox;
    Panel7: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    edt_nossonumero: TDCEdit;
    Panel13: TPanel;
    edt_dtsitdesconto_flh: TDCDateEdit;
    edt_dtpagto_flh: TDCDateEdit;
    Panel16: TPanel;
    edt_vlpago_flh: TDCEdit;
    edt_nguia_flh: TDCEdit;
    dbg_descontos: TDBGrid;
    Panel38: TPanel;
    edt_dtsistema_flh: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    PDJButton2: TPDJButton;
    btn_beneficiario: TPDJButton;
    chb_parcelamento: TCheckBox;
    btn_parcelamento: TPDJButton;
    btn_cancelaParcelamento: TPDJButton;
    TabSheet4: TTabSheet;
    stg_audi: TStringGrid;
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    procedure rdb_matriculaClick(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_localizarClick(Sender: TObject);
    procedure dbg_descontosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PDJButton11Click(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure rdg_naobenefiClick(Sender: TObject);
    procedure rdb_beneficiarioClick(Sender: TObject);
    procedure edt_matriculadebitoExit(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure ed2_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codtarifaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_obs_flhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_descontosDblClick(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure chb_parcelamentoClick(Sender: TObject);
    procedure btn_parcelamentoClick(Sender: TObject);
    procedure btn_cancelaParcelamentoClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet4Show(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt, FMatricula, FDigito : String ;
    procedure BotoesOnOff(b:boolean);
    procedure CarregarCombos;
    procedure PanelOnOff(b:boolean);
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wCod_Beneficiario, FMesReferencia, FAnoReferencia, FEmpresaFolha: String ;
  end;

var
  Frm_Mov_2062: TFrm_Mov_2062;
  ChaveExp, Pagina: Integer;
  W30: String[30];
  W100: String[100];

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_Contabil,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_data, Fun_Desconto,
  dtm_principal, Mov_Tramite, Fun_STR, Fun_Numero, Fun_Beneficiario, Cad_fpm, Cad_Segurado,
  Cad_Dependente, Mov_2024, Mov_Parcelamento, MOv_2049;

{$R *.DFM}

procedure TFrm_Mov_2062.rdb_matriculaClick(Sender: TObject);
begin
  inherited;
  pnl_benefi.caption :=  '    Matrícula                                                                                                                                                                    Nosso Número';
  edt_inscricao_ben.ButtonExist := false ;
  //edt_inscricao_ben.Text := '';
  edt_digito.Visible := true;
end;

procedure TFrm_Mov_2062.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
  Obj_LoadCombo(Self, 'cb2_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
end;

procedure TFrm_Mov_2062.rdb_benefiClick(Sender: TObject);
begin
  inherited;
    pnl_benefi.caption :=  '    Inscrição                                                                                                                                                                    Nosso Número';
    edt_inscricao_ben.ButtonExist := true ;
   // edt_inscricao_ben.Text := '';
    edt_digito.Visible := false;
end;

procedure TFrm_Mov_2062.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_excluir.Enabled := b ;
  dbg_descontos.visible := b ;
end;


procedure TFrm_Mov_2062.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if (edt_cod_beneficiario.Text <> '') then
  begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
      open;
      edt_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      FMatricula := FieldByNAme('matriculadebito_seg').AsString;
      FDigito := FieldByNAme('digitomatdeb_seg').AsString;
    end;
  end;
end;

procedure TFrm_Mov_2062.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia)
  else
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  if FAnoReferencia <> '' then
    edt_ano.Text := FAnoReferencia
  else
    edt_ano.text := FormatDateTime('yyyy',date);
  rdb_matriculaClick(self);
  btn_beneficiario.Visible := (not Obj_LocalizarFormAtivo(Frm_Cad_Segurado)) and (not Obj_LocalizarFormAtivo(Frm_Cad_Dependente));
  if FEmpresaFolha <> '' then
  begin
    Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, FEmpresaFolha);
    FEmpresaFolha := '';
  end;
  FAnoReferencia := '';
  FMesReferencia := '';
  PageControl1.ActivePage:= TabSheet1;
end;

function TFrm_Mov_2062.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(ed2_cod_beneficiario.name, 'A inscrição deve ser preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O local do desconto deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_tarifa.name, 'O código da tarifa deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vldesconto_adf.name, 'O valor do desconto deve ser preenchido!', VLD_Preenchido ));
end;

procedure TFrm_Mov_2062.btn_novoClick(Sender: TObject);
begin
  inherited;
//  if (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido!', VLD_Preenchido )) then
//    Exit;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  PageControl1.ActivePageIndex := 1;
  Obj_EmptyEditTag(self,-10);
  CarregarCombos;
  cbx_cod_mes.Refresh;
  cb2_cod_empresafolha.Refresh;
  GrB_Status.Visible := false ;
  pnl_parcelamento.Visible := false ;
  edt_dtdesconto_flh.Date := date ;
  ed2_inscricao_ben.SetFocus;
//  edt_matriculadebito.SetFocus;
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Mov_2062.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  PanelOnOff(true);
  PageControl1.ActivePageIndex:= 0;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Mov_2062.btn_excluirClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2024 := TFrm_Mov_2024.Create(Self);
  Frm_Mov_2024.FCodDesconto := Fdt_principal6.spc_cons_adm_descontos.FieldByname('cod_descontofolha').AsString;
  Frm_Mov_2024.ShowModal;
  Frm_Mov_2024.Release;
  Show;
end;

procedure TFrm_Mov_2062.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if rdb_benefi.Checked then
    if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2062.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_mes.text = '' then begin
    Dlg_Ok('É necessário selecionar o Mês de Referencia',self);
    exit;
  end;
  if edt_ano.text = '' then begin
    Dlg_Ok('É necessário selecionar o Ano de Referencia',self);
    exit;
  end;
  if cb2_cod_empresafolha.text = '' then begin
    Dlg_Ok('É necessário selecionar o Local de Desconto',self);
    exit;
  end;

// Pesquisa se beneficiario possue mais de uma matrícula
// Cria tabela temporária com descontos de todas as matriculas
end;

procedure TFrm_Mov_2062.dbg_descontosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    case Column.Field.Dataset.FieldbyName('cod_sitdesconto').AsInteger of
      1 : (Sender as TDBGrid).Canvas.Font.Color := clBlue ;
      100..200 : (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
    else
      (Sender as TDBGrid).Canvas.Font.Color := clRed ;
  end;
  end else
    (Sender as TDBGrid).Canvas.Font.Color := clWhite ;
    dbg_descontos.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Mov_2062.PDJButton11Click(Sender: TObject);
var
  processo, ano : string;
begin
  inherited;
  if (not Fdt_principal6.spc_cons_adm_descontos.active) or
  (Fdt_principal6.spc_cons_adm_descontos.RecordCount < 1) then
  begin
    Hide;
    Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
    Frm_Mov_Tramite.ShowModal;
    Frm_Mov_Tramite.Release;
    Show;
  end else
  begin
  DB_OpenSQL('select processo_ben from tbl_beneficiario where cod_beneficiario ='+
  Fdt_principal6.spc_cons_adm_descontos.FieldByName('cod_beneficiario').AsString);
  Hide;
  Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
  Frm_Mov_Tramite.edt_processo_tmt.Text := Trim(copy(Tab.FieldByName('processo_ben').AsString,1,5));
  Frm_Mov_Tramite.edt_ano_tmt.Text := Trim(copy(Tab.FieldByName('processo_ben').AsString,7,5));
  Frm_Mov_Tramite.btn_alterarClick(self);
  Frm_Mov_Tramite.ShowModal;
  Frm_Mov_Tramite.Release;
  Show;
  end;
end;

procedure TFrm_Mov_2062.PanelOnOff(b:boolean);
begin
  Panel.Enabled := b;
  Panel9.Enabled := b;
  Panel24.Enabled := b;
  Panel8.Enabled := b;
  Panel10.Enabled := b;
  Panel11.Enabled := b;
end;

procedure TFrm_Mov_2062.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O mês de referência deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O ano de referência deve ser preenchido!', VLD_Preenchido )) then
    exit;
  if (not Fdt_principal6.spc_cons_adm_descontos.active) or
  (Fdt_principal6.spc_cons_adm_descontos.RecordCount < 1) then begin
    Dlg_Ok('É necessário selecionar um Lançamento',self);
    exit;
  end;
  if (Fdt_principal6.spc_cons_adm_descontos.FieldByName('parcelan_par').AsString <> '') then begin
//    pnl_dados.Enabled := false;
  end else
   // pnl_dados.Enabled := true;

  inherited;
  edt_dtdesconto_flh.Enabled := false ;
  wCod_Beneficiario := '' ;
  PageControl1.ActivePageIndex := 1;
  BotoesOnOff(false);
  FStatus := FST_Alteracao;
  with Fdt_principal6.spc_cons_adm_descontos do begin
    if Active then begin
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FieldByName('cod_empresafolha').AsString);
      Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, FieldByName('cod_tarifa').AsString);
      edt_vldesconto_adf.text := formatfloat('#########0.00',FieldByName('vldesconto_adf').AsFloat);
      wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      edt_dtdesconto_flh.text := FieldByName('dtdesconto_flh').AsString ;
      edt_dtrefatraso_flh.text := FieldByName('dtrefatraso_flh').AsString ;
      Obj_SetFormObjValueByName(self, cbx_cod_sitdesconto.name, FieldByName('cod_sitdesconto').AsString);
      edt_dtsitdesconto_flh.date := FieldByName('dtsitdesconto_flh').asdatetime ;
      edt_dtpagto_flh.text := FieldByName('dtpagto_flh').AsString ;
      edt_vlpago_flh.text := formatfloat('#########0.00',FieldByName('vlpago_flh').AsFloat);
      edt_obs_flh.text := FieldByName('obs_flh').AsString ;
      edt_parcelan_par.text := FieldByName('parcelan_par').AsString ;
      edt_nparcela_par.text := FieldByName('nparcela_par').AsString ;
      edt_nossonumero.text := FieldByName('nossonumero_flh').AsString ;
      edt_dtsistema_flh.text := FieldByName('dtsistema_flh').AsString ;
      edt_nome_usu.text := FieldByName('descricao_usu').AsString ;
      edt_vljuros_flh.Text := FormatFloat('###,###,##0.00', FieldByName('vljuros_flh').AsFloat);
      edt_vlmulta_flh.Text := FormatFloat('###,###,##0.00', FieldByName('vlmulta_flh').AsFloat);
      edt_vlcorrecao_flh.Text := FormatFloat('###,###,##0.00', FieldByName('vlcorrecao_flh').AsFloat);
      W100:= '';
      if rdb_beneficiario.Checked = True then
         W100:= '=> Da inscr.';
      if rdg_naobenefi.Checked = True then
         W100:= '=> Da matric.';
      if edt_parcelan_par.text <> '' then begin
        pnl_parcelamento.Visible := true ;
        edt_vlparcelamento.text := formatfloat('###,###,##0.00',FieldByName('vlparcelado').AsFloat);
        edt_vloriginal.text := FormatFloat('##,####,##0.00', strToFloat(STR_RemoveChar(edt_vlparcelamento.text,'.'))/((
        Num_JuroComposto(FieldByName('vlpercjuros_par').AsFloat, str_strtoint(edt_nparcela_par.text)))*str_strtoint(edt_nparcela_par.text)));
      end else
        pnl_parcelamento.Visible := false ;
      ed2_cod_beneficiario.text := wCod_Beneficiario ;
      if (wCod_Beneficiario <> '0') and (wCod_Beneficiario <> FieldByName('cod_empresafolha').AsString+FieldByName('matriculadebito_seg').AsString) then begin
        ed2_inscricao_benButtonClick(self);
        rdb_beneficiario.Checked := true ;
      end else begin
        edt_carteira.text := 'NÃO BENEFICIÁRIO' ;
        edt_nome.text := FieldByName('nome_ben').AsString ;
        edt_matricula.text := FieldByName('inscricao_ben').AsString ;
        edt_digito.text := FieldByName('titulacartei_ben').AsString ;
        rdg_naobenefi.Checked := true ;
        ed2_cod_beneficiario.text := '0';
      end;
      GrB_Status.Visible := true ;
    end;
  end;
  if (STR_StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) <=
  STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem)))) then
  begin
    PanelOnOff(false);
  end;
  EscreveLog(btn_alterar.name);
  W100:= W100 + ed2_inscricao_ben.Text + ' ' + edt_nome.Text + ', Emp.' + cbx_cod_empresafolha.Text;
end;

procedure TFrm_Mov_2062.ed2_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if ed2_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+ed2_inscricao_ben.text;
  if wCod_Beneficiario = '' then
     ed2_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false)
  else
    ed2_cod_beneficiario.text := wCod_Beneficiario ;
  if ed2_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
    edt_matricula.text := '' ;
  end else begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := ed2_cod_beneficiario.text ;
      open;
      edt_carteira.text := FormatarCarteirinha(
      FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
      STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
      STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
      FieldByName('digito_ben').AsString) ;
      edt_nome.text := FieldByNAme('nome_ben').AsString;
      ed2_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      edt_matricula.text := FieldByNAme('matriculadebito_seg').AsString;
      edt_digito.text := FieldByNAme('digitomatdeb_seg').AsString;
      if FStatus <> FST_Alteracao then
        Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FieldByName('cod_empresafolha').AsString);
    end;
  end;
  wCod_Beneficiario := '';
end;

procedure TFrm_Mov_2062.rdg_naobenefiClick(Sender: TObject);
begin
  inherited;
  if rdb_beneficiario.Checked then begin
    edt_matriculadebito.visible := false ;
    //edt_digitodebito.visible := false ;
    panel.Caption := '   Inscrição' ;
    ed2_inscricao_ben.SetFocus;
  end else begin
    edt_matriculadebito.visible := true ;
   // edt_digitodebito.visible := true ;
    panel.Caption := '   Matrícula de Débito' ;
    ed2_cod_beneficiario.text := '0';
    edt_matriculadebito.setfocus;
  end;
end;

procedure TFrm_Mov_2062.rdb_beneficiarioClick(Sender: TObject);
begin
  inherited;
  if rdb_beneficiario.Checked then begin
    edt_matriculadebito.visible := false ;
    //edt_digitodebito.visible := false ;
    panel.Caption := '   Inscrição' ;
    ed2_inscricao_ben.SetFocus;
  end else begin
    edt_matriculadebito.visible := true ;
   // edt_digitodebito.visible := true ;
    panel.Caption := '   Matrícula de Débito' ;
    ed2_cod_beneficiario.text := '0';
    edt_matriculadebito.setfocus;
  end;
end;

procedure TFrm_Mov_2062.edt_matriculadebitoExit(Sender: TObject);
begin
  inherited;
  if edt_matriculadebito.Text <> '' then begin
    if DB_OpenSQL('select nome_fpm, digito_mte, cod_empresafolha from tbl_fpm where matricula_mte = '+
    edt_matriculadebito.Text+' and cod_empresafolha = '+cb2_cod_empresafolha.valueitem) > 0 then begin
      edt_carteira.text := 'Não Segurado' ;
      edt_nome.text := Tab.FieldByName('nome_fpm').AsString;
      edt_matricula.text := edt_matriculadebito.text;
      edt_digito.text := Tab.FieldByName('digito_mte').AsString;;//edt_digitodebito.text;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Tab.FieldByName('cod_empresafolha').AsString);
      ed2_cod_beneficiario.text := '0' ;
    end else begin
      Dlg_Alerta('Não foi possível encontrar no Cadastro de Servidores !',self);
     // edt_matriculadebito.SetFocus;
    end;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Mov_2062.btn_salvarClick(Sender: TObject);
const
  msgErro = 'Atenção, Erro ao tentar salvar este registro, o aplicativo será fechado e este registro será perdido';
var
  permiteAlterar : boolean ;
  d : Tdate;
begin
  inherited;
  if CriticaParametros then
    Exit;
  //somente permite incluir um novo registro para usuários com acesso especial, mes de referencia igual ao mes atual e empresa igual a tesouraria
  permiteAlterar := Acs_AcessoEspecial('200301') and
  (STR_StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) =
  STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem)))) and
  (cbx_cod_empresafolha.valueitem = '99');
  if (STR_StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) <=
  STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem))))
  and (not permiteAlterar) and (FStatus = FST_Novo) then begin
     Dlg_OK('A folha do mês de "'+cbx_cod_mes.text+'" já foi gerada, assim não se pode mais efetuar lançamentos para este mês',self);
     if not Acs_AcessoEspecial('200301') then //-----------------------------------------------------
       exit;
  end;
  if (cb2_cod_tarifa.valueitem = '638') and (FStatus = FST_Novo) then begin
    Dlg_Ok('O código "'+cb2_cod_tarifa.valueitem+'" é um código reservado para o sistema de Odontológico, não pode ser cadastrado manualmente !',self);
    edt_codtarifa.setfocus;
    exit;
  end;
  if (cb2_cod_tarifa.valueitem = '596') and (FStatus = FST_Novo) then begin
    Dlg_Ok('O código "'+cb2_cod_tarifa.valueitem+'" é um código de parcelamento, não pode ser usado para outros descontos !',self);
    edt_codtarifa.setfocus;
    exit;
  end;
  edt_vldesconto_adf.Text := STR_RemoveChar(edt_vldesconto_adf.Text,'.');
  edt_vlpago_flh.Text:= STR_RemoveChar(edt_vlpago_flh.Text,'.');
  if (rdg_naobenefi.Checked) and (edt_matriculadebito.Text <> '') then
  begin
    if DB_OpenSQL('select inscricao_ben from tbl_fpm where matricula_mte = '+edt_matriculadebito.Text+
    ' and cod_empresafolha = '+cb2_cod_empresafolha.valueitem) > 0 then
      if Tab.FieldByName('inscricao_ben').AsString <> '0' then
      begin
        Dlg_Alerta('Não é possivel efetuar um lançamento como Não Beneficiário para um Segurado do Imasf!',self);
        Exit;
      end;
  end;
  if Dlg_YesNo('Confere os Dados ? Confirma Salvar ?', self) then begin
    if FStatus = FST_Novo then begin
      if not Set_IncluirDesconto(ed2_cod_beneficiario.text, edt_matricula.text, edt_digito.text,
      edt_vldesconto_adf.text, edt_vljuros_flh.Text, cb2_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem,
      cbx_cod_mes.valueItem, edt_ano.text, edt_dtdesconto_flh.Date, edt_obs_flh.text, FCod_Usuario, FCod_TelaSistema) then begin
        Dlg_Erro( msgErro, self);
        Application.Terminate;
      end;
      if Dlg_YesNo('Deseja Incluir outro Lançamento ?', self) then begin
        btn_cancelarClick(self);
        btn_novoClick(self);
      end else begin
        btn_cancelarClick(self);
      end;
    end else begin
      if edt_dtpagto_flh.text <> '' then
        d := edt_dtpagto_flh.Date
      else
        d := 0 ;
      if Fdt_principal6.spc_cons_adm_descontos.fieldbyname('nparcela_par').AsString = '' then begin
        if not Set_AlteraDesconto(ed2_cod_beneficiario.text, edt_matricula.text, edt_digito.text,
        edt_vldesconto_adf.text, cb2_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem, edt_vljuros_flh.text,
        edt_dtdesconto_flh.date, cbx_cod_sitdesconto.valueitem, edt_dtsitdesconto_flh.date,
        edt_vlpago_flh.text, d, edt_obs_flh.text, edt_nguia_flh.text,
        Fcod_usuario, Fdt_principal6.spc_cons_adm_descontos.fieldbyname('cod_descontofolha').asstring, FCod_TelaSistema) then begin
          Dlg_Erro(msgErro, self);
          Application.Terminate;
        end;
      end else begin
        if not Set_AlteraParcelamento(ed2_cod_beneficiario.text, edt_matricula.text, edt_digito.text,
        cb2_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem, edt_obs_flh.text, edt_nguia_flh.text,
        FCod_Usuario, edt_vldesconto_adf.text, cbx_cod_sitdesconto.valueitem, edt_dtsitdesconto_flh.date,
        edt_vlpago_flh.text, d, Fdt_principal6.spc_cons_adm_descontos.fieldbyname('cod_descontofolha').asstring,
        edt_parcelan_par.text, cbx_cod_mes.valueItem, edt_ano.text, FCod_TelaSistema) then begin
          Dlg_Erro(msgErro, self);
          Application.Terminate;
        end;
      end;
      Fdt_principal6.spc_cons_adm_descontos.close;
      Fdt_principal6.spc_cons_adm_descontos.open;
      btn_cancelarClick(self);
    end;
  end;
  PanelOnOff(true);
  EscreveLog(btn_salvar.name);
  W30:= cbx_cod_mes.Text + '/' + edt_ano.Text + ', ' + cb2_cod_empresafolha.Text;
  if rdb_beneficiario.Checked = True then
     W100:= W100 + ' para inscr.' + ed2_inscricao_ben.Text + ' ' + edt_nome.Text + ', Emp.' + cbx_cod_empresafolha.Text;
  if rdg_naobenefi.Checked = True then
     W100:= W100 + ' para matr.' + edt_matricula.Text + ' ' + edt_nome.Text + ', Emp.' + cbx_cod_empresafolha.Text;
  if cbx_cod_sitdesconto.Text = '' then
     if FStatus = FST_Novo then
        GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text, 'Incluído, ' + W30 +
         ', tarifa ' + Copy(cb2_cod_tarifa.Text,1,3), 'R$' + FormatFloat('##,###,##0.00',
         StrToFloat(edt_vldesconto_adf.Text)), 116)
    else
        GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text, 'Alterado, ' + W30 +
        ', tarifa ' + Copy(cb2_cod_tarifa.Text,1,3), 'R$' + FormatFloat('##,###,##0.00',
        StrToFloat(edt_vldesconto_adf.Text)) + ', situação: ' + cbx_cod_sitdesconto.Text +
        ', dt.sit.' + edt_dtsitdesconto_flh.Text + W100, 116)
  else
    if FStatus = FST_Novo then
       GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text, 'Incluído, ' + W30 +
       ', tarifa ' + Copy(cb2_cod_tarifa.Text,1,3) + ', R$' + FormatFloat('##,###,##0.00',
       StrToFloat(edt_vldesconto_adf.Text)) + ', situação: ' +  cbx_cod_sitdesconto.Text +
       ', dt.sit.' + edt_dtsitdesconto_flh.Text, ', dt.pagto.' + edt_dtpagto_flh.Text + ', vlr.pago R$' +
       FormatFloat('##,###,##0.00', StrToFloat(edt_vlpago_flh.Text)) + ', parcela ' + edt_parcelan_par.Text +
       ' de ' + edt_nparcela_par.Text + ', nosso nº.' + edt_nossonumero_flh.Text + ', nº guia ' + edt_nguia_flh.Text,116)
    else
       GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text, 'Alterado, ' + W30 +
       ', tarifa ' + Copy(cb2_cod_tarifa.Text,1,3) + ', R$' + FormatFloat('##,###,##0.00',
       StrToFloat(edt_vldesconto_adf.Text)) + ', situação: ' + cbx_cod_sitdesconto.Text +
       ', dt.sit.' + edt_dtsitdesconto_flh.Text, ', dt.Pagto.' + edt_dtpagto_flh.Text + ', vlr.pago R$' +
       FormatFloat('##,###,##0.00', StrToFloat(edt_vlpago_flh.Text)) + ', parcela ' + edt_parcelan_par.Text +
       ' de ' + edt_nparcela_par.Text + ', nosso nº.' + edt_nossonumero_flh.Text + ', nº guia ' + edt_nguia_flh.Text,116);
end;

procedure TFrm_Mov_2062.ed2_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    ed2_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2062.edt_codtarifaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
end;

procedure TFrm_Mov_2062.edt_obs_flhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (FStatus = FST_novo) then
    btn_salvarClick(self);
end;

procedure TFrm_Mov_2062.dbg_descontosDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Mov_2062.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-5);
  cb2_cod_sitdesconto.Refresh;
  cbx_cod_tarifa.Refresh;
  CarregarCombos;
  cb2_cod_empresafolha.Refresh;
  Fdt_principal6.spc_cons_adm_descontos.close;
end;

procedure TFrm_Mov_2062.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal6.spc_cons_adm_descontos.close;
end;

procedure TFrm_Mov_2062.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  with Fdt_principal6.spc_cons_adm_descontos do
  begin
    if FieldByName('nome_tse').AsString = 'Não Segurado do IMASF' then
    begin
      Frm_Cad_fpm := TFrm_Cad_fpm.Create(Self);
      Frm_Cad_fpm.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_fpm.ShowModal;
      Frm_Cad_fpm.Release;
    end;
    if (active) and (FieldByName('titulacartei_ben').AsInteger = 0) and (FieldByName('nome_tse').AsString <> 'Não Segurado do IMASF') then
    begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end;
    if (FieldByName('titulacartei_ben').AsInteger > 0) and (FieldByName('nome_tse').AsString <> 'Não Segurado do IMASF') then
    begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
    end;
  end;
  Show;
end;

procedure TFrm_Mov_2062.chb_parcelamentoClick(Sender: TObject);
begin
  inherited;
  btn_parcelamento.Visible := chb_parcelamento.Checked;
  if chb_parcelamento.Checked then
  begin
    if edt_inscricao_ben.Text = '' then
    begin
      Dlg_Alerta('A Matrícula ou a Inscrição deve ser Preenchida!', Self);
      chb_parcelamento.Checked := false;
      Exit;
    end;
    Obj_SetFormObjValueByName(self, cb2_cod_sitdesconto.name, 1);
    btn_localizarClick(self);
    dbg_descontos.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit, dgMultiSelect];
  end
  else
    dbg_descontos.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];  

end;

procedure TFrm_Mov_2062.btn_parcelamentoClick(Sender: TObject);
var
  Fcod_desconto, FCod_TarifaOld : String;
  i : integer;
  FValor : Double;
begin
  inherited;
  Fcod_desconto := '';
  FValor := 0;
  if dbg_descontos.SelectedRows.Count>0 then
    for i:=0 to dbg_descontos.SelectedRows.Count-1 do
    begin
      dbg_descontos.DataSource.DataSet.GotoBookmark(pointer(dbg_descontos.SelectedRows.Items[i]));
      if dbg_descontos.DataSource.DataSet.FieldByName('nparcela_par').AsString <> '' then
      begin
        Dlg_Alerta('Não é possivel selecionar um lançamento que seja de Parcelamento!',self);
        cbx_cod_mes.SetFocus;
        Exit;
      end;
      if (FCod_TarifaOld = dbg_descontos.DataSource.DataSet.FieldByName('cod_tarifa').AsString) or (FCod_TarifaOld = '') then
      begin
        FCod_TarifaOld := dbg_descontos.DataSource.DataSet.FieldByName('cod_tarifa').AsString;
        Fcod_desconto := Fcod_desconto +', '+dbg_descontos.DataSource.DataSet.FieldByName('cod_descontofolha').AsString;
        FValor := FValor +  dbg_descontos.DataSource.DataSet.FieldByName('vldesconto_adf').AsFloat;
      end;
    end;
    Hide;
    Frm_Mov_Parcelamento := TFrm_Mov_Parcelamento.Create(Self);
    if Fdt_principal6.spc_cons_adm_descontos.FieldByName('nome_tse').AsString = 'Não Segurado do IMASF' then
    begin
      Frm_Mov_Parcelamento.rdb_matricula.Checked := true;
      Frm_Mov_parcelamento.wMatricula := dbg_descontos.DataSource.DataSet.FieldByName('matriculadebito_seg').AsString;
      Frm_Mov_Parcelamento.wCod_empresafolha := dbg_descontos.DataSource.DataSet.FieldByName('cod_empresafolha').AsString;
    end
    else begin
      Frm_Mov_parcelamento.rdb_beneficiario.Checked := true;
      Frm_Mov_Parcelamento.WInscricao := dbg_descontos.DataSource.DataSet.FieldByName('inscricao_ben').AsString;
    end;
    Frm_Mov_parcelamento.wObs := copy(Fcod_desconto, 2, length(Fcod_desconto));
    Frm_Mov_Parcelamento.wCod_tarifa := FCod_TarifaOld;
    Frm_Mov_Parcelamento.wVldesconto := FormatFloat('###,###,##0.00', FValor);
    Frm_Mov_Parcelamento.ShowModal;
    Frm_Mov_Parcelamento.Release;
    Show;
end;

procedure TFrm_Mov_2062.btn_cancelaParcelamentoClick(Sender: TObject);
begin
  inherited;
  if (Fdt_principal6.spc_cons_adm_descontos.FieldByName('parcelan_par').AsString <> '') then
  begin
    Hide;
    Frm_Mov_2049 := TFrm_Mov_2049.Create(Self);
    Frm_Mov_2049.FCodDesconto := Fdt_principal6.spc_cons_adm_descontos.FieldByname('cod_descontofolha').AsString;
    Frm_Mov_2049.ShowModal;
    Frm_Mov_2049.Release;
    Show;
  end;
end;

procedure TFrm_Mov_2062.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
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

procedure TFrm_Mov_2062.TabSheet4Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  if ed2_cod_beneficiario.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(ed2_cod_beneficiario.Text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

end.
