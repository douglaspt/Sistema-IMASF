unit Imp_Adm_Etiqueta003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_Etiqueta003 = class(TForm)
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
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
     count : integer;
  public
    FtipoImpressao : integer;
    { Public declarations }
  end;

var
  Frm_Imp_Adm_Etiqueta003: TFrm_Imp_Adm_Etiqueta003;

implementation
Uses dtm_principal, dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_Adm_Etiqueta003.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  count := 0;
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

procedure TFrm_Imp_Adm_Etiqueta003.FormCreate(Sender: TObject);
begin
QuickRep1.Font.Name := 'Draft 12cpi';
end;

procedure TFrm_Imp_Adm_Etiqueta003.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  count := count +1;
  if FtipoImpressao = 0 then
    value := fdt_principal2.spc_cons_adm_etiquetabenefi001.fieldByName('inscricao_ben').AsString
  else
    Value := IntToStr(count);
end;

end.
