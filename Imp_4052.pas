unit Imp_4052;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4052 = class(TFrm_Imp_Basico)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
  Frm_Imp_4052: TFrm_Imp_4052;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4052.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal2.spc_cons_med_espmedamb.RecordCount);
end;

end.
