unit Imp_Adm_Etiqueta002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_Etiqueta002 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    qrb_inscricao: TQRDBText;
   // PBPrinterSetupDialog1: TPBPrinterSetupDialog;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure qrb_inscricaoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    count : integer;
  public
    FtipoImpressao : integer;
    { Public declarations }
  end;

var
  Frm_Imp_Adm_Etiqueta002: TFrm_Imp_Adm_Etiqueta002;

implementation
Uses dtm_principal, dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_Adm_Etiqueta002.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  count := 0;
//QuickRep1.Page.Length := 307;
//QuickRep1.Page.Width := 125;
 {
  with PBPrinterSetupDialog1 do
  begin
    InitialSetupValues.PaperSize := DMPAPER_USER ;
    InitialSetupValues.PaperLength := 3070 ;
    InitialSetupValues.PaperWidth := 1250;
    Execute;
    ThisPrinterValues.PaperSize := DMPAPER_USER ;
    ThisPrinterValues.PaperLength := 3070 ;
    ThisPrinterValues.PaperWidth := 1250;
    QuickRep1.Page.Length := ThisPrinterValues.PaperLength/10;
    QuickRep1.Page.Width := ThisPrinterValues.PaperWidth/10;
  end;  }

end;

procedure TFrm_Imp_Adm_Etiqueta002.FormCreate(Sender: TObject);
begin
QuickRep1.Font.Name := 'Roman12';
end;

procedure TFrm_Imp_Adm_Etiqueta002.qrb_inscricaoPrint(sender: TObject;
  var Value: String);
begin
  count := count +1;
  if FtipoImpressao = 0 then
    value := fdt_principal2.spc_cons_adm_etiquetabenefi001.fieldByName('inscricao_ben').AsString
  else
    Value := IntToStr(count);
end;

end.
