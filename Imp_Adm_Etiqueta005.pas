unit Imp_Adm_Etiqueta005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_Etiqueta005 = class(TForm)
    QuickRep: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
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
  Frm_Imp_Adm_Etiqueta005: TFrm_Imp_Adm_Etiqueta005;

implementation
Uses dtm_principal, dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_Adm_Etiqueta005.QuickRepBeforePrint(
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

procedure TFrm_Imp_Adm_Etiqueta005.FormCreate(Sender: TObject);
begin
QuickRep.Font.Name := 'Roman12';
end;

procedure TFrm_Imp_Adm_Etiqueta005.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  value := 'Inscrição:    '+value;
end;

procedure TFrm_Imp_Adm_Etiqueta005.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  with fdt_principal2.spc_cons_adm_etiquetabenefi001 do
    value := fieldbyname('bairro_ben').asstring+' - '+fieldbyname('cidade_ben').asstring+
    ' - ' + fieldbyname('sigla_uf').asstring ;
end;

end.
