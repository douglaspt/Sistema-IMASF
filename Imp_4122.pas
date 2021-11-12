unit Imp_4122;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4122 = class(TFrm_Imp_Basico)
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
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand2: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel27: TQRLabel;
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
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRDBText16Prin(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    VLAP, VLDF, DIF : double ;
    FTlSeg, FTlDep, FTlPens, FTlAss, FTlTotal, FTotal, FTlPar,
    FTlSeg2, FTlDep2, FTlPens2, FTlAss2, FTlTotal2, FTotal2, FTlPar2, FTotalGeral : integer;
    FPart, FPart2  : double;
    FCSAss : String;
  public
    { Public declarations }
    FDtReferenciaNome, FDtReferencia   : String ;
    FGrupo : Integer;
  end;

var
  Frm_Imp_4122: TFrm_Imp_4122;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5, Fun_Db;
{$R *.DFM}

procedure TFrm_Imp_4122.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlSeg);
end;

procedure TFrm_Imp_4122.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  FTlSeg := FTlSeg + fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('tlSegurados').AsInteger;
  FTlDep := FTlDep + fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('tlDependentes').AsInteger;
  FTlPens := FTlPens + fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('tlPensionistas').AsInteger;
  FTlAss := FTlAss + fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('tlAssistidos').AsInteger;
end;

procedure TFrm_Imp_4122.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlDep);
end;

procedure TFrm_Imp_4122.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
    value := IntToStr(FTlPens);
end;

procedure TFrm_Imp_4122.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlAss);
end;

procedure TFrm_Imp_4122.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlTotal);
end;

procedure TFrm_Imp_4122.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTlSeg := 0;
  FTlDep := 0;
  FTlPens := 0;
  FTlAss := 0;
  FTlTotal := 0;
  if FGrupo = 1 then
  begin
    DB_OpenSQL('select isnull(sum(tlSegurados),0) + isnull(sum(tlDependentes),0) + '+
    'isnull(sum(tlPensionistas),0) + isnull(sum(tlAssistidos),0)from tbl_diretoria02 '+
    'where dtreferencia_dr2 = '''+FDtReferencia+''' and cod_faixaEtaria < 10 '+
    'and ((cod_plano = '+fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('cod_plano').asString+
    ') or (cod_classificacaoPlano = '+fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('cod_plano').asString+'))');
    FTlPar := Tab.Fields[0].AsInteger;
  end;
  if FGrupo = 2 then
  begin
    DB_OpenSQL('select isnull(sum(tlSegurados),0) + isnull(sum(tlDependentes),0) + '+
    'isnull(sum(tlPensionistas),0) + isnull(sum(tlAssistidos),0)from tbl_diretoria02 '+
    'where dtreferencia_dr2 = '''+FDtReferencia+''' and cod_faixaEtaria > 10 '+
    'and ((cod_plano = '+fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('cod_plano').asString+
    ') or (cod_classificacaoPlano = '+fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldbyname('cod_plano').asString+'))');
    FTlPar := Tab.Fields[0].AsInteger;
  end;
end;

procedure TFrm_Imp_4122.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
//  if fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('cod_plano').AsInteger = 1 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTlPar )) + '%';
{  if fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('cod_plano').AsInteger = 2 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTlInt )) + '%';
  if fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('cod_plano').AsInteger = 3 then
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTlEsp )) + '%'; }
end;

procedure TFrm_Imp_4122.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  FTotal := fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('tlSegurados').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('tlDependentes').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('tlPensionistas').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo02.fieldByName('tlAssistidos').AsInteger;
  Value := IntToStr(FTotal);
  FTlTotal := FTlTotal + FTotal;
end;

procedure TFrm_Imp_4122.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  FTlSeg2 := FTlSeg2 + fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('tlSegurados').AsInteger;
  FTlDep2 := FTlDep2 + fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('tlDependentes').AsInteger;
  FTlPens2 := FTlPens2 + fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('tlPensionistas').AsInteger;
  FTlAss2 := FTlAss2 + fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('tlAssistidos').AsInteger;
end;

procedure TFrm_Imp_4122.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
 value := IntToStr(FTlTotal2);
end;

procedure TFrm_Imp_4122.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlAss2);
end;

procedure TFrm_Imp_4122.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlPens2);
end;

procedure TFrm_Imp_4122.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlDep2);
end;

procedure TFrm_Imp_4122.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTlSeg2);
end;

procedure TFrm_Imp_4122.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTlSeg2 := 0;
  FTlDep2 := 0;
  FTlPens2 := 0;
  FTlAss2 := 0;
  FTlTotal2 := 0;
  if fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('Sem_Ass').AsInteger = 0 then
    FCSAss := ''
  else
    FCSAss := '+ sum(isnull(tlAssistidos,0))';
    
  DB_OpenSQL('select sum(isnull(tlSegurados,0))  + sum(isnull(tlDependentes,0))  + '+
  'sum(isnull(tlPensionistas,0)) '+FCSAss+' from tbl_diretoria02 where dtreferencia_dr2 = '''+FDtReferencia+''' and cod_faixaEtaria < 10 ');
  FPart2 := Tab.Fields[0].AsInteger;
end;

procedure TFrm_Imp_4122.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  if fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldbyname('Sem_Ass').AsInteger = 0 then
    value := 'Total Sem Assistidos'
  else
    value := 'Total Com Assistidos';
end;

procedure TFrm_Imp_4122.QRDBText13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  FTotal2 := fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldByName('tlSegurados').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldByName('tlDependentes').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldByName('tlPensionistas').AsInteger+
  fdt_principal5.spc_cons_adm_totalBenefiAtivo03.fieldByName('tlAssistidos').AsInteger;
  Value := IntToStr(FTotal2);
  FTlTotal2 := FTlTotal2 + FTotal2;
end;

procedure TFrm_Imp_4122.QRDBText16Prin(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTotal2 * 100 / FPart2 )) + '%';
end;

procedure TFrm_Imp_4122.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FDtReferenciaNome;
end;

procedure TFrm_Imp_4122.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTotal * 100 / FTotalGeral )) + '%';
end;

procedure TFrm_Imp_4122.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTlTotal * 100 / FTotalGeral )) + '%';
end;

procedure TFrm_Imp_4122.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTlTotal2 * 100 / FTotalGeral )) + '%';
end;

procedure TFrm_Imp_4122.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',(FTotal2 * 100 / FTotalGeral )) + '%';
end;

procedure TFrm_Imp_4122.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  DB_OpenSQL('select sum(isnull(tlSegurados,0))  + sum(isnull(tlDependentes,0))  + '+
  'sum(isnull(tlPensionistas,0)) + sum(isnull(tlAssistidos,0)) from tbl_diretoria02 where dtreferencia_dr2 = '''+FDtReferencia+''' and cod_faixaEtaria < 10 ');
  FTotalGeral := Tab.Fields[0].AsInteger;
end;

end.
