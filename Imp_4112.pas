unit Imp_4112;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4112 = class(TFrm_Imp_Basico)
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }
    FNome, FInscricao, FNomeAss1, FNomeAss2, FNomeAss3, FCargo1, FCargo2, FCargo3, NPlano,
    FEdital, FDtinscricao : String;
    DtNascimento : TDateTime;
  end;

var
  Frm_Imp_4112: TFrm_Imp_4112;

implementation
uses dtm_principal4, dtm_principal;
{$R *.DFM}


procedure TFrm_Imp_4112.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
 value := 'Tendo em vista que a pensionista '+FNome+' completou 21 anos em '+
 FormatDateTime('dd/mm/',DtNascimento)+FormatDateTime('yyyy', (DtNascimento+(365.25 * 21)))+'.';
end;

procedure TFrm_Imp_4112.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'IMA.011, '+DateToStr(date);
end;

procedure TFrm_Imp_4112.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss1;
end;

procedure TFrm_Imp_4112.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo1
end;

procedure TFrm_Imp_4112.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo2;
end;

procedure TFrm_Imp_4112.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss2;
end;

procedure TFrm_Imp_4112.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FNomeAss3;
end;

procedure TFrm_Imp_4112.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCargo3;
end;

procedure TFrm_Imp_4112.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Conforme despacho supra, providenciamos o cancelamento de '+FNome+
  ', sob nº '+FInscricao+', do cadatro de beneficiários, publicação no Edital nº '+FEdital+
  ', bem como o cálculo da diferença de dias no valor de R$__________.';
end;

end.
