unit Rel_3065;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3065 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_inscricaoIni: TDCEdit;
    PDJButton3: TPDJButton;
    edt_inscricaoFin: TDCEdit;
    Panel1: TPanel;
    edt_processoIni: TDCEdit;
    edt_anoIni: TDCEdit;
    edt_anoFin: TDCEdit;
    edt_processoFin: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel4: TPanel;
    cbx_cod_corprocesso: TDCComboBox;
    RdG_Impressora: TRadioGroup;
    procedure PDJButton3Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao : string;
  end;

var
  Frm_Rel_3065: TFrm_Rel_3065;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_obj, Fun_Data, Imp_4137,
Bas_Impressao, dtm_principal6, Imp_4139, Imp_4140, Imp_4145, Imp_4146;

{$R *.DFM}

function TFrm_Rel_3065.CriticaParametros : Boolean ;
begin
 // result := (not BAS_ValidarCampo(edt_inscricaoIni.name, 'O Código do Pedido de Compra deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3065.PDJButton3Click(Sender: TObject);
begin
  inherited;
  with fdt_principal6.spc_cons_adm_etiquetaprocesso do
  begin
    close;
    ParamByName('@inscricaoIni').AsString := edt_inscricaoIni.text;
    ParamByName('@inscricaoFin').AsString := edt_inscricaoFin.text;
    ParamByName('@processoIni').AsString := edt_processoIni.text;
    ParamByName('@processoFin').AsString := edt_processoFin.text;
    ParamByName('@anoIni').AsString := edt_anoIni.text;
    ParamByName('@anoFin').AsString := edt_anoFin.text;
    ParamByName('@cod_corprocesso').AsString := cbx_cod_corprocesso.valueItem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      edt_anoFin.SetFocus;
      exit;
    end;
  end;
  if RdG_Impressora.ItemIndex = 0 then
  begin
    if cbx_cod_corprocesso.ValueItem = '6' then
    begin
      Frm_Imp_4139 := TFrm_Imp_4139.Create(Self);
      Frm_Imp_4139.QuickRep1.Preview;
      Frm_Imp_4139.Release;
      fdt_principal6.spc_cons_adm_etiquetaprocesso.close;
    end
    else begin
      Frm_Imp_4137 := TFrm_Imp_4137.Create(Self);
      Frm_Imp_4137.QuickRep1.Preview;
      Frm_Imp_4137.Release;
      fdt_principal6.spc_cons_adm_etiquetaprocesso.close;
    end;
  end;
  if RdG_Impressora.ItemIndex = 1 then
  begin
    Frm_Imp_4140 := TFrm_Imp_4140.Create(Self);
    Frm_Imp_4140.QuickRep1.Preview;
    Frm_Imp_4140.Release;
    fdt_principal6.spc_cons_adm_etiquetaprocesso.close;
  end;
  if RdG_Impressora.ItemIndex = 2 then
  begin
    Frm_Imp_4145 := TFrm_Imp_4145.Create(Self);
    Frm_Imp_4145.QuickRep1.Preview;
    Frm_Imp_4145.Release;
    fdt_principal6.spc_cons_adm_etiquetaprocesso.close;
  end;
  if RdG_Impressora.ItemIndex = 3 then
  begin
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_etiquetaprocesso;
    Frm_Bas_Impressao.showReport(4244);
    //Frm_Bas_Impressao.showReport(4472);
    fdt_principal6.spc_cons_adm_etiquetaprocesso.close;
  end;

end;

procedure TFrm_Rel_3065.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_3065.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_corprocesso', 'nome_cor');
end;

end.



