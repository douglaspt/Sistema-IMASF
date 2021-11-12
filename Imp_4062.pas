unit Imp_4062;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4062 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup2: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal : String ;

  end;

var
  Frm_Imp_4062: TFrm_Imp_4062;

implementation
uses dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4062.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4062.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

end.
