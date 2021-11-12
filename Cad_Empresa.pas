unit Cad_Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton;

type
  TFrm_Cad_Empresa = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_empresa: TEditButton;
    edt_nome_emp: TEdit;
    edt_descricao_emp: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_empresaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Empresa: TFrm_Cad_Empresa;

implementation

uses Constantes, dtm_principal4, Bas_Impressao, Fun_ConsCadastro;

{$R *.DFM}

procedure TFrm_Cad_Empresa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Empresas' ;
  FEditChave    := 'edt_cod_empresa' ;
  FEditAlteracao:= 'edt_nome_emp' ;
  FUltFoco      := 'edt_descricao_emp' ;
  FTitPesquisa  := 'Localizar Empresas' ;
  FPesquisa     := 'cod_empresa, nome_emp' ;
  FPesquisaTit  := 'Código, Nome da Empresa' ;
  inherited;

end;

function TFrm_Cad_Empresa.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_empresa.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_emp.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_emp.name, 'O nome completo da empresa deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Empresa.edt_cod_empresaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
