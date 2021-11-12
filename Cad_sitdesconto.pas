unit Cad_sitdesconto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEdit, BEditButton;

type
  TFrm_Cad_sitdesconto = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_sitdesconto: TEditButton;
    edt_nome_sds: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_sitdescontoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_sitdesconto: TFrm_Cad_sitdesconto;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_sitdesconto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Situação de Descontos' ;
  FEditChave    := 'edt_cod_sitdesconto' ;
  FEditAlteracao:= 'edt_cod_sitdesconto' ;
  FUltFoco      := 'edt_nome_sds' ;
  FTitPesquisa  := 'Localizar Situação de Descontos' ;
  FPesquisa     := 'cod_sitdesconto, nome_sds' ;
  FPesquisaTit  := 'Código, Nome da Empresa' ;
  inherited;

end;

function TFrm_Cad_sitdesconto.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_sitdesconto.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_sds.name, 'O nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_sitdesconto.edt_cod_sitdescontoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
