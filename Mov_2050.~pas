unit Mov_2050;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, math;

type
  TFrm_Mov_2050 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    btn_carregaContrato: TPDJButton;
    Panel1: TPanel;
    cbx_cod_contratoServicoEspecial: TDCComboBox;
    PDJButton1: TPDJButton;
    PDJButton10: TPDJButton;
    Panel6: TPanel;
    edt_vlRepasse: TDCEdit;
    btn_atulaizar: TPDJButton;
    Panel5: TPanel;
    edt_dtvencimento_cta: TDCDateEdit;
    ProgressBar: TProgressBar;
    Panel8: TPanel;
    edt_vlPagar: TDCEdit;
    pnl_empenho2: TPanel;
    edt_numEmpenho2: TDCEdit;
    edt_anoEmpenho2: TDCEdit;
    edt_saldo2: TDCEdit;
    Panel11: TPanel;
    cbx_cnpj_emc: TDCComboBox;
    edt_numEmpenho_emc: TDCEdit;
    edt_anoEmpenho_emc: TDCEdit;
    edt_saldo: TDCEdit;
    chb_Iss: TCheckBox;
    lsv_empenho: TListView;
    Label4: TLabel;
    edt_vlTotalRepassado: TDCEdit;
    pnl_alertaEmpenho: TPanel;
    btn_empenho: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_carregaContratoClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_atulaizarClick(Sender: TObject);
    procedure cbx_cnpj_emcChange(Sender: TObject);
    procedure btn_empenhoClick(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven, seq, FVlContrato, FcodEmpenho, FcodEmpenho2   : string ;
    SaldoNegativo : boolean;
    procedure buscaEmpenho(cnpj : String; tipo : integer);
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

 TContrato = record
    FCod_Plano : integer;
    FCod_ClassificacaoPlano : integer;
    FCod_Padrao : String[10];
    FCod_itemServico : String[10];
    FNome_its : String[70];
    FVLContrato : double;
    FTotalBP : double;
end;

var
  Frm_Mov_2050: TFrm_Mov_2050;

implementation
uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str, dtm_principal,
Fun_Acesso, Mov_RepasseConta, Mov_ProcessarConta, Rel_ContaRepassada, Fun_Numero,
  dtm_principal4, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Mov_2050.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Exluir Conta' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Mov_2050.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2050.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

procedure TFrm_Mov_2050.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
  begin
    edt_razao_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'));
    Obj_LoadCombo(Self, 'cbx_cnpj_emc', 'cnpj_cne', 'sequencia_cne', 'tbl_conveniadoendereco where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
    cbx_cnpj_emc.ItemIndex := 0;
    buscaEmpenho(cbx_cnpj_emc.text,1);
    //CalculaTotalPagar;
    //edt_sequencia_conExit(self);
  end;
  if edt_razao_con.Text <> '' then begin
    cbx_cod_contratoServicoEspecial.ItemIndex := -1;
    Obj_LoadCombo(self,'cbx_cod_contratoServicoEspecial', 'descricao_cse', 'cod_contratoServicoEspecial'
    , 'tbl_contratoServicoEspecial where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-'));
  end;
end;

procedure TFrm_Mov_2050.buscaEmpenho(cnpj : String; tipo : integer);
var
 vlEmpenho : double;
 Fpesquisa : string;
begin
  //tipo: 1 Empenho principal - 2 Empenho secundario
  if cnpj <> '' then
  begin
    if tipo = 1 then
    begin
      Obj_EmptyEditTag(self,5);
      Fpesquisa := 'select cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc, vlEmpenho_emc from tbl_empenhoconveniado'+
      ' where cod_statusAtivo = 1 and cnpj_emc = '+DB_FormatDataSQL(cnpj, ftString)+' order by cod_empenhoConveniado';
      if DB_OpenSQL(Fpesquisa) > 0 then
      begin
        edt_numEmpenho_emc.Text := Tab.fieldbyName('numEmpenho_emc').AsString;
        edt_anoEmpenho_emc.Text := Tab.fieldbyName('anoEmpenho_emc').AsString;
        vlEmpenho := Tab.fieldByName('vlEmpenho_emc').AsFloat;
        FcodEmpenho := Tab.fieldbyName('cod_empenhoConveniado').AsString;
        DB_OpenSQL('select isnull(sum(vlpago_cta),0) as vlpago_cta from tbl_histempenhoConveniado'+
        ' where cod_empenhoConveniado = '+FcodEmpenho);
        edt_saldo.Text := FormatFloat('###,###,##0.00',  vlEmpenho - Tab.fieldByName('vlpago_cta').AsFloat);
      end;
    end
    else
    begin
      Fpesquisa := 'select cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc, vlEmpenho_emc from tbl_empenhoconveniado'+
      ' where cod_statusAtivo = 1 and cnpj_emc = '+DB_FormatDataSQL(cnpj, ftString)+
      ' and numEmpenho_emc <> '+edt_numEmpenho_emc.Text+' order by cod_empenhoConveniado';
      if DB_OpenSQL(Fpesquisa) > 0 then
      begin
        edt_numEmpenho2.Text := Tab.fieldbyName('numEmpenho_emc').AsString;
        edt_anoEmpenho2.Text := Tab.fieldbyName('anoEmpenho_emc').AsString;
        vlEmpenho := Tab.fieldByName('vlEmpenho_emc').AsFloat;
        FcodEmpenho2 := Tab.fieldbyName('cod_empenhoConveniado').AsString;
        DB_OpenSQL('select isnull(sum(vlpago_cta),0) as vlpago_cta from tbl_histempenhoConveniado'+
        ' where cod_empenhoConveniado = '+FcodEmpenho2);
        edt_saldo2.Text := FormatFloat('###,###,##0.00',  vlEmpenho - Tab.fieldByName('vlpago_cta').AsFloat);
      end;
    end;
    if  cbx_cnpj_emc.Text <> '' then
    begin
      DB_OpenSQL('select recolheISS_cne from tbl_conveniadoendereco'+
      ' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
      ' and sequencia_cne = '+cbx_cnpj_emc.valueItem);
      chb_Iss.Checked := Tab.FieldByName('recolheISS_cne').AsBoolean;
    //  pnl_camposISS.Visible := Tab.FieldByName('recolheISS_cne').AsBoolean;
    end;
  end;
end;

function TFrm_Mov_2050.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_contratoServicoEspecial.name, 'O Contrato deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Mov_2050.btn_carregaContratoClick(Sender: TObject);
var
  FContratos : array[0..50] of TContrato;
  FBtotal, FVlInformado, v, vlAjuste, vlAnterior, FVlEmpenho2 : Double;
  sequencia, i, FCount : integer;
  Executado : boolean;
begin
  inherited;
  if CriticaParametros then
    Exit;
  if StrToInt(edt_sequencia_con.text) <= 100 then
  begin
    Dlg_Alerta('Sequencia deve ser maior que 100 !',self);
    Exit;
  end;
  if (not BAS_ValidarCampo(edt_dtvencimento_cta.name, 'A Data de Vencimento deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_vlRepasse.name, 'O Valor do Repasse deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  if cbx_cnpj_emc.Text = '' then
  begin
    Dlg_Alerta('É necessário cadastrar um CNPJ no Cadastro de Conveniados na aba Filiais!',self);
    Exit;
  end;
 { if edt_numEmpenho_emc.Text = '' then
  begin
    Dlg_Alerta('É necessário cadastrar um Empenho no Cadastro de Conveniados!',self);
    Exit;
  end; }

  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := STR_RemoveChar(edt_cod_conveniado.text,'-');
  seq := edt_sequencia_con.text;
  FBtotal := 0;
  i := 0;
  Executado := false;
  ProgressBar.Position := 0;
  ProgressBar.Visible := true;
  //Registrar conta


  try

    if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq ) < 1 then
    begin
      DB_ExecSQL('insert into tbl_lotecontamedica '+
      ' (cod_conveniado, dtreferencia_cta, sequencia_cta, dtvencimento_cta, vlpago_cta, dtrecebimento_cta, dtleitura_cta, dtcritica_cta, cod_midia, dtrepasse_cta, vlrepasse_cta, vlapresentado_cta, vlrecuperado_cta)'+
      ' values ('+conven+', '+dtrefe+', '+seq+', '+DB_FormatDataSQL(edt_dtvencimento_cta.text, ftdate)+', '+
      DB_FormatDataSQL(edt_vlRepasse.text, ftfloat)+',getdate(), getdate(), getdate(), 1, getdate(), '+DB_FormatDataSQL(edt_vlRepasse.text, ftfloat) + ',' + DB_FormatDataSQL(edt_vlRepasse.text, ftfloat) +',0)');
    end;
    //Pesquisar Sequencia da Conta
    if DB_OpenSQL('select max(sequenciaconta_ctm) from tbl_itemconta where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq) > 0 then
      sequencia := Tab.Fields[0].AsInteger
    else
      sequencia :=0;

    // Guarda o valor do Repasse Anterior
    DB_OpenSQL('select round(sum(vlpagar_itc),2) as vlpagar_itc from tbl_itemconta where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq+' and (status_itc = 200 or status_itc = 1000)');
    if Tab.RecordCount > 0 then
      vlAnterior := Tab.Fields[0].asFloat
    else
      vlAnterior := 0;

    DB_BeginTrans;
    // Pesquisar Contratos
    if DB_OpenSQL('select  valor_cse, i.cod_plano, pp.cod_classificacaoPlano, cp.nome_clp, i.cod_itemServico, it.cod_padrao, it.nome_its, dotacao_ise, '+
    ' count(cod_beneficiario) as TotalBP from tbl_contratoServicoEspecial c, tbl_planoPagto pp, tbl_classificacaoPlano cp, '+
    ' tbl_itemServicoEspecial i, tbl_beneficiario b, tbl_sitbeneficiario s, tbl_itemservico it '+
    ' where c.cod_contratoServicoEspecial = i.cod_contratoServicoEspecial and pp.cod_plano = i.cod_plano'+
    ' and i.cod_itemServico = it.cod_itemServico and cp.cod_classificacaoPlano = pp.cod_classificacaoPlano '+
    ' and pp.cod_classificacaoPlano = b.cod_classificacaoPlano and b.cod_sitbeneficiario = s.cod_sitbeneficiario and s.tipo_sit < 2'+
    ' and cod_conveniado = '+conven+' and situacao_cse = 1 and pp.cod_statusAtivo = 1'+
    ' and c.cod_contratoServicoEspecial = '+cbx_cod_contratoServicoEspecial.valueItem+
    ' group by c.cod_contratoServicoEspecial, cod_conveniado, descricao_cse, valor_cse, '+
    ' i.cod_plano, pp.cod_classificacaoPlano, cp.nome_clp, i.cod_itemServico, it.cod_padrao, it.nome_its, dotacao_ise '+
    ' order by cod_plano, pp.cod_classificacaoPlano') > 0 then
    begin
      FCount := tab.RecordCount;
      ProgressBar.Max := FCount * 2;
      Tab.First;
      while not Tab.Eof do
      begin
        FBtotal := FBtotal + Tab.fieldByName('TotalBP').AsFloat;
        FContratos[i].FCod_Plano := Tab.fieldByName('cod_plano').AsInteger;
        FContratos[i].FCod_ClassificacaoPlano := Tab.fieldByName('cod_classificacaoPlano').AsInteger;
        FContratos[i].FCod_Padrao := Tab.fieldByName('cod_padrao').AsString;
        FContratos[i].FCod_itemServico := Tab.fieldByName('cod_itemServico').AsString;
        FContratos[i].FNome_its := trim(copy(Tab.fieldByName('nome_its').AsString,1,50)) + ' - ' +trim(copy(Tab.fieldByName('nome_clp').AsString,1,50));
        FContratos[i].FVLContrato := Str_StrToFloat(STR_RemoveChar(edt_vlRepasse.text, '.'));  //Tab.fieldByName('valor_cse').AsFloat;
        FContratos[i].FTotalBP := Tab.fieldByName('TotalBP').AsFloat;
        Tab.Next;
        inc(i);
        ProgressBar.Position := ProgressBar.Position + 1;
        Application.ProcessMessages;
      end;
      for i := 0 to FCount - 1 do
      begin
  //    ShowMessage(inttostr(i));
        ProgressBar.Position := ProgressBar.Position + 1;
        Application.ProcessMessages;

        inc(sequencia);
        v := (FContratos[i].FVLContrato / FBtotal);
  //      v := Arredondar((FContratos[i].FVLContrato / FBtotal),9);
        FVlInformado := Arredondar(v * FContratos[i].FTotalBP, 2);
        Executado := DB_ExecSQL('insert into tbl_contamedica '+
        '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, '+
        'cod_endconveniado, carteirainform_ctm, nomebenefi_ctm, '+
        'cod_autorizacao, cod_acomodacao, dtentrada_ctm, dtsaida_ctm, cod_tipatendimento, '+
        'cod_cid, cod_especialidade, cod_crm, status_ctm, cod_classificacaoPlano) values ( '+
        conven+', '+dtrefe+', '+seq+', '+inttostr(sequencia)+', '+
        '001, ''0'+IntToStr(FContratos[i].FCod_Plano)+'00000'+STR_AddZeros( inttostr(FContratos[i].FCod_ClassificacaoPlano),3)+''', '''+cbx_cod_contratoServicoEspecial.Text+
        ''', '+cbx_cod_contratoServicoEspecial.valueItem+', 5, '+dtrefe+', '+dtrefe+', 6, 000, 0, 0, 1000, '+inttostr(FContratos[i].FCod_ClassificacaoPlano)+')');
        if Executado then
          Executado := DB_ExecSQL('insert into tbl_itemconta '+
          '(cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, sequenciaitem_itc, '+
          'cod_padrao, cod_itemservico, descricao_itc, emergencia_itc, dhe_itc, dtrealizacao_itc, '+
          'cod_posicao, qtde_itc, vlinformado_itc, vlpagar_itc, retorno_itc, status_itc, reducacresc_itc, qtdeinformada_itc  ) values ( '+
            conven+', '+dtrefe+', '+seq+', '+InttoStr(sequencia)+', 1, '''+
            FContratos[i].FCod_Padrao+''', '''+FContratos[i].FCod_itemServico+''', '''+FContratos[i].FNome_its+''', ''N'', ''N'', '+dtrefe+
            ', 0,1, '+DB_FormatDataSQL(FormatFloat(VAL_DBFloat, FVlInformado), ftFloat)+','+DB_FormatDataSQL(FormatFloat(VAL_DBFloat, FVlInformado), ftFloat)+', ''N'', 1000, 100, 1)');
      end;

      DB_OpenSQL('select round(sum(vlpagar_itc),2) as vlpagar_itc from tbl_itemconta where cod_conveniado = '+conven+
      ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq+' and (status_itc = 200 or status_itc = 1000)');
        edt_vlPagar.text := FormatFloat('###,###,##0.00', Tab.Fields[0].asFloat-vlAnterior);
      // Se o valor a Pagar for diferente do valor digitado no repasse o sistema deve ajustar o valor a pagar
      if Str_StrToFloat(STR_RemoveChar(edt_vlPagar.text, '.')) <> Str_StrToFloat(STR_RemoveChar(edt_vlRepasse.text, '.')) then begin
        vlAjuste := Str_StrToFloat(STR_RemoveChar(edt_vlRepasse.text, '.')) - Str_StrToFloat(STR_RemoveChar(edt_vlPagar.text, '.'));
        edt_vlPagar.text := FormatFloat('###,###,##0.00', Str_StrToFloat(STR_RemoveChar(edt_vlPagar.text, '.')) + vlAjuste);
        Executado := DB_ExecSQL('update tbl_itemconta set vlinformado_itc = vlinformado_itc - '+DB_FormatDataSQL(FormatFloat(VAL_DBFloat, vlAjuste), ftFloat)+
          ' , vlpagar_itc = vlpagar_itc + '+DB_FormatDataSQL(FormatFloat(VAL_DBFloat, vlAjuste), ftFloat)+
          ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq+' and sequenciaconta_ctm = '+inttostr(sequencia)+' and sequenciaitem_itc = 1');
      end;
      Db_openSql('select processo_cpr, anoProcesso_cpr from tbl_conveniadoProcesso'+
      ' where cod_conveniado = '+conven+' and cod_statusAtivo = 1');

      DB_ExecSQL('update tbl_lotecontamedica set vlpago_cta = '+DB_FormatDataSQL(Str_StrToFloat(STR_RemoveChar(edt_vlPagar.text, '.'))+vlAnterior, ftFloat)+
      ', cnpj_cta = '''+cbx_cnpj_emc.Text+
      ''', processo_cta = '+Tab.fieldByName('processo_cpr').AsString+',  anoProcesso_cta = '+
      Tab.fieldByName('anoProcesso_cpr').AsString+',  tipoPagto_cta = 1'+
      ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text);
      ProgressBar.Visible := false;

    end;
    {
    //Salva Historico para calculo de saldo por empenho
    if edt_anoEmpenho_emc.Text <> FormatDateTime('yyyy',Date) then
      if not Dlg_YesNo('Atenção! Ano do Empenho diferente do Ano Atual, Deseja Continuar?', Self) then Exit ;

    if StrToFloat(STR_RemoveChar(edt_vlpagar.text,'.')) > StrToFloat(STR_RemoveChar(edt_saldo.text,'.')) then
    begin
      pnl_empenho2.Visible := true;
      buscaEmpenho(cbx_cnpj_emc.Text,2);
      if edt_numEmpenho2.Text = '' then
      begin
        Dlg_Alerta('Atenção! Saldo insuficiente, é necessario cadastrar um novo Empenho.', self);
        Exit;
      end;
      Executado := DB_ExecSQL('insert into tbl_histempenhoConveniado (cod_conveniado, dtreferencia_cta, sequencia_cta,'+
      ' cod_empenhoConveniado, cod_usuario, vlpago_cta, dtsistema_hec) values ('+conven+','+dtrefe+','+edt_sequencia_con.Text+','+
      FcodEmpenho+','+inttostr(FCod_Usuario)+','+DB_FormatDataSQL(edt_saldo.text,ftFloat)+', getdate())');
      if Executado then
        Executado := DB_ExecSQL('update tbl_empenhoConveniado set cod_statusAtivo = 2'+
        ' where cod_empenhoConveniado = '+FcodEmpenho);
      FVlEmpenho2 := StrToFloat(STR_RemoveChar(edt_vlpagar.text,'.')) - StrToFloat(STR_RemoveChar(edt_saldo.text,'.'));
      if Executado then
        Executado := DB_ExecSQL('insert into tbl_histempenhoConveniado (cod_conveniado, dtreferencia_cta, sequencia_cta,'+
        ' cod_empenhoConveniado, cod_usuario, vlpago_cta, dtsistema_hec) values ('+conven+','+dtrefe+','+edt_sequencia_con.Text+','+
        FcodEmpenho2+','+inttostr(FCod_Usuario)+','+DB_FormatDataSQL(FVlEmpenho2, ftFloat)+', getdate())');
    end
    else
    begin
      FVlEmpenho2 := StrToFloat(STR_RemoveChar(edt_vlpagar.text,'.'));
      if Executado then
        Executado := DB_ExecSQL('insert into tbl_histempenhoConveniado (cod_conveniado, dtreferencia_cta, sequencia_cta,'+
        ' cod_empenhoConveniado, cod_usuario, vlpago_cta, dtsistema_hec) values ('+conven+','+dtrefe+','+edt_sequencia_con.Text+','+
        FcodEmpenho+','+inttostr(FCod_Usuario)+','+DB_FormatDataSQL(FVlEmpenho2,ftFloat)+', getdate())');
    end;
     }

    if (Executado) and (not pnl_alertaEmpenho.Visible) then begin
      Dlg_Ok('Operação concluida com Sucesso !',self);
      DB_Commit;
    end
    else
      DB_RollBack;  

  except
    DB_RollBack;
  end;
  cbx_cod_contratoServicoEspecial.ItemIndex := -1;
  EscreveLog(btn_carregaContrato.name);
end;

procedure TFrm_Mov_2050.PDJButton10Click(Sender: TObject);
var
  vlPagar : double;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) then
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
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 9');
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

  {
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  with Fdt_principal4.spc_cons_med_dotacoestmedico02 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_dotacoestmedico02;
  Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.FMesReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  vlPagar := Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlpago_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat;
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
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 9');
  Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('chefe').AsString;
  Frm_Bas_Impressao.FCampo8 := Tab.FieldByName('nome_sti').AsString;
  //Diretoria de Assistencia a Saude
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
  Frm_Bas_Impressao.FCampo9 := Tab.FieldByName('chefe').AsString;
  Frm_Bas_Impressao.FCampo10 := Tab.FieldByName('nome_sti').AsString;


  if date >= fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime then
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime);
    if fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime)
  end
  else
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime) ;
    if fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime) ;
  end;
  Frm_Bas_Impressao.showReport(4198);
  Fdt_principal4.spc_cons_med_dotacoestmedico02.close;  }



{  Hide;
  Frm_Rel_ContaRepassada := TFrm_Rel_ContaRepassada.Create(Self);
  Frm_Rel_ContaRepassada.FCod_Conveniado := edt_cod_conveniado.text;
  Frm_Rel_ContaRepassada.FMes := cbx_cod_mes.valueItem ;
  Frm_Rel_ContaRepassada.FAno := edt_ano.Text ;
  Frm_Rel_ContaRepassada.FSeq := edt_sequencia_con.Text ;
  Frm_Rel_ContaRepassada.ShowModal;
  Frm_Rel_ContaRepassada.Release;
  Show; }
end;

procedure TFrm_Mov_2050.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Mov_ProcessarConta := TFrm_Mov_ProcessarConta.Create(Self);
  Frm_Mov_ProcessarConta.CConveniado := edt_cod_conveniado.text ;
  Frm_Mov_ProcessarConta.FMes := cbx_cod_mes.valueItem ;
  Frm_Mov_ProcessarConta.FAno := edt_ano.Text ;
  Frm_Mov_ProcessarConta.FSeq := edt_sequencia_con.Text ;
  Frm_Mov_ProcessarConta.PageControl.ActivePageIndex := 3;
  Frm_Mov_ProcessarConta.ShowModal;
  Frm_Mov_ProcessarConta.Release;
  Show;
end;

procedure TFrm_Mov_2050.btn_atulaizarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if DB_OpenSQL('select  valor_cse from tbl_contratoServicoEspecial '+
  ' where cod_contratoServicoEspecial = '+cbx_cod_contratoServicoEspecial.valueItem) > 0 then
  edt_vlRepasse.text := FormatFloat(VAL_Float, Tab.Fields[0].AsFloat);

end;

procedure TFrm_Mov_2050.cbx_cnpj_emcChange(Sender: TObject);
begin
  inherited;
  if (edt_cod_conveniado.Text <> '') and (cbx_cnpj_emc.text <> '') then
  begin
    buscaEmpenho(cbx_cnpj_emc.Text,1);
  end;
end;

procedure TFrm_Mov_2050.btn_empenhoClick(Sender: TObject);
var
  i : integer;
  vlTotal, vlRepassado, vlComRecuperado,  vlTotalPagar : double ;
  numeroPAOld, numEmepenhoOLd, tipoPagto : string;
  ListEmpenho: TListItem;
  Executado : boolean;
begin
  inherited;
//Empenhos Novos
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));

  if DB_OpenSQL('select cod_conveniado from tbl_histempenhoConveniado where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.Text) > 0 then
  begin
    Dlg_Alerta('Não é possivel efetuar esse Empenho pois ja foi fechado!',self);
    Exit;
  end;


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
    ' and c.dtreferencia_cta = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and c.sequencia_cta = '+edt_sequencia_con.Text+
    ' group by c.cod_conveniado, numeroPA_clp, saldoEmpenho, cod_empenhoConveniado, numEmpenho_emc, anoEmpenho_emc'+
    ' order by numeroPA_clp, cod_empenhoConveniado');

    numeroPAOld := '0';
    numEmepenhoOLd := Tab.FieldByName('numEmpenho_emc').AsString;
    SaldoNegativo := false;
    vlTotalPagar := 0 ;


    while not Tab.eof do
    begin

      vlComRecuperado := (Tab.FieldByName('vlpagar_itc').AsFloat - (Tab.FieldByName('vlpagar_itc').AsFloat * 0));

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
    if edt_vlRepasse.text <> '' then
    begin
      if edt_vlRepasse.Text <>  edt_vlTotalRepassado.text then
        SaldoNegativo := true;
    end;
    pnl_alertaEmpenho.Visible := SaldoNegativo;
    Executado := true;
    For i := 0 to (lsv_empenho.Items.Count -1) do
    begin
      if (Executado) and not (SaldoNegativo)
      then
      begin
        if (lsv_empenho.Items[i].SubItems.Strings[4] <> '') and (lsv_empenho.Items[i].SubItems.Strings[2] <> '0,00') then
          Executado := DB_ExecSQL('insert into tbl_histempenhoConveniado values ('+conven+', '+dtrefe+
          ','+edt_sequencia_con.Text+','+lsv_empenho.Items[i].SubItems.Strings[4]+
          ','+inttostr(FCod_Usuario)+','+STR_SubstChar(STR_RemoveChar(lsv_empenho.Items[i].SubItems.Strings[2],'.'),',','.')+
          ','+DB_FormatDataSQL(Date, ftDate)+')');
        if Executado and (lsv_empenho.Items[i].SubItems.Strings[3] = '0,00') and (lsv_empenho.Items[i].SubItems.Strings[4] <> '') then
          Executado := DB_ExecSQL('update tbl_empenhoConveniado set cod_statusAtivo = 2 where cod_empenhoConveniado = '+lsv_empenho.Items[i].SubItems.Strings[4]);
      end;    
    end;
    
end;

end.



