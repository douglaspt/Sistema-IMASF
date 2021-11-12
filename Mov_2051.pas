unit Mov_2051;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, Fun_Obj, Fun_Test;

type
  TFrm_Mov_2051 = class(TFrm_Bas_TelaPadrao)
    Image2: TImage;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_nome_con: TDCEdit;
    Panel7: TPanel;
    edt_criticaBeneficiario: TDCEdit;
    edt_criticaCRM: TDCEdit;
    edt_criticaConveniado: TDCEdit;
    edt_criticaItem: TDCEdit;
    DataSource1: TDataSource;
    dbg_conveniado: TDBGrid;
    btn_novo_med: TPDJButton;
    btn_alterar_med: TPDJButton;
    btn_Salvar_med: TPDJButton;
    btn_cancelar_med: TPDJButton;
    btn_Remover_med: TPDJButton;
    stg_audi: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btn_novo_medClick(Sender: TObject);
    procedure btn_alterar_medClick(Sender: TObject);
    procedure btn_Salvar_medClick(Sender: TObject);
    procedure btn_cancelar_medClick(Sender: TObject);
    procedure btn_Remover_medClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
  end;

var
  Frm_Mov_2051: TFrm_Mov_2051;
  ChaveExp: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico, dtm_principal5 ;

{$R *.DFM}

procedure TFrm_Mov_2051.FormShow(Sender: TObject);
begin
  inherited;
  fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio.open;
  dbg_conveniado.SetFocus;
  with fdt_principal4.spc_cons_med_criticaAutorizacaoItem do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Mov_2051.BotoesOnOff(b:boolean);
begin
  btn_novo_med.Enabled := b ;
  btn_alterar_med.Enabled := b ;
  btn_Salvar_med.Enabled := not b ;
  btn_cancelar_med.Enabled := not b;
  btn_Remover_med.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2051.btn_novo_medClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  edt_cod_conveniado.Enabled := true;
  edt_cod_conveniado.SetFocus;
  edt_criticaConveniado.Text := 'N';
  edt_criticaBeneficiario.Text := 'N';
  edt_criticaCRM.Text := 'N';
  edt_criticaItem.Text := 'N';
  EscreveLog(btn_novo_med.name);
end;

procedure TFrm_Mov_2051.btn_alterar_medClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  with fdt_principal4.spc_cons_med_criticaAutorizacaoItem do
    begin
    BotoesOnOff(false);
    edt_cod_conveniado.text := FieldByName('cod_conveniado').AsString ;
    edt_criticaConveniado.Text := FieldByName('criticaConveniado').AsString ;
    edt_criticaBeneficiario.text := FieldByName('criticaBeneficiario').AsString ;
    edt_criticaCRM.Text := FieldByName('criticaCRM').AsString ;
    edt_criticaItem.Text := FieldByName('criticaItem').AsString ;
    edt_nome_con.Text:= FieldByName('nome_con').AsString;
    end;
  DadosEntrada := LerDadosTela(Self);
  edt_cod_conveniado.enabled := False;
  edt_criticaConveniado.SetFocus;
  EscreveLog(btn_alterar_med.name);
end;

procedure TFrm_Mov_2051.btn_Salvar_medClick(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  if not BAS_ValidarCampo(edt_cod_conveniado.name, 'É necessário preencher o código do conveniado!', VLD_Preenchido) or
     not BAS_ValidarCampo(edt_criticaConveniado.name, 'É necessário preencher a critica do conveniado com S ou N!', VLD_Preenchido) or
     not BAS_ValidarCampo(edt_criticaBeneficiario.name, 'É necessário preencher a critica do beneficiário com S ou N!', VLD_Preenchido) or
     not BAS_ValidarCampo(edt_criticaCRM.name, 'É necessário preencher a critica do CRM com S ou N!', VLD_Preenchido) or
     not BAS_ValidarCampo(edt_criticaItem.name, 'É necessário preencher a critica do procedimento com S ou N!', VLD_Preenchido) then
     exit ;
  if (Test_SimNao(edt_criticaConveniado.Text) = False) or
     (Test_SimNao(edt_criticaBeneficiario.Text) = False) or
     (Test_SimNao(edt_criticaCRM.Text) = False) or
     (Test_SimNao(edt_criticaItem.Text) = False) then
        begin
        Dlg_OK('Preencher campos somente com S ou N!', Self);
        Exit;
        end;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then
     Exit;
  WMudancas:= '';
  if FStatus = FST_Novo then
     begin
     DB_ExecSQL('insert into tbl_criticaAutorizacaoItem ('+
     'cod_conveniado, criticaConveniado, criticaBeneficiario, criticaCRM, criticaItem) values ('+
     STR_RemoveChar(edt_cod_conveniado.Text,'-')+','''+edt_criticaConveniado.text+''','''+edt_criticaBeneficiario.Text+
     ''', '''+edt_criticaCRM.Text+''', '''+edt_criticaItem.Text+''')');
     WMudancas:= 'CRÍTICAS: CONVENIADO = ' + edt_criticaConveniado.Text +
                 ', BENEFICIÁRIO = ' + edt_criticaBeneficiario.Text + ', CRM = ' + edt_criticaCRM.Text + ', PROCEDIMENTO = ' +
                 edt_criticaItem.Text;
     GeraAuditoria(StrToInt(STR_RemoveChar(edt_cod_conveniado.Text,'-')), '0', 'Incluído ', WMudancas, 0);
     end
  else
     begin
     DB_ExecSQL('update tbl_criticaAutorizacaoItem set '+
     ' criticaConveniado = '''+edt_criticaConveniado.Text+''', '+
     ' criticaBeneficiario = '''+edt_criticaBeneficiario.text+''','+
     ' criticaCRM = '''+edt_criticaCRM.text+''', '+
     ' criticaItem = '''+edt_criticaItem.text+
     ''' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
     DadosSaida:= LerDadosTela(Self);
     For x:= 1 to High(DadosSaida) do
       if DadosEntrada[x] <> DadosSaida[x] then
          WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     if WMudancas <> '' then
        GeraAuditoria(StrToInt(STR_RemoveChar(edt_cod_conveniado.Text,'-')), '0', 'Alterado', 'Situação Anterior ' + WMudancas, 0);
     end;
  with fdt_principal4.spc_cons_med_criticaAutorizacaoItem do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  edt_cod_conveniado.Text:= '';
  EscreveLog(btn_Salvar_med.name);
end;

procedure TFrm_Mov_2051.btn_cancelar_medClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar_med.name);
end;

procedure TFrm_Mov_2051.btn_Remover_medClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then
    begin
    FNomeGeral:= edt_nome_con.Text;
    DB_ExecSQL('delete from tbl_criticaAutorizacaoItem where cod_conveniado = '+
    fdt_principal4.spc_cons_med_criticaAutorizacaoItem.fieldByName('cod_conveniado').AsString);
    WMudancas:= '';
    edt_nome_con.Text:= dbg_conveniado.DataSource.DataSet.FieldByName('nome_con').Value;
    edt_cod_conveniado.Text:= fdt_principal4.spc_cons_med_criticaAutorizacaoItem.fieldByName('cod_conveniado').AsString;
    GeraAuditoria(StrToInt(STR_RemoveChar(edt_cod_conveniado.Text,'-')), '0', 'Excluído', '', 0);
    fdt_principal4.spc_cons_med_criticaAutorizacaoItem.close;
    fdt_principal4.spc_cons_med_criticaAutorizacaoItem.open;
  end;
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Remover_med.name);
end;

procedure TFrm_Mov_2051.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2051.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'));
end;

procedure TFrm_Mov_2051.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  if edt_cod_conveniado.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
{
// Anteriormente
  MemoAuditoria.Clear;
  if edt_nome.Text = '' then
     ChaveExp:= 999999999
  else
     ChaveExp:= StrToInt(edt_cod_beneficiario.Text);
  GetInfoAuditoria(self, MemoAuditoria.name, ChaveExp);
  MemoAuditoria.SetFocus;
// Para subir a primeira linha
//   Preciona e Mantém pressionada a tecla CTRL
  keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
//   Somente Pressiona a Tecla HOME
  keybd_event(VK_HOME, 0, 0, 0);
//   Libera a tecla CTRL
  keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
}
end;

procedure TFrm_Mov_2051.stg_audiDrawCell(Sender: TObject; ACol,
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
