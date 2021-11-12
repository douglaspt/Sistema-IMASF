unit Mov_Parcelamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellAPI;

type
  TFrm_Mov_Parcelamento = class(TFrm_Bas_TelaPadrao)
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_novo: TPDJButton;
    DataSource3: TDataSource;
    panel: TPanel;
    ed2_cod_beneficiario: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    PageControl: TPageControl;
    TbS_Novo: TTabSheet;                                                                                             
    TbS_Consulta: TTabSheet;
    Panel10: TPanel;
    cb2_cod_tarifa: TDCComboBox;
    edt_codtarifa: TDCEdit;
    Panel12: TPanel;
    edt_dtdesconto_flh: TDCDateEdit;
    Panel7: TPanel;
    edt_dtparcela1: TDCDateEdit;
    Panel11: TPanel;
    edt_vldesconto_adf: TDCEdit;
    Panel1: TPanel;
    edt_nparcelas: TDCEdit;
    Panel5: TPanel;
    edt_vlparcelar: TDCEdit;
    Panel17: TPanel;
    edt_obs_flh: TDCEdit;
    DBGrid5: TDBGrid;
    PDJButton1: TPDJButton;
    btn_cancelaParcelamento: TPDJButton;
    edt_txjuro: TDCEdit;
    edt_vlparcelado: TDCEdit;
    btn_calcular: TPDJButton;
    tbs_branco: TTabSheet;
    Label1: TLabel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel24: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    Panel9: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Label2: TLabel;
    cbx_cod_indice: TDCComboBox;
    Panel4: TPanel;
    edt_vltotal: TDCEdit;
    Panel13: TPanel;
    edt_primParcela: TDCEdit;
    Panel14: TPanel;
    edt_demaisParcela: TDCEdit;
    rdb_matricula: TRadioButton;
    rdb_beneficiario: TRadioButton;
    edt_matriculadebito: TDCEdit;
    edt_digitodebito: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    BitBtn2: TBitBtn;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    MemoAuditoria: TMemo;
    btn_voltar: TPDJButton;
    pnl_alertainscricao: TPanel;
    pnl_alertamatricula: TPanel;
    edt_cod_sitbeneficiario: TDCEdit;
    pnl_alertaIGPM: TPanel;
    pnl_margem: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed2_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codtarifaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_cancelaParcelamentoClick(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure edt_nparcelasExit(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    ChaveExp : integer;
    vlMargem : double;
    procedure BotoesOnOff(b:boolean);
    procedure AtualizarSitBeneficiario(sit:string);
    procedure CalculaJuros();
    procedure PesquisaMargem();
    function  CriticaParametros : Boolean ;
    function  PesquisarCotaIGPM(dtcota : String) : double;
  public
    { Public declarations }
    wCod_Beneficiario, wMatricula, WInscricao, wCod_empresafolha, wCod_tarifa, wObs, wVldesconto : String ;
  end;

var
  Frm_Mov_Parcelamento: TFrm_Mov_Parcelamento;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
     Fun_ConsCadastro, Fun_obj, Cad_Segurado, Cad_Dependente, Fun_Numero, dtm_principal2,
     Fun_Acesso, Fun_Contabil, Fun_Test, Fun_desconto, Mov_2044, Fun_Data,
  Bas_Impressao;

{$R *.DFM}

procedure TFrm_Mov_Parcelamento.AtualizarSitBeneficiario(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    pnl_alertainscricao.Caption := '***  '+'Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alertainscricao.color := clYellow;
      2 : pnl_alertainscricao.color := clRed;
    end;
    pnl_alertainscricao.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Mov_Parcelamento.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := not b ;
  btn_salvar.Enabled := b ;
  btn_cancelar.Enabled := b ;
  Btn_Fechar.Enabled := not b ;
  btn_minim.Enabled := not b ;
  btn_close.Enabled := not b ;
//  Panel3.Visible := b ;
end;

procedure TFrm_Mov_Parcelamento.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Lançamentos de Descontos em Folha de Pagamento' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Situação' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  inherited;
end;

procedure TFrm_Mov_Parcelamento.FormShow(Sender: TObject);
begin
  inherited;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_indice', 'nome_ind');
//  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa where cod_statusAtivo = 1 and parcelamento_tar = 1');
  if (wMatricula <> '') or (WInscricao <> '') then
  begin
    btn_novoClick(self);
    if rdb_beneficiario.Checked then
      ed2_inscricao_benButtonClick(self)
    else begin
      edt_matriculadebito.text := wMatricula;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, wCod_empresafolha);
      cbx_cod_empresafolhaExit(self);
    end;
    edt_codtarifa.Text := wcod_tarifa;
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
    edt_obs_flh.Text := wObs;
    edt_vldesconto_adf.Text:= STR_RemoveChar(wVldesconto,'.');
  end;
  //edt_matriculadebito.SetFocus;
end;

procedure TFrm_Mov_Parcelamento.ed2_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  pnl_alertamatricula.Visible:= False;
  pnl_alertainscricao.Visible:= False;
  if FStatus <> FST_Novo then exit ;
  if ed2_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+ed2_inscricao_ben.text;
  if WInscricao <> '' then
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+WInscricao+' and b.titulacartei_ben = 0';
  if wCod_Beneficiario = '' then
    ed2_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false)
  else
    ed2_cod_beneficiario.text := wCod_Beneficiario ;
  if ed2_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
    edt_matricula.text := '' ;
  end else begin
{    DB_OpenSQL('c b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, '+
    ' b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, m.matriculadebito_seg, m.digitomatdeb_seg, tipo_sit, nome_sit '+
    ' from tbl_beneficiario b, tbl_beneficiario b2, tbl_segurado m, tbl_sitbeneficiario st where b2.cod_beneficiario = m.cod_beneficiario '+
    ' and st.cod_sitbeneficiario = b.cod_sitbeneficiario'+
    ' and b2.inscricao_ben = b.inscricao_ben and b.cod_beneficiario = '+ed2_cod_beneficiario.text);}
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
      edt_cod_sitbeneficiario.Text := FieldByName('cod_sitbeneficiario').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FieldByName('cod_empresafolha').AsString);
      AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
      if cbx_cod_empresafolha.ValueItem = 5 then
        PesquisaMargem;
      if FieldByName('cod_situacao_fpm').Text = '2' then
         begin
         pnl_alertamatricula.Visible:= True;
         pnl_alertamatricula.Caption:= 'MATRÍCULA DESATIVADA';
         pnl_alertamatricula.Color:= clBlack;
         end;
    end;
  end;
  edt_codtarifa.SetFocus;
  WInscricao := '';
end;

procedure TFrm_Mov_Parcelamento.btn_novoClick(Sender: TObject);
begin
  inherited;
  pnl_margem.Visible := false;
  pnl_alertamatricula.Visible:= False;
  pnl_alertainscricao.Visible:= False;
  ed2_cod_beneficiario.text := '0';
  if rdb_beneficiario.Checked then begin
    edt_matriculadebito.visible := false ;
    cbx_cod_empresafolha.Enabled := false;
    //edt_digitodebito.visible := false ;
    panel.Caption := '   Inscrição                                                                               Local de Desconto' ;
    ed2_inscricao_ben.SetFocus;
  end else begin
    edt_matriculadebito.visible := true ;
    //edt_digitodebito.visible := true ;
    cbx_cod_empresafolha.Enabled := true;
    panel.Caption := '   Matrícula de Débito                                                                 Local de Desconto' ;
    ed2_cod_beneficiario.text := '0';
    edt_matriculadebito.setfocus;
  end;
  PageControl.ActivePage := TbS_Novo ;
  {ed2_cod_beneficiario.Text := '' ;
  ed2_inscricao_ben.text := '' ;
  edt_carteira.text := '' ;
  edt_nome.text := '' ;
  edt_matricula.text := '' ;
  edt_vldesconto_adf.text := '' ;
  edt_nparcelas.text := '' ;
  edt_vlparcelar.text := '' ;
  edt_obs_flh.text := '' ;   }
  cbx_cod_empresafolha.ItemIndex := -1;
  cb2_cod_tarifa.ItemIndex := -1;
  cbx_cod_indice.ItemIndex := -1;
  Obj_EmptyEdit(self);
  Obj_SetFormObjValueByName(self, cbx_cod_indice.name, '1');
  BotoesOnOff(true);
  FStatus := FST_Novo ;
  EscreveLog(btn_novo.Name);
end;

function TFrm_Mov_Parcelamento.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_carteira.name, 'Um beneficiário deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'Empresa para folha (local de desconto) deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_tarifa.name, 'Código de Tarifa deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_indice.name, 'Um índice de pesquisa deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtdesconto_flh.name, 'Data de Desconto deve ser uma data válida ! Verifique se o campo não está em branco, ou se o Dia ou Mês ou Ano digitados são validos ', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtparcela1.name, 'Data da primeira parcela tem q ser uma data válida ! Verifique se o campo não está em branco, ou se o Dia ou Mês ou Ano digitados são validos', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_vldesconto_adf.name, 'Entre com um valor de desconto !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nparcelas.name, 'Número de Parcelas deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_txjuro.name, 'Percentual de taxa de juros deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlparcelar.name, 'Clique no Calcular Parcela, para depois salvar !', VLD_Preenchido ));
end;

procedure TFrm_Mov_Parcelamento.btn_salvarClick(Sender: TObject);
var
  uF : TDateTime ;
  permiteAlterar, permiteAlterar02 : boolean ;
  executado : boolean;
  vlParcela : double;
begin
  inherited;
  permiteAlterar := Acs_AcessoEspecial('201501');
  if CriticaParametros then
    Exit;
  uF := Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem);
  btn_calcularClick(self);
//  if StrToFloat(edt_vlparcelar.Text) <= 40 then begin
//    Dlg_Alerta('O Valor da Parcela tem q ser maior do que R$ 40,00 !',self);
//    Exit;
//  end;

//20/09/2012
{  if (rdb_matricula.Checked) and (edt_matriculadebito.Text <> '') then
  begin
    if DB_OpenSQL('select cod_situacao_fpm from tbl_fpm where matricula_mte = '+edt_matriculadebito.Text+
    ' and cod_empresafolha = '+cbx_cod_empresafolha.valueitem) > 0 then
      if Tab.FieldByName('cod_situacao_fpm').AsString = '2' then
      begin
        Dlg_Alerta('Não é possível efetuar um lançamento para matrícula Inativa!',self);
        Exit;
      end;
  end;}

  if Test_DataValida6meses(edt_dtdesconto_flh.text) then begin
    Dlg_Alerta('Data do Desconto inválida. Data superior a 6 meses!',self);
    Exit;
  end;
  if Test_DataValida6meses(edt_dtparcela1.text) then begin
    Dlg_Alerta('Data da 1º Parcela inválida. Data superior a 6 meses!',self);
    Exit;
  end;
  if (FormatDateTime('yyyymm', edt_dtparcela1.date) <= FormatDateTime('yyyymm', uF)) and
  (not permiteAlterar) then begin
     Dlg_OK('A folha para o mês informado já foi gerada e enviada, assim não se pode mais efetuar lançamentos neste mês',self);
     edt_dtparcela1.SetFocus;
     exit;
  end;
  //(cbx_cod_empresafolha.valueitem = '99') and
 { if (cb2_cod_tarifa.valueitem <> '516') and (cb2_cod_tarifa.valueitem <> '596') and
  (cb2_cod_tarifa.valueitem <> '518') and (cb2_cod_tarifa.valueitem <> '632') and (cb2_cod_tarifa.valueitem <> '634') and (cb2_cod_tarifa.valueitem <> '604')
  and (cb2_cod_tarifa.valueitem <> '873') and (cb2_cod_tarifa.valueitem <> '874') and (cb2_cod_tarifa.valueitem <> '875')
  and (cb2_cod_tarifa.valueitem <> '879') and (cb2_cod_tarifa.valueitem <> '880') and (cb2_cod_tarifa.valueitem <> '881')
  and (cb2_cod_tarifa.valueitem <> '979') and (cb2_cod_tarifa.valueitem <> '980') and (cb2_cod_tarifa.valueitem <> '981') then
  begin
    Dlg_Ok('O código "'+cb2_cod_tarifa.valueitem+'" não é um código de parcelamento !',self);
    edt_codtarifa.setfocus;
    exit;
  end; }
  vlParcela := StrToFloat(STR_RemoveChar(edt_vlparcelar.text,'.'));
  permiteAlterar02 := Acs_AcessoEspecial('201502');
  if cbx_cod_empresafolha.ValueItem = 5 then
    if (vlParcela > vlMargem) and (not permiteAlterar02) then
    begin
      Dlg_Alerta('Atenção! Margem insuficiente para realizar o Parcelamento. Saldo: '+FormatFloat('###,###,##0.00',vlMargem),self);
      Exit;
    end;
  if pnl_alertaIGPM.Visible then
    if not Dlg_YesNo('Atenção! O IGPM do mês atual não foi atualizado tem Certeza que deseja continuar?',Self) then
      exit;
  DB_BeginTrans;
  if wObs <> '' then
    edt_obs_flh.Text := 'Parc.: '+wObs;
  edt_vldesconto_adf.Text := STR_RemoveChar(edt_vldesconto_adf.Text,'.');
  executado := DB_ExecSQL('exec spc_adm_parcelamento '+ed2_cod_beneficiario.text+', '+
  edt_matricula.text+', '+edt_digito.text+', '+
  cb2_cod_tarifa.valueitem+', '+cbx_cod_empresafolha.valueitem+', '+
  cbx_cod_indice.valueitem+', '+DB_FormatDataSQL(edt_dtparcela1.text, ftdate)+', '''+
  Formatdatetime('mm', edt_dtdesconto_flh.date) + '/01/'+ Formatdatetime('yyyy', edt_dtdesconto_flh.date)+''', '+
  DB_FormatDataSQL(edt_vlparcelado.text, ftfloat) + ', ' + edt_nparcelas.text + ', '+
  IntToStr(FCod_Usuario)+','+DB_FormatDataSQL(edt_txjuro.Text,ftFloat)+','''+edt_obs_flh.Text+'''');
  if executado then
    executado := Set_HistoricoDesconto(Get_UltimoDesconto(FCod_Usuario), Fcod_usuario, FCod_TelaSistema, 1, '');
  if (wObs <> '') and (executado) then
  begin
    executado := DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 901,'+
    ' obs_flh = ''O valor foi Parcelado'' where cod_descontofolha in ('+wobs+')');
  end;
  if executado then
    DB_Commit
  else
    DB_RollBack;
//      DB_ExecSQL('exec spc_adm_calcularparcela '''+Formatdatetime('mm', edt_dtparcela1.date) + '/01/'+ Formatdatetime('yyyy', edt_dtparcela1.date)+'''');
//      DB_ExecSQL('exec spc_adm_calcularparcela '''+Formatdatetime('mm', edt_dtdesconto_flh.date) + '/01/'+ Formatdatetime('yyyy', edt_dtdesconto_flh.date)+'''');
  btn_cancelarClick(self);
  cbx_cod_empresafolha.Visible := false;
  EscreveLog(btn_salvar.Name);
  if ed2_inscricao_ben.Text = '' then
     ed2_inscricao_ben.Text:= '0';
  GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text, 'Novo Parc. ' +
  'Inscr.' + ed2_inscricao_ben.Text + ', Matr.' + edt_matricula.Text +
  '-' + edt_digito.Text + ', '+ FormatDateTime('mmmm/yyyy', edt_dtdesconto_flh.Date) + ', ' + cbx_cod_empresafolha.Text + ', ' + Copy(cb2_cod_tarifa.Text,1,3) +
  ', Vlr ' + edt_vldesconto_adf.Text + ' em ' + edt_nparcelas.Text +
  'x' + edt_txjuro.Text + '%','Data Desconto ' + edt_dtdesconto_flh.Text +
  ', Data 1º Parcela ' + edt_dtparcela1.Text + ', índice ' + cbx_cod_indice.Text,116);
  if (vlParcela > vlMargem) and (permiteAlterar02) then
  begin
    with Fdt_principal2.spc_cons_adm_beneficiario002 do
    begin
      close;
      ParamByName('@inscricao_ben').AsString := ed2_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := '0';
      open;
    end;
    Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
    Frm_Bas_Impressao.FCampo1 := FormatFloat('###,###,##0.00', (strToFloat(STR_RemoveChar(edt_vldesconto_adf.text,'.'))));
    Frm_Bas_Impressao.FCampo2 := edt_nparcelas.text;
    Frm_Bas_Impressao.FCampo_Topo := 'REQUERIMENTO';
    Frm_Bas_Impressao.showReport(4235);
    Fdt_principal2.spc_cons_adm_beneficiario002.close;
  end;
end;

procedure TFrm_Mov_Parcelamento.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  DB_RollBack;
  PageControl.ActivePage := TbS_Branco ;
  edt_dtdesconto_flh.Enabled := true ;
  BotoesOnOff(false);
//  Fdt_principal.spc_cons_adm_descontofolha02.close;
//  Fdt_principal.spc_cons_adm_descontofolha02.open;
  FStatus := 0 ;
  cbx_cod_empresafolha.Enabled := false;
  EscreveLog(btn_cancelar.Name);
end;

procedure TFrm_Mov_Parcelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
end;

procedure TFrm_Mov_Parcelamento.ed2_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
      ed2_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_Parcelamento.edt_codtarifaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
end;

procedure TFrm_Mov_Parcelamento.PDJButton1Click(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_adm_descontofolha02 do begin
    close;
    if ed2_inscricao_ben.text = '' then
      parambyname('@inscricao_ben').AsString := '0'
    else
      parambyname('@inscricao_ben').AsString := ed2_inscricao_ben.text ;
    parambyname('@dtreferenciaInicial_flh').AsString := '' ;
    parambyname('@dtreferenciaFinal_flh').AsString := '' ;
    parambyname('@cod_tarifa').AsString := '0';
    parambyname('@cod_sitdesconto').AsString := '0';
    if cbx_cod_empresafolha.text = '' then
      parambyname('@cod_empresafolha').AsString := '0'
    else
      parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem ;
    parambyname('@dtpagto_flh').AsString := '';
    parambyname('@dtdesconto_flh').AsString := '';
    parambyname('@cod_order').AsInteger := 1 ;
    parambyname('@parcelas').AsInteger := 1 ;
    open;
  end;
end;

procedure TFrm_Mov_Parcelamento.btn_cancelaParcelamentoClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Confirma o Cancelamento de TODAS AS PARCELAS deste cancelamento ?', self) then begin
    if DB_ExecSQL('spc_adm_cancelaparcelamento '+
    Fdt_principal.spc_cons_adm_descontofolha02.fieldbyname('cod_descontofolha').asstring) then begin
      Dlg_Ok('Cancelamento Efetuado !', self);
      Fdt_principal.spc_cons_adm_descontofolha02.close;
      Fdt_principal.spc_cons_adm_descontofolha02.open;
    end else
      Dlg_Alerta('Erro ao cancelar Boleto', self);
  end;
  EscreveLog(btn_cancelaParcelamento.Name);
end;

procedure TFrm_Mov_Parcelamento.btn_calcularClick(Sender: TObject);
var
 v :double;
begin
  inherited;
  CalculaJuros;
  edt_vlparcelar.text := FormatFloat('###,###,##0.00', (strToFloat(STR_RemoveChar(edt_vldesconto_adf.text,'.'))*
  (Num_JuroComposto(strtofloat(edt_txjuro.text), str_strtoint(edt_nparcelas.text)))));
  edt_vlparcelado.text := FormatFloat('###,###,###0.00', str_strtoint(edt_nparcelas.text)*(strToFloat(STR_RemoveChar(edt_vldesconto_adf.text,'.'))*
  (Num_JuroComposto(strtofloat(edt_txjuro.text), str_strtoint(edt_nparcelas.text)))));
  with Fdt_principal2.spc_cont_simulareajuste do begin
    parambyname('@dtcotaIni').asstring := FormatDateTime('mm/01/yyyy',edt_dtdesconto_flh.date);
    parambyname('@dtcotaFin').asstring := FormatDateTime('mm/01/yyyy',edt_dtparcela1.date) ;
    parambyname('@cod_indice').asstring := cbx_cod_indice.valueitem ;
    v := (strToFloat(STR_RemoveChar(edt_vldesconto_adf.text,'.'))*
    (Num_JuroComposto(strtofloat(edt_txjuro.text), str_strtoint(edt_nparcelas.text))));
//  teste   DB_OpenSQL('exec spc_cont_simulareajuste ''11/01/1994'', ''12/01/2008'', '+cbx_cod_indice.valueitem+', '+STR_SubstChar(FormatFloat('##########0.00', v),',','.'));
    parambyname('@valor').asstring := STR_SubstChar(FormatFloat('########0.00', v),',','.');
    open;
    edt_primParcela.text   := FormatFloat('###,###,##0.00', FieldByName('vlreajustado').AsFloat);
    edt_demaisParcela.text := edt_primParcela.text;
    edt_vltotal.text   := FormatFloat('###,###,##0.00', FieldByName('vlreajustado').AsFloat*str_strtoint(edt_nparcelas.text));
    close;
  end;
  if StrToFloat(STR_RemoveChar(edt_vlparcelar.Text,'.')) <= 40 then
    Dlg_Alerta('O Valor da Parcela tem q ser maior do que R$ 40,00 !',self);
end;

procedure TFrm_Mov_Parcelamento.cbx_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  pnl_alertamatricula.Visible:= False;
  pnl_alertainscricao.Visible:= False;
  if (edt_matriculadebito.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
  begin
{    if DB_OpenSQL('select nome_fpm, digito_mte from tbl_fpm where matricula_mte = '+
    edt_matriculadebito.text+' and cod_empresafolha = '+cbx_cod_empresafolha.valueitem) > 0 then begin}
    if DB_OpenSQL('select f.nome_fpm, f.digito_mte, f.cod_empresafolha, f.cod_situacao_fpm, b.cod_sitbeneficiario from tbl_fpm f '+
                  'left join tbl_segurado m on m.matriculadebito_seg = f.matricula_mte '+
                  'left join tbl_beneficiario b on b.cod_beneficiario = m.cod_beneficiario and b.cod_empresafolha = f.cod_empresafolha '+
                  'where f.matricula_mte = '+ edt_matriculadebito.Text+' and f.cod_empresafolha = '+cbx_cod_empresafolha.valueitem) > 0 then begin
      edt_carteira.text := 'Não Segurado' ;
      edt_nome.text := Tab.FieldByName('nome_fpm').AsString;
      edt_matricula.text := edt_matriculadebito.text;
      edt_digito.text := Tab.FieldByName('digito_mte').AsString;
      ed2_cod_beneficiario.text := '0' ;
      cbx_cod_empresafolha.Enabled := false;
      if Tab.FieldByName('cod_situacao_fpm').Text = '2' then
      begin
        pnl_alertamatricula.Visible:= True;
        pnl_alertamatricula.Caption:= 'MATRÍCULA DESATIVADA';
        pnl_alertamatricula.Color:= clBlack;
      end;
      if cbx_cod_empresafolha.ValueItem = 5 then
        PesquisaMargem;
      edt_cod_sitbeneficiario.Text := Tab.FieldByName('cod_sitbeneficiario').AsString;
      AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
    end else begin
      Dlg_Alerta('Não foi possível encontrar no Cadastro de Servidores !',self);
      edt_matriculadebito.SetFocus;
    end;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Mov_Parcelamento.BitBtn2Click(Sender: TObject);
begin
  inherited;
  MemoAuditoria.Clear;
  if ed2_inscricao_ben.Text = '' then
     ChaveExp:= 999999999
  else
     ChaveExp:= StrToInt(ed2_cod_beneficiario.text);
  PageControl.ActivePageIndex:= 3;
  GetInfoAuditoria(self, MemoAuditoria.name, ChaveExp);
  MemoAuditoria.SetFocus;
// Para subir a primeira linha
  { Preciona e Mantém pressionada a tecla CTRL }
  keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
  { Somente Pressiona a Tecla HOME }
  keybd_event(VK_HOME, 0, 0, 0);
  { Libera a tecla CTRL }
  keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
end;

procedure TFrm_Mov_Parcelamento.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex:= 0;
end;

function  TFrm_Mov_Parcelamento.PesquisarCotaIGPM(dtcota : String) : double;
begin
  DB_OpenSQL('select vlcota_cti from tbl_cotacaoIndice where cod_indice = 1'+
  ' and dtcota_cti = '''+dtcota+'''');
  if Tab.FieldByName('vlcota_cti').AsFloat > 0 then
    result := Tab.FieldByName('vlcota_cti').AsFloat
  else
    Result := 0;  
end;

procedure TFrm_Mov_Parcelamento.CalculaJuros();
var
  igpm, juros, vlCotaAtual, vlCotaMesAnterior : double;
begin
  inherited;
  DB_OpenSQL('select vlcota_cti, dtalteracao_cti from tbl_cotacaoIndice where cod_indice = 1'+
  ' and dtcota_cti = '''+FormatDateTime('mm/01/yyyy',Date)+'''');
  if Tab.FieldByName('dtalteracao_cti').AsString = '' then
  begin
    pnl_alertaIGPM.Visible := true;
    vlCotaAtual := PesquisarCotaIGPM(FormatDateTime('mm/01/yyyy',Data_Subtrai1mes(Date)));
    vlCotaMesAnterior := PesquisarCotaIGPM(FormatDateTime('mm/01/yyyy', Data_Subtrai1mes(Data_Subtrai1mes(Date))));
  end
  else
  begin
    pnl_alertaIGPM.Visible := false;
    vlCotaAtual := PesquisarCotaIGPM(FormatDateTime('mm/01/yyyy',Date));
    vlCotaMesAnterior := PesquisarCotaIGPM(FormatDateTime('mm/01/yyyy', Data_Subtrai1mes(Date)));
  end;
  igpm :=   (((vlCotaAtual / vlCotaMesAnterior) - 1) * 100);//IGPM do Mes
  igpm := (igpm /100)+1;
  juros := 1.01 * igpm;
  edt_txjuro.Text := FormatFloat('###,###,##0.000',juros);
end;

procedure TFrm_Mov_Parcelamento.PesquisaMargem();
var
  F, Fentrada: TextFile;
  S : string;
  i : integer;
begin
  try
    AssignFile(Fentrada,'C:\Sistemas\reports\Entrada.txt');
    Rewrite(Fentrada);
    //Writeln(Fentrada,STR_AddZeros(edt_matricula.Text+edt_digito.Text,7));
    Writeln(Fentrada,edt_matricula.Text);
    CloseFile(Fentrada);
    AssignFile(F,'C:\Sistemas\reports\Saida.txt');
    Rewrite(F);
    Writeln(F,'-1');
    CloseFile(F);
    Application.ProcessMessages;
    WinExec('C:\Sistemas\SIHPesquisaMargem.exe', SW_MINIMIZE);
    Sleep(3000);
    Application.ProcessMessages;
    AssignFile(F, 'C:\Sistemas\reports\Saida.txt');
    Reset(F);
    Readln(F, S);
    //vlMargem := StrToFloat(STR_SubstChar(S,'.',','));
    vlMargem := StrToFloat(STR_RemoveChar(S,'.'));
    Application.ProcessMessages;
  except
    CloseFile(Fentrada);
    CloseFile(F);
  end;
  if vlMargem = -1 then
    pnl_margem.Caption := 'Não foi possivel pesquisar Margem'
  else begin
    pnl_margem.Caption := 'Margem disponivel: '+FormatFloat('###,###,##0.00',vlMargem);
    //edt_obs_flh.Text := pnl_margem.Caption;
  end;
  CloseFile(F);
  pnl_margem.Visible := true;
end;

procedure TFrm_Mov_Parcelamento.edt_nparcelasExit(Sender: TObject);
begin
  inherited;
  btn_calcularClick(self);
end;

end.



