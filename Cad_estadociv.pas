unit Cad_estadociv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton;

type
  TFrm_Cad_estadociv = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_civ: TEdit;
    edt_cod_estadociv: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_estadocivButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_estadociv: TFrm_Cad_estadociv;

implementation
uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_estadociv.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Estado Civil' ;
  FEditChave    := 'edt_cod_estadociv' ;
  FEditAlteracao:= 'edt_nome_civ' ;
  FUltFoco      := 'edt_nome_civ' ;
  FTitPesquisa  := 'Localizar Estado Civil' ;
  FPesquisa     := 'cod_estadociv, nome_civ' ;
  FPesquisaTit  := 'Código, Estado Civil' ;
  inherited;

end;

function TFrm_Cad_estadociv.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_estadociv.name, 'O código do estado civil deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_civ.name, 'O campo estado civil deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_estadociv.edt_cod_estadocivButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
