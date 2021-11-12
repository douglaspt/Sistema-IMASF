unit Imp_4140;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt, jpeg;

type
  TFrm_Imp_4140 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel10: TQRLabel;
    QRImage1: TQRImage;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  Frm_Imp_4140: TFrm_Imp_4140;

implementation
uses dtm_principal6, Fun_Data;
{$R *.DFM}

procedure TFrm_Imp_4140.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_Format('dd',Date)+' de '+Data_GetMonthName(strtoint(Data_Format('mm',Date)))+' de '+Data_Format('yyyy',Date);
end;                        

procedure TFrm_Imp_4140.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  value := fdt_principal6.spc_cons_adm_etiquetaprocesso.fieldByName('processo_tmt').AsString+
  ' / '+fdt_principal6.spc_cons_adm_etiquetaprocesso.fieldByName('ano_tmt').AsString;
end;

end.

