 unit mov_2069;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList, FileCtrl, Psock, NMsmtp;

type
  TFrm_Mov_2069 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    DataSource3: TDataSource;
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_alterar: TPDJButton;
    btn_novo: TPDJButton;
    btn_excluir: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    edt_titulacartei_ben: TBEdit;
    ed2_cod_beneficiario: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    Panel4: TPanel;
    edt_matriculadebito_seg: TDCEdit;
    edt_digitomatdeb_seg: TBEdit;
    Panel5: TPanel;
    cbx_cod_tipodependente: TDCComboBox;
    cbx_cod_grauparent: TDCComboBox;
    Panel6: TPanel;
    cbx_cod_sitcontribPFGB: TDCComboBox;
    Panel8: TPanel;
    cbx_cod_usuario: TDCComboBox;
    edt_dtsistema_cpb: TDCDateEdit;
    edt_dtretroativo_cpb: TDCDateEdit;
    edt_cod_contribpfgb: TDCEdit;
    edt_dtreferencia_cpb: TDCDateEdit;
    Panel9: TPanel;
    edt_observacao: TDCEdit;
    dbg_contribPFGB: TDBGrid;
    btn_gerar: TPDJButton;
    GroupBox2: TGroupBox;
    Panel11: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    lbl_total: TLabel;
    pgb_registros: TProgressBar;
    edt_dtdesconto_flh: TDCDateEdit;
    GroupBox1: TGroupBox;
    pnl_benefi: TPanel;
    btn_pesquisar: TSpeedButton;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    rdb_benefi: TRadioButton;
    RadioButton3: TRadioButton;
    edt_digito: TBEdit;
    btn_limpar: TPDJButton;
    RgB_Indice: TRadioGroup;
    cb2_cod_mes: TDCComboBox;
    edt_anoretro: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    pnl_referencia: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    stg_audi: TStringGrid;
    procedure RadioButton3Click(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure ed2_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_contribPFGBDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_limparClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure btn_gerarClick(Sender: TObject);
    procedure simulabotao;
    procedure btn_pesquisarClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
    wCod_Beneficiario, FMesReferencia, FAnoReferencia : String;
    ValorPFGB: Double;
  end;

var
  Frm_Mov_2069: TFrm_Mov_2069;
  WMES: String[02];
  WANO: String[04];
  ChaveExp: Integer;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_data,
  dtm_principal, dtm_principal4, fun_str, Fun_Desconto;
{$R *.DFM}

procedure TFrm_Mov_2069.RadioButton3Click(Sender: TObject);
begin
  inherited;
  pnl_benefi.caption :=  '    Matrícula ';
  edt_inscricao_ben.ButtonExist := false ;
  edt_digito.Visible := true;
end;

procedure TFrm_Mov_2069.rdb_benefiClick(Sender: TObject);
begin
  inherited;
    pnl_benefi.caption :=  '    Inscrição ';
    edt_inscricao_ben.ButtonExist := true ;
    edt_digito.Visible := false;
end;

procedure TFrm_Mov_2069.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_excluir.Enabled := b ;
  btn_gerar.Enabled := b ;
  dbg_contribPFGB.visible := b ;
end;

procedure TFrm_Mov_2069.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
end;

procedure TFrm_Mov_2069.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_usuario', 'nome_usu');
  BAS_CarregarCombo('cbx_cod_sitcontribPFGB', 'nome_scp');
  BAS_CarregarCombo('cb2_cod_sitcontribPFGB', 'nome_scp');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, 99);
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia)
  else
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  if FAnoReferencia <> '' then
    edt_ano.Text := FAnoReferencia
  else
    edt_ano.text := FormatDateTime('yyyy',date);
  if DB_OpenSQL('select vlfixo_piv from tbl_planoitemvalor where cod_planopagto = 1') > 0 then
     ValorPFGB:= Tab.Fields[0].Value;
  ChaveExp:= 999999999;
  PageControl1.ActivePage:= TabSheet1;

  //busca data de fechamento da empresa Tesouraria
  DB_OpenSQL('select max(dtenvio_flh) from tbl_lotefolhadescontos where cod_empresafolha = 99');
  Obj_SetFormObjValueByName(self,'cb3_cod_mes', Data_Month(Data_Soma1mes(Data_Soma1mes(tab.fields[0].AsDateTime))));
  ed3_ano.Text := IntToStr(Data_Year(Data_Soma1mes(Data_Soma1mes(tab.fields[0].AsDateTime))));
  edt_dtdesconto_flh.Date := Date;
end;

procedure TFrm_Mov_2069.btn_novoClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser preenchido !', VLD_Preenchido )) then
     begin
     dbg_contribPFGB.SetFocus;
     Exit;
     end;
  if strtodate('01/'+cbx_cod_mes.valueItem + '/'+edt_ano.text ) < Data_BOM(date) then
      begin
      Dlg_Ok('A Data de Referência não pode ser menor do que a Data do Sistema!',self);
      Exit;
      end;
  if strtodate('01/'+cbx_cod_mes.valueItem + '/'+edt_ano.text ) > Data_BOM(date+30) then
      begin
      Dlg_Ok('A Data de Referência ainda não Liberada para Lançamentos!',self);
      Exit;
      end;
  Label1.Visible:= False;
  cbx_cod_empresafolha.Visible:= False;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  Obj_EmptyEditTag(self,1);
  FormShow(self);
  ed2_inscricao_ben.SetFocus;
  EscreveLog(btn_novo.name);
  GroupBox1.Visible:= False;
  lbl_total.Visible:= False;
  RgB_Indice.Visible:= False;
  cbx_cod_mes.Enabled:= False;
  edt_ano.Enabled:= False;
  cbx_cod_empresafolha.Enabled:= False;
  btn_limpar.Visible:= False;
  btn_gerar.Visible:= False;
  edt_anoretro.Text:= '';
  cbx_cod_sitcontribPFGB.ItemIndex:= 0;
  if ed2_cod_beneficiario.text <> '' then
     ChaveExp:= StrToInt(ed2_cod_beneficiario.text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2069.btn_alterarClick(Sender: TObject);
begin
  inherited;
  Label1.Visible:= False;
  cbx_cod_empresafolha.Visible:= False;
  FStatus := FST_Alteracao;
  with fdt_principal6.spc_cons_adm_contribPFGB do begin
    BotoesOnOff(false);
    wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
    ed2_inscricao_ben.text := FieldByName('inscricao_ben').AsString ;
    ed2_inscricao_benButtonClick(self);
    edt_titulacartei_ben.Text := FieldByName('titulacartei_ben').AsString ;
    edt_matriculadebito_seg.text := FieldByName('matriculadebito_seg').AsString ;
    edt_digitomatdeb_seg.text := FieldByName('digitomatdeb_seg').AsString ;
    edt_dtretroativo_cpb.text := FieldByName('dtretroativo_cpb').AsString ;
    edt_dtsistema_cpb.Text := FieldByName('dtsistema_cpb').AsString;
    edt_cod_contribpfgb.text := FieldByName('cod_contribpfgb').AsString;
    edt_observacao.Text:= FieldByName('observacao_cpb').AsString;
    WMES:= Copy(FieldByName('dtretroativo_cpb').AsString,04,02);
    WANO:= Copy(FieldByName('dtretroativo_cpb').AsString,07,04);
    edt_anoretro.Text:= WANO;
    if WANO = '' then
       cb2_cod_mes.ValueItem:= -1;
    edt_dtreferencia_cpb.Text:= FieldByName('dtreferencia_cpb').AsString;
    Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FieldByName('cod_usuario').AsString);
    Obj_SetFormObjValueByName(self,'cbx_cod_grauparent',FieldByName('cod_grauparent').AsString);
    Obj_SetFormObjValueByName(self,'cbx_cod_tipodependente',FieldByName('cod_tipodependente').AsString);
    Obj_SetFormObjValueByName(self,'cbx_cod_sitcontribPFGB',FieldByName('cod_sitcontribPFGB').AsString);
    Obj_SetFormObjValueByName(self,'cb2_cod_mes','-1');
    if FieldByName('dtretroativo_cpb').AsString <> '' then
       Obj_SetFormObjValueByName(self,'cb2_cod_mes',Data_Month(FieldByName('dtretroativo_cpb').AsDateTime));
    end;
  ed2_inscricao_ben.SetFocus;
  EscreveLog(btn_alterar.name);
  wCod_Beneficiario := '';
  GroupBox1.Visible:= False;
  lbl_total.Visible:= False;
  RgB_Indice.Visible:= False;
  cbx_cod_mes.Enabled:= False;
  edt_ano.Enabled:= False;
  cbx_cod_empresafolha.Enabled:= False;
  btn_limpar.Visible:= False;
  btn_gerar.Visible:= False;
  ChaveExp:= StrToInt(ed2_cod_beneficiario.text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2069.btn_salvarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_inscricao_ben.name, 'A Inscrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'O Local de Desconto deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_matriculadebito_seg.name, 'A Matrícula deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_sitcontribPFGB.Name, 'A Situação deve ser preenchida !', VLD_Preenchido )) then
    Exit;

  if cb2_cod_mes.Text <> '' then
     if edt_anoretro.Text = '' then
        begin
        Dlg_Ok('Digite o ano retroativo!',self);
        exit;
        edt_anoretro.SetFocus;
        end;

  if edt_anoretro.Text <> '' then
     if strtodate('01/'+cb2_cod_mes.valueItem + '/'+edt_anoretro.text ) >= Data_BOM(date+30) then
        begin
        Dlg_Alerta('Data retroativa deve ser menor que data de referência!',self);
        Exit;
        end;

  if fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('cod_sitcontribPFGB').Value = 2 then
     if FStatus <> FST_Novo then
        begin
        Dlg_Alerta('Não se pode alterar a situação de um registro pago no mês!',self);
        Exit;
        end;
  DB_OpenSQL('select count(*) from tbl_contribPFGB where dtreferencia_cpb = ''' +
             Data_Format('mm-dd-yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text))) + '''');
  if Tab.Fields[0].AsInteger > 1000 then
     if cbx_cod_sitcontribPFGB.ValueItem <> 8 then
        begin
        Dlg_Alerta('A Contribuição PFGB do mês de '+ Data_Format('mmmm/yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text))) +
                   ' já foi gerada, assim não se pode mais efetuar lançamentos para este mês!',self);
        Exit;
        end;

  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then
     Exit;

  if trim(cb2_cod_mes.valueItem) = '' then
     edt_dtretroativo_cpb.text:= ''
  else
     begin
     WMES:= FormatFloat('00',cb2_cod_mes.valueItem);
     WANO:= edt_anoretro.Text;
     edt_dtretroativo_cpb.text:= '01/' + WMES + '/' + WANO;
     end;

  edt_dtreferencia_cpb.Text:= '01/' + FormatFloat('00',cbx_cod_mes.valueItem) + '/' + edt_ano.Text;
  if FStatus = FST_Novo then
     if DB_OpenSQL('select * from tbl_contribPFGB where cod_beneficiario = '+
        ed2_cod_beneficiario.text+ ' and dtreferencia_cpb = ' + DB_FormatDataSQL(edt_dtreferencia_cpb.Date, ftDate) +
        ' and cod_sitcontribPFGB <> 9 and dtretroativo_cpb = '+ DB_FormatDataSQL(edt_dtretroativo_cpb.Date, ftDate) ) > 0 then
        begin
        Dlg_Ok('Beneficiário já cadastrado com essa Data Retroativa, nessa Situação!',self);
        exit;
        end;

  if (cbx_cod_grauparent.valueItem = '-1') or (trim(cbx_cod_grauparent.valueItem) = '') then
     cbx_cod_grauparent.valueItem:= '0';

  if FStatus = FST_Novo then
     DB_ExecSQL('insert into tbl_contribPFGB (dtreferencia_cpb, cod_beneficiario, '+
                'matriculadebito_seg, digitomatdeb_seg, inscricao_ben, titulacartei_ben, '+
                'cod_tipodependente, cod_grauparent, nome_ben, cod_empresafolha, '+
                'dtsistema_cpb, dtretroativo_cpb, cod_sitcontribPFGB, cod_usuario, observacao_cpb) values ('''+
                cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''','+ed2_cod_beneficiario.text+
                ','''+edt_matriculadebito_seg.Text+ ''', '''+edt_digitomatdeb_seg.Text+
                ''', '+ed2_inscricao_ben.Text+','+edt_titulacartei_ben.Text+','''+
                cbx_cod_tipodependente.valueItem+''','+cbx_cod_grauparent.valueItem+
                ','''+edt_nome.Text+''','+cb2_cod_empresafolha.valueItem+ ', getdate(),'+
                DB_FormatDataSQL(edt_dtretroativo_cpb.Date, ftDate)+' , '''+
                cbx_cod_sitcontribPFGB.valueItem+ ''', '+IntToStr(FCod_Usuario)+' , '''+
                edt_observacao.Text+ ''')')
     else
     DB_ExecSQL('update tbl_contribPFGB set '+
                'matriculadebito_seg = '+edt_matriculadebito_seg.Text+', '+
                'digitomatdeb_seg = '+edt_digitomatdeb_seg.text+', '+
                'cod_tipodependente = '''+cbx_cod_tipodependente.valueItem+''', '+
                'cod_grauparent = '''+cbx_cod_grauparent.valueItem+''', '+
                'cod_sitcontribPFGB = '''+cbx_cod_sitcontribPFGB.valueItem+''', '+
                'cod_usuario = '+IntToStr(FCod_Usuario)+', '+
                'dtsistema_cpb = getdate(), '+
                'dtretroativo_cpb = '+DB_FormatDataSQL(edt_dtretroativo_cpb.Date,ftDate)+', '+
                'observacao_cpb = '''+edt_observacao.Text + ''''+
                ' where cod_contribpfgb = ' + edt_cod_contribpfgb.Text);
  with fdt_principal6.spc_cons_adm_contribPFGB do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  EscreveLog(btn_salvar.name);
  GroupBox1.Visible:= True;
  lbl_total.Visible:= True;
  RgB_Indice.Visible:= True;
  cbx_cod_mes.Enabled:= True;
  edt_ano.Enabled:= True;
  cbx_cod_empresafolha.Enabled:= True;
  btn_limpar.Visible:= True;
  Label1.Visible:= True;
  cbx_cod_empresafolha.Visible:= True;

  if edt_anoretro.Text <> '' then
     GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text,'Inscr.' + ed2_inscricao_ben.Text + ', matríc.' + edt_matriculadebito_seg.Text +
                  '-' + edt_digitomatdeb_seg.Text + ', referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text +
                   ' e retroativo de ' + cb2_cod_mes.Text + edt_anoretro.Text + ', situação = ' + cbx_cod_sitcontribPFGB.Text,'',114)
  else
     GeraAuditoria(StrToInt(ed2_cod_beneficiario.text), ed2_inscricao_ben.Text,'Inscr.' + ed2_inscricao_ben.Text + ', matríc.' + edt_matriculadebito_seg.Text +
                  '-' + edt_digitomatdeb_seg.Text + ', referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text +
                  ', situação = ' + cbx_cod_sitcontribPFGB.Text,'',114);
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
  btn_pesquisarClick(Self);
end;

procedure TFrm_Mov_2069.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  Label1.Visible:= True;
  cbx_cod_empresafolha.Visible:= True;
  BotoesOnOff(true);
  EscreveLog(btn_cancelar.name);
  GroupBox1.Visible:= True;
  lbl_total.Visible:= True;
  RgB_Indice.Visible:= True;
  cbx_cod_mes.Enabled:= True;
  edt_ano.Enabled:= True;
  cbx_cod_empresafolha.Enabled:= True;
  btn_limpar.Visible:= True;
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2069.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
    DB_ExecSQL('delete from tbl_contribPFGB where dtreferencia_cpb = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
    ''' and cod_beneficiario = '+fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('cod_beneficiario').AsString);
    fdt_principal6.spc_cons_adm_contribPFGB.close;
    fdt_principal6.spc_cons_adm_contribPFGB.open;
  end;
  EscreveLog(btn_excluir.name);
  btn_pesquisarClick(Self);
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2069.ed2_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    ed2_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if ed2_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+ed2_inscricao_ben.text;
    ed2_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if ed2_cod_beneficiario.text = '' then
  begin
    edt_nome.text := '' ;
  end
  else begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := ed2_cod_beneficiario.text ;
      open;
      ed2_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      edt_nome.text := FieldByNAme('nome_ben').AsString;
      edt_matriculadebito_seg.text := FieldByNAme('matriculadebito_seg').AsString;
      edt_digitomatdeb_seg.text := FieldByNAme('digitomatdeb_seg').AsString;
    end;
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, '+
    'digito_ben, cod_empresafolha, cod_grauparent, cod_tipodependente'+
    ' from tbl_beneficiario b left join tbl_dependente d on b.cod_beneficiario = d.cod_beneficiario where b.cod_beneficiario = '+ed2_cod_beneficiario.text);
    edt_titulacartei_ben.Text := Tab.FieldByName('titulacartei_ben').AsString;
    Obj_SetFormObjValueByName(self,'cb2_cod_empresafolha',Tab.FieldByName('cod_empresafolha').AsString);
    Obj_SetFormObjValueByName(self,'cbx_cod_tipodependente',Tab.FieldByName('cod_tipodependente').AsString);
    if edt_titulacartei_ben.Text <> '0' then
       Obj_SetFormObjValueByName(self,'cbx_cod_grauparent',Tab.FieldByName('cod_grauparent').AsString);
  end;
  cb2_cod_mes.SetFocus;
end;

procedure TFrm_Mov_2069.ed2_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    ed2_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2069.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2069.dbg_contribPFGBDblClick(Sender: TObject);
begin
  inherited;
//  btn_alterarClick(self);
end;

procedure TFrm_Mov_2069.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal6.spc_cons_adm_contribPFGB.Close;
end;

procedure TFrm_Mov_2069.btn_limparClick(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.Text:= '';
end;

procedure TFrm_Mov_2069.TabSheet2Show(Sender: TObject);
begin
  inherited;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2069.btn_gerarClick(Sender: TObject);
var
  WData: String;
begin
  inherited;
  simulabotao;
  if btn_gerar.Enabled = False then
     Exit;
  if not Dlg_YesNo('Tem Certeza que deseja Gerar os Descontos ?', Self) then
     Exit;

  DB_BeginTrans;
  while not fdt_principal6.spc_cons_adm_contribPFGB.Eof do
    begin
    if not Set_IncluirDesconto(fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('cod_beneficiario').AsString,
       fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('matriculadebito_seg').AsString,
       fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('digitomatdeb_seg').AsString, FloatToStr(ValorPFGB), '0', '576',
       fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('cod_empresafolha').AsString,
       cb3_cod_mes.valueItem, ed3_ano.text, edt_dtdesconto_flh.Date, 'Boleto p/Licenciado', FCod_Usuario, FCod_TelaSistema) then
       begin
       DB_RollBack;
       Dlg_Erro('Ocorreu um Erro interno e não foi possível efetuar as inclusões de desconto!', Self);
       Exit;
       end
    else
       fdt_principal6.spc_cons_adm_contribPFGB.Next;
    end;
  DB_Commit;
  Dlg_Ok('Gerado ' + IntToStr(fdt_principal6.spc_cons_adm_contribPFGB.Recordcount) + ' descontos para o mês de ' + cb3_cod_mes.Text + ' de ' + ed3_ano.Text + '.', Self);
  GeraAuditoria(0, '0', cbx_cod_empresafolha.Text + ', referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text,
               'gerado ' + IntToStr(fdt_principal6.spc_cons_adm_contribPFGB.Recordcount) + ' descontos para ' + cb3_cod_mes.Text + '/' + ed3_ano.Text, 0);
  DB_ExecSQL('update tbl_contribPFGB set cod_sitcontribPFGB = 3 where cod_empresafolha = 99 and cod_sitcontribPFGB = 1 and dtreferencia_cpb = ''' +
             cbx_cod_mes.valueItem + '/01/' + edt_ano.text + '''');
  simulabotao;
end;

procedure TFrm_Mov_2069.simulabotao;
begin
  with fdt_principal6.spc_cons_adm_contribPFGB do begin
    Close;
    ParamByName('@dtreferencia_cpb').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    Parambyname('@cod_empresafolha').AsString := '99';
    if rdb_benefi.Checked then
    begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
      ParamByName('@matriculadebito_seg').AsString := '0';
      ParamByName('@digitomatdeb_seg').AsString := '0';
    end
    else begin
      ParamByName('@inscricao_ben').AsString := '0';
      ParamByName('@matriculadebito_seg').AsString := edt_inscricao_ben.Text;
      ParamByName('@digitomatdeb_seg').AsString := edt_digito.Text;
    end;
    ParamByName('@order').AsInteger := RgB_Indice.ItemIndex;
    ParamByName('@situacao').Value := 1;
    ParamByName('@cod_situacempr').Value := 3;
    Open;
    if fdt_principal6.spc_cons_adm_contribPFGB.RecordCount = 0 then
       begin
       btn_excluir.Enabled:= False;
       btn_alterar.Enabled:= False;
       btn_gerar.Enabled:= False;
       end
    else
       begin
       btn_excluir.Enabled:= True;
//       btn_alterar.Enabled:= True;
       btn_gerar.Enabled:= True;
       end;
    lbl_total.Caption := 'Total de Descontos => '+IntToStr(DB_RollCount);
    lbl_total.Visible:= True;
  end;
end;

procedure TFrm_Mov_2069.btn_pesquisarClick(Sender: TObject);
begin
  inherited;
  lbl_total.Visible:= False;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) then
    begin
    dbg_contribPFGB.SetFocus;
    Exit;
    end;
  simulabotao;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2069.TabSheet1Show(Sender: TObject);
begin
  inherited;
  btn_novo.Enabled:= False;
  btn_alterar.Enabled:= False;
end;

procedure TFrm_Mov_2069.stg_audiDrawCell(Sender: TObject; ACol,
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

end.

