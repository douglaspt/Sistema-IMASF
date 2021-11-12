unit Imp_4057;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4057 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod_usu, Nome_comp, Nome_usu : String ;
  end;

var
  Frm_Imp_4057: TFrm_Imp_4057;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4057.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  value := Cod_usu ;
end;

procedure TFrm_Imp_4057.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
 Value := Nome_comp ;
end;

procedure TFrm_Imp_4057.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
Value := Nome_usu ;
end;

procedure TFrm_Imp_4057.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
  if value = '1' then
    value := 'Sim'
  else
    value := 'Não';
end;

procedure TFrm_Imp_4057.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  if value = '1' then
    value := 'Sim'
  else
    value := 'Não';
end;

procedure TFrm_Imp_4057.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
  if value = '1' then
    value := 'Sim'
  else
    value := 'Não';
end;

procedure TFrm_Imp_4057.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if value = '1' then
    value := 'Sim'
  else
    value := 'Não';
end;

procedure TFrm_Imp_4057.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal2.spc_AcessoUsuario.RecordCount);

end;

end.
