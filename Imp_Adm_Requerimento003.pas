unit Imp_Adm_Requerimento003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_Adm_Requerimento003 = class(TFrm_Imp_Basico)
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText2: TQRDBText;
    QRImage1: TQRImage;
    QRLabel36: TQRLabel;
    QRLabel43: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Adm_Requerimento003: TFrm_Imp_Adm_Requerimento003;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data;

{$R *.DFM}

procedure TFrm_Imp_Adm_Requerimento003.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  QRImage1.Picture.LoadFromFile('C:\Sistemas\reports\LOGO_IMASF.bmp');
end;

procedure TFrm_Imp_Adm_Requerimento003.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('processo_ben').AsString;
end;

end.
