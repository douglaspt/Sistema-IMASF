unit Mov_2073;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Mov_2073 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel1: TPanel;
    DataSource1: TDataSource;
    PageControl: TPageControl;
    TabSheet5: TTabSheet;
    btn_senha: TPDJButton;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_descricao_itc: TDCEdit;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_apelido_its: TDCEdit;
    btn_adicionaritem: TPDJButton;
    btn_alteraitem: TPDJButton;
    btn_removeritem: TPDJButton;
    btn_salvaritem: TPDJButton;
    btn_cancelaritem: TPDJButton;
    Panel5: TPanel;
    edt_obs_ita: TDCEdit;
    edt_qtde_ita: TDCEdit;
    btn_imprimirAutorizacao: TPDJButton;
    btn_adicionarItens: TPDJButton;
    Mem_autorizacao: TMemo;
    Panel38: TPanel;
    edt_dtatendimento_ita: TDCDateEdit;
    Panel39: TPanel;
    edt_dtalteracao_ita: TDCDateEdit;
    cb2_cod_usuario: TDCComboBox;
    dbg_itemservico: TDBGrid;
    TabSheet6: TTabSheet;
    dbg_histautorizacao: TDBGrid;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    dbg_listaItem: TDBGrid;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    edt_idade: TDCEdit;
    pnl_alerta: TPanel;
    pnl_carencia: TPanel;
    btn_salvar: TPDJButton;
    Panel6: TPanel;
    edt_cod_autorizacaoMedica: TDCChoiceEdit;
    pnl_tipoautorizacao: TPanel;
    edt_carteirinha2: TDCEdit;
    edt_carteirinha: TEdit;
    btn_leituracarteirinha: TPDJButton;
    Panel11: TPanel;
    edt_dtatendimento_aum: TDCDateEdit;
    btn_beneficiario: TPDJButton;
    Panel8: TPanel;
    edt_nomeMedico_aum: TDCEdit;
    edt_cod_crm: TDCChoiceEdit;
    Panel32: TPanel;
    edt_cod_tipoAutorizacao: TDCEdit;
    edt_descricao_aum: TDCEdit;
    Panel9: TPanel;
    cbx_cod_usuario: TDCComboBox;
    edt_dtsistema_aum: TDCDateEdit;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_nome_con: TDCEdit;
    cbx_conveniadoendereco: TBComboBox;
    edt_peso_ben: TDCEdit;
    edt_altura_ben: TDCEdit;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_adicionaritemClick(Sender: TObject);
    procedure btn_adicionarItensClick(Sender: TObject);
    procedure btn_alteraitemClick(Sender: TObject);
    procedure btn_salvaritemClick(Sender: TObject);
    procedure btn_cancelaritemClick(Sender: TObject);
    procedure btn_removeritemClick(Sender: TObject);
    procedure btn_imprimirAutorizacaoClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2, FPlano, Int_Retorno : integer;
    FCMI : Boolean;
    procedure MostrarNivelCar(cod_beneficiario : string);
    procedure AbrirHistorico;
    procedure BotoesOnOffItem(b: boolean);
    procedure criticaReutilizacao(cod_beneficiario, itemservico : string ; quantidade,
    mesesReut, QtdeReut : integer; Dt_atendimento : tdatetime);
    procedure AlertaTipoAutrizacao;
    function CriticaItem(cod_itemservico : string) : boolean;
//    procedure MostrarNivelCar(cod_beneficiario : string);
  public
    { Public declarations }
    wCod_Beneficiario, FSexo : String;
    FIdade : Integer;
    FSenha : boolean;
  end;

var
  Frm_Mov_2073: TFrm_Mov_2073;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal5, Fun_ConsCadastro, Fun_Data,
  dtm_principal6, Fun_Medico, Imp_4120 ;

  function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'


{$R *.DFM}

procedure TFrm_Mov_2073.MostrarNivelCar(cod_beneficiario : string);
begin
  DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv '+
  'from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar and '+
  'cod_beneficiario = '+cod_beneficiario+' order by c.cod_nivelcar');
  LsB_Carencia.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
    STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
    STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
    Tab.FieldByName('informacao_car').AsString);
    Tab.Next;
  end;
end;

procedure TFrm_Mov_2073.criticaReutilizacao(cod_beneficiario, itemservico : string ; quantidade, mesesReut, QtdeReut : integer; Dt_atendimento : tdatetime);
begin
  DB_OpenSql('select sum(qtde_ita) as qtde_ita from tbl_itemautorizacao it, tbl_autorizacaomedica a'+
  ' where it.cod_autorizacaoMedica = a.cod_autorizacaoMedica and a.cod_beneficiario = '+
  cod_beneficiario+' and it.cod_itemservico = '+itemservico+ ' and dtatendimento_aum >= '+
  DB_FormatDataSQL(Data_SubtraiMeses(Dt_atendimento,mesesReut), ftdate));
  if tab.FieldByName('qtde_ita').AsInteger + quantidade > QtdeReut then
    edt_cod_tipoAutorizacao.Text := '3';
end;

procedure TFrm_Mov_2073.BotoesOnOffItem(b: boolean);
begin
  btn_adicionaritem.Enabled := b ;
  btn_adicionarItens.Enabled := b;
  btn_alteraitem.Enabled := b ;
  btn_removeritem.Enabled := b ;
  btn_salvaritem.Enabled := not b ;
  btn_cancelaritem.Enabled := not b;
  dbg_itemservico.visible := b ;
end;

function TFrm_Mov_2073.CriticaItem(cod_itemservico : string) : boolean;
begin
  result := false;
  DB_OpenSQL('SELECT  reutilizacao_its, qtdeReutilizacao_its, idadeInicial_its, idadeFinal_its,'+
  ' qtdeVida_its, qtdeAtendimento_its, cod_tipoAutorizacao, sexo_its from tbl_itemservico'+
  ' where cod_itemservico = '+cod_itemservico);
  if not((Tab.FieldByName('sexo_its').AsString = Fsexo) or (Tab.FieldByName('sexo_its').AsString = 'A')) then begin
    Dlg_Alerta('Procedimento não realizado para este Sexo',self);
    Result := true;
  end;
  if not ((FIdade >= Tab.FieldByName('idadeInicial_its').AsInteger) and (FIdade <= Tab.FieldByName('idadeFinal_its').AsInteger)) then begin
    Dlg_Alerta('Idade não Autorizada para este Procedimento',self);
    Result := true;
  end;
end;

procedure TFrm_Mov_2073.AlertaTipoAutrizacao;
begin
  if edt_cod_tipoAutorizacao.Text <> '' then begin
    case StrToInt(edt_cod_tipoAutorizacao.Text) of
      2 : begin
        pnl_tipoautorizacao.Caption := 'A Autorização Necessita de aprovação Administrativa';
        pnl_tipoautorizacao.Color := clYellow;
        pnl_tipoautorizacao.Visible := true;
      end;
      3 : begin
        pnl_tipoautorizacao.Caption := 'A Autorização Necessita de aprovação Médica';
        pnl_tipoautorizacao.Color := clRed;
        pnl_tipoautorizacao.Visible := true;
      end;
    end;
  end;
end;

procedure TFrm_Mov_2073.AbrirHistorico ;
begin
 with fdt_principal4.spc_cons_adm_autorizacaomedica  do
 begin
   close;
   ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
   open;
 end;
end;

procedure TFrm_Mov_2073.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2073.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, b.cod_sitbeneficiario, nome_sit, tipo_sit, dtnascim_ben, sexo_ben'+
    ' from tbl_beneficiario b, tbL_sitbeneficiario s where b.cod_sitbeneficiario = s.cod_sitbeneficiario and cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    FPlano := Tab.FieldByNAme('cod_plano').AsInteger;
    edt_idade.text := Data_GetIdadeExt(Tab.FieldByNAme('dtnascim_ben').AsDateTime, date);
    FSexo := Tab.FieldByNAme('sexo_ben').AsString;
    FIdade := Data_GetIdadeAnos(Tab.FieldByNAme('dtnascim_ben').AsDateTime, date);
    pnl_alerta.Caption := '***   Situação: '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    btn_salvar.Enabled := Tab.FieldByName('tipo_sit').AsInteger <> 2;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    pnl_carencia.Visible := ADM_VerCarencia(edt_cod_beneficiario.text);
    TabSheet1.TabVisible := ADM_VerCarencia(edt_cod_beneficiario.text);
    MostrarNivelCar(edt_cod_beneficiario.text);
    AbrirHistorico;
    with fdt_principal4.spc_cons_adm_itemautorizacao do begin
      Close;
      parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizacaoMedica.text ;
      Open;
    end;
  end;
  wCod_Beneficiario := '';
end;

procedure TFrm_Mov_2073.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2073.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;
end;

procedure TFrm_Mov_2073.btn_adicionaritemClick(Sender: TObject);
begin
  inherited;
  edt_dtatendimento_ita.Date:= edt_dtatendimento_aum.Date;
  FStatus2 := FST_Novo;
  btn_senha.Visible := false;
  FSenha := false;
  BotoesOnOffItem(false);
  Obj_EmptyEditTag(self,0);
  edt_qtde_ita.Text := '1';
  edt_apelido_its.SetFocus;
end;

procedure TFrm_Mov_2073.btn_adicionarItensClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  PageControl.ActivePageIndex := 3;
  btn_senha.Visible := false;
  FSenha := false;
  with fdt_principal6.spc_cons_med_conveniadoItens02 do
  begin
    Close;
    ParamByName('@cod_conveniado').AsString := edt_cod_conveniado.Text;
    Open;
  end;
end;

procedure TFrm_Mov_2073.btn_alteraitemClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  BotoesOnOffItem(false);
  with fdt_principal4.spc_cons_adm_itemautorizacao do
  begin
    edt_cod_itemservico.text := fieldbyname('cod_itemservico').AsString;
    edt_descricao_itc.Text := fieldbyname('nome_its').AsString;
    edt_obs_ita.Text := fieldbyname('obs_ita').AsString;
    edt_qtde_ita.Text := fieldbyname('qtde_ita').AsString;
    edt_dtalteracao_ita.Text := fieldbyname('dtsistema_ita').AsString;
    edt_dtatendimento_ita.Date:= fieldbyname('dtatendimento_ita').AsDateTime;
    Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, fieldbyname('cod_usuario').Value);
  end;
end;

procedure TFrm_Mov_2073.btn_salvaritemClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(edt_cod_itemservico.name, 'É necessário preencher o Item de Serviço', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_qtde_ita.name, 'É necessário preencher a Qtde.', VLD_Preenchido) then
    exit ;
  if StrToInt(edt_qtde_ita.Text) = 0 then begin
    Dlg_Alerta('A Quantidade tem que ser maior que zero!',self);
    exit;
  end;
  if edt_descricao_itc.Text = '' then begin
    Dlg_Alerta('O Codigo do Item de Serviço não Existe ou Não está cadastradado para o Conveniado',self);
    exit;
  end;

  if edt_dtatendimento_ita.Date < edt_dtatendimento_aum.Date then
     begin
     Dlg_Alerta('A Data de Atendimento não pode ser menor que a Data de Internação.',self);
     edt_dtatendimento_ita.Date:= 0;
     edt_dtatendimento_ita.SetFocus;
     Exit;
     end;
  if edt_dtatendimento_ita.Date > Date then
     begin
     Dlg_Alerta('A Data de Atendimento não pode ser maior que Data de Hoje.',self);
     edt_dtatendimento_ita.Date:= 0;
     edt_dtatendimento_ita.SetFocus;
     Exit;
     end;
  edt_dtalteracao_ita.Date := Date ;
  BAS_CarregarCombo('cb2_cod_usuario', 'descricao_usu');
  Obj_SetFormObjValueByName(self, cb2_cod_usuario.name, FCod_usuario);
  if not Med_ConveniadoItem(edt_cod_conveniado.text, edt_cod_itemservico.text,self) then
  Exit;
  DB_OpenSQL('select cod_tipoAutorizacao, reutilizacao_its, qtdeReutilizacao_its from tbl_itemservico where cod_itemservico = '+edt_cod_itemservico.Text);
  if Tab.FieldByName('cod_tipoAutorizacao').AsInteger > STR_StrToInt(edt_cod_tipoAutorizacao.Text) then
    edt_cod_tipoAutorizacao.Text := Tab.FieldByName('cod_tipoAutorizacao').AsString;
  criticaReutilizacao(edt_cod_beneficiario.text,edt_cod_itemservico.text, STR_StrToInt(edt_qtde_ita.text),
  Tab.FieldByName('reutilizacao_its').AsInteger, Tab.FieldByName('qtdeReutilizacao_its').AsInteger, edt_dtatendimento_aum.Date);
  AlertaTipoAutrizacao;
  if CriticaItem(edt_cod_itemservico.text) then
    Exit;
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_itemautorizacao (cod_autorizacaoMedica, cod_itemservico, obs_ita, qtde_ita, dtsistema_ita, cod_usuario, dtatendimento_ita) values ('+
  edt_cod_autorizacaoMedica.text+','+edt_cod_itemservico.text+','''+edt_obs_ita.text+''','+edt_qtde_ita.Text+', '''+
  Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+IntToStr(FCod_Usuario)+', '''+Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+''')')
  else
  DB_ExecSQL('update tbl_itemautorizacao set '+
    'cod_itemservico = '''+edt_cod_itemservico.text+''','+
    ' obs_ita = '''+edt_obs_ita.Text+''','+
    ' qtde_ita = '+edt_qtde_ita.text+','+
    ' dtatendimento_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtatendimento_ita.Date)+''','+
    ' dtsistema_ita = ''' + Data_Format('mm/dd/yyyy', edt_dtalteracao_ita.Date)+''','+
    ' cod_usuario = '+IntToStr(FCod_Usuario)+
    ' where '+
    ' cod_autorizacaoMedica = '+edt_cod_autorizacaoMedica.text+' and cod_itemservico =  '''+edt_cod_itemservico.Text+'''');
  with fdt_principal4.spc_cons_adm_itemautorizacao do begin
    Close;
    parambyname('@cod_autorizacaoMedica').asstring := edt_cod_autorizacaoMedica.text ;
    Open;
  end;
  BotoesOnOffItem(true);
  edt_nomeMedico_aum.SetFocus;
  EscreveLog(btn_salvaritem.name);
end;

procedure TFrm_Mov_2073.btn_cancelaritemClick(Sender: TObject);
begin
  inherited;
  BotoesOnOffItem(true);
  EscreveLog(btn_cancelaritem.name);
  btn_senha.Visible := false;
end;

procedure TFrm_Mov_2073.btn_removeritemClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir o Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_itemautorizacao where cod_autorizacaoMedica = '+
    edt_cod_autorizacaoMedica.text+' and cod_itemservico = '+fdt_principal4.spc_cons_adm_itemautorizacao.FieldByName('cod_itemservico').asstring);
    fdt_principal4.spc_cons_adm_itemautorizacao.close;
    fdt_principal4.spc_cons_adm_itemautorizacao.open;
  end;
  EscreveLog(btn_removeritem.name);
end;

procedure TFrm_Mov_2073.btn_imprimirAutorizacaoClick(Sender: TObject);
var
  DtValidade : TDateTime;
begin
  inherited;
  //if CriticaParametros then
  // Exit;
  Int_Retorno := rStatusImpressora_DUAL_DarumaFramework();
 { case Int_Retorno of
    0 : MSG_ERRO := '0 - Impressora Desligada!';
    1 : MSG_ERRO := '1 -Impressora OK!';
    -50 : MSG_ERRO := '-50 - Impressora OFF-LINE!';
    -51 : MSG_ERRO := '-51 - Impressora Sem papel!';
    -27 : MSG_ERRO := '-27 -Erro Generico!';
  end;  }
  if Int_Retorno <> 1 then begin
    with fdt_principal4.spc_cons_adm_itemautorizacao do
    begin
      close;
      ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacaoMedica.text;
      open;
      while not EOF do
      begin
        if FieldByName('cod_padrao').AsString = '20101074' then
          DtValidade := edt_dtatendimento_aum.Date + 180
        else
          DtValidade := edt_dtatendimento_aum.Date + 30;
        Next;
      end;
    end;
    Frm_Imp_4120 := TFrm_Imp_4120.Create(Self);
    Frm_Imp_4120.FDtAut := edt_dtatendimento_aum.Text;
    Frm_Imp_4120.FMedSol := edt_cod_crm.Text+' - '+edt_nomeMedico_aum.Text;
    Frm_imp_4120.FPacie := edt_nome.Text;
    Frm_Imp_4120.FCartei := edt_carteira.Text;
    if edt_nome_con.Text <> '' then begin
      DB_OpenSQL('select razao_cne, endereco_cne, bairro_cne, fone_cne, nome_con'+
      ' from tbl_conveniadoendereco ce, tbl_conveniado c where ce.cod_conveniado = c.cod_conveniado and ce.cod_conveniado = '+edt_cod_conveniado.text+
      ' and sequencia_cne = '+cbx_conveniadoendereco.getStrItemValue);
      Frm_imp_4120.FNomeConv := tab.fieldbyName('nome_con').AsString;
      Frm_imp_4120.FEndConv := tab.fieldbyName('endereco_cne').AsString;
      Frm_imp_4120.FBairroConv := tab.fieldbyName('bairro_cne').AsString;
      Frm_imp_4120.FTelConv := tab.fieldbyName('fone_cne').AsString;
      Frm_Imp_4120.FDtValidade := DtValidade;
      //Frm_Imp_4120.FObservacao := 'AAAAAA BBBBBBBB CCCCCCCC DDDDDD ee FFFF GG HH IIIIIIII jjj kkkkk';
     { if DB_OpenSQL('select a.cod_autorizacaoMedica from tbl_autorizacaoMedica a, tbl_itemautorizacao i, tbl_itemhonorarioParticipacao it'+
      ' where a.cod_autorizacaoMedica = i.cod_autorizacaoMedica'+
      ' and a.cod_conveniado = it.cod_conveniado and i.cod_itemServico = it.cod_itemServico'+
      ' and not exists(select * from tbl_beneficiarioTratamentoHospReferencia bt where bt.cod_beneficiario = a.cod_beneficiario'+
      ' and a.cod_conveniado = bt.cod_conveniado and dtfim_bth >= dtsistema_aum)'+
      ' and a.cod_autorizacaoMedica = '+edt_cod_autorizacaoMedica.text) > 0 then
      Frm_Imp_4120.FObservacao := '“Esta consulta tem a co-participação do beneficiário no valor de R$ 15,00 (Quinze Reais)'+
      ' através de desconto em folha ou boleto. A utilização dessa guia torna implícita a aceitação do referido débito.”'; }

    end;
    Frm_Imp_4120.QuickRep1.Preview;
  //  Frm_Imp_4120.QuickRep1.Print;
    Frm_Imp_4120.Release;
    exit;
  end;
  with Mem_autorizacao do
  begin
    Clear;
    Lines.Add('<sp>28</sp>'+DateToStr(Date)+' <hr></hr><sp>10</sp>');
    Lines.Add('<e><b><ce>Guia de Autorização</ce></b></e>');
    Lines.Add('<l></l>');
    Lines.Add('Autorização: <e>'+edt_cod_autorizacaoMedica.Text+'</e>');
    Lines.Add('Dt. Autorização: '+edt_dtatendimento_aum.Text);
    with fdt_principal4.spc_cons_adm_itemautorizacao do
    begin
      close;
      ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacaoMedica.text;
      open;
      Application.ProcessMessages;
      while not EOF do
      begin
        if FieldByName('cod_padrao').AsString = '20101074' then
          DtValidade := edt_dtatendimento_aum.Date + 180
        else
          DtValidade := edt_dtatendimento_aum.Date + 30;
        Next;
      end;
      Lines.Add('Dt. Validade: '+DateToStr(DtValidade));
      Lines.Add('Paciente: '+edt_nome.Text);
      Lines.Add('Carteira: '+edt_carteira.Text);
     // Lines.Add('<l></l>');
      //Lines.Add('<ce><tc>-</tc></ce>');
      Lines.Add('<tc>-</tc>');
      Lines.Add('<b>Procedimentos Autorizados: </b>');
      Lines.Add(STR_AddSpaces('Cod. AMB',8)+STR_AddSpaces('Descrição',30)+'  Qtde.');
      Lines.Add('  ');
      First;
      while not EOF do
      begin
        Lines.Add(STR_AddSpaces(FieldByName('cod_padrao').AsString,8)+STR_AddSpaces(FieldByName('nome_its').AsString,30)+'  '+FieldByName('qtde_ita').AsString);
        if FieldByName('obs_ita').AsString <> '' then begin
          Lines.Add('Obs: '+FieldByName('obs_ita').AsString);
          Lines.Add(pchar('  '));
        end else
          Lines.Add(pchar('  '));
        Next;
      end;
    end;
    Lines.Add('<tc>-</tc>');
    if edt_nome_con.Text <> '' then
    DB_OpenSQL('select razao_cne, endereco_cne, bairro_cne, fone_cne, nome_con'+
    ' from tbl_conveniadoendereco ce, tbl_conveniado c where ce.cod_conveniado = c.cod_conveniado and ce.cod_conveniado = '+edt_cod_conveniado.text+
    ' and sequencia_cne = '+cbx_conveniadoendereco.getStrItemValue);
    Lines.Add('Conveniado: '+tab.fieldbyName('nome_con').AsString);
    Lines.Add('End: '+tab.fieldbyName('endereco_cne').AsString);
    Lines.Add('Bairro: '+tab.fieldbyName('bairro_cne').AsString);
    Lines.Add('Telefone: '+tab.fieldbyName('fone_cne').AsString);
    Lines.Add('Médico solic.: '+edt_cod_crm.text+' - '+edt_nomeMedico_aum.Text);
    Lines.Add('<l></l>');
    //Lines.Add('  ');
    Lines.Add('<tc>_</tc>');
    Lines.Add('Emitente: '+FNome_Usu);
    Lines.Add('<l></l>');
    Lines.Add('<tc>_</tc>');
    Lines.Add('Assinatura do beneficiário');
    Lines.Add('  ');
    //Lines.Add('<tc>_</tc>');
    Lines.Add('<e>IMASF</e>');
    Lines.Add('<c>Rua Dom Luiz, 201 - Nova Petrópolis - S. B. do Campo - SP</c>');
    Lines.Add('<c>3737-7000 - www.imasf.com.br - instituto@imasf.com.br</c>');
    Lines.Add('<sl>3</sl>');
    Lines.Add('<gui></gui>');
  end;
  Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(Mem_autorizacao.Text),0);

  {Frm_Imp_4120 := TFrm_Imp_4120.Create(Self);
  Frm_Imp_4120.FDtAut := edt_dtatendimento_aum.Text;
  Frm_Imp_4120.FMedSol := edt_cod_crm.Text+' - '+edt_nomeMedico_aum.Text;
  Frm_imp_4120.FPacie := edt_nome.Text;
  Frm_Imp_4120.FCartei := edt_carteira.Text;
  if edt_nome_con.Text <> '' then begin
    Frm_imp_4120.FNomeConv := tab.fieldbyName('nome_con').AsString;
    Frm_imp_4120.FEndConv := tab.fieldbyName('endereco_cne').AsString;
    Frm_imp_4120.FBairroConv := tab.fieldbyName('bairro_cne').AsString;
    Frm_imp_4120.FTelConv := tab.fieldbyName('fone_cne').AsString;
  end;
  //Frm_Imp_4120.QuickRep1.Preview;
  Frm_Imp_4120.QuickRep1.Print;
  Frm_Imp_4120.Release;  }
end;

end.



