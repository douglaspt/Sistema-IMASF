unit Imp_4117;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4117 = class(TForm)
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
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRExprTCons: TQRExpr;
    QRLTlCons: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel7: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRDBT_DtAtendimentoPrint(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTS : integer ;
    wTVI, wTVP : double ;
  public
    { Public declarations }
  end;

var
  Frm_Imp_4117: TFrm_Imp_4117;

implementation
Uses dtm_principal, Fun_Data, Fun_DB, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4117.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTs := 0 ;
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_4117.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(wTS) ;
end;

procedure TFrm_Imp_4117.QRDBT_DtAtendimentoPrint(sender: TObject;
  var Value: String);
begin
  Inc(wTS);
end;

procedure TFrm_Imp_4117.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal4.spc_cons_med_resumoconta02.FieldByName('VlInformado').AsFloat;
end;                                                   

procedure TFrm_Imp_4117.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal4.spc_cons_med_resumoconta02.FieldByName('VlPagar').AsFloat;
end;

procedure TFrm_Imp_4117.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvI) ;
end;

procedure TFrm_Imp_4117.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_4117.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal4.spc_cons_med_resumoconta02.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal4.spc_cons_med_resumoconta02.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_4117.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
