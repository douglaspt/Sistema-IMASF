unit Cad_classificacaoConveniado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Buttons, BEdit,
  BEditButton;

type
  TFrm_Cad_classificacaoConveniado = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    edt_cod_classificacaoConveniado: TEditButton;
    edt_descricao_ccv: TBEdit;
    edt_dotacao_cvv: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_classificacaoConveniadoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_classificacaoConveniado: TFrm_Cad_classificacaoConveniado;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_classificacaoConveniado.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Tipos de Conveniado' ;
  FEditChave    := 'edt_cod_classificacaoConveniado' ;
  FEditAlteracao:= 'edt_descricao_ccv' ;
  FUltFoco      := 'edt_dotacao_cvv' ;
  FTitPesquisa  := 'Localizar Tipos de Conveniado' ;
  FPesquisa     := 'cod_classificacaoConveniado, descricao_ccv, dotacao_cvv' ;
  FPesquisaTit  := 'C�digo, Descri��o, Dota��o' ;
  inherited;
end;

function TFrm_Cad_classificacaoConveniado.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_classificacaoConveniado.name, 'O C�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_ccv.name, 'A Descri��o deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dotacao_cvv.name, 'A Dota��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_classificacaoConveniado.edt_cod_classificacaoConveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
