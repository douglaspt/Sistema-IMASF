unit Cad_SitBeneficiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg;

type
  TFrm_Cad_sitbeneficiario = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    rdg_tipo_sit: TRadioGroup;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    chb_blomedico_sit: TCheckBox;
    CheckBox1: TCheckBox;
    chb_blofarmacia_sit: TCheckBox;
    chb_blolaboratorio_sit: TCheckBox;
    chb_bloodonto_sit: TCheckBox;
    edt_cod_sitbeneficiario: TEditButton;
    edt_nome_sit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_sitbeneficiarioButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_sitbeneficiario: TFrm_Cad_sitbeneficiario;

implementation

{$R *.DFM}

procedure TFrm_Cad_sitbeneficiario.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Situação de Beneficiários' ;
  FEditChave    := 'edt_cod_sitbeneficiario' ;
  FEditAlteracao:= 'edt_nome_sit' ;
  FUltFoco      := 'rdg_tipo_sit' ;
  FTitPesquisa  := 'Localizar Situação de Beneficiários' ;
  FPesquisa     := 'cod_sitbeneficiario, nome_sit' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;

end;

procedure TFrm_Cad_sitbeneficiario.edt_cod_sitbeneficiarioButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
