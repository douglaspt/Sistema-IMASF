unit Mov_2056;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BDateEdit;

type
  TFrm_Mov_2056 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    btn_cancelaremissao: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton1: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rdg_indice: TRadioGroup;
    btn_incluir: TPDJButton;
    edt_carteira: TDCEdit;
    cbx_cod_localunimed: TDCComboBox;
    lbl_total: TLabel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    ckb_outreg: TCheckBox;
    Panel7: TPanel;
    edt_beneficiario_ben: TBDateEdit;
    btn_Salvar: TPDJButton;
    Panel1: TPanel;
    cb2_cod_localunimed: TDCComboBox;
    ed3_inscricao_ben: TBDateEdit;
    edt_nome_ben: TDCEdit;
    Label8: TLabel;
    btn_cancelar: TPDJButton;
    DBG_matricula: TDBGrid;
    edt_dtendereco_ben: TDCDateEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    btn_localizar: TPDJButton;
    PDJButton2: TPDJButton;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    cbx_cod_emissaocarteira: TDCComboBox;
    cbx_cod_statuscarteira: TDCComboBox;
    ed2_cod_beneficiario: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    cbx_cod_plano: TDCComboBox;
    cbx_dtenvio_hct: TDCComboBox;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_cancelaremissaoClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure ckb_outregClick(Sender: TObject);
    procedure DBG_matriculaDblClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha, wInscricao, Wl1, Wl2, Wl3, Wl4, s: String;
    WtitReq: Integer;
  end;

var
  Frm_Mov_2056: TFrm_Mov_2056;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Imp_4046, Imp_4047,
     Fun_Obj, Fun_Acesso, dtm_principal2, Fun_ConsCadastro, Mov_2063;

{$R *.DFM}

procedure TFrm_Mov_2056.FormCreate(Sender: TObject);
begin
  FTitulo       := '' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_2056.btn_localizarClick(Sender: TObject);
begin
  inherited;
  //--
  lbl_total.Caption := '';
  DBG_matricula.Refresh;
  with fdt_principal2.spc_cons_adm_emissaocarteiraUnimed do begin
    close;
    parambyname('@inscricao_ben').AsString := ed2_inscricao_ben.Text ;
    parambyname('@dtemissaoInicial').AsString := formatdatetime('mm/dd/yyyy',edt_dtinicial.date) ;
    parambyname('@dtemissaoFinal').AsString := formatdatetime('mm/dd/yyyy',edt_dtfinal.date) ;
    parambyname('@cod_emissaocarteira').AsString := cbx_cod_emissaocarteira.valueitem ;
    parambyname('@cod_statuscarteira').AsString := cbx_cod_statuscarteira.valueitem ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem;
    parambyname('@cod_order').AsInteger := rdg_indice.ItemIndex ;
   // if cbx_dtenvio_hct.Text <> '' then
  //    parambyname('@dtenvio_hcu').AsString := FormatDateTime('mm/dd/yyyy', strtodate(copy(cbx_dtenvio_hct.Text,1,10)))
  //  else
  //    parambyname('@dtenvio_hct').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      GroupBox1.SetFocus;
      exit;
    end;
    lbl_total.Caption := IntToStr(RecordCount) + ' Registros';
  end;
  EscreveLog(btn_localizar.name);
end;

procedure TFrm_Mov_2056.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal2.spc_cons_adm_emissaocarteira.close;
end;

procedure TFrm_Mov_2056.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_emissaocarteira', 'descricao_emc');
  BAS_CarregarCombo('cb2_cod_emissaocarteira', 'descricao_emc');
  BAS_CarregarCombo('cbx_cod_statuscarteira', 'descricao_stc');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
  Obj_LoadCombo(Self, 'cbx_cod_localunimed', 'cidade_lcu', 'cod_localunimed', 'tbl_localunimed order by cidade_lcu');
  Obj_LoadCombo(Self, 'cb2_cod_localunimed', 'cidade_lcu', 'cod_localunimed', 'tbl_localunimed order by cidade_lcu');
 // Obj_LoadCombo(Self, 'cbx_dtenvio_hct','distinct dtenvio_hct',''' ''', 'tbl_histcarteira where dtenvio_hct is not null order by dtenvio_hct desc');
  if wInscricao <> '' then begin
    ed2_inscricao_ben.Text := wInscricao;
    btn_localizarClick(self);
  end;
 // cbx_dtenvio_hct.ItemIndex := -1;
  fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.close;
  cbx_cod_localunimed.Visible:= False;
end;

procedure TFrm_Mov_2056.PDJButton2Click(Sender: TObject);
begin
  inherited;
  edt_dtinicial.text := '' ;
  edt_dtfinal.text := '' ;
  ed2_inscricao_ben.Text := '';
  cbx_cod_emissaocarteira.ItemIndex := -1;
  cbx_cod_emissaocarteira.Refresh;
  cbx_cod_statuscarteira.ItemIndex := -1;
  cbx_cod_statuscarteira.Refresh;
  cbx_cod_plano.ItemIndex := -1;
  cbx_cod_plano.Refresh;
 // cbx_dtenvio_hct.ItemIndex := -1;
 // cbx_dtenvio_hct.Refresh;
  cbx_cod_plano.Refresh;
  btn_localizarClick(Sender);
end;

procedure TFrm_Mov_2056.btn_cancelaremissaoClick(Sender: TObject);
begin
  inherited;
  btn_incluir.SetFocus;
  if Dlg_YesNo('Tem Certeza que deseja Cancelar a Emissão desta Carteirinha ?', self) then begin
    DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 999 '+
    'where cod_beneficiario = '+fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('cod_beneficiario').asstring+
    ' and convert(char(10), dtemissao_hcu, 103) = '''+FormatDateTime('dd/mm/yyyy',fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('dtemissao_hcu').asdatetime)+
    ''' and cod_emissaocarteira = '+fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('cod_emissaocarteira').asstring);
    with fdt_principal2.spc_cons_adm_emissaocarteiraUnimed do begin
      close;
      open;
    end;
    DBG_matricula.SetFocus;
  end;
  EscreveLog(btn_cancelaremissao.name);
end;

procedure TFrm_Mov_2056.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then begin
    Dlg_Ok('Digite a Inscrição do Beneficiário !', self);
    Exit;
  end;

  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, p.nome_pla, b.processo_ben, s.nome_sit, d.nome_tdp, m.matriculaprinc_seg '+
  ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_beneficiario a, tbl_segurado m, tbl_plano p, tbl_tipodependente d '+
  ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and a.cod_beneficiario = m.cod_beneficiario '+
  ' and b.inscricao_ben = a.inscricao_ben and b.cod_plano = p.cod_plano and b.cod_tipodependente = d.cod_tipodependente and b.cod_plano = 3 and s.tipo_sit < 2 ';
  FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
  end else begin
    DB_OpenSQL('select b.nome_ben, b.cod_empresa, b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, b.dtendereco_ben, b.cep_ben, b.fonecel_ben, b.foneresi_ben, s.fonecome_seg, '+
               'b.email_ben from tbl_beneficiario b left join tbl_segurado s on s.cod_beneficiario = b.cod_beneficiario where b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    WtitReq:= Tab.FieldByName('titulacartei_ben').AsInteger ;
//    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  cbx_cod_localunimed.Visible:= False;
  end;
  edt_dtendereco_ben.Date:= Tab.FieldByName('dtendereco_ben').AsDateTime;
  Wl1:= 'CEP: ' + Tab.FieldByName('cep_ben').AsString + ' - Celular: ' + Tab.FieldByName('fonecel_ben').AsString;
  Wl2:= 'Residencial: ' + Tab.FieldByName('foneresi_ben').AsString;
  Wl3:= 'Comercial: ' + Tab.FieldByName('fonecome_seg').AsString;
  Wl4:= 'E-Mail: ' + Tab.FieldByName('email_ben').AsString;

  if edt_dtendereco_ben.Date <> 0 then
     begin
     if edt_dtendereco_ben.Date + 90 < Date then
        if not Dlg_YesNo('MEIOS DE CONTATO '+ #13+ Wl1 + #13 + Wl2 + #13 + Wl3 + #13 + Wl4 + #13 + 'Dados Corretos ?', Self) then
          begin
// Confirmação dos dados de contato
          Hide;
          s := edt_cod_beneficiario.text;
          Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
          Frm_Mov_2063.wCod_Beneficiario := s;
          Frm_Mov_2063.Wtit:= WtitReq;
          Frm_Mov_2063.ShowModal;
          Frm_Mov_2063.Release;
          Show;
          end;
     end;
end;

procedure TFrm_Mov_2056.btn_incluirClick(Sender: TObject);
Var
  WLocal: Integer;
begin
  btn_incluir.SetFocus;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Incrição do beneficiário deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_carteira.name, 'É necessário selecionar um beneficiário !', VLD_Preenchido )) then
    Exit;
  if DB_OpenSQL('select * from tbl_histcarteiraUnimed where cod_beneficiario = ' + edt_cod_beneficiario.text +
                ' and cod_statuscarteira < 11') > 0 then
     begin
     Dlg_Alerta('Já existe pedido de carteirinha pendente deste beneficiário!', self);
     Exit;
     end;
  if Dlg_YesNo('Tem Certeza que deseja Incluir ?', self) then begin
    if ckb_outreg.Checked = False then
       WLocal:= 11
    else
       WLocal:= cbx_cod_localunimed.valueitem;
    DB_ExecSQL('insert into tbl_histcarteiraUnimed (cod_beneficiario,cod_emissaocarteira,dtemissao_hcu,cod_statuscarteira, cod_localunimed) values ('+
    edt_cod_beneficiario.text+', 9, getdate(), 1,' + IntToStr(WLocal) + ')');
    with fdt_principal2.spc_cons_adm_emissaocarteiraUnimed do begin
      Close;
      Open;
      Last;
    end;
    DBG_matricula.SetFocus;
  end;
  EscreveLog(btn_incluir.name);
  cbx_cod_localunimed.Visible:= False;
  ckb_outreg.Checked:= False;
end;

procedure TFrm_Mov_2056.PDJButton4Click(Sender: TObject);
begin
  inherited;
    Frm_Imp_4046 := TFrm_Imp_4046.Create(Self);
    Frm_Imp_4046.QuickRep1.Preview;
    Frm_Imp_4046.Release;
end;

procedure TFrm_Mov_2056.PDJButton3Click(Sender: TObject);
begin
  inherited;
    btn_localizarClick(self);
    Frm_Imp_4047 := TFrm_Imp_4047.Create(Self);
    if (cbx_cod_plano.Text <> '') then
      Frm_Imp_4047.FPlano := 'Plano    '+cbx_cod_plano.Text;
   // if (cbx_dtenvio_hct.Text <> '') then
 //     Frm_Imp_4047.FDtEnvio := 'Data de Envio    '+FormatDateTime('dd/mm/yyyy', strtodate(copy(cbx_dtenvio_hct.Text,1,10)));
    if (cbx_cod_emissaocarteira.Text <> '') then
      Frm_Imp_4047.FMotivo := 'Motivo de Emissão    '+cbx_cod_emissaocarteira.Text;
    if (cbx_cod_statuscarteira.Text <> '') then
      Frm_Imp_4047.FStatus := 'Status    '+cbx_cod_statuscarteira.Text;
    Frm_Imp_4047.QuickRep1.Preview;
    Frm_Imp_4047.Release;
end;

procedure TFrm_Mov_2056.ed2_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if ed2_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+ed2_inscricao_ben.text;
  ed2_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if ed2_cod_beneficiario.text <> '' then begin
    DB_OpenSQL('select inscricao_ben '+
    ' from tbl_beneficiario where cod_beneficiario = '+ed2_cod_beneficiario.text);
    ed2_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
  end;
end;

procedure TFrm_Mov_2056.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2056.PDJButton1Click(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  S, COD_BENEF: String;
begin
  inherited;
  DB_OpenSQL('exec spc_cons_adm_geratxtcarteiraUnimed');
  if Tab.RecordCount < 1 then
     begin
     Dlg_Alerta('Não existe registros para gerar TXT Unimed.', self);
     Exit;
     end;
//  str_arquiventrad:= 'W:\Carteirinhas Beneficiarios\UNIMED.TXT';
  str_arquiventrad:= 'c:\down\UNIMED.TXT';
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  while not Tab.eof do
     begin
     S:= Tab.FieldByName('campo1').Text + Tab.FieldByName('campo2').Text;
     COD_BENEF:= Tab.FieldByName('cod_beneficiario').Text;
     Writeln(byt_nameofthfile,S);
     Tab.Next;
     end;
// DB_ExecADOSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 2, dtenvio_hcu = getdate() where cod_statuscarteira = 1');
  lbl_total.Refresh;
  closefile (byt_nameofthfile);
  Dlg_Ok('Gerado '+ IntToStr(Tab.RecordCount) + ' registros no arquivo ' + str_arquiventrad,self);
  GeraAuditoria(0,'0','Gerado arquivo TXT Unimed com ' + IntToStr(Tab.RecordCount) + ' beneficiários', '', 0);
end;

procedure TFrm_Mov_2056.ckb_outregClick(Sender: TObject);
begin
  inherited;
  if ckb_outreg.Checked = True then
     cbx_cod_localunimed.Visible:= True
  else
     cbx_cod_localunimed.Visible:= False;
end;

procedure TFrm_Mov_2056.DBG_matriculaDblClick(Sender: TObject);
begin
  ed3_inscricao_ben.text:= fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('inscricao_ben').AsString;
  edt_nome_ben.text:= fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('nome_ben').AsString;
  edt_beneficiario_ben.Text:= fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('cod_beneficiario').AsString;
  Obj_SetFormObjValueByName(self,cb2_cod_localunimed.Name, fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('cod_localunimed').AsString);
  if fdt_principal2.spc_cons_adm_emissaocarteiraUnimed.fieldbyname('cod_statuscarteira').AsString <> '1' then
     begin
     Dlg_Alerta('Alteração do Local de Atendimento somente para carteirinhas ainda não geradas!',Self);
     Exit;
     end;
  DBG_matricula.Visible:= False;
  rdg_indice.Visible:= False;
  inherited;
end;

procedure TFrm_Mov_2056.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('update tbl_histcarteiraUnimed set cod_localunimed = ' + IntToStr(cb2_cod_localunimed.ValueItem) +
    'where cod_beneficiario = '+edt_beneficiario_ben.Text + ' and cod_statuscarteira = 1');
  DBG_matricula.Visible:= True;
  rdg_indice.Visible:= True;
  btn_localizarClick(Self);
end;

procedure TFrm_Mov_2056.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  DBG_matricula.Visible:= True;
  rdg_indice.Visible:= True;
  btn_localizarClick(Self);
end;

procedure TFrm_Mov_2056.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2056.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

end.



