unit Cad_cid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, Buttons, BEditButton,
  jpeg;

type
  TFrm_Cad_Cid = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_cid: TBEdit;
    edt_cod_cid: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Cid: TFrm_Cad_Cid;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_Cid.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de CID' ;
  FEditChave    := 'edt_cod_cid' ;
  FEditAlteracao:= 'edt_cod_cid' ;
  FUltFoco      := 'edt_nome_cid' ;
  FTitPesquisa  := 'Localizar CID' ;
  FPesquisa     := 'cod_cid, nome_cid' ;
  FPesquisaTit  := 'Código, CID' ;
  inherited;

end;

function TFrm_Cad_Cid.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_cid.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_cid.name, 'O nome CID deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Cid.edt_cod_cidButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
