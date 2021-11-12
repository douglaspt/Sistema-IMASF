unit Cad_SetorIMASF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Db, Grids,
  DBGrids, BEditButton, BEdit, BComboBox;

type
  TFrm_Cad_SetorIMASF = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel6: TPanel;
    btn_adicionar_dts: TPDJButton;
    btn_alterar_dts: TPDJButton;
    btn_remover_dts: TPDJButton;
    btn_salvar_dts: TPDJButton;
    btn_cancelar_dts: TPDJButton;
    dbg_dotacaoSetor: TDBGrid;
    DataSource1: TDataSource;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    edt_cod_setorimasf: TEditButton;
    edt_nome_sti: TBEdit;
    cbx_cod_usuarioResponsavel: TBComboBox;
    cbx_cod_dotacao: TBComboBox;
    Panel11: TPanel;
    edt_descricao_sti: TBEdit;
    Panel9: TPanel;
    edt_sigla_sti: TBEdit;
    Panel10: TPanel;
    edt_indice_sti: TBEdit;
    Panel8: TPanel;
    chb_flag_sti: TCheckBox;
    cbx_cod_usuarioChefe: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_adicionar_dtsClick(Sender: TObject);
    procedure btn_alterar_dtsClick(Sender: TObject);
    procedure btn_salvar_dtsClick(Sender: TObject);
    procedure btn_cancelar_dtsClick(Sender: TObject);
    procedure btn_remover_dtsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_setorimasfButtonClick(Sender: TObject);
    procedure edt_indice_stiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FStatus2 : Integer ;
    procedure CarregarCombos;
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_SetorIMASF: TFrm_Cad_SetorIMASF;

implementation

{$R *.DFM}

uses Fun_Obj, dtm_principal4, Constantes, Dlg_Mensagem, Fun_DB, Fun_Acesso;

procedure TFrm_Cad_SetorIMASF.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Setores' ;
  FEditChave    := 'edt_cod_setorimasf' ;
  FEditAlteracao:= 'edt_nome_sit' ;
  FUltFoco      := 'edt_nome_sti' ;
  FTitPesquisa  := 'Localizar Setores do Instituto' ;
  FPesquisa     := 'cod_setorimasf, nome_sti, sigla_sti' ;
  FPesquisaTit  := 'Código, Nome do Setor, sigla' ;
  inherited;
end;

procedure TFrm_Cad_SetorIMASF.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited ;
    with fdt_principal4.spc_cons_adm_dotacaosetor do begin
    Close;
    parambyname('@cod_setorIMASF').asstring := edt_cod_setorimasf.text ;
    Open;
    end;
end;

procedure TFrm_Cad_SetorIMASF.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_usuarioResponsavel', 'descricao_usu', 'cod_usuario', 'tbl_usuario where status_usu = 1 order by descricao_usu');
  Obj_LoadCombo(Self, 'cbx_cod_usuarioChefe', 'descricao_usu', 'cod_usuario', 'tbl_usuario where status_usu = 1 order by descricao_usu');
  Obj_LoadCombo(Self, 'cbx_cod_dotacao', 'cast(cod_unidadeOrcam as varchar(4))+''-''+cod_DtcCategEconomica+''-'''+
  '+cast(cod_DtcFuncao as varchar(2))+''-''+cast(cod_DtcSubFuncao as varchar(3))+''-'''+
  '+cast(cod_DtcPrograma as varchar(4))+''-''+cast(cod_DtcProjAtividade as varchar(3)) as ''dotacao''',
  'cod_dotacao', 'tbl_dotacao d, tbl_dotacaoBase db where d.cod_dotacaoBase = db.cod_dotacaoBase');
end;

procedure TFrm_Cad_SetorIMASF.btn_adicionar_dtsClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  btn_adicionar_dts.Enabled := false ;
  btn_alterar_dts.Enabled := false ;
  btn_remover_dts.Enabled := false ;
  btn_salvar_dts.Enabled := true ;
  btn_cancelar_dts.Enabled := true;
  dbg_dotacaoSetor.visible := false ;
  cbx_cod_dotacao.Clear;
  cbx_cod_dotacao.Items.AddObject('', TObject(0));
  cbx_cod_dotacao.Refresh;
  EscreveLog(btn_adicionar_dts.name);
  Obj_LoadCombo
  (Self, 'cbx_cod_dotacao', 'cast(cod_unidadeOrcam as varchar(4))+''-''+cod_DtcCategEconomica+''-'''+
  '+cast(cod_DtcFuncao as varchar(2))+''-''+cast(cod_DtcSubFuncao as varchar(3))+''-'''+
  '+cast(cod_DtcPrograma as varchar(4))+''-''+cast(cod_DtcProjAtividade as varchar(3)) as ''dotacao''',
  'cod_dotacao', 'tbl_dotacao d, tbl_dotacaoBase db where d.cod_dotacaoBase = db.cod_dotacaoBase');
end;

procedure TFrm_Cad_SetorIMASF.btn_alterar_dtsClick(Sender: TObject);
begin
  inherited;
  with fdt_principal4.spc_cons_adm_dotacaoSetor do begin
    btn_adicionar_dts.Enabled := false ;
    btn_alterar_dts.Enabled := false ;
    btn_remover_dts.Enabled := false ;
    btn_salvar_dts.Enabled := true ;
    btn_cancelar_dts.Enabled := true ;
    dbg_dotacaoSetor.visible := false ;
    Obj_SetFormObjValueByName(self, cbx_cod_dotacao.name, FieldByName('cod_dotacao').AsString);
    end;
    Obj_LoadCombo
  (Self, 'cbx_cod_dotacao', 'cast(cod_unidadeOrcam as varchar(4))+''-''+cod_DtcCategEconomica+''-'''+
  '+cast(cod_DtcFuncao as varchar(2))+''-''+cast(cod_DtcSubFuncao as varchar(3))+''-'''+
  '+cast(cod_DtcPrograma as varchar(4))+''-''+cast(cod_DtcProjAtividade as varchar(3)) as ''dotacao''',
  'cod_dotacao', 'tbl_dotacao d, tbl_dotacaoBase db where d.cod_dotacaoBase = db.cod_dotacaoBase');
    EscreveLog(btn_alterar_dts.name);
end;

procedure TFrm_Cad_SetorIMASF.btn_salvar_dtsClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(cbx_cod_dotacao.name, 'É necessário preencher a Dotação', VLD_Preenchido) then
    exit ;
      if Dlg_YesNo('Tem Certeza que Salvar a Dotação ?', Self) then
    begin
    end;
 if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_dotacaosetor ('+
  ' cod_setorIMASF, cod_dotacao) values ('
  +edt_cod_setorimasf.Text+','+cbx_cod_dotacao.getStrItemValue+')')
  else
      DB_ExecSQL('update tbl_dotacaosetor set '+
    'cod_dotacao = '+cbx_cod_dotacao.getStrItemValue+
    ' where '+
    ' cod_setorIMASF = '+edt_cod_setorimasf.text );
  with fdt_principal4.spc_cons_adm_dotacaosetor do begin
    Close;
    parambyname('@cod_setorIMASF').asstring := edt_cod_setorimasf.text ;
    Open;
  end;
  btn_adicionar_dts.Enabled := true ;
  btn_alterar_dts.Enabled := true ;
  btn_remover_dts.Enabled := true ;
  dbg_dotacaoSetor.visible := true ;
  btn_salvar_dts.Enabled := false ;
  btn_cancelar_dts.Enabled := false ;
  EscreveLog(btn_salvar_dts.name);
end;

procedure TFrm_Cad_SetorIMASF.btn_cancelar_dtsClick(Sender: TObject);
begin
  inherited;
  btn_adicionar_dts.Enabled := true ;
  btn_alterar_dts.Enabled := true ;
  btn_remover_dts.Enabled := true ;
  btn_cancelar_dts.Enabled := false;
  btn_salvar_dts.Enabled := false;
  dbg_dotacaoSetor.visible := true ;
  EscreveLog(btn_cancelar_dts.name);
end;

procedure TFrm_Cad_SetorIMASF.btn_remover_dtsClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir a Dotação ?', Self) then begin
    DB_ExecSQL('delete from tbl_dotacaoSetor where cod_setorIMASF = '+
    edt_cod_setorimasf.text+' and cod_dotacao = '+fdt_principal4.spc_cons_adm_dotacaoSetor.FieldByName('cod_dotacao').asstring);
    fdt_principal4.spc_cons_adm_dotacaoSetor.close;
    fdt_principal4.spc_cons_adm_dotacaoSetor.open;
  end;
  EscreveLog(btn_remover_dts.name);
end;

procedure TFrm_Cad_SetorIMASF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal4.spc_cons_adm_dotacaosetor.Close;
end;

procedure TFrm_Cad_SetorIMASF.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
end;

procedure TFrm_Cad_SetorIMASF.btn_novoClick(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  edt_cod_setorimasf.SetFocus;
end;

procedure TFrm_Cad_SetorIMASF.edt_cod_setorimasfButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_SetorIMASF.edt_indice_stiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not( key in['0'..'9','.',#08] ) then
     key:=#0;
end;

end.
