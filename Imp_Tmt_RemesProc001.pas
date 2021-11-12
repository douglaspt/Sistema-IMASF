unit Imp_Tmt_RemesProc001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_Tmt_RemesProc001 = class(TFrm_Imp_Basico)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FDE, FPara, FRemetente, FDestin : String;
  end;

var
  Frm_Imp_Tmt_RemesProc001: TFrm_Imp_Tmt_RemesProc001;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data;

{$R *.DFM}

procedure TFrm_Imp_Tmt_RemesProc001.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_tramitacaoremessa.fieldbyname('processo_tmt').asstring +
  '/'+fdt_principal2.spc_cons_tramitacaoremessa.fieldbyname('ano_tmt').asstring ;
end;

procedure TFrm_Imp_Tmt_RemesProc001.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if fdt_principal2.spc_cons_tramitacaoremessa.fieldbyname('inscricao_ben').asinteger = 0 then
    value := fdt_principal2.spc_cons_tramitacaoremessa.fieldbyname('interessado_tmt').asstring
  else
    value := fdt_principal2.spc_cons_tramitacaoremessa.fieldbyname('nome_ben').asstring;
end;

procedure TFrm_Imp_Tmt_RemesProc001.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FRemetente;
end;

procedure TFrm_Imp_Tmt_RemesProc001.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FDE;
end;

procedure TFrm_Imp_Tmt_RemesProc001.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
 Value := FPara;
end;

procedure TFrm_Imp_Tmt_RemesProc001.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FDestin;
end;

end.
