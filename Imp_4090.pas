unit Imp_4090;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4090 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    lbl_setor: TQRLabel;
    QRLabel6: TQRLabel;
    lbl_usuario: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure lbl_setorPrint(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure lbl_usuarioPrint(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FSetor, FUsuario, FProcesso, FAno, FInscricao, FCorProc, FPeriodoIni, FPeriodoFin : String ;
  end;

var
  Frm_Imp_4090: TFrm_Imp_4090;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4090.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FSetor;
end;

procedure TFrm_Imp_4090.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
 value := FProcesso ;
end;

procedure TFrm_Imp_4090.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_processoporsetor.RecordCount);
end;

procedure TFrm_Imp_4090.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FAno;
end;

procedure TFrm_Imp_4090.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FInscricao;
end;

procedure TFrm_Imp_4090.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCorProc;
end;

procedure TFrm_Imp_4090.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FPeriodoFin;
end;

procedure TFrm_Imp_4090.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FPeriodoIni;
end;

procedure TFrm_Imp_4090.lbl_setorPrint(sender: TObject; var Value: String);
begin
  inherited;
  if FSetor = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
    if FUsuario = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  if FInscricao = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoIni = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoFin = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if FCorProc = '' then
    value := '';
end;

procedure TFrm_Imp_4090.lbl_usuarioPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if FProcesso = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  if FAno = '' then
    value := '';
end;

procedure TFrm_Imp_4090.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FUsuario;
end;

end.
