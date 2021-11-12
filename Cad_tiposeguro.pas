unit Cad_tiposeguro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEdit,
  BEditButton;

type
  TFrm_Cad_tiposeguro = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_tiposeguro: TEditButton;
    edt_nome_tps: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_tiposeguro1ButtonClick(Sender: TObject);
    procedure edt_cod_tiposeguroButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_tiposeguro: TFrm_Cad_tiposeguro;

implementation

{$R *.DFM}

procedure TFrm_Cad_tiposeguro.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Tipo de Seguro' ;
  FEditChave    := 'edt_cod_tiposeguro' ;
  FEditAlteracao:= 'edt_nome_tps' ;
  FUltFoco      := 'edt_nome_tps' ;
  FTitPesquisa  := 'Localizar Tipo de Seguro' ;
  FPesquisa     := 'cod_tiposeguro, nome_tps' ;
  FPesquisaTit  := 'Tipo, Descrição' ;
  inherited;

end;

procedure TFrm_Cad_tiposeguro.edt_cod_tiposeguro1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_tiposeguro.edt_cod_tiposeguroButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
