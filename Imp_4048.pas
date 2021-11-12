unit Imp_4048;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4048 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_4048: TFrm_Imp_4048;

implementation
Uses dtm_principal, dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4048.QuickRep1BeforePrint(
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

procedure TFrm_Imp_4048.FormCreate(Sender: TObject);
begin
QuickRep1.Font.Name := 'Roman12';
end;

procedure TFrm_Imp_4048.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  value := 'Inscri��o:    '+value; 
end;

procedure TFrm_Imp_4048.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  with fdt_principal2.spc_cons_adm_etiquetabenefi001 do
    value := fieldbyname('bairrocor_ben').asstring+' - '+fieldbyname('cidadecor_ben').asstring+
    ' - ' + fieldbyname('sigla_uf').asstring ;
end;

end.
