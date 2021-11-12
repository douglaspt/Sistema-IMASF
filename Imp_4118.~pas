unit Imp_4118;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4118 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand2: TQRBand;
    QRGroup2: TQRGroup;
    QRDBText6: TQRDBText;
    qrb_plano: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
    Ftotal : integer;
    FtlBasico, FtlIntermed, FtlEspecial : Integer ;
  public
    { Public declarations }
  end;

var
  Frm_Imp_4118: TFrm_Imp_4118;

implementation
uses dtm_principal5, Fun_Beneficiario, Fun_Db, Fun_Data;
{$R *.DFM}

procedure TFrm_Imp_4118.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(Ftotal);
  case fdt_principal5.spc_cons_adm_totalBenefiAtivo.fieldbyname('cod_plano').AsInteger of
    1 : FtlBasico   := FtlBasico   + Ftotal;
    2 : FtlIntermed := FtlIntermed + Ftotal;
    3 : FtlEspecial := FtlEspecial + Ftotal;
  end;

end;

procedure TFrm_Imp_4118.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Ftotal := Ftotal + fdt_principal5.spc_cons_adm_totalBenefiAtivo.fieldbyname('qtde_tba').AsInteger;
end;

procedure TFrm_Imp_4118.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Ftotal := 0;
end;

procedure TFrm_Imp_4118.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FtlBasico   := 0 ;
  FtlIntermed := 0 ;
  FtlEspecial := 0 ;
end;

procedure TFrm_Imp_4118.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
    value := IntToStr(FtlBasico);
end;

procedure TFrm_Imp_4118.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
    value := IntToStr(FtlIntermed);
end;

procedure TFrm_Imp_4118.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
    value := IntToStr(FtlEspecial);
end;

end.


