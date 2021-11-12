unit Cad_telasistema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEdit, BComboBox,
  BEditButton, jpeg;

type
  TFrm_Cad_telasistema = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel23: TPanel;
    edt_cod_telasistema: TEditButton;
    cbx_cod_setorImasf: TBComboBox;
    edt_nomefrm_tls: TBEdit;
    edt_nome_tls: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_telasistemaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
  end;

var
  Frm_Cad_telasistema: TFrm_Cad_telasistema;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_telasistema.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Telas do Sistema' ;
  FEditChave    := 'edt_cod_telasistema' ;
  FEditAlteracao:= 'edt_cod_setorImasf' ;
  FUltFoco      := 'edt_nome_tls' ;
  FTitPesquisa  := 'Localizar Telas do Sistema' ;
  FPesquisa     := 'cod_telasistema, cod_setorImasf, nomefrm_tls, nome_tls' ;
  FPesquisaTit  := 'Código, Código do SetorImasf, Nome do Formulário, Nome' ;
  inherited;
end;

function TFrm_Cad_telasistema.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_telasistema.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_setorImasf.name, 'O campo SetorImasf deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomefrm_tls.name, 'O campo Nome Frm deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_tls.name, 'O nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_telasistema.BAS_Novo(Frm:Tform);
begin
  inherited;
    BAS_CarregarCombo('cbx_cod_setorImasf', 'nome_sti');
end;

procedure TFrm_Cad_telasistema.BAS_Alterar(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_setorImasf', 'nome_sti');
  inherited ;
end;

procedure TFrm_Cad_telasistema.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_setorImasf', 'nome_sti');
end;

procedure TFrm_Cad_telasistema.edt_cod_telasistemaButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
