unit Imp_4089;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt, TeEngine, Series, TeeProcs,
  Chart, DBChart, QrTee;

type
  TFrm_Imp_4089 = class(TFrm_Imp_Basico)
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
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRLTlCons: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    Series1: THorizBarSeries;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);




    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);



  

  private
    { Private declarations }
   TLQ : integer ;
   VLTL,VLTL2,VLTL3,VLTL4, VLTL5, VLTL6 : double;
  public
    { Public declarations }
 Mes, Plano, Titulo : String ;

  end;

var

  Frm_Imp_4089: TFrm_Imp_4089;

implementation
uses dtm_principal2, dtm_principal3;
{$R *.DFM}

procedure TFrm_Imp_4089.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Plano;
end;

procedure TFrm_Imp_4089.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := Mes ;
end;

procedure TFrm_Imp_4089.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
 value := inttostr(TLQ);
end;

procedure TFrm_Imp_4089.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TLQ := 0 ;
  VLTL  := 0 ;
  VLTL2 := 0 ;
  VLTL3 := 0 ;
  VLTL4 := 0 ;
  VLTL5 := 0;
  VLTL6 := 0;

end;

procedure TFrm_Imp_4089.QRLTlConsPrint(sender: TObject; var Value: String);
begin
  inherited;
 value := FormatFloat('###,###,##0.00',VLTL);
end;

procedure TFrm_Imp_4089.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FormatFloat('###,###,##0.00',VLTL2);
end;

procedure TFrm_Imp_4089.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FormatFloat('###,###,##0.00',VLTL3);
end;

procedure TFrm_Imp_4089.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FormatFloat('###,###,##0.00',VLTL4);
end;


procedure TFrm_Imp_4089.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
TLQ := TLQ + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('qtde_dr1').AsInteger;
end;

procedure TFrm_Imp_4089.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
VLTL2 := VLTL / TLQ;
end;

procedure TFrm_Imp_4089.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
VLTL := VLTL + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('vlcontribuicao_dr1').AsFloat;
end;

procedure TFrm_Imp_4089.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
VLTL3 := VLTL3 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('vlpatrona_dr1').AsFloat;
end;

procedure TFrm_Imp_4089.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
VLTL4 := VLTL3 /  TLQ;
end;



procedure TFrm_Imp_4089.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',VLTL5)
end;

procedure TFrm_Imp_4089.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
VLTL5 := VLTL5 + fdt_principal3.spc_cons_adm_benefiporfaixa.FieldByName('vltotal').AsFloat;
end;

procedure TFrm_Imp_4089.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
value := FormatFloat('###,###,##0.00',VLTL6);
end;

procedure TFrm_Imp_4089.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
 VLTL6 := VLTL5 / TLQ;
end;

procedure TFrm_Imp_4089.QRLabel1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := Titulo;
end;

end.
