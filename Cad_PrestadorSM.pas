unit Cad_PrestadorSM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, BEditButton, jpeg,
  BComboBox, BEdit;

type
  TFrm_Cad_PrestadorSM = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel18: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    edt_cod_prestadorSM: TEditButton;
    edt_nomereduzido_psm: TBEdit;
    edt_nome_psm: TBEdit;
    edt_razao_psm: TBEdit;
    edt_cnpj_psm: TBEdit;
    edt_fone_psm: TBEdit;
    edt_endereco_psm: TBEdit;
    edt_bairro_psm: TBEdit;
    edt_cidade_psm: TBEdit;
    cbx_cod_uf: TBComboBox;
    edt_cep_psm: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_prestadorSMButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarCombos;
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
  end;

var
  Frm_Cad_PrestadorSM: TFrm_Cad_PrestadorSM;

implementation
uses Fun_obj;
{$R *.DFM}

procedure TFrm_Cad_PrestadorSM.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Prestadores de Serviços Médicos' ;
  FEditChave    := 'edt_cod_prestadorSM' ;
  FEditAlteracao:= 'edt_nome_psm' ;
  FUltFoco      := 'edt_cep_psm' ;
  FTitPesquisa  := 'Localizar Prestador de Serviço Médico' ;
  FPesquisa     := 'cod_prestadorSM, nomereduzido_psm, nome_psm, razao_psm' ;
  FPesquisaTit  := 'Código, Nome reduzido, Nome do Prestador, Razão Social' ;
  inherited;

end;

procedure TFrm_Cad_PrestadorSM.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
end;

procedure TFrm_Cad_PrestadorSM.BAS_Novo(Frm:Tform);
begin
  inherited;
    CarregarCombos;
end;

procedure TFrm_Cad_PrestadorSM.BAS_Alterar(Frm:Tform);
  var
    conv : string ;
begin
  CarregarCombos;
  inherited ;

end;

procedure TFrm_Cad_PrestadorSM.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
end;

procedure TFrm_Cad_PrestadorSM.edt_cod_prestadorSMButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

end.
