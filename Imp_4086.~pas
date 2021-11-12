unit Imp_4086;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4086 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRLTlCons: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape1: TQRShape;
    QRLabel26: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  TLQ,TL,TL2,TL3,TL4,TL5,TL6,TL7,TL8 : integer ;
  public
    { Public declarations }
 Mes, Plano : String ;

  end;

var
  Frm_Imp_4086: TFrm_Imp_4086;

implementation
uses dtm_principal2, dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4086.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Plano;
end;

procedure TFrm_Imp_4086.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := Mes ;
end;

procedure TFrm_Imp_4086.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TLQ);
end;

procedure TFrm_Imp_4086.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TLQ := 0 ;
  TL  := 0 ;
  TL2 := 0 ;
  TL3 := 0 ;
  TL4 := 0 ;
  TL5 := 0 ;
  TL6 := 0 ;
  TL7 := 0 ;
  TL8 := 0 ;
end;

procedure TFrm_Imp_4086.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
TLQ := TLQ + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('tlfxetariaat').AsInteger;
end;

procedure TFrm_Imp_4086.QRLTlConsPrint(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL);
end;

procedure TFrm_Imp_4086.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL2);
end;

procedure TFrm_Imp_4086.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL3);
end;

procedure TFrm_Imp_4086.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL4);
end;

procedure TFrm_Imp_4086.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL5);
end;

procedure TFrm_Imp_4086.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL6);
end;

procedure TFrm_Imp_4086.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL7);
end;

procedure TFrm_Imp_4086.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TL8);
end;

procedure TFrm_Imp_4086.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
TL := TL + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at0a500s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
TL2 := TL2 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at500a750s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
TL3 := TL3 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at750a1000s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
TL4 := TL4 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at1000a1250s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
TL5 := TL5 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at1250a1500s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
TL6 := TL6 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at1500a1750s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
TL7 := TL7 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at1750a2000s_dr1').AsInteger;
end;

procedure TFrm_Imp_4086.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
TL8 := TL8 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('at2000eacimas_dr1').AsInteger;
end;

end.

