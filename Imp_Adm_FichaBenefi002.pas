unit Imp_Adm_FichaBenefi002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrm_Imp_Adm_FichaBenefi002 = class(TFrm_Imp_Basico)
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRGroup4: TQRGroup;
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
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRGroup5: TQRGroup;
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
    QRGroup6: TQRGroup;
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
    QRLabel6: TQRLabel;
    QRGroup7: TQRGroup;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRLabel42: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel41Print(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FCarteira, FNome, FEmpresa, FPlano, FTipoSeg, FInscricao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Adm_FichaBenefi002: TFrm_Imp_Adm_FichaBenefi002;

implementation

uses dtm_principal2, Fun_Beneficiario, Fun_str, Fun_Data, dtm_principal5, Fun_DB;

{$R *.DFM}

procedure TFrm_Imp_Adm_FichaBenefi002.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  with fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    value := FormatarCarteirinha(
    FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
    STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
    FieldByName('digito_ben').AsString) ;
    FInscricao := FieldByName('inscricao_ben').AsString;
  end;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := STR_GetDescricaoSexo(value);
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := Data_GetIdadeExt(fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('dtnascim_ben').asdatetime,date);
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if fdt_principal2.spc_cons_adm_beneficiario002.FieldByName('titulacartei_ben').AsInteger < 50 then
    value := 'FICHA CADASTRAL DO DEPENDENTE'
  else
    value := 'FICHA CADASTRAL DO ASSISTIDO' ;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRDBText1Print(sender: TObject;
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

procedure TFrm_Imp_Adm_FichaBenefi002.QRGroup3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.cod_empresa, digito_ben,'+
  ' b.nome_ben, b.cod_plano, p.descricao_pla, s.nome_sit, t.nome_tse, e.descricao_emp from tbl_beneficiario b, tbl_sitbeneficiario s,'+
  ' tbl_plano p, tbl_tiposegurado t, tbl_empresa e where b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
  ' and b.cod_plano = p.cod_plano and b.cod_tiposegurado = t.cod_tiposegurado and b.cod_empresa = e.cod_empresa'+
  ' and b.inscricao_ben = '+FInscricao+' and titulacartei_ben = 0');
  FCarteira := FormatarCarteirinha(
  Tab.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
  STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
  STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
  Tab.FieldByName('digito_ben').AsString) ;
  FNome := Tab.FieldByName('nome_ben').AsString;
  FEmpresa := Tab.FieldByName('descricao_emp').AsString;
  FPlano := Tab.FieldByName('descricao_pla').AsString;
  FTipoSeg := Tab.FieldByName('nome_tse').AsString;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FCarteira;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FNome;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel39Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FEmpresa;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel40Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FPlano;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRLabel41Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FTipoSeg;
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QRGroup2BeforePrint(
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

procedure TFrm_Imp_Adm_FichaBenefi002.QRGroup6BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DB_OpenSQL('select obs_ben from tbl_beneficiario where cod_beneficiario = '+
  fdt_principal2.spc_cons_adm_beneficiario002.fieldByName('cod_beneficiario').AsString);
  QRMemo2.Lines.Add(Tab.fieldByname('obs_ben').AsString);
end;

procedure TFrm_Imp_Adm_FichaBenefi002.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  QRMemo1.Lines.Clear;
  QRMemo2.Lines.Clear;
end;

end.
