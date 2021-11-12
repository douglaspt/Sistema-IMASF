unit Cad_parametro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton, BEdit;

type
  TFrm_Cad_parametro = class(TFrm_Bas_Cadastro)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    edt_cod_parametro: TEditButton;
    edt_nossonumeroboleto: TBEdit;
    edt_dtvalcomissionado_par: TDateTimePicker;
    edt_dtvalidademaxima_par: TDateTimePicker;
    edt_sequencialremessa: TBEdit;
    edt_cod_tarifaSegViaCart: TBEdit;
    edt_resolucaoReembolso: TBEdit;
    edt_seqAsecoPMSBC: TBEdit;
    edt_seqAsecoSBCPREV: TBEdit;
    Panel8: TPanel;
    edt_Vlfatormoderador: TBEdit;
    edt_vlentrevistaqualificada: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_parametroButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_parametro: TFrm_Cad_parametro;

implementation
uses Constantes;
{$R *.DFM}

procedure TFrm_Cad_parametro.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Parametros do Sistema' ;
  FEditChave    := 'edt_cod_parametro' ;
  FEditAlteracao:= 'edt_dtvalcomissionado_par' ;
  FUltFoco      := 'edt_sequencialremessa' ;
  FTitPesquisa  := 'Localizar Parametros' ;
  FPesquisa     := 'cod_parametro, dtvalcomissionado_par, dtvalidademaxima_par, nossonumeroboleto, sequencialremessa' ;
  FPesquisaTit  := 'Código, dtvalcomissionado_par, dtvalidademaxima_par, nossonumeroboleto, sequencialremessa' ;
  inherited;

end;

function TFrm_Cad_parametro.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_parametro.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvalcomissionado_par.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvalidademaxima_par.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nossonumeroboleto.name, 'O campo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencialremessa.name, 'O campo deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_parametro.edt_cod_parametroButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

end.
