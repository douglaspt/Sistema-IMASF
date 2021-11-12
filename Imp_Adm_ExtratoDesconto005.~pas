unit Imp_Adm_ExtratoDesconto005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_Adm_ExtratoDesconto005 = class(TFrm_Imp_Basico)
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
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
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
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTI, wTV, wTP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha, FTarifas, FSitDesconto : String ;
  end;

var
  Frm_Imp_Adm_ExtratoDesconto005: TFrm_Imp_Adm_ExtratoDesconto005;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTP := 0 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTV := wTV + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTP := wTP + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vlpago_flh').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoInicial;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV-wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').asstring+
  ' de '+Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asstring;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto005.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRLabel29.Caption:= '';
  QRLabel30.Caption:= '';
  QRLabel31.Caption:= '';
  QRLabel32.Caption:= '';
  if FTarifas <> '' then
     begin
     QRLabel29.Caption:= 'Cód.Descontos';
     QRLabel30.Caption:= FTarifas;
     end;
  if FSitDesconto <> '' then
     begin
     QRLabel31.Caption:= 'Situação(ões) dos Descontos';
     QRLabel32.Caption:= FSitDesconto;
     end;
end;

end.
