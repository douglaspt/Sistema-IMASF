unit Cad_espmedamb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BEdit;

type
  TFrm_Cad_espmedamb = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_espmedamb: TEditButton;
    edt_nome_esp: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_espmedambButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_espmedamb: TFrm_Cad_espmedamb;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_espmedamb.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Especialidades Médicas(AMB)' ;
  FEditChave    := 'edt_cod_espmedamb' ;
  FEditAlteracao:= 'edt_cod_espmedamb' ;
  FUltFoco      := 'edt_nome_esp' ;
  FTitPesquisa  := 'Localizar Especialidades Médicas(AMB)' ;
  FPesquisa     := 'cod_espmedamb, nome_esp' ;
  FPesquisaTit  := 'Código, Nome ' ;
  inherited;

end;

function TFrm_Cad_espmedamb.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_espmedamb.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_esp.name, 'O nome da Especialidade deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_espmedamb.edt_cod_espmedambButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
