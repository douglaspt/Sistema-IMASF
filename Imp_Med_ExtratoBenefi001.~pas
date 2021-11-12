unit Imp_Med_ExtratoBenefi001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoBenefi001 = class(TForm)
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
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_Med_ExtratoBenefi001: TFrm_Imp_Med_ExtratoBenefi001;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR, Fun_DB;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoBenefi001.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_med_extratobenefi001.FieldByName('Qtde').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_med_extratobenefi001.FieldByName('VlPago').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRDBText1Print(sender: TObject;
  var Value: String);
begin
with Fdt_principal.spc_cons_med_extratobenefi001 do
  value := FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi001.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

end.
