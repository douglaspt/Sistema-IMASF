unit Imp_4095;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4095 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 MesReferencia1, MesReferencia2, Empresa  : String ;

  end;

var
  Frm_Imp_4095: TFrm_Imp_4095;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4095.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := MesReferencia2 ;

end;
procedure TFrm_Imp_4095.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Empresa;
end;

procedure TFrm_Imp_4095.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_BenefiForaDoMesAnterior.RecordCount);
end;

end.


