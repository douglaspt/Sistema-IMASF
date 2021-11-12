unit Imp_4107;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Imp_Basico, ExtCtrls, Qrctrls, QuickRpt;

type
  TFrm_Imp_4107 = class(TFrm_Imp_Basico)
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    lbl_nomemaior2000: TQRLabel;
    lbl_secaomaior2000: TQRLabel;
    lbl_tracomaior2000: TQRLabel;
    lbl_cidade2000: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    QRShape3: TQRShape;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    QRLabel32: TQRLabel;
    QRShape5: TQRShape;
    QRLabel33: TQRLabel;
    QRShape6: TQRShape;
    QRLabel34: TQRLabel;
    QRShape8: TQRShape;
    QRLabel36: TQRLabel;
    QRShape9: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure lbl_cidade2000Print(sender: TObject; var Value: String);
    procedure lbl_nomemaior2000Print(sender: TObject; var Value: String);
    procedure lbl_secaomaior2000Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    FRevContas, FCargoUsuario, FNomeusuario, FResolucao, FCargoChefe,
    FPortaria, FDotacao, FSetor01, FSetor05, FSetor09, FResponsavel01, FResponsavel05, FResponsavel09 : String;
    WTLPagar : double;
    FAutorizPaciente : boolean;
    { Public declarations }
  end;

var
  Frm_Imp_4107: TFrm_Imp_4107;

implementation
uses dtm_principal4, Fun_Data, Fun_DB, Fun_Acesso;
{$R *.DFM}

procedure TFrm_Imp_4107.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := '                    Tendo em vista os documentos apresentados sob protocolo '+
  'acima descrito, conferi e calculei o reembolso solicitado, nos termos da " Resolução nº. '+
  FResolucao+'."';
end;

procedure TFrm_Imp_4107.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
//  value := FPortaria+', '+FormatDateTime('dd', Date)+' de '+FormatDateTime('mmmm', Date)+' de '+FormatDateTime('yyyy', Date)+'.';
  value := FPortaria+', ____ de _____________ de '+FormatDateTime('yyyy', Date)+'.';
end;

procedure TFrm_Imp_4107.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FResponsavel09;
end;

procedure TFrm_Imp_4107.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  if fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nome_bco').AsString = '' then
     value := '                    Encaminho para empenho e pagamento às custas da dotação abaixo identificada, em favor de '+fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nomeReemb').AsString+
     ', CPF. '+fdt_principal4.spc_cons_adm_requerimento.fieldbyName('cpfReemb').AsString+
     ', Banco ____________, Agência ______________, Conta______________________.'
  else
     value := '                    Encaminho para empenho e pagamento às custas da dotação abaixo identificada, em favor de '+fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nomeReemb').AsString+
     ', CPF. '+fdt_principal4.spc_cons_adm_requerimento.fieldbyName('cpfReemb').AsString+
     ', ' + fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nome_bco').AsString + ', Agência ' + fdt_principal4.spc_cons_adm_requerimento.fieldbyName('agencia_ctc').AsString + '-' +
     fdt_principal4.spc_cons_adm_requerimento.fieldbyName('digAgencia_ctc').AsString + ', Conta ' + fdt_principal4.spc_cons_adm_requerimento.fieldbyName('contaCorrente_ctc').AsString +
     '.';
end;

procedure TFrm_Imp_4107.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FSetor09;
end;

procedure TFrm_Imp_4107.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FCargoChefe;
end;

procedure TFrm_Imp_4107.QRDBText1Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00',WTLPagar) ;
end;

procedure TFrm_Imp_4107.QRDBText9Print(sender: TObject; var Value: String);
begin
  inherited;

  value := FormatFloat('###,###,##0.00', fdt_principal4.spc_cons_adm_requerimento.fieldbyName('TlVlpagar').AsFloat);

  WTLPagar := WTLPagar + fdt_principal4.spc_cons_adm_requerimento.fieldbyName('TlVlpagar').AsFloat;
end;

procedure TFrm_Imp_4107.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  WTLPagar := 0 ;
end;

procedure TFrm_Imp_4107.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'Dotação: '+FDotacao;
end;

procedure TFrm_Imp_4107.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;


  //Gabinete da Superintendente
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
  FPortaria := Tab.FieldByName('sigla_sti').AsString;
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    FSetor01 := Tab.FieldByName('nome_sti').AsString;
    FResponsavel01 := Tab.FieldByName('chefe').AsString;
    //FCargoChefe := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    FSetor01 := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    FResponsavel01 := Tab.FieldByName('responsavel').AsString;
  end;

  //Diretoria de Assistencia a Saude
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    FSetor05 := Tab.FieldByName('nome_sti').AsString;
    FResponsavel05 := Tab.FieldByName('chefe').AsString;
    //FCargoChefe := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    FSetor05 := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    FResponsavel05 := Tab.FieldByName('responsavel').AsString;
  end;
     {
  //Seção Médica
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 48');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    FSetor09 := Tab.FieldByName('nome_sti').AsString;
    FResponsavel09 := Tab.FieldByName('chefe').AsString;
    //FCargoChefe := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    FSetor09 := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    FResponsavel09 := Tab.FieldByName('responsavel').AsString;
  end;
  }

  FSetor09 := 'Seção Médica';
  FResponsavel09 := FNome_Usu;
end;

procedure TFrm_Imp_4107.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  value := FormatFloat('###,###,##0.00', fdt_principal4.spc_cons_adm_requerimento.fieldbyName('TlVlinformado').AsFloat);
end;

procedure TFrm_Imp_4107.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  value:= 'Nome ' + fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nome_tdp').Text + ': ' +
                    fdt_principal4.spc_cons_adm_requerimento.fieldbyName('nomeSolicitante').Text;
end;

procedure TFrm_Imp_4107.lbl_cidade2000Print(sender: TObject; var Value: String);
begin
  inherited;
  value := 'S. B. Campo, ____ de _____________ de '+FormatDateTime('yyyy', Date)+'.';
end;

procedure TFrm_Imp_4107.lbl_nomemaior2000Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FResponsavel05;
end;

procedure TFrm_Imp_4107.lbl_secaomaior2000Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FSetor05;
end;

end.
