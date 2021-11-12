unit Imp_Adm_ExtratoDesconto004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_Adm_ExtratoDesconto004 = class(TFrm_Imp_Basico)
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    QRSubDetail1: TQRSubDetail;
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
    QRLabel24: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
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
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha, FNomeBen, FTarifas, FSitDesconto : String ;
  end;

var
  Frm_Imp_Adm_ExtratoDesconto004: TFrm_Imp_Adm_ExtratoDesconto004;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Adm_ExtratoDesconto004.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTP := 0 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
  if Fdt_principal2.spc_cons_adm_descontofolha04.FieldByName('Cod_sitdesconto').AsInteger < 900 then
    wTV := wTV + Fdt_principal2.spc_cons_adm_descontofolha04.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTP := wTP + Fdt_principal2.spc_cons_adm_descontofolha04.FieldByName('vlpago_flh').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoInicial;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV-wTP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := Fdt_principal2.spc_cons_adm_descontofolha04.FieldByName('parcelan_par').asstring+
    ' de '+Fdt_principal2.spc_cons_adm_descontofolha04.FieldByName('nparcela_par').asstring;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto004.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  Fdt_principal2.spc_cons_adm_descontofolha04.First;
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
