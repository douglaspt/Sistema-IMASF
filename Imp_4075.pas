unit Imp_4075;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_4075 = class(TFrm_Imp_Basico)
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBT_tipoSegurado: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBT_tipoSeguradoPrint(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTI, wTV, wTB, wDB : double ;
  public
    { Public declarations }
    FCod_Desconto, FEmpresaFolha, Cod_Usuario, N_Usuario : String ;
    destacado : boolean ;
  end;

var
  Frm_Imp_4075: TFrm_Imp_4075;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4075.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
end;

procedure TFrm_Imp_4075.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
  wDB := WDB + 1 ;
  wTV := wTV + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vldesconto_adf').AsFloat;
  wTB := wTB + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_4075.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_4075.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_4075.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FCod_Desconto;
end;

procedure TFrm_Imp_4075.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_4075.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := str_inttostr((Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asinteger-
    Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').asinteger));
end;

procedure TFrm_Imp_4075.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  if FCod_Desconto = '' then
    value := '' ;
end;

procedure TFrm_Imp_4075.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
    value := '' ;
end;

procedure TFrm_Imp_4075.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
    value := '' ;
end;

procedure TFrm_Imp_4075.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
  value := ''
  else
  value := Cod_Usuario;
end;

procedure TFrm_Imp_4075.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := N_Usuario;
end;

procedure TFrm_Imp_4075.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  if FEmpresaFolha = '' then
  value := ''; 
end;

procedure TFrm_Imp_4075.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asInteger = 0 then
    value := '0,0000'
  else
    value := FormatFloat('###0.0000',
    Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('COLUMN29').AsFloat/
    Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asInteger);
end;

procedure TFrm_Imp_4075.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asstring;
end;

procedure TFrm_Imp_4075.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  wTB := 0 ;
  wDB := 0 ;
end;

procedure TFrm_Imp_4075.QRDBT_tipoSeguradoPrint(sender: TObject;
  var Value: String);
begin
  inherited;
//  value := FormatFloat('########0',wDB) ;
  if  value = 'Não Segurado do IMASF' then
    QRDBT_tipoSegurado.Font.Color := clTeal
  else
    QRDBT_tipoSegurado.Font.Color := clNavy ;
end;

procedure TFrm_Imp_4075.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
    value := FormatFloat('########0',wDB) ;

end;

procedure TFrm_Imp_4075.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
   value := FormatFloat('###,###,##0.00',wTB) ;
end;

procedure TFrm_Imp_4075.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := wDb <> 1 ;
end;

procedure TFrm_Imp_4075.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if (Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asinteger > 0)
  and (Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asinteger-
  Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').asinteger = 0)
  and (destacado) then
    QRSubDetail1.Color := clSilver
  else
    QRSubDetail1.Color := clWhite;
end;

end.
