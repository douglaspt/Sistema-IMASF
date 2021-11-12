unit Mov_2075;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, FR_Ctrls;

type
  TFrm_Mov_2075 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    PDJButton10: TPDJButton;
    pnl_jurosISS: TPanel;
    btn_registrarconta: TPDJButton;
    Panel10: TPanel;
    edt_protocolo_cta: TDCEdit;
    edt_nf_cta: TDCEdit;
    Panel11: TPanel;
    cbx_cnpj_emc: TDCComboBox;
    pnl_camposISS: TPanel;
    edt_dtemissaoNF_cta: TDCDateEdit;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    btn_imprimir: TPDJButton;
    Panel13: TPanel;
    edt_vlISS_cta: TDCEdit;
    edt_vlnf_cta: TDCEdit;
    pnl_alerta: TPanel;
    Panel12: TPanel;
    chb_Iss: TCheckBox;
    edt_dtrecebimentoNF_cta: TDCDateEdit;
    edt_vljurosMulta_cta: TDCEdit;
    edt_dtrecolhimento_cta: TDCDateEdit;
    btn_repassarConta: TPDJButton;
    pgc_pagamento: TPageControl;
    TabSheet1: TTabSheet;
    tbs_empenho: TTabSheet;
    Panel8: TPanel;
    rdb_vlrepassar: TRadioButton;
    rdb_vlapresentado: TRadioButton;
    Panel5: TPanel;
    btn_alterarvencimento: TfrSpeedButton;
    edt_dtvencimento_cta: TDCDateEdit;
    chb_ISSrequerido: TCheckBox;
    Panel6: TPanel;
    edt_vlrepassar: TDCEdit;
    edt_vlapresentado: TDCEdit;
    pnl_ISSrecebido: TPanel;
    chb_ISSrecebido: TCheckBox;
    Panel1: TPanel;
    btn_calcular: TSpeedButton;
    edt_vlrecuperado: TDCEdit;
    edt_vlpagar: TDCEdit;
    ckb_valorzerado: TCheckBox;
    Label4: TLabel;
    edt_vlTotalRepassado: TDCEdit;
    lsv_empenho: TListView;
    pnl_alertaEmpenho: TPanel;
    Panel9: TPanel;
    mem_obs_cta: TMemo;
    Label2: TLabel;
    btn_statusconta: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_repassarContaClick(Sender: TObject);
    procedure btn_registrarcontaClick(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure edt_vlnf_ctaExit(Sender: TObject);
    procedure cbx_cnpj_emcChange(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure edt_sequencia_conExit(Sender: TObject);
    procedure rdb_vlapresentadoClick(Sender: TObject);
    procedure rdb_vlrepassarClick(Sender: TObject);
    procedure chb_ISSrecebidoClick(Sender: TObject);
    procedure chb_parcelamentoClick(Sender: TObject);
    procedure btn_alterarvencimentoClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure tbs_empenhoShow(Sender: TObject);
    procedure btn_statuscontaClick(Sender: TObject);
  private
    { Private declarations }
    Fvlinformado, Fvlpagar, PorcentagemRecuperado : Double;
    dtrefe, conven : string ;
    SaldoNegativo : boolean;
    procedure CalculaTotalPagar;
    procedure buscaEmpenho(cnpj : String; tipo : integer);
    function CriticaParametros : Boolean ;
    function CriticaRepasse(criticar : boolean): boolean ;
  public
    { Public declarations }
    FCod_Conveniado, FMes, FAno, FSeq, FcodEmpenho, FcodEmpenho2 : String ;
  end;

var
  Frm_Mov_2075: TFrm_Mov_2075;

implementation
uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str, dtm_principal,
Fun_Acesso, Rel_ContaRepassada, Bas_Impressao, Fun_Data, dtm_principal4,
dtm_principal3, Rel_StatusConta;

{$R *.DFM}

procedure TFrm_Mov_2075.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Repasse de Contas à Contabilidade' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Mov_2075.CalculaTotalPagar;
var
 vlIss : string;
 FvlPagar : double;
begin
  if (cbx_cod_mes.text = '') or (edt_ano.text = '') or (edt_sequencia_con.text = '') then
    exit ;
  FvlPagar := 0;
  PorcentagemRecuperado := 0;  
  with Fdt_principal.spc_cons_med_totalpagarconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
    edt_vlrepassar.text := FormatFloat('###,###,##0.00',Fields[0].AsFloat);
    edt_vlapresentado.Text := FormatFloat('###,###,##0.00',Fields[1].AsFloat);
    if (edt_vlrecuperado.Text = '') or (edt_vlrecuperado.Text = '0,00') then
      edt_vlrecuperado.Text := FormatFloat('###,###,##0.00',Fields[2].AsFloat);
    if edt_vlISS_cta.Text = '' then
      vlIss := '0'
    else
      vlIss := edt_vlISS_cta.Text;
    if edt_vljurosMulta_cta.Text = '' then
      edt_vljurosMulta_cta.Text := '0';
    if rdb_vlrepassar.Checked then
      FvlPagar := (Fields[0].AsFloat  - StrToFloat(STR_RemoveChar(edt_vlrecuperado.Text,'.')))
    else
      FvlPagar := (Fields[1].AsFloat  - StrToFloat(STR_RemoveChar(edt_vlrecuperado.Text,'.')));
    if (chb_Iss.Checked) then
      FvlPagar := ((FvlPagar - StrToFloat(STR_RemoveChar(vlIss,'.'))) - StrToFloat(STR_RemoveChar(edt_vljurosMulta_cta.Text,'.')));
    edt_vlpagar.Text := FormatFloat('###,###,##0.00',(FvlPagar));

    PorcentagemRecuperado := (StrToFloat(STR_RemoveChar(edt_vlrecuperado.Text,'.')) / (FvlPagar + StrToFloat(STR_RemoveChar(edt_vlrecuperado.Text,'.'))));
  end;
end;


procedure TFrm_Mov_2075.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_2075.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  if FCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := FCod_Conveniado;
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FMes);
    edt_ano.Text := Fano;
    edt_sequencia_con.Text := Fseq;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Mov_2075.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then begin
    Obj_LoadCombo(Self, 'cbx_cnpj_emc', 'cnpj_cne', 'sequencia_cne', 'tbl_conveniadoendereco where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
    DB_OpenSQL('select nome_con, saldoempenho2_con from tbl_conveniado where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
    edt_razao_con.text := Tab.fieldByName('nome_con').AsString;
    pnl_alerta.Visible := false;
  //  Obj_SetFormObjValueByName(self,cbx_cnpj_emc.Name,1);
    cbx_cnpj_emc.ItemIndex := 0;
    buscaEmpenho(cbx_cnpj_emc.text,1);
    CalculaTotalPagar;
    edt_sequencia_conExit(self);
  end;
end;

procedure TFrm_Mov_2075.buscaEmpenho(cnpj : String; tipo : integer);
var
 vlEmpenho : double;
 Fpesquisa : string;
begin
  //tipo: 1 Empenho principal - 2 Empenho secundario
  if cnpj <> '' then
  begin
    if  cbx_cnpj_emc.Text <> '' then
    begin
      DB_OpenSQL('select recolheISS_cne from tbl_conveniadoendereco'+
      ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
      ' and sequencia_cne = '+cbx_cnpj_emc.valueItem);
      chb_Iss.Checked := Tab.FieldByName('recolheISS_cne').AsBoolean;
      pnl_camposISS.Visible := Tab.FieldByName('recolheISS_cne').AsBoolean;
    end;
  end;
end;

function TFrm_Mov_2075.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;

function TFrm_Mov_2075.CriticaRepasse(criticar : boolean) : boolean ;
begin
  result := false ;
  if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then
  begin
    Dlg_Alerta('A Conta Não Existe!', self);
    exit;
  end;
  if criticar then
    if Tab.FieldByName('dtcritica_cta').AsString = '' then begin
      Dlg_Alerta('A Conta Não foi Criticada !', self);
      exit;
    end;
  if Tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('A Conta ja foi Repassada !', self);
    exit;
  end;
  if not criticar then
    if Tab.FieldByName('protocolo_cta').AsString <> '' then begin
      Dlg_Alerta('A Conta já foi Registrada !', self);
      exit;
    end;
  if criticar then
    if Tab.FieldByName('protocolo_cta').AsString = '' then begin
      Dlg_Alerta('A Conta Não foi Registrada !', self);
      exit;
    end;

//      if DB_OpenSQL('select * from tbl_contamedica where cod_conveniado = '+conven+
//      ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
//      ' and status_ctm > 2') > 0 then begqin
//        Dlg_Alerta('Essa conta possui itens não passíveis de Repasse !', self);
//        exit;
//      end
    //end;
  if criticar then
    if DB_OpenSQL('select * from tbl_contamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+
    ' and status_ctm = 9') > 0 then
    begin
      Dlg_Alerta('Não é possível Repassar a Conta pois há itens não criticados', self);
      exit;
    end;
  if criticar then
    if DB_OpenSQL('select * from tbl_pendenciaContaMed where cod_statuspendencia = 0 and cod_conveniado = '+
    conven+' and dtreferencia_ctm = '+dtrefe) > 0 then
    begin
      Dlg_Alerta('Não é possível Repassar a Conta pois há Pendências em Aberto', self);
      exit;
    end;

  if DB_OpenSQL('select cod_sitconveniado from tbl_conveniado where cod_conveniado = '+
  conven+' and cod_sitconveniado = 3') > 0 then begin
    Dlg_Alerta('Não é possível Registrar/Repassar a Conta para Conveniados Cancelados!', self);
    exit;
  end;
  if criticar then
    if DB_OpenSQL('select * from tbl_pendenciaContaMed where cod_statuspendencia = 2 and cod_conveniado = '+
    conven+' and dtreferencia_ctm = '+dtrefe) > 0 then
    begin
      if not(Dlg_YesNo('ATENÇÃO ! Existem Pendências em Andamento ! Tem certeza que deseja Repassar a Conta ?', self)) then
        exit;
    end;
  result := true ;
end;


procedure TFrm_Mov_2075.btn_repassarContaClick(Sender: TObject);
var
  Str_CampoValor, STR_ValorPagar  : String;
  Executado : boolean;
  i, TipoPagto : integer;
begin
  inherited;
    if CriticaParametros then
      Exit;
    if not CriticaRepasse(true) then
      Exit ;
    Executado := true;  
    if cbx_cnpj_emc.Text = '' then
    begin
      Dlg_Alerta('É necessário cadastrar um CNPJ no Cadastro de Conveniados na aba Filiais!',self);
      Exit;
    end;
    if (chb_ISSrequerido.Checked) and (chb_ISSrecebido.Checked = false) then
    begin
      Dlg_Alerta('É necessário apresentar Comprovante de Pagamento de ISS pago pelo Conveniado!',self);
      Exit;
    end;
    if chb_ISSrecebido.Checked then
    begin
      if (not BAS_ValidarCampo(edt_vljurosMulta_cta.name, 'O Valor do Juros/Multa deve ser Preenchido!', VLD_Preenchido )) or
      (not BAS_ValidarCampo(edt_dtrecolhimento_cta.name, 'A Data do Recolhimento deve ser Preenchida !', VLD_DataPreenchida )) then
        Exit;
    end;
    if not BAS_ValidarCampo(edt_dtvencimento_cta.name, 'A Data de Vencimento deve ser Preenchida!', VLD_DataPreenchida ) then
      Exit;
    if edt_dtvencimento_cta.Date < Date then
    begin
      if not Dlg_YesNo('A Data de Vencimento não pode ser menor do que a Data Atual, tem certeza que deseja continuar?',self) then
        Exit;
    end;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if not BAS_ValidarCampo(edt_vlpagar.name, 'O Valor a Pagar deve ser Preenchido!', VLD_Preenchido) then begin
      Exit;
    end;
  {  if DB_OpenSQL('select cod_classificacaoPlano from tbl_contamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text+
    ' and dtentrada_ctm < ''01/01/2019 00:00:00'' and cod_classificacaoPlano in (111,112,113,114,115,121,122,123,124,125,131,132,133,134,135)') > 0 then
    begin
      Dlg_Alerta('Não é possivel repassar a conta, há divergencias entre os planos', self);
      Exit;
    end;
    if DB_OpenSQL('select cod_classificacaoPlano from tbl_contamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text+
    ' and dtentrada_ctm >= ''01/01/2019 00:00:00'' and cod_classificacaoPlano not in (111,112,113,114,115,121,122,123,124,125,131,132,133,134,135)') > 0 then
    begin
      Dlg_Alerta('Não é possivel repassar a conta, há divergencias entre os planos', self);
      Exit;
    end;

    tbs_empenhoShow(self);
    if SaldoNegativo then
    begin
      if not Dlg_YesNo('Atenção! Saldo insuficiente, é necessario cadastrar um novo Empenho. Deseja Continuar?', self) then
        Exit;
    end;
    For i := 0 to (lsv_empenho.Items.Count -1) do
    begin
      if Executado then
        if (lsv_empenho.Items[i].SubItems.Strings[4] <> '') and (lsv_empenho.Items[i].SubItems.Strings[2] <> '0,00') then
          Executado := DB_ExecSQL('insert into tbl_histempenhoConveniado values ('+conven+', '+dtrefe+
          ','+edt_sequencia_con.Text+','+lsv_empenho.Items[i].SubItems.Strings[4]+
          ','+inttostr(FCod_Usuario)+','+STR_SubstChar(STR_RemoveChar(lsv_empenho.Items[i].SubItems.Strings[2],'.'),',','.')+
          ','+DB_FormatDataSQL(Date, ftDate)+')');
      if Executado and (lsv_empenho.Items[i].SubItems.Strings[3] = '0,00') and (lsv_empenho.Items[i].SubItems.Strings[4] <> '') then
        Executado := DB_ExecSQL('update tbl_empenhoConveniado set cod_statusAtivo = 2 where cod_empenhoConveniado = '+lsv_empenho.Items[i].SubItems.Strings[4]);
    end;
    }

    if Executado then
      Executado := DB_ExecSQL('exec spc_repasse_conta '+conven+', '+dtrefe+', '+edt_sequencia_con.text+', '+
      DB_FormatDataSQL(edt_vlrepassar.text,ftFloat)+','+DB_FormatDataSQL(edt_dtvencimento_cta.Text, ftDate)+','+
      DB_FormatDataSQL(edt_vlrecuperado.text,ftFloat)+','+DB_FormatDataSQL(edt_vlpagar.text,ftFloat));
    if Executado then
      if chb_ISSrecebido.Checked then
        Executado := DB_ExecSQL('update tbl_lotecontamedica set ISSRecebido_cta = 1'+
        ', vljurosMulta_cta = '+DB_FormatDataSQL(edt_vljurosMulta_cta.text,ftFloat)+
        ', dtrecolhimento_cta = '+DB_FormatDataSQL(edt_dtrecolhimento_cta.Text, ftDate)+
        ', obs_cta = '''+mem_obs_cta.Lines.Text+
        ''' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
        ' and sequencia_cta = '+edt_sequencia_con.Text);
    //antigo controle de saldo de empenho
    //  DB_ExecSQL('update tbl_conveniado set saldoempenho2_con = saldoempenho2_con - '+DB_FormatDataSQL(edt_vlrepassar.text,ftFloat)+
    //  ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));

    if rdb_vlrepassar.Checked then
      TipoPagto := 1
    else
      TipoPagto := 2;

    Db_openSql('select processo_cpr, anoProcesso_cpr from tbl_conveniadoProcesso'+
    ' where cod_conveniado = '+conven+' and cod_statusAtivo = 1');

    Executado := DB_ExecSQL('update tbl_lotecontamedica set obs_cta = '''+mem_obs_cta.Lines.Text+''', cnpj_cta = '''+cbx_cnpj_emc.Text+
    ''', processo_cta = '+Tab.fieldByName('processo_cpr').AsString+',  anoProcesso_cta = '+
    Tab.fieldByName('anoProcesso_cpr').AsString+',  tipoPagto_cta = '+IntToStr(TipoPagto)+
    ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
    ' and sequencia_cta = '+edt_sequencia_con.Text);
    
    if Executado then
    begin
      Dlg_Ok('Conta Repassada com Sucesso !',self);
      ckb_valorzerado.Checked := false;
      DB_Commit;
      Obj_EmptyEditTag(self,-10);
      Obj_EmptyEditTag(self,5);
      edt_sequencia_conExit(self);
      edt_cod_conveniado.SetFocus;
    end
    else begin
      Dlg_Erro('ATENÇÃO ! Ocorreu algum erro ao tentar Repassar ! Não foi possível Repassar a Conta', self);
      DB_RollBack;
    end;
    EscreveLog(btn_repassarConta.Name);
    
end;

procedure TFrm_Mov_2075.btn_registrarcontaClick(Sender: TObject);
var
 d, s, dtcompetencia : string;
begin
  inherited;
    if CriticaParametros then
      Exit;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if not CriticaRepasse(false) then
      Exit ;
    chb_ISSrequerido.Checked := false;
    chb_ISSrecebido.Checked := false;
    pnl_ISSrecebido.Enabled := false;
    if chb_Iss.Checked then
    begin
      if not BAS_ValidarCampo(edt_dtemissaoNF_cta.name, 'A Data de Emissão da Nota Fiscal deve ser Preenchida!', VLD_DataPreenchida ) or
      not BAS_ValidarCampo(cb2_cod_mes.name, 'O Mês da Competência deve ser Preenchido!', VLD_Preenchido ) or
      not BAS_ValidarCampo(edt_ano2.name, 'O Ano da Competência deve ser Preenchido!', VLD_Preenchido ) then
        Exit;
      d := '13/'+cb2_cod_mes.ValueItem+'/'+edt_ano2.Text;
      s := '01/'+cb2_cod_mes.ValueItem+'/'+edt_ano2.Text;
      if StrToDate(s) > Data_BOM(Date) then
      begin
        Dlg_Alerta('O Mês/Ano de Competência não pode ser maior que o Mês/Ano Atual!',self);
        Exit;
      end;
      if (Date) >= Data_Soma1mes(StrToDate(d)) then
      begin
        Dlg_Alerta('Impossível recolher ISS no prazo - Solicite apresentação de recolhimento pelo Conveniado para a liberação do Pagamento!',self);
        chb_ISSrequerido.Checked := true;
        pnl_ISSrecebido.Enabled := true;
      end;
    end
    else
    begin
      edt_dtemissaoNF_cta.Text := '';
     // edt_dtrecebimentoNF_cta.Text := '';
      cb2_cod_mes.ItemIndex := -1;
      edt_ano2.Text := '';
    end;
    if not BAS_ValidarCampo(edt_protocolo_cta.name, 'O Protocolo deve ser Preenchido!', VLD_Preenchido ) or
    not BAS_ValidarCampo(edt_dtrecebimentoNF_cta.name, 'A Data do Protocolo deve ser Preenchido!', VLD_DataPreenchida ) or
    not BAS_ValidarCampo(edt_nf_cta.name, 'O Numero da Nota Fiscal deve ser Preenchido!', VLD_Preenchido ) or
    not BAS_ValidarCampo(edt_vlnf_cta.name, 'O Valor da Nota Fiscal deve ser Preenchido!', VLD_Preenchido ) or
    not BAS_ValidarCampo(edt_vlISS_cta.name, 'O Valor do ISS deve ser Preenchido!', VLD_Preenchido ) then
      Exit;
    if cb2_cod_mes.Text = '' then
      dtcompetencia := 'null'
    else
      dtcompetencia :=  ''''+cb2_cod_mes.valueItem+'/01/'+edt_ano2.Text+'''';
    if DB_ExecSQL('update tbl_lotecontamedica set protocolo_cta = '+edt_protocolo_cta.Text+
    ', nf_cta = '+DB_FormatDataSQL(edt_nf_cta.Text, ftString)+
    ', vlnf_cta = '+DB_FormatDataSQL(edt_vlnf_cta.Text, ftFloat)+
    ', vlISS_cta = '+DB_FormatDataSQL(edt_vlISS_cta.Text, ftFloat)+
    ', dtemissaoNF_cta = '+DB_FormatDataSQL(edt_dtemissaoNF_cta.text,ftDate)+
    ', dtrecebimentoNF_cta = '+DB_FormatDataSQL(edt_dtrecebimentoNF_cta.text,ftDate)+
    ', dtenvioNF_cta = getdate()'+
    ', dtcompetencia_cta = '+dtcompetencia+
    ', ISSrequerido_cta = '+DB_FormatDataSQL(chb_ISSrequerido.Checked, ftBoolean)+
    ', ISSRecebido_cta = '+DB_FormatDataSQL(chb_ISSrecebido.Checked, ftBoolean)+
    ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text) then
    begin
      Dlg_Ok('Conta Registrada com Sucesso !',self);
      edt_sequencia_conExit(self);
      CalculaTotalPagar;
    end
    else
      Dlg_Alerta('Não foi possivel Registrar a Conta!',self);
    EscreveLog(btn_registrarconta.Name);
end;

procedure TFrm_Mov_2075.btn_calcularClick(Sender: TObject);
begin
  inherited;
  CalculaTotalPagar;
end;

procedure TFrm_Mov_2075.edt_vlnf_ctaExit(Sender: TObject);
begin
  inherited;
  if edt_vlnf_cta.Text <> '' then
  begin
    try
      edt_vlnf_cta.Text := FormatFloat('###,###,##0.00', StrToFloat(STR_RemoveChar(edt_vlnf_cta.Text,'.')));
    except
     edt_vlnf_cta.Text := '0';
     edt_vlnf_cta.SetFocus;
    end;
  end;
end;

procedure TFrm_Mov_2075.cbx_cnpj_emcChange(Sender: TObject);
begin
  inherited;
  if (edt_cod_conveniado.Text <> '') and (cbx_cnpj_emc.text <> '') then
  begin
    buscaEmpenho(cbx_cnpj_emc.Text,1);
    CalculaTotalPagar;
  end;
end;

procedure TFrm_Mov_2075.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_loteconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem +'/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
  end;
  if  Fdt_principal.spc_cons_med_loteconta.FieldByName('dtemissaoNF_cta').AsString = '' then
  begin
    Dlg_Alerta('Atenção! Existem campos não preenchidos necessários para impressão da Guia.',self);
    Exit;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_loteconta;

// Acerto Robson (só para adequação da sp com outras telas)
{  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 3');
  Frm_Bas_Impressao.FCampo1 := Tab.FieldByName('Chefe').AsString;
  Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('nome_sti').AsString;}
// Antes Douglas
  {DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel');
  while not Tab.Eof do
    begin
    if Tab.FieldByName('cod_setorimasf').Value = 3 then
    begin
    Frm_Bas_Impressao.FCampo1 := Tab.FieldByName('Chefe').AsString;
    Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('nome_sti').AsString;
    end;
    Tab.Next;
  end;}
  Frm_Bas_Impressao.FCampo1 := FNome_Usu;
  Frm_Bas_Impressao.FCampo2 := 'Serviço de Revisão de Contas';
//  Frm_Bas_Impressao.FCampo3 := edt_numEmpenho_emc.Text+'/'+edt_anoEmpenho_emc.Text;
  Frm_Bas_Impressao.showReport(4205);
  Fdt_principal.spc_cons_med_loteconta.close;
end;

procedure TFrm_Mov_2075.edt_sequencia_conExit(Sender: TObject);
begin
  inherited;
  if (edt_cod_conveniado.Text <> '') and (cbx_cod_mes.text <> '')
  and (edt_ano.text <> '') and (edt_sequencia_con.text <> '') then
  begin
    Obj_EmptyEditTag(self,6);
    pnl_ISSrecebido.Enabled := false;
    BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
    cb2_cod_mes.ItemIndex := -1;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    If DB_OpenSQL('select dtrepasse_cta, dtvencimento_cta, vlapresentado_cta, protocolo_cta, nf_cta, vlnf_cta, dtemissaoNF_cta,'+
    ' dtrecebimentoNF_cta, dtenvioNF_cta, dtcompetencia_cta, vlISS_cta, ISSrequerido_cta, ISSrecebido_cta,'+
    ' vlrepasse_cta, (((vlpago_cta + isnull(vlpago2_cta,0) + vlrecuperado_cta) + isnull(vlISS_cta,0)) + isnull(vljurosMulta_cta,0))  as vltotal,'+
    ' vljurosMulta_cta, dtrecolhimento_cta, dtvencimento2_cta, isnull(vlpago_cta,0) as vlpago_cta, isnull(vlpago2_cta,0) as vlpago2_cta, obs_cta'+
    ' from tbl_lotecontamedica where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
    ' and sequencia_cta = '+edt_sequencia_con.Text) > 0 then
    begin
      edt_dtemissaoNF_cta.Text := Tab.fieldByName('dtemissaoNF_cta').AsString;
      if Tab.fieldByName('dtrecebimentoNF_cta').AsString = '' then
        edt_dtrecebimentoNF_cta.Date := Date
      else
        edt_dtrecebimentoNF_cta.Text := Tab.fieldByName('dtrecebimentoNF_cta').AsString;
      if Tab.fieldByName('dtcompetencia_cta').AsString <> '' then
      begin
        Obj_SetFormObjValueByName(self, cb2_cod_mes.Name, StrToInt(FormatDateTime('mm',Tab.fieldByName('dtcompetencia_cta').AsDateTime)));
        edt_ano2.Text := FormatDateTime('yyyy',Tab.fieldByName('dtcompetencia_cta').AsDateTime);
      end
      else
      begin
        Obj_SetFormObjValueByName(self, cb2_cod_mes.Name, cbx_cod_mes.ValueItem);
        edt_ano2.Text := edt_ano.Text;
      end;
      edt_protocolo_cta.Text := Tab.fieldByName('protocolo_cta').AsString;
      edt_nf_cta.Text := Tab.fieldByName('nf_cta').AsString;
      if Tab.fieldByName('vlnf_cta').AsString = '' then
        edt_vlnf_cta.Text := FormatFloat('###,###,##0.00', StrToFloat(STR_RemoveChar(Tab.fieldByName('vlapresentado_cta').AsString,'.')))
      else
        edt_vlnf_cta.Text := FormatFloat('###,###,##0.00', StrToFloat(STR_RemoveChar(Tab.fieldByName('vlnf_cta').AsString,'.')));
      if Tab.fieldByName('vlISS_cta').AsString <> '' then
        edt_vlISS_cta.Text := FormatFloat('###,###,##0.00', Tab.fieldByName('vlISS_cta').AsFloat);
      edt_dtvencimento_cta.Text := Tab.fieldByName('dtvencimento_cta').AsString;
      chb_ISSrequerido.Checked := Tab.fieldByName('ISSrequerido_cta').AsBoolean;
      chb_ISSrecebido.Checked :=  Tab.fieldByName('ISSrecebido_cta').AsBoolean;
      edt_vljurosMulta_cta.Text := FormatFloat('###,###,##0.00', Tab.fieldByName('vljurosMulta_cta').AsFloat);
      edt_dtrecolhimento_cta.Text := Tab.fieldByName('dtrecolhimento_cta').AsString;
      mem_obs_cta.Text := Tab.fieldByName('obs_cta').AsString;
      if chb_ISSrequerido.Checked then
        if chb_ISSrecebido.Checked = false then
          pnl_ISSrecebido.Enabled := true;
    end;
    if Tab.fieldByName('dtrepasse_cta').AsString <> '' then
    begin
      pnl_alerta.Caption := 'CONTA REPASSADA';
      pnl_alerta.Color := clred;
      pnl_alerta.Visible := true;
      tbs_empenho.TabVisible := false;
      if Tab.fieldByName('vltotal').AsCurrency = Tab.fieldByName('vlrepasse_cta').AsCurrency then
        rdb_vlrepassar.Checked := true
      else
       rdb_vlapresentado.Checked := true;
    end
    else begin
      pnl_alerta.Visible := false;
      //tbs_empenho.TabVisible := true;
      if Tab.fieldByName('protocolo_cta').AsString <> '' then
      begin
        pnl_alerta.Caption := 'CONTA REGISTRADA';
        pnl_alerta.Color := clLime;
        pnl_alerta.Visible := true;
      end
      else
        pnl_alerta.Visible := false;
    end;
  end;
  CalculaTotalPagar;  
end;

procedure TFrm_Mov_2075.rdb_vlapresentadoClick(Sender: TObject);
begin
  inherited;
  CalculaTotalPagar;  
end;

procedure TFrm_Mov_2075.rdb_vlrepassarClick(Sender: TObject);
begin
  inherited;
  CalculaTotalPagar
end;

procedure TFrm_Mov_2075.chb_ISSrecebidoClick(Sender: TObject);
begin
  inherited;
  if chb_ISSrecebido.Checked then
  begin
    pnl_jurosISS.Visible := true;

  end
  else
    pnl_jurosISS.Visible := false;  
end;

procedure TFrm_Mov_2075.chb_parcelamentoClick(Sender: TObject);
begin
  inherited;
  CalculaTotalPagar;
end;

procedure TFrm_Mov_2075.btn_alterarvencimentoClick(
  Sender: TObject);
begin
  inherited;
  if (pnl_alerta.Visible) and (pnl_alerta.Caption = 'CONTA REPASSADA') then
    if DB_ExecSQL('update tbl_lotecontamedica set dtvencimento_cta = '+DB_FormatDataSQL(edt_dtvencimento_cta.Text, ftDate)+
    ', obs_cta = '''+mem_obs_cta.Lines.Text+
    ''' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text) then
      Dlg_Ok('Data de vencimento alterada com sucesso',self)
    else
      Dlg_Alerta('Não foi possivel alterar as datas de vencimento!',self);
end;

procedure TFrm_Mov_2075.PDJButton10Click(Sender: TObject);
var
  vlPagar : double;
begin
  inherited;
    if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_dotacoestmedico03 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_dotacoestmedico03;
  Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.FMesReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  vlPagar := Fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlpago_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlISS_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vljurosMulta_cta').AsFloat;
  //Gabinete da Superitendente
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Bas_Impressao.FCampo3 := Tab.FieldByName('chefe').AsString;
    Frm_Bas_Impressao.FCampo1 :=  Tab.FieldByName('nome_sti').AsString;
  end
  else
  begin
    Frm_Bas_Impressao.FCampo3 := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FCampo1 := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
  end;
  //Serviço de Revisão de Contas
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 48');
  Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('chefe').AsString;
  Frm_Bas_Impressao.FCampo8 := Tab.FieldByName('nome_sti').AsString;
  //Diretoria de Assistencia a Saude
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
  Frm_Bas_Impressao.FCampo9 := Tab.FieldByName('chefe').AsString;
  Frm_Bas_Impressao.FCampo10 := Tab.FieldByName('nome_sti').AsString;


  if date >= fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtvalidade').AsDateTime then
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtvalidade').AsDateTime);
    if fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtvalidade').AsDateTime)
  end
  else
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtvalidade').AsDateTime) ;
    if fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico03.FieldByName('dtvalidade').AsDateTime) ;
  end;
  Frm_Bas_Impressao.showReport(4255);
  Fdt_principal4.spc_cons_med_dotacoestmedico03.close;

end;

procedure TFrm_Mov_2075.tbs_empenhoShow(Sender: TObject);
var
  vlTotal, vlRepassado, vlComRecuperado,  vlTotalPagar : double ;
  numeroPAOld, numEmepenhoOLd, tipoPagto : string;
  ListEmpenho: TListItem;
begin
  inherited;
  if CriticaParametros then
    Exit;
  lsv_empenho.Items.Clear;  

  DB_ExecSql('delete from tmp_saldoEmpenho');

  DB_ExecSql('insert into tmp_saldoEmpenho  select cp.cod_conveniado, e.cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc, numeroPA_emc,'+
  ' vlEmpenho_emc - sum(isnull(vlpago_cta,0)) as saldoEmpenho'+
  ' from tbl_empenhoConveniado  e left join tbl_histempenhoConveniado h on h.cod_empenhoConveniado = e.cod_empenhoConveniado'+
  ' left join tbl_conveniadoProcesso cp on e.cod_conveniadoProcesso = cp.cod_conveniadoProcesso'+
  ' where cp.cod_conveniado = '+IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and cnpj_emc = '''+cbx_cnpj_emc.Text+''' and e.cod_statusAtivo = 1'+
  ' group by cp.cod_conveniado, e.cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc, vlEmpenho_emc, numeroPA_emc'+
  ' order by numeroPA_emc, numEmpenho_emc');

  Db_openSql('select c.cod_conveniado, cod_empenhoConveniado, numeroPA_clp, numEmpenho_emc, anoEmpenho_emc,'+
  ' sum(vlinformado_itc) as vlinformado_itc, sum(vlpagar_itc) as vlpagar_itc, saldoEmpenho'+
  ' from tbl_contamedica AS c INNER JOIN tbl_itemconta AS i ON c.cod_conveniado = i.cod_conveniado'+
  ' AND c.dtreferencia_cta = i.dtreferencia_cta AND c.sequencia_cta = i.sequencia_cta'+
  ' AND c.sequenciaconta_ctm = i.sequenciaconta_ctm'+
  ' inner join tbl_classificacaoPlano clp on c.cod_classificacaoPlano = clp.cod_classificacaoPlano'+
  ' inner join tmp_saldoEmpenho s on c.cod_conveniado = s.cod_conveniado and numeroPA_clp = numeroPA_emc'+
  ' where c.cod_conveniado = '+IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)))+
  ' and c.cod_beneficiario > 0 and c.dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and c.sequencia_cta = '+edt_sequencia_con.Text+
  ' group by c.cod_conveniado, numeroPA_clp, saldoEmpenho, cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc'+
  ' order by numeroPA_clp, cod_empenhoConveniado');

  numeroPAOld := '0';
  numEmepenhoOLd := Tab.FieldByName('numEmpenho_emc').AsString;
  SaldoNegativo := false;
  vlTotalPagar := 0 ;
  if rdb_vlrepassar.Checked then
  begin
    tipoPagto := 'vlpagar_itc';
    //vlTotal :=
  end
  else
    tipoPagto := 'vlinformado_itc';

  while not Tab.eof do
  begin
    vlComRecuperado := (Tab.FieldByName(tipoPagto).AsFloat - (Tab.FieldByName(tipoPagto).AsFloat * PorcentagemRecuperado));

    if (numeroPAOld = Tab.FieldByName('numeroPA_clp').AsString) and (numEmepenhoOLd <> Tab.FieldByName('numEmpenho_emc').AsString)  then
    begin
      if Tab.FieldByName('saldoEmpenho').AsFloat < (vlComRecuperado - vlRepassado) then
        vlRepassado := (Tab.FieldByName('saldoEmpenho').AsFloat - vlRepassado)
     else
       vlRepassado := (vlComRecuperado - vlRepassado);
    end
    else
    begin
      if Tab.FieldByName('saldoEmpenho').AsFloat < vlComRecuperado then
        vlRepassado := Tab.FieldByName('saldoEmpenho').AsFloat
      else
        vlRepassado := vlComRecuperado;
    end;
//    vlRepassado := (vlRepassado - (vlRepassado * PorcentagemRecuperado));

      ListEmpenho := lsv_empenho.Items.Add;
      ListEmpenho.Caption := Tab.FieldByName('numeroPA_clp').AsString;
      ListEmpenho.SubItems.Add(Tab.FieldByName('numEmpenho_emc').AsString);
      ListEmpenho.SubItems.Add(Tab.FieldByName('anoEmpenho_emc').AsString);
      ListEmpenho.SubItems.Add(FormatFloat(VAL_Float,vlRepassado));
      vlTotalPagar := vlTotalPagar + vlRepassado;
      ListEmpenho.SubItems.Add(FormatFloat(VAL_Float, (Tab.FieldByName('saldoEmpenho').AsFloat - vlRepassado)));
      ListEmpenho.SubItems.Add(Tab.FieldByName('cod_empenhoConveniado').AsString);
      numeroPAOld := Tab.FieldByName('numeroPA_clp').AsString;
      numEmepenhoOLd := Tab.FieldByName('numEmpenho_emc').AsString;


    if (Tab.FieldByName('saldoEmpenho').AsFloat - vlRepassado) < 0 then
      SaldoNegativo := true;

    Tab.Next;
  end;
  edt_vlTotalRepassado.text := FormatFloat('###,###,##0.00', vlTotalPagar);
  if rdb_vlrepassar.Checked then
  begin
    if edt_vlrepassar.Text <>  edt_vlTotalRepassado.text then
      SaldoNegativo := true;
  end
  else
    if edt_vlapresentado.Text <>  edt_vlTotalRepassado.text then
      SaldoNegativo := true;

  pnl_alertaEmpenho.Visible := SaldoNegativo;

  {


  SaldoNegativo := false;
  with fdt_principal3.spc_cons_med_totalEmpenhoPA do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@cnpj_emc').AsString := cbx_cnpj_emc.Text;
    open;
    first;
    vlI := 0 ;
    vlP := 0 ;
    if RecordCount < 1 then
       SaldoNegativo := true;
    while not eof do
    begin
      vlI := vlI + fieldbyname('vlinformado_itc').AsFloat;
      vlP := vlP + fieldbyname('vlpagar_itc').AsFloat;
      if rdb_vlrepassar.Checked then
        if fieldbyname('SaldoRepassado').AsFloat < 0 then
          SaldoNegativo := true
       else
         if fieldbyname('SaldoApresentado').AsFloat < 0 then
            SaldoNegativo := true;
      next;
    end;
    edt_vlTotalApresentado.text := FormatFloat('###,###,##0.00', vlI);
    edt_vlTotalRepassado.text := FormatFloat('###,###,##0.00', vlP);
    edt_diferenca.text := FormatFloat('###,###,##0.00', vlI-vlP);
  end;
  }
end;

procedure TFrm_Mov_2075.btn_statuscontaClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Rel_StatusConta := TFrm_Rel_StatusConta.Create(Self);
  Frm_Rel_StatusConta.STR_Conveniado := edt_cod_conveniado.text;
  Frm_Rel_StatusConta.STR_Mes := cbx_cod_mes.valueItem ;
  Frm_Rel_StatusConta.STR_Ano := edt_ano.Text ;
  Frm_Rel_StatusConta.ShowModal;
  Frm_Rel_StatusConta.Release;
  Show;
end;

end.



