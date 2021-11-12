unit Rel_ExtratoConven002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoConven002 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_conveniados: TDCEdit;
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
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Panel6: TPanel;
    edt_cod_itemservicoFin: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel8: TPanel;
    edt_cod_itemservicoIni: TDCChoiceEdit;
    DCEdit1: TDCEdit;
    Panel9: TPanel;
    rdb_abulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_todos: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure edt_cod_itemservicoIniExit(Sender: TObject);
    procedure edt_cod_itemservicoFinExit(Sender: TObject);
    procedure edt_cod_itemservicoIniButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoFinButtonClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoConven002: TFrm_Rel_ExtratoConven002;

implementation
uses Imp_Med_ExtratoConven004, Imp_Med_ExtratoConven005, dtm_principal, Fun_Medico,
Fun_ConsCadastro, Constantes, Fun_Data, Imp_Med_ExtratoConven006, Fun_Obj ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoConven002.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ExtratoConven002.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
//  if edt_cod_conveniado.text <> '' then
//    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoConven002.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;
   
procedure TFrm_Rel_ExtratoConven002.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven001 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '01' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoConven004 := TFrm_Imp_Med_ExtratoConven004.Create(Self);
  Frm_Imp_Med_ExtratoConven004.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven004.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven004.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven004.FDataFinal := edt_dtfinal.text;
  if rdb_abulatorial.Checked then
    Frm_Imp_Med_ExtratoConven004.FTexto1 := 'ATENDIMENTO AMBULATORIAL';
  if rdb_internacao.Checked then
    Frm_Imp_Med_ExtratoConven004.FTexto1 := 'INTERNAÇÕES' ;
  if rdb_todos.Checked then
    Frm_Imp_Med_ExtratoConven004.FTexto1 := '' ;
  Frm_Imp_Med_ExtratoConven004.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven004.Release;
  Fdt_principal.spc_cons_med_extratoconven001.close;
end;

procedure TFrm_Rel_ExtratoConven002.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven002 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '01' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoConven005 := TFrm_Imp_Med_ExtratoConven005.Create(Self);
  Frm_Imp_Med_ExtratoConven005.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven005.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven005.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven005.FDataFinal := edt_dtfinal.text;
  if rdb_abulatorial.Checked then
    Frm_Imp_Med_ExtratoConven005.FTexto1 := 'ATENDIMENTO AMBULATORIAL';
  if rdb_internacao.Checked then
    Frm_Imp_Med_ExtratoConven005.FTexto1 := 'INTERNAÇÕES' ;
  if rdb_todos.Checked then
    Frm_Imp_Med_ExtratoConven005.FTexto1 := '' ;
  Frm_Imp_Med_ExtratoConven005.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven005.Release;
  Fdt_principal.spc_cons_med_extratoconven002.close;
end;

procedure TFrm_Rel_ExtratoConven002.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven003 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := edt_conveniados.text ;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text ;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '01' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoConven006 := TFrm_Imp_Med_ExtratoConven006.Create(Self);
  Frm_Imp_Med_ExtratoConven006.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven006.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven006.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven006.FDataFinal := edt_dtfinal.text;
  if rdb_abulatorial.Checked then
    Frm_Imp_Med_ExtratoConven006.FTexto1 := 'ATENDIMENTO AMBULATORIAL';
  if rdb_internacao.Checked then
    Frm_Imp_Med_ExtratoConven006.FTexto1 := 'INTERNAÇÕES' ;
  if rdb_todos.Checked then
    Frm_Imp_Med_ExtratoConven006.FTexto1 := '' ;
  Frm_Imp_Med_ExtratoConven006.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven006.Release;
  Fdt_principal.spc_cons_med_extratoconven003.close;
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_itemservicoIniExit(
  Sender: TObject);
begin
  inherited;
DCEdit1.text := Get_DescricaoServico(edt_cod_itemservicoIni.text);
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_itemservicoFinExit(
  Sender: TObject);
begin
  inherited;
 edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservicoFin.text);
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_itemservicoIniButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoIni',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoIniExit(self);
end;

procedure TFrm_Rel_ExtratoConven002.edt_cod_itemservicoFinButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoFin',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoFinExit(self);
end;

end.

