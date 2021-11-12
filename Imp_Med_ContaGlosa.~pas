unit Imp_Med_ContaGlosa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ContaGlosa = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qrt_cod_conveniado: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrt_dtrecebimento: TQRDBText;
    qrt_dtcritica: TQRDBText;
    QRLabel6: TQRLabel;
    qrd_date: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    lbl_tlItemGlosa: TQRLabel;
    QRExprTCons: TQRExpr;
    QRLTlCons: TQRLabel;
    QRLabel34: TQRLabel;
    qrt_dtreferencia: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    lbl_dtatend: TQRLabel;
    lbl_Seq: TQRLabel;
    lbl_carteira: TQRLabel;
    lbl_nome: TQRLabel;
    lbl_vlinformado: TQRLabel;
    lbl_vlpagar: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText19: TQRDBText;
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
    QRLabel17: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
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
    procedure qrt_dtreferenciaPrint(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTS : integer ;
    wTVI, wTVP, wTGVI, wTGVP, wTvD, wTGvD : double ;
    F : TextFile;
    FCount, FVlTlDifer : string;
  public
    { Public declarations }
  end;

var
  Frm_Imp_Med_ContaGlosa: TFrm_Imp_Med_ContaGlosa;

implementation
Uses dtm_principal, Fun_Data, Fun_DB, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_Med_ContaGlosa.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTs := 0 ;
  wTVI := 0 ;
  wTVP := 0 ;
  wTGVI := 0 ;
  wTGVP := 0 ;
  wTVD := 0 ;
  wTGvD := 0 ;
  AssignFile(F,'C:\Sistemas\Glosa.txt');
  Rewrite(F);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(wTS) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRDBT_DtAtendimentoPrint(sender: TObject;
  var Value: String);
begin
  Inc(wTS);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat;
  wTGVI := wTGVI + Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  wTVP := wTVP + Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat;
  wTGVP := wTGVP + Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvI) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.qrt_dtreferenciaPrint(sender: TObject;
  var Value: String);
begin
  value := Data_GetMonthName(Data_Month(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime))+
  ' de '+
  IntToStr(Data_Year(Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').AsDateTime));
end;

procedure TFrm_Imp_Med_ContaGlosa.QRGroup2BeforePrint(
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

procedure TFrm_Imp_Med_ContaGlosa.QRLabel19Print(sender: TObject;
  var Value: String);
begin
//////////  value := FormatFloat('###,###,##0.00',wTGvI) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel18Print(sender: TObject;
  var Value: String);
begin
//////////  value := FormatFloat('###,###,##0.00',wTGvP) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel22Print(sender: TObject;
  var Value: String);
begin
//  value := FormatFloat('###,###,##0.00',wTGvI-wTGvP) ;
  value := FormatFloat('###,###,##0.00',wTGvD) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  wTVD := wTVD + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
  wTGVD := wTGVD + (Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvD) ;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel2Print(sender: TObject;
  var Value: String);
begin
  Writeln(F, value);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  Writeln(F,'');
  Writeln(F, value+'     '+Fdt_principal.spc_cons_itemglosa.FieldByName('dtreferencia_cta').asstring);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel3Print(sender: TObject;
  var Value: String);
begin
  Writeln(F, value+'     '+Fdt_principal.spc_cons_itemglosa.FieldByName('cod_conveniado').asstring);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  Writeln(F, value+'     '+Fdt_principal.spc_cons_itemglosa.FieldByName('dtrecebimento_cta').asstring);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  Writeln(F, value+'     '+Fdt_principal.spc_cons_itemglosa.FieldByName('dtcritica_cta').asstring);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  Writeln(F, value+'     '+datetostr(Date));
end;

procedure TFrm_Imp_Med_ContaGlosa.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,STR_AddSpaces(lbl_Seq.Caption,5)+STR_AddSpaces(lbl_dtatend.Caption,15)+
  STR_AddSpaces(lbl_carteira.Caption,15)+STR_AddSpaces(lbl_nome.Caption,50)+
  STR_AddSpaces(lbl_vlinformado.Caption,18)+STR_AddSpaces(lbl_vlpagar.Caption,12)+value);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  CloseFile(F);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Writeln(F,'      '+STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('cod_padrao').asstring,15)+
  STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_itc').asstring,66)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('vlinformado_itc').AsFloat),18)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('vlpagar_itc').AsFloat),12)+
  FormatFloat('###,###,##0.00',Fdt_principal.spc_cons_itemglosa.FieldByName('VlInformado_itc').AsFloat-
  Fdt_principal.spc_cons_itemglosa.FieldByName('VlPagar_itc').AsFloat));
end;

procedure TFrm_Imp_Med_ContaGlosa.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Writeln(F,STR_AddSpaces('',21)+STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('cod_erroglosa').AsString,7)+
  STR_AddSpaces(Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_erg').asstring,35)+
  Fdt_principal.spc_cons_itemglosa.FieldByName('descricao_glo').asstring);
end;

procedure TFrm_Imp_Med_ContaGlosa.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Writeln(F,STR_AddSpaces(lbl_tlItemGlosa.Caption,40)+STR_AddSpaces(FCount,7)+
  STR_AddSpaces(lbl_subtotal.Caption,35)+STR_AddSpaces(FormatFloat('###,###,##0.00',wTvI),35)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',wTvP),35)+
  STR_AddSpaces(FormatFloat('###,###,##0.00',wTvD),35));
end;

end.
