unit Rel_DespConvPlano001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellAPI;

type
  TFrm_Rel_DespConvPlano001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequenciaIni: TDCEdit;
    PDJButton4: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    edt_sequenciaFin: TDCEdit;
    btn_excel: TPDJButton;
    SaveDialog: TSaveDialog;
    Panel5: TPanel;
    cbx_cod_classificacaoConveniado: TDCComboBox;
    PDJButton5: TPDJButton;
    btn_saldoEmpenho: TPDJButton;
    btn_excel02: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_saldoEmpenhoClick(Sender: TObject);
    procedure btn_excel02Click(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_DespConvPlano001: TFrm_Rel_DespConvPlano001;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_DespConvPlano001, Bas_Impressao, dtm_principal3, Dlg_Mensagem, Fun_Obj ;

{$R *.DFM}

procedure TFrm_Rel_DespConvPlano001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relatórios de Despesas de Conveniados por Plano' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_DespConvPlano001.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_DespConvPlano001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoConveniado', 'descricao_ccv', 'cod_classificacaoConveniado', 'tbl_classificacaoConveniado');
  edt_sequenciaIni.Text := '1';
  edt_sequenciaFin.Text := '500';
end;

procedure TFrm_Rel_DespConvPlano001.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_DespConvPlano001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referencia Final deve ser Preenchida !', VLD_Preenchido ));

end;

procedure TFrm_Rel_DespConvPlano001.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_despconvplano003 do
  begin
    close;
    if edt_cod_conveniado.Text <> '' then
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))
    else
      ParamByName('@cod_conveniado').AsString := '';
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := edt_sequenciaIni.text ;
    ParamByName('@sequenciaFin').AsString := edt_sequenciaFin.text ;
    if cbx_cod_classificacaoConveniado.Text <> '' then
      ParamByName('@cod_classificacaoConveniado').AsString := cbx_cod_classificacaoConveniado.valueItem
    else
      ParamByName('@cod_classificacaoConveniado').AsString := '99';
    open;
    if RecordCount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_despconvplano003;
  Frm_Bas_Impressao.FCampo1:= cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2:= cb2_cod_mes.Text+'\'+ed2_ano.Text;
  if edt_sequenciaIni.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Inicial: '+edt_sequenciaIni.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if edt_sequenciaFin.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Final: '+edt_sequenciaFin.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if ((edt_sequenciaIni.Text <> '') and (edt_sequenciaFin.Text <> '')) then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Inicial: '+edt_sequenciaIni.Text+'          Sequencia Final: '+edt_sequenciaFin.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if cbx_cod_classificacaoConveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Tipo de Conveniado: '+cbx_cod_classificacaoConveniado.Text
  else
    Frm_Bas_Impressao.FCampo4 := '';  
  Frm_Bas_Impressao.showReport(4252);
  Fdt_principal.spc_cons_med_despconvplano003.close;


      {
  with Fdt_principal.spc_cons_med_despconvplano001 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@status').AsString := '1';
    open;
  end;
  Frm_Imp_Med_DespConvPlano001 := TFrm_Imp_Med_DespConvPlano001.Create(Self);
  Frm_Imp_Med_DespConvPlano001.QuickRep1.Preview;
  Frm_Imp_Med_DespConvPlano001.Release;
  Fdt_principal.spc_cons_med_despconvplano001.close;
   }
end;

procedure TFrm_Rel_DespConvPlano001.btn_excelClick(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_despconvplano003 do
  begin
    close;
    if edt_cod_conveniado.Text <> '' then
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))
    else
      ParamByName('@cod_conveniado').AsString := '';
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := edt_sequenciaIni.text ;
    ParamByName('@sequenciaFin').AsString := edt_sequenciaFin.text ;
    ParamByName('@cod_classificacaoConveniado').AsString := cbx_cod_classificacaoConveniado.valueItem;
    open;
    if RecordCount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Fdt_principal.spc_cons_med_despconvplano003.First;
  SaveDialog.DefaultExt:= 'csv';
  SaveDialog.Filter:= 'csv';
  SaveDialog.FileName := 'Despesas por Conveniado';
  if SaveDialog.Execute then
  begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'Codigo; Nome; Referencia; Plano; Vl Informado; Vl Pagar; Nº PA; Tipo de Conveniado';
    Writeln(byt_nameofthfile,S);
    S:= '';
    with Fdt_principal.spc_cons_med_despconvplano003 do
    begin
      while not EOF do
      begin
        S:= FieldByName('cod_conveniado').AsString + ';' +
        FieldByName('nome_con').AsString + ';' +
        FieldByName('dtreferencia_cta').AsString + ';' +
        FieldByName('nome_clp').AsString + ';' +
        FormatFloat('###,###,##0.00', FieldByName('vlinformado_itc').AsFloat) + ';' +
        FormatFloat('###,###,##0.00', FieldByName('vlpagar_itc').AsFloat) + ';' +
        FieldByName('numeroPA_clp').AsString+';'+
        FieldByName('descricao_ccv').AsString;
        Writeln(byt_nameofthfile, S);
        Next;
      end;
    end;  
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
  end;  
  Fdt_principal.spc_cons_med_despconvplano003.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self) then
    Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);

end;

procedure TFrm_Rel_DespConvPlano001.PDJButton5Click(Sender: TObject);
begin
  inherited;
  cbx_cod_mes.ItemIndex:= -1;
  cb2_cod_mes.ItemIndex:= -1;
  cbx_cod_classificacaoConveniado.ItemIndex := -1;
  edt_cod_conveniado.Text := '';
  edt_razao_con.Text := '';
  edt_ano.Text := '';
  ed2_ano.Text := '';
end;

procedure TFrm_Rel_DespConvPlano001.btn_saldoEmpenhoClick(Sender: TObject);
begin
  inherited;
if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_saldoEmpenhoConveniado do
  begin
    close;
    if edt_cod_conveniado.Text <> '' then
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))
    else
      ParamByName('@cod_conveniado').AsString := '';
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@ano').AsString := edt_ano.text ;
    ParamByName('@sequenciaIni').AsString := edt_sequenciaIni.text ;
    ParamByName('@sequenciaFin').AsString := edt_sequenciaFin.text ;
    if cbx_cod_classificacaoConveniado.Text <> '' then
      ParamByName('@cod_classificacaoConveniado').AsString := cbx_cod_classificacaoConveniado.valueItem
    else
      ParamByName('@cod_classificacaoConveniado').AsString := '99';
    open;
    if RecordCount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_saldoEmpenhoConveniado;
  Frm_Bas_Impressao.FCampo1:= cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2:= cb2_cod_mes.Text+'\'+ed2_ano.Text;
  if edt_sequenciaIni.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Inicial: '+edt_sequenciaIni.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if edt_sequenciaFin.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Final: '+edt_sequenciaFin.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if ((edt_sequenciaIni.Text <> '') and (edt_sequenciaFin.Text <> '')) then
    Frm_Bas_Impressao.FCampo3 := 'Sequencia Inicial: '+edt_sequenciaIni.Text+'          Sequencia Final: '+edt_sequenciaFin.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if cbx_cod_classificacaoConveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Tipo de Conveniado: '+cbx_cod_classificacaoConveniado.Text
  else
    Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.showReport(4253);
  Fdt_principal.spc_cons_med_saldoEmpenhoConveniado.close;


end;

procedure TFrm_Rel_DespConvPlano001.btn_excel02Click(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
begin
  inherited;
if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_saldoEmpenhoConveniado do
  begin
    close;
    if edt_cod_conveniado.Text <> '' then
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))
    else
      ParamByName('@cod_conveniado').AsString := '';
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@ano').AsString := edt_ano.text ;
    ParamByName('@sequenciaIni').AsString := edt_sequenciaIni.text ;
    ParamByName('@sequenciaFin').AsString := edt_sequenciaFin.text ;
    ParamByName('@cod_classificacaoConveniado').AsString := cbx_cod_classificacaoConveniado.valueItem;
    open;
    if RecordCount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Fdt_principal.spc_cons_med_saldoEmpenhoConveniado.First;
  SaveDialog.DefaultExt:= 'csv';
  SaveDialog.Filter:= 'csv';
  SaveDialog.FileName := 'Empenhos por Conveniado';
  if SaveDialog.Execute then
  begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'Codigo; Nome; Empenho; Ano; Nº PA; Valor Empenho; Valor Pago; Saldo';
    Writeln(byt_nameofthfile,S);
    S:= '';
    with Fdt_principal.spc_cons_med_saldoEmpenhoConveniado do
    begin
      while not EOF do
      begin
        S:= FieldByName('cod_conveniado').AsString + ';' +
        FieldByName('nome_con').AsString + ';' +
        FieldByName('numEmpenho_emc').AsString + ';' +
        FieldByName('anoEmpenho_emc').AsString + ';' +
        FieldByName('numeroPA_emc').AsString+';'+
        FormatFloat('###,###,##0.00', FieldByName('vlEmpenho_emc').AsFloat) + ';' +
        FormatFloat('###,###,##0.00', FieldByName('vlpago_cta').AsFloat) + ';' +
        FormatFloat('###,###,##0.00', FieldByName('saldo').AsFloat);
        Writeln(byt_nameofthfile, S);
        Next;
      end;
    end;  
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
  end;  
  Fdt_principal.spc_cons_med_saldoEmpenhoConveniado.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self) then
    Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

end.



