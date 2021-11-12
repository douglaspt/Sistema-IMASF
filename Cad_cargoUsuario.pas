unit Cad_cargoUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, QuickRpt, BEdit, jpeg,
  Buttons, BEditButton, BComboBox, BDateTime, Fun_Obj;

type
  TFrm_Cad_cargoUsuario = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_descricao_cgu: TBEdit;
    Panel1: TPanel;
    cbx_cod_statusAtivo: TBComboBox;
    edt_cod_cargoUsuario: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_cod_cargoUsuario1ButtonClick(Sender: TObject);
    procedure edt_cod_cargoUsuario1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_cargoUsuarioButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_cargoUsuario: TFrm_Cad_cargoUsuario;

implementation
uses Constantes;
{$R *.DFM}

procedure TFrm_Cad_cargoUsuario.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Cargos' ;
  FEditChave    := 'edt_cod_cargoUsuario' ;
  FEditAlteracao:= 'edt_cod_cargoUsuario' ;
  FUltFoco      := 'edt_descricao_sta' ;
  FTitPesquisa  := 'Localizar Cargos' ;
  FPesquisa     := 'cod_cargoUsuario, descricao_cgu' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;
end;

function TFrm_Cad_cargoUsuario.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if //(not BAS_ValidarCampo(edt_cod_cargoUsuario.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_cgu.name, 'A descrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_statusAtivo.name, 'A situação deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_cargoUsuario.btn_novoClick(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
//  edt_cod_cargoUsuario.Enabled := false;
//  edt_descricao_cgu.SetFocus;
end;

procedure TFrm_Cad_cargoUsuario.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  edt_cod_cargoUsuario.Enabled := true;
end;

procedure TFrm_Cad_cargoUsuario.btn_salvarClick(Sender: TObject);
begin
  inherited;
  edt_cod_cargoUsuario.Enabled := true;
end;

procedure TFrm_Cad_cargoUsuario.edt_cod_cargoUsuario1ButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_cargoUsuario.edt_cod_cargoUsuario1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_alterarClick(self);
end;

procedure TFrm_Cad_cargoUsuario.btn_alterarClick(Sender: TObject);
begin
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  inherited;
end;

procedure TFrm_Cad_cargoUsuario.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
end;

procedure TFrm_Cad_cargoUsuario.edt_cod_cargoUsuarioButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
