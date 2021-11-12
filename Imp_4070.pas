unit Imp_4070;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4070 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLTlCons: TQRLabel;
    QRLabel6: TQRLabel;
    QRT_Cod: TQRLabel;
    QRT_vlPg: TQRLabel;
    QRT_Data: TQRLabel;
    QRT_Convenio: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel13: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    wTVI, wTVP, wVLGrupo : double ;
    agrupar : boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Imp_4070: TFrm_Imp_4070;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_4070.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_4070.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_med_extratobenefi003.FieldByName('Qtde_itc').AsInteger;
end;

procedure TFrm_Imp_4070.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_4070.QRLabel17Print(sender: TObject;
  var Value: String);
begin
//  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_4070.QRLabel18Print(sender: TObject;
  var Value: String);
begin
//  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_4070.QRDBText1Print(sender: TObject;
  var Value: String);
begin
with Fdt_principal.spc_cons_med_extratobenefi003 do
  value := FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) ;
end;

procedure TFrm_Imp_4070.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
with Fdt_principal.spc_cons_med_extratobenefi003 do begin
  QRT_Data.Caption := FieldByName('dtrealizacao_itc').AsString ;
  QRT_Convenio.Caption := FieldByName('nomereduzido_con').AsString ;
//  QRT_Qtde.Caption := FieldByName('qtde_itc').AsString ;
  QRT_Cod.Caption := FieldByName('nomeextrato_its').AsString ;
  wVLGrupo := Fdt_principal.spc_cons_med_extratobenefi003.FieldByName('VlPagar_itc').AsFloat ;
  QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
  //VERIFICA SE � UM PACOTE EXAME LABORATORIAL
  if (copy(FieldByName('cod_itemservico').AsString,1,3) = '128') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) then begin
    if not agrupar then begin
      QRT_Cod.Caption := 'EXAMES LABORATORIAIS';
//      QRT_Qtde.Caption := '1';
      wVLGrupo := 0 ;
      while (copy(FieldByName('cod_itemservico').AsString,1,3) = '128') and
      (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
      (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) do begin
        wVLGrupo := wVLGrupo + FieldByName('VlPagar_itc').AsFloat ;
        next ;
      end;
      if not EOF then
        Prior;
      QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
    end else
      PrintBand := false ;
    agrupar := true ;
  end else
    agrupar := false ;
  //VERIFICA SE � MEDICAMENTOS
if (copy(FieldByName('cod_itemservico').AsString,1,5) = '28007') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) then begin
    if not agrupar then begin
      QRT_Cod.Caption := 'MEDICAMENTOS';
//      QRT_Qtde.Caption := '1';
      wVLGrupo := 0 ;
      while (copy(FieldByName('cod_itemservico').AsString,1,5) = '28007') and
      (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
      (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) do begin
        wVLGrupo := wVLGrupo + FieldByName('VlPagar_itc').AsFloat ;
        next ;
      end;
      if not EOF then
        Prior;
      QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
    end else
      PrintBand := false ;
    agrupar := true ;
  end else
    agrupar := false ;
  //VERIFICA SE � MATERIAIS
  if (copy(FieldByName('cod_itemservico').AsString,1,5) = '28008') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) then begin
    if not agrupar then begin
      QRT_Cod.Caption := 'MATERIAIS';
//      QRT_Qtde.Caption := '1';
      wVLGrupo := 0 ;
      while (copy(FieldByName('cod_itemservico').AsString,1,5) = '28008') and
      (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
      (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and (not EOF) do begin
        wVLGrupo := wVLGrupo + FieldByName('VlPagar_itc').AsFloat ;
        next ;
      end;
      if not EOF then
        Prior;
      QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
    end else
      PrintBand := false ;
    agrupar := true ;
  end else
    agrupar := false ;
  //VERIFICA SE � UMA INTERNA��O
  if (FieldByName('cod_acomodacao').AsString <> '5') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and (not EOF) then begin
    if not agrupar then begin
      QRT_Cod.Caption := 'INTERNA��O HOSPITALAR';
//      QRT_Qtde.Caption := '1';
      wVLGrupo := 0 ;
      while (FieldByName('cod_acomodacao').AsString <> '5') and
      (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and (not EOF) do begin
        wVLGrupo := wVLGrupo + FieldByName('VlPagar_itc').AsFloat ;
        next ;
      end;
      if not EOF then
        Prior;
      QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
    end else
      PrintBand := false ;
    agrupar := true ;
  end else
    agrupar := false ;
  wTVP := wTVP + wVLGrupo;
end;
end;

procedure TFrm_Imp_4070.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  Value := 'Per�odo de '+FPeriodoInicial+' at� '+FPeriodoFinal ;
end;

procedure TFrm_Imp_4070.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
//  PrintBand := imprime ;
//  imprime := true ;
end;

end.
