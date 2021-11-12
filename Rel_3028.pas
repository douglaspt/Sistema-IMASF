unit Rel_3028;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3028 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel6: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    RdG_OrdemImpressao: TRadioGroup;
    Panel8: TPanel;
    edt_dtpagto_flh: TDCDateEdit;
    PDJButton5: TPDJButton;
    Panel9: TPanel;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_digtarcodigos: TDCEdit;
    PDJButton1: TPDJButton;
    Panel1: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    Panel4: TPanel;
    cbx_cod_usuario: TDCComboBox;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    Panel10: TPanel;
    edt_dtsistema_flh: TDCDateEdit;
    chb_destacar: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    function PesquisaDescontos : boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Rel_3028: TFrm_Rel_3028;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_ExtratoDesconto001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_ExtratoDesconto002, Imp_Adm_ExtratoDesconto003, Imp_Adm_ExtratoDesconto004,
Imp_Adm_ExtratoDesconto005, Fun_obj, dtm_principal, Imp_4044, Imp_4065, Imp_4075 ;

{$R *.DFM}

procedure TFrm_Rel_3028.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
  'and s.tipo_sit = 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação' ;
  inherited;
end;

function TFrm_Rel_3028.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3028.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_usuario', 'nome_usu');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  end;
end;

procedure TFrm_Rel_3028.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if not PesquisaDescontos then
    Exit;
  Frm_Imp_4044 := TFrm_Imp_4044.Create(Self);
  Frm_Imp_4044.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_4044.FCod_Desconto := cbx_cod_tarifa.text;
  Frm_Imp_4044.Cod_Usuario := cbx_cod_usuario.valueItem ;
  Frm_Imp_4044.N_Usuario := cbx_cod_usuario.Text ;
  Frm_Imp_4044.QuickRep1.Preview;
  Frm_Imp_4044.Release;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
end;

procedure TFrm_Rel_3028.PDJButton5Click(Sender: TObject);
begin
  inherited;
  cbx_cod_mes.Clear;
  cbx_cod_mes.ValueItem := '0' ;
  cbx_cod_mes.Refresh;
  cbx_cod_tarifa.Clear;
  cbx_cod_tarifa.ValueItem := '0' ;
  cbx_cod_tarifa.Refresh;
  edt_ano.text := '' ;
  edt_dtdesconto_flh.Text := '';
  edt_digtarcodigos.Text := '';
  cbx_cod_empresafolha.Clear;
  cbx_cod_empresafolha.ValueItem := '0' ;
  cbx_cod_empresafolha.Refresh;
  cbx_cod_sitdesconto.Clear;
  cbx_cod_sitdesconto.ValueItem := '0' ;
  cbx_cod_sitdesconto.Refresh;
  edt_dtpagto_flh.text := '' ;
  cbx_cod_usuario.Clear ;
  cbx_cod_usuario.ValueItem := '0' ;
  cbx_cod_usuario.refresh ;
  FEmpresaFolha := '';
  FAnoReferencia := '';
  FMesReferencia := '';
  FormShow(Self)
end;

function TFrm_Rel_3028.PesquisaDescontos : boolean ;
begin
  result := true ;
  with Fdt_principal.spc_cons_adm_descontofolha02 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := '0';
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_tarifa').AsString := cbx_cod_tarifa.valueitem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    if edt_dtsistema_flh.Text = '' then
    ParamByName('@dtsistema_flh').AsString := ''
    else
    ParamByName('@dtsistema_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtsistema_flh.date);
    if edt_dtpagto_flh.text = '' then
      ParamByName('@dtpagto_flh').AsString := ''
    else
      ParamByName('@dtpagto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtpagto_flh.date);
    if edt_dtdesconto_flh.text = '' then
      ParamByName('@dtdesconto_flh').AsString := ''
    else
      ParamByName('@dtdesconto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtdesconto_flh.date);
    ParamByName('@parcelas').AsString := '0';
    ParamByName('@nossonumero_flh').AsString := '';
    ParamByName('@matriculadebito_seg').AsString := '';
    ParamByName('@cod_usuario').AsString := cbx_cod_usuario.valueItem ;
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      result := false ;
    end;
  end;
end;

procedure TFrm_Rel_3028.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if not PesquisaDescontos then
    Exit;
  Frm_Imp_4065 := TFrm_Imp_4065.Create(Self);
  Frm_Imp_4065.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_4065.FCod_Desconto := cbx_cod_tarifa.text;
  Frm_Imp_4065.Cod_Usuario := cbx_cod_usuario.valueItem ;
  Frm_Imp_4065.N_Usuario := cbx_cod_usuario.Text ;
  Frm_Imp_4065.QuickRep1.Preview;
  Frm_Imp_4065.Release;
end;

procedure TFrm_Rel_3028.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if not PesquisaDescontos then
    Exit;
  Frm_Imp_4075 := TFrm_Imp_4075.Create(Self);
  Frm_Imp_4075.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_4075.FCod_Desconto := cbx_cod_tarifa.text;
  Frm_Imp_4075.Cod_Usuario := cbx_cod_usuario.valueItem ;
  Frm_Imp_4075.N_Usuario := cbx_cod_usuario.Text ;
  Frm_Imp_4075.destacado := chb_destacar.Checked;
  Frm_Imp_4075.QuickRep1.Preview;
  Frm_Imp_4075.Release;
end;

end.



