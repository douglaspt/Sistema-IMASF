unit Mov_2040;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2040 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btn_avancar: TPDJButton;
    rdb_alteracao: TRadioGroup;
    TabSheet2: TTabSheet;
    btn_voltar: TPDJButton;
    TabSheet3: TTabSheet;
    PDJButton1: TPDJButton;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel6: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    edt_inscricao: TDCEdit;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    dbg_descontos: TDBGrid;
    GroupBox1: TGroupBox;
    btn_oficioamigavel: TPDJButton;
    RdB_TodasCartas: TRadioButton;
    rdb_selecionados: TRadioButton;
    btn_etiquetas: TPDJButton;
    DataSource1: TDataSource;
    lbl_total: TLabel;
    edt_matricula: TDCEdit;
    TabSheet7: TTabSheet;
    cbx_cod_empresafolha: TDCComboBox;
    rdg_tipooficio: TRadioGroup;
    btn_notificacao: TPDJButton;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    TabSheet5: TTabSheet;
    SpeedButton1: TSpeedButton;
    dbg_descanalitico: TDBGrid;
    DataSource2: TDataSource;
    edt_matriculaseq: TDBEdit;
    lbl_qtdedescontos: TLabel;
    lbl_vltotal: TLabel;
    btn_atualizar: TSpeedButton;
    Label2: TLabel;
    edt_numoficio: TEdit;
    procedure btn_avancarClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_oficioamigavelClick(Sender: TObject);
    procedure rdb_selecionadosClick(Sender: TObject);
    procedure RdB_TodasCartasClick(Sender: TObject);
    procedure rdg_tipooficioClick(Sender: TObject);
    procedure btn_notificacaoClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btn_etiquetasClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
  private
    { Private declarations }
    ListItem: TListItem;
    WMatriculas : String;
  public
    { Public declarations }

  end;

var
  Frm_Mov_2040: TFrm_Mov_2040;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, dtm_principal4,
  Fun_Data, Fun_Str, dtm_principal;
{$R *.DFM}



procedure TFrm_Mov_2040.btn_avancarClick(Sender: TObject);
begin
  inherited;
  case rdb_alteracao.ItemIndex of
   0 : PageControl1.ActivePageIndex := 1 ;
   1 : PageControl1.ActivePageIndex := 1 ;
   2 : PageControl1.ActivePageIndex := 1 ;
   3 : PageControl1.ActivePageIndex := 2 ;
  end;
end;

procedure TFrm_Mov_2040.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0 ;
end;

procedure TFrm_Mov_2040.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.text := FormatDateTime('yyyy',date);
  WMatriculas := '';
end;

procedure TFrm_Mov_2040.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  with fdt_principal4.spc_cons_adm_totalDividaBenefi do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    parambyname('@inscricao_ben').AsString := edt_inscricao.Text ;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    if edt_matricula.Text <> '' then
      ParamByName('@matriculadebito_seg').AsString := edt_matricula.Text
    else
      ParamByName('@matriculadebito_seg').AsString := copy(WMatriculas, 1, length(WMatriculas)-2);
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@dias').AsInteger := rdg_tipooficio.ItemIndex;
    ParamByName('@cod_tarifa').AsString:= '516,518,576,577,578,595';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
    lbl_total.Caption := IntToStr(RecordCount);
  end;
end;

procedure TFrm_Mov_2040.btn_oficioamigavelClick(Sender: TObject);
var
  i : integer ;
begin
  inherited;
  WMatriculas := '';
  DB_OpenSQL('select isnull(dtbaixaautomatica_flh,0) as dtbaixaautomatica_flh  from tbl_lotefolhadescontos where cod_empresafolha = '+cbx_cod_empresafolha.valueitem+
  ' and dtreferencia_flh >= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''');
  if (StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) <>
  StrToInt(FormatDateTime('yyyymm', Tab.fieldbyName('dtbaixaautomatica_flh').AsDateTime))) then
  begin
    Dlg_Alerta('A baixa do mês selecionado para esta empresa ainda não foi realizada!',self); 
  end;
  if rdb_selecionados.Checked then
  begin
    if Frm_Mov_2040.dbg_descontos.SelectedRows.Count>0 then
    for i:=0 to dbg_descontos.SelectedRows.Count-1 do
    begin
      dbg_descontos.DataSource.DataSet.GotoBookmark(pointer(Frm_Mov_2040.dbg_descontos.SelectedRows.Items[i]));
      WMatriculas := WMatriculas + dbg_descontos.DataSource.DataSet.FieldByName('matriculadebito_seg').AsString + ', ';
    end;
  end;
  btn_atualizarClick(self);
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_totalDividaBenefi;
  Frm_Bas_Impressao.FCampo1:= edt_numoficio.Text;
  Frm_Bas_Impressao.FCampo2:= cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo3:= cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo5:= '2';
  Frm_Bas_Impressao.showReport(4238);
 // fdt_principal4.spc_cons_adm_totalDividaBenefi.First;

end;

procedure TFrm_Mov_2040.rdb_selecionadosClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_empresafolha.Text = '' then
  begin
    Dlg_Alerta('Para Imprimir somente selecionados o Campo Local de Desconto deve ser Preenchido!',self);
    RdB_TodasCartas.Checked := true;
    cbx_cod_empresafolha.SetFocus;
  end;
  dbg_descontos.Options := dbg_descontos.Options + [dgMultiSelect]
end;

procedure TFrm_Mov_2040.RdB_TodasCartasClick(Sender: TObject);
begin
  inherited;
  WMatriculas := '';
  dbg_descontos.Options := dbg_descontos.Options - [dgMultiSelect]
  //btn_atualizarClick(self);
end;

procedure TFrm_Mov_2040.rdg_tipooficioClick(Sender: TObject);
begin
  inherited;
  btn_atualizarClick(self);
  case rdg_tipooficio.ItemIndex of
   0 : begin
     btn_oficioamigavel.Enabled := false;
     btn_notificacao.Enabled := false;
   end;
   1 : begin
     btn_oficioamigavel.Enabled := true;
     btn_notificacao.Enabled := false;
   end;
   2 : begin
  //   btn_notificacao.Enabled := true;
     btn_oficioamigavel.Enabled := false;
   end;
  end;

end;

procedure TFrm_Mov_2040.btn_notificacaoClick(Sender: TObject);
var
  i, FnumOficio, Fano : integer;
begin
  inherited;
  if rdg_tipooficio.ItemIndex = 2 then
  begin
    WMatriculas := '';
    if rdb_selecionados.Checked then
    begin
      if Frm_Mov_2040.dbg_descontos.SelectedRows.Count>0 then
      for i:=0 to dbg_descontos.SelectedRows.Count-1 do
      begin
        dbg_descontos.DataSource.DataSet.GotoBookmark(pointer(Frm_Mov_2040.dbg_descontos.SelectedRows.Items[i]));
        WMatriculas := WMatriculas + dbg_descontos.DataSource.DataSet.FieldByName('matriculadebito_seg').AsString + ', ';
      end;
    end;
    btn_atualizarClick(self);
    Fano := Data_Year(Date);
    while not fdt_principal4.spc_cons_adm_totalDividaBenefi.eof do
    begin
      DB_OpenSQL('select numOficio_hda from tbl_parametro');
      FnumOficio := tab.Fields[0].AsInteger + 1;
      DB_OpenSQL('select cod_descontofolha from vw_descontos where dtreferencia_flh = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''''+
      ' and cod_sitdesconto in (1) and matriculadebito_seg = '+fdt_principal4.spc_cons_adm_totalDividaBenefi.fieldByname('matriculadebito_seg').asstring+
      ' and cod_empresafolha = '+fdt_principal4.spc_cons_adm_totalDividaBenefi.fieldByname('cod_empresafolha').asstring+
      ' order by cod_descontofolha');
        while not Tab.eof do
        begin
          DB_ExecADOSQL('insert into tbl_histDividaAtiva values ('+Tab.fieldByName('cod_descontofolha').AsString+','+IntToStr(FnumOficio)+','+
          IntToStr(Fano)+','''+FormatDateTime('mm/dd/yyyy',Date)+''')');
          DB_ExecADOSQL('update tbl_descontofolha set cod_sitdesconto = 2 where cod_descontofolha = '+Tab.fieldByName('cod_descontofolha').AsString+
          ' and cod_sitdesconto = 1');
          DB_ExecADOSQL('update tbl_parcelamento set cod_sitdesconto = 2 where cod_descontofolha = '+Tab.fieldByName('cod_descontofolha').AsString+
          ' and cod_sitdesconto = 1');
          Tab.next;
        end;
        DB_ExecSQL('update tbl_parametro set numOficio_hda = '+IntToStr(FnumOficio));
      fdt_principal4.spc_cons_adm_totalDividaBenefi.Next;
    end;
    btn_atualizarClick(self);
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_totalDividaBenefi;
    Frm_Bas_Impressao.FCampo1:= '' ;
    Frm_Bas_Impressao.showReport(4239);
    fdt_principal4.spc_cons_adm_totalDividaBenefi.First;
  end;
end;

procedure TFrm_Mov_2040.TabSheet2Show(Sender: TObject);
begin
  inherited;
  fdt_principal4.spc_cons_adm_totalDividaBenefi.Close;
  Obj_SetFormObjValueByName(self, cbx_cod_sitdesconto.name, 1);
  //btn_atualizarClick(self);
end;

procedure TFrm_Mov_2040.TabSheet3Show(Sender: TObject);
begin
  inherited;
  fdt_principal4.spc_cons_adm_totalDividaBenefi.Close;
  Obj_SetFormObjValueByName(self, cbx_cod_sitdesconto.name, 2);
  //btn_atualizarClick(self);
end;

procedure TFrm_Mov_2040.btn_etiquetasClick(Sender: TObject);
var
  i : integer;
begin
  inherited;
  WMatriculas := '';
  DB_OpenSQL('select isnull(dtbaixaautomatica_flh,0) as dtbaixaautomatica_flh  from tbl_lotefolhadescontos where cod_empresafolha = '+cbx_cod_empresafolha.valueitem+
  ' and dtreferencia_flh >= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''');
  if (StrToInt(edt_ano.text+STR_AddZeros(cbx_cod_mes.ValueItem,2)) <>
  StrToInt(FormatDateTime('yyyymm', Tab.fieldbyName('dtbaixaautomatica_flh').AsDateTime))) then
  begin
    Dlg_Alerta('A baixa do mês selecionado para esta empresa ainda não foi realizada!',self); 
  end;
  if rdb_selecionados.Checked then
  begin
    if Frm_Mov_2040.dbg_descontos.SelectedRows.Count>0 then
    for i:=0 to dbg_descontos.SelectedRows.Count-1 do
    begin
      dbg_descontos.DataSource.DataSet.GotoBookmark(pointer(Frm_Mov_2040.dbg_descontos.SelectedRows.Items[i]));
      WMatriculas := WMatriculas + dbg_descontos.DataSource.DataSet.FieldByName('matriculadebito_seg').AsString + ', ';
    end;
  end;
  btn_atualizarClick(self);
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_totalDividaBenefi;
  Frm_Bas_Impressao.FCampo1:= '' ;
  Frm_Bas_Impressao.showReport(4240);
  fdt_principal4.spc_cons_adm_totalDividaBenefi.First;

end;

procedure TFrm_Mov_2040.FormDestroy(Sender: TObject);
begin
  inherited;
  fdt_principal4.spc_cons_adm_totalDividaBenefi.close;
  fdt_principal6.spc_cons_adm_descontos.close;
end;

procedure TFrm_Mov_2040.TabSheet7Show(Sender: TObject);
var
  vldesconto : double;
begin
  inherited;
  if edt_matriculaseq.Text = '' then
    exit;
  with fdt_principal6.spc_cons_adm_descontos do begin
    close;
    ParamByName('@matriculadebito_seg').AsString := edt_matriculaseq.Text;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem +'/01/'+edt_ano.text ;
    ParamByName('@cod_tarifa').AsString := '';
    ParamByName('@cod_empresafolha').AsString := fdt_principal4.spc_cons_adm_totalDividaBenefi.fieldbyName('cod_empresafolha').AsString;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    ParamByName('@nossonumero_flh').AsString := '';
    ParamByName('@cod_order').AsString := '0';
    open;
    lbl_qtdedescontos.Caption := 'Qtde. de Descontos: '+IntToStr(RecordCount);
    first;
    vldesconto := 0 ;
    while not eof do
    begin
      vldesconto := vldesconto + fdt_principal6.spc_cons_adm_descontos.fieldbyname('vldesconto_adf').AsFloat;
      next;
    end;
    lbl_vltotal.caption := FormatFloat('###,###,##0.00', vldesconto);
  end;
end;

end.



