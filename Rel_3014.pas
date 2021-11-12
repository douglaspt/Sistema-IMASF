unit Rel_3014;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3014 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    Panel4: TPanel;
    edt_matriculadebito_seg: TDCEdit;
    edt_digitomatdeb_seg: TDCEdit;
    Panel6: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel8: TPanel;
    edt_inscricao_ben: TDCEdit;
    dbg_itemservico: TDBGrid;
    PDJButton3: TPDJButton;
    DataSource1: TDataSource;
    lbl_TotalRegistro: TLabel;
    Btn_LimpaCampos: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Rel_3014: TFrm_Rel_3014;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal5, Imp_4129, Dlg_Mensagem, Fun_Obj;

{$R *.DFM}

procedure TFrm_Rel_3014.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_tarifa', 'nome_tar');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
end;

function TFrm_Rel_3014.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_3014.PDJButton3Click(Sender: TObject);
begin                                                                                         
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_adm_baixadesconto do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@matriculadebito_seg').AsString := edt_matriculadebito_seg.Text;
    ParamByName('@digitomatdeb_seg').AsString := edt_digitomatdeb_seg.Text;
    ParamByName('@inscricao_ben').AsString :=  edt_inscricao_ben.Text;
    ParamByName('@cod_tarifa').AsString := cbx_cod_tarifa.valueItem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
   lbl_TotalRegistro.Caption := 'Total de Registro =  '+IntToStr(RecordCount);
  end;
end;
procedure TFrm_Rel_3014.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.

