unit Imp_Med_ExtratoBenefi002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoBenefi002 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    TitleBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    wTVI, wTVP : double ;
    imprime : boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_Med_ExtratoBenefi002: TFrm_Imp_Med_ExtratoBenefi002;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoBenefi002.QRDBText10Print(sender: TObject;
  var Value: String);
begin
wTVI := wTVI + Fdt_principal.spc_cons_med_extratobenefi002.FieldByName('Qtde_itc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_extratobenefi002.FieldByName('VlPagar_itc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QRDBText1Print(sender: TObject;
  var Value: String);
begin
with Fdt_principal.spc_cons_med_extratobenefi002 do
  value := FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi002.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
end;

end.
