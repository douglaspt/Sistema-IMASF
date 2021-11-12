unit Rel_3045;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3045 = class(TFrm_Bas_TelaPadrao)
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel4: TPanel;
    edt_matricula_mte: TDCEdit;
    Panel8: TPanel;
    edt_cpf_fpm: TDCEdit;
    Panel1: TPanel;
    edt_dtadmissao_fpm: TDCDateEdit;
    PDJButton7: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3045: TFrm_Rel_3045;

implementation

uses Dlg_Mensagem, Fun_Obj, Constantes, dtm_principal4, Bas_Impressao;

{$R *.DFM}

function TFrm_Rel_3045.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'Empresa deve ser Preenchida !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3045.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Rel_3045.PDJButton7Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel5.SetFocus;
     Exit;
     end;
  with Fdt_principal4.spc_cons_adm_estatutariosemplanosaude do
  begin
    Close;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@matricula_mte').AsString := edt_matricula_mte.Text;
    ParamByName('@cpf_fpm').AsString := edt_cpf_fpm.Text;
    ParamByName('@dtadmissao_fpm').AsString := edt_dtadmissao_fpm.Text;
    Open;
    if Fdt_principal4.spc_cons_adm_estatutariosemplanosaude.RecordCount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado!', Self);
       Close;
       Panel5.SetFocus;
       Exit;
       end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_adm_estatutariosemplanosaude;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_empresafolha.text;
  Frm_Bas_Impressao.FCampo2 := edt_matricula_mte.text;
  Frm_Bas_Impressao.FCampo3 := edt_cpf_fpm.text;
  Frm_Bas_Impressao.FCampo4 := edt_dtadmissao_fpm.Text;
  Frm_Bas_Impressao.showReport(4215);
  Fdt_principal4.spc_cons_adm_estatutariosemplanosaude.close;
end;

procedure TFrm_Rel_3045.PDJButton2Click(Sender: TObject);
begin
  inherited;
{  cbx_cod_empresafolha.ValueItem:= -1;
  cbx_cod_empresafolha.Text:= '';
  edt_matricula_mte.Text:= '';
  edt_cpf_fpm.Text:= '';
  edt_dtadmissao_fpm.Text:= '';}
  Obj_EmptyEditTag(self,-1);
end;

procedure TFrm_Rel_3045.PDJButton1Click(Sender: TObject);
begin
  inherited;
{  if CriticaParametros then
     begin
     Panel5.SetFocus;
     Exit;
     end;}
  with Fdt_principal4.spc_cons_adm_matricporcpf do
  begin
    Close;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@matricula_mte').AsString := edt_matricula_mte.Text;
    ParamByName('@cpf_fpm').AsString := edt_cpf_fpm.Text;
    ParamByName('@dtadmissao_fpm').AsString := edt_dtadmissao_fpm.Text;
    Open;
    if Fdt_principal4.spc_cons_adm_matricporcpf.RecordCount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado!', Self);
       Close;
       Panel5.SetFocus;
       Exit;
       end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_adm_matricporcpf;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_empresafolha.text;
  Frm_Bas_Impressao.FCampo2 := edt_matricula_mte.text;
  Frm_Bas_Impressao.FCampo3 := edt_cpf_fpm.text;
  Frm_Bas_Impressao.FCampo4 := edt_dtadmissao_fpm.Text;
  Frm_Bas_Impressao.showReport(4216);
  Fdt_principal4.spc_cons_adm_matricporcpf.close;
end;

end.

