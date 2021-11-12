unit Imp_4123;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4123 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FTLBI, FTLBC, FTLMS, FTLTP, TlBasBI, TlIntBI, TlEspBI, TlBasBC, TlIntBC, TlEspBC,
    TlBasMS, TlIntMS, TlEspMS, TlBasTP, TlIntTP, TlEspTP : Integer;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesAnoReferencia : String ;
  end;

var
  Frm_Imp_4123: TFrm_Imp_4123;

implementation
uses dtm_principal, dtm_principal5;
{$R *.DFM}

procedure TFrm_Imp_4123.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4123.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4123.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
    if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyname('tipo_oce').asstring = 'I' then
  value := 'Beneficiários Inscritos';
  if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyname('tipo_oce').asstring = 'T' then
  value := 'Transferência de Planos';
  if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyname('tipo_oce').asstring = 'M' then
  value := 'Mudança de Situação';
  if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyname('tipo_oce').asstring = 'C' then
  value := 'Beneficiários Cancelados';
end;

procedure TFrm_Imp_4123.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := not(fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'X');
end;

procedure TFrm_Imp_4123.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := not(fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'X');
end;

procedure TFrm_Imp_4123.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  if (fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'I') then begin
    FTLBI := FTLBI + 1;
    case fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('cod_plano').AsInteger of
      1 : TlBasBI := TlBasBI + 1;
      2 : TlIntBI := TlIntBI + 1;
      3 : TlEspBI := TlEspBI + 1;
    end;  
  end;
  if (fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'T') then begin
    FTLTP := FTLTP + 1;
    case fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('cod_plano').AsInteger of
      1 : TlBasTP := TlBasTP + 1;
      2 : TlIntTP := TlIntTP + 1;
      3 : TlEspTP := TlEspTP + 1;
    end;
  end;
  if (fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'M') then begin
    FTLMS := FTLMS + 1;
    case fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('cod_plano').AsInteger of
      1 : TlBasMS := TlBasMS + 1;
      2 : TlIntMS := TlIntMS + 1;
      3 : TlEspMS := TlEspMS + 1;
    end;
  end;
  if (fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'C') then begin
    FTLBC := FTLBC + 1;
    case fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('cod_plano').AsInteger of
      1 : TlBasBC := TlBasBC + 1;
      2 : TlIntBC := TlIntBC + 1;
      3 : TlEspBC := TlEspBC + 1;
    end;
  end;
end;

procedure TFrm_Imp_4123.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TlBasBI := 0;
  TlIntBI := 0;
  TlEspBI := 0;
  FTLBI := 0;
  TlBasTP := 0;
  TlIntTP := 0;
  TlEspTP := 0;
  FTLTP := 0;
  TlBasMS := 0;
  TlIntMS := 0;
  TlEspMS := 0;
  FTLMS := 0;
  TlBasBC := 0;
  TlIntBC := 0;
  TlEspBC := 0;
  FTLBC := 0;
end;

procedure TFrm_Imp_4123.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBI);
end;

procedure TFrm_Imp_4123.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLTP);
end;

procedure TFrm_Imp_4123.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLMS);
end;

procedure TFrm_Imp_4123.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBC);
end;

procedure TFrm_Imp_4123.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FMesAnoReferencia;
end;

procedure TFrm_Imp_4123.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoInicial = '' then
    Value := '';
end;

procedure TFrm_Imp_4123.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
    if FPeriodoFinal = '' then
    Value := '';
end;

procedure TFrm_Imp_4123.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  if FMesAnoReferencia = '' then
    Value := '';
end;

procedure TFrm_Imp_4123.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasBI);
end;

procedure TFrm_Imp_4123.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntBI);
end;

procedure TFrm_Imp_4123.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspBI);
end;

procedure TFrm_Imp_4123.QRLabel32Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasTP);
end;

procedure TFrm_Imp_4123.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntTP);
end;

procedure TFrm_Imp_4123.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspTP);
end;

procedure TFrm_Imp_4123.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasMS);
end;

procedure TFrm_Imp_4123.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntMS);
end;

procedure TFrm_Imp_4123.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspMS);
end;

procedure TFrm_Imp_4123.QRLabel34Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasBC);
end;

procedure TFrm_Imp_4123.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntBC);
end;

procedure TFrm_Imp_4123.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspBC);
end;

end.
