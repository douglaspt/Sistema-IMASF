unit Imp_Adm_DependRenovacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_DependRenovacao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBT_DtAtendimento: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FData, FPeriodo : String ;
  end;

var
  Frm_Imp_Adm_DependRenovacao: TFrm_Imp_Adm_DependRenovacao;

implementation
Uses dtm_principal, Fun_Data, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Adm_DependRenovacao.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  value := FData;
end;

procedure TFrm_Imp_Adm_DependRenovacao.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodo ;
end;

procedure TFrm_Imp_Adm_DependRenovacao.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Adm_DependRenovacao.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  value := inttostr(Fdt_principal.spc_cons_adm_dependrenovacao.recordCount);
end;

end.
