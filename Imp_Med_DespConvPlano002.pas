unit Imp_Med_DespConvPlano002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_DespConvPlano002 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel20: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel21: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel22: TQRLabel;
    QRExpr7: TQRExpr;
    QRShape3: TQRShape;
    QRDBText5: TQRDBText;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel26: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel27: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel28: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel31: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabel32: TQRLabel;
    QRExpr12: TQRExpr;
    QRLabel33: TQRLabel;
    QRShape4: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel37: TQRLabel;
    QRExpr13: TQRExpr;
    QRLabel38: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel39: TQRLabel;
    QRExpr15: TQRExpr;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_Med_DespConvPlano002: TFrm_Imp_Med_DespConvPlano002;

implementation
Uses dtm_principal, Fun_Data, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_DespConvPlano002.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_despconvplano002.FieldByName('tlespecial').AsFloat;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRDBText27Print(sender: TObject;
  var Value: String);
begin
//  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_med_despconvplano.FieldByName('dtreferencia_cta').AsDateTime))+
//  ' de '+
//  IntToStr(Data_Year(Fdt_principal.spc_cons_med_despconvplano.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRDBText6Print(sender: TObject;
  var Value: String);
begin
//  if Fdt_principal.spc_cons_med_despconvplano.FieldByName('tipben').AsInteger = 1 then
//    value := 'Despesas referentes a Plano '+
//    Fdt_principal.spc_cons_med_despconvplano.FieldByName('nome_pla').AsString
//  else
//    value := 'Despesas referentes a Assistidos do Plano '+
//    Fdt_principal.spc_cons_med_despconvplano.FieldByName('nome_pla').AsString;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
end;

procedure TFrm_Imp_Med_DespConvPlano002.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
