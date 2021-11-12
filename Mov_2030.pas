unit Mov_2030;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2030 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    SpeedButton6: TSpeedButton;
    edt_cod_descontofolha: TDCEdit;
    edt_parcelan_par: TDCEdit;
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
    Panel4: TPanel;
    edt_nparcela_par: TDCEdit;
    edt_parcelan_par2: TDCEdit;
    Panel5: TPanel;
    edt_vldesconto_adf: TDCEdit;
    edt_valorpagar_par: TDCEdit;
    Panel6: TPanel;
    btn_alterar: TPDJButton;
    edt_nossonumero_flh: TDCEdit;
    edt_cod_beneficiario: TDCEdit;
    edt_inscricao_ben: TDCEdit;
    stg_audi: TStringGrid;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
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
  Frm_Mov_2030: TFrm_Mov_2030;
  ChaveExp: Integer;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
 dtm_principal4 ;

{$R *.DFM}


function TFrm_Mov_2030.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_cod_descontofolha.name, 'O Código do Desconto deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_parcelan_par.name, 'O Parcelamento deve ser Preenchido !', VLD_Preenchido ));

end;

procedure TFrm_Mov_2030.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  with fdt_principal4.spc_cons_adm_altecaonossoNumero do
  begin
    Close;
    ParamByName('@cod_descontofolha').AsString := edt_cod_descontofolha.text;
    ParamByName('@parcelan_par').AsString := edt_parcelan_par.text;
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
    edt_nossonumero_flh.text := fieldbyname('nossonumero_flh').AsString;
    edt_nparcela_par.Text := FieldByName('nparcela_par').AsString;
    edt_parcelan_par2.Text := FieldByname('parcelan_par').AsString;
    edt_valorpagar_par.Text := FormatFloat('###,###,##0.00',FieldByName('valorpagar_par').AsFloat);
    edt_cod_beneficiario.Text:= FieldByName('cod_beneficiario').AsString;
    edt_inscricao_ben.Text:= FieldByName('inscricao_ben').AsString;
  end;
end;

procedure TFrm_Mov_2030.btn_alterarClick(Sender: TObject);
var
  result : boolean;
begin
  inherited;
  edt_valorpagar_par.Text := STR_RemoveChar(edt_valorpagar_par.Text,'.');
  if trim(edt_parcelan_par.text) = '' then
    result := DB_ExecSQL('update tbl_descontofolha set nossonumero_flh = '''+edt_nossonumero_flh.Text+
    ''' where cod_descontofolha = '+edt_cod_descontofolha.Text)
  else
    result := DB_ExecSQL('update tbl_parcelamento set nossonumero_par = '''+edt_nossonumero_flh.Text+
    ''' where cod_descontofolha = '+edt_cod_descontofolha.Text+' and parcelan_par = '+
    edt_parcelan_par.text);
  if result then
    begin
    Dlg_Ok('Alteração Efetuada !', self);
    GeraAuditoria(StrToInt(edt_cod_beneficiario.Text), edt_inscricao_ben.Text,
                           'Alterado Cód.Descontos ' + edt_cod_descontofolha.Text +
                           ', Parcela ' + edt_parcelan_par.Text +
                           ', inscr.' + edt_inscricao_ben.Text + ', matríc.' + edt_matricula.Text +
                           '-' + edt_digito.Text + ', ' + edt_nome_emp.Text, 'Tarifa ' + edt_nome_tar.Text +
                           ', ' + edt_dtdesconto_flh.Text + ', Vlr. ' +
                           FormatFloat('##,###,##0.00',StrToFloat(edt_valorpagar_par.Text)) +
                           ', Nosso Numero ' + edt_nossonumero_flh.Text,0);
    end
  else
    Dlg_Erro('Não foi possível efetuar a altareção !', self);
end;

procedure TFrm_Mov_2030.FormShow(Sender: TObject);
begin
  inherited;
  if wCod_Desconto <> '' then
    edt_cod_descontofolha.Text := wCod_Desconto;
  if wParcela <> '' then
    edt_parcelan_par.Text := wParcela;  
end;

procedure TFrm_Mov_2030.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2030.stg_audiDrawCell(Sender: TObject; ACol,
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



