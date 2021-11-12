unit Cad_grandegrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton,
  jpeg;

type
  TFrm_Cad_grandegrupo = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    edt_cod_grandegrupo: TEditButton;
    edt_nome_ggr: TBEdit;
    edt_titgrpgdegrp: TBEdit;
    edt_titsubgdegrp: TBEdit;
    edt_tititmgdegrp: TBEdit;
    edt_tabespgdegrp: TBEdit;
    edt_medicagdegrp: TBEdit;
    edt_matmedgdegrp: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_grandegrupoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_grandegrupo: TFrm_Cad_grandegrupo;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_grandegrupo.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Grande Grupo' ;
  FEditChave    := 'edt_cod_grandegrupo' ;
  FEditAlteracao:= 'edt_nome_ggr' ;
  FUltFoco      := 'edt_matmedgdegrp' ;
  FTitPesquisa  := 'Localizar Grande Grupo' ;
  FPesquisa     := 'cod_grandegrupo, nome_ggr, titgrpgdegrp, titsubgdegrp, tititmgdegrp, tabespgdegrp, medicagdegrp, matmedgdegrp' ;
  FPesquisaTit  := 'Código, nome_ggr, titgrpgdegrp, titsubgdegrp, tititmgdegrp, tabespgdegrp, medicagdegrp, matmedgdegrp' ;
  inherited;

end;

function TFrm_Cad_grandegrupo.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_grandegrupo.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_ggr.name, 'O nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_titgrpgdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_titsubgdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tititmgdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tabespgdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_medicagdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_matmedgdegrp.name, 'O campo deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_grandegrupo.edt_cod_grandegrupoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
