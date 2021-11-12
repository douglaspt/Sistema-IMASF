unit Cad_Dotacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Mask, BEditButton, BEdit;

type
  TFrm_Cad_Dotacao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    edt_cod_DtcCategEconomica: TMaskEdit;
    edt_cod_dotacaoBase: TEditButton;
    edt_cod_DtcFuncao: TBEdit;
    edt_cod_DtcSubFuncao: TBEdit;
    edt_cod_DtcPrograma: TBEdit;
    edt_cod_DtcProjAtividade: TBEdit;
    edt_descProjeto_dtc: TBEdit;
    edt_descAtividade_dtc: TBEdit;
    edt_descEspecial_dtc: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_cod_dotacaoBaseButtonClick(Sender: TObject);
    procedure edt_cod_DtcFuncaoExit(Sender: TObject);
    procedure edt_cod_DtcSubFuncaoExit(Sender: TObject);
    procedure edt_cod_DtcProgramaExit(Sender: TObject);
    procedure edt_cod_DtcProjAtividadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Dotacao: TFrm_Cad_Dotacao;

implementation

uses Constantes, Fun_Str;

{$R *.DFM}

procedure TFrm_Cad_Dotacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Dota��o' ;
  FEditChave    := 'edt_cod_dotacaoBase' ;
  FEditAlteracao:= 'edt_cod_DtcCategEconomica' ;
  FUltFoco      := 'edt_descEspecial_dtc' ;
  FTitPesquisa  := 'Localizar Dota��o' ;
  FPesquisa     := 'cod_dotacaoBase, cod_DtcCategEconomica,'+
  ' cod_DtcFuncao, cod_DtcSubFuncao, cod_DtcPrograma, cod_DtcProjAtividade' ;
  FPesquisaTit  := 'Cod. Dota��o, Categ. Econo., Fun��o, Sub Fun��o, Programa, Proj. Atividade' ;
  inherited;
end;

function TFrm_Cad_Dotacao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_DtcCategEconomica.name, 'O campo Categoria Economica deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_cod_DtcFuncao.name, 'O campo Fun��o deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_cod_DtcSubFuncao.name, 'O campo Sub Fun��o deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_cod_DtcPrograma.name, 'O campo Programa deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_cod_DtcProjAtividade.name, 'O campo Projeto / Atividade deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_descProjeto_dtc.name, 'O campo Projeto deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_descAtividade_dtc.name, 'O campo Atividades deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Dotacao.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_cod_dotacaoBase.Enabled := false;
end;

procedure TFrm_Cad_Dotacao.btn_alterarClick(Sender: TObject);
begin
  inherited;
  edt_cod_dotacaoBase.Enabled := false;
end;

procedure TFrm_Cad_Dotacao.edt_cod_dotacaoBaseButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_Dotacao.edt_cod_DtcFuncaoExit(Sender: TObject);
begin
  inherited;
  edt_cod_DtcFuncao.text := STR_AddZeros(edt_cod_DtcFuncao.Text,2);
end;

procedure TFrm_Cad_Dotacao.edt_cod_DtcSubFuncaoExit(Sender: TObject);
begin
  inherited;
  edt_cod_DtcSubFuncao.text := STR_AddZeros(edt_cod_DtcSubFuncao.Text,3);
end;

procedure TFrm_Cad_Dotacao.edt_cod_DtcProgramaExit(Sender: TObject);
begin
  inherited;
  edt_cod_DtcPrograma.text := STR_AddZeros(edt_cod_DtcPrograma.Text,4);
end;

procedure TFrm_Cad_Dotacao.edt_cod_DtcProjAtividadeExit(Sender: TObject);
begin
  inherited;
  edt_cod_DtcProjAtividade.text := STR_AddZeros(edt_cod_DtcProjAtividade.Text,3);
end;

end.
