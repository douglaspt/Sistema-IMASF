unit Cad_Usuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEdit, BEditButton,
  BComboBox;

type
  TFrm_Cad_Usuario = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel6: TPanel;
    edt_senha2: TBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    edt_cod_usuario: TEditButton;
    cbx_cod_setorimasf: TBComboBox;
    cbx_cod_cargoUsuario: TBComboBox;
    cbx_status_usu: TBComboBox;
    edt_nome_usu: TBEdit;
    edt_descricao_usu: TBEdit;
    edt_senha_usu: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_usuarioButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaComboSituacao;
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Salvar(Frm:TForm);                    override ;
  end;

var
  Frm_Cad_Usuario: TFrm_Cad_Usuario;

implementation
uses Constantes, Dlg_Mensagem, Fun_Acesso, Fun_DB;
{$R *.DFM}

procedure TFrm_Cad_Usuario.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Usuário do Sistema' ;
  FEditChave    := 'edt_cod_usuario' ;
  FEditAlteracao:= 'cbx_cod_setorimasf' ;
  FUltFoco      := 'edt_senha2' ;
  FTitPesquisa  := 'Localizar Usuarios' ;
  FPesquisa     := 'cod_usuario, nome_usu, descricao_usu' ;
  FPesquisaTit  := 'Código, Nome do Usuario, Nome Completo' ;
  inherited;

end;

function TFrm_Cad_Usuario.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_usuario.name, 'O Código do Usuário deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_setorimasf.name, 'O Setor deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Usuario.BAS_Alterar(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_setorimasf', 'nome_sti');
  BAS_CarregarCombo('cbx_cod_cargoUsuario', 'descricao_cgu');
  CarregaComboSituacao;
  inherited ;
  edt_senha_usu.Tag := 0 ;
  edt_senha_usu.text := '' ;
  edt_senha2.text := '' ;
end;

procedure TFrm_Cad_Usuario.BAS_Salvar;
begin
  if not((StrToInt(edt_cod_usuario.Text) = FCod_Usuario) or (FCod_setorimasf = 23)) then
  begin
    Dlg_Alerta('Não está autorizado a Alterar dados de outro Usuário!',self);
    Exit;
  end;
  if edt_senha_usu.text <> '' then
    edt_senha_usu.tag := -1 ;
  if edt_senha_usu.text <> edt_senha2.text then begin
    Dlg_Alerta('Senha Redigitada diferente !', self);
    edt_senha_usu.SetFocus;
    exit;
  end else
    edt_senha_usu.text := Acs_algoritimoSenha(edt_senha_usu.text);
  inherited;

end;

procedure TFrm_Cad_Usuario.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_setorimasf', 'nome_sti');
  BAS_CarregarCombo('cbx_cod_cargoUsuario', 'descricao_cgu');
  CarregaComboSituacao;
end;

procedure TFrm_Cad_Usuario.CarregaComboSituacao;
begin
  cbx_status_usu.Clear;
  cbx_status_usu.Items.AddObject('Ativo', TObject(1));
  cbx_status_usu.Items.AddObject('Inativo', TObject(2));
end;

procedure TFrm_Cad_Usuario.btn_novoClick(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_setorimasf', 'nome_sti');
  BAS_CarregarCombo('cbx_cod_cargoUsuario', 'descricao_cgu');
  CarregaComboSituacao;
  DB_OpenSQL('select max(cod_usuario) + 1 as cod_usuario from tbl_usuario');
  edt_cod_usuario.Text := Tab.FieldByName('cod_usuario').AsString;
end;

procedure TFrm_Cad_Usuario.edt_cod_usuarioButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
