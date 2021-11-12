unit Mov_2035;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2035 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    edt_ano: TDCEdit;
    edt_sequencia_cta: TDCEdit;
    cbx_cod_mes: TDCComboBox;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    btn_atualizar: TSpeedButton;
    Panel17: TPanel;
    rdb_internacoes: TRadioButton;
    rdb_ambulatorio: TRadioButton;
    rdb_todos: TRadioButton;
    Label10: TLabel;
    rdb_sequencia: TRadioButton;
    rdb_carteira: TRadioButton;
    rdb_nome: TRadioButton;
    rdb_data: TRadioButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    DBEdit1: TDBEdit;
    lbl_tlitem: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    lbl_tlcontas: TLabel;
    edt_vlInformado: TDCEdit;
    edt_vlPagar: TDCEdit;
    edt_diferenca: TDCEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ed2_ano: TDCEdit;
    cb2_cod_mes: TDCComboBox;
    ed2_sequencia_cta: TDCEdit;
    btn_recuperarItem: TSpeedButton;
    btn_recuperarConta: TSpeedButton;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure btn_recuperarItemClick(Sender: TObject);
    procedure btn_recuperarContaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    conv, dtrefe, seq, seqconta : string;
    function BAS_ValidarCadastro: boolean ;
    procedure CarregarCombos;
    function CriticaRecuperacao : boolean;
  public
    { Public declarations }
    function RecuperaConta(conv, dtref, seq, seqconta, cartei, benef, nomeben, acomod, dtent, dtsaida,
    tipoatend, cid, esp, crm : string) : String ;
    function RecuperaItem(conv, dtref, seq, seqconta, seqitem, itemservico, codpadrao,
    descItc, emer, dhe, dtrealiz, posicao, qtde, retorno, status, obs_itc, vlinf : String) : Boolean ;
  end;

var
  Frm_Mov_2035: TFrm_Mov_2035;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
dtm_principal5, Fun_Obj, Fun_ConsCadastro, Fun_Medico ;

{$R *.DFM}

function TFrm_Mov_2035.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Cod. Conveniado deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O mês de Referência deve sser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_cta.name, 'A Sequencia deve ser Preenchida!', VLD_Preenchido )) then
  Exit;
  result := false ;
end;

procedure TFrm_Mov_2035.CarregarCombos;
begin
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
  Obj_LoadCombo(self,'cb2_cod_mes','nome_mes','cod_mes', 'tbl_mes');
end;

procedure TFrm_Mov_2035.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  Fdt_principal.spc_cons_itemconta.close;
  fdt_principal5.spc_cons_glosa02.close;
end;

procedure TFrm_Mov_2035.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2035.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniadoAtivo(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

procedure TFrm_Mov_2035.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if BAS_ValidarCadastro then
    exit;
  with fdt_principal5.spc_cons_glosa02 do begin
    Close;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_cta.text;
    if rdb_internacoes.Checked then
      ParamByName('@internacao').AsString := '4';
    if rdb_ambulatorio.Checked then
      ParamByName('@internacao').AsString := '5';
    if rdb_todos.Checked then
      ParamByName('@internacao').AsString := '0';
    if rdb_sequencia.Checked then
      ParamByName('@indice').AsString := '1';
    if rdb_carteira.Checked then
      ParamByName('@indice').AsString := '2';
    if rdb_nome.Checked then
      ParamByName('@indice').AsString := '3';
    if rdb_data.Checked then
      ParamByName('@indice').AsString := '4';
    Open;
    lbl_tlcontas.Caption := 'Total de Contas Médicas => '+intTostr(recordcount) ;
  end;
end;

procedure TFrm_Mov_2035.DBEdit1Change(Sender: TObject);
var
  vlI, vlP : double ;
begin
  inherited;
  if (DBEdit1.text <> Fdt_principal5.spc_cons_itemglosa2.fieldbyname('sequenciaconta_ctm').AsString) then
  with Fdt_principal5.spc_cons_itemglosa2 do begin
    close;
    ParamByName('@cod_conveniado').AsString := fdt_principal5.spc_cons_glosa02.fieldbyname('cod_conveniado').AsString;
    ParamByName('@dtreferencia_cta').AsString := FormatDateTime('mm/dd/yyyy',fdt_principal5.spc_cons_glosa02.fieldbyname('dtreferencia_cta').AsDateTime);
    ParamByName('@sequencia_cta').AsString := fdt_principal5.spc_cons_glosa02.fieldbyname('sequencia_cta').AsString;
    ParamByName('@sequenciaconta_ctm').AsString := DBEdit1.text;
    open;
    lbl_tlitem.Caption := 'Total de Itens da Conta Selecionada => '+intTostr(recordcount) ;
    first;
    vlI := 0 ;
    vlP := 0 ;
    while not eof do
    begin
      vlI := vlI + Fdt_principal5.spc_cons_itemglosa2.fieldbyname('vlInformado_itc').AsFloat;
      vlP := vlP + Fdt_principal5.spc_cons_itemglosa2.fieldbyname('vlPagar_itc').AsFloat;
      next;
    end;
    edt_vlInformado.text := FormatFloat('###,###,##0.00', vlI);
    edt_vlPagar.text := FormatFloat('###,###,##0.00', vlP);
    edt_diferenca.text := FormatFloat('###,###,##0.00', vlI-vlP);
  end;
end;

function TFrm_Mov_2035.CriticaRecuperacao : boolean;
begin
  result := false ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Cod. Conveniado deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'O mês de Referência deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'O Ano de Referência deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_sequencia_cta.name, 'A Sequencia deve ser Preenchida!', VLD_Preenchido )) then
    Exit;
  if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
  ' and dtreferencia_cta = '''+cb2_cod_mes.valueItem+'/01/'+ed2_ano.Text+''' and sequencia_cta = '+ed2_sequencia_cta.text) < 1 then begin
    Dlg_Alerta('Não foi Gerada a Conta para o Mês / Ano de Referência!', self);
    exit;
  end;
  if Tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível Recuperar a Conta para o Mês / Ano de Referência pois a Conta ja foi Repassada !', self);
    exit;
  end;
  result := true;
end;

function TFrm_Mov_2035.RecuperaConta(conv, dtref, seq, seqconta, cartei, benef, nomeben, acomod, dtent, dtsaida,
tipoatend, cid, esp, crm : String) : String;
var
Fseqconta : String;
begin
  if benef = '' then
    benef := 'null';
  //if DB_OpenSQL('select sequenciaconta_ctm from tbl_contamedica where cod_conveniado = '+conv+' and dtreferencia_cta = '+
  //dtref+' and sequencia_cta = '+seq+' and cod_beneficiario = '+benef+' and dtentrada_ctm = '+DB_FormatDataSQL(dtent, ftDate)) < 1 then
 // begin
    DB_OpenSQL('select Max(sequenciaconta_ctm) as sequenciaconta_ctm  from tbl_contamedica where cod_conveniado = '+
    conv+' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq);
    Fseqconta := IntToStr(tab.fieldByName('sequenciaconta_ctm').asinteger + 1);
    DB_ExecSQL('insert into tbl_contamedica (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, '+
    'cod_endconveniado, carteirainform_ctm, cod_beneficiario, nomebenefi_ctm, cod_autorizacao, cod_acomodacao, '+
    'dtentrada_ctm, dtsaida_ctm, cod_tipatendimento, cod_cid, cod_especialidade, cod_crm, status_ctm, '+
    'pagtoincondicional_ctm, idadeben_ctm, cod_usuario, dtsistema_ctm) values ('+conv+','+dtref+','+seq+','+
    Fseqconta+', 1,'''+cartei+''','+benef+','''+nomeben+''', 0,'+acomod+','+DB_FormatDataSQL(dtent, ftDate)+','+DB_FormatDataSQL(dtsaida, ftDate)+','+
    tipoatend+','''+cid+''','+esp+','+crm+',9,1,0,0, getdate())');
 // end
 // else
 //   Fseqconta := Tab.fieldByName('sequenciaconta_ctm').asstring;
  result := Fseqconta;
 // result := '0';
end;

function TFrm_Mov_2035.RecuperaItem(conv, dtref, seq, seqconta, seqitem, itemservico, codpadrao,
descItc, emer, dhe, dtrealiz, posicao, qtde, retorno, status, obs_itc, vlinf : String) : Boolean ;
begin
  //if DB_OpenSQL('select * from tbl_itemconta where cod_conveniado = '+conv+' and dtreferencia_cta = '+
  //dtref+' and sequencia_cta = '+seq+' and sequenciaconta_ctm = '+seqconta+' and sequenciaitem_itc = '+seqitem) < 1 then
    result := DB_ExecSQL('insert into tbl_itemconta (cod_conveniado, dtreferencia_cta, sequencia_cta, sequenciaconta_ctm, '+
    'sequenciaitem_itc, cod_itemservico, cod_padrao, descricao_itc, emergencia_itc, dhe_itc, '+
    'dtrealizacao_itc, cod_posicao, qtde_itc, vlinformado_itc, reducacresc_itc, retorno_itc, '+
    'status_itc, pagtoincondicional_itc, qtdeinformada_itc, obs_itc) values ('+conv+','+dtref+','+seq+','+
    seqconta+','+seqitem+','+DB_FormatDataSQL(itemservico, ftString)+','+codpadrao+','''+descItc+''','''+emer+''','''+dhe+''','+DB_FormatDataSQL(dtrealiz, ftDate)+','+
    posicao+',1,'+DB_FormatDataSQL(vlinf, Ftfloat)+', 100,'''+retorno+''',9,1,'+qtde+','''+obs_itc+''')');

 // else
 //   result := false;
end;

procedure TFrm_Mov_2035.btn_recuperarItemClick(Sender: TObject);
begin
  inherited;
  if not CriticaRecuperacao then
    Exit ;
  conv := STR_RemoveChar(edt_cod_conveniado.text,'-');
  dtrefe := ''''+cb2_cod_mes.valueItem + '/01/'+ed2_ano.text+'''';
  seq := ed2_sequencia_cta.Text;
  seqconta := RecuperaConta(conv,dtrefe,seq,seqconta,fdt_principal5.spc_cons_glosa02.fieldByName('carteirainform_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_beneficiario').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('nomebenefi_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_acomodacao').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('dtentrada_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('dtsaida_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_tipatendimento').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_cid').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_especialidade').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_crm').AsString);
  if RecuperaItem(conv,dtrefe,seq,seqconta, Fdt_principal5.spc_cons_itemglosa2.fieldByName('sequenciaitem_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_itemservico').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_padrao').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('descricao_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('emergencia_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('dhe_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('dtrealizacao_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_posicao').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('qtde_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('retorno_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('status_itc').AsString,
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('obs_itc').AsString,
  FormatFloat('###,###,##0.00',(Fdt_principal5.spc_cons_itemglosa2.fieldByName('vlinformado_itc').AsFloat -
  Fdt_principal5.spc_cons_itemglosa2.fieldByName('vlpagar_itc').AsFloat))) then

    ShowMessage('Item Recuperado com Sucesso')
  else
  //ShowMessage('Item já Cadastrado !');
  ShowMessage('Erro ao Cadastrar!');
 // Fdt_principal5.spc_cons_itemglosa2.Next;
end;

procedure TFrm_Mov_2035.btn_recuperarContaClick(Sender: TObject);
begin
  inherited;
  if not CriticaRecuperacao then
    Exit ;
  conv := STR_RemoveChar(edt_cod_conveniado.text,'-');
  dtrefe := ''''+cb2_cod_mes.valueItem + '/01/'+ed2_ano.text+'''';
  seq := ed2_sequencia_cta.Text;
  seqconta := RecuperaConta(conv,dtrefe,seq,seqconta,fdt_principal5.spc_cons_glosa02.fieldByName('carteirainform_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_beneficiario').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('nomebenefi_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_acomodacao').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('dtentrada_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('dtsaida_ctm').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_tipatendimento').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_cid').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_especialidade').AsString,
  fdt_principal5.spc_cons_glosa02.fieldByName('cod_crm').AsString) ;
  Fdt_principal5.spc_cons_itemglosa2.First;
  while not Fdt_principal5.spc_cons_itemglosa2.Eof do
  begin
    if RecuperaItem(conv,dtrefe,seq,seqconta, Fdt_principal5.spc_cons_itemglosa2.fieldByName('sequenciaitem_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_itemservico').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_padrao').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('descricao_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('emergencia_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('dhe_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('dtrealizacao_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('cod_posicao').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('qtde_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('retorno_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('status_itc').AsString,
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('obs_itc').AsString,
    FormatFloat('###,###,##0.00',(Fdt_principal5.spc_cons_itemglosa2.fieldByName('vlinformado_itc').AsFloat -
    Fdt_principal5.spc_cons_itemglosa2.fieldByName('vlpagar_itc').AsFloat))) then

      Fdt_principal5.spc_cons_itemglosa2.Next
    else begin
      ShowMessage('Item já Cadastrado !');
      Exit;
    end;
  end;
    ShowMessage('Conta Recuperada com Sucesso');
end;

procedure TFrm_Mov_2035.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal5.spc_cons_itemglosa2.close;
  fdt_principal5.spc_cons_glosa02.close;
end;

end.



