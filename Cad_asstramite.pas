unit Cad_asstramite;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BEdit;

type
  TFrm_Cad_Asstramite = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_asstramite: TEditButton;
    edt_assunto_atr: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_asstramiteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Asstramite: TFrm_Cad_Asstramite;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_Asstramite.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Assuntos' ;
  FEditChave    := 'edt_cod_asstramite' ;
  FEditAlteracao:= 'edt_cod_asstramite' ;
  FUltFoco      := 'edt_assunto_atr' ;
  FTitPesquisa  := 'Localizar Assuntos' ;
  FPesquisa     := 'cod_asstramite, assunto_atr' ;
  FPesquisaTit  := 'Código, Assunto' ;
  inherited;

end;

function TFrm_Cad_Asstramite.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_asstramite.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_assunto_atr.name, 'O campo assunto deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Asstramite.edt_cod_asstramiteButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
