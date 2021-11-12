unit Cad_statusenvio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton, jpeg;

type
  TFrm_Cad_statusenvio = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_statusenvio: TEditButton;
    edt_nome_ste: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_statusenvioButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_statusenvio: TFrm_Cad_statusenvio;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_statusenvio.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Status de envio de Carteirinhas' ;
  FEditChave    := 'edt_cod_statusenvio' ;
  FEditAlteracao:= 'edt_nome_ste' ;
  FUltFoco      := 'edt_nome_ste' ;
  FTitPesquisa  := 'Localizar Status de envio de Carteirinhas' ;
  FPesquisa     := 'cod_statusenvio, nome_ste' ;
  FPesquisaTit  := 'C�digo, Nome' ;
  inherited;
end;

function TFrm_Cad_statusenvio.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_statusenvio.name, 'O c�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_ste.name, 'O nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_statusenvio.edt_cod_statusenvioButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
