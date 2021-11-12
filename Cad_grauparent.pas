unit Cad_grauparent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton, BComboBox;

type
  TFrm_Cad_grauparent = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    edt_cod_grauparent: TEditButton;
    edt_nome_gra: TEdit;
    edt_obs_gra: TEdit;
    cbx_cod_statusAtivo: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_grauparentButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_grauparent: TFrm_Cad_grauparent;

implementation

{$R *.DFM}

procedure TFrm_Cad_grauparent.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Grau de Parentesco' ;
  FEditChave    := 'edt_cod_grauparent' ;
  FEditAlteracao:= 'edt_nome_gra' ;
  FUltFoco      := 'edt_obs_gra' ;
  FTitPesquisa  := 'Localizar Grau de Parentesco' ;
  FPesquisa     := 'cod_grauparent, nome_gra' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;
end;

procedure TFrm_Cad_grauparent.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
end;

procedure TFrm_Cad_grauparent.btn_novoClick(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
end;

procedure TFrm_Cad_grauparent.BAS_Alterar(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  inherited ;
end;

procedure TFrm_Cad_grauparent.edt_cod_grauparentButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
