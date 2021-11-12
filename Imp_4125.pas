unit Imp_4125;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4125 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FVlVS, FVlVC : double ;
  public
    { Public declarations }
  FReferencia : String ;

  end;

var
  Frm_Imp_4125: TFrm_Imp_4125;

implementation
uses dtm_principal2, dtm_principal;
{$R *.DFM}

procedure TFrm_Imp_4125.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Listagens de Compras do Mês de:  '+FReferencia;
end;

procedure TFrm_Imp_4125.QRLabel6Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',FVlVS);
end;

procedure TFrm_Imp_4125.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',FVlVC);
end;

procedure TFrm_Imp_4125.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',(FVlVS + FVlVC));
end;

procedure TFrm_Imp_4125.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  FVlVS := 0;
  FVlVC := 0;
end;

procedure TFrm_Imp_4125.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  IF Fdt_principal.spc_cons_adm_descontofolha02.FieldbyName('nome_tse').AsString = 'Não Segurado do IMASF' then
  FVlVC := FVlVC + Fdt_principal.spc_cons_adm_descontofolha02.FieldbyName('vldesconto_adf').AsFloat;
  IF Fdt_principal.spc_cons_adm_descontofolha02.FieldbyName('nome_tse').Asstring <> 'Não Segurado do IMASF' then
  FVlVS := FVlVS + Fdt_principal.spc_cons_adm_descontofolha02.FieldbyName('vldesconto_adf').AsFloat;
  PrintBand := false;
end;

procedure TFrm_Imp_4125.QRDBText1Print(sender: TObject; var Value: String);
begin
  inherited;
  case Fdt_principal.spc_cons_adm_descontofolha02.FieldByName('cod_empresafolha').AsInteger of
   2 : value := 'CAMARA';
   5 : value := 'PREFEITURA';
   15 : value := 'FACULDADE';
   16 : value := 'INSTITUTO';
   61 : value := 'FUND.CRIANCA';
   64 : value := 'ROTATIVO SBC';
   65 : value := 'ASSOC.F.PUBLIC';
   80 : value := 'HMU';
   85 : value := 'FUND.ABC';
   99 : value := 'TESOURARIA';
  end;
end;

end.
