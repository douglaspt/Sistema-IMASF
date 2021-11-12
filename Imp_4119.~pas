unit Imp_4119;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4119 = class(TFrm_Imp_Basico)
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel21: TQRLabel;
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
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel45Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel48Print(sender: TObject; var Value: String);
    procedure QRLabel47Print(sender: TObject; var Value: String);
    procedure QRLabel46Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FTLBI, FTLBC, FTLMS, FTLTP, FTLOM, TlBasBI, TlIntBI, TlEspBI, TlBasBC, TlIntBC, TlEspBC,
    TlBasMS, TlIntMS, TlEspMS, TlBasTP, TlIntTP, TlEspTP, TlBasOM, TlIntOM, TlEspOM  : Integer;
  public
    { Public declarations }
 FPeriodoInicial, FPeriodoFinal, FMesAnoReferencia : String ;

  end;

var
  Frm_Imp_4119: TFrm_Imp_4119;

implementation
uses dtm_principal2, dtm_principal4, dtm_principal5;
{$R *.DFM}

procedure TFrm_Imp_4119.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4119.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FPeriodoFinal;
end;

procedure TFrm_Imp_4119.QRDBText7Print(sender: TObject; var Value: String);
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
  if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyname('tipo_oce').asstring = 'X' then
  value := 'Outras Movimentações (Bloqueio, Desbloqueio, Inscritos Erroneamente, etc)';
end;

procedure TFrm_Imp_4119.QRDBText5Print(sender: TObject; var Value: String);
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
  if (fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('tipo_oce').AsString = 'X') then begin
    FTLOM := FTLOM + 1;
    case fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldbyName('cod_plano').AsInteger of
      1 : TlBasOM := TlBasOM + 1;
      2 : TlIntOM := TlIntOM + 1;
      3 : TlEspOM := TlEspOM + 1;
    end;
  end;
end;

procedure TFrm_Imp_4119.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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
  TlBasOM := 0;
  TlIntOM := 0;
  TlEspOM := 0;
  FTLOM := 0;
end;

procedure TFrm_Imp_4119.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoInicial = '' then
    Value := '';
end;

procedure TFrm_Imp_4119.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  if FPeriodoFinal = '' then
    Value := '';
end;

procedure TFrm_Imp_4119.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  if FMesAnoReferencia = '' then
    Value := '';
end;

procedure TFrm_Imp_4119.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FMesAnoReferencia
end;

procedure TFrm_Imp_4119.QRLabel45Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLOM);
end;

procedure TFrm_Imp_4119.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBI);
end;

procedure TFrm_Imp_4119.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLTP);
end;

procedure TFrm_Imp_4119.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLMS);
end;

procedure TFrm_Imp_4119.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(FTLBC);
end;

procedure TFrm_Imp_4119.QRLabel37Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasBI);
end;

procedure TFrm_Imp_4119.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntBI);
end;

procedure TFrm_Imp_4119.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspBI);
end;

procedure TFrm_Imp_4119.QRLabel38Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasTP);
end;

procedure TFrm_Imp_4119.QRLabel34Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntTP);
end;

procedure TFrm_Imp_4119.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspTP);
end;

procedure TFrm_Imp_4119.QRLabel39Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasMS);
end;

procedure TFrm_Imp_4119.QRLabel35Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntMS);
end;

procedure TFrm_Imp_4119.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspMS);
end;

procedure TFrm_Imp_4119.QRLabel40Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasBC);
end;

procedure TFrm_Imp_4119.QRLabel36Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntBC);
end;

procedure TFrm_Imp_4119.QRLabel32Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspBC);
end;

procedure TFrm_Imp_4119.QRLabel48Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlBasOM);
end;

procedure TFrm_Imp_4119.QRLabel47Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlIntOM);
end;

procedure TFrm_Imp_4119.QRLabel46Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(TlEspOM);
end;

end.
