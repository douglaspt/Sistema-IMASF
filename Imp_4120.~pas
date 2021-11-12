unit Imp_4120;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4120 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRT_codAutorizacao: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel26: TQRLabel;
    QRBand2: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FItensImpresso : Boolean;
  public
    { Public declarations }
    FDtValidade : TDateTime;
    FDtAut, FMedSol, FPacie, FCartei, FNomeConv, FEndConv, FBairroConv, FTelConv, FObservacao : String
  end;

var
  Frm_Imp_4120: TFrm_Imp_4120;

implementation
uses dtm_principal2, Fun_Acesso, dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4120.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FDtAut;
end;

procedure TFrm_Imp_4120.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FMedSol;
end;

procedure TFrm_Imp_4120.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FPacie;
end;

procedure TFrm_Imp_4120.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCartei;
end;

procedure TFrm_Imp_4120.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNome_Usu;
end;

procedure TFrm_Imp_4120.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  value := DateToStr(FDtValidade);
end;

procedure TFrm_Imp_4120.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeConv;

end;

procedure TFrm_Imp_4120.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FEndConv;
end;

procedure TFrm_Imp_4120.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  if FBairroConv = '' then
  Value := ''
  else
    value := FBairroConv+'    Tel: '+FTelConv;
end;

procedure TFrm_Imp_4120.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  if FNomeConv = '' then Value := '';
end;

procedure TFrm_Imp_4120.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  if FEndConv = '' then Value := '';
end;

procedure TFrm_Imp_4120.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  if FBairroConv = '' then Value := '';
end;

procedure TFrm_Imp_4120.FormCreate(Sender: TObject);
begin
  inherited;
QuickRep1.Font.Name := 'Draft 17cpi';
end;

procedure TFrm_Imp_4120.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := '';
end;

procedure TFrm_Imp_4120.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    QRT_codAutorizacao.Font.Name := 'Draft 10cpi';
end;

procedure TFrm_Imp_4120.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  if fdt_principal4.spc_cons_adm_itemautorizacao.fieldByName('obs_ita').asstring = '' then
  begin
    QRSubDetail1.Height := 20;
    value := '';
  end
  else begin
    QRSubDetail1.Height := 39;
    Value := 'Obs.';
  end;
end;

procedure TFrm_Imp_4120.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  if fdt_principal4.spc_cons_adm_itemautorizacao.RecordCount <= 0 then begin
    showMessage('ERRO AO IMPRIMIR CUPOM! VERIFIQUE SE O CUPOM FOI IMPRESSO COM PROBLEMAS');
    QuickRep1.Cancel;
    exit;
  end;
end;

procedure TFrm_Imp_4120.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  FItensImpresso := False;
end;

procedure TFrm_Imp_4120.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  FItensImpresso := True;
end;

procedure TFrm_Imp_4120.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if FItensImpresso = False then
  begin
    showMessage('ERRO AO IMPRIMIR CUPOM! VERIFIQUE SE O CUPOM FOI IMPRESSO COM PROBLEMAS');
    exit;
  end;
end;

procedure TFrm_Imp_4120.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := FObservacao <> '';
end;

procedure TFrm_Imp_4120.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FObservacao;
end;

procedure TFrm_Imp_4120.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FObservacao;
end;

end.
