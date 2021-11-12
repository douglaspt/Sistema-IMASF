unit Imp_4096;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4096 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 MesReferencia1, Empresa : String ;

  end;

var
  Frm_Imp_4096: TFrm_Imp_4096;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4096.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := MesReferencia1 ;

end;
procedure TFrm_Imp_4096.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Empresa ;
end;

procedure TFrm_Imp_4096.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_descontosMatricuraErrada.RecordCount);
end;

end.

