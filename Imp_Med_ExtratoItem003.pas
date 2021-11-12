unit Imp_Med_ExtratoItem003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoItem003 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
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
    QRLabel26: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel23: TQRLabel;
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
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
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
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVBN, wTVBA, wTVP, wTVBP : double ;
    wNomeAnt : string;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FDataInicial, FDataFinal, FIdadeInicial,
    FIdadeFinal, FPlano, FEmpresa, Fun_Beneficiario, FCod_ItemServicoInicial,
    FCod_ItemServicoFinal, FDescricaoISI, FDescricaoISF : String ;
  end;

var
  Frm_Imp_Med_ExtratoItem003: TFrm_Imp_Med_ExtratoItem003;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoItem003.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVBN := 0 ;
  wTVBA := 0 ;
  wTVP := 0 ;
  wTVBP := 0;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_med_extratoitem003.FieldByName('tlitens_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_extratoitem003.FieldByName('tlpago_exc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText1Print(sender: TObject;
  var Value: String);
begin
//  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
  value := FCod_ItemServicoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTVBP) ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value := FDataInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  value := FDataFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  if FDataFinal = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  if Fdt_principal.spc_cons_med_extratoitem003.FieldByName('nome_ben').AsString <> wNomeAnt then
  begin
    if Fdt_principal.spc_cons_med_extratoitem003.FieldByName('titulacartei_ben').AsInteger < 50 then
      wTvBN := wTvBN + 1
    else
      wTvBA := wTvBA + 1 ;
    wTVBP := wTVBP + 1;
  end;  
  wNomeAnt := Fdt_principal.spc_cons_med_extratoitem003.FieldByName('nome_ben').AsString;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel32Print(sender: TObject;
  var Value: String);
begin
  if Fplano = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  value := Fplano ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  value := FEmpresa ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  if FEmpresa = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  with Fdt_principal.spc_cons_med_extratoitem003 do
    value := FormatarCarteirinha(MontarCarteirinha(FieldByName('cod_empresa').AsString,
    FieldByName('cod_plano').AsString, FieldByName('inscricao_ben').AsString,
    FieldByName('titulacartei_ben').AsString ));
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel38Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvBN) ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRLabel36Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wtvBA) ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  value := FCod_ItemServicoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  value := FDescricaoISI ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  value := FDescricaoISF ;
end;

procedure TFrm_Imp_Med_ExtratoItem003.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
