unit Imp_Med_ExtratoBenefi004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Med_ExtratoBenefi004 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLTlCons: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRT_Cod: TQRLabel;
    QRT_vlPg: TQRLabel;
    QRT_Data: TQRLabel;
    QRT_Convenio: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    lbl_nomeben: TQRLabel;
    lbl_carteiraben: TQRLabel;
    lbl_periodo: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel13: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRMemo2: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRLTlConsPrint(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure lbl_periodoPrint(sender: TObject; var Value: String);
    procedure lbl_nomebenPrint(sender: TObject; var Value: String);
    procedure lbl_carteirabenPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    wTVI, wTVP, wVLGrupo : double ;
    agrupar : boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, NomeBen, CarteiraBen : String ;
  end;

var
  Frm_Imp_Med_ExtratoBenefi004: TFrm_Imp_Med_ExtratoBenefi004;

implementation
Uses dtm_principal, Fun_Data, Fun_Beneficiario, Fun_STR;
{$R *.DFM}

procedure TFrm_Imp_Med_ExtratoBenefi004.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  wTVI := 0 ;
  wTVP := 0 ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  wTVI := wTVI + Fdt_principal.spc_cons_med_extratobenefi002.FieldByName('Qtde_itc').AsInteger;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.QRLTlConsPrint(sender: TObject;
  var Value: String);
begin
  value := FormatFloat('###,###,##0.00',wTvP) ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.QRLabel17Print(sender: TObject;
  var Value: String);
begin
//  Value := FPeriodoInicial ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.QRLabel18Print(sender: TObject;
  var Value: String);
begin
//  value := FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
with Fdt_principal.spc_cons_med_extratobenefi002 do begin
  QRT_Data.Caption := FieldByName('dtrealizacao_itc').AsString ;
  QRT_Convenio.Caption := FieldByName('nomereduzido_con').AsString ;
//  QRT_Qtde.Caption := FieldByName('qtde_itc').AsString ;
  QRT_Cod.Caption := FieldByName('nomeextrato_its').AsString ;
  wVLGrupo := Fdt_principal.spc_cons_med_extratobenefi002.FieldByName('VlPagar_itc').AsFloat ;
  QRT_vlPg.Caption := FormatFloat('###,###,##0.00', wVLGrupo ) ;
  //VERIFICA SE É UM PACOTE EXAME LABORATORIAL
  if (copy(FieldByName('cod_itemservico').AsString,1,3) = '128') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and
  (FieldByName('cod_acomodacao').AsString = '5') and (not EOF) then begin
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
  //VERIFICA SE É MEDICAMENTOS
if (copy(FieldByName('cod_itemservico').AsString,1,5) = '28007') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and
  (FieldByName('cod_acomodacao').AsString = '5') and (not EOF) then begin
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
  //VERIFICA SE É MATERIAIS
  if (copy(FieldByName('cod_itemservico').AsString,1,5) = '28008') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and
  (FieldByName('dtrealizacao_itc').AsString = QRT_Data.Caption) and
  (FieldByName('cod_acomodacao').AsString = '5') and (not EOF) then begin
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
  //VERIFICA SE É UMA INTERNAÇÃO
  if (FieldByName('cod_acomodacao').AsString <> '5') and
  (FieldByName('nomereduzido_con').AsString = QRT_Convenio.Caption) and (not EOF) then begin
    if not agrupar then begin
      QRT_Cod.Caption := 'INTERNAÇÃO HOSPITALAR';
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

procedure TFrm_Imp_Med_ExtratoBenefi004.lbl_periodoPrint(sender: TObject;
  var Value: String);
begin
  Value := 'Período de '+FPeriodoInicial+' até '+FPeriodoFinal ;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.lbl_nomebenPrint(sender: TObject;
  var Value: String);
begin
  value := NomeBen;
end;

procedure TFrm_Imp_Med_ExtratoBenefi004.lbl_carteirabenPrint(
  sender: TObject; var Value: String);
begin
  value := CarteiraBen;
end;

end.
