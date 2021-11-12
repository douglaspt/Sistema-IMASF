unit Mov_DescontoManual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_DescontoManual = class(TFrm_Bas_TelaPadrao)
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PageControl: TPageControl;
    tbs_lancamento: TTabSheet;
    tbs_detalhes: TTabSheet;
    btn_excluir: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    GroupBox1: TGroupBox;
    pnl_benefi: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel1: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    DataSource3: TDataSource;
    DBGrid5: TDBGrid;
    GrB_Status: TGroupBox;
    Panel7: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    Panel13: TPanel;
    edt_dtsitdesconto_flh: TDCDateEdit;
    Panel16: TPanel;
    edt_vlpago_flh: TDCEdit;
    lbl_total: TLabel;
    btn_beneficiario: TPDJButton;
    edt_nguia_flh: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    Tbs_principal: TTabSheet;
    PDJButton1: TPDJButton;
    btn_novo: TPDJButton;
    Label1: TLabel;
    btn_voltar: TPDJButton;
    btn_voltar2: TPDJButton;
    btn_parcelamento: TPDJButton;
    btn_alterar: TPDJButton;
    Bevel1: TBevel;
    Bevel5: TBevel;
    RgB_Indice: TRadioGroup;
    Label3: TLabel;
    edt_nossonumero: TDCEdit;
    pnl_dados: TPanel;
    pnl_parcelamento: TPanel;
    edt_parcelan_par: TDCEdit;
    edt_nparcela_par: TDCEdit;
    edt_vlparcelamento: TDCEdit;
    Panel11: TPanel;
    edt_vldesconto_adf: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    Panel10: TPanel;
    cb2_cod_tarifa: TDCComboBox;
    edt_codtarifa: TDCEdit;
    Panel8: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel24: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    Panel9: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel: TPanel;
    ed2_cod_beneficiario: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    Panel17: TPanel;
    edt_obs_flh: TDCEdit;
    edt_matriculadebito: TDCEdit;
    rdb_beneficiario: TRadioButton;
    rdg_naobenefi: TRadioButton;
    Panel5: TPanel;
    btn_relatorio: TPDJButton;
    PDJButton9: TPDJButton;
    Label5: TLabel;
    edt_dtpagto_flh: TDCDateEdit;
    Panel38: TPanel;
    edt_dtsistema_flh: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    cb2_cod_sitdesconto: TDCComboBox;
    edt_nossonumero_flh: TDCEdit;
    btn_localizar: TPDJButton;
    PDJButton2: TPDJButton;
    rdb_benefi: TRadioButton;
    RadioButton3: TRadioButton;
    btn_voltar3: TPDJButton;
    edt_dtrefatraso_flh: TDCDateEdit;
    PDJButton10: TPDJButton;
    edt_vlcorrecao_flh: TDCEdit;
    edt_vljuros_flh: TDCEdit;
    edt_vlmulta_flh: TDCEdit;
    edt_vloriginal: TDCEdit;
    PDJButton11: TPDJButton;
    Bevel8: TBevel;
    PDJButton7: TPDJButton;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    PDJButton3: TPDJButton;
    Label4: TLabel;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    PDJButton6: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure tbs_detalhesShow(Sender: TObject);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure cb2_cod_empresafolhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_relatorioClick(Sender: TObject);
    procedure btn_parcelamentoClick(Sender: TObject);
    procedure edt_codtarifaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_obs_flhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure ed2_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure rdb_beneficiarioClick(Sender: TObject);
    procedure edt_digitodebitoExit(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_voltar3Click(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure edt_matriculadebitoExit(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    procedure BotoesOnOff(b:boolean);
    procedure carregarcombos;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wCod_Beneficiario, FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
    FBtnClick : Boolean;
  end;

var
  Frm_Mov_DescontoManual: TFrm_Mov_DescontoManual;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
Fun_ConsCadastro, Fun_obj, Cad_Segurado, Cad_Dependente, Rel_ExtratoDesconto001,
Mov_Parcelamento, Fun_Acesso, Mov_GeraDescontoFolha, Mov_GeraDSKDesconto,
Mov_GeraDSKBancoBrasil, Mov_GeraNossoNumBoleto, Mov_DisqueteBaixaBanco, Mov_2022,
Rel_3028, Cad_fpm, Rel_3061, Fun_Contabil, Fun_Desconto, Fun_Numero, Mov_Tramite,
ShellAPI, Mov_2027, Mov_2010, Mov_2024, Mov_2030, Mov_2044;

{$R *.DFM}


procedure TFrm_Mov_DescontoManual.BotoesOnOff(b:boolean);
begin
  pnl_referencia.Enabled := not b ;
  btn_novo.Enabled := not b ;
  btn_alterar.Enabled := not b ;
  btn_salvar.Enabled := b ;
  btn_cancelar.Enabled := b ;
  btn_excluir.Enabled := b ;
  Btn_Fechar.Enabled := not b ;
  btn_minim.Enabled := not b ;
  btn_close.Enabled := not b ;
  btn_parcelamento.Enabled := not b ;
  btn_beneficiario.Enabled := not b ;
  btn_relatorio.Enabled := not b ;
  btn_voltar2.Enabled := not b ;
  btn_voltar3.Enabled := not b ;
end;

procedure TFrm_Mov_DescontoManual.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Lançamentos de Descontos em Folha de Pagamento' ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Situação' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  inherited;
end;

function TFrm_Mov_DescontoManual.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(ed2_cod_beneficiario.name, 'A Inscrição deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local do Desconto deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_tarifa.name, 'O Codigo da Tarifa deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vldesconto_adf.name, 'O Valor do Desconto deve ser Preenchido!', VLD_Preenchido ));
end;

procedure TFrm_Mov_DescontoManual.carregarcombos;
begin
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_sitdesconto', 'nome_sds');
  BAS_CarregarCombo('cb2_cod_sitdesconto', 'nome_sds');
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
end;


procedure TFrm_Mov_DescontoManual.FormShow(Sender: TObject);
begin
  inherited;
  btn_beneficiario.Visible := (not Obj_LocalizarFormAtivo(Frm_Cad_Segurado)) and (not Obj_LocalizarFormAtivo(Frm_Cad_Dependente));
  carregarcombos;
  if FMesReferencia = '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
    edt_ano.text := FormatDateTime('yyyy',date);
  end
  else
  begin
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
    edt_ano.Text := FAnoReferencia;
    Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, FEmpresaFolha);
  end;
  if FBtnClick then
    btn_novoClick(self);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, FEmpresaFolha);
  if (edt_inscricao_ben.Text <> '') and (edt_inscricao_ben.Text <> '0') then
    btn_localizarClick(self);

end;

procedure TFrm_Mov_DescontoManual.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  if wCod_Beneficiario = '' then
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false)
  else
    edt_cod_beneficiario.text := wCod_Beneficiario ;
end;

procedure TFrm_Mov_DescontoManual.btn_localizarClick(Sender: TObject);
begin
  inherited;
  cbx_cod_mes.Refresh;
  cb2_cod_empresafolha.Refresh;
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
  if PageControl.ActivePage = Tbs_principal then begin
    Dlg_Alerta('Selecione uma das opções', self);
    exit;
  end;
  with Fdt_principal.spc_cons_adm_descontofolha02 do begin
    close;
    if not rdb_benefi.Checked then begin
      if edt_inscricao_ben.text = '' then begin
        parambyname('@matriculadebito_seg').AsString := '0';
        parambyname('@inscricao_ben').AsString := '0';
      end else begin
        parambyname('@matriculadebito_seg').AsString := edt_inscricao_ben.text ;
        parambyname('@inscricao_ben').AsString := '999999';
      end;
    end else begin
      if edt_inscricao_ben.text = '' then begin
        parambyname('@inscricao_ben').AsString := '0';
        parambyname('@matriculadebito_seg').AsString := '0';
      end else begin
        parambyname('@inscricao_ben').AsString := edt_inscricao_ben.text ;
        parambyname('@matriculadebito_seg').AsString := '999999';
      end;
    end;
    parambyname('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    parambyname('@dtreferenciaFinal_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    if cbx_cod_tarifa.text = '' then
      parambyname('@cod_tarifa').AsString := '0'
    else
      parambyname('@cod_tarifa').AsString := cbx_cod_tarifa.valueitem ;
    if cb2_cod_sitdesconto.text = '' then
      parambyname('@cod_sitdesconto').AsString := '0'
    else
      parambyname('@cod_sitdesconto').AsString := cb2_cod_sitdesconto.valueitem ;
    if cb2_cod_empresafolha.text = '' then
      parambyname('@cod_empresafolha').AsString := '0'
    else
      parambyname('@cod_empresafolha').AsString := cb2_cod_empresafolha.valueitem ;
    parambyname('@dtpagto_flh').AsString := '';
    parambyname('@dtdesconto_flh').AsString := '';
    parambyname('@nossonumero_flh').AsString := edt_nossonumero_flh.text ;
    parambyname('@cod_order').AsInteger := RgB_Indice.ItemIndex ;
    parambyname('@parcelas').AsInteger := 0 ;
    parambyname('@dtsistema_flh').AsString := '';
    parambyname('@cod_usuario').AsString := '0';
    open;
//    Refresh;
    lbl_total.Caption := 'Total de Descontos => '+IntToStr(DB_RollCount);
  end;
end;


procedure TFrm_Mov_DescontoManual.tbs_detalhesShow(Sender: TObject);
begin
  inherited;
  if FStatus <> FST_novo then
  with Fdt_principal.spc_cons_adm_descontofolha02 do begin
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
      if edt_parcelan_par.text <> '' then begin
        pnl_parcelamento.Visible := true ;
        edt_vlparcelamento.text := formatfloat('###,###,##0.00',FieldByName('vlparcelado').AsFloat);
        edt_vloriginal.text := FormatFloat('##,####,##0.00', strToFloat(STR_RemoveChar(edt_vlparcelamento.text,'.'))/((
        Num_JuroComposto(FieldByName('vlpercjuros_par').AsFloat, str_strtoint(edt_nparcela_par.text)))*str_strtoint(edt_nparcela_par.text)));
      end else
        pnl_parcelamento.Visible := false ;
      if (wCod_Beneficiario <> '0') and (wCod_Beneficiario <> FieldByName('cod_empresafolha').AsString+FieldByName('matriculadebito_seg').AsString) then begin
        ed2_inscricao_benButtonClick(self);
        rdb_beneficiario.Checked := true ;
      end else begin
        edt_carteira.text := 'NÃO BENEFICIÁRIO' ;
        edt_nome.text := FieldByName('nome_ben').AsString ;
        edt_matricula.text := FieldByName('inscricao_ben').AsString ;
        edt_digito.text := FieldByName('titulacartei_ben').AsString ;
        rdg_naobenefi.Checked := true ;
      end;
      GrB_Status.Visible := true ;
    end;
  end;
end;

procedure TFrm_Mov_DescontoManual.ed2_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
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
    DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, '+
    ' b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, m.matriculadebito_seg, m.digitomatdeb_seg '+
    ' from tbl_beneficiario b, tbl_beneficiario b2, tbl_segurado m where b2.cod_beneficiario = m.cod_beneficiario '+
    ' and b2.inscricao_ben = b.inscricao_ben and b.cod_beneficiario = '+ed2_cod_beneficiario.text);
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
end;

procedure TFrm_Mov_DescontoManual.btn_novoClick(Sender: TObject);
begin
{  cbx_cod_mes.Refresh;
  cb2_cod_empresafolha.Refresh;
  if cbx_cod_mes.text = '' then begin
    Dlg_Ok('É necessário selecionar o Mês de Referencia',self);
    exit;
  end;
  if edt_ano.text = '' then begin
    Dlg_Ok('É necessário selecionar o Ano de Referencia',self);
    exit;
  end; }
  inherited;
 { if (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido!', VLD_Preenchido )) then
    Exit;
  FStatus := FST_Novo ;
  wCod_Beneficiario := '' ;
  PageControl.ActivePage := tbs_detalhes ;
  ed2_cod_beneficiario.Text := '' ;
  ed2_inscricao_ben.text := '' ;
  edt_carteira.text := '' ;
  edt_nome.text := '' ;
  edt_matriculadebito.Text := '';
  edt_matricula.text := '' ;
  edt_digito.Text := '';
  cbx_cod_empresafolha.ValueItem := '0' ;
  cbx_cod_empresafolha.text := '  ' ;
  cbx_cod_empresafolha.Clear;
  cbx_cod_empresafolha.Refresh;
  cb2_cod_tarifa.ValueItem := '0' ;
  cb2_cod_tarifa.text := '  ' ;
  cb2_cod_tarifa.Clear;
  cb2_cod_tarifa.Refresh;
  edt_vldesconto_adf.text := '' ;
  edt_dtdesconto_flh.Date := date ;
  edt_obs_flh.text := '' ;
  cbx_cod_sitdesconto.ValueItem := '0' ;
  cbx_cod_sitdesconto.Text := '' ;
  cbx_cod_sitdesconto.Clear;
  cbx_cod_sitdesconto.Refresh;
  edt_dtsitdesconto_flh.text := '' ;
  edt_dtpagto_flh.text := '' ;
  edt_vlpago_flh.text := '' ;
  edt_nguia_flh.text := '' ;
  if edt_inscricao_ben.text <> '' then
    ed2_inscricao_ben.Text := edt_inscricao_ben.text ;
  edt_codtarifa.text := '' ;
  carregarcombos;
  GrB_Status.Visible := false ;
  pnl_parcelamento.Visible := false ;
  BotoesOnOff(true);
  ed2_inscricao_ben.setfocus;  }
  Hide;
  Frm_Mov_2044 := TFrm_Mov_2044.Create(Self);
  Frm_Mov_2044.FMesReferencia := cbx_cod_mes.valueItem;
  Frm_Mov_2044.FAnoReferencia := edt_ano.Text;
  Frm_Mov_2044.FEmpresaFolha := cb2_cod_empresafolha.valueItem;
  Frm_Mov_2044.btn_novoClick(self);
  Frm_Mov_2044.ShowModal;
  Frm_Mov_2044.Release;
  Show;
end;
        
procedure TFrm_Mov_DescontoManual.btn_salvarClick(Sender: TObject);
const
  msgErro = 'Atenção, Erro ao tentar salvar este registro, o aplicativo será fechado e este registro será perdido';
var
  permiteAlterar : boolean ;
  d : Tdate;
begin
  inherited;
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
  if (cb2_cod_tarifa.valueitem = '596') and (FStatus = FST_Novo) then begin
    Dlg_Ok('O código "'+cb2_cod_tarifa.valueitem+'" é um código de parcelamento, não pode ser usado para outros descontos !',self);
    edt_codtarifa.setfocus;
    exit;
  end;
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
  if CriticaParametros then
    Exit;
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
        btn_voltarClick(self);
      end;
    end else begin
      if edt_dtpagto_flh.text <> '' then
        d := edt_dtpagto_flh.Date
      else
        d := 0 ;
      if Fdt_principal.spc_cons_adm_descontofolha02.fieldbyname('nparcela_par').AsString = '' then begin
        if not Set_AlteraDesconto(ed2_cod_beneficiario.text, edt_matricula.text, edt_digito.text,
        edt_vldesconto_adf.text, cb2_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem, edt_vljuros_flh.text,
        edt_dtdesconto_flh.date, cbx_cod_sitdesconto.valueitem, edt_dtsitdesconto_flh.date,
        edt_vlpago_flh.text, d, edt_obs_flh.text, edt_nguia_flh.text,
        Fcod_usuario, Fdt_principal.spc_cons_adm_descontofolha02.fieldbyname('cod_descontofolha').asstring, FCod_TelaSistema) then begin
          Dlg_Erro(msgErro, self);
          Application.Terminate;
        end;
      end else begin
        if not Set_AlteraParcelamento(ed2_cod_beneficiario.text, edt_matricula.text, edt_digito.text,
        cb2_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem, edt_obs_flh.text, edt_nguia_flh.text,
        FCod_Usuario, edt_vldesconto_adf.text, cbx_cod_sitdesconto.valueitem, edt_dtsitdesconto_flh.date,
        edt_vlpago_flh.text, d, Fdt_principal.spc_cons_adm_descontofolha02.fieldbyname('cod_descontofolha').asstring,
        edt_parcelan_par.text, cbx_cod_mes.valueItem, edt_ano.text, FCod_TelaSistema) then begin
          Dlg_Erro(msgErro, self);
          Application.Terminate;
        end;
      end;
      Fdt_principal.spc_cons_adm_descontofolha02.close;
      Fdt_principal.spc_cons_adm_descontofolha02.open;
      btn_cancelarClick(self);
    end;
  end;
  EscreveLog(btn_salvar.name);
end;

procedure TFrm_Mov_DescontoManual.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  Application.ProcessMessages;
  edt_dtdesconto_flh.Enabled := true ;
  BotoesOnOff(false);
  Application.ProcessMessages;
  if FStatus = FST_Novo then
    PageControl.ActivePage := Tbs_principal
  else
    PageControl.ActivePage := tbs_lancamento ;
  FStatus := 0 ;
  Application.ProcessMessages;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Mov_DescontoManual.btn_alterarClick(Sender: TObject);
begin
  cbx_cod_mes.Refresh;
  cb2_cod_empresafolha.Refresh;
  if cbx_cod_mes.text = '' then begin
    Dlg_Ok('É necessário selecionar o Mês de Referencia',self);
    exit;
  end;
  if edt_ano.text = '' then begin
    Dlg_Ok('É necessário selecionar o Ano de Referencia',self);
    exit;
  end;
  if cb2_cod_empresafolha.text = '' then begin
    Dlg_Ok('É necessário selecionar a Empresa para Folha',self);
    exit;
  end;
  if PageControl.ActivePage = Tbs_principal then begin
    Dlg_Ok('Para alterar é necessário estar na tela de consulta e selecionar um desconto !', self);
    PageControl.ActivePage := tbs_lancamento ;
    exit ;
  end;
  if (not Fdt_principal.spc_cons_adm_descontofolha02.active) or
  (Fdt_principal.spc_cons_adm_descontofolha02.RecordCount < 1) then begin
    Dlg_Ok('É necessário selecionar um Lançamento',self);
    exit;
  end;
  
  if (Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').AsString <> '') then begin
//    pnl_dados.Enabled := false;
  end else
    pnl_dados.Enabled := true;

  if (STR_StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) <=
  STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem)))) then begin
    Panel8.Enabled := false;

  end;
  inherited;
  edt_dtdesconto_flh.Enabled := false ;
  wCod_Beneficiario := '' ;
  PageControl.ActivePage := tbs_detalhes ;
  BotoesOnOff(true);
  FStatus := FST_Alteracao ;
  EscreveLog(btn_alterar.name);
end;

procedure TFrm_Mov_DescontoManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
end;

procedure TFrm_Mov_DescontoManual.DBGrid5DblClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1 ;
end;

procedure TFrm_Mov_DescontoManual.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  with Fdt_principal.spc_cons_adm_descontofolha02 do
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

procedure TFrm_Mov_DescontoManual.cb2_cod_empresafolhaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
      btn_localizarclick(self);
  end;
end;

procedure TFrm_Mov_DescontoManual.btn_relatorioClick(Sender: TObject);
begin
  inherited;
    Hide;
    Frm_Rel_ExtratoDesconto001 := TFrm_Rel_ExtratoDesconto001.Create(Self);
    Frm_Rel_ExtratoDesconto001.FMesReferencia := cbx_cod_mes.valueitem ;
    Frm_Rel_ExtratoDesconto001.FAnoReferencia := edt_ano.text ;
    Frm_Rel_ExtratoDesconto001.FEmpresaFolha := cb2_cod_empresafolha.valueitem ;
    Frm_Rel_ExtratoDesconto001.ShowModal;
    Frm_Rel_ExtratoDesconto001.Release;
    Show;
end;

procedure TFrm_Mov_DescontoManual.btn_parcelamentoClick(Sender: TObject);
begin
  inherited;
    Hide;
    Frm_Mov_Parcelamento := TFrm_Mov_Parcelamento.Create(Self);
    Frm_Mov_Parcelamento.ShowModal;
    Frm_Mov_Parcelamento.Release;
    Show;
end;

procedure TFrm_Mov_DescontoManual.edt_codtarifaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
end;

procedure TFrm_Mov_DescontoManual.edt_obs_flhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (FStatus = FST_novo) then
    btn_salvarClick(self);
end;

procedure TFrm_Mov_DescontoManual.PDJButton1Click(Sender: TObject);
begin
  inherited;
  //PageControl.ActivePage := tbs_lancamento ;
  Hide;
  Frm_Mov_2044 := TFrm_Mov_2044.Create(Self);
  Frm_Mov_2044.FMesReferencia := cbx_cod_mes.valueItem;
  Frm_Mov_2044.FAnoReferencia := edt_ano.Text;
  Frm_Mov_2044.FEmpresaFolha := cb2_cod_empresafolha.valueItem;
  Frm_Mov_2044.ShowModal;
  Frm_Mov_2044.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePage := Tbs_principal ;
end;

procedure TFrm_Mov_DescontoManual.ed2_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (edt_carteira.text = '') then
      ed2_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_DescontoManual.PDJButton2Click(Sender: TObject);
begin
  inherited;
  edt_nossonumero_flh.text := '' ;
  edt_inscricao_ben.Clear;
  cb2_cod_sitdesconto.Clear;
  cbx_cod_tarifa.Clear;
  edt_inscricao_ben.Refresh;
  cb2_cod_sitdesconto.Refresh;
  cbx_cod_tarifa.Refresh;
  carregarcombos;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
end;

procedure TFrm_Mov_DescontoManual.PDJButton3Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2027 := TFrm_Mov_2027.Create(Self);
  Frm_Mov_2027.wCod_Desconto := Fdt_principal.spc_cons_adm_descontofolha02.FieldByname('cod_descontofolha').AsString; 
  Frm_Mov_2027.ShowModal;
  Frm_Mov_2027.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.PDJButton7Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2022 := TFrm_Mov_2022.Create(Self);
  Frm_Mov_2022.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Mov_2022.FAnoReferencia := edt_ano.text ;
  Frm_Mov_2022.FEmpresaFolha := cb2_cod_empresafolha.valueitem ;
  Frm_Mov_2022.ShowModal;
  Frm_Mov_2022.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.PDJButton9Click(Sender: TObject);
begin
  inherited;
    Hide;
    Frm_Rel_3028 := TFrm_Rel_3028.Create(Self);
    Frm_Rel_3028.FMesReferencia := cbx_cod_mes.valueitem ;
    Frm_Rel_3028.FAnoReferencia := edt_ano.text ;
    Frm_Rel_3028.FEmpresaFolha := cb2_cod_empresafolha.valueitem ;
    Frm_Rel_3028.ShowModal;
    Frm_Rel_3028.Release;
    Show;
end;

procedure TFrm_Mov_DescontoManual.rdb_beneficiarioClick(Sender: TObject);
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

procedure TFrm_Mov_DescontoManual.edt_digitodebitoExit(Sender: TObject);
begin
  inherited;
{  if edt_digitodebito.text = '' then
    edt_digitodebito.text := '0';
  if DB_OpenSQL('select nome_fpm, cod_empresafolha from tbl_fpm where matricula_mte = '+
  edt_matriculadebito.text+' and cod_empresafolha = '+cb2_cod_empresafolha.valueitem) > 0 then begin
    edt_carteira.text := 'Não Segurado' ;
    edt_nome.text := Tab.FieldByName('nome_fpm').AsString;
    edt_matricula.text := edt_matriculadebito.text;
    edt_digito.text := edt_digitodebito.text;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Tab.FieldByName('cod_empresafolha').AsString);
    ed2_cod_beneficiario.text := '0' ;
  end else begin
    Dlg_Alerta('Não foi possível encontrar no Cadastro de Servidores !',self);
    edt_matriculadebito.SetFocus;
  end;
  DB_ClearSQL; }
end;

procedure TFrm_Mov_DescontoManual.rdb_benefiClick(Sender: TObject);
begin
  inherited;
    pnl_benefi.caption :=  '    Inscrição                                                                                                                                                                    Nosso Número';
    edt_inscricao_ben.ButtonExist := true ;
end;

procedure TFrm_Mov_DescontoManual.RadioButton3Click(Sender: TObject);
begin
  inherited;
    pnl_benefi.caption :=  '    Matrícula                                                                                                                                                                    Nosso Número';
    edt_inscricao_ben.ButtonExist := false ;
end;

procedure TFrm_Mov_DescontoManual.DBGrid5DrawColumnCell(Sender: TObject;
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
    dbgrid5.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Mov_DescontoManual.btn_voltar3Click(Sender: TObject);
begin
  inherited;
  PageControl.ActivePage := tbs_lancamento ;
end;

procedure TFrm_Mov_DescontoManual.PDJButton10Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3061 := TFrm_Rel_3061.Create(Self);
  Frm_Rel_3061.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3061.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3061.ShowModal;
  Frm_Rel_3061.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.PDJButton11Click(Sender: TObject);
var
processo, ano : string;
begin
  inherited;
  if (not Fdt_principal.spc_cons_adm_descontofolha02.active) or
  (Fdt_principal.spc_cons_adm_descontofolha02.RecordCount < 1) then
  begin
    Hide;
    Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
    Frm_Mov_Tramite.ShowModal;
    Frm_Mov_Tramite.Release;
    Show;
  end else
  begin
  DB_OpenSQL('select processo_ben from tbl_beneficiario where cod_beneficiario ='+
  Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('cod_beneficiario').AsString);
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

procedure TFrm_Mov_DescontoManual.PDJButton4Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2010 := TFrm_Mov_2010.Create(Self);
  Frm_Mov_2010.FCodDesconto := Fdt_principal.spc_cons_adm_descontofolha02.fieldByname('cod_descontofolha').AsString;
  Frm_Mov_2010.ShowModal;
  Frm_Mov_2010.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.PDJButton5Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2024 := TFrm_Mov_2024.Create(Self);
  Frm_Mov_2024.FCodDesconto := Fdt_principal.spc_cons_adm_descontofolha02.FieldByname('cod_descontofolha').AsString;
  Frm_Mov_2024.ShowModal;
  Frm_Mov_2024.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.PDJButton6Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2030 := TFrm_Mov_2030.Create(Self);
  Frm_Mov_2030.wCod_Desconto := Fdt_principal.spc_cons_adm_descontofolha02.FieldByname('cod_descontofolha').AsString;
  Frm_Mov_2030.wParcela := Fdt_principal.spc_cons_adm_descontofolha02.fieldByname('parcelan_par').AsString;
  Frm_Mov_2030.ShowModal;
  Frm_Mov_2030.Release;
  Show;
end;

procedure TFrm_Mov_DescontoManual.edt_matriculadebitoExit(Sender: TObject);
begin
  inherited;
  if edt_matriculadebito.Text <> '' then begin
    if DB_OpenSQL('select nome_fpm, digito_mte, cod_empresafolha from tbl_fpm where matricula_mte = '+
    edt_matriculadebito.Text+' and cod_empresafolha = '+cb2_cod_empresafolha.valueitem) > 0 then begin
      edt_carteira.text := 'Não Segurado' ;
      edt_nome.text := Tab.FieldByName('nome_fpm').AsString;
      edt_matricula.text := edt_matriculadebito.text;
      edt_digito.text := Tab.FieldByName('digito_mte').AsString;//edt_digitodebito.text;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Tab.FieldByName('cod_empresafolha').AsString);
      ed2_cod_beneficiario.text := '0' ;
    end else begin
      Dlg_Alerta('Não foi possível encontrar no Cadastro de Servidores !',self);
     // edt_matriculadebito.SetFocus;
    end;
    DB_ClearSQL;
  end;  
end;

end.


