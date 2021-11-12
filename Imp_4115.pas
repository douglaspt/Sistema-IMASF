unit Imp_4115;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4115 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    VLAP, VLDF, DIF : double ;
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal : String ;

  end;

var
  Frm_Imp_4115: TFrm_Imp_4115;

implementation
uses dtm_principal2, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4115.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4115.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4115.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  VLAP := VLAP + fdt_principal4.spc_cons_med_statusloteconta001.FieldByName('vlapresentado_cta').AsFloat;
end;

procedure TFrm_Imp_4115.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  VLAP := 0 ;
  VLDF := 0 ;
  DIF := 0;
end;

procedure TFrm_Imp_4115.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
  VLDF := VLDF + fdt_principal4.spc_cons_med_statusloteconta001.FieldByName('vlrepasse_cta').AsFloat;
end;

procedure TFrm_Imp_4115.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  DIF := DIF + fdt_principal4.spc_cons_med_statusloteconta001.FieldByName('diferenca').AsFloat;
end;

procedure TFrm_Imp_4115.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',VLAP); 
end;

procedure TFrm_Imp_4115.QRLTlConsPrint(sender: TObject; var Value: String);
begin
  inherited;
   Value := FormatFloat('###,###,##0.00',VLDF);
end;

procedure TFrm_Imp_4115.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
   Value := FormatFloat('###,###,##0.00',DIF);
end;

end.
