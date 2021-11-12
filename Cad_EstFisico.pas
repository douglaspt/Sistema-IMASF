unit Cad_EstFisico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg;

type
  TFrm_Cad_estfisico = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_efi: TEdit;
    edt_cod_estfisico: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_estfisicoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_estfisico: TFrm_Cad_estfisico;

implementation

{$R *.DFM}

procedure TFrm_Cad_estfisico.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Estado Físico' ;
  FEditChave    := 'edt_cod_estfisico' ;
  FEditAlteracao:= 'edt_nome_efi' ;
  FUltFoco      := 'edt_nome_efi' ;
  FTitPesquisa  := 'Localizar Estado Físico' ;
  FPesquisa     := 'cod_estfisico, nome_efi' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;
end;

procedure TFrm_Cad_estfisico.edt_cod_estfisicoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
