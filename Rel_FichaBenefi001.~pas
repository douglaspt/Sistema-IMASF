unit Rel_FichaBenefi001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_FichaBenefi001 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
  wInscricao, wCod_Beneficiario : String;

    { Public declarations }
  end;                                                                          

var
  Frm_Rel_FichaBenefi001: TFrm_Rel_FichaBenefi001;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_FichaBenefi001.FormCreate(Sender: TObject);
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

function TFrm_Rel_FichaBenefi001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Incrição do Beneficiário deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_carteira.name, 'Um beneficiário deve ser selecionado !', VLD_Preenchido ));
end;

procedure TFrm_Rel_FichaBenefi001.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@cod_plano').AsString := '0';
    ParamByName('@tipo_sit').AsString := '0';
    open;
  end;
  Frm_Imp_Adm_FichaBenefi001 := TFrm_Imp_Adm_FichaBenefi001.Create(Self);
  Frm_Imp_Adm_FichaBenefi001.QuickRep1.Preview;
  Frm_Imp_Adm_FichaBenefi001.Release;
  Fdt_principal2.spc_cons_adm_beneficiario002.close;
end;

procedure TFrm_Rel_FichaBenefi001.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_FichaBenefi001.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
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

procedure TFrm_Rel_FichaBenefi001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if copy(edt_carteira.Text,11,2) = '00' then begin
    Dlg_Alerta('Não é possível emitir o relatório pois o beneficiário selecionado não é um dependente ou assistido !', self);
    Exit;
  end;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := copy(edt_carteira.Text,11,2);
    ParamByName('@cod_plano').AsString := '0';
    ParamByName('@tipo_sit').AsString := '0';
    open;
  end;
  Frm_Imp_Adm_FichaBenefi002 := TFrm_Imp_Adm_FichaBenefi002.Create(Self);
  Frm_Imp_Adm_FichaBenefi002.QuickRep1.Preview;
  Frm_Imp_Adm_FichaBenefi002.Release;
  Fdt_principal2.spc_cons_adm_beneficiario002.close;
end;

procedure TFrm_Rel_FichaBenefi001.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := '0';
    open;
  end;
  Frm_Imp_Adm_Requerimento001 := TFrm_Imp_Adm_Requerimento001.Create(Self);
  Frm_Imp_Adm_Requerimento001.QuickRep1.Preview;
  Frm_Imp_Adm_Requerimento001.Release;
  Fdt_principal2.spc_cons_adm_beneficiario002.close;
end;

procedure TFrm_Rel_FichaBenefi001.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  if wInscricao <> '' then begin
    edt_inscricao_ben.Text := wInscricao;
    edt_inscricao_benButtonClick(self);
  end;
end;

procedure TFrm_Rel_FichaBenefi001.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

end.



