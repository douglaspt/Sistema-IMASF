unit Cad_statuscarteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit,
  BEditButton, jpeg;

type
  TFrm_Cad_statuscarteira = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_cod_statuscarteira: TEditButton;
    edt_descricao_stc: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_statuscarteiraButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_statuscarteira: TFrm_Cad_statuscarteira;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_statuscarteira.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Status na Carteira' ;
  FEditChave    := 'edt_cod_statuscarteira' ;
  FEditAlteracao:= 'edt_cod_statuscarteira' ;
  FUltFoco      := 'edt_descricao_stc' ;
  FTitPesquisa  := 'Localizar Status na Carteira' ;
  FPesquisa     := 'cod_statuscarteira, descricao_stc' ;
  FPesquisaTit  := 'Código, Descricao' ;
  inherited;
end;

function TFrm_Cad_statuscarteira.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_statuscarteira.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_stc.name, 'O campo Descrição deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_statuscarteira.edt_cod_statuscarteiraButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
