unit Imp_4084;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4084 = class(TFrm_Imp_Basico)
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
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 MesReferencia1, MesReferencia2, Empresa  : String ;

  end;

var
  Frm_Imp_4084: TFrm_Imp_4084;

implementation
uses dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4084.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := MesReferencia2 ;

end;
procedure TFrm_Imp_4084.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Empresa;
end;

procedure TFrm_Imp_4084.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal3.spc_cons_adm_mudarplano.RecordCount);
end;

end.

