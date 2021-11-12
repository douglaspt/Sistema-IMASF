unit Cad_SituacEmpr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BEdit;

type
  TFrm_Cad_SituacEmpr = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_situacempr: TEditButton;
    edt_nome_sie: TBEdit;
    edt_descricao_sie: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_situacemprButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_SituacEmpr: TFrm_Cad_SituacEmpr;

implementation

{$R *.DFM}

procedure TFrm_Cad_SituacEmpr.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Situação na Empresa' ;
  FEditChave    := 'edt_cod_situacempr' ;
  FEditAlteracao:= 'edt_nome_sie' ;
  FUltFoco      := 'edt_descricao_sie' ;
  FTitPesquisa  := 'Localizar Situação na Empresa' ;
  FPesquisa     := 'cod_situacempr, nome_sie' ;
  FPesquisaTit  := 'Código, Situação na Empresa' ;
  inherited;

end;

procedure TFrm_Cad_SituacEmpr.edt_cod_situacemprButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
