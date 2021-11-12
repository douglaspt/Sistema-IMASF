unit Mov_2027;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2027 = class(TFrm_Bas_TelaPadrao)
    btn_reagendar: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    edt_cod_descontofolha: TDCEdit;
    edt_parcelan_par: TDCEdit;
    Panel1: TPanel;
    edt_meses: TDCEdit;
    stg_audi: TStringGrid;
    procedure btn_reagendarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wCod_Desconto, wParcela : String ;                       
  end;

var
  Frm_Mov_2027: TFrm_Mov_2027;
  ChaveExp: Integer;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
 dtm_principal3 ;

{$R *.DFM}


function TFrm_Mov_2027.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_cod_descontofolha.name, 'O Código do Desconto deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_parcelan_par.name, 'O Parcelamento deve ser Preenchido !', VLD_Preenchido ));

end;

procedure TFrm_Mov_2027.btn_reagendarClick(Sender: TObject);
var
  i : integer;
begin
    if CriticaParametros then
       Exit;
    GeraAuditoria(0,'0','Reagendado parcelamento cód.desconto ' + edt_cod_descontofolha.Text +
                  ', Parcela ' + edt_parcelan_par.Text + ' em ' + edt_meses.Text + ' meses','',0);
    for i := 1 to STR_StrToInt(edt_meses.Text) do
      DB_ExecSQL('exec spc_cont_reagendarParcelamento '+edt_cod_descontofolha.text+', '+
      edt_parcelan_par.text);
      Dlg_Ok('Reagendamento Efetuado',self);
    EscreveLog(btn_reagendar.name);
end;

procedure TFrm_Mov_2027.FormShow(Sender: TObject);
begin
  inherited;
  if (wCod_Desconto <> '') then
  begin
    edt_cod_descontofolha.text := wCod_Desconto ;
    edt_parcelan_par.Text := wParcela ;
  end;
end;

procedure TFrm_Mov_2027.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Mov_2027.stg_audiDrawCell(Sender: TObject; ACol,
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



