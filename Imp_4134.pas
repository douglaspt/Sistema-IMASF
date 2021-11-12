unit Imp_4134;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4134 = class(TFrm_Imp_Basico)
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FTL1, FTL2, FTLDIF, Fdiferenca : Double;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FCarteira, FNome, FPlano1, FPlano2 : String ;
    FDiaInicial : Integer;

  end;

var
  Frm_Imp_4134: TFrm_Imp_4134;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_4134.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FPeriodoInicial; 
end;

procedure TFrm_Imp_4134.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4134.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCarteira+'     '+FNome;
end;

procedure TFrm_Imp_4134.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTL1 := FTL1 + fdt_principal5.spc_cons_adm_Simulacontrib.fieldByName('valor1').AsFloat;
  FTL2 := FTL2 + fdt_principal5.spc_cons_adm_Simulacontrib.fieldByName('valor2').AsFloat;
end;

procedure TFrm_Imp_4134.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00', FTL1);
end;

procedure TFrm_Imp_4134.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00', FTL2);
end;

procedure TFrm_Imp_4134.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  if FTLDIF < 0 then
    value := FormatFloat('###,###,##0.00', FTLDIF*(-1))+ ' ==> Valor à ser devolvido ao beneficiário'
  else
    value := FormatFloat('###,###,##0.00', FTLDIF)+ ' ==> Valor à ser cobrado do beneficiário';
end;

procedure TFrm_Imp_4134.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FPlano1;
end;

procedure TFrm_Imp_4134.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FPlano2;
end;

procedure TFrm_Imp_4134.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPlano2 = '' then
    value := '';
end;

procedure TFrm_Imp_4134.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
    if FPlano1 = '' then
    value := '';
end;

procedure TFrm_Imp_4134.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  FTL1 := 0;
  FTL2 := 0;
  FTLDIF := 0;
  Fdiferenca := 0 ;
end;

procedure TFrm_Imp_4134.QRDBText4Print(sender: TObject; var Value: String);
var
  v1, v2 : double;
begin
  inherited;
  //verifica se é necessario calcular 1a diferenca E(AND) se Fdiferenca = 0 significa que a diferencao ainda nao foi calculada, entao pode ser impressa na 1a linha
  if (FDiaInicial > 1) and (Fdiferenca = 0) then begin
    v1 := fdt_principal5.spc_cons_adm_Simulacontrib.fieldByName('valor1').AsFloat;
    v2 := fdt_principal5.spc_cons_adm_Simulacontrib.fieldByName('valor2').AsFloat;
    Fdiferenca := ((v1 / 30) * FDiaInicial) + ((v2 / 30) * (30 - FDiaInicial));
    value := FormatFloat('###,###,##0.00', Fdiferenca - v1) + ' ==> Diferença de '+inttostr(FDiaInicial)+' dias no Plano1';
    FTLDIF := FTLDIF + (Fdiferenca - v1);
  end else
    FTLDIF := FTLDIF + fdt_principal5.spc_cons_adm_Simulacontrib.fieldByName('diferenca').AsFloat;
end;

end.
