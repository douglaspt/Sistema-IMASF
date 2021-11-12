unit Cad_Tiposaidainternacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_Tiposaidainternacao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tiposaidainternacao: TEditButton;
    edt_nome_tsi: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tiposaidainternacaoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Tiposaidainternacao: TFrm_Cad_Tiposaidainternacao;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_Tiposaidainternacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Acomodação' ;
  FEditChave    := 'edt_cod_tiposaidainternacao' ;
  FEditAlteracao:= 'edt_cod_tiposaidainternacao' ;
  FUltFoco      := 'edt_nome_tsi' ;
  FTitPesquisa  := 'Localizar Acomodação' ;
  FPesquisa     := 'cod_tiposaidainternacao, nome_tsi' ;
  FPesquisaTit  := 'Código, Tipo de Saída da Internação' ;
  inherited;
end;

function TFrm_Cad_Tiposaidainternacao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_tiposaidainternacao.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_tsi.name, 'O Tipo de Saída da Internação deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Tiposaidainternacao.edt_cod_tiposaidainternacaoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
