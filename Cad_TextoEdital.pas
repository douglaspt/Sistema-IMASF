unit Cad_TextoEdital;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEdit, BEditButton;

type
  TFrm_Cad_TextoEdital = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_textoEdital: TEditButton;
    edt_descricao_ted: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_textoEditalButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_TextoEdital: TFrm_Cad_TextoEdital;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_TextoEdital.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Textos para o Edital' ;
  FEditChave    := 'edt_cod_textoEdital' ;
  FEditAlteracao:= 'edt_descricao_ted' ;
  FUltFoco      := 'edt_descricao_ted' ;
  FTitPesquisa  := 'Localizar Edital' ;
  FPesquisa     := 'cod_textoEdital, descricao_ted' ;
  FPesquisaTit  := 'C�digo, Descri��o' ;
  inherited;
end;

function TFrm_Cad_TextoEdital.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_textoEdital.name, 'O C�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_ted.name, 'A Descri��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_TextoEdital.edt_cod_textoEditalButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
