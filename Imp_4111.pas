unit Imp_4111;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4111 = class(TFrm_Imp_Basico)
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
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }
    FNome, FInscricao, FNomeAss1, FNomeAss2, FNomeAss3, FCargo1, FCargo2, FCargo3, NPlano,
    FEdital, FDtinscricao, FCarteira, Dtsituacao : String;
  end;

var
  Frm_Imp_4111: TFrm_Imp_4111;

implementation
uses dtm_principal4;
{$R *.DFM}


procedure TFrm_Imp_4111.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FNome+' segurado(a) regularmente inscrito(a) neste instituto, desligou se'+
 ' do serviço publico municipal em '+Dtsituacao+'.';
end;

procedure TFrm_Imp_4111.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'IMA.011, '+DateToStr(date);
end;

procedure TFrm_Imp_4111.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss1;
end;

procedure TFrm_Imp_4111.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo1
end;

procedure TFrm_Imp_4111.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo2;
end;

procedure TFrm_Imp_4111.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss2;
end;

procedure TFrm_Imp_4111.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCarteira;
end;

procedure TFrm_Imp_4111.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNome;
end;

procedure TFrm_Imp_4111.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNome+' sob nº '+FInscricao+', do cadastro de beneficiários, publicação no Edital nº '+FEdital+
  ', elaboração do Ofício nº___________.';
end;

procedure TFrm_Imp_4111.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  value := ' no Plano '+NPlano+'. Para os fins.';
end;

procedure TFrm_Imp_4111.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FInscricao;
end;

procedure TFrm_Imp_4111.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
    value := FNomeAss3;
end;

procedure TFrm_Imp_4111.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo3;
end;

end.
