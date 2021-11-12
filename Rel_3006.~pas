unit Rel_3006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3006 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_cod_crm: TDCChoiceEdit;
    edt_medico_crm: TDCEdit;
    PDJButton1: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3006: TFrm_Rel_3006;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal5, Imp_4129, Dlg_Mensagem, Fun_Obj, Imp_4141, dtm_principal6;

{$R *.DFM}

procedure TFrm_Rel_3006.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

function TFrm_Rel_3006.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_crm.name, 'O CRM do Médico deve ser Preenchido !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_3006.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_med_custoAgregadoPorMedico do
  begin
    close;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cbx_cod_mes.valueItem + '/01/'+IntToStr(strtoint(edt_ano.text)+1);
    ParamByName('@cod_crm').AsString := edt_cod_crm.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4129 := TFrm_Imp_4129.Create(Self);
  Frm_Imp_4129.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4129.QuickRep1.Preview;
  Frm_Imp_4129.Release;
  fdt_principal5.spc_cons_med_custoAgregadoPorMedico.close;
end;

procedure TFrm_Rel_3006.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
  'cod_crm, medico_crm', 'Cod. CRM, Nome do Médico',
  'Localizar CRM', '', true));
  edt_cod_crmExit(self);
end;

procedure TFrm_Rel_3006.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_medico_crm.text := Get_NomeMedico(edt_cod_crm.text);
end;

procedure TFrm_Rel_3006.PDJButton1Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal6.spc_cons_med_custoAgregadoPorMedicoAutorizacao do
  begin
    close;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cbx_cod_mes.valueItem + '/01/'+IntToStr(strtoint(edt_ano.text)+1);
    ParamByName('@cod_crm').AsString := edt_cod_crm.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4141 := TFrm_Imp_4141.Create(Self);
  Frm_Imp_4141.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4141.QuickRep1.Preview;
  Frm_Imp_4141.Release;
  fdt_principal6.spc_cons_med_custoAgregadoPorMedicoAutorizacao.close;
end;

end.

