unit Mov_2078;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ADODB;

type
  TFrm_Mov_2078 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    pgb_gam: TProgressBar;
    SaveDialog: TSaveDialog;
    Panel12: TPanel;
    edt_dtvencim: TDCDateEdit;
    btn_gerarGam: TPDJButton;
    lbl_linha: TLabel;
    btn_baixa: TPDJButton;
    dlg_leitura: TOpenDialog;
    edt_dtenvio: TDCDateEdit;
    mem_log: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_gerarGamClick(Sender: TObject);
    procedure btn_baixaClick(Sender: TObject);
    procedure cbx_cod_mesChange(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaDados;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia : String ;
    WMensag: String;
  end;

var
  Frm_Mov_2078: TFrm_Mov_2078;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_obj,
  dtm_principal2, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_2078.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Atualização de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_2078.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.text := FormatDateTime('yyyy',date);
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  AtualizaDados;  
end;

procedure TFrm_Mov_2078.AtualizaDados;
begin
  if (cbx_cod_mes.Text <> '') and (edt_ano.Text <> '') then
  begin
    DB_OpenSQL('select dtenvio_flh, dtVencimento_flh from tbl_lotefolhadescontos'+
    ' where dtreferencia_flh >= '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and cod_empresafolha = 99');
    edt_dtvencim.Date := Tab.fieldByName('dtVencimento_flh').AsDateTime;
    edt_dtenvio.Date := Tab.fieldByName('dtenvio_flh').AsDateTime;
    if edt_dtvencim.Text <> '' then
      edt_dtvencim.Enabled := false
    else
      edt_dtvencim.Enabled := true;  
  end;
end;


procedure TFrm_Mov_2078.btn_gerarGamClick(Sender: TObject);
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
  if edt_dtenvio.Text <> '' then
  begin
    Dlg_Alerta('GAM já gerada para este periodo!',self);
    Exit;
  end;
  SaveDialog.InitialDir := 'W:\GAM\';
  SaveDialog.filename := 'GAM_'+edt_ano.Text+STR_AddZeros(cbx_cod_mes.valueitem,2)+'.txt' ;
  if not SaveDialog.execute then
    exit ;
  pgb_gam.visible := true ;
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
    if recordcount <= 0 then
    begin

    end;
    lbl_linha.visible := true ;
    lbl_linha.Caption := 'Abrindo Tabelas para Geração do Arquivo Magnético';
    Application.ProcessMessages;
    open;
    int_tl := recordcount ;
    pgb_gam.Max := int_tl ;
    pgb_gam.Position := wtl ;
    NomeOld := FieldByName('nome_ben').AsString ;
    while not eof do begin
      with pgb_gam do
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
        with pgb_gam do
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
  Dlg_Ok('GAM gerada com sucesso',self);
  pgb_gam.visible := false ;
  Fdt_principal2.spc_cons_adm_descontofolhaGAM.close;
  EscreveLog(btn_gerarGam.name);
end;

procedure TFrm_Mov_2078.btn_baixaClick(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, i, j, TamanhoArq: Integer;
  Executado : boolean;
  Linha, nomearquivo, STR_dtReferencia : String;
  Linhas, Colunas:TStringList;
begin
  inherited;
  if edt_dtvencim.Enabled then
  begin
    Dlg_Alerta('Não existe GAM gerada para este periodo!',self);
    Exit;
  end;
  Linhas := TStringList.Create;
  Colunas := TStringList.Create;
  dlg_leitura.InitialDir:= 'W:\GAM\BAIXA';
  dlg_leitura.Filter:= 'csv|*.csv';

  if not dlg_leitura.execute then
    exit ;
  nomearquivo := dlg_leitura.filename;
  if (GetFileExt(nomearquivo) <> '.CSV') and (GetFileExt(nomearquivo) <> '.csv') then
  begin
    Dlg_Erro('Somente extensão do Arquivo tipo CSV!', Self);
    Exit;
  end;
  try
    Linhas.LoadFromFile(nomearquivo); //Carregando arquivo
    for i := 1 to Pred(Linhas.Count) do
    begin
      {Transformando os dados das colunas em Linhas}
      Colunas.text := StringReplace(Linhas.Strings[i],';',#13,[rfReplaceAll]);
      //ShowMessage(Colunas.Strings[5]+' - '+Colunas.Strings[16]+' - '+Colunas.Strings[33]);
      if Colunas.Strings[16] = 'QUITADO' then
      begin
        DB_OpenSQL('select round(sum(vldesconto_adf),2) as vldesconto_adf from vw_descontos'+
        ' where cod_beneficiario = '+Colunas.Strings[5]+
        ' and dtreferencia_flh = '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''' and cod_sitdesconto = 6');
        if ( tab.FieldByName('vldesconto_adf').AsFloat - 0.05 <= StrToFloat(Colunas.Strings[33]))
        and ( tab.FieldByName('vldesconto_adf').AsFloat + 0.05 >= StrToFloat(Colunas.Strings[33])) then
        begin
          //LOG
          mem_log.Lines.Add(Colunas.Strings[4]+' - Valor: '+Colunas.Strings[33]+' BAIXADO');
          // Atualiza tabelas
          DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 106, vlpago_par = valorpagar_par, dtsitdesconto_par = getdate(),'+
          ' dtpagto_par = getdate() from tbl_descontofolha d where d.cod_descontofolha = tbl_parcelamento.cod_descontofolha and dtvencimento_par = '''+
          +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
          ' and cod_beneficiario = '+Colunas.Strings[5]+
          ' and tbl_parcelamento.cod_sitdesconto = 6');

          DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 106, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(),'+
          ' vlpago_flh = vldesconto_adf where dtreferencia_flh = '''+
          +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
          ' and cod_beneficiario = '+Colunas.Strings[5]+
          ' and cod_sitdesconto = 6');
        end
        else
          mem_log.Lines.Add(Colunas.Strings[4]+' - Valor: '+Colunas.Strings[33]+' NÃO BAIXADO - DIVERGENCIA DE VALOR ');
      end
      else
        mem_log.Lines.Add(Colunas.Strings[4]+' - Valor: '+Colunas.Strings[33]+' NÃO BAIXADO - '+Colunas.Strings[16]);
    end;
  finally
    Linhas.Free;
    Colunas.Free;
  end;
end;

procedure TFrm_Mov_2078.cbx_cod_mesChange(Sender: TObject);
begin
  inherited;
  AtualizaDados;
end;

end.





