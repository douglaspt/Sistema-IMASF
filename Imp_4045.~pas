unit Imp_4045;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_4045 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel9: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    qrl_nomesuper: TQRLabel;
    qrl_cargosuper: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrl_nomesuperPrint(sender: TObject; var Value: String);
    procedure qrl_cargosuperPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FData, FPeriodo, FNumero, FChefiaADM, FCargoADM, Fnomesuper, FCargosuper : String ;
  end;

var
  Frm_Imp_4045: TFrm_Imp_4045;

implementation
Uses dtm_principal, Fun_Data, Rel_DependRenovacao, Fun_Beneficiario, Fun_Str;
{$R *.DFM}

procedure TFrm_Imp_4045.QRLabel5Print(sender: TObject;
  var Value: String);
var FDtReferencia : String;
begin
  with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
  begin
    FDtReferencia := Data_Format('01/mm/yyyy',Data_Soma1mes(Data_BOM(FieldByName('dtrenovacao_dep').AsDateTime)));
    {if Data_Month(FieldByName('dtrenovacao_dep').AsDateTime) = 12 then
      FDtReferencia := '01/'+Data_Format('mm',Data_Soma1mes(FieldByName('dtnascim_ben').AsDateTime))+'/'+IntToStr(StrToInt(Data_Format('yyyy', Date)) +1)
    else
      FDtReferencia := '01/'+Data_Format('mm',Data_Soma1mes(FieldByName('dtnascim_ben').AsDateTime))+'/'+Data_Format('yyyy', Date);  }
  end;
  value := 'Vimos pelo presente informar que, a partir de  '+FDtReferencia+',  a assistência médica do(a),';
end;

procedure TFrm_Imp_4045.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
    value := fieldbyname('nome_ben').AsString+', inscrição '+FormatarCarteirinha(fieldbyname('cod_empresa').AsString+
    fieldbyname('cod_plano').AsString+STR_AddZeros(fieldbyname('inscricao_ben').AsString,5)+
    STR_AddZeros(fieldbyname('titulacartei_ben').AsString,2)+fieldbyname('digito_ben').AsString);

end;

procedure TFrm_Imp_4045.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   value := 'São Bernardo do Campo, '+ formatdatetime('dd " de " mmmm " de " yyyy', date ) ;
end;

procedure TFrm_Imp_4045.QRLabel1Print(sender: TObject;
  var Value: String);
begin
  value := FNumero ;
end;

procedure TFrm_Imp_4045.QRLabel2Print(sender: TObject; var Value: String);
begin
//  value := 'TRANSFERÊNCIA DE DEPENDENTE PARA ASSISTIDO - '+
//  Fdt_principal.spc_cons_adm_dependrenovacaocarta.fieldbyname('descricao_pla').AsString;
end;

procedure TFrm_Imp_4045.QRLabel4Print(sender: TObject; var Value: String);
begin
  value := FChefiaADM;
end;

procedure TFrm_Imp_4045.QRBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:= 'Processo n° ' + Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('processo_ben').AsString;
  if Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('processo_ben').AsString = '0' then
     QRLabel7.Caption:= '';
  QRLabel30.Caption:= FCargoADM;
  QRLabel8.Caption:= Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('cidade_ben').AsString + ' - ' +
                     Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('sigla_uf').AsString;
end;

procedure TFrm_Imp_4045.qrl_nomesuperPrint(sender: TObject;
  var Value: String);
begin
  Value:= Fnomesuper;
end;

procedure TFrm_Imp_4045.qrl_cargosuperPrint(sender: TObject;
  var Value: String);
begin
  Value:= FCargosuper;
end;

end.
