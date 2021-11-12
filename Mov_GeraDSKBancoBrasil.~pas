unit Mov_GeraDSKBancoBrasil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ADODB;

type
  TFrm_Mov_GeraDSKBancoBrasil = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_geraDisqueteDescBB: TPDJButton;
    SaveDialog: TSaveDialog;
    Panel12: TPanel;
    edt_dtvencim: TDCDateEdit;
    Panel1: TPanel;
    edt_dtlimite: TDCDateEdit;
    Panel4: TPanel;
    edt_dtrecibo: TDCDateEdit;
    Label2: TLabel;
    edt_m1: TDCEdit;
    edt_m2: TDCEdit;
    edt_m3: TDCEdit;
    edt_m4: TDCEdit;
    edt_m5: TDCEdit;
    edt_m6: TDCEdit;
    Label1: TLabel;
    Label3: TLabel;
    Panel5: TPanel;
    edt_seq_bco: TDCEdit;
    edt_nossonumero: TDCEdit;
    ADOImasfWeb: TADOConnection;
    Qry_Web: TADOQuery;
    btn_enviarWeb: TPDJButton;
    btn_gerarGam: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_geraDisqueteDescBBClick(Sender: TObject);
    procedure edt_dtreciboExit(Sender: TObject);
    procedure btn_enviarWebClick(Sender: TObject);
    procedure btn_gerarGamClick(Sender: TObject);
  private
    { Private declarations }
    function DB_ExecSQLWeb(wSQL : String): Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia : String ;
    WMensag: String;
  end;

var
  Frm_Mov_GeraDSKBancoBrasil: TFrm_Mov_GeraDSKBancoBrasil;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_obj,
  dtm_principal2, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_GeraDSKBancoBrasil.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Atualização de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_GeraDSKBancoBrasil.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.text := FormatDateTime('yyyy',date);
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
end;

function TFrm_Mov_GeraDSKBancoBrasil.DB_ExecSQLWeb(wSQL : String): Boolean ;
begin
  try
    with Qry_Web do begin
      SQL.Clear;
      SQL.Add(wSQL);
      ExecSQL;
      Close;
      SQL.Clear;
      Result := true ;
    end;
  except
    Result := False ;
 //   ShowMessage(ReleaseException);
  end;
end;

procedure TFrm_Mov_GeraDSKBancoBrasil.btn_geraDisqueteDescBBClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  s, wn : string ;
  wtl, wtotnome, int_tl, n : integer ;
  wvl : double ;
begin
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvencim.name, 'A Data de Vencimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtlimite.name, 'A Data de Pagamento Atrasado deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtrecibo.name, 'A Data do Recibo mês deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  if edt_m1.Text = '' then
     begin
     Dlg_Alerta('Confirme a Data de Recibo mês!', self);
     Exit;
     end;
  SaveDialog.filename := 'remessa.txt' ;
  if not SaveDialog.execute then
    exit ;
  ProgressBar1.visible := true ;
  wtl := 4 ;
  wtotnome:= 0;
  lbl_linha.caption := 'Preparando para gerar o arquivo TXT';
  Application.ProcessMessages;
  str_arquiventrad := SaveDialog.filename ;
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  with Fdt_principal2.spc_cons_adm_descontofolha06 do begin
    close;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@cod_empresafolha').AsString := '99';
    lbl_linha.visible := true ;
    lbl_linha.Caption := 'Abrindo Tabelas para Geração do Arquivo Magnético';
    Application.ProcessMessages;
    open;
    int_tl := recordcount ;
    ProgressBar1.Max := int_tl ;
    DB_OpenSQL('select * from tbl_parametro');
    Writeln (byt_nameofthfile, '01319090005816033017027000000INSTITUTO MUNICIP. ASSIST.SAUDE FUNCIONALISMOI.M.A.S.F.01RUA DOM LUIZ, 201 NOVA PETROPOLIS                           09770290S. BERNARDO DO CAMPO'+STR_AddZeros(Tab.FieldByName('sequencialremessa').AsString, 7)+'S    CBR454                                                2276147   ');
    DB_ClearSQL;
    DB_ExecSQL('update tbl_parametro set sequencialremessa = sequencialremessa + 1');
    Writeln (byt_nameofthfile, '021111Ate o vencimento, pagavel em qualquer banco / agencia       Apos o dia '+edt_dtvencim.text+' cobrar multa de 3,00 %                Apos o dia '+edt_dtvencim.text+' pagavel somente no BANCO DO BRASIL    Apos o dia '+edt_dtlimite.text+' pagavel somente no IMASF                  ');
//    Writeln (byt_nameofthfile, '021111Nao aplicar juros ou correcao monetaria                                                                                                                                                                                                             ');

//Antes Robson
//    Writeln (byt_nameofthfile, '03111Valido como recibo para carteirinhas com a informacao Recibo Mes ate '+edt_dtrecibo.text+' Guarde cuidadosamente este recibo para a declaracao do IRPF 2003                                                                                                     ');
//    Writeln (byt_nameofthfile, '03111IMPORTANTE: Informamos que a partir desta data, o IMASF NAO fara parcelamentos  de Contribuicao, por impedimento legal. Os atuais parcelamentos deverao ser pagos juntamente com a Contribuicao do mes.                                              ');

//Após Robson
    Writeln (byt_nameofthfile, '03111' + STR_AddSpaces2(edt_m1.text,80) + STR_AddSpaces2(edt_m2.text,80) + STR_AddSpaces2(edt_m3.text,80) + '     ');
    Writeln (byt_nameofthfile, '03111' + STR_AddSpaces2(edt_m4.text,80) + STR_AddSpaces2(edt_m5.text,80) + STR_AddSpaces2(edt_m6.text,80) + '     ');
    ProgressBar1.Position := wtl ;
    while not eof do begin
      with ProgressBar1 do
        position := position + 1 ;
      S := '04111';
      n := 1 ;
/////      S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+' - '+
/////      FieldByName('nomeTxt_tar').AsString+' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79);
      if FieldByName('descricao_flh').AsString <> '' then
        S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+'-'+FieldByName('descricao_flh').AsString + ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79)
      else
        if FieldByName('nparcela_par').AsString <> '' then
          S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+'-'+' PARCELAMENTO '+
          FieldByName('parcelaN_par').AsString+'/'+FieldByName('Nparcela_par').AsString+
          ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79)
        else
          S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+' - '+
        FieldByName('nomeTxt_tar').AsString+' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79);
      wvl := FieldByName('vldesconto_adf').AsFloat ;
      wn := FieldByName('nossonumero_flh').AsString ;
      next;
      while ((Fdt_principal2.spc_cons_adm_descontofolha06.FieldByName('nossonumero_flh').AsString = wn) and (not eof)) do begin
        with ProgressBar1 do
          position := position + 1 ;
        if FieldByName('descricao_flh').AsString <> '' then
          S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+'-'+FieldByName('descricao_flh').AsString + ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79)
        else
          if FieldByName('nparcela_par').AsString <> '' then
            S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+'-'+' PARCELAMENTO '+
            FieldByName('parcelaN_par').AsString+'/'+FieldByName('Nparcela_par').AsString+
            ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79)
          else
            S := S + STR_AddSpaces(FieldByName('cod_tarifa').AsString+' - '+
        FieldByName('nomeTxt_tar').AsString+' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat), 79);
        wvl := wvl + FieldByName('vldesconto_adf').AsFloat ;
        wn := FieldByName('nossonumero_flh').AsString ;
        next;
        inc(n);
        if n >= 3 then begin /// Somente 3 por Registros
          S := S + '    ';
          inc(wtl) ;
          S := STR_AddSpaces(s, 249);
          Writeln (byt_nameofthfile, S);
          S := '04111';
          n := 0 ;
        end;
      end;
      if not eof then
        Prior;
      S := STR_AddSpaces(s, 249);
      inc(wtl) ;
//* Antes Robson
      if trim(s) <> '04111' then
         Writeln (byt_nameofthfile, S);
//*      S := '101';
      S := '111';
      S := S + STR_AddZeros(STR_RemoveChars(FieldByName('cpf_ben').AsString),15) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('nome_ben').AsString,59)) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('enderecocor_ben').AsString+'-'+FieldByName('bairrocor_ben').AsString,59)) ;
      S := S + STR_AddZeros(STR_RemoveChars(FieldByName('cepcor_ben').AsString),8) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('cidadecor_ben').AsString,17)) ;
      S := S + FieldByName('sigla_uf').AsString ;
      S := S + FormatDateTime('ddmmyy',date) ; /// dt. remessa
      S := S + FormatDateTime('ddmmyy',edt_dtvencim.Date) ;
      S := S + 'NDS' ;
//*      S := S + STR_AddZeros(FieldByName('nossonumero_flh').AsString,12) ;
      S := S + STR_AddZeros(FieldByName('nossonumero_flh').AsString,17) ;
//*      S := S + STR_AddSpaces(STR_AddZeros(FieldByName('inscricao_ben').AsString,5)+'-'+FieldByName('titulacartei_ben').AsString, 14);/////+' - '+FieldByName('cod_tarifa').AsString,15) ;
      S := S + STR_AddZeros(Copy(FieldByName('nossonumero_flh').AsString,8,10),10);
      S := S + '09000000000000000' ; // tipo de moeda
      S := S + STR_AddZeros(floattostr(StrToFloat(FormatFloat('#########0.00',wvl))*100),15);
//      S := S + STR_AddZeros(FloatToStr(Int(StrToFloat(FormatFloat('#########0.00',wvl))*100)),15) ;
      S := S + '00      00' ;
      Writeln (byt_nameofthfile, S);
      inc(wtl) ;
      inc(wtotnome) ;
//      lbl_linha.caption := 'Gravando lançamento ' + inttostr(wtl) + ' de ' + IntToStr (int_tl*2);
      lbl_linha.caption := 'Gravando ' + inttostr(wtotnome) + ' registros';
      Application.ProcessMessages;
      Next ;
    end;
  end;
  Writeln (byt_nameofthfile, STR_AddSpaces2('99000000000'+STR_AddZeros(str_inttostr(wtl),6),250));
  closefile (byt_nameofthfile);
  DB_ExecSQL('update tbl_loteFolhaDescontos set dtenvio_flh = getdate() '+
  ' where cod_empresafolha = 99 and dtreferencia_flh = '+DB_FormatDataSQL('01/'+
  cbx_cod_mes.valueItem+'/'+edt_ano.text,ftdate));

  showmessage ('Processo de gravação efetuado com sucesso '+str_arquiventrad);
  ProgressBar1.visible := false ;
  Fdt_principal2.spc_cons_adm_descontofolha06.close;
  EscreveLog(btn_geraDisqueteDescBB.name);
 inherited ;

end;

procedure TFrm_Mov_GeraDSKBancoBrasil.edt_dtreciboExit(Sender: TObject);
var
  WAno: Integer;
begin
  inherited;
  WAno:= StrToInt(Edt_ano.Text);
  WAno:= WAno + 1;
  edt_m1.Text:= 'Valido como recibo para carteirinhas com a informacao Recibo Mes ate '+edt_dtrecibo.text;
  edt_m2.Text:= 'Guarde cuidadosamente este recibo para a declaracao do IRPF ' + IntToStr(WAno) + '               ';
  edt_m3.Text:= '                                                                                ';
  edt_m4.Text:= 'IMPORTANTE:Informamos que a partir desta data, o IMASF NAO fara parcelamentos de';
  edt_m5.Text:= 'Contribuicao,  por impedimento legal. Os  atuais parcelamentos deverao ser pagos';
  edt_m6.Text:= 'juntamente com a Contribuicao do mes.';
  DB_OpenSQL('select * from tbl_parametro');
  edt_seq_bco.Text:= Tab.FieldByName('sequencialremessa').AsString;
  edt_nossonumero.Text:= '2276147' + FormatFloat('0000000000',Tab.FieldByName('nossonumeroboleto').Value);
end;

procedure TFrm_Mov_GeraDSKBancoBrasil.btn_enviarWebClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvencim.name, 'A Data de Vencimento deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  try
    ADOImasfWeb.Connected := true;
  except
    Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
    Exit;
  end;
  if DB_OpenSQL('select f.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.nome_ben, sum(f.vldesconto_adf) as ''vldesconto_adf'','+
  ' m.nome_mes+''/''+cast(year(dtreferencia_flh)as char(4)) as ''referencia'',f.nossonumero_flh,'+
  ' replace(replace(b.cpf_ben,''.'',''''),''-'','''') as cpf_ben,'+
  ' CASE WHEN (b.numerocor_ben > 0) THEN b.enderecocor_ben + '', '' + CAST(b.numerocor_ben AS varchar) + '' '' +'+
  ' b.complementocor_ben ELSE b.enderecocor_ben END AS enderecocor_ben, b.bairrocor_ben, b.cepcor_ben, c.cidade_cep as cidadecor_ben,'+
  ' u.sigla_uf, case when t.cod_tarifa = 615 then ''Despesas de farmacia'' else ''Despesas de contribuição'' end as Tarifa'+
  ' into #tmp_boleto'+
  ' from tbl_descontofolha f, tbl_beneficiario b, tbl_mes m, tbl_sitdesconto s, tbl_uf u, tbl_tarifa t, tbl_cidadeCEP c'+
  ' where f.cod_beneficiario = b.cod_beneficiario and b.cd2_uf = u.cod_uf and f.cod_tarifa = t.cod_tarifa'+
  ' and c.cod_cidadeCEP = b.cod_cidadecorCEP  and m.cod_mes = month(f.dtreferencia_flh)'+
  ' and s.cod_sitdesconto = f.cod_sitdesconto and s.cod_sitdesconto = 1 and f.cod_statusenvio is null'+
  ' and f.dtreferencia_flh >= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and f.dtreferencia_flh <= '''+
  cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and f.cod_empresafolha = 99 and f.nossonumero_flh is not null'+
  ' and not exists ( select cod_descontofolha from tbl_parcelamento p where p.cod_descontofolha = f.cod_descontofolha )'+
  ' group by f.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.nome_ben, m.nome_mes,'+
  ' f.dtreferencia_flh, f.nossonumero_flh, b.cpf_ben, b.enderecocor_ben, b.bairrocor_ben, b.cepcor_ben, c.cidade_cep,'+
  ' u.sigla_uf, t.cod_tarifa, b.numerocor_ben, b.complementocor_ben'+
  ' union'+
  ' select f.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.nome_ben, sum(p.valorpagar_par) as ''vldesconto_adf'', m.nome_mes+''/''+'+
  ' cast(year(dtreferencia_flh)as char(4)) as ''referencia'', p.nossonumero_par, replace(replace(b.cpf_ben,''.'',''''),''-'','''') as cpf_ben,'+
  ' CASE WHEN (b.numerocor_ben > 0) THEN b.enderecocor_ben + '', '' + CAST(b.numerocor_ben AS varchar) + '' '' +b.complementocor_ben '+
  ' ELSE b.enderecocor_ben END AS enderecocor_ben, b.bairrocor_ben, b.cepcor_ben, c.cidade_cep as cidadecor_ben, u.sigla_uf,'+
  ' case when t.cod_tarifa = 615 then ''Despesas de farmacia'' else ''Despesas de contribuição'' end as Tarifa'+
  ' from tbl_descontofolha f, tbl_beneficiario b, tbl_mes m, tbl_sitdesconto s, tbl_parcelamento p, tbl_uf u,'+
  ' tbl_tarifa t, tbl_cidadeCEP c where f.cod_beneficiario = b.cod_beneficiario and p.cod_sitdesconto = s.cod_sitdesconto'+
  ' and b.cd2_uf = u.cod_uf and f.cod_tarifa = t.cod_tarifa and p.cod_sitdesconto = 1 and p.cod_statusenvio is null'+
  ' and c.cod_cidadeCEP = b.cod_cidadecorCEP  and p.dtvencimento_par >= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and m.cod_mes = month(p.dtvencimento_par)  '+
  ' and p.dtvencimento_par <= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and f.cod_empresafolha = 99 and p.nossonumero_par is not null'+
  ' and p.cod_descontofolha = f.cod_descontofolha group by f.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.nome_ben, m.nome_mes,'+
  ' f.dtreferencia_flh, p.nossonumero_par, b.cpf_ben, b.enderecocor_ben, b.bairrocor_ben, b.cepcor_ben,  c.cidade_cep,'+
  ' u.sigla_uf, t.cod_tarifa, b.numerocor_ben,b.complementocor_ben order by f.nossonumero_flh'+
  ' select cod_beneficiario, inscricao_ben, titulacartei_ben, nome_ben, cpf_ben, enderecocor_ben, bairrocor_ben, cepcor_ben, '+
  ' cidadecor_ben, sigla_uf, '''+FormatDateTime('mm/dd/yyyy',edt_dtvencim.Date)+''' as dtvencimento, '''+FormatDateTime('mm/dd/yyyy',Date)+''' as dtdocumento, '+
  ' right(''0000''+substring(nossonumero_flh,8,10),10) as numdoc, '''+FormatDateTime('mm/dd/yyyy',Date)+''' as dtprocessamento,'+
  ' nossonumero_flh, Tarifa, round(sum(vldesconto_adf),2) as vldesconto_adf, '''' as obs'+
  ' from #tmp_boleto group by  cod_beneficiario, inscricao_ben, titulacartei_ben, nome_ben, nossonumero_flh, cpf_ben,'+
  ' enderecocor_ben, bairrocor_ben, cepcor_ben, cidadecor_ben, sigla_uf, Tarifa order by nossonumero_flh') > 0 then
  begin
    ProgressBar1.Visible := true;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := Tab.RecordCount;
    //Edit1.Text := StringReplace(Qry_Imasf.FieldByName('vldesconto_adf').AsString,',','.',  [rfReplaceAll]);
    //Edit1.Text :=  Qry_Imasf.FieldByName('dtvencimento').AsString;

    if ADOImasfWeb.Connected then
    begin
      try
        DB_ExecSQLWeb('delete from tb_boleto');
      except
        Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
        Exit;
      end;
      while not tab.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        try
          DB_ExecSQLWeb('insert into tb_boleto values('+Tab.FieldByName('cod_beneficiario').AsString+','+
          Tab.FieldByName('inscricao_ben').AsString+','+Tab.FieldByName('titulacartei_ben').AsString+','''+
          Tab.FieldByName('nome_ben').AsString+''','''+Tab.FieldByName('cpf_ben').AsString+''','''+
          Tab.FieldByName('enderecocor_ben').AsString+''','''+Tab.FieldByName('bairrocor_ben').AsString+''','''+
          Tab.FieldByName('cepcor_ben').AsString+''','''+Tab.FieldByName('cidadecor_ben').AsString+''','''+
          Tab.FieldByName('sigla_uf').AsString+''','''+
          Tab.FieldByName('dtvencimento').AsString+''','''+
          //FormatDateTime('mm/dd/yyyy', Tab.FieldByName('dtvencimento').AsDateTime)+''','''+
          Tab.FieldByName('dtdocumento').AsString+''','''+
          //FormatDateTime('mm/dd/yyyy', Tab.FieldByName('dtdocumento').AsDateTime)+''','''+
          Tab.FieldByName('numdoc').AsString+''','''+
          //FormatDateTime('mm/dd/yyyy', Tab.FieldByName('dtprocessamento').AsDateTime)+''','''+
          Tab.FieldByName('dtprocessamento').AsString+''','''+
          Tab.FieldByName('nossonumero_flh').AsString+''','''+
          Tab.FieldByName('Tarifa').AsString+''','''+
          StringReplace(Tab.FieldByName('vldesconto_adf').AsString,',','.', [rfReplaceAll])+''','''+
          Tab.FieldByName('obs').AsString+''')');
        except
          Application.ProcessMessages;
          Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
          Exit;
        end;
        Tab.Next;
      end;
    end
    else begin
      Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
      Exit;
    end;
  end
  else begin
    Dlg_Alerta('Não há boletos Gerados para este mês de Referência!',self);
    Exit;
  end;
  Dlg_Ok('Boletos Carregados com sucesso na WEB',self);
  ProgressBar1.Visible := false;
  ADOImasfWeb.Connected := false;
end;

procedure TFrm_Mov_GeraDSKBancoBrasil.btn_gerarGamClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  s, NomeOld, Observacao : string ;
  wtl, wtotnome, int_tl, n : integer ;
  wValorPorNome : double ;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvencim.name, 'A Data de Vencimento deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  SaveDialog.InitialDir := 'W:\GAM\';
  SaveDialog.filename := 'GAM_'+edt_ano.Text+STR_AddZeros(cbx_cod_mes.valueitem,2)+'.txt' ;
  if not SaveDialog.execute then
    exit ;
  ProgressBar1.visible := true ;
  wtl := 4 ;
  wtotnome:= 0;
  lbl_linha.caption := 'Preparando para gerar o arquivo TXT';
  Application.ProcessMessages;
  str_arquiventrad := SaveDialog.filename ;
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  with Fdt_principal2.spc_cons_adm_descontofolhaGAM do begin
    close;
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@cod_empresafolha').AsString := '99';
    lbl_linha.visible := true ;
    lbl_linha.Caption := 'Abrindo Tabelas para Geração do Arquivo Magnético';
    Application.ProcessMessages;
    open;
    int_tl := recordcount ;
    ProgressBar1.Max := int_tl ;
    ProgressBar1.Position := wtl ;
    NomeOld := FieldByName('nome_ben').AsString ;
    while not eof do begin
      with ProgressBar1 do
        position := position + 1 ;
      //inicio do Loop

      Observacao := '';
      if FieldByName('nparcela_par').AsString <> '' then
          Observacao := FieldByName('cod_tarifa').AsString+'-'+' PARCELAMENTO '+
          FieldByName('parcelaN_par').AsString+'/'+FieldByName('Nparcela_par').AsString+
          ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat)
        else
          Observacao := FieldByName('cod_tarifa').AsString+' - '+FieldByName('nomeTxt_tar').AsString+' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat);
      wValorPorNome := FieldByName('vldesconto_adf').AsFloat ;
      NomeOld := FieldByName('nome_ben').AsString ;
      next;
      while ((Fdt_principal2.spc_cons_adm_descontofolhaGAM.FieldByName('nome_ben').AsString = NomeOld) and (not eof)) do begin
        with ProgressBar1 do
          position := position + 1 ;
        if FieldByName('nparcela_par').AsString <> '' then
          Observacao := Observacao + ', '+FieldByName('cod_tarifa').AsString+'-'+' PARCELAMENTO '+
          FieldByName('parcelaN_par').AsString+'/'+FieldByName('Nparcela_par').AsString+
          ' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat)
        else
          Observacao := Observacao + ', '+FieldByName('cod_tarifa').AsString+' - '+FieldByName('nomeTxt_tar').AsString+' R$ '+FormatFloat('###,###,##0.00',FieldByName('vldesconto_adf').AsFloat);
        wValorPorNome := wValorPorNome + FieldByName('vldesconto_adf').AsFloat ;
        NomeOld := FieldByName('nome_ben').AsString ;
        next;
      end;
      if not eof then
        Prior;
      S := '';
      S := S + STR_AddZeros(STR_RemoveChars(FieldByName('cpf_ben').AsString),14) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('nome_ben').AsString,49)) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('enderecocor_ben').AsString,79));
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('complementocor_ben').AsString,29));
      S := S + STR_AddZeros(copy(FieldByName('numerocor_ben').AsString,1,5),5);
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('bairrocor_ben').AsString,29));
      S := S + STR_AddZeros(STR_RemoveChars(FieldByName('cepcor_ben').AsString),8) ;
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('cidadecor_ben').AsString,29)) ;
      S := S + FieldByName('sigla_uf').AsString ;
      S := S + FormatDateTime('yyyymmdd',date) ; /// dt. remessa
      S := S + FormatDateTime('yyyymmdd',edt_dtvencim.Date) ;
      S := S + STR_AddZeros(floattostr(StrToFloat(FormatFloat('#########0.00',wValorPorNome))*100),15);
      S := S + Str_AnsiToAscii(STR_AddSpaces(Observacao,249)) ;
      S := S + edt_ano.Text+STR_AddZeros(cbx_cod_mes.valueitem,2);
      S := S + STR_AddZeros(FieldByName('cod_beneficiario').AsString,7);
      S := S + Str_AnsiToAscii(STR_AddSpaces(FieldByName('nome_emp').AsString,20));

      Writeln (byt_nameofthfile, S);
      inc(wtl) ;
      inc(wtotnome) ;
      lbl_linha.caption := 'Gravando ' + inttostr(wtotnome) + ' registros';
      Application.ProcessMessages;
      //NomeOld := FieldByName('nome_ben').AsString ;
      Next ;
    end;
  end;
  closefile (byt_nameofthfile);
  showmessage ('Processo de gravação efetuado com sucesso '+str_arquiventrad);
  ProgressBar1.visible := false ;
  Fdt_principal2.spc_cons_adm_descontofolhaGAM.close;
  EscreveLog(btn_geraDisqueteDescBB.name);
end;

end.





