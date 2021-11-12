unit Cad_oficioReembolso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Buttons, BEdit,
  BComboBox, BEditButton;

type
  TFrm_Cad_oficioReembolso = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    edt_obs_ofr: TMemo;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    btn_imprimirAutorizacao: TPDJButton;
    edt_cod_oficioReembolso: TEditButton;
    edt_sequencia_ofr: TBEdit;
    edt_ano_ofr: TBEdit;
    edt_inscricao_ben: TEditButton;
    edt_cod_beneficiario: TEditButton;
    Panel9: TPanel;
    EditButton1: TEditButton;
    EditButton2: TEditButton;
    edt_carteira: TBEdit;
    edt_nome: TBEdit;
    edt_assunto_ofr: TBEdit;
    edt_dtoficio_ofr: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_imprimirAutorizacaoClick(Sender: TObject);
    procedure edt_cod_oficioReembolsoButtonClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String;
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_oficioReembolso: TFrm_Cad_oficioReembolso;

implementation

uses Constantes, Fun_ConsCadastro, Fun_DB, Fun_Beneficiario, Fun_Str,
  Bas_Impressao, Fun_data;

{$R *.DFM}

procedure TFrm_Cad_oficioReembolso.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Oficios de Reembolso' ;
  FEditChave    := 'edt_cod_oficioReembolso' ;
  FEditAlteracao:= 'edt_sequencia_ofr' ;
  FUltFoco      := 'edt_obs_ofr' ;
 // FOcultaIndice := true ;
  inherited;
end;

function TFrm_Cad_oficioReembolso.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_sequencia_ofr.name, 'A Sequ�ncia deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano_ofr.name, 'O Ano deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_beneficiario.name, 'A Inscri��o deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtoficio_ofr.name, 'A Data do Oficio deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_obs_ofr.name, 'A Observa��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_oficioReembolso.BAS_Alterar(Frm:Tform);
begin
  inherited ;
  if edt_cod_beneficiario.Text <> '' then
  begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Cad_oficioReembolso.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_cod_oficioReembolso.Enabled := false;
  edt_sequencia_ofr.SetFocus;
  edt_ano_ofr.Text := FormatDateTime('yyyy',Date);
  edt_assunto_ofr.Text := 'Indeferimento de pedido de reembolso';
end;

procedure TFrm_Cad_oficioReembolso.btn_imprimirAutorizacaoClick(
  Sender: TObject);
begin
  inherited;
  Frm_Bas_Impressao.FCampo1 := edt_sequencia_ofr.Text+'/'+edt_ano_ofr.Text;
  Frm_Bas_Impressao.FCampo2 :=  FormatDateTime('dd',date)+' de '+
  Data_GetMonthName(StrToInt(FormatDateTime('mm',Date)))+' de '+FormatDateTime('yyyy',Date);
  Frm_Bas_Impressao.FCampo3 := edt_assunto_ofr.Text;
  Frm_Bas_Impressao.FCampo4 := edt_nome.Text;
  Frm_Bas_Impressao.FCampo5 := edt_obs_ofr.Text;
  Frm_Bas_Impressao.showReport(4168);
end;

procedure TFrm_Cad_oficioReembolso.edt_cod_oficioReembolsoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_oficioReembolso.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FTit_Benefeciario, 'Localizar Beneficiarios', FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
  FPesquisaSQL := '';
end;

procedure TFrm_Cad_oficioReembolso.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Cad_oficioReembolso.btn_alterarClick(Sender: TObject);
begin
  FTitPesquisa  := 'Localizar Oficios de Reembolso' ;
  FPesquisaTit  := 'C�digo, Sequ�ncia, Ano, Inscri��o, Nome do Benefici�rio, Dt. Oficio, Observa��o ' ;
  FPesquisaSQL := 'select o.cod_oficioReembolso, o.sequencia_ofr, o.ano_ofr, b.inscricao_ben, b.nome_ben, o.dtoficio_ofr,'+
  ' o.obs_ofr from tbl_oficioReembolso  o inner join tbl_beneficiario b '+
  ' on o.cod_beneficiario = b.cod_beneficiario where cod_oficioReembolso > 0 ';
  inherited;
  btn_alterarClick(self);
end;

end.
