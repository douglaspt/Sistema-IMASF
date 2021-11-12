unit Imp_4139;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt, jpeg;

type
  TFrm_Imp_4139 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRImage1: TQRImage;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  Frm_Imp_4139: TFrm_Imp_4139;

implementation
uses dtm_principal6, Fun_Data;
{$R *.DFM}

procedure TFrm_Imp_4139.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_Format('dd',Date)+' de '+Data_GetMonthName(strtoint(Data_Format('mm',Date)))+' de '+Data_Format('yyyy',Date);
end;

procedure TFrm_Imp_4139.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  value := fdt_principal6.spc_cons_adm_etiquetaprocesso.fieldByName('processo_tmt').AsString+
  ' / '+fdt_principal6.spc_cons_adm_etiquetaprocesso.fieldByName('ano_tmt').AsString;
end;

end.

