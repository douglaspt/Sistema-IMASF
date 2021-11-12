unit Imp_4099;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt, Math;

type
  TFrm_Imp_4099 = class(TFrm_Imp_Basico)
    Conveniado: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRBand3: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand4: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 CodConv, Insc, DtInterIni , DtAltaIni, DtInterFin, DtAltaFin    : String ;
 CC , DA, FNmedia, FNTlDiarias, FNTlInter, FNTlMedia : Double;
 FNdiarias : integer;
 //FdataFinal : datetime;

  end;

var
  Frm_Imp_4099: TFrm_Imp_4099;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4099.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := CodConv ;

end;
procedure TFrm_Imp_4099.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Insc;
end;

procedure TFrm_Imp_4099.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DtInterIni;
end;

procedure TFrm_Imp_4099.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DtAltaIni ;
end;

procedure TFrm_Imp_4099.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DtInterFin;
end;

procedure TFrm_Imp_4099.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DtAltaFin;
end;

procedure TFrm_Imp_4099.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 CC := 0;
 DA := 0;
 FNdiarias := 0;
end;

procedure TFrm_Imp_4099.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  //PrintBand := CC <> 1;
end;

procedure TFrm_Imp_4099.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  CC := CC + 1;
  DA := DA + Fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('permanencia').AsInteger;
end;

procedure TFrm_Imp_4099.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FloatToStr(CC);
  FNTlInter := FNTlInter + CC;
end;

procedure TFrm_Imp_4099.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
//  FNmedia := (DA + FNdiarias);
  FNmedia := (DA);
  value := FloatToStr(FNmedia);
  FNTlDiarias := FNTlDiarias + FNmedia;
end;

procedure TFrm_Imp_4099.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
 Value := FormatFloat('###,###,##0.##',FNmedia / CC);
end;

procedure TFrm_Imp_4099.QRDBText11Print(sender: TObject;
  var Value: String);
  var diaria: double;
begin
  inherited;
{  if fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('permanencia').AsInteger = 0 then begin
  value := '1';
  FNdiarias := FNdiarias + 1;
  end;
  if (fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('dtalta_alt').AsString = '') then begin
    diaria := strtodate(DtInterFin) - fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('dtentrada_ain').AsDateTime;
    value := floattostr(diaria);
    FNdiarias := FNdiarias + Floor(diaria);
  end;}
  diaria := fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('permanencia').Value;
  FNdiarias := FNdiarias + Floor(diaria);
end;

procedure TFrm_Imp_4099.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FloatToStr(FNTlInter);
end;

procedure TFrm_Imp_4099.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FloatToStr(FNTlDiarias);
end;

procedure TFrm_Imp_4099.QRLabel35Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.##',FNTlDiarias / FNTlInter);
end;

procedure TFrm_Imp_4099.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  FNTlInter := 0;
  FNTlDiarias := 0;
end;

procedure TFrm_Imp_4099.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  case fdt_principal4.spc_cons_med_autorizainternacao.FieldByName('cod_tipointernacao').AsInteger of
    1 : value := 'CM';
    2 : value := 'CP';
    3 : value := 'CC';
    4 : value := 'CO';
    5 : value := 'PQ';
  end;
end;

end.


