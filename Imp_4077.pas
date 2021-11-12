unit Imp_4077;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4077 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbl_inscricao: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_nome: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    lbl_processo: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
 FInsc, FNome, FdtCriacao, FCorPasta, FIntere, FAssunto, FObs, FCod_Proc, FAno   : String ;

  end;

var
  Frm_Imp_4077: TFrm_Imp_4077;

implementation
uses dtm_principal2;
{$R *.DFM}

procedure TFrm_Imp_4077.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FNome ;
end;

procedure TFrm_Imp_4077.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FdtCriacao;
end;

procedure TFrm_Imp_4077.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FInsc;
end;

procedure TFrm_Imp_4077.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FCorPasta;
end;

procedure TFrm_Imp_4077.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
   Value := FIntere; 
end;

procedure TFrm_Imp_4077.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FAssunto;
end;

procedure TFrm_Imp_4077.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FObs;
end;

procedure TFrm_Imp_4077.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
 Value := FCod_Proc


end;

procedure TFrm_Imp_4077.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
 Value := FAno ;

end;

procedure TFrm_Imp_4077.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal2.spc_cons_tramitacao.RecordCount);
end;

end.
