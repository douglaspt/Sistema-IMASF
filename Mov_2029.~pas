unit Mov_2029;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2029 = class(TFrm_Bas_TelaPadrao)
    lbl_linha: TLabel;
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lbl_qtde: TLabel;
    ProgressBar1: TProgressBar;
    btn_conciliacao: TPDJButton;
    btn_carrega: TPDJButton;
    btn_carga: TPDJButton;
    btn_carregarArquivo: TPDJButton;
    PDJButton1: TPDJButton;
    Button1: TButton;
    Panel1: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_statusAtivo: TDCComboBox;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    TabSheet2: TTabSheet;
    stg_audi: TStringGrid;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    edt_servidores: TEdit;
    edt_pagamento: TEdit;
    Panel5: TPanel;
    edt_contrib: TEdit;
    edt_patronal: TEdit;
    Panel6: TPanel;
    edt_dtdeposito_pge: TDCDateEdit;
    edt_valordep: TDCEdit;
    Panel39: TPanel;
    edt_dtsistema_pge: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    btn_salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_excluir: TPDJButton;
    ckb_decimo: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cbx_cod_empresafolhaEnter(Sender: TObject);
    procedure btn_carregaClick(Sender: TObject);
    procedure btn_cargaClick(Sender: TObject);
    procedure Leitura(Sender: TObject);
    procedure btn_conciliacaoClick(Sender: TObject);
    function CriticaParametros : Boolean ;
    function CriticaParametros2 : Boolean ;
    procedure edt_valordepExit(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_excluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia: String ;
    nomearquivo, registro : string ;
    Arq, FSaida : TextFile;
    Seq, TlItem, TlLinha, SeqItm, i, Fcount : Integer ;
    WPAGAMENTOS, WCONTRIBUICOES, WPATRONAL, WValorp, WValorc, WValorpa: Real;
    s, dtreferencia_pat, cod_empresafolha, matriculaDebito_seg, digitoMatDeb_seg, nome_ben,
    cargo_pat, situacao_pat, vlsalario_pat, vlcontribuicao_pat, vlpatronal_pat, WEMP, EmpPatronal : string ;
  end;

var
  Frm_Mov_2029: TFrm_Mov_2029;
  ChaveExp, WBotao: Integer;
  WObs, WObsErro: String;
  WObs1, WObs2, WObs3, WObs4: String[3];

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj, Fun_Acesso, Fun_Data, ShellAPI;

{$R *.DFM}

procedure TFrm_Mov_2029.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Baixas de Boletos Bancários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_2029.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
  BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  btn_excluir.Enabled := Acs_AcessoEspecial('202901');  
end;

procedure TFrm_Mov_2029.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2029.cbx_cod_empresafolhaEnter(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage:= TabSheet1;
end;

procedure TFrm_Mov_2029.btn_carregaClick(Sender: TObject);
begin
  inherited;
  btn_carrega.SetFocus;
  if CriticaParametros then
     Exit;
  WBotao:= 1;
  dlg_leitura.InitialDir := ARQ_Patronal;
  dlg_leitura.Execute;
  nomearquivo := dlg_leitura.filename;
  Leitura(Self);
end;

procedure TFrm_Mov_2029.btn_cargaClick(Sender: TObject);
begin
  inherited;
  btn_carga.SetFocus;
  if CriticaParametros then
     Exit;
  if WBotao <> 1 then
     begin
     Dlg_Alerta('Arquivo ainda não analisado !', self);
     Exit;
     end;
  if DB_OpenSQL('select cod_empresafolha from tbl_patronal where cod_empresafolha = '+
                cbx_cod_empresafolha.valueItem+' and dtreferencia_pat = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''') > 0 then
     begin
     Dlg_Alerta('Um arquivo para este mês já foi carregado!', self);
     if not Dlg_YesNo('Deseja carregar mesmo assim ?', Self) then
        Exit;
     end;
  DB_BeginTrans;
  EscreveLog(btn_carregarArquivo.name);
  WBotao:= 2;
  registro:= '';
  Leitura(Self);
end;

procedure TFrm_Mov_2029.Leitura(Sender: TObject);
var
 i: integer;
begin
 AssignFile(Arq, nomearquivo);
 Reset (Arq);
//Verifica o Tamanho do Arquivo se é Válido
  if FileSize(Arq) < 1 then
  begin
    Dlg_Erro('Não foi possível Carregar a Baixa ! O arquivo está vazio.',self);
    Closefile (Arq);
    Exit;
  end;
  dtreferencia_pat := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  cod_empresafolha := cbx_cod_empresafolha.valueItem;
  if cbx_cod_statusAtivo.ValueItem = 2 then
    EmpPatronal := '5'
  else
    EmpPatronal := cod_empresafolha;
  ProgressBar1.position := 0 ;
  ProgressBar1.Visible := true ;
  lbl_linha.visible := true ;
  WPAGAMENTOS:= 0;
  WCONTRIBUICOES:= 0;
  WPATRONAL:= 0;
 ProgressBar1.max := FileSize (Arq);
 if length(registro) <= 150 then
 begin
   while not EOF(Arq) do
   begin
     with ProgressBar1 do
     begin
       position := position + 1
     end;
     lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(ProgressBar1.Position);
     Application.ProcessMessages;
     Decimalseparator := '.' ;
     Readln (Arq, registro);
     if ProgressBar1.Position = 1 then
     begin
       if Copy(registro,31,20) = 'CAMARA MUNICIPAL DE ' then
         WEMP:= 'CAMARA DO MUNICIPIO '
       else
         if Copy(registro,31,20) = 'INST.MUN.DE ASSISTÊN' then
           WEMP:= 'Instituto Municipal '
         else
           if (Copy(registro,31,20) = 'INSTITUTO DE PREVIDE') or (Copy(registro,45,25) = 'MUNICIPIO DE SAO BERNARDO') then
             WEMP:= 'PREFEITURA DO MUNICIPIO'
           else
             WEMP:= Trim(Copy(registro,31,20));
     end;
     if ProgressBar1.Position = 1 then
       if DB_OpenSQL('select nome_emp from tbl_empresafolha where descricao_emp like ''%'+WEMP+'%''') > 0 then
         if Tab.FieldByName('nome_emp').Text <> cbx_cod_empresafolha.Text then
         begin
           ProgressBar1.position:= 0;
           Dlg_Alerta('Arquivo selecionado da(o)' + Tab.FieldByName('nome_emp').Text +
           ' difere do local de desconto !',self);
           Closefile (Arq);
           Exit;
         end
         else
         begin
           WObs:= '';
           for i:= 0 to Length(registro) do
             if Copy(registro, i, Length(cbx_cod_mes.Text)) = UpperCase(cbx_cod_mes.Text) then
               WObs:= Copy(registro, i, Length(cbx_cod_mes.Text));
           if WObs = '' then
           begin
             ProgressBar1.position:= 0;
             ShowMessage('Arquivo selecionado difere do mês de referência !');
             Closefile (Arq);
             Exit;
           end;
           WObs:= '';
           for i:= 0 to Length(registro) do
             if Copy(registro, i, 4) = edt_ano.Text then
               WObs:= Copy(registro, i, 4);
           if WObs = '' then
           begin
             ProgressBar1.position:= 0;
             ShowMessage('Arquivo selecionado difere do ano de referência !');
             Closefile (Arq);
             Exit;
           end;
         end
         else
         begin
           ProgressBar1.position:= 0;
           Dlg_Alerta('Empresa ' + WEMP + ' inexistente!',self);
           Closefile (Arq);
           Exit;
         end;
     if copy(registro,1,12) = 'SERVIDORES :' then
     begin
       i:= ProgressBar1.position - 2;
       WObsErro:= '';
       if i = StrtoInt((copy(registro,13,5))) then
         WObs1:= '='
       else
       begin
         WObs1:= '=/=';
         WObsErro:= WObsErro + 'Quantidade lida de servidores ' + IntToStr(ProgressBar1.position - 2) +
         ' difere da informada ' + STR_RemoveZero(copy(registro,13,5));
       end;
       WValorp:= StrToFloat(copy(registro,32,14));
       if Trunc(WPAGAMENTOS) - Trunc(WValorp) = 0 then
         WObs2:= '='
       else
       begin
         WObs2:= '=/=';
         WObsErro:= WObsErro + ', Valor de pagamentos lido R$' + FormatFloat('####,###,##0.00', WPAGAMENTOS) +
         ' difere do informado R$' + FormatFloat('####,###,##0.00', WValorp);
       end;
       WValorc:= StrToFloat(copy(registro,63,14));
       if Trunc(WCONTRIBUICOES) - Trunc(WValorc) = 0 then
         WObs3:= '='
       else
       begin
         WObs3:= '=/=';
         WObsErro:= WObsErro + ', Valor de Contribuições lido R$' + FormatFloat('####,###,##0.00', WCONTRIBUICOES) +
         ' difere do informado R$' + FormatFloat('####,###,##0.00', WValorc);
       end;
       WValorpa:= StrToFloat(copy(registro,89,14));
       if Trunc(WPATRONAL) = Trunc(WValorpa) then
         WObs4:= '='
       else
       begin
         WObs4:= '=/=';
         WObsErro:= WObsErro + ', Valor de Patronais lido R$' + FormatFloat('####,###,##0.00', WPATRONAL) +
         ' difere do informado R$' + FormatFloat('####,###,##0.00', WValorpa);
       end;
       if WBotao = 1 then
          if WObs1 = '=' then
             if WObs2 = '=' then
                if WObs3 = '=' then
                   if WObs4 = '=' then
                       Dlg_Alerta('Arquivo analisado com sucesso !', self);
       if WBotao = 1 then
          if WObsErro <> '' then
              Dlg_Alerta(WObsErro +' !', self);
       WObs:= ' da(o) ' + cbx_cod_empresafolha.Text + ', ' + cbx_cod_mes.Text + '/' + edt_ano.Text + ', '+ cbx_cod_statusAtivo.Text;
       ProgressBar1.Position:= 1;
       end;

      if ProgressBar1.Position > 1 then
         begin
         matriculaDebito_seg := copy(registro,0,6);
         try
         StrToInt(matriculaDebito_seg);
         except
         matriculaDebito_seg := '-1';
         end;
         if StrToInt(matriculaDebito_seg) >= 0 then
         begin
           try
             digitoMatDeb_seg := copy(registro,8,1);
             nome_ben := copy(registro,10,30);
             cargo_pat := copy(registro,41,30);
             situacao_pat := copy(registro,72,30);
             vlsalario_pat := copy(registro,103,14);
             vlcontribuicao_pat := copy(registro,118,14);
             vlpatronal_pat := copy(registro,133,14);
             WPAGAMENTOS:= WPAGAMENTOS + StrToFloat(vlsalario_pat);
             WCONTRIBUICOES:= WCONTRIBUICOES + StrToFloat(vlcontribuicao_pat);
             WPATRONAL:= WPATRONAL + StrToFloat(vlpatronal_pat);
           except
             Dlg_Alerta('Erro ao Carregar Arquivo, Verificar Layot',self);
             Exit;
           end;

           if WBotao = 2 then
             DB_ExecSQL('insert into tbl_patronal (dtreferencia_pat, cod_empresafolha, '+
             'matriculaDebito_seg, digitoMatDeb_seg, nome_ben, cargo_pat, situacao_pat, '+
             'vlsalario_pat, vlcontribuicao_pat, vlpatronal_pat, cod_empresaPatronal, cod_statusAtivo, decimoTerceiro_pat) values ('+dtreferencia_pat+', '+
             EmpPatronal+', '+matriculaDebito_seg+', '+digitoMatDeb_seg+', '''+nome_ben+
             ''', '''+cargo_pat+''', '''+situacao_pat+''', '''+vlsalario_pat+''', '''+vlcontribuicao_pat+''', '''+
             vlpatronal_pat+''', '+cod_empresafolha+','+cbx_cod_statusAtivo.valueitem+', '+DB_FormatDataSQL(ckb_decimo.Checked, ftBoolean)+')');
           end;
         end;
   end;
   if WBotao = 2 then
   begin
     DB_Commit;
     DB_ExecSQL('exec spc_adm_classificaPatronal '+ dtreferencia_pat);
   end;
   if WBotao = 2 then
     if copy(registro,1,12) = 'SERVIDORES :' then
     begin
       GeraAuditoria(0,'0','Carga do ' + dlg_leitura.FileName, WObs + ',' + WObsErro, 0);
       DB_ExecSQL('insert into tbl_histpatronal values('+ IntToStr(cbx_cod_empresafolha.ValueItem) + ', ''' +
       cbx_cod_mes.valueItem + '/01/' + edt_ano.text + ''', ' +
       IntToStr(cbx_cod_statusAtivo.ValueItem) + ', '+ IntToStr(FCod_usuario)+ ', getdate(),' +
       copy(registro,13,5) + ', ' + copy(registro,32,14) + ', ' + copy(registro,63,14) + ', ' +
       copy(registro,89,14) + ', ' + IntToStr(i) + ', ' + FloatToStr(WPAGAMENTOS) + ', ' +
       FloatToStr(WCONTRIBUICOES) + ', ' + FloatToStr(WPATRONAL) + ',Null,Null,' + IntToStr(FCod_usuario)+
       ', getdate())');
       Dlg_Ok('Carga realizada com sucesso !'+ #13 + IntToStr(i) + ' Servidores' + #13 +
       'R$ ' + FormatFloat('###,###,##0.00', WPAGAMENTOS) + ' Pagamento ' + #13 +
       'R$ ' + FormatFloat('###,###,##0.00', WCONTRIBUICOES) + ' Contribuição ' + #13 +
       'R$ ' + FormatFloat('###,###,##0.00', WPATRONAL) + ' Patronal ', self);
     end;
  //Atualiza historico da data de transferencia por empresa
  DB_ExecSQL('update tbl_loteFolhaDescontos set dtPatronal_flh = getdate() '+
  ' where dtreferencia_flh = '+dtreferencia_pat+' and cod_empresafolha = '+IntToStr(cbx_cod_empresafolha.valueitem));
  Closefile(Arq);
  Decimalseparator := ',' ;
  ProgressBar1.Visible := false ;
  lbl_linha.visible := false ;
  ProgressBar1.Position:= 0;
  end;
end;

procedure TFrm_Mov_2029.btn_conciliacaoClick(Sender: TObject);
begin
  inherited;
  btn_conciliacao.SetFocus;
  if CriticaParametros then
     Exit;
  btn_conciliacao.Enabled:= True;
  if DB_OpenSQL('select * from tbl_histpatronal where cod_empresafolha = '+ cbx_cod_empresafolha.valueItem +
                ' and dtreferencia_pge = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text +
                ''' and cod_statusAtivo = ' + cbx_cod_statusAtivo.valueItem) > 0 then
     begin
     PageControl1.ActivePage:= TabSheet3;
     edt_servidores.Text:= FormatFloat('###,##0', Tab.FieldByName('qtdcargaservidores_pge').Value);
     edt_pagamento.Text:= FormatFloat('####,###,##0.00', Tab.FieldByName('vlcargapagamento_pge').Value);
     edt_contrib.Text:= FormatFloat('####,###,##0.00', Tab.FieldByName('vlcargacontribuicao_pge').Value);
     edt_patronal.Text:= FormatFloat('####,###,##0.00', Tab.FieldByName('vlcargapatronal_pge').Value);
     edt_valordep.Text:= '';
     if Tab.FieldByName('vlpatronaldepositado_pge').Value <> Null then
        edt_valordep.Text:= FormatFloat('####,###,##0.00', Tab.FieldByName('vlpatronaldepositado_pge').Value);
     edt_dtdeposito_pge.Text:= Tab.FieldByName('dtdeposito_pge').Text;
     edt_dtsistema_pge.Text:= Tab.FieldByname('dtsistema_pge').Text;
     Obj_SetFormObjValueByName(self, cbx_cod_usuario.Name, Tab.FieldByname('cod_usuario').Text);
     edt_valordep.SetFocus;
     end
  else
     begin
     Dlg_Alerta('Arquivo ainda não carregado !', self);
     Exit;
     end;
  WBotao:= 3;
end;

function TFrm_Mov_2029.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'A Empresa deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_statusAtivo.name, 'A Situação deve ser Preenchida !', VLD_Preenchido ));
end;

function TFrm_Mov_2029.CriticaParametros2 : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_valordep.name, 'Valor do depósito da patronal deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtdeposito_pge.name, 'A data do depósito da patronal deve ser Preenchida !', VLD_DataPreenchida ));
end;

procedure TFrm_Mov_2029.edt_valordepExit(Sender: TObject);
begin
  inherited;
  if edt_valordep.Text <> '' then
     try
     edt_valordep.Text:= FormatFloat('####,###,##0.00', StrToFloat(STR_RemoveChar(edt_valordep.Text,'.')));
     except
       edt_valordep.Text := '';
       edt_valordep.SetFocus;
     end;
end;

procedure TFrm_Mov_2029.btn_salvarClick(Sender: TObject);
begin
  inherited;
  btn_cancelar.SetFocus;
  if CriticaParametros2 then
     Exit;
  edt_valordep.Text:= STR_RemoveChar(edt_valordep.Text,'.');
  DB_ExecSQL('update tbl_histpatronal set vlpatronaldepositado_pge = ' +
             DB_FormatDataSQL(edt_valordep.Text, ftfloat)+
             ', dtdeposito_pge = ' + DB_FormatDataSQL(edt_dtdeposito_pge.Date, ftDate) +
             ', cod_usuario = ' + IntToStr(FCod_usuario) + ', dtsistema_pge = getdate() where cod_empresafolha = '+
             IntToStr(cbx_cod_empresafolha.ValueItem) + ' and dtreferencia_pge = ''' + cbx_cod_mes.valueItem +
             '/01/' + edt_ano.text + ''' and cod_statusAtivo = ' + IntToStr(cbx_cod_statusAtivo.ValueItem));
  if StrToFloat(STR_RemoveChar(edt_valordep.Text,'.')) <> StrToFloat(STR_RemoveChar(edt_patronal.Text,'.')) then
     begin
     WObsErro:= ' Valor depositado R$' + STR_RemoveChar(edt_valordep.Text,'.') +
                ' difere do valor patronal R$' + STR_RemoveChar(edt_patronal.Text,'.');
     GeraAuditoria(0,'0','Conciliação ', WObs + ',' + WObsErro, 0);
     end;
  PageControl1.ActivePage:= TabSheet1;
end;

procedure TFrm_Mov_2029.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage:= TabSheet1;
end;

procedure TFrm_Mov_2029.PDJButton1Click(Sender: TObject);
var
 S, W,  mat, dig, nome, sit, pagto, contrib, pat : string;
 i, qtde : integer;
begin
  inherited;
  //if CriticaParametros then
  //   Exit;
  dlg_leitura.InitialDir := ARQ_Patronal;
  dlg_leitura.Execute;
  nomearquivo := dlg_leitura.filename;
  AssignFile(Arq, nomearquivo);
  Reset(Arq);
  qtde := 0;
  AssignFile(FSaida,copy(nomearquivo, 1, Length(nomearquivo)-4)+'B.txt');
  Rewrite(FSaida);
  while not EOF(Arq) do
  begin
    Fcount := 0;
    nome := '';
    Readln (Arq, registro);
    try
      strtoint(copy(registro,1,1));
      mat := Copy(registro, 1, Pos('-', registro)-1);
      dig := copy(registro, Pos('-', registro)+1, 1);
      Fcount := Length(mat)+4;
      qtde := qtde + 1;
      for i:= Fcount to Length(registro) do
      begin
        S := copy(registro,i,1);
        try
          StrToInt(S);
          Break;
        except
          nome := nome + S;
        end;
      end;
      Fcount := Fcount+Length(nome);
      W := copy(registro, Fcount, Length(registro));
      sit := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(sit);
      W := copy(registro, Fcount, Length(registro));
      pagto := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(pagto);
      W := copy(registro, Fcount, Length(registro));
      contrib := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(contrib);
      W := copy(registro, Fcount, Length(registro));
      pat := copy(registro, Fcount, 10);
      W := (STR_AddZeros(STR_RemoveChar(mat,'.'),6)+'-'+dig+
      ';'+copy(STR_AddSpaces(nome,30),1,30)+';                              '+';                              ;'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(pagto,'.'),',','.'),14)+';'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(contrib,'.'),',','.'),14)+';'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(pat,'.'),',','.'),14) );
      Application.ProcessMessages;
      if mat <> '' then
        Writeln(FSaida,W);

    except
      if copy(registro,1,1) = '*' then
      begin
        try
          strtoint(copy(registro,3,1));
          mat := Copy(registro, 3, Pos('-', registro)-1);
          dig := copy(registro, Pos('-', registro)+1, 1);
          Fcount := Length(mat)+4;
          qtde := qtde + 1;
          for i:= Fcount to Length(registro) do
          begin
            S := copy(registro,i,1);
            try
              StrToInt(S);
              Break;
            except
              nome := nome + S;
            end;
          end;
          Fcount := Fcount+Length(nome);
          W := copy(registro, Fcount, Length(registro));
          sit := copy(registro, Fcount, Pos(' ', W));
          Fcount := Fcount + Length(sit);
          W := copy(registro, Fcount, Length(registro));
          pagto := copy(registro, Fcount, Pos(' ', W));
          Fcount := Fcount + Length(pagto);
          W := copy(registro, Fcount, Length(registro));
          contrib := copy(registro, Fcount, Pos(' ', W));
          Fcount := Fcount + Length(contrib);
          W := copy(registro, Fcount, Length(registro));
          pat := copy(registro, Fcount, 10);
          W := (STR_AddZeros(STR_RemoveChar(mat,'.'),6)+'-'+dig+
          ';'+copy(STR_AddSpaces(nome,30),1,30)+';                              '+';                              ;'+
          STR_AddZeros(STR_SubstChar(STR_RemoveChar(pagto,'.'),',','.'),14)+';'+
          STR_AddZeros(STR_SubstChar(STR_RemoveChar(contrib,'.'),',','.'),14)+';'+
          STR_AddZeros(STR_SubstChar(STR_RemoveChar(pat,'.'),',','.'),14) );
          Application.ProcessMessages;
          if mat <> '' then
            Writeln(FSaida,W);

        except
          //ShowMessage('');
        end;
      end;  
      //ShowMessage('');
    end;
  end;
  lbl_qtde.Caption := IntToStr(qtde);
  Closefile(Arq);
  CloseFile(FSaida);
end;

procedure TFrm_Mov_2029.Button1Click(Sender: TObject);
var
  nome, qtde, pagto, contrib, pat, W : string;
  i : integer;
begin
  inherited;
 //if CriticaParametros then
  //   Exit;
  dlg_leitura.InitialDir := ARQ_Patronal;
  dlg_leitura.Execute;
  nomearquivo := dlg_leitura.filename;
  AssignFile(Arq, nomearquivo);
  Reset(Arq);
  AssignFile(FSaida,copy(nomearquivo, 1, Length(nomearquivo)-4)+'C.txt');
  Rewrite(FSaida);
  while not EOF(Arq) do
  begin
    Fcount := 0;
    nome := '';
    Readln (Arq, registro);
    if copy(registro,1, 8) = 'TOT.UNI.' then
    begin
      Fcount := 12;
      for i:= Fcount to Length(registro) do
      begin
        S := copy(registro,i,1);
        try
          StrToInt(S);
          Break;
        except
          nome := nome + S;
        end;
      end;
      Fcount := Fcount+Length(nome);
      W := copy(registro, Fcount, Length(registro));
      qtde := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(qtde);
     { if copy(registro,Fcount,1) = '0' then
      begin
        qtde := copy(registro,Fcount,3);
        Fcount := Fcount+4;
      end
      else
      begin
        qtde := copy(registro,Fcount,2);
        Fcount := Fcount+3;
      end;}
      W := copy(registro, Fcount, Length(registro));
      pagto := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(pagto);
      W := copy(registro, Fcount, Length(registro));
      contrib := copy(registro, Fcount, Pos(' ', W));
      Fcount := Fcount + Length(contrib);
      W := copy(registro, Fcount, Length(registro));
      pat := copy(registro, Fcount, 10);
      W := (copy(STR_AddSpaces(nome,30),1,30)+';'+qtde+';'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(pagto,'.'),',','.'),14)+';'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(contrib,'.'),',','.'),14)+';'+
      STR_AddZeros(STR_SubstChar(STR_RemoveChar(pat,'.'),',','.'),14) );
      Application.ProcessMessages;
      Writeln(FSaida,W);
    end;  
  end;
  Closefile(Arq);
  CloseFile(FSaida);
end;

procedure TFrm_Mov_2029.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];

  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

procedure TFrm_Mov_2029.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     Exit;
  if Dlg_YesNo('Tem certeza que deseja excluir a Patronal?', self) then
  begin
    dtreferencia_pat := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    cod_empresafolha := cbx_cod_empresafolha.valueItem;
    if DB_ExecSQL('delete from tbl_patronal where dtreferencia_pat = '+dtreferencia_pat+
    ' and cod_empresaPatronal = '+cod_empresafolha+' and cod_statusAtivo = '+cbx_cod_statusAtivo.valueitem) then
    begin
      Dlg_Ok('Patronal Excluida com Sucesso!',self);
      GeraAuditoria(0,'0','Patronal Excluida da Empresa '+cbx_cod_empresafolha.Text, cbx_cod_mes.Text+'/'+edt_ano.Text+' - '+cbx_cod_statusAtivo.Text, 0);
    end
    else
      Dlg_Alerta('Erro ao Excluir a Patronal!',self);
  end;
end;

end.



