unit Imp_4094;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4094 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    lbl_NPI: TQRLabel;
    lbl_NPF: TQRLabel;
    lbl_PI: TQRLabel;
    lbl_PF: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    procedure lbl_PIPrint(sender: TObject; var Value: String);
    procedure lbl_PFPrint(sender: TObject; var Value: String);
    procedure lbl_NPIPrint(sender: TObject; var Value: String);
    procedure lbl_NPFPrint(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal : String ;

  end;

var
  Frm_Imp_4094: TFrm_Imp_4094;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4094.lbl_PIPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4094.lbl_PFPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4094.lbl_NPIPrint(sender: TObject; var Value: String);
begin
  inherited;
 if FPeriodoInicial = '' then
 value := '';
end;

procedure TFrm_Imp_4094.lbl_NPFPrint(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoFinal = '' then
  value := '';
end;

procedure TFrm_Imp_4094.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_histsalarios.recordcount);
end;

end.
