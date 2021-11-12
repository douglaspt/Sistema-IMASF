unit Rel_3060;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Rel_3060 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    pnl_dtsituacao: TPanel;
    edt_dtOcorrenciaInicial1: TDCDateEdit;
    edt_dtOcorrenciaFinal1: TDCDateEdit;
    pnl_situacaodpd: TPanel;
    cbx_cod_situacaodpd: TDCComboBox;
    btn_limpar: TPDJButton;
    btn_movaseco: TPDJButton;
    TabSheet3: TTabSheet;
    pnl_ocorrencia: TPanel;
    edt_dtOcorrenciaInicial: TDCDateEdit;
    edt_dtOcorrenciaFinal: TDCDateEdit;
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    pnl_dtsistema: TPanel;
    edt_dtsistemaInicial: TDCDateEdit;
    edt_dtsistemaFinal: TDCDateEdit;
    PDJButton3: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton1: TPDJButton;
    GroupBox1: TGroupBox;
    PDJButton4: TPDJButton;
    ckb_InscCanc: TCheckBox;
    rdg_buscar: TRadioGroup;
    pnl_situacaoimasf: TPanel;
    cbx_cod_situacao_fpm: TDCComboBox;
    pnl_classificacaodpd: TPanel;
    cbx_classificacaositdpd: TDCComboBox;
    Panel1: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdg_buscarClick(Sender: TObject);
    procedure btn_movasecoClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
    procedure Carregarcombo;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3060: TFrm_Rel_3060;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4056, Fun_Data, dtm_principal5, Imp_4119, Dlg_Mensagem, Imp_4121,
  Imp_4123, Imp_4124, Fun_Str, Bas_Impressao, dtm_principal6, Fun_Desconto,
  dtm_principal4, Fun_Obj;

{$R *.DFM}

function TFrm_Rel_3060.CriticaParametros : Boolean ;
begin
   result :=(edt_dtOcorrenciaInicial.Text = '') and (edt_dtOcorrenciaFinal.Text = '') and
  (cbx_cod_mes.Text = '') and (edt_ano.Text = '') and (edt_dtsistemaInicial.Text = '') and (edt_dtsistemaFinal.Text = '')
  and (edt_dtOcorrenciaInicial1.Text = '') and (edt_dtOcorrenciaFinal1.Text = '');
end;


procedure TFrm_Rel_3060.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then begin
    Dlg_Alerta('A Data de Ocorrência ou O mês e Ano de Referência deve ser Preenchidos!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_histOcorrenciaEdital do
  begin
    close;
    ParamByName('@cod_beneficiario').AsInteger := 0 ;
    ParamByName('@dtOcorrenciaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaInicial.Date) ;
    ParamByName('@dtOcorrenciaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaFinal.Date) ;
    ParamByName('@dtSistemaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtsistemaInicial.Date) ;
    ParamByName('@dtSistemaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtsistemaFinal.Date) ;
    if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
      ParamByName('@dtReferencia_hoe').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text
    else
      ParamByName('@dtReferencia_hoe').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_histOcorrenciaEdital;
  if (cbx_cod_mes.text <> '') and (edt_ano.text <> '') then
    Frm_Bas_Impressao.FCampo1 := 'Mês/Ano de Referência : ' + cbx_cod_mes.text+'/'+edt_ano.Text;
  if (edt_dtOcorrenciaInicial.Text <> '') and (edt_dtOcorrenciaFinal.text <> '') then
    Frm_Bas_Impressao.FCampo1 := 'Data da Ocorrência  de '+ edt_dtOcorrenciaInicial.text+' até '+edt_dtOcorrenciaFinal.text;
  if (edt_dtsistemaInicial.text <> '') and (edt_dtsistemaFinal.Text <> '') then
    Frm_Bas_Impressao.FCampo1 := 'Data do Sistema  de '+edt_dtsistemaInicial.Text+' até '+edt_dtsistemaFinal.Text;
  Frm_Bas_Impressao.showReport(4123);
   fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;

   {
  Frm_Imp_4123 := TFrm_Imp_4123.Create(Self);
  Frm_Imp_4123.FPeriodoInicial := edt_dtOcorrenciaInicial.text;
  Frm_Imp_4123.FPeriodoFinal := edt_dtOcorrenciaFinal.text;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
  Frm_Imp_4123.FMesAnoReferencia := cbx_cod_mes.text+'/'+edt_ano.Text;
  Frm_Imp_4123.QuickRep1.Preview;
  Frm_Imp_4123.Release;
  fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;  }
end;

procedure TFrm_Rel_3060.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then begin
    Dlg_Alerta('A Data de Ocorrência ou O mês e Ano de Referência deve ser Preenchidos!',self);
    Exit;
  end;
  if rdg_buscar.ItemIndex = 2 then begin
    Dlg_Alerta('Esse Relatorio não Filtra pela Data do Sistema!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_TextoEdital do
  begin
    close;
    ParamByName('@dtOcorrenciaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaInicial.Date) ;
    ParamByName('@dtOcorrenciaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaFinal.Date) ;
    if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
      ParamByName('@dtReferencia_hoe').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text
    else
      ParamByName('@dtReferencia_hoe').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4121 := TFrm_Imp_4121.Create(Self);
  Frm_Imp_4121.FPeriodoInicial := edt_dtOcorrenciaInicial.text;
  Frm_Imp_4121.FPeriodoFinal := edt_dtOcorrenciaFinal.text;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
  Frm_Imp_4121.FMesAnoReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Imp_4121.QuickRep1.Preview;
  Frm_Imp_4121.Release;
  fdt_principal5.spc_cons_adm_TextoEdital.close;
end;

procedure TFrm_Rel_3060.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then begin
    Dlg_Alerta('A Data de Ocorrência ou O mês e Ano de Referência deve ser Preenchidos!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_histOcorrenciaEdital do
  begin
    close;
    ParamByName('@cod_beneficiario').AsInteger := 0 ;
    ParamByName('@dtOcorrenciaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaInicial.Date) ;
    ParamByName('@dtOcorrenciaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaFinal.Date) ;
    ParamByName('@dtSistemaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtsistemaInicial.Date) ;
    ParamByName('@dtSistemaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtsistemaFinal.Date) ;
    if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
      ParamByName('@dtReferencia_hoe').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text
    else
      ParamByName('@dtReferencia_hoe').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4119 := TFrm_Imp_4119.Create(Self);
  Frm_Imp_4119.FPeriodoInicial := edt_dtOcorrenciaInicial.text;
  Frm_Imp_4119.FPeriodoFinal := edt_dtOcorrenciaFinal.text;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
  Frm_Imp_4119.FMesAnoReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Imp_4119.QuickRep1.Preview;
  Frm_Imp_4119.Release;
  fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;
end;

procedure TFrm_Rel_3060.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then begin
    Dlg_Alerta('A Data de Ocorrência ou O mês e Ano de Referência deve ser Preenchidos!',self);
    Exit;
  end;
  if rdg_buscar.ItemIndex = 2 then begin
    Dlg_Alerta('Esse Relatorio não Filtra pela Data do Sistema!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_Ocorrenciaedital do
  begin
    close;
    ParamByName('@dtOcorrenciaInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaInicial.Date) ;
    ParamByName('@dtOcorrenciaFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaFinal.Date) ;
    if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
      ParamByName('@dtReferencia_hoe').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text
    else
      ParamByName('@dtReferencia_hoe').AsString := '';
    if ckb_InscCanc.Checked then
      ParamByName('@tipo_oce').AsInteger := 1
    else
      ParamByName('@tipo_oce').AsInteger := 0;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  fdt_principal5.spc_cons_adm_Ocorrenciaedital.Open;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_Ocorrenciaedital;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
    Frm_Bas_Impressao.FMesReferencia := 'Mês/Ano de Referência : ' + cbx_cod_mes.text+'/'+edt_ano.Text
  else
    Frm_Bas_Impressao.FMesReferencia := 'Período de '+ edt_dtOcorrenciaInicial.text+' até '+edt_dtOcorrenciaFinal.text;
  Frm_Bas_Impressao.showReport(4137);

{  Frm_Imp_4124 := TFrm_Imp_4124.Create(Self);
  Frm_Imp_4124.FPeriodoInicial := edt_dtOcorrenciaInicial.text;
  Frm_Imp_4124.FPeriodoFinal := edt_dtOcorrenciaFinal.text;
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
  Frm_Imp_4124.FMesAnoReferencia := cbx_cod_mes.text+'/'+edt_ano.Text;
  Frm_Imp_4124.QuickRep1.Preview;
  Frm_Imp_4124.Release;
  fdt_principal5.spc_cons_adm_Ocorrenciaedital.close;}
end;

procedure TFrm_Rel_3060.Carregarcombo;
begin
  BAS_CarregarCombo('cbx_cod_mes','nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_situacaodpd', 'nome_sdp', 'cod_situacaodpd', 'tbl_situacaodpd order by nome_sdp');
  Obj_LoadCombo(Self, 'cbx_classificacaositdpd', 'descricao_csd', 'cod_classificacaositdpd', 'tbl_classificacaositdpd order by descricao_csd');
  cbx_cod_situacao_fpm.Clear;
  cbx_cod_situacao_fpm.Items.Add('Ativado');
  cbx_cod_situacao_fpm.Items.Add('Desativado');
  cbx_cod_situacao_fpm.ValItems.Add('1');
  cbx_cod_situacao_fpm.ValItems.Add('2');
  btn_limparClick(Self);
end;

procedure TFrm_Rel_3060.FormShow(Sender: TObject);
begin
  inherited;
  Carregarcombo;
end;

procedure TFrm_Rel_3060.rdg_buscarClick(Sender: TObject);
begin
  inherited;
  pnl_ocorrencia.Visible := rdg_buscar.ItemIndex = 0;
  pnl_referencia.Visible := rdg_buscar.ItemIndex = 1;
  pnl_dtsistema.Visible := rdg_buscar.ItemIndex = 2;
  edt_dtOcorrenciaInicial.Text := '';
  edt_dtOcorrenciaFinal.Text := '';
  edt_dtsistemaInicial.Text := '';
  edt_dtsistemaFinal.Text := '';
  edt_ano.Text := '';
  cbx_cod_mes.Clear;
  cbx_cod_mes.ValueItem := '0' ;
  cbx_cod_mes.Refresh;
  Carregarcombo;
end;

procedure TFrm_Rel_3060.btn_movasecoClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then begin
    Dlg_Alerta('As Datas de Situação DPD Inicial e Final devem ser Preenchidas!', Self);
    Exit;
  end;
  pnl_situacaodpd.SetFocus;
  with fdt_principal4.spc_cons_adm_movimentacaoaseco do
  begin
    close;
    ParamByName('@dtalteracaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaInicial1.Date);
    ParamByName('@dtalteracaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtOcorrenciaFinal1.Date);
    if cbx_cod_situacao_fpm.ValueItem = '' then
       cbx_cod_situacao_fpm.ValueItem:= '-1';
    if cbx_classificacaositdpd.ValueItem = '' then
       cbx_classificacaositdpd.ValueItem:= '-1';
    if cbx_cod_situacaodpd.ValueItem = '' then
       cbx_cod_situacaodpd.ValueItem:= '-1';
    if cbx_cod_empresafolha.ValueItem = '' then
       cbx_cod_empresafolha.ValueItem:= '-1';
    if cbx_cod_situacao_fpm.ValueItem > -1 then
       ParamByName('@cod_situacao_fpm').Value := cbx_cod_situacao_fpm.ValueItem
    else
       ParamByName('@cod_situacao_fpm').Value := '0';
    if cbx_classificacaositdpd.ValueItem > -1 then
       ParamByName('@cod_classificacaositdpd').Value := cbx_classificacaositdpd.ValueItem
    else
       ParamByName('@cod_classificacaositdpd').Value := '0';
    if cbx_cod_situacaodpd.ValueItem > -1 then
       ParamByName('@cod_situacaodpd').Value := cbx_cod_situacaodpd.ValueItem
    else
       ParamByName('@cod_situacaodpd').Value := '0';
    if cbx_cod_empresafolha.ValueItem > -1 then
       ParamByName('@cod_empresafolha').Value := cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').Value := '0';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_movimentacaoaseco;
  Frm_Bas_Impressao.FCampo1 := 'Data de Alteração DPD:  de '+ edt_dtOcorrenciaInicial1.text+'  até  '+edt_dtOcorrenciaFinal1.text;
  Frm_Bas_Impressao.FCampo2 := '                                                  ';
  Frm_Bas_Impressao.FCampo3 := '                                                                  ';
  Frm_Bas_Impressao.FCampo4 := '                                                  ';
  Frm_Bas_Impressao.FCampo5 := '                                                  ';
  if cbx_cod_situacao_fpm.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo2 := 'Status IMASF: '+cbx_cod_situacao_fpm.Text;
  if cbx_classificacaositdpd.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo3 := 'Classific.Situação DPD:  '+cbx_classificacaositdpd.Text;
  if cbx_cod_situacaodpd.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo4 := 'Situação DPD:'+cbx_cod_situacaodpd.Text;
  if cbx_cod_empresafolha.ItemIndex > -1 then
     Frm_Bas_Impressao.FCampo5 := 'Empresa:                             '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.showReport(4234);
  fdt_principal4.spc_cons_adm_movimentacaoaseco.close;
end;

procedure TFrm_Rel_3060.btn_limparClick(Sender: TObject);
begin
  inherited;
  cbx_cod_empresafolha.ItemIndex:= -1;
  cbx_cod_situacaodpd.ItemIndex:= -1;
  cbx_cod_situacao_fpm.ItemIndex:= -1;
  cbx_classificacaositdpd.ItemIndex:= -1;
end;

procedure TFrm_Rel_3060.TabSheet2Show(Sender: TObject);
begin
  inherited;
  edt_dtOcorrenciaInicial1.Text:= '';
  edt_dtOcorrenciaFinal1.Text:= '';
  btn_limparClick(Self);
end;

procedure TFrm_Rel_3060.TabSheet3Show(Sender: TObject);
begin
  inherited;
  edt_dtOcorrenciaInicial.Text:= '';
  edt_dtOcorrenciaFinal.Text:= '';
  cbx_cod_mes.Text:= '';
  edt_ano.Text:= '';
  edt_dtsistemaInicial.Text:= '';
  edt_dtsistemaFinal.Text;
end;

end.

