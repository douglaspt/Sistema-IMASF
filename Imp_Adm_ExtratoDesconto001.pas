unit Imp_Adm_ExtratoDesconto001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls, QRExport;

type
  TFrm_Imp_Adm_ExtratoDesconto001 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand4: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLTlCons: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVP : double ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmpresaFolha : String ;
  end;

var
  Frm_Imp_Adm_ExtratoDesconto001: TFrm_Imp_Adm_ExtratoDesconto001;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR;

{$R *.DFM}

procedure TFrm_Imp_Adm_ExtratoDesconto001.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTVP := wTVP + Fdt_principal2.spc_cons_adm_descontofolha03.FieldByName('vldesconto_adf').AsFloat;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTvI) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  wTVI := wTVI + 1;
end;

procedure TFrm_Imp_Adm_ExtratoDesconto001.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if FEmpresaFolha = '' then
    value := 'Todos'
  else
    value := FEmpresaFolha ;
end;

end.
