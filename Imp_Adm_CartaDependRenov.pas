unit Imp_Adm_CartaDependRenov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Adm_CartaDependRenov = class(TForm)
    QuickRep1: TQuickRep;
    QRBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FData, FPeriodo, FNumero, FChefiaADM, FCargoADM, Texto, WValor: String;
  end;

var
  Frm_Imp_Adm_CartaDependRenov: TFrm_Imp_Adm_CartaDependRenov;

implementation
Uses dtm_principal, Fun_Data, Rel_DependRenovacao, Fun_Beneficiario, Fun_Str,
     Fun_DB, dtm_principal6;
{$R *.DFM}

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel5Print(sender: TObject;
  var Value: String);
begin
//  value := FData;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  value := value + ', ' ;
//    value := fieldbyname('descricao_pla').AsString+




{  with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
    value := value + ', inscrição número '+FormatarCarteirinha(fieldbyname('cod_empresa').AsString+
    fieldbyname('cod_plano').AsString+STR_AddZeros(fieldbyname('inscricao_ben').AsString,5)+
    STR_AddZeros(fieldbyname('titulacartei_ben').AsString,2)+fieldbyname('digito_ben').AsString);}
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   value := 'São Bernardo do Campo, '+ formatdatetime('dd " de " mmmm " de " yyyy', date ) ;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel1Print(sender: TObject;
  var Value: String);
begin
  value := FNumero ;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
    value := fieldbyname('descricao_pla').AsString;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  value := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  DB_ClearSql;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  value := FChefiaADM;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  value := FCargoADM;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  value := '                   Para sua facilidade, efetuamos a transferência automática no '+
  Fdt_principal.spc_cons_adm_dependrenovacaocarta.fieldbyname('descricao_pla').AsString;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel24Print(sender: TObject;
  var Value: String);
begin
//  Value := Fdt_principal.spc_cons_adm_dependrenovacaocarta.fieldbyname('descricao_pla').AsString;
  Value := '';
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  Value:= '';
{    value := '(fx etária 18 a 29 anos)      R$      124,14'
  else
    value := '(fx etária 18 a 29 anos)      R$      168,44';}
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Fdt_principal.spc_cons_adm_dependrenovacaocarta.fieldbyname('cod_plano').AsInteger = 2 then
    WValor := '124,14'
  else
    WValor := '168,44';
  Texto:= '                   Considerando a maioridade atingida pelo seu(sua) filho(a) ' + Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('nome_ben').Text +
          ', na data de ' + Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('diaaniversario').Text + ', vimos comunicar o seu desligamento do IMASF, na condição de dependente, inscrevendo-o(a), todavia, como assistido(a), no plano ' +
          Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('descricao_pla').Text + ', do qual, V.Sa. é o titular, cuja contribuição é de R$ ' + WValor + '.';
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  Value:= Fdt_principal.spc_cons_adm_dependrenovacaocarta.FieldByName('diaaniversario').Text;
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  if Fdt_principal.spc_cons_adm_dependrenovacaocarta.fieldbyname('cod_plano').AsInteger = 2 then
    value := 'R$  124,14.'
  else
    value := 'R$  168,44.';
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  Value:= Value + ',';
end;

procedure TFrm_Imp_Adm_CartaDependRenov.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  Value:= Texto;
end;

end.
