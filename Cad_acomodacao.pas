unit Cad_acomodacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Buttons,
  BEdit, BEditButton, DCChoice;

type
  TFrm_Cad_Acomodacao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_aco: TBEdit;
    edt_cod_acomodacao: TEditButton;
    edt_data_aco: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_acomodacaoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Acomodacao: TFrm_Cad_Acomodacao;

implementation
uses Constantes;
{$R *.DFM}

procedure TFrm_Cad_Acomodacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Acomoda��o' ;
  FEditChave    := 'edt_cod_acomodacao' ;
  FEditAlteracao:= 'edt_cod_acomodacao' ;
  FUltFoco      := 'edt_nome_aco' ;
  FTitPesquisa  := 'Localizar Acomoda��o' ;
  FPesquisa     := 'cod_acomodacao, nome_aco' ;
  FPesquisaTit  := 'C�digo, Acomoda��o' ;
  inherited;

end;

function TFrm_Cad_Acomodacao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_acomodacao.name, 'O c�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_aco.name, 'A Acomoda��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Acomodacao.edt_cod_acomodacaoButtonClick(
  Sender: TObject);
begin
  inherited;
  if (FStatus <> FST_Novo) then
    btn_alterarClick(self)
  else
    SelectNext(ActiveControl,True,True);;
end;

end.
