unit Cad_ConfigEmail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton;

type
  TFrm_Cad_ConfigEmail = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_configEmail: TEditButton;
    Panel8: TPanel;
    edt_porta_cfg: TEdit;
    Panel9: TPanel;
    edt_ccopia_cfg: TEdit;
    Panel1: TPanel;
    edt_senha_cfg: TEdit;
    Panel7: TPanel;
    edt_usuario_cfg: TEdit;
    Panel6: TPanel;
    edt_smtp_cfg: TEdit;
    Panel5: TPanel;
    edt_descricao_cfg: TEdit;
    Panel10: TPanel;
    edt_destinatario_cfg: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_configEmailButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_ConfigEmail: TFrm_Cad_ConfigEmail;

implementation

uses Constantes, dtm_principal4, Bas_Impressao, Fun_ConsCadastro;

{$R *.DFM}

procedure TFrm_Cad_ConfigEmail.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Configurador de E-mail' ;
  FEditChave    := 'edt_cod_configEmail' ;
  FEditAlteracao:= 'edt_descricao_cfg' ;
  FUltFoco      := 'edt_ccopia_cfg' ;
  FTitPesquisa  := 'Localizar Configuração de E-mail' ;
  FPesquisa     := 'cod_configEmail, descricao_cfg, smtp_cfg, usuario_cfg' ;
  FPesquisaTit  := 'Código, Descrição, SMTP, Usuário' ;
  inherited;

end;

function TFrm_Cad_ConfigEmail.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_descricao_cfg.name, 'A Descrição deve ser preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_smtp_cfg.name, 'O SMTP deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_usuario_cfg.name, 'O Usuário deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_senha_cfg.name, 'A Senha deve ser preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_porta_cfg.name, 'A Porta deve ser preenchida!', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_ConfigEmail.edt_cod_configEmailButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_ConfigEmail.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_descricao_cfg.SetFocus;
end;

end.
