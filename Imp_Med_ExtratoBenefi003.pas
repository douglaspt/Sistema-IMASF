unit Imp_Med_ExtratoBenefi003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoBenefi003 = class(TForm)
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
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTVI, wTVP : double ;
    imprime : boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_Med_ExtratoBenefi003: TFrm_Imp_Med_ExtratoBenefi003;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoBenefi003.QRDBText10Print(sender: TObject;
  var Value: String);
begin
wTVI := wTVI + Fdt_principal.spc_cons_med_extratobenefi003.FieldByName('Qtde_itc').AsInteger;  
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_extratobenefi003.FieldByName('VlPagar_itc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRDBText1Print(sender: TObject;
  var Value: String);
begin
with Fdt_principal.spc_cons_med_extratobenefi003 do
  value := FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.FormCreate(Sender: TObject);
begin
 imprime := false ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi003.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
  PrintBand := imprime ;
  imprime := true ;
end;

end.
