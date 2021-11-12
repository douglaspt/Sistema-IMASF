unit Cad_indice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_indice = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_indice: TEditButton;
    edt_sigla_ind: TBEdit;
    edt_nome_ind: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_indiceButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_indice: TFrm_Cad_indice;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_indice.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Indice' ;
  FEditChave    := 'edt_cod_indice' ;
  FEditAlteracao:= 'edt_sigla_ind' ;
  FUltFoco      := 'edt_nome_ind' ;
  FTitPesquisa  := 'Localizar Indice' ;
  FPesquisa     := 'cod_indice, sigla_ind, nome_ind' ;
  FPesquisaTit  := 'Código, Sigla, Nome' ;
  inherited;

end;

function TFrm_Cad_indice.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_indice.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sigla_ind.name, 'O campo Sigla deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_ind.name, 'O campo Nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_indice.edt_cod_indiceButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
