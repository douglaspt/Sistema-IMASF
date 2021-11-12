unit Mov_2028;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit;

type
  TFrm_Mov_2028 = class(TFrm_Bas_TelaPadrao)
    GroupBox1: TGroupBox;
    edt_carteira: TDCEdit;
    Label1: TLabel;
    Label2: TLabel;
    cbx_status: TDCComboBox;
    Label3: TLabel;
    btn_atualizar: TSpeedButton;
    Label11: TLabel;
    btn_adicionarReq: TPDJButton;
    btn_alterarReq: TPDJButton;
    btn_removerRec: TPDJButton;
    btn_salvarReq: TPDJButton;
    btn_cancelarReq: TPDJButton;
    DataSource1: TDataSource;
    Label4: TLabel;
    btn_efetuarProcesCritica: TPDJButton;
    btn_adicionarProc: TPDJButton;
    btn_alterarProc: TPDJButton;
    btn_removerProc: TPDJButton;
    btn_salvarProc: TPDJButton;
    btn_cancelarProc: TPDJButton;
    lbl_tlreq: TLabel;
    lbl_tlProc: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_vlInformado: TDCEdit;
    edt_vlPagar: TDCEdit;
    edt_diferenca: TDCEdit;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    dbg_procedimento: TDBGrid;
    dbg_requerimento: TDBGrid;
    edt_nome_psm: TDCEdit;
    edt_ano: TDCEdit;
    edt_dtentrada_rbs: TDCDateEdit;
    edt_dtsaida_rbs: TDCDateEdit;
    edt_cod_acomodacao: TDCEdit;
    edt_cod_tipoatendimento: TDCEdit;
    edt_cod_cid: TDCEdit;
    cbx_cod_mes: TDCComboBox;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    edt_vlinformado_irs: TDCEdit;
    edt_vlpagar_irs: TDCEdit;
    edt_dhe_irs: TDCEdit;
    edt_dtrealizacao_irs: TDCDateEdit;
    edt_emergenia_irs: TDCEdit;
    edt_cod_posicao: TDCEdit;
    edt_descricao_itc: TDCEdit;
    DataSource2: TDataSource;
    rdb_sequencia: TRadioButton;
    rdb_nome: TRadioButton;
    rdb_data: TRadioButton;
    rdb_statusnome: TRadioButton;
    rdb_statusdata: TRadioButton;
    edt_qtde_irs: TDCEdit;
    edt_retorno_irs: TDCEdit;
    Label5: TLabel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_cod_espmedamb: TDCChoiceEdit;
    btn_processarconta: TPDJButton;
    edt_cod_Requerimento: TDCEdit;
    btn_autorizacao: TPDJButton;
    Animate: TAnimate;
    edt_cod_prestadorsm: TDCChoiceEdit;
    edt_cod_crm: TDCEdit;
    edt_dtprotocolo_rem: TDCDateEdit;
    cbx_cod_uf: TDCComboBox;
    edt_nome: TDCEdit;
    Panel5: TPanel;
    edt_obs_itc: TDCEdit;
    PDJButton1: TPDJButton;
    ckb_mesanterior: TCheckBox;
    btn_atualizaVlInf: TPDJButton;
    edt_requerimento: TDBEdit;
    edt_sequenciaconta_ctm: TDBEdit;
    edt_cod_benFavorecido: TBEdit;
    edt_cod_protocoloReembolso: TBEdit;
    btn_agendarpagto: TSpeedButton;
    rdb_normal: TRadioButton;
    rdb_judicial: TRadioButton;
    rdb_integral: TRadioButton;   procedure FormShow(Sender: TObject);
    procedure btn_adicionarReqClick(Sender: TObject);
    procedure btn_alterarReqClick(Sender: TObject);
    procedure btn_cancelarReqClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_salvarReqClick(Sender: TObject);
    procedure btn_removerRecClick(Sender: TObject);
    procedure btn_adicionarProcClick(Sender: TObject);
    procedure btn_alterarProcClick(Sender: TObject);
    procedure btn_cancelarProcClick(Sender: TObject);
    procedure btn_removerProcClick(Sender: TObject);
    procedure btn_salvarProcClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AtualizaProcedimento ;
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_descricao_itcEnter(Sender: TObject);
    procedure edt_cod_espmedambButtonClick(Sender: TObject);
    procedure btn_processarcontaClick(Sender: TObject);
    procedure btn_autorizacaoClick(Sender: TObject);
    procedure btn_efetuarProcesCriticaClick(Sender: TObject);
    procedure edt_dtentrada_rbsExit(Sender: TObject);
    procedure edt_cod_prestadorsmButtonClick(Sender: TObject);
    procedure edt_cod_prestadorsmExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_atualizaVlInfClick(Sender: TObject);
    procedure edt_requerimentoChange(Sender: TObject);
    procedure edt_cod_RequerimentoExit(Sender: TObject);
    procedure btn_agendarpagtoClick(Sender: TObject);
    procedure dbg_requerimentoEnter(Sender: TObject);
    procedure dbg_requerimentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    FStatus2, Seq, Seq2, CodIts : Integer ;
    Idade, DTrealizacao : String;
    FPesquisaSQLDefalt : String ;
    procedure BotoesRequerimentoOnOff(b:boolean);
    procedure BotoesProcedimentoOnOff(b:boolean);
  public
    { Public declarations }
    wCod_Desconto, wParcela : String ;
    wPlano : integer;
  end;

var
  Frm_Mov_2028: TFrm_Mov_2028;
  FMatricula, FDigito, FEmpresafolha, Fvlpagar_itc: String ;
  FDataReferencia: TDateTime;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj, Fun_ConsCadastro, Fun_Data, Fun_Test, Fun_Medico, Mov_ProcessarConta,
     Mov_2025, Rel_3063, Fun_Desconto;

{$R *.DFM}

procedure TFrm_Mov_2028.BotoesProcedimentoOnOff(b:boolean);
begin
  inherited;
    btn_adicionarProc.Enabled := b ;
    btn_alterarProc.Enabled := b ;
    btn_removerProc.Enabled := b ;
    btn_salvarProc.Enabled := not b ;
    btn_cancelarProc.Enabled := not b;
    dbg_procedimento.visible := b ;
    btn_adicionarReq.Enabled := b ;
    btn_alterarReq.Enabled := b ;
    btn_removerRec.Enabled := b ;
    Btn_Fechar.Enabled := b ;
end;

procedure TFrm_Mov_2028.BotoesRequerimentoOnOff(b:boolean);
begin
  inherited;
    btn_adicionarReq.Enabled := b ;
    btn_alterarReq.Enabled := b ;
    btn_removerRec.Enabled := b ;
    btn_salvarReq.Enabled := not b ;
    btn_cancelarReq.Enabled := not b;
    dbg_requerimento.visible := b ;
    btn_adicionarProc.Enabled := b ;
    btn_alterarProc.Enabled := b ;
    btn_removerProc.Enabled := b ;
    Btn_Fechar.Enabled := b ;
end;

procedure TFrm_Mov_2028.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_status', 'descricao_sts', 'cod_status', 'tbl_statusconta where cod_status < 100 or cod_status = 999');
  Obj_LoadCombo(self,'cbx_cod_uf','sigla_uf','cod_uf', 'tbl_uf');
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
end;

procedure TFrm_Mov_2028.btn_adicionarReqClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_nome.name, '� necess�rio selecionar um Benefici�rio!', VLD_Preenchido) then
  exit ;
  btn_atualizar.click;
  FStatus2 := FST_Novo;
  edt_dtprotocolo_rem.SetFocus;
  BotoesRequerimentoOnOff(false);
  Obj_EmptyEditTag(self,2);
  FormShow(self);
  Obj_SetFormObjValueByName(self, cbx_cod_uf.name, 1);
  if ckb_mesanterior.Checked then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, StrToInt(copy(DateToStr(date),4,2))-1)
  else
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, StrToInt(copy(DateToStr(date),4,2)));
  edt_ano.Text := copy(DateToStr(date),7,4);
  edt_cod_acomodacao.Text := '5';
  edt_cod_tipoatendimento.Text := '6';
  edt_cod_cid.Text := '000';
  edt_cod_protocoloReembolso.Text := '0';
  rdb_normal.Checked := true;
  EscreveLog(btn_adicionarReq.name);
end;

procedure TFrm_Mov_2028.btn_alterarReqClick(Sender: TObject);
begin
  inherited;
   DB_OpenSQL('select idade_ben from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.Text);
   Idade := Tab.fieldbyname('idade_ben').AsString;
   FStatus2 := FST_Alteracao;
  with fdt_principal4.spc_cons_adm_reembolso do begin
    BotoesRequerimentoOnOff(false);
    edt_cod_Requerimento.text := FieldByName('cod_Requerimento').AsString ;
    edt_dtprotocolo_rem.text := Data_Format('dd/mm/yyyy',FieldByName('dtprotocolo_rem').AsDateTime) ;
    edt_cod_prestadorsm.text := FieldByName('cod_prestadorsm').AsString ;
    edt_nome_psm.text := FieldByName('nome_psm').AsString ;
    edt_cod_crm.text :=  FieldByName('cod_crm').AsString ;
    Obj_SetFormObjValueByName(self,'cbx_cod_uf',FieldByName('cod_uf').AsString);
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FormatDateTime('m',FieldByName('dtreferencia_cta').AsDateTime));
    edt_ano.text :=  FormatDateTime('yyyy',FieldByName('dtreferencia_cta').AsDateTime);
    edt_dtentrada_rbs.Text := Data_Format('dd/mm/yyyy',FieldByName('dtentrada_ctm').AsDateTime) ;
    edt_dtsaida_rbs.Text := Data_Format('dd/mm/yyyy',FieldByName('dtsaida_ctm').AsDateTime) ;
    edt_cod_acomodacao.Text := FieldByName('cod_acomodacao').AsString;
    edt_cod_tipoatendimento.Text := FieldByName('cod_tipatendimento').AsString;
    edt_cod_cid.Text := FieldByName('cod_cid').AsString;
    edt_cod_espmedamb.Text := FieldByName('cod_especialidade').AsString;
    case FieldByName('tipoCalculo_rem').AsInteger of
     0 : rdb_normal.Checked := true;
     1 : rdb_integral.Checked := true;
     2 : rdb_judicial.Checked := true;
    else rdb_normal.Checked := true;
    end;

  end;
  EscreveLog(btn_alterarReq.name);
  cbx_cod_mes.Enabled := false;
  edt_ano.Enabled := false;
end;

procedure TFrm_Mov_2028.btn_cancelarReqClick(Sender: TObject);
begin
  inherited;
  btn_alterarReq.Enabled := fdt_principal4.spc_cons_adm_reembolso.RecordCount > 0 ;
  BotoesRequerimentoOnOff(true);
  if fdt_principal4.spc_cons_adm_reembolso.RecordCount = 0 then begin
    btn_adicionarProc.Enabled := false ;
    btn_alterarProc.Enabled := false ;
    btn_removerProc.Enabled := false ;
    btn_salvarProc.Enabled := false ;
    btn_cancelarProc.Enabled := false;
  end;
  cbx_cod_mes.Enabled := True;
  edt_ano.Enabled := True;
  EscreveLog(btn_cancelarReq.name);
end;

procedure TFrm_Mov_2028.edt_inscricao_benButtonClick(Sender: TObject);
var
  FPlano : String;
begin
  FTitPesquisa  := 'Localizar Benefici�rios' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
  btn_autorizacao.Enabled:= False;
  btn_agendarpagto.Enabled:= False;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    //DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, cod_empresafolha '+
    //'from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben,'+
    ' digito_ben, b.cod_sitbeneficiario, nome_sit, tipo_sit, dtnascim_ben, sexo_ben, bn.cod_planoPagtoOld, pp.cod_plano as cod_planoOld'+
    ' from tbl_beneficiario b, tbL_sitbeneficiario s, tbl_beneficiarioPlanoPagtoEspecial bn, tbl_planopagto pp'+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.cod_beneficiario = bn.cod_beneficiario'+
    ' and bn.cod_planoPagtoOld = pp.cod_planopagto and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    if (Date >= StrToDate('01/10/2021')) then
      FPlano := Tab.FieldByNAme('cod_plano').AsString
    else
      FPlano := Tab.FieldByNAme('cod_planoOld').AsString;
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    Tab.FieldByName('cod_empresa').AsString+FPlano+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByName('nome_ben').AsString;
    wPlano := Tab.FieldByName('cod_plano').AsInteger;
    FEmpresafolha:= Tab.FieldByNAme('cod_empresafolha').AsString;
    btn_atualizarClick(Self);
    btn_cancelarReqClick(Self);
    btn_autorizacao.Enabled:= False;
    btn_agendarpagto.Enabled:= False;
  end;
end;

procedure TFrm_Mov_2028.btn_atualizarClick(Sender: TObject);
  function VerIndice: string;
  begin
    if rdb_sequencia.Checked then result := '1';
    if rdb_nome.Checked then result := '2';
    if rdb_data.Checked then result := '3';
    if rdb_statusnome.Checked then result := '4';
    if rdb_statusdata.Checked then result := '5';
  end;
begin
  inherited;
//  if rdb_inscricao.Checked = True then
//     begin
     if not BAS_ValidarCampo(edt_nome.name, '� necess�rio selecionar um Benefici�rio!', VLD_Preenchido) then
        exit ;
     fdt_principal4.spc_cons_adm_itemreembolso.close;
     with fdt_principal4.spc_cons_adm_reembolso do begin
       Close;
       parambyname('@cod_beneficiario').asstring := edt_cod_beneficiario.text ;
       parambyname('@status').asstring := cbx_status.valueitem;
       parambyname('@indice').asstring := VerIndice ;
       Open;
       lbl_tlreq.Caption := 'Total de Protocolos  '+IntToStr(RecordCount);
       DB_OpenSQL('select idade_ben from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.Text);
       Idade := Tab.fieldbyname('idade_ben').AsString;
       end;
 //    end;
end;

procedure TFrm_Mov_2028.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fdt_principal4.spc_cons_adm_reembolso.close;
   fdt_principal4.spc_cons_adm_itemreembolso.close;
end;

procedure TFrm_Mov_2028.btn_salvarReqClick(Sender: TObject);
var
  FtipoCalculo : Integer;

begin
  inherited;
  edt_cod_RequerimentoExit(Self);
  if (not BAS_ValidarCampo(edt_cod_Requerimento.name, '� necess�rio preencher o N� do Protocolo', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_dtprotocolo_rem.Name, '� necess�rio preencher a Data do Protocolo', VLD_DataPreenchida)) or
  (not BAS_ValidarCampo(edt_cod_prestadorsm.name, '� necess�rio preencher o CPF / CNPJ', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_nome_psm.Name, '� necess�rio preencher o Nome do Prestador ', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cod_uf.Name, '� necess�rio preencher o EStado', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cod_mes.Name, '� necess�rio preencher o M�s de Refer�ncia', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_dtentrada_rbs.Name, '� necess�rio preencher a Data de Entrada', VLD_DataPreenchida)) or
  (not BAS_ValidarCampo(edt_dtsaida_rbs.Name, '� necess�rio preencher a Data de Sa�da', VLD_DataPreenchida)) or
  (not BAS_ValidarCampo(edt_cod_acomodacao.Name, '� necess�rio preencher a Acomoda��o', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cod_tipoatendimento.Name, '� necess�rio preencher o Cod. Tipo Atendimento', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cod_cid.Name, '� necess�rio preencher o CID', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_cod_espmedamb.Name, '� necess�rio preencher o Cod. Especialidade', VLD_Preenchido)) then
    Exit;
  if Length(edt_cod_prestadorsm.text) < 12 then
    if not BAS_ValidarCampo(edt_cod_crm.Name, '� necess�rio preencher o CRM', VLD_Preenchido) then
      exit ;
  if (wPlano = 1) or (wPlano = 6) then
  begin
    if Dlg_YesNo('N�o � permitido Reembolso para o Plano PFGB/ENF e PFGB/APA, Deseja Bloquear?',self) then
      exit;
  end;
  if (date - edt_dtentrada_rbs.Date) > 90 then
  begin
    if Dlg_YesNo('O prazo para solicita��o de reembolso � de 90 dias contados da data de atendimento, Deseja Bloquear?',self) then
      exit;
  end;
  if Data_BOM(edt_dtentrada_rbs.Date) > StrToDate('01/'+cbx_cod_mes.valueItem+'/'+edt_ano.text) then
  begin
    if Dlg_YesNo('A Data de Entrada � maior que o M�s de Refer�ncia, Deseja Bloquear?',self) then
      exit;
  end;
  if edt_cod_crm.Text = '' then
    edt_cod_crm.Text := '0';

  if rdb_normal.Checked then
    FtipoCalculo := 0;
  if rdb_integral.Checked then
    FtipoCalculo := 1;
  if rdb_judicial.Checked then
    FtipoCalculo := 2;

  if Dlg_YesNo('Tem Certeza que deseja Salvar o Protocolo?', Self) then
  begin
    RecebimentoConta('9997',''''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+'''','1','1');
    if FStatus2 = FST_Novo then
    begin
      DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = 9997'+
      ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+''' and sequencia_cta = 1');
      if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
        Dlg_Alerta('N�o � poss�vel Salvar porque a conta ja foi Repassada !', self);
        exit;
      end;
      if DB_OpenSQL('select max(sequenciaconta_ctm) as sequenciaconta_ctm from tbl_contamedica where cod_conveniado = 9997'+
        ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+'''') > 0 then
        Seq := Tab.Fields[0].AsInteger + 1
      else
       Seq:= 1;
      DB_OpenSQL('select * from tbl_prestadorsm where cod_prestadorsm = '''+edt_cod_prestadorsm.text+'''');
      if tab.RecordCount >= 1 then
        DB_ExecSQL('update tbl_prestadorsm set  nome_psm = '''+edt_nome_psm.text+''', cod_crm =  '+edt_cod_crm.Text+' , cod_uf = '+
        cbx_cod_uf.valueitem+' where cod_prestadorsm = '''+edt_cod_prestadorsm.text+'''')
      else
        DB_ExecSQL('insert into tbl_prestadorsm (cod_prestadorsm, nome_psm, cod_crm, cod_uf) values ('''
        +edt_cod_prestadorsm.text+''', '''+edt_nome_psm.text+ ''', '+edt_cod_crm.text+', '+cbx_cod_uf.valueItem+')' );
  //inserindo dados na tabela tbl_contamedica
      DB_ExecSQL('insert into tbl_contamedica(cod_conveniado,dtreferencia_cta, '+
      'sequencia_cta, sequenciaconta_ctm, cod_endconveniado, carteirainform_ctm, cod_beneficiario, '+
      'nomebenefi_ctm, cod_autorizacao, cod_acomodacao, dtentrada_ctm, dtsaida_ctm, '+
      'cod_tipatendimento,  cod_cid, cod_especialidade, cod_crm, status_ctm,'+
      ' pagtoincondicional_ctm, idadeben_ctm, cod_usuario, dtsistema_ctm) values ( 9997, '+
      ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''',1 ,'+IntToStr(Seq)+', 1 ,'+STR_RemoveChar(STR_RemoveChar(edt_carteira.text,'.'),'-')+','+edt_cod_beneficiario.text+
      ','''+edt_nome.Text+''', 0,'+edt_cod_acomodacao.text+', '''+Data_Format('mm/dd/yyyy',edt_dtentrada_rbs.Date)+''','''+Data_Format('mm/dd/yyyy',edt_dtsaida_rbs.Date)+''''+
      ','+edt_cod_tipoatendimento.text+','''+edt_cod_cid.text+''','+edt_cod_espmedamb.Text+','+edt_cod_crm.text+',9, 0, '+
      Idade+','+IntToStr(FCod_Usuario)+', getdate())');
  //inserindo dados na tabela tbl_reembolsomedico
      DB_ExecSQL('insert into tbl_reembolsomedico(cod_conveniado,dtreferencia_cta, '+
      'sequencia_cta, sequenciaconta_ctm, cod_PrestadorSM, cod_Requerimento, dtprotocolo_rem, cod_usuario, dtsistema_ctm, cod_protocoloReembolso, tipoCalculo_rem) values ( 9997, '+
      ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''',1 ,'+IntToStr(Seq)+','''+edt_cod_prestadorsm.text+''' ,'+edt_cod_Requerimento.Text+', '''+
//      Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date)+''','+IntToStr(FCod_Usuario)+', getdate())');
      Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date)+''','+IntToStr(FCod_Usuario)+', getdate(), ' +
      edt_cod_protocoloReembolso.Text +', '+inttostr(FtipoCalculo)+')');
    end
    else begin
      DB_OpenSQL('select * from tbl_prestadorsm where cod_prestadorsm = '''+edt_cod_prestadorsm.text+'''');
      if tab.RecordCount >= 1 then
        DB_ExecSQL('update tbl_prestadorsm set  nome_psm = '''+edt_nome_psm.text+''', cod_crm =  '+edt_cod_crm.Text+' , cod_uf = '+
        cbx_cod_uf.valueitem+' where cod_prestadorsm = '''+edt_cod_prestadorsm.text+'''')
      else
        DB_ExecSQL('insert into tbl_prestadorsm (cod_prestadorsm, nome_psm, cod_crm, cod_uf) values ('''
        +edt_cod_prestadorsm.text+''', '''+edt_nome_psm.text+ ''', '+edt_cod_crm.text+', '+cbx_cod_uf.valueItem+ ')' );
      if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 200) or
       (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 1000) then
       Dlg_Ok('N�o � possivel Alterar o Protocolo porque a conta j� foi Repassada',self)
        //Alterando dados na tabela tbl_reembolsomedico
      else begin
        DB_ExecSQL('update tbl_contamedica set '+
        'cod_acomodacao = '+edt_cod_acomodacao.text+', '+
        'dtentrada_ctm = '''+Data_Format('mm/dd/yyyy',edt_dtentrada_rbs.Date)+''', '+
        'dtsaida_ctm = '''+Data_Format('mm/dd/yyyy',edt_dtsaida_rbs.Date)+''', '+
        'cod_tipatendimento = '+edt_cod_tipoatendimento.text+', '+
        'cod_cid = '''+edt_cod_cid.text+''', '+
        'cod_especialidade = '+edt_cod_espmedamb.text+', '+
        'cod_crm = '+edt_cod_crm.text+', '+
        'cod_usuario = '+IntToStr(FCod_Usuario)+', '+
        'dtsistema_ctm = getdate()'+
        ' where '+
        ' cod_conveniado = 9997 and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
        ''' and sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.FieldByName('sequenciaconta_ctm').AsString);
     //Alterando dados na tabela tbl_reembolsomedico
        DB_ExecSQL('update tbl_reembolsomedico set cod_prestadorSM = '''+edt_cod_prestadorsm.text+''', '+
        'cod_Requerimento = '+edt_cod_Requerimento.text+', '+
        'dtprotocolo_rem = '''+Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date)+''', '+
        'cod_usuario = '+IntToStr(FCod_Usuario)+', '+
        'dtsistema_ctm = getdate()'+', '+
        ' tipoCalculo_rem = '+IntToStr(FtipoCalculo)+
        ' where '+
        ' cod_conveniado = 9997 and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
        ''' and sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.FieldByName('sequenciaconta_ctm').AsString);
      end;
    end;
    btn_atualizar.Click;
    BotoesRequerimentoOnOff(true);
    fdt_principal4.spc_cons_adm_reembolso.Locate('sequenciaconta_ctm', Seq, [loCaseInsensitive]);
    DTrealizacao := edt_dtentrada_rbs.Text;
    if FStatus2 = FST_Novo then
    btn_adicionarProcClick(self);
    cbx_cod_mes.Enabled := True;
    edt_ano.Enabled := True;
  end;
// Criando Registro em tbl_protocoloReembolso
  DB_OpenSQL('select * from tbl_protocoloReembolso where numProtocolo = ' + edt_cod_Requerimento.Text + ' and dtprotocolo = ''' + Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date)+'''');
  if Tab.FieldByName('numProtocolo').Text = '' then
     DB_ExecSQL('insert into tbl_protocoloReembolso (numProtocolo, anoProtocolo, cod_benPaciente, cod_benFavorecido, cod_contacorrente, dtprotocolo, cod_status, inscricao_ben) values ('+
                edt_cod_Requerimento.Text + ', ' +  FormatDateTime('yyyy', edt_dtprotocolo_rem.Date) + ', ' + edt_cod_beneficiario.Text + ', 0, 0, ''' +
                FormatDateTime('mm/dd/yyyy', edt_dtprotocolo_rem.Date) + ''', 0, ' + edt_inscricao_ben.Text + ')');
  EscreveLog(btn_salvarReq.name);
end;

procedure TFrm_Mov_2028.btn_removerRecClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Protocolo ?', Self) then begin
    if fdt_principal4.spc_cons_adm_itemreembolso.RecordCount > 0 then begin
      Dlg_Alerta('� necess�rio excluir o Item antes de Excluir o Protocolo!',self);
      exit;
    end;
    if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 200) or
       (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 1000) then
       Dlg_Ok('N�o � possivel excluir o Protocolo porque a conta ja foi repassada',self)
    else begin
      DB_ExecSQL('delete from tbl_contamedica where cod_conveniado = 9997 and cod_beneficiario = '+
      edt_cod_beneficiario.Text+' and dtreferencia_cta = '''+Data_Format('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyName('dtreferencia_cta').AsDateTime)+
      ''' and sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString);
      DB_ExecSQL('delete from tbl_reembolsomedico where cod_conveniado = 9997 and dtreferencia_cta = '''+Data_Format('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyName('dtreferencia_cta').AsDateTime)+
      ''' and sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString);
      DB_ExecSQL('delete from tbl_protocoloReembolso where numProtocolo = ' + fdt_principal4.spc_cons_adm_reembolso.fieldbyName('cod_Requerimento').AsString +
                 ' and dtprotocolo = '''+Data_Format('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyName('dtprotocolo_rem').AsDateTime) + '''');
      fdt_principal4.spc_cons_adm_reembolso.close;
      fdt_principal4.spc_cons_adm_reembolso.open;
      lbl_tlreq.Caption := 'Total de Protocolos  '+IntToStr(fdt_principal4.spc_cons_adm_reembolso.RecordCount);
    end;
  end;
  EscreveLog(btn_removerRec.name);
  dbg_procedimento.SetFocus;
  dbg_requerimento.SetFocus;
 end;

procedure TFrm_Mov_2028.btn_adicionarProcClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_nome.name, '� necess�rio selecionar um Benefici�rio!', VLD_Preenchido) then
    exit ;
  FStatus2 := FST_Novo;
  edt_cod_itemservico.SetFocus;
  BotoesProcedimentoOnOff(false);
  Obj_EmptyEditTag(self,3);
  edt_emergenia_irs.Text := 'N';
  edt_dhe_irs.Text := 'N';
  edt_cod_posicao.Text := '0';
  edt_retorno_irs.Text := 'N';
  btn_atualizaVlInf.Enabled := false;
  edt_dtrealizacao_irs.Text := DTrealizacao;
  if DB_OpenSQL('select max(sequenciaitem_itc) from tbl_itemconta where cod_conveniado = 9997'+
  ' and dtreferencia_cta = '''+Data_Format('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyName('dtreferencia_cta').AsDateTime)+
  ''' and sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString) > 0 then
  Seq2 := Tab.Fields[0].AsInteger + 1
  else
  Seq2:= 1;
  EscreveLog(btn_adicionarProc.name);
end;

procedure TFrm_Mov_2028.btn_alterarProcClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal4.spc_cons_adm_itemreembolso do begin
    BotoesProcedimentoOnOff(false);
    edt_emergenia_irs.text := FieldByName('emergencia_itc').AsString ;
    edt_dhe_irs.text := FieldByName('dhe_itc').AsString ;
    edt_dtrealizacao_irs.text := Data_Format('dd/mm/yyyy',FieldByName('dtrealizacao_itc').AsDateTime) ;
    edt_cod_posicao.text := FieldByName('cod_posicao').AsString ;
    edt_qtde_irs.text := FieldByName('qtde_itc').AsString ;
    edt_cod_itemservico.text := FieldByName('cod_padrao').AsString ;
    edt_descricao_itc.Text := FieldByName('descricao_itc').AsString;
    edt_vlinformado_irs.Text := FieldByName('vlinformado_itc').AsString;
    edt_vlpagar_irs.Text := FieldByName('vlpagar_itc').AsString;
    edt_retorno_irs.Text := FieldByName('retorno_itc').AsString;
    edt_obs_itc.Text := FieldByName('obs_itc').AsString;
    CodIts := fieldbyname('cod_itemservico').AsInteger;
    btn_atualizaVlInf.Enabled := true;
    end;
    EscreveLog(btn_alterarProc.name);
end;

procedure TFrm_Mov_2028.btn_cancelarProcClick(Sender: TObject);
begin
  inherited;
  btn_alterarProc.Enabled := fdt_principal4.spc_cons_adm_itemreembolso.RecordCount > 0 ;
  BotoesProcedimentoOnOff(true);
  EscreveLog(btn_cancelarProc.name);
end;

procedure TFrm_Mov_2028.btn_removerProcClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Procedimento ?', Self) then begin
    if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 200) or
       (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 1000) then
       Dlg_Ok('N�o � possivel excluir o Procedimento porque a conta ja foi repassada',self)
    else begin
      DB_ExecSQL('delete from tbl_itemconta where cod_conveniado = 9997 and dtreferencia_cta = '''+
      Data_Format('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyName('dtreferencia_cta').AsDateTime)+ ''' and sequencia_cta = 1'+
      ' and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_reembolso.FieldByName('sequenciaconta_ctm').asstring+
      ' and sequenciaitem_itc = '+fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('sequenciaitem_itc').asstring );
      fdt_principal4.spc_cons_adm_itemreembolso.close;
      fdt_principal4.spc_cons_adm_itemreembolso.open;
    end;
  end;
  AtualizaProcedimento;
  EscreveLog(btn_removerProc.name);
end;

procedure TFrm_Mov_2028.btn_salvarProcClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_itemservico.name, '� necess�rio preencher o Cod. Item Servi�o', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_descricao_itc.Name, '� necess�rio preencher a Descri��o do Item de Servi�o ', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_emergenia_irs.Name, '� necess�rio preencher a Emerg�ncia', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_dhe_irs.Name, '� necess�rio preencher o DHE', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_dtrealizacao_irs.Name, '� necess�rio preencher a Data de Realiza��o', VLD_DataPreenchida)) or
  (not BAS_ValidarCampo(edt_cod_posicao.Name, '� necess�rio preencher a Posi��o', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_qtde_irs.Name, '� necess�rio preencher a Quantidade', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_vlinformado_irs.Name, '� necess�rio preencher o Valor Informado', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_retorno_irs.Name, '� necess�rio preencher o Retorno', VLD_Preenchido)) then
    Exit;
  if Data_BOM(edt_dtrealizacao_irs.Date) > Data_BOM(Date) then
  begin
    if Dlg_YesNo('A Data de Realiza��o � maior que o M�s Atual, Deseja Bloquear?',self) then
      exit;
  end;
  if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 200) or
  (fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').AsInteger = 1000) then
  begin
    Dlg_Ok('N�o � possivel Adicionar o Item porque a conta ja foi repassada',self);
    Exit;
  end;
  if Dlg_YesNo('Tem Certeza que deseja Salvar o Procedimento ?', Self) then
  begin
    if (wPlano = 1) or (wPlano = 6) then
    begin
      if Dlg_YesNo('N�o � permitido Reembolso para o Plano PFGB/ENF e PFGB/APA, Deseja Bloquear?',self) then
        exit;
    end;
    if (wPlano <> 3) and ((edt_cod_itemservico.Text = '12010014') or (edt_cod_itemservico.Text = '51010909') or
    (edt_cod_itemservico.Text = '25990039')) then
      if Dlg_YesNo('Esse Procedimento � permitido somente para o Plano Especial, Deseja Bloquear?',self) then
        exit;
    if (wPlano <> 2) and (wPlano <> 3) and ((edt_cod_itemservico.Text = '50016') or (edt_cod_itemservico.Text = '39020010')) then
      if Dlg_YesNo('Esse Procedimento � permitido somente para o Plano Intermedi�rio e Especial, Deseja Bloquear?',self) then
        exit;
    edt_vlinformado_irs.text := STR_RemoveChar(edt_vlinformado_irs.text, '.');
    edt_vlpagar_irs.text := STR_RemoveChar(edt_vlpagar_irs.text, '.');
    if FStatus2 = FST_Novo then
    begin
      if ((edt_cod_itemservico.Text = '12010014') or (edt_cod_itemservico.Text = '51010909') or (edt_cod_itemservico.Text = '25990039') or
      (edt_cod_itemservico.Text = '50016')) then
      begin
        DB_OpenSQL('SELECT sum(i.qtde_itc) as qtde_itc FROM dbo.tbl_itemconta i INNER JOIN dbo.tbl_contamedica c'+
        ' ON i.cod_conveniado = c.cod_conveniado AND i.dtreferencia_cta = c.dtreferencia_cta'+
        ' AND i.sequencia_cta = c.sequencia_cta AND i.sequenciaconta_ctm = c.sequenciaconta_ctm'+
        ' where i.cod_conveniado = 9997 and c.dtentrada_ctm >= '''+
        FormatDateTime('mm',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtentrada_ctm').AsDateTime)+
        '/01/'+FormatDateTime('yyyy',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtentrada_ctm').AsDateTime)+
        ''' and c.dtentrada_ctm < '''+FormatDateTime('mm',Data_Soma1mes(Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtentrada_ctm').AsDateTime))+
        '/01/'+FormatDateTime('yyyy',Data_Soma1mes(Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtentrada_ctm').AsDateTime))+
        ''' and c.cod_beneficiario = '+edt_cod_beneficiario.Text+
        ' and i.cod_padrao = '+edt_cod_itemservico.Text);
        if ((Tab.FieldByName('qtde_itc').AsInteger + StrToInt(edt_qtde_irs.Text)) > 5) then
          if Dlg_YesNo('So � permito apenas 5 se��es por M�s para este Procedimento, Deseja Bloquear?',self) then
            exit;
      end;
      if (edt_cod_itemservico.Text = '39020010') then
      begin
        DB_OpenSQL('SELECT sum(i.qtde_itc) as qtde_itc FROM dbo.tbl_itemconta i INNER JOIN dbo.tbl_contamedica c'+
        ' ON i.cod_conveniado = c.cod_conveniado AND i.dtreferencia_cta = c.dtreferencia_cta'+
        ' AND i.sequencia_cta = c.sequencia_cta AND i.sequenciaconta_ctm = c.sequenciaconta_ctm'+
        ' where i.cod_conveniado = 9997 and i.dtreferencia_cta >= ''01/01/'+FormatDateTime('yyyy',Date)+
        ''' and i.dtreferencia_cta <= ''12/31/'+FormatDateTime('yyyy',Date)+
        ''' and c.cod_beneficiario = '+edt_cod_beneficiario.Text+
        ' and i.cod_padrao = '+edt_cod_itemservico.Text);
        if ((Tab.FieldByName('qtde_itc').AsInteger + StrToInt(edt_qtde_irs.Text)) > 10) then
          if Dlg_YesNo('So � permito apenas 10 se��es por Ano para este Procedimento, Deseja Bloquear?',self) then
            exit;
      end;
      DB_ExecSQL('insert into tbl_itemconta (cod_conveniado, dtreferencia_cta, sequencia_cta, '+
      'sequenciaconta_ctm, sequenciaitem_itc, cod_itemservico, cod_padrao, descricao_itc, '+
      'emergencia_itc, dhe_itc, dtrealizacao_itc, cod_posicao, qtde_itc, vlinformado_itc,'+
      'vlpagar_itc, reducacresc_itc, retorno_itc, status_itc, pagtoincondicional_itc, obs_itc ) values ( 9997,'''
      +FormatDateTime('mm/dd/yyyy',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime)+''', 1,'+
      fdt_principal4.spc_cons_adm_reembolso.FieldByName('sequenciaconta_ctm').AsString+','+inttostr(Seq2)+','+
      IntToStr(CodIts)+','+edt_cod_itemservico.text+', '''+edt_descricao_itc.text+''', '''+
      edt_emergenia_irs.Text+''', '''+edt_dhe_irs.text+''', '''+Data_Format('mm/dd/yyyy',edt_dtrealizacao_irs.Date)+''', '+
      edt_cod_posicao.text+','+edt_qtde_irs.Text+','''+STR_SubstChar(edt_vlinformado_irs.text,',','.')+''', '''+STR_SubstChar(edt_vlpagar_irs.text,',','.')+''', 100, '''+
      edt_retorno_irs.text+''',9, 0,'''+edt_obs_itc.Text+''')');
    end
    else begin
      DB_ExecSQL('update tbl_itemconta set '+
      'cod_itemservico = '+IntToStr(CodIts)+', '+
      'cod_padrao = '+edt_cod_itemservico.text+','+
      'descricao_itc = '''+edt_descricao_itc.text+''','+
      'emergencia_itc = '''+edt_emergenia_irs.Text+''', '+
      'dhe_itc = '''+edt_dhe_irs.Text+''', '+
      'dtrealizacao_itc = '''+Data_Format('mm/dd/yyyy',edt_dtrealizacao_irs.Date)+''', '+
      'cod_posicao = '+edt_cod_posicao.text+', '+
      'qtde_itc = '+edt_qtde_irs.text+', '+
      'vlinformado_itc = '''+STR_SubstChar(edt_vlinformado_irs.text,',','.')+''', '+
      'vlpagar_itc = '''+STR_SubstChar(edt_vlpagar_irs.text,',','.')+''', '+
      'obs_itc = '''+edt_obs_itc.Text+''', '+
      'retorno_itc = '''+edt_retorno_irs.text+''''+
      ' where cod_conveniado = 9997 and dtreferencia_cta = '''+FormatDateTime('mm/dd/yyyy',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime)+ ''' and '+
      'sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('sequenciaconta_ctm').AsString+
      ' and sequenciaitem_itc = '+fdt_principal4.spc_cons_adm_itemreembolso.fieldbyname('sequenciaitem_itc').AsString );
    end;
  end;
  AtualizaProcedimento;
  BotoesProcedimentoOnOff(true);
  EscreveLog(btn_salvarProc.name);
end;

procedure TFrm_Mov_2028.AtualizaProcedimento ;
var vlI, vlP : double ;
begin
   with fdt_principal4.spc_cons_adm_itemreembolso do begin
    close;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequenciaconta_ctm').AsString := fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString;
    open;
    lbl_tlProc.Caption := 'Total de Itens no Protocolo selecionado  '+IntToStr(RecordCount);
    first;
    vlI := 0 ;
    vlP := 0 ;
    while not eof do
      begin
        vlI := vlI + Fdt_principal4.spc_cons_adm_itemreembolso.fieldbyname('vlinformado_itc').AsFloat;
        vlP := vlP + Fdt_principal4.spc_cons_adm_itemreembolso.fieldbyname('vlpagar_itc').AsFloat;
        next;
      end;
    edt_vlInformado.text := FormatFloat('###,###,##0.00', vlI);
    edt_vlPagar.text := FormatFloat('###,###,##0.00', vlP);
    edt_diferenca.text := FormatFloat('###,###,##0.00', vlI-vlP);
    end;
end;

procedure TFrm_Mov_2028.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2028.edt_cod_itemservicoButtonClick(Sender: TObject);
begin
  inherited;
  FTitPesquisa  := 'Localizar Itens de Servi�os' ;
//  FPesquisaSQL := 'select distinct i.cod_padrao, i.cod_itemservico, nome_its  from tbl_itemhonorario it,tbl_itemservico i'+
  FPesquisaSQL := 'select i.cod_padrao, i.cod_itemservico, nome_its  from tbl_itemhonorario it,tbl_itemservico i '+
                  'where i.cod_itemservico = it.cod_itemservico and cod_conveniado = 9997 ' +
                  'group by i.cod_padrao, i.cod_itemservico, nome_its';

  FPesquisaTit := 'Cod. Padrao, Cod. ItemServi�o, Descri��o do Item de Servi�o/Procedimento';
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('',8,length('')), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true));
end;

procedure TFrm_Mov_2028.edt_descricao_itcEnter(Sender: TObject);
begin
  inherited;
  if edt_cod_itemservico.Text = '' then
    edt_descricao_itc.Text := ''
  else begin
    DB_OpenSQL('select cod_itemservico,nome_its from tbl_itemservico where cod_padrao = '+edt_cod_itemservico.Text);
    edt_descricao_itc.text := tab.fieldbyname('nome_its').AsString;
    CodIts := tab.fieldbyname('cod_itemservico').AsInteger;
  end;  
end;

procedure TFrm_Mov_2028.edt_cod_espmedambButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_espmedamb',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_espmedamb',8,length('edt_cod_espmedamb')),
  'cod_espmedamb, nome_esp', 'Cod. Esp., Especialidade',
  'Localizar Especialidades', '', true));
end;

procedure TFrm_Mov_2028.btn_processarcontaClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_ProcessarConta := TFrm_Mov_ProcessarConta.Create(Self);
  Frm_Mov_ProcessarConta.CConveniado := '9997';
  Frm_Mov_ProcessarConta.ShowModal;
  Frm_Mov_ProcessarConta.Release;
  Show;
end;

procedure TFrm_Mov_2028.btn_autorizacaoClick(Sender: TObject);
begin
  inherited;
// Quando preenchido requerimento de reembolso
  edt_cod_Requerimento.Text:= dbg_requerimento.DataSource.DataSet.FieldByName('cod_Requerimento').AsString;
  edt_dtprotocolo_rem.text := dbg_requerimento.DataSource.DataSet.FieldByName('dtprotocolo_rem').AsString;

  if fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('vlpagar_itc').AsFloat >
  fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('vlinformado_itc').AsFloat then
  begin
    Dlg_Alerta('O Valor a Pagar � maior que o Valor Informado!',self);
    Panel3.SetFocus;
    Exit;
  end;
// Verifica se j� tem o Requerimento do Reembolso
//  edt_cod_RequerimentoExit(Self);

  Hide;
  Frm_Mov_2025 := TFrm_Mov_2025.Create(Self);
  Frm_Mov_2025.FInscricao := edt_inscricao_ben.Text;
  if fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString <> '' then
   Frm_Mov_2025.CodRequerimento := fdt_principal4.spc_cons_adm_reembolso.fieldbyname('cod_Requerimento').AsString ;
  Frm_Mov_2025.DtProtocolo := fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtprotocolo_rem').AsString ;
  Frm_Mov_2025.CodBeneficiario:= edt_cod_beneficiario.Text;
  Frm_Mov_2025.CodFavorecido:= '0';
  Frm_Mov_2025.ShowModal;
  Frm_Mov_2025.CodFavorecido := '';
  Frm_Mov_2025.Release;
  Show;
  btn_atualizarClick(Self);
end;

procedure TFrm_Mov_2028.btn_efetuarProcesCriticaClick(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = 9997 '+
  'and dtreferencia_cta = '''+FormatDateTime('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime)+''' and sequencia_cta = 1');
  if Tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('N�o � poss�vel Cr�ticar porque a Conta ja foi Repassada!', self);
    Exit;
  end;
  Animate.Visible := true ;
  Animate.Active := true ;
  Med_CriticaConta('9997', ''''+FormatDateTime('mm/dd/yyyy',fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime)+'''', '1', '9', self);
  Animate.Visible := false ;
  Animate.Active := false ;
  btn_atualizarClick(self);
  fdt_principal4.spc_cons_adm_reembolso.Locate('sequenciaconta_ctm', Seq, [loCaseInsensitive]);
  AtualizaProcedimento;
  dbg_procedimento.SetFocus;
  dbg_requerimento.SetFocus;
end;

procedure TFrm_Mov_2028.edt_dtentrada_rbsExit(Sender: TObject);
begin
  inherited;
  edt_dtsaida_rbs.text := edt_dtentrada_rbs.text;
end;

procedure TFrm_Mov_2028.edt_cod_prestadorsmButtonClick(Sender: TObject);
begin
  inherited;
    FTitPesquisa  := 'Localizar Prestadores' ;
  FPesquisaSQL := 'select p.cod_prestadorsm, p.nome_psm, p.cod_crm  from tbl_prestadorsm p where cod_prestadorsm >= ''0''';
  FPesquisaTit := 'CPF / CNPJ, Prestador, CRM';
  Obj_SetFormObjValueByName(Self, 'edt_cod_prestadorsm',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('',8,length('')), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true));
end;

procedure TFrm_Mov_2028.edt_cod_prestadorsmExit(Sender: TObject);
begin
  inherited;
  if Length(edt_cod_prestadorsm.text) < 12 then begin
    if not Test_CPF(edt_cod_prestadorsm.text) then begin
    Dlg_Alerta('CPF Inv�lido !', self)
    end;
  end else
    if not Teste_CNPJ(edt_cod_prestadorsm.text) then
      Dlg_Alerta('CNPJ Inv�lido !', self);
  DB_OpenSQL('select cod_prestadorsm, nome_psm, cod_crm, cod_uf from tbl_prestadorsm where cod_prestadorsm = '''+edt_cod_prestadorsm.Text+'''');
  if edt_cod_prestadorsm.Text = tab.FieldByName('cod_prestadorsm').AsString then
  begin
    edt_nome_psm.Text :=  tab.FieldByName('nome_psm').AsString;
    edt_cod_crm.Text :=  tab.FieldByName('cod_crm').AsString;
    Obj_SetFormObjValueByName(self,'cbx_cod_uf',tab.FieldByName('cod_uf').AsString);
  end;
end;

procedure TFrm_Mov_2028.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_3063 := TFrm_Rel_3063.Create(Self);
  if fdt_principal4.spc_cons_adm_reembolso.fieldbyName('sequenciaconta_ctm').AsString <> '' then
    Frm_Rel_3063.CodRequerimento := fdt_principal4.spc_cons_adm_reembolso.fieldbyname('cod_Requerimento').AsString ;
  Frm_Rel_3063.DtProtocolo := fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtprotocolo_rem').AsString ;
  Frm_Rel_3063.FInscricao := edt_inscricao_ben.Text;
  Frm_Rel_3063.wCod_Beneficiario := edt_cod_beneficiario.Text;
  Frm_Rel_3063.ShowModal;
  Frm_Rel_3063.Release;
  Show
end;

procedure TFrm_Mov_2028.btn_atualizaVlInfClick(Sender: TObject);
begin
  inherited;
  if fdt_principal4.spc_cons_adm_itemreembolso.RecordCount > 0 then
  begin
    if FStatus2 = FST_Alteracao then
    begin
      if DB_ExecSQL('update tbl_itemconta set vlinformado_itc = '+DB_FormatDataSQL(edt_vlinformado_irs.Text, ftFloat)+
      ' where cod_conveniado = 9997 and dtreferencia_cta = '''+FormatDateTime('mm/dd/yyyy',Fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtreferencia_cta').AsDateTime)+ ''' and '+
      'sequencia_cta = 1 and sequenciaconta_ctm = '+fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('sequenciaconta_ctm').AsString+
      ' and sequenciaitem_itc = '+fdt_principal4.spc_cons_adm_itemreembolso.fieldbyname('sequenciaitem_itc').AsString) then
      begin
        AtualizaProcedimento;
        Dlg_Ok('Valor Informado Atualizado com Sucesso!',self);
        BotoesProcedimentoOnOff(true);
      end
      else begin
        Dlg_Ok('Erro ao Atualizar Valor Informado!',self);
        BotoesProcedimentoOnOff(true);
      end;
    end;
  end;
end;

procedure TFrm_Mov_2028.edt_requerimentoChange(Sender: TObject);
begin
  inherited;
  if not Fdt_principal4.spc_cons_adm_reembolso.Active then
    exit;
  //if edt_sequenciaconta_ctm.Text <> fdt_principal4.spc_cons_adm_itemreembolso.FieldByName('sequenciaconta_ctm').AsString then
  AtualizaProcedimento;
  if Fdt_principal4.spc_cons_adm_itemreembolso.RecordCount > 0 then
  btn_alterarProc.Enabled := true
  else
  btn_alterarProc.Enabled := false ;
      if Fdt_principal4.spc_cons_adm_itemreembolso.RecordCount > 0 then
  btn_removerProc.Enabled := true
  else
  btn_removerProc.Enabled := false ;
  if Fdt_principal4.spc_cons_adm_reembolso.RecordCount > 0 then
  btn_adicionarProc.Enabled := true
  else
  btn_adicionarProc.Enabled := false ;
  if Fdt_principal4.spc_cons_adm_reembolso.RecordCount > 0 then
  btn_removerRec.Enabled := true
  else
  btn_removerRec.Enabled := false ;
  if Fdt_principal4.spc_cons_adm_reembolso.RecordCount > 0 then
  btn_alterarReq.Enabled := true
  else
  btn_alterarReq.Enabled := false ;
  btn_autorizacao.Enabled:= True;
  btn_agendarpagto.Enabled:= True;
  if dbg_requerimento.DataSource.DataSet.FieldByName('status_ctm').Value = 9 then
     begin
     btn_autorizacao.Enabled:= False;
     btn_agendarpagto.Enabled:= False;
     end;
{  if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('cod_status').AsInteger = 2) or
     (fdt_principal4.spc_cons_adm_reembolso.FieldByName('dtprotocolo_rem').Value < StrToDate('01/11/2014')) then}
  if fdt_principal4.spc_cons_adm_reembolso.FieldByName('cod_status').AsInteger = 2 then
     begin
     //btn_autorizacao.Enabled:= False;
     btn_agendarpagto.Enabled:= False;
     end;
end;

procedure TFrm_Mov_2028.edt_cod_RequerimentoExit(Sender: TObject);
begin
  inherited;
// A Chave da � N�mero Protocolo + Data
  if edt_cod_Requerimento.Text = '' then
     Exit;
  edt_cod_benFavorecido.Text := '';
  edt_cod_protocoloReembolso.Text := '0';
  if DB_OpenSQL('select pr.cod_protocoloReembolso, pr.numProtocolo, pr.anoProtocolo, pr.cod_benPaciente, pr.cod_benFavorecido, '+
                'pr.cod_contacorrente, pr.dtprotocolo, b.inscricao_ben, pr.cod_status, pr.inscricao_ben from tbl_protocoloReembolso pr ' +
                'left join tbl_beneficiario b on b.cod_beneficiario = pr.cod_benPaciente ' +
                'where numProtocolo = ' + edt_cod_Requerimento.Text + ' and dtprotocolo = ''' + FormatDateTime('mm/dd/yyyy', edt_dtprotocolo_rem.Date) + '''') > 0 then
     begin
     edt_cod_benFavorecido.Text := Tab.FieldByName('cod_benFavorecido').Text;
     edt_cod_protocoloReembolso.Text := Tab.FieldByName('numProtocolo').Text;
     if Tab.FieldByName('inscricao_ben').Text <> edt_inscricao_ben.Text then
        begin
        Dlg_Alerta('Inscri��o difere da ' + Tab.FieldByName('inscricao_ben').Text + ' j� registrada nesse requerimento, nessa data!', Self);
        edt_cod_Requerimento.Text:= '';
        edt_cod_Requerimento.SetFocus;
        Exit;
        end;
{     if Copy(Tab.FieldByName('dtprotocolo').Text,1,10) <> edt_dtprotocolo_rem.Text then
        begin
        Dlg_Alerta('Data difere da ' + Copy(Tab.FieldByName('dtprotocolo').Text,1,10) + ' j� registrada nesse requerimento!', Self);
        edt_dtprotocolo_rem.Text:= '';
        edt_dtprotocolo_rem.SetFocus;
        Exit;
        end;}
     if Tab.FieldByName('cod_status').Value = 2 then
        begin
        Dlg_Alerta('J� existe um reembolso agendado com esse n�mero e data!', self);
        Exit;
        end;
     if edt_nome_psm.Text = '' then
        begin
        Panel17.SetFocus;
        edt_cod_prestadorsm.SetFocus;
        end;
     end;
end;

procedure TFrm_Mov_2028.btn_agendarpagtoClick(Sender: TObject);
const
  msgErro = 'Aten��o, Erro ao tentar salvar este registro, o aplicativo ser� fechado e este registro ser� perdido';
begin
  inherited;
  edt_dtprotocolo_rem.Text:= fdt_principal4.spc_cons_adm_reembolso.fieldbyname('dtprotocolo_rem').AsString ;
  edt_cod_Requerimento.Text:= fdt_principal4.spc_cons_adm_reembolso.fieldbyname('cod_requerimento').AsString ;

// Verifica se n�o h� outro reembolso mesmo n�mero e data
  if DB_OpenSQL('select cod_status from tbl_protocoloReembolso where numProtocolo = ' + edt_cod_Requerimento.Text +
                ' and dtprotocolo = ''' + Data_Format('mm/dd/yyyy', edt_dtprotocolo_rem.Date)+'''') = 0 then
     begin
     Dlg_Alerta('N�o existe protocolo com esse n�mero e data!', self);
     Exit;
     end
  else
     if Tab.FieldByName('cod_status').Value = 2 then
        begin
        Dlg_Alerta('J� existe um reembolso agendado com esse n�mero e data!', self);
        Exit;
        end;
  DB_OpenSQL('select sum(vlpagar_itc) as vlpagar_itc from dbo.tbl_contamedica c '+
             'inner join tbl_itemconta i on c.cod_conveniado = i.cod_conveniado and c.dtreferencia_cta = i.dtreferencia_cta '+
             'and c.sequencia_cta = i.sequencia_cta and c.sequenciaconta_ctm = i.sequenciaconta_ctm '+
             'left join tbl_reembolsomedico r on c.cod_conveniado = r.cod_conveniado and c.dtreferencia_cta = r.dtreferencia_cta '+
             'and c.sequencia_cta = r.sequencia_cta and c.sequenciaconta_ctm = r.sequenciaconta_ctm '+
             'inner join tbl_beneficiario b on c.cod_beneficiario = b.cod_beneficiario '+
             'left join tbl_prestadorsm p on r.cod_PrestadorSM = p.cod_prestadorsm '+
             'where c.cod_conveniado = 9997 and r.cod_Requerimento = ' + edt_cod_Requerimento.Text +
             ' and dtprotocolo_rem = ''' + Data_Format('mm/dd/yyyy', edt_dtprotocolo_rem.Date) +
             ''' group by r.cod_Requerimento, r.dtprotocolo_rem ');
  Fvlpagar_itc := Tab.fieldbyname('vlpagar_itc').Value;
  with Fdt_principal.spc_cons_adm_beneficiario001 do
    begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
    FMatricula := FieldByName('matriculadebito_seg').AsString;
    FDigito := FieldByName('digitomatdeb_seg').AsString;
    end;

// Atualiza o m�s e ano de refer�ncia
//  DB_OpenSQL('select max(dtenvio_flh) from tbl_lotefolhadescontos where cod_empresafolha = ' + FEmpresafolha);
//  FMesReferencia:= IntToStr(Data_Month(Data_Soma1mes(Tab.Fields[0].AsDateTime)));
//  FAnoReferencia:= IntToStr(Data_Year(Data_Soma1mes(Tab.Fields[0].AsDateTime)));

// Comando pega 1o.dia do m�s
  DB_OpenSQL('select DateAdd(mm, DateDiff(mm,0,GetDate()), 0)');
  FDataReferencia:= Tab.Fields[0].Value;

  DB_ExecSQL('insert into tbl_descontofolha ('+
  'cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
  'vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
  'cod_sitdesconto, dtsitdesconto_flh, obs_flh, descricao_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
  edt_cod_beneficiario.text+', 0, 0, '+FMatricula+', '+FDigito+', '+ STR_SubstChar(Fvlpagar_itc,',','.') +', 0, 616, '+
  {FEmpresafolha + ', '''+ FMesReferencia + '/01/'+FAnoReferencia+''', '''+edt_dtprotocolo_rem.Text+ ''', 5, getdate(), '+
  '''Protocolo ' + edt_cod_Requerimento.Text +''',''' + edt_cod_Requerimento.Text + ''', '+Str_IntToStr(FCod_Usuario)+', '''+
  FormatDateTime('mm/dd/yyyy', date)+''', '''+FMesReferencia + '/01/'+FAnoReferencia+''')');}
  FEmpresafolha + ', ''' + FormatDateTime('mm/dd/yyyy', FDataReferencia) + ''', '''+ FormatDateTime('mm/dd/yyyy', edt_dtprotocolo_rem.Date)+ ''', 5, getdate(), '+
  '''Protocolo ' + edt_cod_Requerimento.Text +''',''' + edt_cod_Requerimento.Text + ''', '+Str_IntToStr(FCod_Usuario)+', '''+
  FormatDateTime('mm/dd/yyyy', date)+''', ''' + FormatDateTime('mm/dd/yyyy', FDataReferencia) + ''')');

// Atualizo a tbl_protocoloReembolso qdo agendar o dep�sito
  DB_ExecSQL('update tbl_protocoloReembolso set cod_status = 2 where numProtocolo = ' + edt_cod_Requerimento.Text);
  Dlg_Ok('Sucesso, reembolso lan�ado em ' + DateToStr(FDataReferencia) + '.', Self);
  btn_atualizarClick(Self);
  dbg_procedimento.SetFocus;
  dbg_requerimento.SetFocus;
end;

procedure TFrm_Mov_2028.dbg_requerimentoEnter(Sender: TObject);
begin
  inherited;
  edt_requerimento.Text:= '999999';
end;

procedure TFrm_Mov_2028.dbg_requerimentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
// Verde, quando j� tem autoriza��o de pagamento
// Azul, quando j� foi agendado dep�sito
  if (fdt_principal4.spc_cons_adm_reembolso.FieldByName('cod_status').Value = Null) then
     (Sender as TDBGrid).Canvas.Font.Color:= clBlack
  else
     if fdt_principal4.spc_cons_adm_reembolso.FieldByName('status_ctm').Value <> 9 then
        case fdt_principal4.spc_cons_adm_reembolso.FieldByName('cod_status').AsInteger of
        1 : (Sender as TDBGrid).Canvas.Font.Color:= clGreen ;
        2 : (Sender as TDBGrid).Canvas.Font.Color:= clBlue ;
        end;
//  if fdt_principal4.spc_cons_adm_reembolso.FieldByName('dtprotocolo_rem').Value < StrToDate('01/11/2014') then
//     (Sender as TDBGrid).Canvas.Font.Color:= clBlue;
  dbg_requerimento.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

end.



