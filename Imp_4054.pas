unit Imp_4054;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4054 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FEmpresa : String;
  end;

var
  Frm_Imp_4054: TFrm_Imp_4054;

implementation
uses dtm_principal; 
{$R *.DFM}

procedure TFrm_Imp_4054.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(Fdt_principal.spc_cons_adm_planoempresa.RecordCount);
end;

procedure TFrm_Imp_4054.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FEmpresa;
end;

end.
