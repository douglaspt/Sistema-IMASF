unit Imp_4106;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4106 = class(TFrm_Imp_Basico)
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand4: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText18: TQRDBText;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);

  private
    { Private declarations }
  public
    { Public declarations }
    FDtAgendamentoIni, FDtAgendamentoFin, FDtSistemaIni, FDtSistemaFin, Fusuario, FSituacao, FOrdem  : String ;
  end;

var
  Frm_Imp_4106: TFrm_Imp_4106;

implementation
uses dtm_principal4;
{$R *.DFM}

procedure TFrm_Imp_4106.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  value := IntToStr(fdt_principal4.spc_cons_adm_agendamentos.RecordCount);
end;

procedure TFrm_Imp_4106.QRLabel7Print(sender: TObject; var Value: String);
begin
  inherited;
  if FDtAgendamentoIni <> '' then
    value := 'Data do Agendamento de  '+FDtAgendamentoIni
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  if FDtAgendamentoFin <> '' then
    value := 'até  '+FDtAgendamentoFin
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  if FDtSistemaIni <> '' then
    value := 'Data do Sistema de  '+FDtSistemaIni
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  if FDtSistemaFin <> '' then
    value := 'até  '+FDtSistemaFin
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  if Fusuario <> '' then
    value := 'Usuário  '+Fusuario
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if fdt_principal4.spc_cons_adm_agendamentos.FieldByName('status_age').AsInteger = 0 then
    value := 'Não Executado';
  if fdt_principal4.spc_cons_adm_agendamentos.FieldByName('status_age').AsInteger = 1 then
    value := 'Executado';
  if fdt_principal4.spc_cons_adm_agendamentos.FieldByName('status_age').AsInteger = 9 then
    value := 'Excluído';
end;

procedure TFrm_Imp_4106.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRBand4.Height:= 21;
  if Fdt_principal4.spc_cons_adm_agendamentos.FieldByName('dtInicioCarencia_agc').Text = '' then
     QRBand4.Height:= 0;
end;

procedure TFrm_Imp_4106.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  if FSituacao <> '' then
    value := 'Situação: '+ FSituacao
  else
    value := '';
end;

procedure TFrm_Imp_4106.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  if FOrdem <> '' then
    value := 'Ordem: '+ FOrdem
  else
    value := '';
end;

end.


