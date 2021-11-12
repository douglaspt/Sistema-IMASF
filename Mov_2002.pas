unit Mov_2002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2002 = class(TFrm_Bas_TelaPadrao)
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    GroupBox2: TGroupBox;
    PDJButton1: TPDJButton;
    GroupBox4: TGroupBox;
    btn_novo: TPDJButton;
    btn_parcelamento: TPDJButton;
    btn_relatorio: TPDJButton;
    PDJButton10: TPDJButton;
    PDJButton9: TPDJButton;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    PDJButton3: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton8: TPDJButton;
    Panel1: TPanel;
    edt_dtenvio_flh: TDCDateEdit;
    edt_dtbaixaautomatica_flh: TDCDateEdit;
    Panel10: TPanel;
    edt_dtgeradoCont_flh: TDCDateEdit;
    edt_dtFarmacia_flh: TDCDateEdit;
    btn_descpfgb: TPDJButton;
    Panel4: TPanel;
    edt_dtDebPerfumaria_flh: TDCDateEdit;
    edt_dtTranfPerfumaria_flh: TDCDateEdit;
    edt_dtTransferencia_flh: TDCDateEdit;
    edt_dtPatronal_flh: TDCDateEdit;
    Panel5: TPanel;
    edt_dtDebOdonto_flh: TDCDateEdit;
    edt_dtTranfOdonto_flh: TDCDateEdit;
    edt_dtBeneficiarios_flh: TDCDateEdit;
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure cbx_cod_mesChange(Sender: TObject);
    procedure edt_anoChange(Sender: TObject);
    procedure cbx_cod_empresafolhaChange(Sender: TObject);
    procedure btn_parcelamentoClick(Sender: TObject);
    procedure btn_descpfgbClick(Sender: TObject);
  private
    { Private declarations }
    function BAS_ValidarCadastro: boolean ;
    procedure CarregarCombos;
    procedure AtualizaDadosFolha;
  public
    { Public declarations }
    FCod_Conveniado, FMes, FAno, FSeq, FSeqconta, FSeqItem  : String ;
  end;

var
  Frm_Mov_2002: TFrm_Mov_2002;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj, Mov_DescontoManual, Mov_GeraNossoNumBoleto, Mov_GeraDSKBancoBrasil,
     Mov_DisqueteBaixaBanco, Rel_ExtratoDesconto001, Rel_3061, Rel_3028, Mov_Parcelamento,
     Mov_2044, Mov_2069;

{$R *.DFM}

function TFrm_Mov_2002.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O m�s de Refer�ncia deve sser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Refer�ncia deve ser Preenchido!', VLD_Preenchido )) then
  Exit;
  result := false ;
end;

procedure TFrm_Mov_2002.CarregarCombos;
begin
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2002.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.text := FormatDateTime('yyyy',date);
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, 99);
end;

procedure TFrm_Mov_2002.AtualizaDadosFolha;
begin
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select dtgeradoCont_flh, dtFarmacia_flh, dtTransferencia_flh, dtenvio_flh, dtbaixaautomatica_flh,'+
    ' dtBeneficiarios_flh, dtPatronal_flh, dtDebPerfumaria_flh, dtTranfPerfumaria_flh, dtDebOdonto_flh, dtTranfOdonto_flh'+
    ' from tbl_lotefolhadescontos where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+
    ''' and cod_empresafolha = '+cbx_cod_empresafolha.valueItem);
    edt_dtgeradoCont_flh.Date := tab.fieldByname('dtgeradoCont_flh').AsDateTime;
    edt_dtFarmacia_flh.Date := tab.FieldByName('dtFarmacia_flh').AsDateTime;
    edt_dtTransferencia_flh.Date := tab.FieldByName('dtTransferencia_flh').asDateTime;
    edt_dtenvio_flh.Date := tab.FieldByName('dtenvio_flh').AsDateTime;
    edt_dtbaixaautomatica_flh.Date := tab.FieldByName('dtbaixaautomatica_flh').AsDateTime;
    edt_dtPatronal_flh.Date := tab.FieldByName('dtPatronal_flh').AsDateTime;
    edt_dtDebPerfumaria_flh.Date := tab.FieldByName('dtDebPerfumaria_flh').AsDateTime;
    edt_dtTranfPerfumaria_flh.Date := tab.FieldByName('dtTranfPerfumaria_flh').AsDateTime;
    edt_dtDebOdonto_flh.Date := tab.FieldByName('dtDebOdonto_flh').AsDateTime;
    edt_dtTranfOdonto_flh.Date := tab.FieldByName('dtTranfOdonto_flh').AsDateTime;
    edt_dtBeneficiarios_flh.Date := tab.FieldByName('dtBeneficiarios_flh').AsDateTime;
  end;
end;

procedure TFrm_Mov_2002.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2044 := TFrm_Mov_2044.Create(Self);
  Frm_Mov_2044.FMesReferencia := cbx_cod_mes.valueItem;
  Frm_Mov_2044.FAnoReferencia := edt_ano.Text;
  Frm_Mov_2044.FEmpresaFolha := cbx_cod_empresafolha.valueItem;
  Frm_Mov_2044.ShowModal;
  Frm_Mov_2044.Release;
  Show;
end;

procedure TFrm_Mov_2002.btn_novoClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2044 := TFrm_Mov_2044.Create(Self);
  Frm_Mov_2044.FMesReferencia := cbx_cod_mes.valueItem;
  Frm_Mov_2044.FAnoReferencia := edt_ano.Text;
  Frm_Mov_2044.FEmpresaFolha := cbx_cod_empresafolha.valueItem;
  Frm_Mov_2044.btn_novoClick(self);
  Frm_Mov_2044.ShowModal;
  Frm_Mov_2044.Release;
  Show;
end;

procedure TFrm_Mov_2002.PDJButton3Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_GeraNossoNumBoleto := TFrm_Mov_GeraNossoNumBoleto.Create(Self);
  Frm_Mov_GeraNossoNumBoleto.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Mov_GeraNossoNumBoleto.FAnoReferencia := edt_ano.text ;
  Frm_Mov_GeraNossoNumBoleto.ShowModal;
  Frm_Mov_GeraNossoNumBoleto.Release;
  Show;
end;

procedure TFrm_Mov_2002.PDJButton4Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_GeraDSKBancoBrasil := TFrm_Mov_GeraDSKBancoBrasil.Create(Self);
  Frm_Mov_GeraDSKBancoBrasil.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Mov_GeraDSKBancoBrasil.FAnoReferencia := edt_ano.text ;
  Frm_Mov_GeraDSKBancoBrasil.ShowModal;
  Frm_Mov_GeraDSKBancoBrasil.Release;
  Show;
end;

procedure TFrm_Mov_2002.PDJButton8Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_DisqueteBaixaBanco := TFrm_Mov_DisqueteBaixaBanco.Create(Self);
  Frm_Mov_DisqueteBaixaBanco.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Mov_DisqueteBaixaBanco.FAnoReferencia := edt_ano.text ;
  Frm_Mov_DisqueteBaixaBanco.ShowModal;
  Frm_Mov_DisqueteBaixaBanco.Release;
  Show;
end;

procedure TFrm_Mov_2002.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_ExtratoDesconto001 := TFrm_Rel_ExtratoDesconto001.Create(Self);
  Frm_Rel_ExtratoDesconto001.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_ExtratoDesconto001.FAnoReferencia := edt_ano.text ;
  Frm_Rel_ExtratoDesconto001.FEmpresaFolha := cbx_cod_empresafolha.valueitem ;
  Frm_Rel_ExtratoDesconto001.ShowModal;
  Frm_Rel_ExtratoDesconto001.Release;
  Show;
end;

procedure TFrm_Mov_2002.PDJButton10Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3061 := TFrm_Rel_3061.Create(Self);
  Frm_Rel_3061.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3061.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3061.ShowModal;
  Frm_Rel_3061.Release;
  Show;
end;

procedure TFrm_Mov_2002.PDJButton9Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3028 := TFrm_Rel_3028.Create(Self);
  Frm_Rel_3028.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3028.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3028.FEmpresaFolha := cbx_cod_empresafolha.valueitem ;
  Frm_Rel_3028.ShowModal;
  Frm_Rel_3028.Release;
  Show;
end;

procedure TFrm_Mov_2002.cbx_cod_mesChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2002.edt_anoChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2002.cbx_cod_empresafolhaChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2002.btn_parcelamentoClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_Parcelamento := TFrm_Mov_Parcelamento.Create(Self);
  Frm_Mov_Parcelamento.ShowModal;
  Frm_Mov_Parcelamento.Release;
  Show;
end;

procedure TFrm_Mov_2002.btn_descpfgbClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_2069:= TFrm_Mov_2069.Create(Self);
  Frm_Mov_2069.FMesReferencia := cbx_cod_mes.valueItem;
  Frm_Mov_2069.FAnoReferencia := edt_ano.Text;
  Frm_Mov_2069.ShowModal;
  Frm_Mov_2069.Release;
  Show;
end;

end.



