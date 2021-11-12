unit Imp_4133;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4133 = class(TFrm_Imp_Basico)
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    lbl_tlItemGlosa: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  FVLTL, FVLTLFinal : Double;
  FTLBEN : integer;
  public
    { Public declarations }
 FDtReferencia, FInscricao,Ftarifa, FMatricula, FDigito : String ;

  end;

var
  Frm_Imp_4133: TFrm_Imp_4133;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_4133.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FDtReferencia;
end;

procedure TFrm_Imp_4133.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatFloat('###,###,##0.00',FVLTL);
  FVLTLFinal := FVLTLFinal + FVLTL;
end;

procedure TFrm_Imp_4133.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin                                                               
  inherited;
  FVLTL := FVLTL + fdt_principal5.spc_cons_adm_divergenciaPrefeitura.FieldByName('vlpendente_div').AsFloat;
end;

procedure TFrm_Imp_4133.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  FVLTL := 0;
end;

procedure TFrm_Imp_4133.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBEN);
end;

procedure TFrm_Imp_4133.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FTLBEN := FTLBEN + 1;
end;

procedure TFrm_Imp_4133.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',FVLTLFinal);
end;

procedure TFrm_Imp_4133.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  FVLTLFinal := 0;
  FTLBEN := 0; 
end;

end.
