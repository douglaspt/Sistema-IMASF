unit Imp_4104;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4104 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRExprTCons: TQRExpr;
    QRLabel34: TQRLabel;
    QRDBText27: TQRDBText;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
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
  Frm_Imp_4104: TFrm_Imp_4104;

implementation
Uses dtm_principal4, Fun_Data, Fun_DB, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4104.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal4.spc_cons_med_erroleituracontamed.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal4.spc_cons_med_erroleituracontamed.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_4104.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
