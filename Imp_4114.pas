unit Imp_4114;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4114 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    VlTlInf, VlTlPag : double;
  public
    { Public declarations }
  Carteira, NomeBen : String ;

  end;

var
  Frm_Imp_4114: TFrm_Imp_4114;

implementation
uses dtm_principal3, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4114.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  VlTlInf := 0 ;
  VlTlPag := 0 ;
end;

procedure TFrm_Imp_4114.QRLabel3Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',VlTlInf);
end;

procedure TFrm_Imp_4114.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',VlTlPag);
end;

procedure TFrm_Imp_4114.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  VlTlInf := VlTlInf + fdt_principal4.spc_cons_adm_extratoreembolso.FieldByName('vlinformado_itc').AsFloat;
end;

procedure TFrm_Imp_4114.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  VlTlPag := VlTlPag + fdt_principal4.spc_cons_adm_extratoreembolso.FieldByName('vlpagar_itc').AsFloat;
end;

end.
