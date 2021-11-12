unit Imp_4128;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_4128 = class(TFrm_Imp_Basico)
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
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
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand4: TQRBand;
    lbl_tlItemGlosa: TQRLabel;
    qre_count: TQRExpr;
    QRLabel29: TQRLabel;
    lbl_subtotal: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTI, wTV, wTP, wVlT, wVlTPg, wVlTPar, wVlJM : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha, FTarifas, FSitDesconto : String ;
  end;

var
  Frm_Imp_4128: TFrm_Imp_4128;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal, Rel_ExtratoDesconto001;
{$R *.DFM}

procedure TFrm_Imp_4128.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_4128.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTP := 0 ;
  wVlT := 0;
end;

procedure TFrm_Imp_4128.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_4128.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_4128.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTP) ;
end;

procedure TFrm_Imp_4128.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoInicial;
end;

procedure TFrm_Imp_4128.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal;
end;

procedure TFrm_Imp_4128.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_4128.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').asstring+
  ' de '+Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asstring;
end;

procedure TFrm_Imp_4128.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  wVlT := 0;
  wVlTPg := 0;
  wVlTPar := 0;
  wVlJM := 0;
end;

procedure TFrm_Imp_4128.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wVlT) ;
end;

procedure TFrm_Imp_4128.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wVlTPg) ;
end;

procedure TFrm_Imp_4128.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  wVlJM := wVlJM + Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vljuros_flh').AsFloat +
  Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vlmulta_flh').AsFloat;
  wTP := wTP + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vlpago_flh').AsFloat;
  wTV := wTV + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vldesconto_adf').AsFloat;
  wVlT := wVlT + Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vldesconto_adf').AsFloat;
  wVlTPar := wVlTPar + Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vlparcelado').AsFloat;
  wVlTPg := wVlTPg + Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vlpago_flh').AsFloat;
   PrintBand := not Frm_Rel_ExtratoDesconto001.ckb_mostrarIten.Checked;
end;

procedure TFrm_Imp_4128.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : integer ;
begin
  inherited;
  if Frm_Rel_ExtratoDesconto001.ckb_mostrarIten.Checked then begin
    for i := 1 to ComponentCount - 1 do begin
      if (Components[i] is TQRLabel) then
        if (Components[i] as TQRLabel).Tag = 1 then
        (Components[i] as TQRLabel).Caption := '' ;
    end;
    qre_count.Enabled := false;
  end;
end;

procedure TFrm_Imp_4128.QRDBText1Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vljuros_flh').AsFloat +
  Fdt_principal.spc_cons_adm_descontofolha02.FielDByName('vlmulta_flh').AsFloat);
end;

procedure TFrm_Imp_4128.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wVlJM) ;
end;

procedure TFrm_Imp_4128.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRLabel10.Caption:= '';
  QRLabel30.Caption:= '';
  QRLabel31.Caption:= '';
  QRLabel22.Caption:= '';
  if FTarifas <> '' then
     begin
     QRLabel10.Caption:= 'Tarifa(s)';
     QRLabel30.Caption:= FTarifas;
     end;
  if FSitDesconto <> '' then
     begin
     QRLabel31.Caption:= 'Situa��o(�es) dos Descontos';
     QRLabel22.Caption:= FSitDesconto;
     end;
end;

end.
