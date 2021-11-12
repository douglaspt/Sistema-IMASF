unit Cad_fornecedorFarmacia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, QuickRpt,
  jpeg, BEditButton, BEdit, BComboBox;

type
  TFrm_Cad_fornecedorFarmacia = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel10: TPanel;
    edt_cod_fornecedorFarmacia: TEditButton;
    edt_cod_fornecedorSIAF: TBEdit;
    edt_razaoSocial_ffa: TBEdit;
    edt_apelido_ffa: TBEdit;
    edt_endereco_ffa: TBEdit;
    edt_cidade_ffa: TBEdit;
    edt_sigla_uf: TBEdit;
    edt_cep_ffa: TBEdit;
    edt_ddd_ffa: TBEdit;
    edt_fone1_ffa: TBEdit;
    edt_fone2_ffa: TBEdit;
    edt_fone3_ffa: TBEdit;
    edt_ramal1_ffa: TBEdit;
    edt_ramal2_ffa: TBEdit;
    edt_ramal3_ffa: TBEdit;
    edt_fax_ffa: TBEdit;
    edt_obs_ffa: TBEdit;
    edt_cgc_ffa: TBEdit;
    edt_inscricaoEstadual_ffa: TBEdit;
    cbx_cod_sitFornecedorFarmacia: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_fornecedorFarmacia1ButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_cod_fornecedorFarmacia1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edt_cod_fornecedorFarmaciaButtonClick(Sender: TObject);
    procedure edt_cod_fornecedorFarmaciaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure CarregarCombo;
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_fornecedorFarmacia: TFrm_Cad_fornecedorFarmacia;

implementation
uses Constantes, Bas_Impressao, dtm_principal5;
{$R *.DFM}

procedure TFrm_Cad_fornecedorFarmacia.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Fornecedores da Farmácia do IMASF' ;
  FEditChave    := 'edt_cod_fornecedorFarmacia' ;
  FEditAlteracao:= 'edt_cod_fornecedorSIAF' ;
  FUltFoco      := 'edt_cod_sitFornecedorFarmacia' ;
  FTitPesquisa  := 'Localizar Fornecedores da Farmácia do IMASF' ;
  FPesquisa     := 'cod_fornecedorFarmacia, cod_fornecedorSIAF, razaoSocial_ffa, cod_sitFornecedorFarmacia' ;
  FPesquisaTit  := 'Código, Cod. Forn. SIAF, Razão Social, Situação' ;
  inherited;

end;

function TFrm_Cad_fornecedorFarmacia.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if //(not BAS_ValidarCampo(edt_cod_fornecedorFarmacia.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_fornecedorSIAF.name, 'O Código do Fornecedor SIAF deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_fornecedorFarmacia.CarregarCombo;
begin
  cbx_cod_sitFornecedorFarmacia.Clear;
  cbx_cod_sitFornecedorFarmacia.Items.AddObject('Ativo', TObject(1));
  cbx_cod_sitFornecedorFarmacia.Items.AddObject('Inativo', TObject(3));
end;

procedure TFrm_Cad_fornecedorFarmacia.edt_cod_fornecedorFarmacia1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_fornecedorFarmacia.btn_novoClick(Sender: TObject);
begin
  inherited;
  CarregarCombo;
  edt_cod_fornecedorFarmacia.Enabled := false;
  edt_cod_fornecedorSIAF.SetFocus;
end;

procedure TFrm_Cad_fornecedorFarmacia.btn_alterarClick(Sender: TObject);
begin
  CarregarCombo;
  inherited;

end;

procedure TFrm_Cad_fornecedorFarmacia.edt_cod_fornecedorFarmacia1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if FStatus = FST_Normal then
    if key = 13 then
      edt_cod_fornecedorFarmaciaButtonClick(self);
end;

procedure TFrm_Cad_fornecedorFarmacia.edt_cod_fornecedorFarmaciaButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_fornecedorFarmacia.edt_cod_fornecedorFarmaciaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if FStatus = FST_Normal then
    if key = 13 then
      edt_cod_fornecedorFarmaciaButtonClick(self);
end;

end.
