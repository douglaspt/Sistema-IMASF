unit Imp_4098;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4098 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel19: TQRLabel;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;                       
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    procedure QRLabel16Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_Imp_4098: TFrm_Imp_4098;

implementation
uses dtm_principal3, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4098.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := fdt_principal4.spc_cons_adm_ItemPedidoCompra.fieldByName('justificativa_pcs').asstring;
end;

end.
