unit Cad_TipoDependente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg, BEdit;

type
  TFrm_Cad_TipoDependente = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tipodependente: TEditButton;
    edt_nome_tdp: TBEdit;
    edt_descricao_tdp: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tipodependenteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_TipoDependente: TFrm_Cad_TipoDependente;

implementation

{$R *.DFM}

procedure TFrm_Cad_TipoDependente.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Tipo de Dependência' ;
  FEditChave    := 'edt_cod_tipodependente' ;
  FEditAlteracao:= 'edt_nome_tdp' ;
  FUltFoco      := 'edt_descricao_tdp' ;
  FTitPesquisa  := 'Localizar Tipo de Dependência' ;
  FPesquisa     := 'cod_tipodependente, nome_tdp' ;
  FPesquisaTit  := 'Código, Tipo de Dependência' ;
  inherited;

end;

procedure TFrm_Cad_TipoDependente.edt_cod_tipodependenteButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
