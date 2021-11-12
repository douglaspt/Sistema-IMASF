unit Rel_3077;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3077 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton1: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3077: TFrm_Rel_3077;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4056, Fun_Data, dtm_principal3, Imp_4062, Dlg_Mensagem,
  dtm_principal5, Bas_Impressao, dtm_principal4 ;

{$R *.DFM}

function TFrm_Rel_3077.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referencia deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3077.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_med_contaBenefTratamento do
  begin
    close;
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_med_contaBenefTratamento;
  Frm_Bas_Impressao.FCampo1 := 'Periodo  de  '+cbx_cod_mes.Text+' / '+edt_ano.text;
  Frm_Bas_Impressao.showReport(4196);
  fdt_principal4.spc_cons_med_contaBenefTratamento.close;
end;
procedure TFrm_Rel_3077.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_3077.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento do
  begin
    close;
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento;
  Frm_Bas_Impressao.FCampo1 := 'Periodo  de  '+cbx_cod_mes.Text+' / '+edt_ano.text;;
  Frm_Bas_Impressao.showReport(4197);
  fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento.close;
end;

end.

