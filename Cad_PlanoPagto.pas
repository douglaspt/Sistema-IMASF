unit Cad_PlanoPagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Db, Grids, DBGrids,
  jpeg, Printers, BEditButton, BComboBox, BEdit;

type
  TFrm_Cad_PlanoPagto = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DataSource1: TDataSource;
    Panel1: TPanel;
    btn_imprimir: TPDJButton;
    Panel7: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    Panel33: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel11: TPanel;
    Label7: TLabel;
    rdB_maior: TRadioButton;
    RdB_fixado: TRadioButton;
    Rdb_Contribuicao: TRadioButton;
    DBG_matricula: TDBGrid;
    btn_adicionarPreco: TPDJButton;
    btn_alterarPreco: TPDJButton;
    btn_salvarPreco: TPDJButton;
    btn_cancelarPreco: TPDJButton;
    btn_excluirPreco: TPDJButton;
    DataSource2: TDataSource;
    Panel12: TPanel;
    stg_historico: TStringGrid;
    PDJButton1: TPDJButton;
    edt_cod_planopagto: TEditButton;
    edt_nome_plp: TBEdit;
    cbx_cod_plano: TBComboBox;
    cbx_cod_statusAtivo: TBComboBox;
    edt_faixaIni_piv: TBEdit;
    edt_faixaFin_piv: TBEdit;
    edt_descricao_piv: TBEdit;
    edt_vlfixo_piv: TBEdit;
    edt_ano: TBEdit;
    cbx_cod_mes: TBComboBox;
    edt_obs_hpi: TBEdit;
    edt_vldependente_piv: TBEdit;
    edt_percentual_piv: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_planopagto1ButtonClick(Sender: TObject);
    procedure btn_adicionarPrecoClick(Sender: TObject);
    procedure btn_alterarPrecoClick(Sender: TObject);
    procedure btn_salvarPrecoClick(Sender: TObject);
    procedure btn_cancelarPrecoClick(Sender: TObject);
    procedure btn_excluirPrecoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure edt_faixaFin_piv1Exit(Sender: TObject);
    procedure stg_historicoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gerartabelauxiliar;
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_cod_planopagtoButtonClick(Sender: TObject);
  private
    { Private declarations }
    FValorOld : Double;
    FObsOld : String;
    procedure BotoesPrecoOnOff(b : boolean);
  public
    { Public declarations }     
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Novo(Frm:Tform);                      override ;    
  end;

var
  Frm_Cad_PlanoPagto: TFrm_Cad_PlanoPagto;

implementation
uses Fun_DB, dtm_principal, Fun_Str, Fun_obj, DLG_Mensagem, constantes, Fun_Acesso,
  Bas_Impressao, Fun_Data, dtm_principal3;
{$R *.DFM}

procedure TFrm_Cad_PlanoPagto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Planos de Pagamento' ;
  FEditChave    := 'edt_cod_planopagto' ;
  FEditAlteracao:= 'edt_nome_plp' ;
//  FUltFoco      := 'edt_nome_plp' ;
  FTitPesquisa  := 'Localizar Planos de Pagamento' ;
  FPesquisa     := 'cod_planopagto, nome_plp' ;
  FPesquisaTit  := 'Código, Nome do Plano' ;
  inherited;

end;

procedure TFrm_Cad_PlanoPagto.BAS_Alterar(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  PageControl1.ActivePageIndex:= 0;
  gerartabelauxiliar;
  inherited ;
  with Fdt_principal.spc_cons_adm_planoitemvalor do begin
    Close;
    parambyname('@cod_planopagto').asstring := edt_cod_planopagto.text ;
    Open;
  end;
end;

procedure TFrm_Cad_PlanoPagto.BAS_Novo(Frm:Tform);
begin
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  inherited ;

end;

procedure TFrm_Cad_PlanoPagto.edt_cod_planopagto1ButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_PlanoPagto.BotoesPrecoOnOff(b : boolean);
begin
  btn_adicionarPreco.Enabled := not b ;
  btn_alterarPreco.Enabled := not b ;
  btn_salvarPreco.Enabled := b ;
  btn_cancelarPreco.Enabled := b ;
  btn_excluirPreco.Enabled := not b ;
  DBG_matricula.Visible := not b ;
end;


procedure TFrm_Cad_PlanoPagto.btn_adicionarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(true);
  edt_faixaFin_piv.Enabled := true ;
  edt_faixaIni_piv.Enabled := true ;
  Obj_EmptyEditTag(self, -5);
  edt_faixaIni_piv.setfocus;
  EscreveLog(btn_adicionarPreco.name);
end;

procedure TFrm_Cad_PlanoPagto.btn_alterarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(true);
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_faixaFin_piv.Enabled := false ;
  edt_faixaIni_piv.Enabled := false ;
  with Fdt_principal.spc_cons_adm_planoitemvalor do begin
    edt_descricao_piv.text := fieldbyname('descricao_piv').asstring ;
    edt_faixaIni_piv.text := fieldbyname('faixaIni_piv').asstring ;
    edt_faixaFin_piv.text := fieldbyname('faixaFin_piv').asstring ;
    edt_vlfixo_piv.text := fieldbyname('vlfixo_piv').asstring ;
    edt_percentual_piv.text := fieldbyname('percentual_piv').asstring ;
    edt_vldependente_piv.text := fieldbyname('vldependente_piv').asstring ;
    rdB_maior.checked := fieldbyname('formacob_piv').asinteger = 0 ;
    RdB_fixado.checked := fieldbyname('formacob_piv').asinteger = 1 ;
    Rdb_Contribuicao.checked := fieldbyname('formacob_piv').asinteger = 2 ;
    edt_obs_hpi.Text := fieldbyname('obs_piv').asstring;
    FObsOld := edt_obs_hpi.Text;
    FValorOld :=  fieldbyname('vlfixo_piv').asFloat;
  end;
  edt_descricao_piv.setfocus;
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',Date));
  edt_ano.Text := FormatDateTime('yyyy',Date);
  EscreveLog(btn_alterarPreco.name);
end;

procedure TFrm_Cad_PlanoPagto.btn_salvarPrecoClick(Sender: TObject);
var
  wformacob_piv : string ;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_faixaIni_piv.name, 'A Idade Inicial deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_faixaFin_piv.name, 'A Idade Final deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_piv.name, 'A Descrição deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlfixo_piv.name, 'O Valor deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Inicio deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Inicio deve ser Preenchido!', VLD_Preenchido )) then
    Exit;
  BotoesPrecoOnOff(false);
  if rdB_maior.Checked then
    wformacob_piv := '0' ;
  if RdB_fixado.Checked then
    wformacob_piv := '1' ;
  if Rdb_Contribuicao.Checked then
    wformacob_piv := '2' ;
  if edt_faixaIni_piv.Enabled then
  begin
    DB_ExecSql('insert into tbl_planoitemvalor ('+
    ' cod_planopagto, descricao_piv, faixaIni_piv, faixaFin_piv, vlfixo_piv, '+
    ' vldependente_piv, percentual_piv, formacob_piv, obs_piv) values ( '+
    edt_cod_planopagto.text+', '''+edt_descricao_piv.text+''', '+
    edt_faixaIni_piv.text+', '+edt_faixaFin_piv.text+', '''+STR_SubstChar(edt_vlfixo_piv.text, ',','.')+''', '''+
    STR_SubstChar(edt_vldependente_piv.text, ',','.')+''', '''+STR_SubstChar(edt_percentual_piv.text, ',','.')+''', '+wformacob_piv+')');
  end
  else
  begin
    DB_ExecSql('update tbl_planoitemvalor set '+
    ' descricao_piv = '''+edt_descricao_piv.text+''', vlfixo_piv = '''+STR_SubstChar(edt_vlfixo_piv.text, ',','.')+''', '+
    ' vldependente_piv = '''+STR_SubstChar(edt_vldependente_piv.text, ',','.')+''', '+
    ' percentual_piv = '''+STR_SubstChar(edt_percentual_piv.text, ',','.')+''', '+
    ' formacob_piv = '+wformacob_piv+', '+
    ' obs_piv = '+DB_FormatDataSQL(edt_obs_hpi.Text, ftString)+
    ' where cod_planopagto = '+edt_cod_planopagto.text+' and '+
    ' faixaIni_piv = '+edt_faixaIni_piv.text+' and faixaFin_piv = '+edt_faixaFin_piv.text);
    //Salva Historico
    if not ((FValorOld - 0.001 <= StrToFloat(STR_RemoveChar(edt_vlfixo_piv.Text,'.'))) and  (FValorOld + 0.001 >= StrToFloat(STR_RemoveChar(edt_vlfixo_piv.Text,'.')))) then
    begin
      Db_ExecSql('insert into tbl_histplanoitemvalor values ( '+
      edt_cod_planopagto.text+', '''+edt_descricao_piv.text+''', '+
      edt_faixaIni_piv.text+', '+edt_faixaFin_piv.text+', '+DB_FormatDataSQL(FValorOld, ftFloat)+', 0, 0, '+
      wformacob_piv+','+DB_FormatDataSQL(Data_Subtrai1mes(StrtoDate('01/'+cbx_cod_mes.getStrItemValue+'/'+FormatDateTime('yyyy',Date))),ftDate)+','+
      inttoSTR(FCod_Usuario)+','''+FObsOld+''')');
    end;
  end;
  with Fdt_principal.spc_cons_adm_planoitemvalor do begin
    Close;
    parambyname('@cod_planopagto').asstring := edt_cod_planopagto.text ;
    Open;
  end;
  EscreveLog(btn_salvarPreco.name);
end;

procedure TFrm_Cad_PlanoPagto.btn_cancelarPrecoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(false);
  EscreveLog(btn_cancelarPreco.name);
end;

procedure TFrm_Cad_PlanoPagto.btn_excluirPrecoClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir essa Tabela?', Self) then begin
    DB_ExecSQL('delete from tbl_planoitemvalor where '+
    ' cod_planopagto = '+edt_cod_planopagto.text+' and '+
    ' faixaIni_piv = '+edt_faixaIni_piv.text+' and faixaFin_piv = '+edt_faixaFin_piv.text);
    Fdt_principal.spc_cons_adm_planoitemvalor.close;
    Fdt_principal.spc_cons_adm_planoitemvalor.open;
  end;
  EscreveLog(btn_excluirPreco.name);
end;

procedure TFrm_Cad_PlanoPagto.btn_novoClick(Sender: TObject);
begin
  inherited;
  Fdt_principal.spc_cons_adm_planoitemvalor.Close;
end;

procedure TFrm_Cad_PlanoPagto.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  btn_excluir.Visible:= False;
  PageControl1.ActivePageIndex:= 0;
// Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('mm',Date));
//  edt_ano.Text := FormatDateTime('yyyy',Date);
end;

procedure TFrm_Cad_PlanoPagto.btn_imprimirClick(Sender: TObject);
var
  X: Integer;
begin
  inherited;
  if FStatus = FST_Alteracao then
  begin
    Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_planoitemvalor;
    Frm_Bas_Impressao.FCampo1 := edt_cod_planopagto.Text+'  -  '+edt_nome_plp.Text;
    Frm_Bas_Impressao.FCampo2 := 'Plano de Benefícios   '+cbx_cod_plano.Text;
    Frm_Bas_Impressao.showReport(4194);
    Fdt_principal.spc_cons_adm_planoitemvalor.Close;
  end;
end;

procedure TFrm_Cad_PlanoPagto.edt_faixaFin_piv1Exit(Sender: TObject);
begin
  inherited;
  if (edt_faixaIni_piv.Text <> '') and (edt_faixaFin_piv.Text <> '') then
    edt_descricao_piv.Text := 'De '+edt_faixaIni_piv.Text+' a '+edt_faixaFin_piv.text+' anos';
end;

procedure TFrm_Cad_PlanoPagto.stg_historicoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
strTemp: string;
Format: integer;
begin
strTemp := stg_historico.Cells[ACol,ARow];
stg_historico.Canvas.FillRect(Rect);

if (ACol = 0) then // se coluna = 0 alinha ao centro
  begin
  Format := DT_CENTER;
{  stg_historico.Canvas.Brush.color:= clYellow;
  stg_historico.Canvas.Font.Color:= clBlack;
  stg_historico.Canvas.FillRect(Rect);
  stg_historico.Canvas.TextOut(Rect.Left, Rect.Top, stg_historico.Cells[ACol,ARow]);}
  end
else
   if (ARow = 0) then // se linha=0 alinha ao centro
      Format := DT_CENTER
   else // caso contrario a esquerda
Format := DT_RIGHT; //DT_RIGHT alinha a direita

if (ARow = 0) then
   stg_historico.Canvas.Font.Style := [fsBold];
DrawText(stg_historico.Canvas.Handle,PChar(strTemp),-1,Rect,Format);
end;

procedure TFrm_Cad_PlanoPagto.gerarTabelauxiliar;
var
  X, C, L: Integer;
  WLim, WLido: String;
begin
// Limpar stg_historico
  with stg_historico do
    for X:= 0 to RowCount -1 do
      Rows[X].Clear;

  stg_historico.Cells[0,0]:= 'Faixa / Valor Até';
  stg_historico.ColWidths[0]:= 120;

// Somente para saber quantas colunas
  DB_OpenSQL('select count(*) as qtd, dtvalidade_hpi, cod_planopagto from tbl_histplanoitemvalor '+
             'where cod_planopagto = ' + edt_cod_planopagto.Text +
             ' group by dtvalidade_hpi, cod_planopagto');
  stg_historico.ColCount:= Tab.RecordCount + 1;

// Para montar o StringGrid
  DB_OpenSQL('select descricao_hpi, faixaIni_hpi, vlfixo_hpi, Substring(nome_mes,1,3) + ''/'' + '+
             'cast(year(dtvalidade_hpi) as Varchar) as dt_limite, dtvalidade_hpi from tbl_histplanoitemvalor '+
             'inner join tbl_mes on cod_mes = month(dtvalidade_hpi) '+
             'where cod_planopagto = ' + edt_cod_planopagto.Text + ' and vlfixo_hpi > 0 ' +
             ' union '+
             'select descricao_piv, faixaIni_piv, vlfixo_piv, ''ATUAL'', ''12-01-9999'' from tbl_planoitemvalor '+
             'where cod_planopagto = ' + edt_cod_planopagto.Text + ' and vlfixo_piv > 0 ' +
             ' order by dtvalidade_hpi desc, faixaIni_hpi, descricao_hpi');
  C:= 0;
  L:= 0;
  WLim:= '';
  stg_historico.RowCount:= 0;
  while not Tab.EOF do
    begin
    if Tab.FieldByName('dt_limite').Value <> WLim then
       begin
       inc(C);
       L:= 0;
       WLim:= Tab.FieldByName('dt_limite').Value;
       stg_historico.Cells[C,L]:= Tab.FieldByName('dt_limite').AsString;
       WLido:= '';
       end;
    if WLim = 'ATUAL' then
       begin
       inc(L);
       stg_historico.Cells[C,L]:= FormatFloat('###,##0.00', Tab.FieldByName('vlfixo_hpi').Value);
       end
    else
       for X:= 0 to stg_historico.RowCount -1 do
           begin
           if Tab.FieldByName('descricao_hpi').Value = stg_historico.Cells[0,X] then
              begin
              stg_historico.Cells[C,X]:= FormatFloat('###,##0.00', Tab.FieldByName('vlfixo_hpi').Value);
              WLido:= '';
              Break;
              end;
           end;
    if WLim = 'ATUAL' then
       begin
       stg_historico.Cells[0,L]:= Tab.FieldByName('descricao_hpi').Text;
       stg_historico.RowCount:= stg_historico.RowCount + 1;
       end;
    Tab.Next;
    end;

  DB_ExecSql('delete from aux_planopagto');
  for X:= 0 to stg_historico.RowCount -1 do
     if X = 0 then
        DB_ExecADOSQL('insert into aux_planopagto (seq_ppg, desc_ppg, dtlim1_ppg, dtlim2_ppg, dtlim3_ppg, dtlim4_ppg, dtlim5_ppg, dtlim6_ppg, '+
                      'dtlim7_ppg, dtlim8_ppg, dtlim9_ppg, dtlim10_ppg) values (0, '' '', ''' + stg_historico.Cells[1,0] + ''', ''' +
                      stg_historico.Cells[2,0] + ''', ''' + stg_historico.Cells[3,0] + ''', ''' + stg_historico.Cells[4,0] + ''', ''' +
                      stg_historico.Cells[5,0] + ''', ''' + stg_historico.Cells[6,0] + ''', ''' + stg_historico.Cells[7,0] + ''', ''' +
                      stg_historico.Cells[8,0] + ''', ''' + stg_historico.Cells[9,0] + ''', ''' + stg_historico.Cells[10,0] +''')')
     else
        DB_ExecADOSQL('insert into aux_planopagto (seq_ppg, desc_ppg, dtlim1_ppg, dtlim2_ppg, dtlim3_ppg, dtlim4_ppg, dtlim5_ppg, dtlim6_ppg, '+
                      'dtlim7_ppg, dtlim8_ppg, dtlim9_ppg, dtlim10_ppg) values (' + IntToStr(X) + ', '''+ stg_historico.Cells[0,X] + ''', ''' +
                      stg_historico.Cells[1,X] + ''', ''' + stg_historico.Cells[2,X] + ''', ''' + stg_historico.Cells[3,X] + ''', ''' +
                      stg_historico.Cells[4,X] + ''', ''' + stg_historico.Cells[5,X] + ''', ''' + stg_historico.Cells[6,X] + ''', ''' +
                      stg_historico.Cells[7,X] + ''', ''' + stg_historico.Cells[8,X] + ''', ''' + stg_historico.Cells[9,X] + ''', ''' +
                      stg_historico.Cells[10,X] +''')');
end;

procedure TFrm_Cad_PlanoPagto.PDJButton1Click(Sender: TObject);
begin
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal3.spc_cons_adm_planopagto;
  Frm_Bas_Impressao.FCampo1 := edt_cod_planopagto.Text+'  -  '+edt_nome_plp.Text;
  Frm_Bas_Impressao.showReport(4233);
  Fdt_principal3.spc_cons_adm_planopagto.Close;
end;

procedure TFrm_Cad_PlanoPagto.edt_cod_planopagtoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
