unit Rel_3012;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3012 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_cod_espmedamb: TDCChoiceEdit;
    edt_nome_esp: TDCEdit;
    PDJButton1: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_espmedambButtonClick(Sender: TObject);
    procedure edt_cod_espmedambExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3012: TFrm_Rel_3012;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  Fun_Db, Imp_4129, Dlg_Mensagem, Fun_Obj, Imp_4141, dtm_principal6, Imp_4143,
  dtm_principal5, Imp_4144, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Rel_3012.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

function TFrm_Rel_3012.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_espmedamb.name, 'A Especialidade deve ser Preenchida !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_3012.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal6.spc_cons_med_custoAgregadoPorEspecialidade do
  begin
    close;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cbx_cod_mes.valueItem + '/01/'+IntToStr(strtoint(edt_ano.text)+1);
    ParamByName('@cod_especialidade').AsString := edt_cod_espmedamb.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4143 := TFrm_Imp_4143.Create(Self);
  Frm_Imp_4143.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4143.FEspecialidade := edt_nome_esp.text;
  Frm_Imp_4143.QuickRep1.Preview;
  Frm_Imp_4143.Release;
  fdt_principal6.spc_cons_med_custoAgregadoPorEspecialidade.close;
end;

procedure TFrm_Rel_3012.edt_cod_espmedambButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_espmedamb',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_espmedamb',8,length('edt_cod_espmedamb')),
  'cod_espmedamb, nome_esp', 'Código, Especialidade',
  'Localizar Especialidades', '', true));
  edt_cod_espmedambExit(self);
end;

procedure TFrm_Rel_3012.edt_cod_espmedambExit(Sender: TObject);
begin
  inherited;
  if edt_cod_espmedamb.text <> '' then
  begin
    DB_OpenSQL('select nome_esp from tbl_espmedamb where cod_espmedamb = '+edt_cod_espmedamb.Text);
    edt_nome_esp.Text := tab.fieldByName('nome_esp').AsString;
  end;
end;

procedure TFrm_Rel_3012.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_med_custoAgregadoPorEspecialidadeMedico do
  begin
    close;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cbx_cod_mes.valueItem + '/01/'+IntToStr(strtoint(edt_ano.text)+1);
    ParamByName('@cod_especialidade').AsString := edt_cod_espmedamb.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_custoAgregadoPorEspecialidadeMedico;
  Frm_Bas_Impressao.FCampo1 := 'Periodo    '+cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo3 := 'Especialidade    '+edt_nome_esp.Text;
  Frm_Bas_Impressao.showReport(4186);
  Fdt_principal5.spc_cons_med_custoAgregadoPorEspecialidadeMedico.close;
end;

end.

