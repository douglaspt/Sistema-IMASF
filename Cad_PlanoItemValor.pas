unit Cad_PlanoItemValor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Db, Grids, DBGrids,
  jpeg, BEditButton, BEdit, BComboBox;

type
  TFrm_Cad_PlanoItemValor = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBG_matricula: TDBGrid;
    Label5: TLabel;
    btn_adicionarPreco: TPDJButton;
    btn_alterarPreco: TPDJButton;
    btn_excluirPreco: TPDJButton;
    DataSource1: TDataSource;
    btn_salvarPreco: TPDJButton;
    btn_cancelarPreco: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel11: TPanel;
    Label7: TLabel;
    rdB_maior: TRadioButton;
    RdB_fixado: TRadioButton;
    Rdb_Contribuicao: TRadioButton;
    Panel10: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel8: TPanel;
    Panel33: TPanel;
    Panel7: TPanel;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    edt_cod_plano: TEditButton;
    edt_nome_pla: TBEdit;
    edt_descricao_pla: TBEdit;
    edt_descricao_piv: TBEdit;
    cbx_cod_tipodependente: TBComboBox;
    edt_faixaIni_piv: TBEdit;
    edt_faixaFin_piv: TBEdit;
    edt_vlfixo_piv: TBEdit;
    edt_vldependente_piv: TBEdit;
    edt_percentual_piv: TBEdit;
    cbx_cod_empresa: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_plano1ButtonClick(Sender: TObject);
    procedure btn_adicionarPrecoClick(Sender: TObject);
    procedure btn_alterarPrecoClick(Sender: TObject);
    procedure btn_salvarPrecoClick(Sender: TObject);
    procedure btn_cancelarPrecoClick(Sender: TObject);
    procedure btn_excluirPrecoClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_planoButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure BotoesPrecoOnOff(b : boolean);
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_PlanoItemValor: TFrm_Cad_PlanoItemValor;

implementation
uses Fun_DB, dtm_principal, Fun_Str, Fun_obj, DLG_Mensagem, constantes, Fun_Acesso;
{$R *.DFM}

procedure TFrm_Cad_PlanoItemValor.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Planos' ;
  FEditChave    := 'edt_cod_plano' ;
  FEditAlteracao:= 'edt_nome_pla' ;
  FUltFoco      := 'edt_descricao_pla' ;
  FTitPesquisa  := 'Localizar Planos' ;
  FPesquisa     := 'cod_plano, nome_pla, descricao_pla' ;
  FPesquisaTit  := 'Código, Nome do Plano, Nome Completo' ;
  inherited;

end;

procedure TFrm_Cad_PlanoItemValor.BAS_Alterar(Frm:Tform);
begin
  inherited ;
  with Fdt_principal.spc_cons_adm_planoitemvalor do begin
    Close;
    parambyname('@cod_planopagto').asstring := edt_cod_plano.text ;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoItemValor.edt_cod_plano1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_PlanoItemValor.BotoesPrecoOnOff(b : boolean);
begin
  btn_adicionarPreco.Enabled := not b ;
  btn_alterarPreco.Enabled := not b ;
  btn_salvarPreco.Enabled := b ;
  btn_cancelarPreco.Enabled := b ;
  btn_excluirPreco.Enabled := not b ;
  DBG_matricula.Visible := not b ;
end;


procedure TFrm_Cad_PlanoItemValor.btn_adicionarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(true);
  edt_faixaFin_piv.Enabled := true ;
  edt_faixaIni_piv.Enabled := true ;
  cbx_cod_tipodependente.enabled := true ;
  Obj_EmptyEditTag(self, -5);
  PageControl1.ActivePageIndex := 0 ;
  edt_descricao_piv.setfocus;
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  EscreveLog(btn_adicionarPreco.name);
end;

procedure TFrm_Cad_PlanoItemValor.btn_alterarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(true);
  edt_faixaFin_piv.Enabled := false ;
  edt_faixaIni_piv.Enabled := false ;
  cbx_cod_tipodependente.enabled := false ;
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  with Fdt_principal.spc_cons_adm_planoitemvalor do begin
    edt_descricao_piv.text := fieldbyname('descricao_piv').asstring ;
    Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.name, fieldbyname('cod_tipodependente').asstring );
    edt_faixaIni_piv.text := fieldbyname('faixaIni_piv').asstring ;
    edt_faixaFin_piv.text := fieldbyname('faixaFin_piv').asstring ;
    edt_vlfixo_piv.text := fieldbyname('vlfixo_piv').asstring ;
    edt_vldependente_piv.text := fieldbyname('percentual_piv').asstring ;
    edt_percentual_piv.text := fieldbyname('vldependente_piv').asstring ;
    rdB_maior.checked := fieldbyname('formacob_piv').asinteger = 0 ;
    RdB_fixado.checked := fieldbyname('formacob_piv').asinteger = 1 ;
    Rdb_Contribuicao.checked := fieldbyname('formacob_piv').asinteger = 2 ;
  end;
  PageControl1.ActivePageIndex := 0 ;
  edt_descricao_piv.setfocus;
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  EscreveLog(btn_alterarPreco.name);
end;

procedure TFrm_Cad_PlanoItemValor.btn_salvarPrecoClick(Sender: TObject);
var
  wformacob_piv : string ;
begin
  inherited;
  BotoesPrecoOnOff(false);
  if rdB_maior.Checked then
    wformacob_piv := '0' ;
  if RdB_fixado.Checked then
    wformacob_piv := '1' ;
  if Rdb_Contribuicao.Checked then
    wformacob_piv := '2' ;
  if cbx_cod_tipodependente.Enabled then
    DB_ExecSql('insert into tbl_planoitemvalor ('+
    ' cod_plano, cod_tipodependente, descricao_piv, faixaIni_piv, faixaFin_piv, vlfixo_piv, '+
    ' vldependente_piv, percentual_piv, formacob_piv) values ( '+
    edt_cod_plano.text+', '+cbx_cod_tipodependente.getStrItemValue+', '''+edt_descricao_piv.text+''', '+
    edt_faixaIni_piv.text+', '+edt_faixaFin_piv.text+', '''+STR_SubstChar(edt_vlfixo_piv.text, ',','.')+''', '''+
    STR_SubstChar(edt_vldependente_piv.text, ',','.')+''', '''+STR_SubstChar(edt_percentual_piv.text, ',','.')+''', '+wformacob_piv+')')
  else
    DB_ExecSql('update tbl_planoitemvalor set '+
    ' descricao_piv = '''+edt_descricao_piv.text+''', vlfixo_piv = '''+STR_SubstChar(edt_vlfixo_piv.text, ',','.')+''', '+
    ' vldependente_piv = '''+STR_SubstChar(edt_vldependente_piv.text, ',','.')+''', '+
    ' percentual_piv = '''+STR_SubstChar(edt_percentual_piv.text, ',','.')+''', '+
    ' formacob_piv = '+wformacob_piv+' where cod_plano = '+edt_cod_plano.text+' and '+
    ' cod_tipodependente = '+cbx_cod_tipodependente.getStrItemValue+' and '+
    ' faixaIni_piv = '+edt_faixaIni_piv.text+' and faixaFin_piv = '+edt_faixaFin_piv.text);
  Fdt_principal.spc_cons_adm_planoitemvalor.close;
  Fdt_principal.spc_cons_adm_planoitemvalor.open;
  EscreveLog(btn_salvarPreco.name);
end;

procedure TFrm_Cad_PlanoItemValor.btn_cancelarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(false);
  EscreveLog(btn_cancelarPreco.name);
end;

procedure TFrm_Cad_PlanoItemValor.btn_excluirPrecoClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir essa Matricula de Entrada ?', Self) then begin
    DB_ExecSQL('delete from tbl_planoitemvalor where '+
    ' cod_plano = '+edt_cod_plano.text+' and '+
    ' cod_tipodependente = '+cbx_cod_tipodependente.getStrItemValue+' and '+
    ' faixaIni_piv = '+edt_faixaIni_piv.text+' and faixaFin_piv = '+edt_faixaFin_piv.text);
    Fdt_principal.spc_cons_adm_planoitemvalor.close;
    Fdt_principal.spc_cons_adm_planoitemvalor.open;
  end;
  EscreveLog(btn_excluirPreco.name);
end;

procedure TFrm_Cad_PlanoItemValor.TabSheet2Show(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    parambyname('@cod_planoitemvalor').asstring :=
    Fdt_principal.spc_cons_adm_planoitemvalor.FieldByName('cod_planoitemvalor').AsString ;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoItemValor.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(cbx_cod_empresa.name, 'É necessario selecionar uma empresa', VLD_Preenchido) then
    exit ;
  DB_ExecSQL('insert into tbl_planoempresa values ('+
  Fdt_principal.spc_cons_adm_planoitemvalor.FieldByName('cod_planoitemvalor').AsString+
  ', '+cbx_cod_empresa.getStrItemValue+')');
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoItemValor.PDJButton2Click(Sender: TObject);
begin
  inherited;
  DB_ExecSQL('delete from tbl_planoempresa where cod_planoitemvalor = '+
  Fdt_principal.spc_cons_adm_planoitemvalor.FieldByName('cod_planoitemvalor').AsString+
  ' and cod_empresa = '+Fdt_principal.spc_cons_adm_planoempresa.FieldByName('cod_empresa').AsString);
  with Fdt_principal.spc_cons_adm_planoempresa do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoItemValor.FormShow(Sender: TObject);
begin
  inherited;
    BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
end;

procedure TFrm_Cad_PlanoItemValor.edt_cod_planoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
