unit Imp_4058;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4058 = class(TFrm_Imp_Basico)
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
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal : String ;

  end;

var
  Frm_Imp_4058: TFrm_Imp_4058;

implementation
uses dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4058.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4058.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4058.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := IntToStr(fdt_principal3.spc_cons_txt_afiliados_erros.RecordCount);
end;

end.
