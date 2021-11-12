unit Imp_4065;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_4065 = class(TFrm_Imp_Basico)
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
    QRLabel17: TQRLabel;
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
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
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
    procedure QRDBText7Print(sender: TObject; var Value: String);
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
  private
    { Private declarations }
    wTI, wTV : double ;
  public
    { Public declarations }
    FCod_Desconto, FEmpresaFolha, Cod_Usuario, N_Usuario : String ;

  end;

var
  Frm_Imp_4065: TFrm_Imp_4065;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4065.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_4065.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
end;

procedure TFrm_Imp_4065.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTV := wTV + Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_4065.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_4065.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_4065.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FCod_Desconto;
end;

procedure TFrm_Imp_4065.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_4065.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '0' then
    value := ''
  else
    value := Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('parcelan_par').asstring+
  ' de '+Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('nparcela_par').asstring;
end;

procedure TFrm_Imp_4065.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  if FCod_Desconto = '' then
    value := '' ;
end;

procedure TFrm_Imp_4065.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
    value := '' ;
end;

procedure TFrm_Imp_4065.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
    value := '' ;
end;

procedure TFrm_Imp_4065.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if N_Usuario = '' then
  value := ''
  else
  value := Cod_Usuario;
end;

procedure TFrm_Imp_4065.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := N_Usuario;
end;

procedure TFrm_Imp_4065.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  if FEmpresaFolha = '' then
  value := ''; 
end;

end.
