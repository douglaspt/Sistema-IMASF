unit Mov_2052;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Mov_2052 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_nome_con: TDCEdit;
    dbg_conveniado: TDBGrid;
    btn_novo_med: TPDJButton;
    btn_Salvar_med: TPDJButton;
    btn_cancelar_med: TPDJButton;
    btn_Remover_med: TPDJButton;
    stg_audi: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btn_novo_medClick(Sender: TObject);
    procedure btn_Salvar_medClick(Sender: TObject);
    procedure btn_cancelar_medClick(Sender: TObject);
    procedure btn_Remover_medClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
  end;

var
  Frm_Mov_2052: TFrm_Mov_2052;
  ChaveExp: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico ;

{$R *.DFM}

procedure TFrm_Mov_2052.FormShow(Sender: TObject);
begin
  inherited;
  fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio.open;
  dbg_conveniado.SetFocus;
  with fdt_principal4.spc_cons_med_criticaCRM do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Mov_2052.BotoesOnOff(b:boolean);
begin
  btn_novo_med.Enabled := b ;
  btn_Salvar_med.Enabled := not b ;
  btn_cancelar_med.Enabled := not b;
  btn_Remover_med.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2052.btn_novo_medClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(false);
  edt_cod_conveniado.SetFocus;
  EscreveLog(btn_novo_med.name);
end;

procedure TFrm_Mov_2052.btn_Salvar_medClick(Sender: TObject);
begin
 inherited;
  FCodigoGeral:= StrToInt(STR_RemoveChar(edt_cod_conveniado.Text,'-'));
  FNomeGeral:= edt_nome_con.Text;
  if not BAS_ValidarCampo(edt_cod_conveniado.name, 'É necessário preencher o Código do Conveniado!', VLD_Preenchido) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then Exit;
  DB_ExecSQL('insert into tbl_criticaCRM (cod_conveniado) values ('+
  STR_RemoveChar(edt_cod_conveniado.text,'-')+')');
  GeraAuditoria(FCodigoGeral, '0', 'Incluído', '', 0);
  with fdt_principal4.spc_cons_med_criticaCRM do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Salvar_med.name);
end;

procedure TFrm_Mov_2052.btn_cancelar_medClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar_med.name);
end;

procedure TFrm_Mov_2052.btn_Remover_medClick(Sender: TObject);
begin
  inherited;
  FCodigoGeral:= dbg_conveniado.Columns[0].Field.AsInteger;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
     DB_ExecSQL('delete from tbl_criticaCRM where cod_conveniado = '+
     fdt_principal4.spc_cons_med_criticaCRM.fieldByName('cod_conveniado').AsString);
     fdt_principal4.spc_cons_med_criticaCRM.close;
     fdt_principal4.spc_cons_med_criticaCRM.open;
     GeraAuditoria(FCodigoGeral, '0', 'Excluído', '', 0);
     dbg_conveniado.SetFocus;
  end;
  edt_nome_con.SetFocus;
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Remover_med.name);
end;

procedure TFrm_Mov_2052.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2052.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'));
end;

procedure TFrm_Mov_2052.TabSheet2Show(Sender: TObject);
begin
  inherited;
//*** Alterado em 16/04/15_Memo GDS***
  ChaveExp:= 999999999;
  if edt_cod_conveniado.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
end;

procedure TFrm_Mov_2052.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2052.FormCreate(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
end;

end.
