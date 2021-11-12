unit Imp_4108;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4108 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_Imp_4108: TFrm_Imp_4108;

implementation
uses dtm_principal4;
{$R *.DFM}


procedure TFrm_Imp_4108.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_autorizacaomedica.RecordCount);
end;

end.
