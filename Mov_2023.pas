unit Mov_2023;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2023 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    btn_cancelaremissao: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton3: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBG_matricula: TDBGrid;
    btn_incluir: TPDJButton;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    Label8: TLabel;
    lbl_total: TLabel;
    stg_audi: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    rdg_indice: TRadioGroup;
    btn_gerarCarteirinha: TPDJButton;
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
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
    procedure btn_gerarCarteirinhaClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;    
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha, wInscricao : String ;
  end;

var
  Frm_Mov_2023: TFrm_Mov_2023;
  ChaveExp: Integer;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Imp_4046, Imp_4047,
Fun_Obj, Fun_Acesso, dtm_principal2, Fun_ConsCadastro ;

{$R *.DFM}

procedure TFrm_Mov_2023.FormCreate(Sender: TObject);
begin
  FTitulo       := '' ;
  FTitPesquisa  := 'Localizar Benefici�rios' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_2023.btn_localizarClick(Sender: TObject);
begin
  inherited;
  with fdt_principal2.spc_cons_adm_emissaocarteira do begin
    close;
    parambyname('@inscricao_ben').AsString := ed2_inscricao_ben.Text ;
    parambyname('@dtemissaoInicial').AsString := formatdatetime('mm/dd/yyyy',edt_dtinicial.date) ;
    parambyname('@dtemissaoFinal').AsString := formatdatetime('mm/dd/yyyy',edt_dtfinal.date) ;
    parambyname('@cod_emissaocarteira').AsString := cbx_cod_emissaocarteira.valueitem ;
    parambyname('@cod_statuscarteira').AsString := cbx_cod_statuscarteira.valueitem ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem;
    parambyname('@cod_order').AsInteger := rdg_indice.ItemIndex ;
    if cbx_dtenvio_hct.Text <> '' then
      parambyname('@dtenvio_hct').AsString := FormatDateTime('mm/dd/yyyy', strtodate(copy(cbx_dtenvio_hct.Text,1,10)))
    else
      parambyname('@dtenvio_hct').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
    lbl_total.Caption := IntToStr(RecordCount);
  end;
  EscreveLog(btn_localizar.name);
end;

procedure TFrm_Mov_2023.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal2.spc_cons_adm_emissaocarteira.close;
end;

procedure TFrm_Mov_2023.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_emissaocarteira', 'descricao_emc');
  BAS_CarregarCombo('cb2_cod_emissaocarteira', 'descricao_emc');
  BAS_CarregarCombo('cbx_cod_statuscarteira', 'descricao_stc');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
  Obj_LoadCombo(Self, 'cbx_dtenvio_hct','distinct dtenvio_hct',''' ''', 'tbl_histcarteira where dtenvio_hct is not null order by dtenvio_hct desc');
  if wInscricao <> '' then begin
    ed2_inscricao_ben.Text := wInscricao;
    btn_localizarClick(self);
  end;
  cbx_dtenvio_hct.ItemIndex := -1;
  ChaveExp:= 999999999;
  PageControl1.TabOrder:= 0;
end;

procedure TFrm_Mov_2023.PDJButton2Click(Sender: TObject);
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
  cbx_dtenvio_hct.ItemIndex := -1;
  cbx_dtenvio_hct.Refresh;
  cbx_cod_plano.Refresh;
end;

procedure TFrm_Mov_2023.btn_cancelaremissaoClick(Sender: TObject);
begin
  inherited;
  btn_incluir.SetFocus;
  if Dlg_YesNo('Tem Certeza que deseja Cancelar a Emiss�o desta Carteirinha ?', self) then begin
    DB_ExecSQL('update tbl_histcarteira set cod_statuscarteira = 999, dtstatusfinal_hct = getdate() '+
    'where cod_beneficiario = '+fdt_principal2.spc_cons_adm_emissaocarteira.fieldbyname('cod_beneficiario').asstring+
    ' and convert(char(10), dtemissao_hct, 103) = '''+FormatDateTime('dd/mm/yyyy',fdt_principal2.spc_cons_adm_emissaocarteira.fieldbyname('dtemissao_hct').asdatetime)+
    ''' and cod_emissaocarteira = '+fdt_principal2.spc_cons_adm_emissaocarteira.fieldbyname('cod_emissaocarteira').asstring);
    with fdt_principal2.spc_cons_adm_emissaocarteira do begin
      close;
      open;
    end;
    DBG_matricula.SetFocus;
  end;
  EscreveLog(btn_cancelaremissao.name);
  edt_cod_beneficiario.Text:= fdt_principal2.spc_cons_adm_emissaocarteira.fieldbyname('cod_beneficiario').AsString;
  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), ed2_inscricao_ben.Text,'Cancelado emiss�o carteirinha Inscri��o ' + ed2_inscricao_ben.Text, '', 0);
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2023.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then begin
    Dlg_Ok('Digite a Inscri��o do Benefici�rio !', self);
    Exit;
  end;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, p.nome_pla, b.processo_ben, s.nome_sit, d.nome_tdp, m.matriculaprinc_seg '+
    ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_beneficiario a, tbl_segurado m, tbl_plano p, tbl_tipodependente d '+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and a.cod_beneficiario = m.cod_beneficiario '+
    ' and b.inscricao_ben = a.inscricao_ben and b.cod_plano = p.cod_plano and b.cod_tipodependente = d.cod_tipodependente and s.tipo_sit < 2';
  FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
//    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Mov_2023.btn_incluirClick(Sender: TObject);
begin
  btn_incluir.SetFocus;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Incri��o do benefici�rio deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_carteira.name, '� necessario selecionar um benefici�rio !', VLD_Preenchido )) then
    Exit;
  if DB_OpenSQL('select * from tbl_histcarteira where cod_beneficiario = ' + edt_cod_beneficiario.text +
                ' and cod_statuscarteira < 11') > 0 then
     begin                                                         
     Dlg_Alerta('J� existe pedido de carteirinha pendente deste benefici�rio!', self);
     Exit;
     end;

  if Dlg_YesNo('Tem Certeza que deseja Incluir ?', self) then begin
    DB_ExecSQL('insert into tbl_histcarteira (cod_beneficiario,cod_emissaocarteira,dtemissao_hct,cod_statuscarteira) values ('+
    edt_cod_beneficiario.text+', 9, getdate(), 1)');
    with fdt_principal2.spc_cons_adm_emissaocarteira do begin
      close;
      open;
      last;
    end;
    DBG_matricula.SetFocus;
  end;
  EscreveLog(btn_incluir.name);
  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text,'Inclu�do carteirinha Inscri��o ' + edt_inscricao_ben.Text, '', 0);
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2023.PDJButton4Click(Sender: TObject);
begin
  inherited;
    Frm_Imp_4046 := TFrm_Imp_4046.Create(Self);
    Frm_Imp_4046.QuickRep1.Preview;
    Frm_Imp_4046.Release;
end;

procedure TFrm_Mov_2023.PDJButton3Click(Sender: TObject);
begin
  inherited;
    btn_localizarClick(self);
    Frm_Imp_4047 := TFrm_Imp_4047.Create(Self);
    if (cbx_cod_plano.Text <> '') then
      Frm_Imp_4047.FPlano := 'Plano    '+cbx_cod_plano.Text;
    if (cbx_dtenvio_hct.Text <> '') then
      Frm_Imp_4047.FDtEnvio := 'Data de Envio    '+FormatDateTime('dd/mm/yyyy', strtodate(copy(cbx_dtenvio_hct.Text,1,10)));
    if (cbx_cod_emissaocarteira.Text <> '') then
      Frm_Imp_4047.FMotivo := 'Motivo de Emiss�o    '+cbx_cod_emissaocarteira.Text;
    if (cbx_cod_statuscarteira.Text <> '') then
      Frm_Imp_4047.FStatus := 'Status    '+cbx_cod_statuscarteira.Text;
    Frm_Imp_4047.QuickRep1.Preview;
    Frm_Imp_4047.Release;
end;

procedure TFrm_Mov_2023.ed2_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  ed2_cod_beneficiario.Text:= '';
  FPesquisaSQLDefalt:= FSQL_Beneficiario ;
  if ed2_inscricao_ben.text = '' then
    FPesquisaSQL:= FPesquisaSQLDefalt
  else
    FPesquisaSQL:= FPesquisaSQLDefalt+' and b.inscricao_ben = '+ed2_inscricao_ben.text;
  ed2_cod_beneficiario.Text:= Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if ed2_cod_beneficiario.text <> '' then begin
    DB_OpenSQL('select inscricao_ben '+
    ' from tbl_beneficiario where cod_beneficiario = '+ed2_cod_beneficiario.text);
    ed2_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
  end;
end;

procedure TFrm_Mov_2023.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2023.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2023.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
{  if ed2_inscricao_ben.text <> '' then
     begin
     DB_OpenSQL('select cod_beneficiario, inscricao_ben from tbl_beneficiario where inscricao_ben = '+ed2_inscricao_ben.text);
     ChaveExp:= Tab.FieldByName('cod_beneficiario').Value;
     end;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);}
  if ed2_inscricao_ben.Text = '' then
     ed2_cod_beneficiario.Text:= '';
  if ed2_cod_beneficiario.Text <> '' then
     ChaveExp:= StrToInt(ed2_cod_beneficiario.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Mov_2023.btn_gerarCarteirinhaClick(Sender: TObject);

begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Gerar as Carteirinhas?', self) then
  begin

  end;

end;

end.



