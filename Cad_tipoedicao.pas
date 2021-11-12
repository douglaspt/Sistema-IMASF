unit Cad_tipoedicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton,
  jpeg;

type
  TFrm_Cad_tipoedicao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tipoedicao: TEditButton;
    edt_descricao_ted: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tipoedicaoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_tipoedicao: TFrm_Cad_tipoedicao;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_tipoedicao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro TipoEdi��o' ;
  FEditChave    := 'edt_cod_tipoedicao' ;
  FEditAlteracao:= 'edt_cod_tipoedicao' ;
  FUltFoco      := 'edt_descricao_ted' ;
  FTitPesquisa  := 'Localizar TipoEdi��o' ;
  FPesquisa     := 'cod_tipoedicao, descricao_ted' ;
  FPesquisaTit  := 'C�digo, Descri��o' ;
  inherited;
end;

function TFrm_Cad_tipoedicao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_tipoedicao.name, 'O c�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_ted.name, 'O campo Descri��o empresa deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_tipoedicao.edt_cod_tipoedicaoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
