unit Imp_4063;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4063 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QRLabel12Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_Imp_4063: TFrm_Imp_4063;

implementation
uses dtm_principal3;
{$R *.DFM}


procedure TFrm_Imp_4063.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal3.spc_cons_adm_histbeneficiario.RecordCount);
end;

end.
