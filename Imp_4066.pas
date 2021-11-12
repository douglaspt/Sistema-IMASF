unit Imp_4066;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4066 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 MesReferencia1, Empresa : String ;

  end;

var
  Frm_Imp_4066: TFrm_Imp_4066;

implementation
uses dtm_principal2, dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4066.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := MesReferencia1 ;

end;
procedure TFrm_Imp_4066.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Empresa ;
end;

procedure TFrm_Imp_4066.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal3.spc_cons_adm_contribuicaonaogerada.recordcount);

end;

end.

