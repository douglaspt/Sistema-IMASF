unit Rel_3080;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3080 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    PDJButton2: TPDJButton;
    edt_dtsistema_tmt: TDCDateEdit;
    Panel4: TPanel;
    cbx_cod_corprocesso: TDCComboBox;
    RadioGroup1: TRadioGroup;
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3080: TFrm_Rel_3080;

implementation

uses Constantes, Dlg_Mensagem, Fun_Obj, dtm_principal4, Bas_Impressao, Fun_DB ;

{$R *.DFM}

function TFrm_Rel_3080.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_dtsistema_tmt.name, 'A Data deve ser preenchida !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3080.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_adm_procsemandamento do
  begin
    Close;
    ParamByName('@dtsistema_tmt').AsString:= edt_dtsistema_tmt.Text;
    ParamByName('@ordem').AsString:= IntToStr(RadioGroup1.ItemIndex);
    if cbx_cod_corprocesso.ItemIndex = -1 then
       ParamByName('@cod_corprocesso').AsString:= '0'
    else
       ParamByName('@cod_corprocesso').AsString:= cbx_cod_corprocesso.ValueItem;
    Open;
    if Recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_procsemandamento;
  Frm_Bas_Impressao.FCampo1 := edt_dtsistema_tmt.Text;
  Frm_Bas_Impressao.FCampo2 := cbx_cod_corprocesso.Text;
  Frm_Bas_Impressao.FCampo3 := RadioGroup1.Items[RadioGroup1.ItemIndex];
  Frm_Bas_Impressao.showReport(4218);
  fdt_principal4.spc_cons_adm_procsemandamento.Close;
end;

procedure TFrm_Rel_3080.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
  edt_dtsistema_tmt.SetFocus;
end;

procedure TFrm_Rel_3080.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-1);
  FormShow(Self);
  RadioGroup1.ItemIndex:= 0;
  cbx_cod_corprocesso.ItemIndex:= -1;
  cbx_cod_corprocesso.Refresh;
  edt_dtsistema_tmt.Text:= '';
  edt_dtsistema_tmt.SetFocus;
end;

end.

