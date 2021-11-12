unit Imp_4113;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4113 = class(TFrm_Imp_Basico)
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
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
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
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
   
  private
    { Private declarations }
  public
    { Public declarations }
    FNome, FInscricao, FNomeAss1, FNomeAss2, FNomeAss3, FCargo1, FCargo2, FCargo3, NPlano,
    FEdital, FDtinscricao, Conjugue : String;
  end;

var
  Frm_Imp_4113: TFrm_Imp_4113;

implementation
uses dtm_principal4;
{$R *.DFM}


procedure TFrm_Imp_4113.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
 value := Conjugue+' requer, às fls. 70, a inscrição de seu cônjugue '+FNome+
 ', como DEPENDENTE, no plano '+NPlano;
end;

procedure TFrm_Imp_4113.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'IMA.011, '+DateToStr(date);
end;

procedure TFrm_Imp_4113.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss1;
end;

procedure TFrm_Imp_4113.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo1
end;

procedure TFrm_Imp_4113.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargo2;
end;

procedure TFrm_Imp_4113.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNomeAss2;
end;

procedure TFrm_Imp_4113.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FNomeAss3;
end;

procedure TFrm_Imp_4113.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCargo3;
end;

procedure TFrm_Imp_4113.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FEdital;
end;

procedure TFrm_Imp_4113.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FInscricao;
end;

procedure TFrm_Imp_4113.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Conforme despacho supra, Providenciamos as anotações no cadastro quanto a inscrição de '+FNome+
  ' sob nº '+FInscricao+', como DEPENDENTE, no Plano '+NPlano+', publicação no Edital nº '+FEdital+', conforme segue:';
end;

procedure TFrm_Imp_4113.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'De acordo com a Resolução nº 667, de 19 de fevereiro de 2003, L.M. nº 5078/02 '+
  'que alterou a L.M. nº 4831/99, e após manifestação da Seção Médica(fls. 77), DEFIRO a Partir de '+
  FDtinscricao+', com carência de acordo com a lei Federal, sendo nível II __ /__ /____ e nível III até __ /__ /____. Para os fins.';
end;

procedure TFrm_Imp_4113.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Nesta data, providenciamos as anotações necessárias ao cadastro UNIMED ABC, '+
  'para confecção da certeira de identificação, em nome de '+FNome;  
end;

end.
