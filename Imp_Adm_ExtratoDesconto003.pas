unit Imp_Adm_ExtratoDesconto003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_Adm_ExtratoDesconto003 = class(TFrm_Imp_Basico)
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTI, wTV, wTP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha, FSitDesconto : String ;
  end;

var
  Frm_Imp_Adm_ExtratoDesconto003: TFrm_Imp_Adm_ExtratoDesconto003;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTP := 0 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTV := wTV + Fdt_principal2.spc_cons_adm_descontofolha05.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTP := wTP + Fdt_principal2.spc_cons_adm_descontofolha05.FieldByName('vlpago_flh').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoInicial;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV-wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto003.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRLabel31.Caption:= '';
  QRLabel32.Caption:= '';
  if FSitDesconto <> '' then
     begin
     QRLabel31.Caption:= 'Situa��o(�es) dos Descontos';
     QRLabel32.Caption:= FSitDesconto;
     end;
end;

end.
