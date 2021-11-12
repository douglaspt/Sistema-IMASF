unit Rel_DespConvPlano002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type                             
  TFrm_Rel_DespConvPlano002 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    PDJButton4: TPDJButton;
    edt_conveniados: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel5: TPanel;
    cbx_status: TDCComboBox;
    edt_sequenciaInicial: TDCEdit;
    edt_sequenciaFinal: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_DespConvPlano002: TFrm_Rel_DespConvPlano002;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_DespConvPlano002, fun_db ;

{$R *.DFM}

procedure TFrm_Rel_DespConvPlano002.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relat�rios de Despesas de Conveniados por Plano' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

procedure TFrm_Rel_DespConvPlano002.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  edt_sequenciaInicial.text := '1';
  edt_sequenciaFinal.text := '500';
end;

function TFrm_Rel_DespConvPlano002.CriticaParametros : Boolean ;
begin
  result := //(not BAS_ValidarCampo(edt_cod_conveniado.name, 'C�digo do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_status.name, 'O Status das Contas deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Refer�ncia Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_DespConvPlano002.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if cbx_status.ValueItem = 1 then
    DB_ExecSQL('exec spc_med_classificaPlanoContasNaoRepassadas');
  with Fdt_principal.spc_cons_med_despconvplano002 do
  begin
    close;
    if edt_conveniados.text = '' then
      ParamByName('@cod_conveniado').AsString := '0'
    else  
      ParamByName('@cod_conveniado').AsString := edt_conveniados.text;
    ParamByName('@dtreferenciaIni_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaIni_cta').AsString := edt_sequenciaInicial.text ;
    ParamByName('@sequenciaFin_cta').AsString := edt_sequenciaFinal.text ;
    ParamByName('@statusConta').AsInteger := cbx_status.ValueItem ;
    open;
  end;
  Frm_Imp_Med_DespConvPlano002 := TFrm_Imp_Med_DespConvPlano002.Create(Self);
  Frm_Imp_Med_DespConvPlano002.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_DespConvPlano002.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_DespConvPlano002.QuickRep1.Preview;
  Frm_Imp_Med_DespConvPlano002.Release;
  Fdt_principal.spc_cons_med_despconvplano002.close;
end;

end.



