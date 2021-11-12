unit Imp_4121;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4121 = class(TFrm_Imp_Basico)
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    lbl_nome_ben: TQRLabel;
    QRLabel8: TQRLabel;
    lbl_proc: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure lbl_procPrint(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure lbl_nome_benPrint(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    VLAP, VLDF, DIF : double ;
    FTLB, FTLC : integer;
    FInscricao, Fnome, Fprocesso, FTitInsc, FTitNome, FTitProc : String;
    F : TextFile;
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal, FMesAnoReferencia : String ;

  end;

var
  Frm_Imp_4121: TFrm_Imp_4121;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_4121.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4121.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4121.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  if (fdt_principal5.spc_cons_adm_TextoEdital.FieldByName('cod_textoEdital').AsInteger > 100) and
  (fdt_principal5.spc_cons_adm_TextoEdital.FieldByName('cod_textoEdital').AsInteger < 200) then
  FTLB := FTLB + 1;
  if (fdt_principal5.spc_cons_adm_TextoEdital.FieldByName('cod_textoEdital').AsInteger > 200) and
  (fdt_principal5.spc_cons_adm_TextoEdital.FieldByName('cod_textoEdital').AsInteger < 300) then
  FTLC := FTLC + 1;
  Fnome := value;
end;

procedure TFrm_Imp_4121.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLB);
end;

procedure TFrm_Imp_4121.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLC);
end;

procedure TFrm_Imp_4121.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  FTLB := 0;
  FTLC := 0;
  AssignFile(F,'C:\Sistemas\edital.txt');
  Rewrite(F);
end;

procedure TFrm_Imp_4121.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  if FMesAnoReferencia = '' then
    Value := '';
  Writeln(F, value+'    '+FMesAnoReferencia);  
end;

procedure TFrm_Imp_4121.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FMesAnoReferencia;
end;

procedure TFrm_Imp_4121.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoInicial = '' then
    Value := '';
  Writeln(F, value+'    '+FPeriodoInicial);  
end;

procedure TFrm_Imp_4121.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoFinal = '' then
    Value := '';
  Writeln(F, value+'    '+FPeriodoFinal);  
end;

procedure TFrm_Imp_4121.QRLabel1Print(sender: TObject; var Value: String);
begin
  inherited;
  Writeln(F, value);
end;

procedure TFrm_Imp_4121.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
  Writeln(F, '');
  Writeln(F, value);
end;

procedure TFrm_Imp_4121.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Writeln(F, '');
  Writeln(F, '');
  Writeln(F, value);
end;

procedure TFrm_Imp_4121.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  Writeln(F,STR_AddSpaces(value,35)+IntToStr(FTLB));
end;

procedure TFrm_Imp_4121.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  Writeln(F,STR_AddSpaces(value,35)+IntToStr(FTLC));
end;



procedure TFrm_Imp_4121.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  FInscricao := value;
end;

procedure TFrm_Imp_4121.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  Fprocesso := value;
  Writeln(F,STR_AddSpaces(FInscricao,10)+STR_AddSpaces(Fnome,60)+Fprocesso);
end;

procedure TFrm_Imp_4121.lbl_procPrint(sender: TObject; var Value: String);
begin
  inherited;
  FTitProc := value;
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,STR_AddSpaces(FTitInsc,10)+STR_AddSpaces(FTitNome,60)+FTitProc);
end;

procedure TFrm_Imp_4121.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  FTitInsc := value;
end;

procedure TFrm_Imp_4121.lbl_nome_benPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  FTitNome := value;
end;

procedure TFrm_Imp_4121.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  CloseFile(F);
end;

end.
