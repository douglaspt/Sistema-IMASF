unit Rel_3041;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3041 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel4: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    PDJButton5: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FEmp : String ;
  end;

var
  Frm_Rel_3041: TFrm_Rel_3041;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4068, Dlg_Mensagem, dtm_principal3, Fun_Obj ;

{$R *.DFM}


procedure TFrm_Rel_3041.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_empresafolha', 'nome_emp', 'cod_empresafolha', 'tbl_empresafolha');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
end;

function TFrm_Rel_3041.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
  //(not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'A Empresa deve ser Preenchida !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3041.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_descontocodigo do
  begin
    close;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueItem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueItem;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;

  end;
  Frm_Imp_4068 := TFrm_Imp_4068.Create(Self);
  Frm_Imp_4068.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4068.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_4068.FEmp := cbx_cod_empresafolha.Text;
  Frm_Imp_4068.Fsit := cbx_cod_sitdesconto.Text;
  if cbx_cod_sitdesconto.Text = '' then
    Frm_Imp_4068.lbl_sitdesconto.Caption := '';
  if cbx_cod_empresafolha.Text = '' then
    Frm_Imp_4068.lbl_empresa.Caption := '';
  Frm_Imp_4068.QuickRep1.Preview;
  Frm_Imp_4068.Release;
  fdt_principal3.spc_cons_adm_descontocodigo.close;
end;

procedure TFrm_Rel_3041.PDJButton5Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.

