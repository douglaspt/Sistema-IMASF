unit Rel_ExtratoItem003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoItem003 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
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
    PDJButton1: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoInicialExit(Sender: TObject);
    procedure edt_cod_itemservicoInicialButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoFinalExit(Sender: TObject);
    procedure edt_cod_itemservicoFinalButtonClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoItem003: TFrm_Rel_ExtratoItem003;

implementation
uses Imp_Med_ExtratoItem003, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem, dtm_principal4, Imp_4091,
  Bas_Impressao, dtm_principal6 ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoItem003.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados por Item de Serviço' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_ExtratoItem003.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');  
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoItem003.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_itemservicoInicial.name, 'Código do Item de Serviço Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservicoFinal.name, 'Código do Item de Serviço Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoItem003.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoitem003 do
  begin
    close;
    if edt_cod_conveniado.text = '' then
      ParamByName('@cod_conveniado').AsString := '0'
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
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
    open;
  end;
  Frm_Imp_Med_ExtratoItem003 := TFrm_Imp_Med_ExtratoItem003.Create(Self);
  Frm_Imp_Med_ExtratoItem003.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoItem003.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoItem003.FCod_ItemServicoInicial := edt_cod_itemservicoInicial.text;
  Frm_Imp_Med_ExtratoItem003.FDescricaoISI := edt_descricaoInicial_itc.text;
  Frm_Imp_Med_ExtratoItem003.FCod_ItemServicoFinal := edt_cod_itemservicoFinal.text;
  Frm_Imp_Med_ExtratoItem003.FDescricaoISF := edt_descricaoFinal_itc.text;
  Frm_Imp_Med_ExtratoItem003.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoItem003.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoItem003.FIdadeInicial := edt_idade_ini.text ;
  Frm_Imp_Med_ExtratoItem003.FIdadeFinal := edt_idade_fin.text ;
  Frm_Imp_Med_ExtratoItem003.FPlano := cbx_cod_plano.text ;
  Frm_Imp_Med_ExtratoItem003.FEmpresa := cbx_cod_empresa.text ;
  Frm_Imp_Med_ExtratoItem003.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoItem003.Release;
  Fdt_principal.spc_cons_med_extratoitem003.close;
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_itemservicoInicialExit(Sender: TObject);
begin
  inherited;
  edt_descricaoInicial_itc.text := Get_DescricaoServico(edt_cod_itemservicoInicial.text);
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_itemservicoInicialButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoInicial',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoInicialExit(self);
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_itemservicoFinalExit(
  Sender: TObject);
begin
  inherited;
  edt_descricaoFinal_itc.text := Get_DescricaoServico(edt_cod_itemservicoFinal.text);
end;

procedure TFrm_Rel_ExtratoItem003.edt_cod_itemservicoFinalButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoFinal',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoFinalExit(self);
end;

procedure TFrm_Rel_ExtratoItem003.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_itemRealizadoBen do
  begin
    close;
    if edt_cod_conveniado.Text <> '' then
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoInicial.text ;
    ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicoFinal.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@idade_ini').AsString := edt_idade_ini.text ;
    ParamByName('@idade_fin').AsString := edt_idade_fin.text ;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_itemRealizadoBen;
  if edt_cod_conveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Convêniado  '+edt_cod_conveniado.Text+'  -  '+edt_razao_con.Text;
  Frm_Bas_Impressao.FCampo2 := 'Item de Serviço de  '+edt_cod_itemservicoInicial.Text+'  até  '+edt_cod_itemservicoFinal.Text;
  Frm_Bas_Impressao.FCampo3 := cbx_cod_mes.Text+' / '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo4 := cb2_cod_mes.Text+' / '+edt_ano2.Text;
  Frm_Bas_Impressao.showReport(4170);
  Fdt_principal6.spc_cons_med_itemRealizadoBen.close;
end;

end.

