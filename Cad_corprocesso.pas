unit Cad_corprocesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BEdit;

type
  TFrm_Cad_corprocesso = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_corprocesso: TEditButton;
    edt_nome_cor: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_corprocesso1ButtonClick(Sender: TObject);
    procedure edt_cod_corprocessoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_corprocesso: TFrm_Cad_corprocesso;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_corprocesso.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Cores do Processo' ;
  FEditChave    := 'edt_cod_corprocesso' ;
  FEditAlteracao:= 'edt_cod_corprocesso' ;
  FUltFoco      := 'edt_nome_cor' ;
  FTitPesquisa  := 'Localizar Cores do Processo' ;
  FPesquisa     := 'cod_corprocesso, nome_cor' ;
  FPesquisaTit  := 'Código, Nome das Cores do Processo' ;
  inherited;

end;

function TFrm_Cad_corprocesso.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_corprocesso.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_cor.name, 'O nome da Cor deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_corprocesso.edt_cod_corprocesso1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_corprocesso.edt_cod_corprocessoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
