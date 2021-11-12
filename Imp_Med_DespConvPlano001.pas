unit Imp_Med_DespConvPlano001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_DespConvPlano001 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRLTlCons: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel5: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVP, wTVI : double ;
  public
    { Public declarations }
  end;

var
  Frm_Imp_Med_DespConvPlano001: TFrm_Imp_Med_DespConvPlano001;

implementation
Uses dtm_principal, Fun_Data, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_DespConvPlano001.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVP := 0 ;
  wTVI := 0;
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_despconvplano001.FieldByName('vlpagar_itc').AsFloat;
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_med_despconvplano001.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal.spc_cons_med_despconvplano001.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRDBText6Print(sender: TObject;
  var Value: String);
begin
{  if Fdt_principal.spc_cons_med_despconvplano001.FieldByName('tipben').AsInteger = 1 then
    value := 'Despesas referentes a Plano '+
    Fdt_principal.spc_cons_med_despconvplano001.FieldByName('nome_pla').AsString
  else
    value := 'Despesas referentes a Assistidos do Plano '+
    Fdt_principal.spc_cons_med_despconvplano001.FieldByName('nome_pla').AsString;   }
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRDBText3Print(sender: TObject;
  var Value: String);
begin
    wTVI := wTVI + Fdt_principal.spc_cons_med_despconvplano001.FieldByName('vlinformado_itc').AsFloat;
end;

procedure TFrm_Imp_Med_DespConvPlano001.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvI) ;
end;

end.
