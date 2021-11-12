unit Imp_4074;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4074 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    lbl_tlItemGlosa: TQRLabel;
    QRExprTCons: TQRExpr;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    lbl_dtatend: TQRLabel;
    lbl_Seq: TQRLabel;
    lbl_carteira: TQRLabel;
    lbl_nome: TQRLabel;
    lbl_vlinformado: TQRLabel;
    lbl_vlpagar: TQRLabel;
    QRDBText20: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    lbl_subtotal: TQRLabel;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    lbl_TlItemGlosado: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel22: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel19: TQRLabel;
    lbl_VlTlGlosaAdm: TQRLabel;
    QRLabel21: TQRLabel;
    lbl_VlTlglosaEnf: TQRLabel;
    QRLabel27: TQRLabel;
    lbl_VlTlGlosaMed: TQRLabel;
    lbl_VlTlGlosa: TQRLabel;
    lbl_Dtreferencia: TQRLabel;
    QRDBText27: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExprTConsPrint(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTS, wTLI : integer ;
    F : TextFile;
    wTVI, wTVP, wTGVI, wTGVP, wTvD, wTGvD, wVLClAdm, wVLClEnf, wVLClMed : double ;
  public
    { Public declarations }
    Fcod_nome : String ;
  end;

var
  Frm_Imp_4074: TFrm_Imp_4074;

implementation
Uses dtm_principal, Fun_Data, Fun_DB, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_4074.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTLI := 0;
  wTs := 0 ;
  wTVI := 0 ;
  wTVP := 0 ;
  wTGVI := 0 ;
  wTGVP := 0 ;
  wTVD := 0 ;
  wTGvD := 0 ;
  wVLClAdm := 0;
  wVLClEnf := 0;
  wVLClMed := 0;
  AssignFile(F,'C:\Sistemas\Glosa.txt');
  Rewrite(F);
end;

procedure TFrm_Imp_4074.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(wTS) ;
end;

procedure TFrm_Imp_4074.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat;
  wTGVI := wTGVI + Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat;
end;

procedure TFrm_Imp_4074.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat;
  wTGVP := wTGVP + Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat;
end;

procedure TFrm_Imp_4074.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvI) ;
end;

procedure TFrm_Imp_4074.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_4074.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_4074.QRGroup2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  wTs := 0 ;
  wTVI := 0 ;
  wTVP := 0 ;
  wTVD := 0 ;
  Writeln(F,STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('sequenciaconta_ctm').asstring,5)+
  STR_AddSpaces(Data_Format('dd/mm/yyyy', Fdt_principal.spc_cons_itemglosa.FieldByName('dtentrada_ctm').AsDateTime),15)+
  STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('carteirainform_ctm').asstring,15)+
  Fdt_principal.spc_cons_itemglosa.FieldByName('nomebenefi_ctm').asstring);
end;

procedure TFrm_Imp_4074.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  Value := Fcod_nome ;

end;

procedure TFrm_Imp_4074.QRLabel22Print(sender: TObject;
  var Value: String);
begin
//  value := FormatFloat('###,###,##0.00',wTGvI-wTGvP) ;
  value := FormatFloat('###,###,##0.00',wTGvD) ;
  Writeln(F,STR_AddSpaces(lbl_VlTlGlosa.Caption,25)+value);
end;

procedure TFrm_Imp_4074.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  wTVD := wTVD + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  wTGVD := wTGVD + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  if Fdt_principal.spc_cons_itemglosa.FieldByName('cod_classeGlosa').AsInteger = 1 then
    wVLClAdm := wVLClAdm + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
    Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  if Fdt_principal.spc_cons_itemglosa.FieldByName('cod_classeGlosa').AsInteger = 2 then
    wVLClEnf := wVLClEnf + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
    Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  if Fdt_principal.spc_cons_itemglosa.FieldByName('cod_classeGlosa').AsInteger = 3 then
    wVLClMed := wVLClMed + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
    Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
end;

procedure TFrm_Imp_4074.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvD) ;
end;

procedure TFrm_Imp_4074.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_4074.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := ((Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger in [10,101..105]) or
  (Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsInteger = 1001)) and
  (Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString <> '');
end;

procedure TFrm_Imp_4074.QRExprTConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('#####0',wTS) ;
  wTLI := wTLI + wts;
end;

procedure TFrm_Imp_4074.QRLabel19Print(sender: TObject; var Value: String);
begin
  value := FormatFloat('###,###,##0.00', wVLClAdm) ;
  Writeln(F,STR_AddSpaces(lbl_VlTlGlosaAdm.Caption,40)+value);
end;

procedure TFrm_Imp_4074.QRLabel21Print(sender: TObject; var Value: String);
begin
  value := FormatFloat('###,###,##0.00', wVLClEnf) ;
  Writeln(F,STR_AddSpaces(lbl_VlTlglosaEnf.Caption,40)+value);
end;

procedure TFrm_Imp_4074.QRLabel27Print(sender: TObject; var Value: String);
begin
  value := FormatFloat('###,###,##0.00', wVLClMed) ;
  Writeln(F,STR_AddSpaces(lbl_VlTlGlosaMed.Caption,40)+value);
end;

procedure TFrm_Imp_4074.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  CloseFile(F);
end;

procedure TFrm_Imp_4074.QRLabel2Print(sender: TObject; var Value: String);
begin
  Writeln(F, value);
  Writeln(F,'');
  Writeln(F,STR_AddSpaces(lbl_Dtreferencia.Caption,29)+Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').asstring)
end;

procedure TFrm_Imp_4074.QRLabel3Print(sender: TObject; var Value: String);
begin
  Writeln(F, STR_AddSpaces(value,29)+Fdt_principal.spc_cons_itemglosa.FieldByName('cod_conveniado').asstring);
end;

procedure TFrm_Imp_4074.QRLabel4Print(sender: TObject; var Value: String);
begin
  Writeln(F,STR_AddSpaces(value,29)+Fdt_principal.spc_cons_itemglosa.FieldByName('dtrecebimento_cta').asstring);
end;

procedure TFrm_Imp_4074.QRLabel5Print(sender: TObject; var Value: String);
begin
  Writeln(F,STR_AddSpaces(value,29)+Fdt_principal.spc_cons_itemglosa.FieldByName('dtcritica_cta').asstring);
end;

procedure TFrm_Imp_4074.QRLabel6Print(sender: TObject; var Value: String);
begin
  Writeln(F,STR_AddSpaces(value,29)+datetostr(Date));
end;

procedure TFrm_Imp_4074.QRLabel9Print(sender: TObject; var Value: String);
begin
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,STR_AddSpaces(lbl_Seq.Caption,5)+STR_AddSpaces(lbl_dtatend.Caption,15)+
  STR_AddSpaces(lbl_carteira.Caption,15)+STR_AddSpaces(lbl_nome.Caption,40)+
  STR_AddSpaces(lbl_vlinformado.Caption,18)+STR_AddSpaces(lbl_vlpagar.Caption,12)+value);
end;

procedure TFrm_Imp_4074.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Writeln(F,'      '+STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('cod_padrao').asstring,15)+
  STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_itc').asstring,56)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('vlinformado_itc').AsFloat),18)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('vlpagar_itc').AsFloat),12)+
  FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat));
end;

procedure TFrm_Imp_4074.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Writeln(F,STR_AddSpaces(lbl_tlItemGlosa.Caption,42)+STR_AddSpaces(FormatFloat('#####0',wTS),22)+
  STR_AddSpaces(lbl_subtotal.Caption,12)+STR_AddSpaces(FormatFloat('###,###,##0.00',wTvI),18)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',wTvP),12)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',wTvD),10));
  Writeln(F,'');
end;

procedure TFrm_Imp_4074.QRDBText1Print(sender: TObject; var Value: String);
begin
  Writeln(F,STR_AddSpaces('',21)+STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').AsString,56)+
  STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('Descricao_cgl').asstring,35));
end;

procedure TFrm_Imp_4074.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  Inc(wTS);
end;

procedure TFrm_Imp_4074.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := IntToStr(wTLI);
  Writeln(F,'');
  Writeln(F,STR_AddSpaces(lbl_TlItemGlosado.Caption,25)+value);
end;

end.
