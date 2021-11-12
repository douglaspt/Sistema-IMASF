unit Cad_conveniadoendereco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls;

type
  TFrm_Cad_conveniadoendereco = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    edt_cod_conveniadoendereco: TDCChoiceEdit;
    edt_fone_cne: TDCEdit;
    Panel5: TPanel;
    edt_uf_cne: TDCEdit;
    Panel7: TPanel;
    edt_cidade_cne: TDCEdit;
    Panel8: TPanel;
    edt_bairro_cne: TDCEdit;
    Panel9: TPanel;
    edt_cep_cne: TDCEdit;
    Panel10: TPanel;
    edt_endereco_cne: TDCEdit;
    Panel11: TPanel;
    edt_cnpj_cne: TDCEdit;
    Panel12: TPanel;
    edt_razao_cne: TDCEdit;
    Panel13: TPanel;
    edt_sequencia_cne: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoenderecoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_conveniadoendereco: TFrm_Cad_conveniadoendereco;

implementation
uses Constantes;
{$R *.DFM}

procedure TFrm_Cad_conveniadoendereco.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Endereços' ;
  FEditChave    := 'edt_cod_conveniadoendereco,' ;
  FEditAlteracao:= 'edt_sequencia_cne' ;
  FUltFoco      := 'edt_fone_cne' ;
  FTitPesquisa  := 'Localizar Endereços' ;
  FPesquisa     := 'cod_conveniadoendereco, sequencia_cne, razao_cne, cnpj_cne, endereco_cne, cep_cne, bairro_cne, cidade_cne, uf_cne, fone_cne ' ;
  FPesquisaTit  := 'Código, Sequencia, Razao Social, cnpj, endereco, cep, bairro, cidade, uf, fone ' ;
  inherited;

end;

function TFrm_Cad_conveniadoendereco.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniadoendereco.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_razao_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cnpj_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cep_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cidade_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_uf_cne.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_fone_cne.name, 'O nome completo da empresa deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_conveniadoendereco.edt_cod_conveniadoenderecoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

end.
