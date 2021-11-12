unit Imp_4068;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4068 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    lbl_empresa: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    lbl_sitdesconto: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal, FEmp, Fsit : String ;

  end;

var
  Frm_Imp_4068: TFrm_Imp_4068;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4068.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4068.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4068.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FEmp;
end;

procedure TFrm_Imp_4068.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Fsit;
end;

end.
