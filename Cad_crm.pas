unit Cad_crm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton,
  BEdit;

type
  TFrm_Cad_crm = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    edt_cod_crm: TEditButton;
    edt_medico_crm: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_crm: TFrm_Cad_crm;

implementation

uses Constantes;

{$R *.DFM}

procedure TFrm_Cad_crm.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de CRM' ;
  FEditChave    := 'edt_cod_crm' ;
  FEditAlteracao:= 'edt_medico_crm' ;
  FUltFoco      := 'edt_medico_crm' ;
  FTitPesquisa  := 'Localizar CRM' ;
  FPesquisa     := 'cod_crm, medico_crm' ;
  FPesquisaTit  := 'Código, Nome da CRM' ;
  inherited;

end;

function TFrm_Cad_crm.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_crm.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_medico_crm.name, 'O Nome deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_crm.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
