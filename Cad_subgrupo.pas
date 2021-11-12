unit Cad_subgrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEdit, BEditButton;

type
  TFrm_Cad_subgrupo = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_cod_subgrupo: TEditButton;
    edt_cod_grupo: TBEdit;
    edt_cod_grandegrupo: TBEdit;
    edt_nome_sgr: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_subgrupo1ButtonClick(Sender: TObject);
    procedure edt_cod_subgrupoButtonClick(Sender: TObject);
    procedure edt_cod_subgrupoExit(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_subgrupo: TFrm_Cad_subgrupo;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_subgrupo.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Subgrupo' ;
  FEditChave    := 'edt_cod_subgrupo' ;
  FEditAlteracao:= 'edt_cod_grupo' ;
  FUltFoco      := 'edt_nome_sgr' ;
  FTitPesquisa  := 'Localizar Subgrupo' ;
  FPesquisa     := 'cod_subgrupo, cod_grupo, cod_grandegrupo, nome_sgr' ;
  FPesquisaTit  := 'Código, Código Grupo, Código Grandegrupo, Nome' ;
  inherited;
end;

function TFrm_Cad_subgrupo.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_subgrupo.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_grupo.name, 'O Campo Grupo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_grandegrupo.name, 'O Campo Grandegrupo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_sgr.name, 'O nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_subgrupo.edt_cod_subgrupo1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_subgrupo.edt_cod_subgrupoButtonClick(Sender: TObject);
begin
  inherited;
  if (FStatus <> FST_Novo) then
     btn_alterarClick(Self)
  else
     SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Cad_subgrupo.edt_cod_subgrupoExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
  begin
    edt_cod_grupo.Text := copy(edt_cod_subgrupo.Text,2,2);
    edt_cod_grandegrupo.Text := copy(edt_cod_subgrupo.text,1,1);
  end;
end;

procedure TFrm_Cad_subgrupo.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_cod_subgrupo.SetFocus;
end;

end.
