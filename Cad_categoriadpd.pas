unit Cad_categoriadpd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_categoriadpd = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_categoriadpd: TEditButton;
    edt_nome_cdp: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_categoriadpd1ButtonClick(Sender: TObject);
    procedure edt_cod_categoriadpdButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_categoriadpd: TFrm_Cad_categoriadpd;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_categoriadpd.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Categoria' ;
  FEditChave    := 'edt_cod_categoriadpd' ;
  FEditAlteracao:= 'edt_nome_cdp' ;
  FUltFoco      := 'edt_nome_cdp' ;
  FTitPesquisa  := 'Localizar Categoria' ;
  FPesquisa     := 'cod_categoriadpd, nome_cdp' ;
  FPesquisaTit  := 'Código, Nome da Categoria' ;
  inherited;

end;

function TFrm_Cad_categoriadpd.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_categoriadpd.name, 'O código da Categoria DPD deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_cdp.name, 'O nome do CDP deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_categoriadpd.edt_cod_categoriadpd1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_categoriadpd.edt_cod_categoriadpdButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
