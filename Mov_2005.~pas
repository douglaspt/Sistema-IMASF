unit Mov_2005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellAPI;

type
  TFrm_Mov_2005 = class(TFrm_Bas_TelaPadrao)
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    GroupBox1: TGroupBox;
    PDJButton5: TPDJButton;
    PDJButton12: TPDJButton;
    GroupBox2: TGroupBox;
    PDJButton1: TPDJButton;
    GroupBox4: TGroupBox;
    btn_novo: TPDJButton;
    btn_parcelamento: TPDJButton;
    btn_relatorio: TPDJButton;
    PDJButton10: TPDJButton;
    PDJButton9: TPDJButton;
    GroupBox5: TGroupBox;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton6: TPDJButton;
    GroupBox3: TGroupBox;
    PDJButton7: TPDJButton;
    PDJButton8: TPDJButton;
    Panel4: TPanel;
    edt_dtDebPerfumaria_flh: TDCDateEdit;
    edt_dtTranfPerfumaria_flh: TDCDateEdit;
    Panel5: TPanel;
    edt_dtDebOdonto_flh: TDCDateEdit;
    edt_dtTranfOdonto_flh: TDCDateEdit;
    Panel10: TPanel;
    edt_dtgeradoCont_flh: TDCDateEdit;
    edt_dtFarmacia_flh: TDCDateEdit;
    edt_dtPatronal_flh: TDCDateEdit;
    Panel1: TPanel;
    edt_dtenvio_flh: TDCDateEdit;
    edt_dtbaixaautomatica_flh: TDCDateEdit;
    edt_dtTransferencia_flh: TDCDateEdit;
    edt_dtBeneficiarios_flh: TDCDateEdit;
    procedure FormShow(Sender: TObject);
    procedure PDJButton12Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_parcelamentoClick(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure cbx_cod_mesChange(Sender: TObject);
    procedure edt_anoChange(Sender: TObject);
    procedure cbx_cod_empresafolhaChange(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
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
  Frm_Mov_2005: TFrm_Mov_2005;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
dtm_principal4, Fun_Obj, Rel_ExtratoDesconto001, Rel_3061, Rel_3028, Rel_3040, Rel_3014,
Rel_3019, Mov_DescontoManual, Mov_Parcelamento, Mov_DisqueteBenefi, Rel_3029, Mov_2044;

{$R *.DFM}

function TFrm_Mov_2005.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O mês de Referência deve sser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser Preenchido!', VLD_Preenchido )) then
  Exit;
  result := false ;
end;

procedure TFrm_Mov_2005.CarregarCombos;
begin
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2005.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.text := FormatDateTime('yyyy',date);
end;

procedure TFrm_Mov_2005.PDJButton12Click(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', Pchar('http://spd08:8080/sistema-imasf/jsp/Wiki?Calend%E1rio+com+o+Resumo+das+Atividades+Necess%E1rias+para+Gera%E7%E3o+da+Folha' ), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Mov_2005.PDJButton5Click(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', Pchar('http://spd08:8080/sistema-imasf/jsp/Wiki?Guia+para+o+Processamento+de+Descontos+em+Folha' ), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Mov_2005.btn_relatorioClick(Sender: TObject);
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

procedure TFrm_Mov_2005.PDJButton10Click(Sender: TObject);
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

procedure TFrm_Mov_2005.PDJButton9Click(Sender: TObject);
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

procedure TFrm_Mov_2005.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3040 := TFrm_Rel_3040.Create(Self);
  Frm_Rel_3040.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3040.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3040.FEmpresaFolha := cbx_cod_empresafolha.valueitem ;
  Frm_Rel_3040.ShowModal;
  Frm_Rel_3040.Release;
  Show;
end;

procedure TFrm_Mov_2005.PDJButton1Click(Sender: TObject);
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

procedure TFrm_Mov_2005.btn_novoClick(Sender: TObject);
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

procedure TFrm_Mov_2005.btn_parcelamentoClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_Parcelamento := TFrm_Mov_Parcelamento.Create(Self);
  Frm_Mov_Parcelamento.ShowModal;
  Frm_Mov_Parcelamento.Release;
  Show;
end;

procedure TFrm_Mov_2005.PDJButton6Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_DisqueteBenefi := TFrm_Mov_DisqueteBenefi.Create(Self);
  Frm_Mov_DisqueteBenefi.FMesReferencia := cbx_cod_mes.valueitem;
  Frm_Mov_DisqueteBenefi.FAnoReferencia := edt_ano.Text;
  Frm_Mov_DisqueteBenefi.ShowModal;                                                                           
  Frm_Mov_DisqueteBenefi.Release;
  Show;
end;

procedure TFrm_Mov_2005.AtualizaDadosFolha;
begin
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select dtgeradoCont_flh, dtFarmacia_flh, dtTransferencia_flh, dtenvio_flh, dtbaixaautomatica_flh, '+
    ' dtBeneficiarios_flh, dtPatronal_flh, dtDebPerfumaria_flh, dtTranfPerfumaria_flh, dtDebOdonto_flh, dtTranfOdonto_flh'+ 
    ' from tbl_lotefolhadescontos where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+
    ''' and cod_empresafolha = '+cbx_cod_empresafolha.valueItem);
    edt_dtgeradoCont_flh.Date := tab.fieldByname('dtgeradoCont_flh').AsDateTime;
    edt_dtFarmacia_flh.Date := tab.FieldByName('dtFarmacia_flh').AsDateTime;
    edt_dtTransferencia_flh.Date := tab.FieldByName('dtTransferencia_flh').asDateTime;
    edt_dtenvio_flh.Date := tab.FieldByName('dtenvio_flh').AsDateTime;
    edt_dtBeneficiarios_flh.Date := tab.FieldByName('dtBeneficiarios_flh').AsDateTime;
    edt_dtbaixaautomatica_flh.Date := tab.FieldByName('dtbaixaautomatica_flh').AsDateTime;
    edt_dtPatronal_flh.Date := tab.FieldByName('dtPatronal_flh').AsDateTime;
    edt_dtDebPerfumaria_flh.Date := tab.FieldByName('dtDebPerfumaria_flh').AsDateTime;
    edt_dtTranfPerfumaria_flh.Date := tab.FieldByName('dtTranfPerfumaria_flh').AsDateTime;
    edt_dtDebOdonto_flh.Date := tab.FieldByName('dtDebOdonto_flh').AsDateTime;
    edt_dtTranfOdonto_flh.Date := tab.FieldByName('dtTranfOdonto_flh').AsDateTime;
  end;
end;

procedure TFrm_Mov_2005.cbx_cod_mesChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2005.edt_anoChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2005.cbx_cod_empresafolhaChange(Sender: TObject);
begin
  inherited;
  AtualizaDadosFolha;
end;

procedure TFrm_Mov_2005.PDJButton8Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3019 := TFrm_Rel_3019.Create(Self);
  Frm_Rel_3019.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3019.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3019.ShowModal;
  Frm_Rel_3019.Release;
  Show;
end;

procedure TFrm_Mov_2005.PDJButton7Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3029 := TFrm_Rel_3029.Create(Self);
  Frm_Rel_3029.FMesReferencia := cbx_cod_mes.valueitem ;
  Frm_Rel_3029.FAnoReferencia := edt_ano.text ;
  Frm_Rel_3029.FEmpresaFolha := cbx_cod_empresafolha.valueitem ;
  Frm_Rel_3029.ShowModal;
  Frm_Rel_3029.Release;
  Show;
end;

end.



