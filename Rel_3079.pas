unit Rel_3079;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3079 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    cbx_cobrado_hph: TDCComboBox;
    Panel1: TPanel;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    cbx_cod_campanha: TDCComboBox;
    PDJButton2: TPDJButton;
    Panel6: TPanel;
    rdb_isento: TRadioButton;
    rdb_naoisento: TRadioButton;
    rdb_todos: TRadioButton;
    DBG_Itens: TDBGrid;
    DSOutros: TDataSource;
    Panel7: TPanel;
    Panel8: TPanel;
    RadioButton1: TRadioButton;
    rdb_benefi: TRadioButton;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_matriculadebito: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    btn_localizar: TPDJButton;
    lbl_total: TLabel;
    rdg_indice: TRadioGroup;
    cbx_cancela_hph: TDCComboBox;
    cbx_obs_hph: TComboBox;
    cbx_tipoatend_hph: TDCComboBox;
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure rdg_indiceClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3079: TFrm_Rel_3079;

implementation

uses Constantes, Dlg_Mensagem, Fun_Obj, dtm_principal6, Bas_Impressao, Fun_DB, Fun_Data ;

{$R *.DFM}

function TFrm_Rel_3079.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(cbx_cod_campanha.name, 'A Campanha deve deve ser preenchida !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3079.PDJButton3Click(Sender: TObject);
var
 i: integer;
begin
  inherited;
  btn_localizarClick(Self);
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_adm_histcampanha;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_campanha.Text;
  Frm_Bas_Impressao.FCampo2 := '';
  if edt_dtinicial.Text <> '' then
     Frm_Bas_Impressao.FCampo2 := edt_dtinicial.Text + ' Até ' + edt_dtfinal.Text;
  if rdb_isento.Checked = True then
     Frm_Bas_Impressao.FCampo3 := rdb_isento.Caption;
  if rdb_naoisento.Checked = True then
     Frm_Bas_Impressao.FCampo3 := rdb_naoisento.Caption;
  if rdb_todos.Checked = True then
     Frm_Bas_Impressao.FCampo3 := rdb_todos.Caption;
  if cbx_cancela_hph.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Situação: '+cbx_cancela_hph.Text
  else
    Frm_Bas_Impressao.FCampo4 := '';
  if cbx_cobrado_hph.Text <> '' then
     Frm_Bas_Impressao.FCampo5 := cbx_cobrado_hph.Text
  else
    Frm_Bas_Impressao.FCampo5 := '';
  if cbx_tipoatend_hph.Text <> '' then
    Frm_Bas_Impressao.FCampo6 := 'Atendimento: '+cbx_tipoatend_hph.Text
  else
    Frm_Bas_Impressao.FCampo6 := '';
  if cbx_obs_hph.Text <> '' then
    Frm_Bas_Impressao.FCampo7 := 'Motivo Isenção: '+cbx_obs_hph.Text
  else
    Frm_Bas_Impressao.FCampo7 := '';
  Frm_Bas_Impressao.showReport(4203);
  fdt_principal6.spc_adm_histcampanha.Close;
end;

procedure TFrm_Rel_3079.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_campanha', 'descricao_cph');
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  cbx_cancela_hph.Items.Add('Aplicado');
  cbx_cancela_hph.Items.Add('Estornado');
  cbx_cancela_hph.ValItems.Add('1');
  cbx_cancela_hph.ValItems.Add('2');
  cbx_cobrado_hph.Items.Add('Não Cobrado');
  cbx_cobrado_hph.Items.Add('Cobrado');
  cbx_cobrado_hph.ValItems.Add('1');
  cbx_cobrado_hph.ValItems.Add('2');
  cbx_tipoatend_hph.Items.Clear;
  cbx_tipoatend_hph.Items.Add('Presencial');
  cbx_tipoatend_hph.Items.Add('Domiciliar');
  cbx_tipoatend_hph.ValItems.Add('1');
  cbx_tipoatend_hph.ValItems.Add('2');
  cbx_cod_campanha.SetFocus;
end;

procedure TFrm_Rel_3079.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-1);
  FormShow(Self);
  cbx_cod_campanha.Text:= '';
  edt_matriculadebito.Text:= '';
  edt_inscricao_ben.Text:= '';
  edt_dtinicial.SetFocus;
  cbx_obs_hph.ItemIndex := -1;
end;

procedure TFrm_Rel_3079.rdb_benefiClick(Sender: TObject);
begin
  inherited;
  Panel8.Caption:= '    Inscrição';
  edt_matriculadebito.Visible:= False;
  edt_inscricao_ben.Visible:= True;
  edt_matriculadebito.Text:= '';
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, -1);
  cbx_cod_empresafolha.Visible:= False;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Rel_3079.RadioButton1Click(Sender: TObject);
begin
  inherited;
  Panel8.Caption:= '    Matrícula';
  cbx_cod_empresafolha.Visible:= True;
  edt_matriculadebito.Visible:= True;
  edt_inscricao_ben.Visible:= False;
  edt_inscricao_ben.Text:= '';
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, -1);
  edt_matriculadebito.SetFocus;
end;

procedure TFrm_Rel_3079.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  begin
    Panel1.SetFocus;
    Exit;
  end;
  with fdt_principal6.spc_adm_histcampanha do
   begin
    Close;
    ParamByName('@cod_campanha').AsString:= cbx_cod_campanha.ValueItem;
    ParamByName('@dtini').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
    ParamByName('@dtfim').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cancela_hph').AsString:= cbx_cancela_hph.Valueitem;
    ParamByName('@cobrado_hph').AsString:= cbx_cobrado_hph.valueItem;
    if rdb_todos.Checked then
      ParamByName('@isento').AsString:= '';
    if rdb_isento.Checked then
      ParamByName('@isento').AsString:= 'S';
    if rdb_naoisento.Checked then
      ParamByName('@isento').AsString:= 'N';
    ParamByName('@inscricao_ben').AsString:= edt_inscricao_ben.Text;
    ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.valueitem;
    ParamByName('@matriculadebito_seg').AsString:= edt_matriculadebito.Text;
    ParamByName('@indice').AsString:= IntToStr(rdg_indice.ItemIndex);
    ParamByName('@obs_hph').AsString:= cbx_obs_hph.Text;
    ParamByName('@tipoatend_hph').AsString:= cbx_tipoatend_hph.valueItem;
    Open;
    Lbl_total.Caption := 'Total de Registros => '+IntToStr(Recordcount);
    if Recordcount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel8.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFrm_Rel_3079.rdg_indiceClick(Sender: TObject);
begin
  inherited;
  btn_localizarClick(self);
end;

end.

