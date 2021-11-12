unit Cad_statusconta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_statusconta = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_cod_status: TEditButton;
    edt_descricao_sts: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_statusButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_statusconta: TFrm_Cad_statusconta;

implementation

uses Constantes, Fun_DB;

{$R *.DFM}

procedure TFrm_Cad_statusconta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de StatusConta' ;
  FEditChave    := 'edt_cod_statusconta' ;
  FEditAlteracao:= 'edt_cod_statusconta' ;
  FUltFoco      := 'edt_descricao_sts' ;
  FTitPesquisa  := 'Localizar StatusConta' ;
  FPesquisa     := 'cod_statusconta, descricao_sts' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;
end;

function TFrm_Cad_statusconta.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_status.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_sts.name, 'O campo Descrição deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_statusconta.edt_cod_statusButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_statusconta.btn_novoClick(Sender: TObject);
var
  VerificaCodigo : Boolean;
begin
  inherited;
  VerificaCodigo := false;
  edt_cod_status.SetFocus ;
//  CarregarCombos;
//  edt_descricao_sts.text := DB_GetPrimaryKey();
  while not VerificaCodigo  do
  begin
    if DB_OpenSQL('select * from tbl_statusconta where cod_status = '+edt_cod_status.Text) > 0 then
      edt_cod_status.Text := DB_GetPrimaryKey()
    else
      VerificaCodigo := true;
  end;
end;

end.
