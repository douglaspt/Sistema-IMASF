unit Imp_Adm_Requerimento001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_Adm_Requerimento001 = class(TFrm_Imp_Basico)
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape4: TQRShape;
    QRImage1: TQRImage;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FCodtexto : String;
  end;

var
  Frm_Imp_Adm_Requerimento001: TFrm_Imp_Adm_Requerimento001;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data, Fun_Db;

{$R *.DFM}

procedure TFrm_Imp_Adm_Requerimento001.QRDBText11Print(sender: TObject;
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

procedure TFrm_Imp_Adm_Requerimento001.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  printband := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('titulacartei_ben').AsString <> '0' ;
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := STR_GetDescricaoSexo(value);
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_GetIdadeExt(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtnascim_ben').asdatetime,date);
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := '';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('rg_ben').AsString <> '' then
    value := value + 'RG nº '+ fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('rg_ben').AsString
  else
    value := value + '______________' ;
  value := value + ', DATA EMISSÃO DO RG ';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtemissaorg_ben').asstring <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtemissaorg_ben').asstring
  else
    value := value + '___/___/______';
  value := value + ', ORGÃO EMISS. ';
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('orgemissorrg_ben').asstring <> '' then
    value := value + fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('orgemissorrg_ben').asstring
  else
    value := value + '____________';
  value := value + ', '+ fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_civ').AsString +', ';
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_ben').AsString + ', ';
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'CPF nº '+fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cpf_ben').AsString + ', FONE RESIDENCIAL ' ;
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

procedure TFrm_Imp_Adm_Requerimento001.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'ENDEREÇO '+fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('endereco_ben').AsString + ', BAIRRO ' +
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('bairro_ben').AsString+', ';
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cidade_ben').AsString+', '+
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('sigla_uf').AsString+', '+
  fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('cep_ben').AsString;
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
with fdt_principal2.spc_cons_adm_beneficiario002 do
  value := 'Segurado(a) inscrito(a) neste Instituto sob nº '+FormatarCarteirinha(
  FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
  STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
  FieldByName('digito_ben').AsString) + ', no PLANO ' +
  UpperCase(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('nome_pla').AsString)+', ';
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := 'vem respeitosamente, de acordo com a Legislação em vigor, expor e requerer :';
end;

procedure TFrm_Imp_Adm_Requerimento001.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if FCodtexto <> '' then
  begin
    DB_OpenSQL('select texto_txr from tbl_textoRequerimento where cod_textoRequerimento = '+FCodtexto);
    QRMemo1.Lines.Add(Tab.FieldByName('texto_txr').AsString);
  end else
    QRMemo1.Height := 0;
end;

procedure TFrm_Imp_Adm_Requerimento001.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  QRImage1.Picture.LoadFromFile('C:\Sistemas\reports\LOGO_IMASF.bmp');
end;

procedure TFrm_Imp_Adm_Requerimento001.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('processo_ben').AsString;
end;

end.
