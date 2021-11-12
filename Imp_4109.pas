unit Imp_4109;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4109 = class(TFrm_Imp_Basico)
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel22: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }
    FNome, FInscricao, FNomeAss1, FNomeAss2, FNomeAss3, FCargo1, FCargo2, FCargo3, NPlano,
    FEdital, FDtinscricao : String;
  end;

var
  Frm_Imp_4109: TFrm_Imp_4109;

implementation
uses dtm_principal4;
{$R *.DFM}


procedure TFrm_Imp_4109.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FNome+' requer a sua inscrição neste IMASF no plano assistencial '+NPlano;
end;

procedure TFrm_Imp_4109.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'IMA.011, '+DateToStr(date);
end;

procedure TFrm_Imp_4109.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss1;
end;

procedure TFrm_Imp_4109.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo1
end;

procedure TFrm_Imp_4109.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo2;
end;

procedure TFrm_Imp_4109.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss2;
end;

procedure TFrm_Imp_4109.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FNomeAss3;
end;

procedure TFrm_Imp_4109.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCargo3;
end;

procedure TFrm_Imp_4109.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := NPlano;
end;

procedure TFrm_Imp_4109.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNome;
end;

procedure TFrm_Imp_4109.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FEdital;
end;

procedure TFrm_Imp_4109.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FDtinscricao;
end;

procedure TFrm_Imp_4109.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FInscricao;
end;

procedure TFrm_Imp_4109.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Conforme despacho supra, Providenciamos a inscrição sob nº '+FInscricao+
  ', carteira de identificação, publicação no Edital nº '+FEdital+', conforme segue:';
end;

end.
