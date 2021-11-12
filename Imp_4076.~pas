unit Imp_4076;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4076 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_cod_conveniado: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText9: TQRDBText;
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }
  FPeriodoInicial, FPeriodoFinal, CodItemServ, CodConv, NomeConv, NomeITS  : String ;
  wTI, wTV, wTV2, wTV3, wTV4  : double ;

  end;

var
  Frm_Imp_4076: TFrm_Imp_4076;

implementation
uses dtm_principal3;
{$R *.DFM}


procedure TFrm_Imp_4076.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
 value := CodItemServ;
end;

procedure TFrm_Imp_4076.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  value := CodConv ;
end;

procedure TFrm_Imp_4076.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4076.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4076.QRLTlConsPrint(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_4076.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTV2 := 0 ;
  wTV3 := 0 ;
  wTV4 := 0 ;
end;

procedure TFrm_Imp_4076.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
  wTV := wTV + Fdt_principal3.spc_cons_med_tlMaterialProcPrincipal.FieldByName('tlMaterial').AsFloat;
end;

procedure TFrm_Imp_4076.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_4076.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
wTV2 := wTV2 + Fdt_principal3.spc_cons_med_tlMaterialProcPrincipal.FieldByName('tlItens').AsFloat;
end;

procedure TFrm_Imp_4076.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV4) ;
end;

procedure TFrm_Imp_4076.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  wTV3 := wTV3 + Fdt_principal3.spc_cons_med_tlMaterialProcPrincipal.FieldByName('tlTotal').AsFloat;
end;

procedure TFrm_Imp_4076.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV3) ;
end;

procedure TFrm_Imp_4076.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
  wTV4 := wTV4 + Fdt_principal3.spc_cons_med_tlMaterialProcPrincipal.FieldByName('tlMedicamento').AsFloat;
end;

procedure TFrm_Imp_4076.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV/wTI) ;

end;

procedure TFrm_Imp_4076.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV4/wTI) ;

end;

procedure TFrm_Imp_4076.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV2/wTI) ;

end;

procedure TFrm_Imp_4076.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV3/wTI) ;
end;

procedure TFrm_Imp_4076.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV2) ;
end;

procedure TFrm_Imp_4076.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
 value := NomeITS;
end;

procedure TFrm_Imp_4076.QRLabel32Print(sender: TObject; var Value: String);
begin
  inherited;
  value := NomeConv ;
end;

end.
