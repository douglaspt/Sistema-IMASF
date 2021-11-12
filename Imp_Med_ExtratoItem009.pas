unit Imp_Med_ExtratoItem009;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoItem009 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
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
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRL_texto1: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRL_texto1Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVB, wTVP,
    wTVIp, wTVBp, wTVPp, wTP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FDataInicial, FDataFinal, FTexto1 : String ;
  end;

var
  Frm_Imp_Med_ExtratoItem009: TFrm_Imp_Med_ExtratoItem009;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal2,
Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoItem009.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVB := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI  := wTVI  + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlitens_exc').AsInteger;
  wTVIp := wTVIp + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlitens_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlpago_exc').AsFloat;
  wTVPp := wTVPp + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlpago_exc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  wTVB := wTVB + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlpacientes_exc').AsInteger;
  wTVBp := wTVBp + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlpacientes_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvB) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value := FDataInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  value := FDataFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  if FDataFinal = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  wTVIp := 0 ;
  wTVBp := 0 ;
  wTVPp := 0 ;
  wTP  := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0',wTVIp) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0',wTVBp) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTVPp) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  wTP := wTP + Fdt_principal2.spc_cons_med_extratoitem004.FieldByName('tlgeral_exc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTP)+'%' ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  if wTVIp <> 0 then
    value := FormatFloat('###,###,##0.00',wTVPp/wTVIp) ;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRL_texto1Print(sender: TObject;
  var Value: String);
begin
  value := FTexto1;
end;

procedure TFrm_Imp_Med_ExtratoItem009.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
