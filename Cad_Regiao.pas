unit Cad_Regiao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Buttons, BEdit,
  Grids, DBGrids, Db, BComboBox, BEditButton;

type
  TFrm_Cad_Regiao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    pnl_cidade: TPanel;
    DBG_matricula: TDBGrid;
    GroupBox1: TGroupBox;
    btn_removerAcesso: TPDJButton;
    btn_adicionarAcesso: TPDJButton;
    Panel6: TPanel;
    DataSource1: TDataSource;
    edt_cod_regiao: TEditButton;
    edt_descricao_reg: TBEdit;
    cbx_cod_uf: TBComboBox;
    cbx_cod_cidadeCep: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_choiceClick(Sender: TObject);
    procedure btn_adicionarAcessoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_removerAcessoClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure edt_cod_regiaoButtonClick(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                   override ;
    procedure BAS_Salvar(Frm:Tform);                   override ;

  end;

var
  Frm_Cad_Regiao: TFrm_Cad_Regiao;

implementation

uses Constantes, Fun_Obj, Fun_DB, dtm_principal5;

{$R *.DFM}

procedure TFrm_Cad_Regiao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Regi�o' ;
  FEditChave    := 'edt_cod_regiao' ;
  FEditAlteracao:= 'edt_cod_regiao' ;
  FUltFoco      := 'edt_descricao_reg' ;
  FTitPesquisa  := 'Localizar Regi�o' ;
  FPesquisa     := 'cod_regiao, descricao_reg' ;
  FPesquisaTit  := 'C�digo, Descri��o' ;
  inherited;
end;

function TFrm_Cad_Regiao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_regiao.name, 'O c�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_reg.name, 'A Descri��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Regiao.BAS_Alterar(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  inherited ;
    with fdt_principal5.spc_cons_adm_regiaoCidade do begin
      close;
      ParamByName('@cod_regiao').AsString := edt_cod_regiao.Text;
      open;
    end;
  if FStatus = FSt_Alteracao then
    pnl_cidade.Visible := true;
end;

procedure TFrm_Cad_Regiao.BAS_Cancelar(Frm:Tform);
begin
  inherited ;
  if FStatus = FSt_normal then begin
    pnl_cidade.Visible := false;
    fdt_principal5.spc_cons_adm_regiaoCidade.Close;
  end;
end;

procedure TFrm_Cad_Regiao.BAS_Salvar(Frm:Tform);
begin
  inherited ;
  if FStatus = FSt_normal then begin
    pnl_cidade.Visible := false;
    fdt_principal5.spc_cons_adm_regiaoCidade.Close;
  end;
end;

procedure TFrm_Cad_Regiao.btn_choiceClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Regiao.btn_adicionarAcessoClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_regiao.name, 'O c�digo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) then
    exit;
  DB_ExecSQL('delete from tbl_regiaocidade where cod_regiao = '+edt_cod_regiao.Text+
  ' and cod_cidadeCep = '+cbx_cod_cidadeCep.getStrItemValue);
  DB_ExecSQL('insert into tbl_regiaocidade (cod_regiao, cod_cidadeCep) values('+edt_cod_regiao.Text+
  ', '+cbx_cod_cidadeCep.getStrItemValue+')');
  fdt_principal5.spc_cons_adm_regiaoCidade.close;
  fdt_principal5.spc_cons_adm_regiaoCidade.Open;
end;

procedure TFrm_Cad_Regiao.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  pnl_cidade.Visible := false;
end;

procedure TFrm_Cad_Regiao.btn_novoClick(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  pnl_cidade.Visible := false;
end;

procedure TFrm_Cad_Regiao.btn_removerAcessoClick(Sender: TObject);
begin
  inherited;
  if (edt_cod_regiao.Text <> '') and (fdt_principal5.spc_cons_adm_regiaoCidade.fieldByName('cod_cidadeCep').AsString <> '') then
  begin
    DB_ExecSQL('delete from tbl_regiaocidade where cod_regiao = '+edt_cod_regiao.Text+
    ' and cod_cidadeCep = '+fdt_principal5.spc_cons_adm_regiaoCidade.fieldByName('cod_cidadeCep').AsString);
    fdt_principal5.spc_cons_adm_regiaoCidade.Close;
    fdt_principal5.spc_cons_adm_regiaoCidade.Open;
  end;
end;

procedure TFrm_Cad_Regiao.btn_excluirClick(Sender: TObject);
begin
  DB_ExecSQL('delete from tbl_regiaocidade where cod_regiao = '+edt_cod_regiao.Text);
  inherited;
  if edt_cod_regiao.Text = '' then
    pnl_cidade.Visible := false;
end;

procedure TFrm_Cad_Regiao.edt_cod_regiaoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_Regiao.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  if cbx_cod_uf.Text <> '' then begin
//    cbx_cod_cidadeCep.ValItems.Clear;
    cbx_cod_cidadeCep.Clear;
    Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep where cod_uf = '+cbx_cod_uf.getStrItemValue+' order by cidade_cep');
  end;
end;

end.
