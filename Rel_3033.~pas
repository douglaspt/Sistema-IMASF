unit Rel_3033;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox;

type
  TFrm_Rel_3033 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    DataSource1: TDataSource;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbg_itemservico: TDBGrid;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    edt_dataInicial: TDCDateEdit;
    edt_datafinal: TDCDateEdit;
    lbl_TotalRegistro1: TLabel;
    edt_precototal1: TDCEdit;
    Label1: TLabel;
    PDJButton1: TPDJButton;
    Panel1: TPanel;
    Panel4: TPanel;
    rdb_crescente: TRadioButton;
    rdb_decrescente: TRadioButton;
    edt_ano: TBEdit;
    cbx_cod_mes: TBComboBox;
    Btn_LimpaCampos: TPDJButton;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJButton1Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    FMesAtual : boolean;
    FTit : String;
    procedure Atualizar(incricao, tit, dataini, datafin : string; mesatual : boolean);
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesReferencia, FAnoReferencia, FEmpresaFolha,
    wInscricao, wCod_Beneficiario : String ;
  end;

var
  Frm_Rel_3033: TFrm_Rel_3033;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
dtm_principal5, Fun_Str, Dlg_Mensagem, Fun_Obj, Fun_Data, Fun_Db, Fun_Beneficiario,
Rel_3034, Bas_Impressao;

{$R *.DFM}


procedure TFrm_Rel_3033.Atualizar(incricao, tit, dataini, datafin : string; mesatual : boolean);
var
  FVLTotal : double;
begin
  if PageControl1.Visible then
  begin
    with fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia do
    begin
      close;
      if mesatual then
      begin
        ParamByName('@inscricao_ben').AsString :=  incricao;
        ParamByName('@titulacartei_ben').AsString := tit;
        ParamByName('@dataInicial').AsString := FormatDateTime('mm',date)+'/01/'+FormatDateTime('yyyy',date);
        ParamByName('@dataFinal').AsString := FormatDateTime('mm',Data_Soma1mes(date))+'/01/'+FormatDateTime('yyyy',Data_Soma1mes(date));
      end
      else
      begin
        ParamByName('@inscricao_ben').AsString :=  incricao;
        ParamByName('@titulacartei_ben').AsString := tit;
        if dataini = '' then
          ParamByName('@dataInicial').AsString := ''
        else
          ParamByName('@dataInicial').AsString := FormatDateTime('mm/dd/yyyy', StrToDate(dataini));
        if datafin = '' then
          ParamByName('@dataFinal').AsString := ''
        else
          ParamByName('@dataFinal').AsString := FormatDateTime('mm/dd/yyyy', StrToDate(datafin));
      end;
      open;
      while not eof do
      begin
        FVLTotal := FVLTotal + fieldbyname('precoTotal').AsFloat;
        next;
      end;
      edt_precototal1.text := FormatFloat('###,###,##0.00', FVLTotal);
      lbl_TotalRegistro1.Caption := 'Total de Registro =  '+IntToStr(RecordCount);
    end;
  end;
end;


procedure TFrm_Rel_3033.edt_inscricao_benButtonClick(Sender: TObject);
  var
    FPesquisaSQLDefalt : string;
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0'
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    FTit := Tab.FieldByNAme('titulacartei_ben').AsString;
    PageControl1.Visible := true;
    Atualizar(edt_inscricao_ben.text,FTit,'','',true);
  end;
end;

procedure TFrm_Rel_3033.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3033.TabSheet1Show(Sender: TObject);
begin
  inherited;
  Atualizar(edt_inscricao_ben.text,FTit,'','',true);
end;

procedure TFrm_Rel_3033.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_inscricao_ben.SetFocus;
  if wInscricao <> '' then begin
    edt_inscricao_ben.Text := wInscricao;
    edt_inscricao_benButtonClick(self);
  end;
end;

procedure TFrm_Rel_3033.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  PageControl1.Visible := false;
  fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia.close;
end;

procedure TFrm_Rel_3033.PDJButton1Click(Sender: TObject);
var
  dtrefer : string;
begin
  inherited;
  if (edt_dataInicial.Text = '') and (edt_datafinal.Text = '') and (cbx_cod_mes.Text = '') then
  begin
    Dlg_Alerta('Um dos Campos de Data deve ser Preenchido',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    ParamByName('@titulacartei_ben').AsString := FTit;
    ParamByName('@dataInicial').AsString := FormatDateTime('mm/dd/yyyy',edt_dataInicial.date);
    ParamByName('@dataFinal').AsString := FormatDateTime('mm/dd/yyyy',edt_datafinal.Date);
    if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
    begin
      dtrefer := '01/'+cbx_cod_mes.getStrItemValue+'/'+edt_ano.Text;
      ParamByName('@dataInicial').AsString := FormatDateTime('mm/dd/yyyy',StrToDate(dtrefer));
      ParamByName('@dataFinal').AsString := FormatDateTime('mm/dd/yyyy',Data_Soma1mes(StrToDate(dtrefer)) - 1);
    end;
    if rdb_crescente.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_decrescente.Checked then
      ParamByName('@order').AsInteger := 1;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia;
  Frm_Bas_Impressao.FMesReferencia := 'Período de '+edt_dataInicial.Text+' até '+edt_datafinal.Text;
  Frm_Bas_Impressao.FCampo1 := 'Beneficiário:  '+edt_inscricao_ben.Text+'    '+edt_nome.Text;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
    Frm_Bas_Impressao.FMesReferencia := 'Mês / Ano de Referência   '+cbx_cod_mes.Text+'/'+edt_ano.text;
  Frm_Bas_Impressao.showReport(4139);
  fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia.close;
end;

procedure TFrm_Rel_3033.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

end.



