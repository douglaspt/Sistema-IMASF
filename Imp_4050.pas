unit Imp_4050;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4050 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    CodInicial, CodFinal : String 
  end;

var
  Frm_Imp_4050: TFrm_Imp_4050;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4050.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := CodInicial;
end;

procedure TFrm_Imp_4050.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
 value := CodFinal ;
end;

procedure TFrm_Imp_4050.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal2.spc_cons_med_cid.RecordCount);
end;

end.
