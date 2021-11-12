unit Cad_nivelcar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_nivelcar = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_cod_nivelcar: TEditButton;
    edt_nome_niv: TBEdit;
    edt_descricao_niv: TBEdit;
    edt_dias_niv: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_nivelcarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_nivelcar: TFrm_Cad_nivelcar;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_nivelcar.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Nível de Carências' ;
  FEditChave    := 'edt_cod_nivelcar' ;
  FEditAlteracao:= 'edt_nome_niv' ;
  FUltFoco      := 'edt_dias_niv' ;
  FTitPesquisa  := 'Localizar Nível de Carências' ;
  FPesquisa     := 'cod_nivelcar, nome_niv, descricao_niv, dias_niv' ;
  FPesquisaTit  := 'Código, Nivel, Descrição, Dias' ;
  inherited;
end;

function TFrm_Cad_nivelcar.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_nivelcar.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_niv.name, 'O campo nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_niv.name, 'O campo Descrição deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dias_niv.name, 'O campo Dias deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_nivelcar.edt_cod_nivelcarButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
