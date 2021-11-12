unit Cad_classeconvenio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Buttons, BEdit, jpeg,
  BEditButton;

type
  TFrm_Cad_classeconvenio = class (TFrm_Bas_Cadastro)
    edt_descricao_clc: TBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_classeconveniado: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_choiceClick(Sender: TObject);
    procedure edt_cod_classeconveniadoButtonClick(Sender: TObject);
  public
    function BAS_ValidarCadastro: Boolean; override;
  end;
  
var
  Frm_Cad_classeconvenio: TFrm_Cad_classeconvenio;

implementation

uses Constantes;

{$R *.DFM}

{
*************************** TFrm_Cad_classeconvenio ****************************
}
function TFrm_Cad_classeconvenio.BAS_ValidarCadastro: Boolean;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_classeconveniado.name, 'O código  deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_clc.name, 'O nome da Classe deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_classeconvenio.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Classe Convenio' ;
  FEditChave    := 'edt_cod_classeconvenio' ;
  FEditAlteracao:= 'edt_cod_classeconvenio' ;
  FUltFoco      := 'edt_descricao_clc' ;
  FTitPesquisa  := 'Localizar Classes do Conveniado' ;
  FPesquisa     := 'cod_classeconvenio, descricao_clc' ;
  FPesquisaTit  := 'Código, Nome da Classe' ;
  inherited;
  
end;

procedure TFrm_Cad_classeconvenio.btn_choiceClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_classeconvenio.edt_cod_classeconveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
