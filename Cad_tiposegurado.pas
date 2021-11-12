unit Cad_tiposegurado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_tiposegurado = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tiposegurado: TEditButton;
    edt_nome_tse: TBEdit;
    edt_descricao_tse: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tiposeguradoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_tiposegurado: TFrm_Cad_tiposegurado;

implementation

{$R *.DFM}

procedure TFrm_Cad_tiposegurado.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Tipo de Segurado' ;
  FEditChave    := 'edt_cod_tiposegurado' ;
  FEditAlteracao:= 'edt_nome_tse' ;
  FUltFoco      := 'edt_descricao_tse' ;
  FTitPesquisa  := 'Localizar Tipo de Segurado' ;
  FPesquisa     := 'cod_tiposegurado, nome_tse, descricao_tse' ;
  FPesquisaTit  := 'C�digo, Nome, Descri��o' ;
  inherited;

end;

procedure TFrm_Cad_tiposegurado.edt_cod_tiposeguradoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
