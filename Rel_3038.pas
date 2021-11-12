unit Rel_3038;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3038 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel5: TPanel;
    RdG_OrdemImpressao: TRadioGroup;
    cbx_cod_usuario: TDCComboBox;
    Btn_LimpaCampos: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3038: TFrm_Rel_3038;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, dtm_principal3, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_4063, dtm_principal ;

{$R *.DFM}

procedure TFrm_Rel_3038.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3038.CriticaParametros : Boolean ;
begin
  if (edt_inscricao_ben.Text = '') and (cbx_cod_usuario.text = '') then begin
    result := true;
    Dlg_Alerta ('O campo Inscrição ou Nome Usuário devem ser preenchido', Self); 
  end else
    result := false;
  
end;

procedure TFrm_Rel_3038.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_histbeneficiario do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@cod_usuario').AsString := cbx_cod_usuario.valueitem;
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4063 := TFrm_Imp_4063.Create(Self);
  Frm_Imp_4063.QuickRep1.Preview;
  Frm_Imp_4063.Release;
  fdt_principal3.spc_cons_adm_histbeneficiario.close;
end;

procedure TFrm_Rel_3038.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin

end;

procedure TFrm_Rel_3038.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
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
end;
procedure TFrm_Rel_3038.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  BAS_CarregarCombo('cbx_cod_usuario', 'nome_usu');
end;

procedure TFrm_Rel_3038.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.text := '';
  edt_cod_beneficiario.Text := '';
  edt_carteira.text := '';
  edt_nome.text := '';
  cbx_cod_usuario.Clear;
  cbx_cod_usuario.ValueItem := '0' ;
  cbx_cod_usuario.Refresh;
  FormShow(self);
end;

procedure TFrm_Rel_3038.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

end.



