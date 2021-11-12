unit Cad_OcorrenciaEdital;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BComboBox,
  BEdit, BEditButton;

type
  TFrm_Cad_OcorrenciaEdital = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    edt_cod_ocorrenciaEdital: TEditButton;
    edt_descricao_oce: TBEdit;
    edt_tipo_oce: TBEdit;
    cbx_cod_textoEdital: TBComboBox;
    cbx_cod_statusAtivo: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure CarregarCombos;
    procedure edt_cod_ocorrenciaEditalButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_OcorrenciaEdital: TFrm_Cad_OcorrenciaEdital;

implementation

uses Constantes, Fun_obj;

{$R *.DFM}

procedure TFrm_Cad_OcorrenciaEdital.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Ocorrências para o Edital' ;
  FEditChave    := 'edt_cod_ocorrenciaEdital' ;
  FEditAlteracao:= 'edt_descricao_oce' ;
  FUltFoco      := 'cbx_cod_textoEdital' ;
  FTitPesquisa  := 'Localizar Ocorrências' ;
  FPesquisa     := 'cod_ocorrenciaEdital, descricao_oce' ;
  FPesquisaTit  := 'Código, Descrição' ;
  inherited;
end;

procedure TFrm_Cad_OcorrenciaEdital.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited ;
end;

function TFrm_Cad_OcorrenciaEdital.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_ocorrenciaEdital.name, 'O Código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_oce.name, 'A Descrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_tipo_oce.name, 'O Tipo de Ocorrência deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_textoEdital.name, 'O Tipo de Ocorrência deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_OcorrenciaEdital.btn_novoClick(Sender: TObject);
begin
  CarregarCombos;
  inherited;
end;

procedure TFrm_Cad_OcorrenciaEdital.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_textoEdital', 'descricao_ted', 'cod_textoEdital', 'tbl_textoEdital');
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
end;

procedure TFrm_Cad_OcorrenciaEdital.edt_cod_ocorrenciaEditalButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
