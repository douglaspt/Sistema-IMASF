unit Rel_3081;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3081 = class(TFrm_Bas_TelaPadrao)
    btn_imprimir: TPDJButton;
    Panel1: TPanel;
    Panel8: TPanel;
    cbx_cod_sitconveniado: TDCComboBox;
    Btn_LimpaCampos: TPDJButton;
    rdb_codigo: TRadioButton;
    rdb_nome: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;                                                                          

var
  Frm_Rel_3081: TFrm_Rel_3081;

implementation

uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, dtm_principal3, Dlg_ImprimeCarta,
Imp_4127, Fun_Obj, Bas_Impressao ;

{$R *.DFM}

function TFrm_Rel_3081.CriticaParametros : Boolean ;
begin

end;

procedure TFrm_Rel_3081.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_sitconveniado', 'nome_stc');
end;

procedure TFrm_Rel_3081.btn_imprimirClick(Sender: TObject);
function VerIndice: string;
begin
  if rdb_codigo.Checked then
     result := '1';
  if rdb_nome.Checked then
     result := '2';
end;

begin
  inherited;
  with Fdt_principal2.spc_cons_adm_conveniadosituacao do
    begin
    Close;
    if cbx_cod_sitconveniado.ItemIndex = -1 then
       ParamByName('@cod_sitconveniado').Value:= '0'
    else
       ParamByName('@cod_sitconveniado').Value:= cbx_cod_sitconveniado.ValueItem;
    ParamByName('@indice').Value:= VerIndice;
    Open;
    Fdt_principal2.spc_cons_adm_conveniadosituacao.RecordCount;
    end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_conveniadosituacao;
  Frm_Bas_Impressao.FCampo1:= 'Todos';
  if cbx_cod_sitconveniado.ItemIndex <> -1 then
     Frm_Bas_Impressao.FCampo1:= cbx_cod_sitconveniado.Text;
  if rdb_codigo.Checked = True then
     Frm_Bas_Impressao.FCampo2:= rdb_codigo.Caption;
  if rdb_nome.Checked = True then
     Frm_Bas_Impressao.FCampo2:= rdb_nome.Caption;
  Frm_Bas_Impressao.FCampo3:= IntToStr(Fdt_principal2.spc_cons_adm_conveniadosituacao.RecordCount);
  Frm_Bas_Impressao.showReport(4237);
  Fdt_principal2.spc_cons_adm_conveniadosituacao.Close;
end;

procedure TFrm_Rel_3081.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.



