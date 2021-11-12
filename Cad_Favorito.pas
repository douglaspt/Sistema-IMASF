unit Cad_Favorito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Db, jpeg, BComboBox,
  BEdit, BEditButton, Grids, DBGrids;

type
  TFrm_Cad_Favorito = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    panel1: TPanel;
    DBGrid1: TDBGrid;
    btn_adicionarTela: TPDJButton;
    btn_RemoverTela: TPDJButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    edt_cod_usuario: TEditButton;
    edt_nome_usu: TBEdit;
    cbx_cod_telasistema: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_adicionarTelaClick(Sender: TObject);
    procedure btn_RemoverTelaClick(Sender: TObject);
    procedure edt_cod_usuarioButtonClick(Sender: TObject);
    procedure edt_cod_usuarioExit(Sender: TObject);
    procedure cbx_cod_telasistemaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_Favorito: TFrm_Cad_Favorito;

implementation

uses Constantes, Fun_obj, Fun_ConsCadastro, Fun_DB, dtm_principal4, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Cad_Favorito.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Telas Favoritas' ;
  FEditChave    := 'edt_cod_usuario' ;
  FEditAlteracao:= 'cbx_cod_setorimasf' ;
  FUltFoco      := 'edt_descricao_usu' ;
  FTitPesquisa  := 'Localizar Usuarios' ;
  FPesquisa     := 'cod_usuario, nome_usu, descricao_usu' ;
  FPesquisaTit  := 'Código, Nome do Usuario, Nome Completo' ;
  inherited;
end;

function TFrm_Cad_Favorito.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_usuario.name, 'O código deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Favorito.BAS_Alterar(Frm:Tform);
begin
 // BAS_CarregarCombo('cbx_cod_telasistema', 'nome_tls');
 //Obj_LoadCombo(Self, 'cbx_cod_telasistema', 'nome_tls', 'cod_telasistema', 'tbl_telasistema where cod_telasistema <= 4000 order by cod_telasistema');
  Obj_LoadCombo(Self, 'cbx_cod_telasistema', 'cod_telasistema, nome_tls', 'cod_telasistema as codtela', 'tbl_telasistema where cod_telasistema < 4000 order by cod_telasistema');
  inherited ;
  with fdt_principal4.spc_cons_adm_favorito do begin
  Close;
  ParamByName('@cod_usuario').AsString := edt_cod_usuario.text;
  Open;
  end;
end;

procedure TFrm_Cad_Favorito.btn_adicionarTelaClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_telasistema.Text = '' then
  ShowMessage('O campo Nome da Tela deve ser Preenchido !')
  else
  DB_ExecSQL('insert into tbl_favorito (cod_usuario,cod_telasistema) values ('+edt_cod_usuario.Text+
  ', '+cbx_cod_telasistema.getStrItemValue+')');
  fdt_principal4.spc_cons_adm_favorito.Close;
  fdt_principal4.spc_cons_adm_favorito.Open;
  EscreveLog(btn_adicionarTela.Name);
end;

procedure TFrm_Cad_Favorito.btn_RemoverTelaClick(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('delete from tbl_favorito where cod_telasistema = '+
  fdt_principal4.spc_cons_adm_favorito.fieldbyname('cod_telasistema').AsString);
  fdt_principal4.spc_cons_adm_favorito.Close;
  fdt_principal4.spc_cons_adm_favorito.Open;
  EscreveLog(btn_RemoverTela.Name);
end;

procedure TFrm_Cad_Favorito.edt_cod_usuarioButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
  edt_cod_usuarioExit(self);
end;

procedure TFrm_Cad_Favorito.edt_cod_usuarioExit(Sender: TObject);
begin
  inherited;
    if edt_cod_usuario.text = '' then begin
    edt_nome_usu.text := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_usu from tbl_usuario where cod_usuario = '+edt_cod_usuario.text);
  edt_nome_usu.Text := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

procedure TFrm_Cad_Favorito.cbx_cod_telasistemaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_adicionarTelaClick(self);
end;

end.
