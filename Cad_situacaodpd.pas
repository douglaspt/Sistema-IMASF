unit Cad_situacaodpd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BEditButton,
  jpeg;

type
  TFrm_Cad_situacaodpd = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_situacaodpd: TEditButton;
    edt_nome_sdp: TBEdit;
    edt_situacaoimp: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_situacaodpdButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_situacaodpd: TFrm_Cad_situacaodpd;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_situacaodpd.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Situação DPD' ;
  FEditChave    := 'edt_cod_situacaodpd' ;
  FEditAlteracao:= 'edt_nome_sdp' ;
  FUltFoco      := 'edt_situacaoimp' ;
  FTitPesquisa  := 'Localizar Situação DPD' ;
  FPesquisa     := 'cod_situacaodpd, nome_sdp, situacaoimp' ;
  FPesquisaTit  := 'Código, Nome, Situação' ;
  inherited;
end;

function TFrm_Cad_situacaodpd.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_situacaodpd.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_sdp.name, 'O campo Nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_situacaoimp.name, 'O campo Situação deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_situacaodpd.edt_cod_situacaodpdButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
