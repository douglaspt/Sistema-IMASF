unit Imp_4091;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4091 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel48Print(sender: TObject; var Value: String);
    procedure QRLabel50Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, WTLInf, WTLPago : Double;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FDataInicial, FDataFinal, FIdadeInicial,
    FIdadeFinal, FPlano, FEmpresa, Fun_Beneficiario, FCod_ItemServicoInicial,
    FCod_ItemServicoFinal, FDescricaoISI, FDescricaoISF, FSexo, FTipoDependente  : String ;
  end;

var
  Frm_Imp_4091: TFrm_Imp_4091;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR, Fun_DB, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4091.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4091.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_4091.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value := FDataInicial ;
end;

procedure TFrm_Imp_4091.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  value := FDataFinal ;
end;

procedure TFrm_Imp_4091.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_4091.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_4091.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  if FDataFinal = '' then value := '' ;
end;

procedure TFrm_Imp_4091.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_4091.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_4091.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_4091.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeInicial ;
end;

procedure TFrm_Imp_4091.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeFinal ;
end;

procedure TFrm_Imp_4091.QRLabel32Print(sender: TObject;
  var Value: String);
begin
  if Fplano = '' then value := '' ;
end;

procedure TFrm_Imp_4091.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  value := Fplano ;
end;

procedure TFrm_Imp_4091.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  value := FEmpresa ;
end;

procedure TFrm_Imp_4091.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  if FEmpresa = '' then value := '' ;
end;

procedure TFrm_Imp_4091.QRLabel2Print(sender: TObject; var Value: String);
begin
 value := '';
end;

procedure TFrm_Imp_4091.QRLabel13Print(sender: TObject; var Value: String);
begin
  value := FCod_ItemServicoInicial ;
end;

procedure TFrm_Imp_4091.QRLabel14Print(sender: TObject; var Value: String);
begin
  value := FDescricaoISI ;
end;

procedure TFrm_Imp_4091.QRLabel23Print(sender: TObject; var Value: String);
begin
  value := FCod_ItemServicoFinal ;
end;

procedure TFrm_Imp_4091.QRLabel25Print(sender: TObject; var Value: String);
begin
  value := FDescricaoISF ;
end;

procedure TFrm_Imp_4091.QRLabel26Print(sender: TObject; var Value: String);
begin
  if FTipoDependente = '' then value := '';
end;

procedure TFrm_Imp_4091.QRLabel27Print(sender: TObject; var Value: String);
begin
  value :=  FTipoDependente;
end;

procedure TFrm_Imp_4091.QRLabel36Print(sender: TObject; var Value: String);
begin
  if FSexo = '' then value := '';
end;

procedure TFrm_Imp_4091.QRLabel37Print(sender: TObject; var Value: String);
begin
  value := FSexo;
end;

procedure TFrm_Imp_4091.QRDBText10Print(sender: TObject;
  var Value: String);
begin
wTVI := wTVI + Fdt_principal4.spc_cons_med_totalItenservico.FieldByName('total').AsInteger
end;

procedure TFrm_Imp_4091.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 wTVI := 0;
end;

procedure TFrm_Imp_4091.QRLabel39Print(sender: TObject; var Value: String);
begin
 value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_4091.QRLabel16Print(sender: TObject; var Value: String);
begin
  value := IntToStr(Fdt_principal4.spc_cons_med_totalItenservico.recordcount);
end;

procedure TFrm_Imp_4091.QRLabel48Print(sender: TObject; var Value: String);
begin
   value := FormatFloat('###,###,##0.00',WTLInf) ;
end;

procedure TFrm_Imp_4091.QRLabel50Print(sender: TObject; var Value: String);
begin
   value := FormatFloat('###,###,##0.00',WTLPago) ;
end;

procedure TFrm_Imp_4091.QRDBText4Print(sender: TObject; var Value: String);
begin
  WTLPago := WTLPago + Fdt_principal4.spc_cons_med_totalItenservico.FieldByName('vlpagar_itc').AsFloat;
end;

procedure TFrm_Imp_4091.QRDBText2Print(sender: TObject; var Value: String);
begin
  WTLInf := WTLInf + Fdt_principal4.spc_cons_med_totalItenservico.FieldByName('vlinformado_itc').AsFloat;
end;

end.
