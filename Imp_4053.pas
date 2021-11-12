unit Imp_4053;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4053 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QRLabel9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_4053: TFrm_Imp_4053;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4053.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal2.spc_cons_cotacaoindice.RecordCount);
end;

end.
