unit Cad_PlanoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Grids, DBGrids,
  Db, jpeg, BEditButton, BEdit, BComboBox;

type
  TFrm_Cad_PlanoEmpresa = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    btn_adicionarPreco: TPDJButton;
    btn_excluirPreco: TPDJButton;
    btn_salvarPreco: TPDJButton;
    btn_cancelarPreco: TPDJButton;
    DBG_matricula: TDBGrid;
    Panel33: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DataSource2: TDataSource;
    btn_relatorio: TPDJButton;
    edt_cod_empresa: TEditButton;
    edt_nome_emp: TBEdit;
    edt_descricao_emp: TBEdit;
    edt_descricao_ple: TBEdit;
    cbx_cod_tipodependente: TBComboBox;
    cbx_cod_planopagto: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_empresa1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_adicionarPrecoClick(Sender: TObject);
    procedure btn_salvarPrecoClick(Sender: TObject);
    procedure btn_cancelarPrecoClick(Sender: TObject);
    procedure btn_excluirPrecoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure edt_cod_empresaButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure BotoesPrecoOnOff(b : boolean);
  public
    { Public declarations }
    procedure BotoesOnOff(b:boolean);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;    
  end;

var
  Frm_Cad_PlanoEmpresa: TFrm_Cad_PlanoEmpresa;

implementation
uses Constantes, Fun_obj, Fun_DB, dtm_principal, Imp_4054, dtm_principal2, Fun_Acesso;
{$R *.DFM}

procedure TFrm_Cad_PlanoEmpresa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Empresas' ;
  FEditChave    := 'edt_cod_empresa' ;
  FEditAlteracao:= 'edt_nome_emp' ;
  FUltFoco      := 'edt_descricao_emp' ;
  FTitPesquisa  := 'Localizar Empresas' ;
  FPesquisa     := 'cod_empresa, nome_emp' ;
  FPesquisaTit  := 'Código, Nome da Empresa' ;
  inherited;

end;

procedure TFrm_Cad_PlanoEmpresa.BotoesOnOff(b:boolean);
begin
  inherited;
    btn_relatorio.Enabled := b ;
end;


procedure TFrm_Cad_PlanoEmpresa.BotoesPrecoOnOff(b : boolean);
begin
  btn_adicionarPreco.Enabled := not b ;
  btn_salvarPreco.Enabled := b ;
  btn_cancelarPreco.Enabled := b ;
  btn_excluirPreco.Enabled := not b ;
  DBG_matricula.Visible := not b ;
end;

function TFrm_Cad_PlanoEmpresa.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_empresa.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_emp.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_emp.name, 'O nome completo da empresa deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_PlanoEmpresa.edt_cod_empresa1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_PlanoEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_planopagto', 'nome_plp');
end;

procedure TFrm_Cad_PlanoEmpresa.btn_adicionarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(true);
  Obj_EmptyEditTag(self, -5);
  edt_descricao_ple.setfocus;
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_planopagto', 'nome_plp');
  EscreveLog(btn_adicionarPreco.name);
end;

procedure TFrm_Cad_PlanoEmpresa.btn_salvarPrecoClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_descricao_ple.name, 'É preencher a descrição com o nome da Tabela', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(cbx_cod_planopagto.name, 'É necessario selecionar uma Tabela de Plano de Pagamento', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(cbx_cod_tipodependente.name, 'É necessario selecionar um Tipo de Dependente', VLD_Preenchido) then
    exit ;
  BotoesPrecoOnOff(false);
  DB_ExecSQL('insert into tbl_planoempresa ('+
  'cod_empresa, cod_planopagto, cod_tipodependente, descricao_ple ) values ('+
  edt_cod_empresa.text+', '+cbx_cod_planopagto.getStrItemValue+', '+
  cbx_cod_tipodependente.getStrItemValue+', '''+edt_descricao_ple.text+''')');
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    parambyname('@cod_empresa').asstring := edt_cod_empresa.text ;
    Open;
  end;
  EscreveLog(btn_salvarPreco.name);
end;

procedure TFrm_Cad_PlanoEmpresa.btn_cancelarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(false);
  EscreveLog(btn_cancelarPreco.name);
end;

procedure TFrm_Cad_PlanoEmpresa.btn_excluirPrecoClick(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('delete from tbl_planoempresa where cod_empresa = '+
  Fdt_principal.spc_cons_adm_planoempresa.FieldByName('cod_empresa').AsString+
  ' and descricao_ple = '+Fdt_principal.spc_cons_adm_planoempresa.fieldbyname('descricao_ple').AsString);
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    Open;
  end;
  EscreveLog(btn_excluirPreco.name);
end;

procedure TFrm_Cad_PlanoEmpresa.BAS_Alterar(Frm:Tform);
begin
  inherited ;
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    parambyname('@cod_empresa').asstring := edt_cod_empresa.text ;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoEmpresa.btn_novoClick(Sender: TObject);
begin
  inherited;
  Fdt_principal.spc_cons_adm_planoempresa.Close;
end;

procedure TFrm_Cad_PlanoEmpresa.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  Frm_Imp_4054 := TFrm_Imp_4054.Create(Self);
  Frm_Imp_4054.FEmpresa := edt_nome_emp.Text;
  Frm_Imp_4054.QuickRep1.Preview;
  Frm_Imp_4054.Release;
end;

procedure TFrm_Cad_PlanoEmpresa.edt_cod_empresaButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
