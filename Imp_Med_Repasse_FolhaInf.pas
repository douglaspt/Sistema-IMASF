unit Imp_Med_Repasse_FolhaInf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_Repasse_FolhaInf = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage2: TQRImage;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape1: TQRShape;
    QRLabel22: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Med_Repasse_FolhaInf: TFrm_Imp_Med_Repasse_FolhaInf;

implementation
Uses dtm_principal, Fun_Data, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_Repasse_FolhaInf.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_Repasse_FolhaInf.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
