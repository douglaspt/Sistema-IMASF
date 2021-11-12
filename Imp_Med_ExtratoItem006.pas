unit Imp_Med_ExtratoItem006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoItem006 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
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
    QRLabel8: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel5: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
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
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVP : double ;
  public
    { Public declarations }
    FItemInicial, FItemFinal, FPeriodoInicial, FPeriodoFinal, FDataInicial, FDataFinal, FIdadeInicial,
    FIdadeFinal, FPlano, FEmpresa, FSexo, FTipoDependente, Fun_Beneficiario, FConveniado : String ;
  end;

var
  Frm_Imp_Med_ExtratoItem006: TFrm_Imp_Med_ExtratoItem006;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoItem006.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal2.spc_cons_med_extratoitem006.FieldByName('tlitens_exc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal2.spc_cons_med_extratoitem006.FieldByName('tlpago_exc').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value := FDataInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  value := FDataFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  if FDataInicial = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  if FDataFinal = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  if FIdadeInicial = '' then value := ''
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  value := FIdadeFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel32Print(sender: TObject;
  var Value: String);
begin
  if Fplano = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  value := Fplano ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  value := FEmpresa ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  if FEmpresa = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRDBText3Print(sender: TObject;
  var Value: String);
begin
//  with Fdt_principal2.spc_cons_med_extratoitem006 do
//    value := FormatarCarteirinha(MontarCarteirinha(FieldByName('cod_empresa').AsString,
//    FieldByName('cod_plano').AsString, FieldByName('inscricao_ben').AsString,
//    FieldByName('titulacartei_ben').AsString ));
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel36Print(sender: TObject;
  var Value: String);
begin
  value := FTipoDependente ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel38Print(sender: TObject;
  var Value: String);
begin
  value := FSexo ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  if Fsexo = '' then value := '' ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  if FTipoDependente = '' then value := '';
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  if FItemInicial = '' then value := 'Todos os Itens de Serviço / Procedimento' else value := FItemInicial ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  if FItemFinal = '' then value := 'Todos os Itens de Serviço / Procedimento' else value := FItemFinal ;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Med_ExtratoItem006.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FConveniado;
end;

end.
