unit Imp_Med_ExtratoItemRelaciona001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_Med_ExtratoItemRelaciona001 = class(TFrm_Imp_Basico)
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTI, wTV, wTP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha : String ;
  end;

var
  Frm_Imp_Med_ExtratoItemRelaciona001: TFrm_Imp_Med_ExtratoItemRelaciona001;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTI := wTI + 1 ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
  wTV := 0 ;
  wTP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTV := wTV + Fdt_principal2.spc_cons_med_extratoitemrelaciona001.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV) ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTP := wTP + Fdt_principal2.spc_cons_med_extratoitemrelaciona001.FieldByName('vlpago_flh').AsFloat;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTP) ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoInicial;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FEmpresaFolha ;
end;

procedure TFrm_Imp_Med_ExtratoItemRelaciona001.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTV-wTP) ;
end;

end.
