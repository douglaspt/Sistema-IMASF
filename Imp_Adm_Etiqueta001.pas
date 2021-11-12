unit Imp_Adm_Etiqueta001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_Etiqueta001 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Adm_Etiqueta001: TFrm_Imp_Adm_Etiqueta001;

implementation
Uses dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_Adm_Etiqueta001.QuickRep1BeforePrint(
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

procedure TFrm_Imp_Adm_Etiqueta001.FormCreate(Sender: TObject);
begin
QuickRep1.Font.Name := 'Roman12';
end;

end.
