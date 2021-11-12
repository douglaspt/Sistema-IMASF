unit Cad_SetorEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, BEditButton, jpeg, StdCtrls;

type
  TFrm_Cad_SetorEmp = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_setoremp: TEditButton;
    edt_nome_ste: TEdit;
    edt_descricao_ste: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_setorempButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_SetorEmp: TFrm_Cad_SetorEmp;

implementation

{$R *.DFM}

procedure TFrm_Cad_SetorEmp.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Setores da Empresa' ;
  FEditChave    := 'edt_cod_setoremp' ;
  FEditAlteracao:= 'edt_nome_ste' ;
  FUltFoco      := 'edt_descricao_ste' ;
  FTitPesquisa  := 'Localizar Setores da Empresa' ;
  FPesquisa     := 'cod_setoremp, nome_ste' ;
  FPesquisaTit  := 'Código, Setor da Empresa' ;
  inherited;
end;

procedure TFrm_Cad_SetorEmp.edt_cod_setorempButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
