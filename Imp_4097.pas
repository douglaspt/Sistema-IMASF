unit Imp_4097;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_4097 = class(TFrm_Imp_Basico)
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel35: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape3: TQRShape;
    lbl_vldesc: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel29: TQRLabel;
    lbl_nome: TQRLabel;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    qrl_opcimasf: TQRLabel;
    qrl_opcunimed: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRImage1: TQRImage;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText10: TQRDBText;
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure lbl_vldescPrint(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure lbl_nomePrint(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    comp, VlDesc, FChefiaADM : String;
    FVF : Boolean;
  end;

var
  Frm_Imp_4097: TFrm_Imp_4097;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data;

{$R *.DFM}

procedure TFrm_Imp_4097.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
with fdt_principal2.spc_cons_adm_beneficiario002 do
  value := FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) ;
end;

procedure TFrm_Imp_4097.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  printband := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('titulacartei_ben').AsString <> '0' ;
end;

procedure TFrm_Imp_4097.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := STR_GetDescricaoSexo(value);
end;

procedure TFrm_Imp_4097.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_GetIdadeExt(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtnascim_ben').asdatetime,date);
end;

procedure TFrm_Imp_4097.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := '';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('rg_ben').AsString <> '' then
    value := value + 'RG n� '+ fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('rg_ben').AsString
  else
    value := value + '______________' ;
  value := value + ', DATA EMISS�O DO RG ';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtemissaorg_ben').asstring <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtemissaorg_ben').asstring+', '
  else
    value := value + '___/___/______';
  value := value + ', ORG�O EMISS. ';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('orgemissorrg_ben').asstring <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('orgemissorrg_ben').asstring
  else
    value := value + '____________';
  value := value + ', '+ fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_civ').AsString +', ';
end;

procedure TFrm_Imp_4097.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_ben').AsString + ', ';
end;

procedure TFrm_Imp_4097.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'CPF n� '+fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cpf_ben').AsString + ', FONE RESIDENCIAL ' ;
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('foneresi_ben').AsString <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('foneresi_ben').AsString
  else
    value := value + '________________' ;
  value := value + ', FONE COMERCIAL ';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('fonecome_seg').asstring <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('fonecome_seg').asstring
  else
    value := value + '________________';
  value := value + ', ';
end;

procedure TFrm_Imp_4097.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'ENDERE�O '+fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('endereco_ben').AsString + ', ' +
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('bairro_ben').AsString+', ';
end;

procedure TFrm_Imp_4097.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cidade_ben').AsString+', '+
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('sigla_uf').AsString+', '+
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cep_ben').AsString;
end;

procedure TFrm_Imp_4097.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
with fdt_principal2.spc_cons_adm_beneficiario002 do
  value := 'Segurado(a) inscrito(a) neste Instituto sob n� '+FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) + ', no PLANO ' +
  UpperCase(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_pla').AsString)+', ';
end;

procedure TFrm_Imp_4097.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'vem respeitosamente, de acordo com a Legisla��o em vigor, expor e requerer a segunda';
end;

procedure TFrm_Imp_4097.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'via da carteira de identifica��o ';
end;

procedure TFrm_Imp_4097.lbl_vldescPrint(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',StrToFloat(VlDesc));
end;

procedure TFrm_Imp_4097.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;
  if FVF then
    value := 'por motivo de:'
  else
    value := '';
end;

procedure TFrm_Imp_4097.lbl_nomePrint(sender: TObject; var Value: String);
begin
  inherited;
  value := comp;
end;

procedure TFrm_Imp_4097.QRLabel38Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FChefiaADM;
end;

procedure TFrm_Imp_4097.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('processo_ben').AsString;
end;

procedure TFrm_Imp_4097.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  QRImage1.Picture.LoadFromFile('C:\Sistemas\reports\LOGO_IMASF.bmp');
end;

end.
