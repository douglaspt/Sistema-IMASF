unit Imp_4103;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4103 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbl_teste: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure lbl_testePrint(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    
  private
    { Private declarations }
  public
    { Public declarations }
 FImprimeTotais : Boolean;
 DtReferencia, Local, test : String ;
 Count, TlPacientes : Integer;
  end;

var
  Frm_Imp_4103: TFrm_Imp_4103;

implementation
uses dtm_principal4, Fun_Beneficiario, Fun_Db, Fun_Data;
{$R *.DFM}

procedure TFrm_Imp_4103.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DtReferencia;

end;
procedure TFrm_Imp_4103.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := inttostr(Count);
end;

procedure TFrm_Imp_4103.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  with Fdt_principal4.spc_cons_med_pacienteinternado do
    value := FormatarCarteirinha(MontarCarteirinha(FieldByName('cod_empresa').AsString,
    FieldByName('cod_plano').AsString, FieldByName('inscricao_ben').AsString,
    FieldByName('titulacartei_ben').AsString ));
end;

procedure TFrm_Imp_4103.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var ImprimeLinha : boolean;
begin
  inherited;

end;

procedure TFrm_Imp_4103.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  Count := Count + 1;
  TlPacientes := TlPacientes + 1;
end;

procedure TFrm_Imp_4103.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if DB_OpenSQL('select max(dtinternacao_uti) as dtinternacao_uti, dtalta_uti  from tbl_controleuti where cod_autorizainternacao = '+
  fdt_principal4.spc_cons_med_pacienteinternado.FieldByName('cod_autorizainternacao').asstring+
  ' group by dtalta_uti') > 0 then
    if (Tab.FieldByName('dtalta_uti').AsString = '') and (Tab.FieldByName('dtinternacao_uti').AsDateTime <= StrToDate(DtReferencia)) then
      Local := 'UTI'
    else begin
      if DB_OpenSQL('select * from tbl_controleuti where cod_autorizainternacao = '+
      fdt_principal4.spc_cons_med_pacienteinternado.FieldByName('cod_autorizainternacao').asstring+
      ' and '''+Data_Format('mm/dd/yyyy',StrToDate(DtReferencia))+''' >= dtinternacao_uti and '''+
      Data_Format('mm/dd/yyyy',StrToDate(DtReferencia))+''' < dtalta_uti') > 0 then
        Local := 'UTI'
      else
        Local := 'QTO';
    end
  else begin
    if DB_OpenSQL('select * from tbl_controleuti where cod_autorizainternacao = '+
      fdt_principal4.spc_cons_med_pacienteinternado.FieldByName('cod_autorizainternacao').asstring+
      ' and '''+Data_Format('mm/dd/yyyy',StrToDate(DtReferencia))+''' >= dtinternacao_uti and '''+
      Data_Format('mm/dd/yyyy',StrToDate(DtReferencia))+''' < dtalta_uti') > 0 then
        Local := 'UTI'
      else
        Local := 'QTO';
  end;
    value := Local;
end;

procedure TFrm_Imp_4103.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := IntToStr(fdt_principal4.spc_cons_med_pacienteinternado.fieldByName('DiariasQTO').AsInteger -
  fdt_principal4.spc_cons_med_pacienteinternado.fieldByName('DiariasUTI').AsInteger);
end;

procedure TFrm_Imp_4103.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := IntToStr(fdt_principal4.spc_cons_med_pacienteinternado.fieldByName('DiariasQTO').AsInteger -
  fdt_principal4.spc_cons_med_pacienteinternado.fieldByName('DiariasConcessao').AsInteger);
end;

procedure TFrm_Imp_4103.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := false;
end;

procedure TFrm_Imp_4103.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
end;

procedure TFrm_Imp_4103.lbl_testePrint(sender: TObject; var Value: String);
begin
  inherited;
  value := test;
end;

procedure TFrm_Imp_4103.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  TlPacientes := 0;
end;

procedure TFrm_Imp_4103.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlPacientes);
end;

end.


