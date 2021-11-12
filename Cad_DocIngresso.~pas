unit Cad_DocIngresso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, BEditButton, jpeg, StdCtrls,
  DCChoice;

type
  TFrm_Cad_DocIngresso = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_nome_din: TEdit;
    edt_Doc_Regra_din: TDCEdit;
    edt_cod_docingresso: TDCChoiceEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_docingressoButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure edt_cod_docingressoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_DocIngresso: TFrm_Cad_DocIngresso;

implementation

uses Dlg_Mensagem, Constantes;
{$R *.DFM}

procedure TFrm_Cad_DocIngresso.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Documentos e Regras para Ingresso' ;
  FEditChave    := 'edt_cod_docingresso' ;
  FEditAlteracao:= 'edt_nome_din' ;
  FUltFoco      := 'edt_Doc_Regra_din' ;
  FTitPesquisa  := 'Localizar Documentos e Regras' ;
  FPesquisa     := 'cod_docingresso, nome_din, Doc_Regra_din' ;
  FPesquisaTit  := 'Código, Descrição, Tipo' ;
  inherited;

end;

function TFrm_Cad_DocIngresso.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_nome_din.name, 'A Descrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_Doc_Regra_din.name, 'O Tipo deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  if (edt_Doc_Regra_din.Text <> '0') and (edt_Doc_Regra_din.Text <> '1') then
  begin
    Dlg_Alerta('O tipo dever ser preenchido com 0 ou 1',self);
    Exit;
  end;
  result := false ;
end;

procedure TFrm_Cad_DocIngresso.edt_cod_docingressoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_DocIngresso.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_cod_docingresso.Enabled := false;
  edt_nome_din.SetFocus;
end;

procedure TFrm_Cad_DocIngresso.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  edt_cod_docingresso.Enabled := true;
end;

procedure TFrm_Cad_DocIngresso.edt_cod_docingressoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_alterarClick(self);
end;

procedure TFrm_Cad_DocIngresso.btn_salvarClick(Sender: TObject);
begin
  inherited;
  edt_cod_docingresso.Enabled := true;
end;

end.
