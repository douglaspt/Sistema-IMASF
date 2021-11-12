unit Rel_3076;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3076 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel1: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3076: TFrm_Rel_3076;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4056, Fun_Data, dtm_principal3, Imp_4062, Dlg_Mensagem,
  dtm_principal5, Bas_Impressao ;

{$R *.DFM}

function TFrm_Rel_3076.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_dtinicial.name, 'A Data de Referencia Inicial deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'A Data de Referência Final deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3076.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_adm_entradaSaidaDependentes do
  begin
    close;
    ParamByName('@dataInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dataFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_entradaSaidaDependentes;
  Frm_Bas_Impressao.FCampo1 := 'Periodo  de  '+edt_dtinicial.Text+'  até  '+edt_dtfinal.Text;
  Frm_Bas_Impressao.FCampo2 := 'Local de Desconto   '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.showReport(4195);
  fdt_principal5.spc_cons_adm_entradaSaidaDependentes.close;
end;
procedure TFrm_Rel_3076.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
end;

end.

