unit Mov_2010;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2010 = class(TFrm_Bas_TelaPadrao)
    btn_cancelar: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    SpeedButton6: TSpeedButton;
    edt_cod_descontofolha: TDCEdit;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    edt_carteira: TDCEdit;
    Panel24: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    Panel8: TPanel;
    edt_nome_emp: TDCEdit;
    edt_nome_tar: TDCEdit;
    Panel11: TPanel;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_cod_beneficiario: TDCEdit;
    edt_inscricao_ben: TDCEdit;
    Panel5: TPanel;
    edt_vldesconto_adf: TDCEdit;
    TabSheet2: TTabSheet;
    stg_audi: TStringGrid;
    procedure btn_cancelarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FCodDesconto : String;
  end;

var
  Frm_Mov_2010: TFrm_Mov_2010;
  ChaveExp: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, fun_desconto, Fun_obj ;

{$R *.DFM}

procedure TFrm_Mov_2010.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  edt_vldesconto_adf.Text := STR_RemoveChar(edt_vldesconto_adf.Text,'.');
  if edt_cod_descontofolha.Text = '' then
    Dlg_Alerta('É necessário Digitar o Código do Desconto', self)
  else
     begin
     if Dlg_YesNo('Tem certeza que deseja Cancelar os Parcelamentos em Aberto!', self) then
        begin
        if DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 900 '+
                      ', cod_usuario = '+Str_IntToStr(Fcod_usuario)+
                      ' where cod_descontofolha ='+ edt_cod_descontofolha.text+' and cod_sitdesconto = 1') then
                     // Set_HistoricoDesconto(strToInt(edt_cod_descontofolha.text), Fcod_usuario, FCod_TelaSistema, 113);
           Dlg_Ok('Parcelamentos Cancelados', self);
           GeraAuditoria(StrToInt(edt_cod_beneficiario.Text), edt_inscricao_ben.Text,
                                  'Cancelado parcelamento cód.desconto ' + edt_cod_descontofolha.Text +
                                  ', inscr.' + edt_inscricao_ben.Text + ', matríc.' + edt_matricula.Text +
                                  '-' + edt_digito.Text + ', ' + edt_nome_emp.Text, 'Tarifa ' + edt_nome_tar.Text +
                                  ', ' + edt_dtdesconto_flh.Text + ', Vlr. ' +
                                  FormatFloat('##,###,##0.00',StrToFloat(edt_vldesconto_adf.Text)),0);
           Obj_EmptyEdit(self);
        end;
     end;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Mov_2010.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if edt_cod_descontofolha.Text <> '' Then
  begin
    with fdt_principal4.spc_cons_adm_altecaonossoNumero do
    begin
      Close;
      ParamByName('@cod_descontofolha').AsString := edt_cod_descontofolha.text;
      Open;
      edt_carteira.text := FormatarCarteirinha(
      FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
      STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
      STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
      FieldByName('digito_ben').AsString) ;
      edt_nome_ben.Text := fieldbyname('nome_ben').AsString;
      edt_matricula.Text := fieldByname('matriculadebito_seg').AsString;
      edt_digito.Text := fieldbyname('digitomatdeb_seg').AsString;
      edt_nome_emp.Text := fieldbyname('nome_emp').AsString;
      edt_nome_tar.Text := fieldbyname('nome_tar').AsString;
      edt_dtdesconto_flh.Text := fieldbyname('dtdesconto_flh').AsString;
      edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00', fieldbyname('vldesconto_adf').AsFloat);
      edt_cod_beneficiario.Text:= FieldByName('cod_beneficiario').AsString;
      edt_inscricao_ben.Text:= FieldByName('inscricao_ben').AsString;
    end;
  end;
end;

procedure TFrm_Mov_2010.FormShow(Sender: TObject);
begin
  inherited;
  if FCodDesconto <> '' then
    edt_cod_descontofolha.Text := FCodDesconto;
end;

procedure TFrm_Mov_2010.TabSheet2Show(Sender: TObject);
begin
  inherited;
  GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 1);
end;

procedure TFrm_Mov_2010.stg_audiDrawCell(Sender: TObject; ACol,
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



