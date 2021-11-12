unit Imp_4047;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_4047 = class(TFrm_Imp_Basico)
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTI : double ;
    wIA : String ; //inscricao antiga
  public
    { Public declarations }
    FStatus, FMotivo, FPlano, FDtEnvio : String ;
  end;

var
  Frm_Imp_4047: TFrm_Imp_4047;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4047.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  with fdt_principal2.spc_cons_adm_emissaocarteira do
    value := FormatarCarteirinha(
    FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
    STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
    FieldByName('digito_ben').AsString) ;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_4047.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
end;

procedure TFrm_Imp_4047.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_4047.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  wIA := fdt_principal2.spc_cons_adm_emissaocarteira.FieldByName('nome_ben').AsString;
end;

procedure TFrm_Imp_4047.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := wIA <> fdt_principal2.spc_cons_adm_emissaocarteira.FieldByName('nome_ben').AsString ;
end;

procedure TFrm_Imp_4047.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPlano;
end;

procedure TFrm_Imp_4047.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FDtEnvio;
end;

procedure TFrm_Imp_4047.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FStatus;
end;

procedure TFrm_Imp_4047.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FMotivo;
end;

end.
