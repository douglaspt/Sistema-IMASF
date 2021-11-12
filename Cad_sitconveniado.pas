unit Cad_sitconveniado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BEdit;

type
  TFrm_Cad_sitconveniado = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_sitconveniado: TEditButton;
    edt_nome_stc: TBEdit;
    edt_tipo_stc: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_sitconveniadoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_sitconveniado: TFrm_Cad_sitconveniado;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_sitconveniado.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Situação do Conveniado' ;
  FEditChave    := 'edt_cod_sitconveniado' ;
  FEditAlteracao:= 'edt_cod_sitconveniado' ;
  FUltFoco      := 'edt_tipo_stc' ;
  FTitPesquisa  := 'Localizar Situação do Conveniado' ;
  FPesquisa     := 'cod_sitconveniado, nome_stc, tipo_stc' ;
  FPesquisaTit  := 'Código, Nome, Tipo' ;
  inherited;
end;

function TFrm_Cad_sitconveniado.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_sitconveniado.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_stc.name, 'O campo nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tipo_stc.name, 'O campo Tipo deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_sitconveniado.edt_cod_sitconveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
