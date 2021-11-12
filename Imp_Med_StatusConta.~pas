unit Imp_Med_StatusConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_StatusConta = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    lbl_tlItemGlosa: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRExprTCons: TQRExpr;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTVP, VLAP, VLDF, VLPG, VLREC, DIF, VLISS, wTVP01, VLAP01, VLDF01, VLPG01, VLREC01, DIF01, VLISS01 : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_Med_StatusConta: TFrm_Imp_Med_StatusConta;

implementation
Uses dtm_principal, Fun_Data, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_StatusConta.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVP := 0 ;
  VLAP := 0 ;
  VLPG := 0;
  VLREC := 0;
  VLDF := 0 ;
  DIF := 0;
  VLISS := 0;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrepasse_cta').AsFloat;
  wTVP01 := wTVP01 + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrepasse_cta').AsFloat;  
end;

procedure TFrm_Imp_Med_StatusConta.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_med_statusloteconta.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal.spc_cons_med_statusloteconta.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_StatusConta.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  DIF := (Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlapresentado_cta').AsFloat -
  Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrepasse_cta').AsFloat);
  value := FormatFloat('###,###,##0.00',DIF);
  VLDF := VLDF + Dif;

  DIF01 := (Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlapresentado_cta').AsFloat -
  Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrepasse_cta').AsFloat);
  value := FormatFloat('###,###,##0.00',DIF01);
  VLDF01 := VLDF01 + Dif01;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  VLAP := VLAP + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlapresentado_cta').AsFloat;
  VLAP01 := VLAP01 + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlapresentado_cta').AsFloat;
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLAP) ;
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLDF);
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLPG);
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  VLREC := VLREC + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrecuperado_cta').AsFloat;
  VLREC01 := VLREC01 + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrecuperado_cta').AsFloat;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  VLPG := VLPG + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlpago_cta').AsFloat;
  VLPG01 := VLPG01 + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlpago_cta').AsFloat;
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  VLISS := VLISS + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlISS_cta').AsFloat;
  VLISS01 := VLISS01 + Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlISS_cta').AsFloat;  
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLISS);  
end;

procedure TFrm_Imp_Med_StatusConta.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  if (Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlpago_cta').AsFloat+
  Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrecuperado_cta').AsFloat+
  Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlISS_cta').AsFloat)
  = Fdt_principal.spc_cons_med_statusloteconta.FieldByName('vlrepasse_cta').AsFloat then
    value := 'VR'
  else
    value := 'VA';  
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel36Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLAP01) ; 
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel38Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLREC01);
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel40Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLISS01);
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel39Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLPG01);
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLREC);
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP01) ;
end;

procedure TFrm_Imp_Med_StatusConta.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',VLDF01);
end;

procedure TFrm_Imp_Med_StatusConta.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  wTVP01 := 0 ;
  VLAP01 := 0 ;
  VLPG01 := 0;
  VLREC01 := 0;
  VLDF01 := 0 ;
  DIF01 := 0;
  VLISS01 := 0;
end;

end.
