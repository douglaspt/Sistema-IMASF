unit Rel_3069;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3069 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel6: TPanel;
    edt_descricaoFinal_itc: TDCEdit;
    Panel8: TPanel;
    edt_idade_ini: TDCEdit;
    edt_idade_fin: TDCEdit;
    Panel9: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel10: TPanel;
    cbx_cod_empresa: TDCComboBox;
    Panel11: TPanel;
    edt_descricaoInicial_itc: TDCEdit;
    edt_cod_itemservicoInicial: TDCChoiceEdit;
    edt_cod_itemservicoFinal: TDCChoiceEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel4: TPanel;
    cbx_sexo_ben: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoInicialExit(Sender: TObject);
    procedure edt_cod_itemservicoInicialButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoFinalExit(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_cod_itemservicoFinalButtonClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3069: TFrm_Rel_3069;

implementation
uses Imp_Med_ExtratoItem003, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem, dtm_principal6, Imp_4091,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_3069.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados por Item de Servi�o' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

procedure TFrm_Rel_3069.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
end;

function TFrm_Rel_3069.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_itemservicoInicial.name, 'C�digo do Item de Servi�o Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservicoFinal.name, 'C�digo do Item de Servi�o Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Refer�ncia Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3069.PDJButton3Click(Sender: TObject);
var
  FPlanoEmp : String;
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_extratoitemNE do
  begin
    close;
    ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoInicial.text ;
    ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFinal.text ;
//    ParamByName('@cod_itemservicoFin').AsString := '0' ;
    if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    end else begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
    end;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '1' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
    ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
    ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
    IF cbx_cod_plano.text = '' then
      ParamByName('@cod_plano').AsString := '0'
    else
      ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    IF cbx_cod_empresa.text = '' then
      ParamByName('@cod_empresa').AsString := '0'
    else
      ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
    ParamByName('@sexo_ben').AsString := cbx_sexo_ben.valueitem;  
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_extratoitemNE;
  Frm_Bas_Impressao.FCampo1 := edt_cod_itemservicoInicial.Text + ' ' + edt_descricaoInicial_itc.Text;
  Frm_Bas_Impressao.FCampo2 := edt_cod_itemservicoFinal.Text + ' ' + edt_descricaoFinal_itc.Text;
  Frm_Bas_Impressao.FCampo3 := cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo4 := cb2_cod_mes.Text+'\'+edt_ano2.Text;
  if edt_idade_ini.Text <> '' then
    Frm_Bas_Impressao.FCampo5 := 'Idade do Benefici�rio   de  '+edt_idade_ini.Text+'  at�  '+edt_idade_fin.Text;
  if cbx_cod_plano.Text <> '' then
    FPlanoEmp := 'Plano     '+cbx_cod_plano.Text+'       ';
  if cbx_cod_empresa.Text <> '' then
    FPlanoEmp := FPlanoEmp+'Empresa    '+cbx_cod_empresa.Text+'       ';
  if cbx_sexo_ben.Text <> '' then
    FPlanoEmp := FPlanoEmp+'Sexo    '+cbx_sexo_ben.Text;
  Frm_Bas_Impressao.FCampo6 := FPlanoEmp;
  Frm_Bas_Impressao.showReport(4163);
  Fdt_principal6.spc_cons_med_extratoitemNE.close;
end;

procedure TFrm_Rel_3069.edt_cod_itemservicoInicialExit(Sender: TObject);
begin
  inherited;
  edt_descricaoInicial_itc.text := Get_DescricaoServico(edt_cod_itemservicoInicial.text);
end;

procedure TFrm_Rel_3069.edt_cod_itemservicoInicialButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoInicial',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServi�o, Cod. Padrao, Descri��o do Item de Servi�o/Procedimento',
  'Localizar Itens de Servi�os', '', True));
  edt_cod_itemservicoInicialExit(self);
end;

procedure TFrm_Rel_3069.edt_cod_itemservicoFinalExit(
  Sender: TObject);
begin
  inherited;
  edt_descricaoFinal_itc.text := Get_DescricaoServico(edt_cod_itemservicoFinal.text);
end;

procedure TFrm_Rel_3069.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_3069.edt_cod_itemservicoFinalButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoFinal',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServi�o, Cod. Padrao, Descri��o do Item de Servi�o/Procedimento',
  'Localizar Itens de Servi�os', '', true));
  edt_cod_itemservicoFinalExit(self);  
end;

end.

