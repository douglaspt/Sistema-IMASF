unit Cad_formaadm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg;

type
  TFrm_Cad_formaadm = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_fad: TEdit;
    edt_cod_formaadm: TEditButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_formaadmButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_formaadm: TFrm_Cad_formaadm;

implementation

{$R *.DFM}

procedure TFrm_Cad_formaadm.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Forma de Admiss�o' ;
  FEditChave    := 'edt_cod_formaadm' ;
  FEditAlteracao:= 'edt_nome_fad' ;
  FUltFoco      := 'edt_nome_fad';
  FTitPesquisa  := 'Localizar Forma de Admiss�o' ;
  FPesquisa     := 'cod_formaadm, nome_fad' ;
  FPesquisaTit  := 'C�digo, Descri��o' ;
  inherited;

end;

procedure TFrm_Cad_formaadm.edt_cod_formaadmButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
