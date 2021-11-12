unit Imp_4132;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt, Db;

type
  TFrm_Imp_4132 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    VLAP, VLDF, DIF : double ;
    FTlSeg, FTlDep, FTlPens, FTlAss, FTlTotal, FTotal, FTotalGeral, FTotalPorPlano,
    FTlSeg2, FTlDep2, FTlPens2, FTlAss2, FTlTotal2, FTotal2, FTlSegAssTes, FTlDepAssTes : integer;
    FPart, FPart2  : double;
    FCSAss : String;
  public
    { Public declarations }
    FDtReferencia, FRegiao, Fsexo, Ftitulo  : String ;
    FGrupo : integer;

  end;

var
  Frm_Imp_4132: TFrm_Imp_4132;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5, Fun_Db;
{$R *.DFM}

procedure TFrm_Imp_4132.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlSeg);
end;

procedure TFrm_Imp_4132.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  FTlSeg := FTlSeg + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlSegurados').AsInteger;
  FTlDep := FTlDep + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlDependentes').AsInteger;
  FTlPens := FTlPens + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlPensionistas').AsInteger;
  FTlAss := FTlAss + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlAssistidos').AsInteger;
  FTlSegAssTes := FTlSegAssTes + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlSegTesouraria').AsInteger;
  FTlDepAssTes := FTlDepAssTes + fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldbyname('tlDepTesouraria').AsInteger;
end;

procedure TFrm_Imp_4132.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlDep);
end;

procedure TFrm_Imp_4132.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
    value := IntToStr(FTlPens);
end;

procedure TFrm_Imp_4132.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlAss);
end;

procedure TFrm_Imp_4132.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlTotal);
end;

procedure TFrm_Imp_4132.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTlSeg := 0;
  FTlDep := 0;
  FTlPens := 0;
  FTlAss := 0;
  FTlSegAssTes := 0;
  FTlDepAssTes := 0;
  FTlTotal := 0;
  if fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('cod_plano').AsInteger = 1000 then
  begin
   DB_OpenSQL('select sum(qtde_tba) as qtdeTotal from tbl_totalBenefiAtivo__ where dtreferencia_tba = '+
   DB_FormatDataSQL(FDtReferencia, ftDate)+' and cod_faixaetaria < 10 ');
   FTotalPorPlano := Tab.Fields[0].AsInteger;
  end
  else begin
    DB_OpenSQL('select sum(qtde_tba) as qtdeTotal from tbl_totalBenefiAtivo__ where dtreferencia_tba = '+
    DB_FormatDataSQL(FDtReferencia, ftDate)+' and cod_faixaetaria < 10 '+
    ' and cod_classificacaoPlano = '+fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('cod_plano').AsString);
    FTotalPorPlano := Tab.Fields[0].AsInteger;
  end;  
end;

procedure TFrm_Imp_4132.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
//  if fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('cod_plano').AsInteger = 1 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTotalGeral )) + '%';
{  if fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('cod_plano').AsInteger = 2 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTlInt )) + '%';
  if fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('cod_plano').AsInteger = 3 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTlEsp )) + '%'; }
end;

procedure TFrm_Imp_4132.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  FTotal := fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlSegurados').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlDependentes').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlPensionistas').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlAssistidos').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlSegTesouraria').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.fieldByName('tlDepTesouraria').AsInteger;
  Value := IntToStr(FTotal);
  FTlTotal := FTlTotal + FTotal;
end;

procedure TFrm_Imp_4132.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  //Value := FormatFloat('###,###,##0.00',(FTotal2 * 100 / FTlTotal2 )) + '%';
end;

procedure TFrm_Imp_4132.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := false;
end;

procedure TFrm_Imp_4132.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := false;
end;

procedure TFrm_Imp_4132.QRLTlConsPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTlTotal * 100 / FTotalGeral )) + '%';
end;

procedure TFrm_Imp_4132.QRLabel1Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Ftitulo;
end;

procedure TFrm_Imp_4132.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FRegiao+'                '+Fsexo;
end;

procedure TFrm_Imp_4132.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   DB_OpenSQL('select sum(qtde_tba) as qtdeTotal from tbl_totalBenefiAtivo__ where dtreferencia_tba = '+
   DB_FormatDataSQL(FDtReferencia, ftDate)+' and cod_faixaetaria < 10 ');
   FTotalGeral := Tab.Fields[0].AsInteger;
end;

procedure TFrm_Imp_4132.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTotalPorPlano )) + '%';
end;

procedure TFrm_Imp_4132.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTlTotal * 100 / FTotalPorPlano )) + '%';
end;

procedure TFrm_Imp_4132.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
   value := IntToStr(FTlSegAssTes);
end;

procedure TFrm_Imp_4132.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
   value := IntToStr(FTlDepAssTes);
end;

end.
