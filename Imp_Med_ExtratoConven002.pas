unit Imp_Med_ExtratoConven002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoConven002 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVB, wTVP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FDataInicial, FDataFinal : String ;
  end;

var
  Frm_Imp_Med_ExtratoConven002: TFrm_Imp_Med_ExtratoConven002;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoConven002.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVB := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_med_extratoconven002.FieldByName('tlitens_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_extratoconven002.FieldByName('tlpago_exc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  wTVB := wTVB + Fdt_principal.spc_cons_med_extratoconven002.FieldByName('tlpacientes_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvB) ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value := FDataInicial ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  value := FDataFinal ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoConven002.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  if FDataFinal = '' then value := '' ;
end;

end.
