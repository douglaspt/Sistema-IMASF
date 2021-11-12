unit Cad_Acesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Grids,
  DBGrids, Db, jpeg, BEdit, Buttons, BComboBox, BEditButton;

type
  TFrm_Cad_Acesso = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_descricao_usu: TBEdit;
    Panel5: TPanel;
    edt_nome_usu: TBEdit;
    Panel6: TPanel;
    edt_senha_usu: TBEdit;
    DataSource1: TDataSource;
    edt_senha2: TBEdit;
    btn_relatorio: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    DBG_matricula: TDBGrid;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    ChB_consultar_acs: TCheckBox;
    ChB_incluir_acs: TCheckBox;
    ChB_alterar_acs: TCheckBox;
    ChB_excluir_acs: TCheckBox;
    cbx_cod_telasistema: TBComboBox;
    btn_adicionarAcesso: TPDJButton;
    btn_removerAcesso: TPDJButton;
    btn_acessoGeralMedica: TPDJButton;
    btn_acessoGeralAdm: TPDJButton;
    btn_acessoTotal: TPDJButton;
    DBGrid1: TDBGrid;
    btn_adicionarAcessoEsp: TPDJButton;
    btn_removerAcessoEsp: TPDJButton;
    cbx_cod_telaEspecial: TBComboBox;
    ckb_duplica: TCheckBox;
    btn_duplica: TPDJButton;
    cbx_cod_usuario: TBComboBox;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    edt_cod_usuario: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_adicionarAcessoClick(Sender: TObject);
    procedure btn_removerAcessoClick(Sender: TObject);
    procedure btn_acessoGeralMedicaClick(Sender: TObject);
    procedure btn_acessoGeralAdmClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_acessoTotalClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_adicionarAcessoEspClick(Sender: TObject);
    procedure btn_removerAcessoEspClick(Sender: TObject);
    procedure ckb_duplicaClick(Sender: TObject);
    procedure btn_duplicaClick(Sender: TObject);
    procedure cbx_cod_telasistemaChange(Sender: TObject);
    procedure DBG_matriculaCellClick(Column: TColumn);
    procedure edt_cod_usuarioButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BotoesOnOff(b:boolean);                   override ;
  end;

var
  Frm_Cad_Acesso: TFrm_Cad_Acesso;

implementation
uses dtm_principal2, Fun_DB, Dlg_Mensagem, Fun_Acesso, Imp_4057, Fun_Obj, dtm_principal6;
{$R *.DFM}

procedure TFrm_Cad_Acesso.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Acessos do Usuário ao Sistema' ;
  FEditChave    := 'edt_cod_usuario' ;
  FEditAlteracao:= 'cbx_cod_setorimasf' ;
  FUltFoco      := 'edt_descricao_usu' ;
  FTitPesquisa  := 'Localizar Usuarios' ;
  FPesquisa     := 'cod_usuario, nome_usu, descricao_usu' ;
  FPesquisaTit  := 'Código, Nome do Usuario, Nome Completo' ;
  inherited;

end;

procedure TFrm_Cad_Acesso.BotoesOnOff(b:boolean);
begin
  inherited;
    btn_relatorio.Enabled := b ;
end;

procedure TFrm_Cad_Acesso.BAS_Alterar(Frm:Tform);
begin
//  BAS_CarregarCombo('cbx_cod_telasistema', 'nome_tls');
  Obj_LoadCombo(Self, 'cbx_cod_telasistema', 'cod_telasistema, nome_tls', 'cod_telasistema as codtela',
                      'tbl_telasistema where cod_telasistema < 4000 order by cod_telasistema');
  Obj_LoadCombo(Self,'cbx_cod_telaEspecial', 'cod_telaEspecial, descricao_tlE', 'cod_telaEspecial as codtela', 'tbl_telaEspecial order by cod_telaEspecial');
  PageControl1.Visible := true;
  PageControl1.ActivePageIndex := 0;
  inherited ;
    with fdt_principal2.spc_AcessoUsuario do begin
      close;
      Params[0].AsString := edt_cod_usuario.text ;
      open;
    end;
    edt_senha_usu.Tag := 0 ;
    edt_senha_usu.text := '' ;
    edt_senha2.text := '' ;
end;


procedure TFrm_Cad_Acesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal2.spc_AcessoUsuario.close;
end;

procedure TFrm_Cad_Acesso.btn_adicionarAcessoClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_telasistema.text = '' then exit ;
  DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+
  edt_cod_usuario.text+' and cod_telasistema = '+cbx_cod_telasistema.getStrItemValue);
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') values ('+
  edt_cod_usuario.text+', '+cbx_cod_telasistema.getStrItemValue+', '+
  IntToStr(ord(ChB_consultar_acs.checked))+', '+IntToStr(ord(ChB_incluir_acs.checked))+', '+
  IntToStr(ord(ChB_alterar_acs.checked))+', '+IntToStr(ord(ChB_excluir_acs.checked))+')');
  cbx_cod_telasistema.text := '' ;
  ChB_consultar_acs.Checked := false ;
  ChB_incluir_acs.Checked := false ;
  ChB_alterar_acs.Checked := false ;
  ChB_excluir_acs.Checked := false ;
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;
  EscreveLog(btn_adicionarAcesso.Name);
  fdt_principal2.spc_AcessoUsuario.Locate('cod_telasistema', Copy(cbx_cod_telasistema.Text,1,4), [loCaseInsensitive]);
end;

procedure TFrm_Cad_Acesso.btn_removerAcessoClick(Sender: TObject);
var
  i, WPosicao: Integer;
begin
  inherited;
  WPosicao:= 0;
  if DBG_matricula.SelectedRows.Count > 0 then
    for i:=0 to DBG_matricula.SelectedRows.Count-1 do
      begin
      DBG_matricula.DataSource.DataSet.GotoBookmark(pointer(DBG_matricula.SelectedRows.Items[i]));
      DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+
      edt_cod_usuario.text+' and cod_telasistema = '+ DBG_matricula.DataSource.DataSet.FieldByName('cod_telasistema').AsString);
      // Só para posicionar o cursor no DBGrid no registro anterior ao que for excluido
      WPosicao:= DBG_matricula.DataSource.DataSet.FieldByName('cod_telasistema').Value - 1;
      end;
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;
  btn_removerAcesso.Enabled:= False;
  fdt_principal2.spc_AcessoUsuario.Locate('cod_telasistema',WPosicao, [loPartialKey, loCaseInsensitive]);
  EscreveLog(btn_removerAcesso.Name);
end;

procedure TFrm_Cad_Acesso.btn_acessoGeralMedicaClick(Sender: TObject);
begin
  inherited;
  if (ChB_consultar_acs.Checked = False) and
     (ChB_incluir_acs.Checked = False) and
     (ChB_alterar_acs.Checked = False) and
     (ChB_excluir_acs.Checked = False) then
     begin
     Dlg_Alerta('Nenhuma opção selecionada!', self);
     Exit;
     end;
  DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+edt_cod_usuario.text);
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') select '+edt_cod_usuario.text+', cod_telasistema, '+ IntToStr(ord(ChB_consultar_acs.checked))+', '+
    IntToStr(ord(ChB_incluir_acs.checked))+', '+ IntToStr(ord(ChB_alterar_acs.checked))+', '+
    IntToStr(ord(ChB_excluir_acs.checked)) + ' from tbl_telasistema where cod_setorIMASF = 3 and cod_telasistema < 4000');
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') select '+edt_cod_usuario.text+', cod_telasistema, 1, 0, 0, 0 from tbl_telasistema where cod_setorIMASF = 2 cod_telasistema < 4000');
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;
  EscreveLog(btn_acessoGeralMedica.Name);
  ChB_consultar_acs.Checked:= False;
  ChB_incluir_acs.Checked:= False;
  ChB_alterar_acs.Checked:= False;
  ChB_excluir_acs.Checked:= False;
end;

procedure TFrm_Cad_Acesso.btn_acessoGeralAdmClick(Sender: TObject);
begin
  inherited;
  if (ChB_consultar_acs.Checked = False) and
     (ChB_incluir_acs.Checked = False) and
     (ChB_alterar_acs.Checked = False) and
     (ChB_excluir_acs.Checked = False) then
     begin
     Dlg_Alerta('Nenhuma opção selecionada!', self);
     Exit;
     end;
  DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+edt_cod_usuario.text);
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') select '+edt_cod_usuario.text+', cod_telasistema, '+ IntToStr(ord(ChB_consultar_acs.checked))+', '+
    IntToStr(ord(ChB_incluir_acs.checked))+', '+ IntToStr(ord(ChB_alterar_acs.checked))+', '+
    IntToStr(ord(ChB_excluir_acs.checked)) + ' from tbl_telasistema where cod_setorIMASF = 2 and cod_telasistema < 4000');
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') select '+edt_cod_usuario.text+', cod_telasistema, 1, 0, 0, 0 from tbl_telasistema where cod_setorIMASF = 3 and cod_telasistema < 4000');
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;
  EscreveLog(btn_acessoTotal.Name);
  ChB_consultar_acs.Checked:= False;
  ChB_incluir_acs.Checked:= False;
  ChB_alterar_acs.Checked:= False;
  ChB_excluir_acs.Checked:= False;
end;

procedure TFrm_Cad_Acesso.btn_salvarClick(Sender: TObject);
begin
  if edt_senha_usu.text <> '' then
    edt_senha_usu.tag := -1 ;
  if edt_senha_usu.text <> edt_senha2.text then begin
    Dlg_Alerta('Senha Redigitada diferente !', self);
    edt_senha_usu.SetFocus;
    exit;
  end else
    edt_senha_usu.text := Acs_algoritimoSenha(edt_senha_usu.text);
  inherited;
  PageControl1.Visible := false;
end;

procedure TFrm_Cad_Acesso.btn_acessoTotalClick(Sender: TObject);
begin
  inherited;
  if (ChB_consultar_acs.Checked = False) and
     (ChB_incluir_acs.Checked = False) and
     (ChB_alterar_acs.Checked = False) and
     (ChB_excluir_acs.Checked = False) then
     begin
     Dlg_Alerta('Nenhuma opção selecionada!', self);
     Exit;
     end;
  DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+edt_cod_usuario.text);
  DB_ExecSQL('insert into tbl_acesso ('+
  'cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs '+
  ') select '+edt_cod_usuario.text+', cod_telasistema, '+ IntToStr(ord(ChB_consultar_acs.checked))+', '+
    IntToStr(ord(ChB_incluir_acs.checked))+', '+ IntToStr(ord(ChB_alterar_acs.checked))+', '+
    IntToStr(ord(ChB_excluir_acs.checked)) + ' from tbl_telasistema where cod_telasistema < 4000');
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;
  EscreveLog(btn_acessoGeralAdm.Name);
  ChB_consultar_acs.Checked:= False;
  ChB_incluir_acs.Checked:= False;
  ChB_alterar_acs.Checked:= False;
  ChB_excluir_acs.Checked:= False;
end;

procedure TFrm_Cad_Acesso.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  Frm_Imp_4057 := TFrm_Imp_4057.Create(Self);
  Frm_Imp_4057.Cod_usu := edt_cod_usuario.text ;
  Frm_Imp_4057.Nome_comp := edt_descricao_usu.text ;
  Frm_Imp_4057.Nome_usu := edt_nome_usu.text ;
  Frm_Imp_4057.QuickRep1.Preview;
  Frm_Imp_4057.Release;
  fdt_principal2.spc_AcessoUsuario.close;
  fdt_principal2.spc_AcessoUsuario.open;

end;

procedure TFrm_Cad_Acesso.TabSheet2Show(Sender: TObject);
begin
  inherited;
  with fdt_principal6.spc_cons_adm_acessoEspecial do begin
    close;
    ParamByName('@cod_usuario').AsString := edt_cod_usuario.text ;
    open;
  end;
end;

procedure TFrm_Cad_Acesso.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.Visible := false;
  Obj_LoadCombo(Self, 'cbx_cod_usuario', 'nome_usu', 'cod_usuario', 'tbl_usuario order by nome_usu');
  Obj_LoadCombo(Self, 'cb2_cod_usuario', 'nome_usu', 'cod_usuario', 'tbl_usuario order by nome_usu');
end;

procedure TFrm_Cad_Acesso.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  PageControl1.Visible := false;
  ckb_duplica.Checked:= False;
end;

procedure TFrm_Cad_Acesso.btn_adicionarAcessoEspClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_telaEspecial.text = '' then exit ;
  DB_ExecSQL('delete from tbl_acessoEspecial where cod_usuario = '+
  edt_cod_usuario.text+' and cod_telaespecial = '+cbx_cod_telaEspecial.getStrItemValue);
  DB_ExecSQL('insert into tbl_acessoEspecial (cod_usuario, cod_telaespecial) values ('+
  edt_cod_usuario.text+', '+cbx_cod_telaEspecial.getStrItemValue+')');
  cbx_cod_telaEspecial.text := '' ;
  fdt_principal6.spc_cons_adm_acessoEspecial.close;
  fdt_principal6.spc_cons_adm_acessoEspecial.open;
  EscreveLog(btn_adicionarAcessoEsp.Name);
end;

procedure TFrm_Cad_Acesso.btn_removerAcessoEspClick(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('delete from tbl_acessoEspecial where cod_usuario = '+
  edt_cod_usuario.text+' and cod_telaespecial = '+
  fdt_principal6.spc_cons_adm_acessoEspecial.fieldbyname('cod_telaespecial').asstring);
  fdt_principal6.spc_cons_adm_acessoEspecial.close;
  fdt_principal6.spc_cons_adm_acessoEspecial.open;
  EscreveLog(btn_removerAcesso.Name);
end;

procedure TFrm_Cad_Acesso.ckb_duplicaClick(Sender: TObject);
begin
  inherited;
  if ckb_duplica.Checked = True then
     begin
     cbx_cod_usuario.Visible:= True;
     btn_duplica.Visible:= True;
     end
  else
     begin
     cbx_cod_usuario.Visible:= False;
     btn_duplica.Visible:= False;
     end;
end;

procedure TFrm_Cad_Acesso.btn_duplicaClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_usuario.Text = '' then
     Exit;
  DB_ExecSQL('delete from tbl_acesso where cod_usuario = '+edt_cod_usuario.text);
  DB_ExecSQL('insert into tbl_acesso (cod_usuario, cod_telasistema, consultar_acs, incluir_acs, alterar_acs, excluir_acs) '+
             'select '+ edt_cod_usuario.text +', a.cod_telasistema, a.consultar_acs, a.incluir_acs, a.alterar_acs, a.excluir_acs '+
             'from tbl_acesso a where cod_usuario = ' + cbx_cod_usuario.getStrItemValue);

  DB_ExecSQL('delete from tbl_acessoEspecial where cod_usuario = '+edt_cod_usuario.text);
  DB_ExecSQL('insert into tbl_acessoEspecial (cod_usuario, cod_telaespecial) select '+
             edt_cod_usuario.text +', ae.cod_telaespecial from tbl_acessoEspecial ae where cod_usuario = ' + cbx_cod_usuario.getStrItemValue);

  ckb_duplica.Checked:= False;
  Dlg_Ok('Perfil de usuário copiado com sucesso!',self);
      with fdt_principal2.spc_AcessoUsuario do begin
      close;
      Params[0].AsString := edt_cod_usuario.text ;
      open;
    end;
end;

procedure TFrm_Cad_Acesso.cbx_cod_telasistemaChange(Sender: TObject);
begin
  inherited;
  fdt_principal2.spc_AcessoUsuario.Locate('cod_telasistema', Copy(cbx_cod_telasistema.Text,1,4), [loCaseInsensitive]);
end;

procedure TFrm_Cad_Acesso.DBG_matriculaCellClick(Column: TColumn);
begin
  inherited;
  btn_removerAcesso.Enabled:= True;
end;

procedure TFrm_Cad_Acesso.edt_cod_usuarioButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
