unit Imp_4138;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, jpeg;

type
  TFrm_Imp_Adm_Etiqueta002 = class(TForm)
    QuickRep2: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape10: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape14: TQRShape;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Adm_Etiqueta002: TFrm_Imp_Adm_Etiqueta002;

implementation
Uses dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_Adm_Etiqueta002.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
{  with PBPrinterSetupDialog1 do
  begin
    ThisPrinterValues.PaperSize := DMPAPER_USER ;
    ThisPrinterValues.PaperLength := 480 ;
    ThisPrinterValues.PaperWidth := 104;
    Execute;
    ThisPrinterValues.PaperSize := DMPAPER_USER ;
    ThisPrinterValues.PaperLength := 480 ;
    ThisPrinterValues.PaperWidth := 104;
  end;}
end;

procedure TFrm_Imp_Adm_Etiqueta002.FormCreate(Sender: TObject);
begin
QuickRep1.Font.Name := 'Roman12';
end;

end.
