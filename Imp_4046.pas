unit Imp_4046;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, Qrctrls, QuickRpt, ExtCtrls;

type
  TFrm_Imp_4046 = class(TFrm_Imp_Basico)
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
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTI : double ;
  public
    { Public declarations }
    FCod_Desconto, FEmpresaFolha : String ;
  end;

var
  Frm_Imp_4046: TFrm_Imp_4046;

implementation
Uses dtm_principal2, Fun_Data, Fun_Beneficiario, Fun_STR, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4046.QRDBText7Print(sender: TObject;
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

procedure TFrm_Imp_4046.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  wTI := 0 ;
end;

procedure TFrm_Imp_4046.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatFloat('########0',wTI) ;
end;

end.
