unit Imp_4124;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4124 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    lbl_subtotal: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape1: TQRShape;
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    FBAS, FINT, FESP, FBEN, FTLBEN, FTLBAS, FTLINT, FTLESP : Integer;
  public
    { Public declarations }
  FPeriodoInicial, FPeriodoFinal, FMesAnoReferencia : String ;

  end;

var
  Frm_Imp_4124: TFrm_Imp_4124;

implementation
uses dtm_principal3, dtm_principal5;
{$R *.DFM}

procedure TFrm_Imp_4124.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal5.spc_cons_adm_Ocorrenciaedital.RecordCount);
end;

procedure TFrm_Imp_4124.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
    if FPeriodoInicial = '' then
    Value := '';
end;

procedure TFrm_Imp_4124.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial;
end;

procedure TFrm_Imp_4124.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4124.QRLabel3Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoFinal = '' then
    value := '';
end;

procedure TFrm_Imp_4124.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  if FMesAnoReferencia = '' then
    value := '';
end;

procedure TFrm_Imp_4124.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FMesAnoReferencia;
end;

procedure TFrm_Imp_4124.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTLBEN := FTLBEN + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('totalbenefi').AsInteger;
  FTLBAS := FTLBAS + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlBas').AsInteger;
  FTLINT := FTLINT + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlInt').AsInteger;
  FTLESP := FTLESP + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlEsp').AsInteger;
  FBEN := FBEN + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('totalbenefi').AsInteger;
  FBAS := FBAS + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlBas').AsInteger;
  FINT := FINT + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlInt').AsInteger;
  FESP := FESP + fdt_principal5.spc_cons_adm_Ocorrenciaedital.fieldByName('TlEsp').AsInteger;
end;

procedure TFrm_Imp_4124.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBEN);
end;

procedure TFrm_Imp_4124.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
 FTLBEN := 0;
 FTLBAS := 0;
 FTLINT := 0;
 FTLESP := 0;
end;

procedure TFrm_Imp_4124.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := inttostr(FTLESP);
end;

procedure TFrm_Imp_4124.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLINT);
end;

procedure TFrm_Imp_4124.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBAS);
end;

procedure TFrm_Imp_4124.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FBAS);
end;

procedure TFrm_Imp_4124.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FINT);
end;

procedure TFrm_Imp_4124.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FESP);
end;

procedure TFrm_Imp_4124.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FBEN);
end;

procedure TFrm_Imp_4124.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  FBAS := 0;
  FINT := 0;
  FESP := 0;
  FBEN := 0;
end;

end.
