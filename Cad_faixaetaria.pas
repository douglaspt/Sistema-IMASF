unit Cad_faixaetaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_faixaetaria = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_cod_faixaetaria: TEditButton;
    edt_descricao_fxe: TBEdit;
    edt_idadeIni_fxe: TBEdit;
    edt_idadefin_fxe: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_faixaetariaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_faixaetaria: TFrm_Cad_faixaetaria;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_faixaetaria.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Faixa Etaria' ;
  FEditChave    := 'edt_cod_faixaetaria' ;
  FEditAlteracao:= 'edt_descricao_fxe' ;
  FUltFoco      := 'edt_idadefin_fxe' ;
  FTitPesquisa  := 'Localizar Faixa Etaria' ;
  FPesquisa     := 'cod_faixaetaria, descricao_fxe, idadeIni_fxe, idadefin_fxe ' ;
  FPesquisaTit  := 'Código, Descrição, Idade Inicial, Idadede Final' ;
  inherited;

end;

function TFrm_Cad_faixaetaria.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_faixaetaria.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_fxe.name, 'O campo descrição deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_idadeIni_fxe.name, 'O campo Idade Inicial deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_idadefin_fxe.name, 'O campo Idade Final deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_faixaetaria.edt_cod_faixaetariaButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
