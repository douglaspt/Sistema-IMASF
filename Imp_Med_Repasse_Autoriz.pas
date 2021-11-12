unit Imp_Med_Repasse_Autoriz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_Repasse_Autoriz = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRMemo1: TQRMemo;
    QRBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1EndPage(Sender: TCustomQuickRep);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
      alteraTop : boolean ;
      vlPagar, FVLTLPagar : double;
  public
    { Public declarations }
    FChefeSM, FChefeDA, FCargoSM, FCargoDA, FSetorSM, FSetorDA : String;
  end;

var
  Frm_Imp_Med_Repasse_Autoriz: TFrm_Imp_Med_Repasse_Autoriz;

implementation
Uses dtm_principal, Fun_Data, Fun_Str, Fun_DB, dtm_principal6, Dlg_Mensagem;
{$R *.DFM}

procedure TFrm_Imp_Med_Repasse_Autoriz.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  value := 'São Bernardo do Campo, '+
  FormatDateTime('dd/mm/yyyy',date);
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  value := copy(value,1,length(value)-1)+'-'+copy(value,length(value),1);
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.FormCreate(Sender: TObject);
begin
    alteraTop := true ;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QuickRep1EndPage(
  Sender: TCustomQuickRep);
begin
  alteraTop := false ;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  value := FChefeSM;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  Value := FChefeDA;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  value := FCargoSM;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  value := FCargoDA;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  FVLTLPagar := 0;
  PrintBand := false;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Fcod_Dotacao : String;
begin
  PrintBand := false;
  Fcod_Dotacao := fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('dotacao_cvv').AsString;
  vlPagar := vlPagar +  StrToFloat(Str_removeChar(Str_removeChar(FormatFloat('###,###,##0.00',
  fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpagar_itc').AsFloat),'-'),'.'));
  FVLTLPagar := FVLTLPagar + fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpagar_itc').AsFloat;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRMemo1.Lines.Clear;
  QRMemo1.Lines.Add('                      Autorizo o pagamento para '+
  fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('razao_con').AsString+
  ' com vencimento para o dia '+fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('dtvencimento_cta').AsString+
  ' nos termos do convênio, na(s) seguinte(s) dotação(ões):');
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  if (FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat-0.05) <= FormatFloat('###,###,##0.00',FVLTLPagar)) and
  (FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat+0.05) >= FormatFloat('###,###,##0.00',FVLTLPagar)) then
    value := FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat)
  else
    value := FormatFloat('###,###,##0.00',FVLTLPagar);
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  if FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat) <> FormatFloat('###,###,##0.00',vlPagar) then

  if not (FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat-0.05) <= FormatFloat('###,###,##0.00',vlPagar)) and
  (FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat+0.05) >= FormatFloat('###,###,##0.00',vlPagar)) then
//  (FormatFloat('###,###,##0.00',fdt_principal6.spc_cons_med_dotacoestmedico.FieldByName('vlpago_cta').AsFloat) <> FormatFloat('###,###,##0.00',vlPagar)) then
    Dlg_Alerta('" ATENÇÃO " - Os valores das Dotações não correspondem com o Valor Total a Pagar!',self);
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  vlPagar := 0;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  value := FSetorSM;
end;

procedure TFrm_Imp_Med_Repasse_Autoriz.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  value := FSetorDA;
end;

end.
