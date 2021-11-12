unit Mov_GeraNossoNumBoleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_GeraNossoNumBoleto = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    btn_geraNossoNumero: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_geraNossoNumeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia : String ;
  end;

var
  Frm_Mov_GeraNossoNumBoleto: TFrm_Mov_GeraNossoNumBoleto;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj,
  dtm_principal2, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_GeraNossoNumBoleto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Atualização de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_GeraNossoNumBoleto.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
end;

procedure TFrm_Mov_GeraNossoNumBoleto.btn_geraNossoNumeroClick(Sender: TObject);
VAR
  dtrefe : STRING ;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência da Conta deve ser Preenchida !', VLD_Preenchido ))
    then exit ;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';

  if DB_ExecSQL('EXEC spc_cont_gerarnossonumero '+dtrefe+', 99') then
    begin
    EscreveLog(btn_geraNossoNumero.Name);
    Dlg_Ok('Boletos Gerados Com Sucesso !',self);
    end
  else
    Dlg_Alerta('Erro ao Gerar Boletos !',self);
end;

end.






