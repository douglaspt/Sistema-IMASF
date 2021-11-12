unit Imp_Adm_FichaBenefi001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_Adm_FichaBenefi001 = class(TFrm_Imp_Basico)
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel47: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRStringsBand4: TQRStringsBand;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRGroup4: TQRGroup;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRGroup5: TQRGroup;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRGroup6: TQRGroup;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText28: TQRDBText;
    QRGroup7: TQRGroup;
    QRLabel33: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText35: TQRDBText;
    QRGroup8: TQRGroup;
    QRLabel35: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel48: TQRLabel;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText45: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRDBText44Print(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Adm_FichaBenefi001: TFrm_Imp_Adm_FichaBenefi001;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data, dtm_principal5, Fun_DB;

{$R *.DFM}

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText2Print(sender: TObject;
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

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText11Print(sender: TObject;
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

procedure TFrm_Imp_Adm_FichaBenefi001.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  printband := fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('titulacartei_ben').AsString <> '0' ;
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := STR_GetDescricaoSexo(value);
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_GetIdadeExt(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtnascim_ben').asdatetime,date);
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText44Print(sender: TObject;
  var Value: String);
begin
  inherited;
  with Fdt_principal5.spc_cons_adm_vlcontribuicao do begin
    close;
    parambyname('@cod_beneficiario').AsString := fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('cod_beneficiario').AsString;
    open;
  end;
  Value := FormatFloat('###,###,##0.00',Fdt_principal5.spc_cons_adm_vlcontribuicao.fieldByName('vldesconto_adf').AsFloat);
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRGroup2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv '+
  'from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar and '+
  'cod_beneficiario = '+fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('cod_beneficiario').AsString+
  ' and (c.dtlimite_car >= GETDATE() or (c.dtlimite_car is null)) order by c.cod_nivelcar') > 0 then
  while not Tab.Eof do
  begin
    QRMemo1.Lines.Add((STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
    STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
    STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
    Tab.FieldByName('informacao_car').AsString));
    Tab.Next;
  end
  else
  QRMemo1.Lines.Add('N�o h� Car�ncias');
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRGroup8BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DB_OpenSQL('select obs_ben from tbl_beneficiario where cod_beneficiario = '+
  fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('cod_beneficiario').AsString);
  QRMemo2.Lines.Add(Tab.fieldByname('obs_ben').AsString);
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  QRMemo1.Lines.Clear;
  QRMemo2.Lines.Clear;
end;

procedure TFrm_Imp_Adm_FichaBenefi001.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('matriculadebito_seg').AsString+
  ' - '+fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('digitomatdeb_seg').AsString;
end;

end.
