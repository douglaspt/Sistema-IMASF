unit Imp_4126;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4126 = class(TFrm_Imp_Basico)
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRT_codAutorizacao: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FDtAut, FMedSol, FPacie, FCartei, FNomeConv, FEndConv, FBairroConv, FTelConv,
    FCodAMB, FDescAMB, FAcomod, FObs : String
  end;

var
  Frm_Imp_4126: TFrm_Imp_4126;

implementation
uses dtm_principal2, Fun_Acesso, dtm_principal5;
{$R *.DFM}

procedure TFrm_Imp_4126.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCartei;
end;

procedure TFrm_Imp_4126.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FNome_Usu;
end;

procedure TFrm_Imp_4126.FormCreate(Sender: TObject);
begin
  inherited;
QuickRep1.Font.Name := 'Draft 17cpi';
end;

procedure TFrm_Imp_4126.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := '';
end;

procedure TFrm_Imp_4126.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    QRT_codAutorizacao.Font.Name := 'Draft 10cpi';
end;

procedure TFrm_Imp_4126.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
  value := fdt_principal5.spc_cons_med_autorizainternacao02.fieldByName('bairrojur_con').AsString+
  '     '+fdt_principal5.spc_cons_med_autorizainternacao02.fieldByName('fonedirecao_con').AsString;
end;

procedure TFrm_Imp_4126.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal5.spc_cons_med_autorizainternacao02.fieldByName('cod_crm').AsString+
  ' - '+fdt_principal5.spc_cons_med_autorizainternacao02.fieldByName('medico_crm').AsString;
end;

end.
