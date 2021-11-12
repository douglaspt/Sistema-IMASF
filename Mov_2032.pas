unit Mov_2032;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2032 = class(TFrm_Bas_TelaPadrao)
    btn_excluir: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    edt_cod_autorizainternacao: TDCEdit;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    edt_inscricao: TDCEdit;
    stg_audi: TStringGrid;
    edt_cod_beneficiario: TDCEdit;
    procedure edt_cod_autorizainternacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_excluirClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mov_2032: TFrm_Mov_2032;
  ChaveExp: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj;

{$R *.DFM}

procedure TFrm_Mov_2032.edt_cod_autorizainternacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = 13) and (edt_cod_autorizainternacao.Text <> '') then begin
    DB_OpenSQL('select b.inscricao_ben, b.nome_ben, b.cod_beneficiario from tbl_autorizainternacao a, tbl_beneficiario b'+
    ' where a.cod_beneficiario = b.cod_beneficiario and a.cod_autorizainternacao = '+edt_cod_autorizainternacao.Text);
    edt_inscricao.Text:= Tab.fieldByName('inscricao_ben').AsString;
    edt_nome_ben.Text:= Tab.fieldByName('nome_ben').AsString;
    edt_cod_beneficiario.Text:= Tab.fieldByName('cod_beneficiario').AsString;
  end;
end;

procedure TFrm_Mov_2032.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if (edt_cod_autorizainternacao.Text = '') then begin
    Dlg_Alerta('O Código da Internação deve ser Preenchido!',self);
    Exit;
  end;
  if (edt_nome_ben.Text = '') then begin
    Dlg_Alerta('O Nome deve estar Preenchido!',self);
    Exit;
  end;
  if not Dlg_YesNo('Tem Certeza que deseja excluir a Internação?',self) then Exit;
  DB_ExecSQL('delete from tbl_concessaointernacao where cod_autorizainternacao = '+
  edt_cod_autorizainternacao.Text);
  DB_ExecSQL('delete from tbl_controleuti where cod_autorizainternacao = '+
  edt_cod_autorizainternacao.Text);
  DB_ExecSQL('delete from tbl_altainternacao where cod_autorizainternacao = '+
  edt_cod_autorizainternacao.Text);
  DB_ExecSQL('delete from tbl_autorizainternacao where cod_autorizainternacao = '+
  edt_cod_autorizainternacao.Text);
  GeraAuditoria(StrToInt(edt_cod_beneficiario.Text),'0','Excluído código da internação No.' + edt_cod_autorizainternacao.Text,
               'Inscrição No.' + edt_inscricao.Text, 0);
  Obj_EmptyEdit(self);
end;

procedure TFrm_Mov_2032.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  if edt_cod_beneficiario.Text <> '' then
     ChaveExp:= StrtoInt(edt_cod_beneficiario.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Mov_2032.stg_audiDrawCell(Sender: TObject; ACol,
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



