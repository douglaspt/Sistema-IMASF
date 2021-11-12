unit Cad_textoRequerimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Buttons, BEdit,
  BEditButton;

type
  TFrm_Cad_textoRequerimento = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_titulo_txr: TBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    mem_texto_txr: TMemo;
    Label2: TLabel;
    edt_cod_textoRequerimento: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_textoRequerimentoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_textoRequerimento: TFrm_Cad_textoRequerimento;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_textoRequerimento.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Texto para o Requerimento' ;
  FEditChave    := 'edt_cod_textoRequerimento' ;
  FEditAlteracao:= 'edt_titulo_txr' ;
  FUltFoco      := 'mem_texto_txr' ;
  FTitPesquisa  := 'Localizar Texto para' ;
  FPesquisa     := 'cod_textoRequerimento, titulo_txr' ;
  FPesquisaTit  := 'Código, Título' ;
  inherited;
end;

function TFrm_Cad_textoRequerimento.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_textoRequerimento.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_titulo_txr.name, 'O Título deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(mem_texto_txr.name, 'O Texto deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_textoRequerimento.edt_cod_textoRequerimentoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
