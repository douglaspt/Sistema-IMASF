unit Cad_TipoInternacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_TipoInternacao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tipointernacao: TEditButton;
    edt_nome_int: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tipointernacaoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_TipoInternacao: TFrm_Cad_TipoInternacao;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_TipoInternacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Tipo de Intermação' ;
  FEditChave    := 'edt_cod_tipointernacao' ;
  FEditAlteracao:= 'edt_cod_tipointernacao' ;
  FUltFoco      := 'edt_nome_int' ;
  FTitPesquisa  := 'Localizar Tipo de Intermação' ;
  FPesquisa     := 'cod_tipointernacao, nome_int' ;
  FPesquisaTit  := 'Código, Tipo de Intermação' ;
  inherited;
end;

function TFrm_Cad_TipoInternacao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_tipointernacao.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_int.name, 'O Tipo de Intermação deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_TipoInternacao.edt_cod_tipointernacaoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
