unit Cad_erroglosa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_erroglosa = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_cod_erroglosa: TEditButton;
    edt_descricao_erg: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_erroglosaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_erroglosa: TFrm_Cad_erroglosa;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_erroglosa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Erros da Glosas' ;
  FEditChave    := 'edt_cod_erroglosa' ;
  FEditAlteracao:= 'edt_cod_erroglosa' ;
  FUltFoco      := 'edt_descricao_erg' ;
  FTitPesquisa  := 'Localizar Erros da Glosas' ;
  FPesquisa     := 'cod_erroglosa, descricao_erg' ;
  FPesquisaTit  := 'Código, Nome da Empresa' ;
  inherited;

end;

function TFrm_Cad_erroglosa.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_erroglosa.name, 'O código  deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_erg.name, 'O nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_erroglosa.edt_cod_erroglosaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
