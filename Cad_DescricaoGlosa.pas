unit Cad_DescricaoGlosa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_DescricaoGlosa = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_descricaoglosa: TEditButton;
    edt_descricao_dgl: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_descricaoglosaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_DescricaoGlosa: TFrm_Cad_DescricaoGlosa;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_DescricaoGlosa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Descrição de Glosa ' ;
  FEditChave    := 'edt_cod_descricaoglosa' ;
  FEditAlteracao:= 'edt_cod_descricaoglosa' ;
  FUltFoco      := 'edt_descricao_dgl' ;
  FTitPesquisa  := 'Localizar Descrição de Glosa ' ;
  FPesquisa     := 'cod_descricaoglosa, descricao_dgl' ;
  FPesquisaTit  := 'Código, Descrição ' ;
  inherited;
end;

function TFrm_Cad_DescricaoGlosa.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_descricaoglosa.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_dgl.name, 'A Descrição deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_DescricaoGlosa.edt_cod_descricaoglosaButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
