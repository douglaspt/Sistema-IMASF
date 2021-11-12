unit Imp_Resumo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, QRExport;

type
  TFrm_Imp_Resumo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBT_DtAtendimento: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRExprTCons: TQRExpr;
    QRSubDetail2: TQRSubDetail;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel17: TQRLabel;
    Query1: TQuery;
    Query1nome: TStringField;
    Query1Cod_ItemAutorizacao: TIntegerField;
    Query1Cod_Sadt: TIntegerField;
    Query1Numero: TIntegerField;
    Query1Descricao: TStringField;
    Query1Emeregencia: TStringField;
    Query1Dhe: TStringField;
    Query1DtRealizacao: TDateField;
    Query1Posicao: TIntegerField;
    Query1Codigo: TIntegerField;
    Query1Qtde: TIntegerField;
    Query1Percentual: TFloatField;
    DataSource1: TDataSource;
    QRDBT_DtRealizacao: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    Query1crm: TIntegerField;
    Query1cid: TStringField;
    Query1carteira: TStringField;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRBand5: TQRBand;
    QRShape3: TQRShape;
    QRLabel28: TQRLabel;
    QRExprTItens: TQRExpr;
    QRSubDetail3: TQRSubDetail;
    Query2: TQuery;
    Query2nome: TStringField;
    Query2crm: TIntegerField;
    Query2cid: TStringField;
    Query2carteira: TStringField;
    Query2Cod_ItemAutorizacao: TIntegerField;
    Query2Cod_Internacao: TIntegerField;
    Query2Numero: TIntegerField;
    Query2Descricao: TStringField;
    Query2Emeregencia: TStringField;
    Query2Dhe: TStringField;
    Query2DtRealizacao: TDateField;
    Query2Posicao: TIntegerField;
    Query2Codigo: TIntegerField;
    Query2Qtde: TIntegerField;
    Query2Percentual: TFloatField;
    QRDBT_DtRealizacao2: TQRDBText;
    QRDBText29: TQRDBText;
    QRBand6: TQRBand;
    QRShape5: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand7: TQRBand;
    QRShape6: TQRShape;
    QRLabel38: TQRLabel;
    QRExpr5: TQRExpr;
    QRBand8: TQRBand;
    QRShape7: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText27: TQRDBText;
    Query1Valor: TStringField;
    Query2Valor: TStringField;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRLabel44Print(sender: TObject; var Value: String);
    procedure QRLabel45Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText24Print(sender: TObject; var Value: String);
    procedure QRDBT_DtAtendimentoPrint(sender: TObject; var Value: String);
    procedure QRDBT_DtRealizacaoPrint(sender: TObject; var Value: String);
    procedure QRDBT_DtRealizacao2Print(sender: TObject; var Value: String);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel37Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTS, wTI : integer ;
    wTV, wTVt : double ;
    wSO : string ;
    function STR_RemoveChar(S:String;K : Char): String ;
  public
    { Public declarations }
  end;

var
  Frm_Imp_Resumo: TFrm_Imp_Resumo;

implementation
Uses Principal ;
{$R *.DFM}

function TFrm_Imp_Resumo.STR_RemoveChar(S:String;K : Char): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if not (s[i] in [k]) then
      result := result + s[i];
end;

procedure TFrm_Imp_Resumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.close;
  Query2.close;
//  Frm_Principal.tbl_consulta.IndexName := '';
end;

procedure TFrm_Imp_Resumo.FormCreate(Sender: TObject);
begin
  Query1.open;
  Query2.open;
//  Frm_Principal.tbl_consulta.IndexName := 'idx_carteira';
end;

procedure TFrm_Imp_Resumo.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTs := 0 ;
  wTI := 0 ;
  wTV:= 0 ;
 // showmessage('RELATÓRIO PARA CONFERÊNCIA DA DIGITAÇÃO, NÃO É PRECISO SALVAR E ENVIAR AO IMASF. PARA ENVIAR OS DADOS DIGITADOS AO IMASF ACESSE O BOTÃO "&Gerar Disquete / Arquivo TXT (Abramge) NA TELA PRINCIPAL"');  
end;

procedure TFrm_Imp_Resumo.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(wTS) ;
end;

procedure TFrm_Imp_Resumo.QRLabel44Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(wTI) ;
end;

procedure TFrm_Imp_Resumo.QRLabel45Print(sender: TObject;
  var Value: String);
begin

  value := FormatFloat('###,###,##0.00',wTv) ;
end;

procedure TFrm_Imp_Resumo.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  DecimalSeparator := ',';
  wTV := wTV + Query1.FieldByName('Valor').AsFloat;
  wTVt := wTVt + Query1.FieldByName('Valor').AsFloat;
end;

procedure TFrm_Imp_Resumo.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  DecimalSeparator := ',';
  wTV := wTV + Frm_Principal.tbl_consulta.FieldByName('Valor').AsFloat;
end;

procedure TFrm_Imp_Resumo.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTv) ;
end;

procedure TFrm_Imp_Resumo.QRDBText24Print(sender: TObject;
  var Value: String);
begin
  DecimalSeparator := ',';
  wTV := wTV + Query2.FieldByName('Valor').AsFloat;
  wTVt := wTVt + Query2.FieldByName('Valor').AsFloat;
end;

procedure TFrm_Imp_Resumo.QRDBT_DtAtendimentoPrint(sender: TObject;
  var Value: String);
begin
  Inc(wTS);
  Inc(wTI);
end;

procedure TFrm_Imp_Resumo.QRDBT_DtRealizacaoPrint(sender: TObject;
  var Value: String);
begin
  if wSO <> Query1.FieldByName('Nome').AsString then
    Inc(wTS);
  Inc(wTI);
  wSO := Query1.FieldByName('Nome').AsString ;
end;

procedure TFrm_Imp_Resumo.QRDBT_DtRealizacao2Print(sender: TObject;
  var Value: String);
begin
  if wSO <> Query2.FieldByName('Nome').AsString then
    Inc(wTS);
  Inc(wTI);
  wSO := Query2.FieldByName('Nome').AsString ;
end;

procedure TFrm_Imp_Resumo.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  wTVt := 0 ;
end;

procedure TFrm_Imp_Resumo.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvt) ;
end;

procedure TFrm_Imp_Resumo.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  wTVt := 0 ;
end;

procedure TFrm_Imp_Resumo.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvt) ;
end;

end.
