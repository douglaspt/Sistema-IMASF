unit Cad_Plano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_Plano = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_plano: TEditButton;
    edt_nome_pla: TBEdit;
    edt_descricao_pla: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_planoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_Plano: TFrm_Cad_Plano;

implementation

{$R *.DFM}

procedure TFrm_Cad_Plano.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Planos' ;
  FEditChave    := 'edt_cod_plano' ;
  FEditAlteracao:= 'edt_nome_pla' ;
  FUltFoco      := 'edt_descricao_pla' ;
  FTitPesquisa  := 'Localizar Planos' ;
  FPesquisa     := 'cod_plano, nome_pla, descricao_pla' ;
  FPesquisaTit  := 'Código, Nome do Plano, Nome Completo' ;
  inherited;

end;

procedure TFrm_Cad_Plano.edt_cod_planoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
