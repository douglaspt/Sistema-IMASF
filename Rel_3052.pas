unit Rel_3052;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3052 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3052: TFrm_Rel_3052;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4055, Dlg_Mensagem, Imp_4105, dtm_principal4 ;

{$R *.DFM}

procedure TFrm_Rel_3052.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

function TFrm_Rel_3052.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3052.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_adm_loteFolhaDescontos do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4105 := TFrm_Imp_4105.Create(Self);
  Frm_Imp_4105.QuickRep1.Preview;
  Frm_Imp_4105.Release;
  fdt_principal4.spc_cons_adm_loteFolhaDescontos.close;
end;

end.

