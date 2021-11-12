unit Mov_2059;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, BDateEdit, BEdit;

type
  TFrm_Mov_2059 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    Panel7: TPanel;
    edt_dtAdesaoBEM_adb: TDCDateEdit;
    edt_dtFinalBEM_adb: TDCDateEdit;
    Panel5: TPanel;
    cbx_cod_usuario: TBComboBox;
    edt_dtsistema_adb: TBDateEdit;
    dbg_conveniado: TDBGrid;
    TabSheet2: TTabSheet;
    edt_matriculadebito_seg: TDCEdit;
    edt_digitomatdeb_seg: TBEdit;
    rdg_indice: TRadioGroup;
    Label11: TLabel;
    edt_localizar: TEdit;
    SpeedButton6: TSpeedButton;
    btn_novo: TPDJButton;
    btn_alterar: TPDJButton;
    btn_Salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_Remover: TPDJButton;
    btn_imprimir: TPDJButton;
    Panel1: TPanel;
    Label1: TLabel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    rdg_indfiltro: TRadioGroup;
    btn_localizar: TPDJButton;
    rgd_ativo: TRadioGroup;
    stg_audi: TStringGrid;
    lbl_total: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_RemoverClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure rdg_indiceClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure dbg_conveniadoDblClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesOnOff(b:boolean);
    procedure AtualizaIndice;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2059: TFrm_Mov_2059;
  ChaveExp: Integer;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico,
  Bas_Impressao ;

{$R *.DFM}


procedure TFrm_Mov_2059.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_usuario','descricao_usu');
  dbg_conveniado.SetFocus;
  edt_dtinicial.Text:= '';
  edt_dtfinal.Text:= '';
  AtualizaIndice;
  PageControl1.TabOrder:= 0;
  PageControl1.SetFocus;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2059.AtualizaIndice;
begin
  with fdt_principal4.spc_cons_adm_adesaoBEM do
  begin
   Close;
   ParamByName('@cod_order').Value := rdg_indice.ItemIndex;
   ParamByName('@dtini').AsString := '';
   ParamByName('@dtfim').AsString := '';
   if edt_dtinicial.Text <> '' then
      ParamByName('@dtini').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
   if edt_dtfinal.Text <> '' then
      ParamByName('@dtfim').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
   ParamByName('@indfiltro').Value := rdg_indfiltro.ItemIndex;
   ParamByName('@situacao').Value := rgd_ativo.ItemIndex;
   Open;
   lbl_total.Caption := 'Total de Registros => '+IntToStr(DB_RollCount);
  end;
end;

procedure TFrm_Mov_2059.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_Salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_Remover.Enabled := b ;
  btn_imprimir.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2059.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  Obj_EmptyEdit(self);
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FCod_Usuario);
  edt_inscricao_ben.Enabled := true;
  edt_inscricao_ben.SetFocus;
  EscreveLog(btn_novo.name);
  rdg_indice.Visible:= False;
  Label11.Visible:= False;
  edt_localizar.Visible:= False;
  SpeedButton6.Visible:= False;
  lbl_total.Visible:= False;
  Panel1.Visible:= False;
end;

procedure TFrm_Mov_2059.btn_alterarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  with fdt_principal4.spc_cons_adm_adesaoBEM do
    begin
    BotoesOnOff(false);
    edt_cod_beneficiario.text := FieldByName('cod_beneficiario').AsString ;
    edt_dtAdesaoBEM_adb.Text := FieldByName('dtAdesaoBEM_adb').AsString ;
    edt_dtFinalBEM_adb.text := FieldByName('dtFinalBEM_adb').AsString ;
    edt_dtsistema_adb.Date :=  FieldByName('dtsistema_adb').AsDateTime;
    Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FieldByName('cod_usuario').AsString);
    end;
// Não altera quando dt.final está preenchida
  if edt_dtFinalBEM_adb.text = '' then
     begin
     edt_inscricao_ben.enabled := false;
     edt_inscricao_benButtonClick(self);
     edt_dtAdesaoBEM_adb.SetFocus;
     EscreveLog(btn_alterar.name);
     rdg_indice.Visible:= False;
     Label11.Visible:= False;
     edt_localizar.Visible:= False;
     SpeedButton6.Visible:= False;
     Panel1.Visible:= False;
     lbl_total.Visible:= False;
     end
  else
     begin
     BotoesOnOff(true);
     dbg_conveniado.SetFocus;
     EscreveLog(btn_Salvar.name);
     rdg_indice.Visible:= True;
     Label11.Visible:= True;
     edt_localizar.Visible:= True;
     SpeedButton6.Visible:= True;
     Panel1.Visible:= True;
     lbl_total.Visible:= True;
     end;
  ChaveExp:= StrToInt(edt_cod_beneficiario.text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Mov_2059.btn_SalvarClick(Sender: TObject);
var
  WSeq: String[10];
begin
  inherited;
  if not BAS_ValidarCampo(edt_inscricao_ben.name, 'É necessário preencher a Inscrição!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_dtAdesaoBEM_adb.name, 'É necessário preencher a Data de Inicio !', VLD_DataPreenchida) then
      exit;
  if edt_dtFinalBEM_adb.Text <> '' then
     if edt_dtFinalBEM_adb.Date < edt_dtAdesaoBEM_adb.Date then
        begin
        Dlg_Alerta('Data Final não pode ser menor que Data de Adesão!',Self);
        Exit;
        end;

  if DB_OpenSQL('select * from tbl_adesaoBEM where cod_beneficiario = ' + edt_cod_beneficiario.text + ' and dtFinalBEM_adb is Null') > 0 then
     if FStatus = FST_Novo then
        begin
        Dlg_Alerta('Beneficiário já Cadastrado!',Self);
        Exit;
        end;

  if DB_OpenSQL('select * from tbl_beneficiario where inscricao_ben = ' + edt_inscricao_ben.text + ' and titulacartei_ben = 0 and cod_plano in (1,6)') > 0 then
     if FStatus = FST_Novo then
        begin
        Dlg_Alerta('Plano do Titular não dá direito ao BEM!',Self);
        Exit;
        end;

  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then Exit;
  if FStatus = FST_Novo then
     begin
     DB_ExecSQL('insert into tbl_adesaoBEM (cod_beneficiario, dtAdesaoBEM_adb, '+
     'dtFinalBEM_adb, cod_planoBEM, cod_usuario, dtsistema_adb) values ('+
     edt_cod_beneficiario.Text+','+DB_FormatDataSQL(edt_dtAdesaoBEM_adb.text, ftDate)+
     ', '+DB_FormatDataSQL(edt_dtFinalBEM_adb.Text, ftDate)+ ', 3450,' +
     IntToStr(FCod_Usuario) + ', getdate())');
// Pesquisa esse registro inserido para exibir auto-incremento do cod_adesaobBEM para gravar no GeraAuditoria
     DB_OpenSQL('select * from tbl_adesaoBEM where cod_beneficiario = ' + edt_cod_beneficiario.text + ' and dtFinalBEM_adb is Null');
     WSeq:= Tab.fieldByName('cod_adesaoBEM').AsString;
     end
  else
      begin
      DB_ExecSQL('update tbl_adesaoBEM set dtAdesaoBEM_adb = '+
      DB_FormatDataSQL(edt_dtAdesaoBEM_adb.text, ftDate)+', '+
      ' dtFinalBEM_adb = '+DB_FormatDataSQL(edt_dtFinalBEM_adb.text, ftDate)+','+
      ' dtsistema_adb = getdate(),'+
      ' cod_usuario = '+IntToStr(FCod_Usuario)+
      ' where cod_adesaoBEM = '+ fdt_principal4.spc_cons_adm_adesaoBEM.fieldByName('cod_adesaoBEM').AsString);
      WSeq:= fdt_principal4.spc_cons_adm_adesaoBEM.fieldByName('cod_adesaoBEM').AsString;
      end;
  with fdt_principal4.spc_cons_adm_adesaoBEM do
    begin
    Close;
    Open;
    end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Salvar.name);
  rdg_indice.Visible:= True;
  Label11.Visible:= True;
  edt_localizar.Visible:= True;
  SpeedButton6.Visible:= True;
  Panel1.Visible:= True;
  lbl_total.Visible:= True;
  if edt_dtFinalBEM_adb.Text <> '' then
     GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text,'Inscr.' +
                   edt_inscricao_ben.Text +', Data de Adesão ' + edt_dtAdesaoBEM_adb.Text +
                   ', Data Final ' + edt_dtFinalBEM_adb.Text,'',115)
  else
     GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text,'Inscr.' +
                   edt_inscricao_ben.Text + ', Data de Adesão ' + edt_dtAdesaoBEM_adb.Text,'',115);
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2059.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar.name);
  rdg_indice.Visible:= True;
  Label11.Visible:= True;
  edt_localizar.Visible:= True;
  SpeedButton6.Visible:= True;
  Panel1.Visible:= True;
  lbl_total.Visible:= True;
  PageControl1.TabOrder:= 0;
  ChaveExp:= 999999999;
end;

procedure TFrm_Mov_2059.btn_RemoverClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then
     begin
     DB_ExecSQL('delete from tbl_adesaoBEM where cod_adesaoBEM = '+
                fdt_principal4.spc_cons_adm_adesaoBEM.fieldByName('cod_adesaoBEM').AsString);
     fdt_principal4.spc_cons_adm_adesaoBEM.close;
     fdt_principal4.spc_cons_adm_adesaoBEM.open;
     end;
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Remover.name);
end;

procedure TFrm_Mov_2059.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario+' and b.cod_tipodependente > 0';
  if FStatus = FST_Novo then
  begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then
     begin
     edt_carteira.text := '' ;
     edt_nome.text := '' ;
     end
  else
     begin
     DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben, '+
     ' digito_ben, descricao_pla, endereco_ben, bairro_ben, cep_ben, tipo_sit '+
     ' from tbl_beneficiario b, tbl_plano p, tbl_sitbeneficiario g where b.cod_plano = '+
     'p.cod_plano and b.cod_sitbeneficiario = g.cod_sitbeneficiario and b.cod_beneficiario = '+edt_cod_beneficiario.text);
     edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;

// Aqui, ele filtra apenas os Beneficiários não cancelados
     if Tab.FieldByName('tipo_sit').Value <> 2 then
        begin
        edt_carteira.text := FormatarCarteirinha(
        Tab.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
        STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
        STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
        Tab.FieldByName('digito_ben').AsString) ;
        edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
        end
     else
        Dlg_Alerta('Beneficiário Cancelado!',Self);
  end;
end;

procedure TFrm_Mov_2059.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
  edt_dtAdesaoBEM_adb.Text:= FormatDateTime('dd/mm/yyyy', Now);
end;

procedure TFrm_Mov_2059.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
{ FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);}
end;

procedure TFrm_Mov_2059.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
  if edt_localizar.text <> '' then
     if rdg_indice.ItemIndex = 0 then
        Fdt_principal4.spc_cons_adm_adesaoBEM.Locate('inscricao_ben', edt_localizar.text, [loCaseInsensitive])
     else
        if rdg_indice.ItemIndex = 1  then
           Fdt_principal4.spc_cons_adm_adesaoBEM.Locate('nome_ben', edt_localizar.text, [loPartialKey])
        else
           if rdg_indice.ItemIndex = 2  then
              Fdt_principal4.spc_cons_adm_adesaoBEM.Locate('dtAdesaoBEM_adb', edt_localizar.text, [loPartialKey])
           else
              if rdg_indice.ItemIndex = 3 then
                 Fdt_principal4.spc_cons_adm_adesaoBEM.Locate('dtFinalBEM_adb', edt_localizar.text, [loPartialKey]);
end;

procedure TFrm_Mov_2059.rdg_indiceClick(Sender: TObject);
begin
  inherited;
  edt_localizar.Text:= '';
  SpeedButton6.Click;
  edt_localizar.SetFocus;
end;

procedure TFrm_Mov_2059.btn_imprimirClick(Sender: TObject);
begin
  AtualizaIndice;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_adesaoBEM;
  if  (edt_dtinicial.Text <> '') and (edt_dtfinal.Text <> '') then
    Frm_Bas_Impressao.FCampo1 := 'Período de  '+edt_dtinicial.Text+'  até  '+edt_dtfinal.Text;
  Frm_Bas_Impressao.showReport(4199);
end;

procedure TFrm_Mov_2059.btn_localizarClick(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
  ChaveExp:= 999999999;
  PageControl1.ActivePage:= TabSheet1;                            
end;

procedure TFrm_Mov_2059.dbg_conveniadoDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Sender);
end;

procedure TFrm_Mov_2059.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Mov_2059.stg_audiDrawCell(Sender: TObject; ACol,
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



