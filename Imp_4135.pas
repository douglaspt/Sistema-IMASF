unit Imp_4135;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4135 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup2: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBText16: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal : String ;

  end;

var
  Frm_Imp_4135: TFrm_Imp_4135;

implementation
uses dtm_principal3, dtm_principal5;
{$R *.DFM}

procedure TFrm_Imp_4135.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRMemo1.Lines.Add(fdt_principal5.spc_cons_med_autorizainternacao03.FieldByName('resumoclinico_ain').AsString);
end;

procedure TFrm_Imp_4135.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  QRMemo1.Lines.Clear;
end;

end.
