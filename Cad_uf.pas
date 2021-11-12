unit Cad_uf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg, BEdit;

type
  TFrm_Cad_uf = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    edt_cod_uf: TEditButton;
    edt_sigla_uf: TBEdit;
    edt_nome_uf: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_ufButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_uf: TFrm_Cad_uf;

implementation
uses Constantes;
{$R *.DFM}

procedure TFrm_Cad_uf.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Unidades da Federação (Estados)' ;
  FEditChave    := 'edt_cod_uf' ;
  FEditAlteracao:= 'edt_sigla_uf' ;
  FUltFoco      := 'edt_nome_uf' ;
  FTitPesquisa  := 'Localizar UF' ;
  FPesquisa     := 'cod_uf, sigla_uf, nome_uf' ;
  FPesquisaTit  := 'Código, Sigla, Estado' ;
  inherited;

end;

function TFrm_Cad_uf.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_uf.name, 'O código de UF deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sigla_uf.name, 'A sigla de UF deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_uf.name, 'O nome de UF deve ser preenchido !', VLD_Preenchido )) then
      Exit;
  result := false ;
end;

procedure TFrm_Cad_uf.edt_cod_ufButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
