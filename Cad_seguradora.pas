unit Cad_seguradora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg;

type
  TFrm_Cad_seguradora = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_seguradora: TEditButton;
    edt_nome_sga: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_seguradoraButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_seguradora: TFrm_Cad_seguradora;

implementation

{$R *.DFM}

procedure TFrm_Cad_seguradora.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Seguradoras' ;
  FEditChave    := 'edt_cod_seguradora' ;
  FEditAlteracao:= 'edt_nome_sga' ;
  FUltFoco      := 'edt_nome_sga' ;
  FTitPesquisa  := 'Localizar Seguradora' ;
  FPesquisa     := 'cod_seguradora, nome_sga' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;

end;

procedure TFrm_Cad_seguradora.edt_cod_seguradoraButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
