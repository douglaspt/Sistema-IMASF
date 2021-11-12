unit Mov_2043;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList,
  DBTables, ShellAPI;

type
  TFrm_Mov_2043 = class(TFrm_Bas_TelaPadrao)
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    DataSource1: TDataSource;
    Query3cod_empresafolha: TIntegerField;
    Query3matriculadebito_seg: TIntegerField;
    Query3digitomatdeb_seg: TIntegerField;
    Query3inscricao_ben: TIntegerField;
    Query3cod_tarifa: TIntegerField;
    Query3vldesconto: TFloatField;
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PDJButton3: TPDJButton;
    PDJButton1: TPDJButton;
    dbg_itemservico: TDBGrid;
    lbl_total: TLabel;
    btn_pesquisar: TPDJButton;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    edt_aleatorio: TEdit;
    edt_ver: TEdit;
    SpeedButton1: TSpeedButton;
    btn_cont: TPDJButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btn_exportar: TPDJButton;
    SaveDialog: TSaveDialog;
    btn_ajustar: TPDJButton;
    Query3cod_statusbaixa: TStringField;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_statusAtivo: TDCComboBox;
    stg_audi: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_contClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edt_verEnter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_exportarClick(Sender: TObject);
    procedure btn_ajustarClick(Sender: TObject);
    procedure dbg_itemservicoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    ListItem: TListItem;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2043: TFrm_Mov_2043;
  ChaveExp: Integer;
  registro: string;
  WVALDESC: Double;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_Data, FUN_STR, Fun_Desconto;
{$R *.DFM}

function TamanhoArquivo(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR);
  end;
end;

function DataDeCriacao(Arq: string): TDateTime;
var
  ffd: TWin32FindData;
  dft: DWORD;
  lft: TFileTime;
  h: THandle;
begin
  h := Windows.FindFirstFile(PChar(Arq), ffd);
  try
        if (INVALID_HANDLE_VALUE <> h) then begin
          FileTimeToLocalFileTime(ffd.ftCreationTime, lft);
          FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
          Result := FileDateToDateTime(dft);
        end;
  finally
        Windows.FindClose(h);
  end;
end;

procedure TFrm_Mov_2043.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes','nome_mes');
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.Text := FormatDateTime('yyyy',date);
  btn_ajustar.Visible := Acs_AcessoEspecial('204301');
end;

procedure TFrm_Mov_2043.PDJButton3Click(Sender: TObject);
var
  nomearquivo, Fdtreferencia : string ;
  Arq : TextFile;
  TlItem, TlLinha, SeqItm, TamanhoArq, i, FSituacao: Integer ;
  DataArq: TDateTime;
  aList : TStringList;
begin
  inherited;
  //W:\Baixas\SCBBAIX.TXT

  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_statusAtivo.name, 'A Situação deve ser preenchida !', VLD_Preenchido )) then
    Exit;

  if not dlg_leitura.execute then
    exit ;
  nomearquivo := dlg_leitura.filename;
  TamanhoArq:= TamanhoArquivo(nomearquivo);
  DataArq:= DataDeCriacao(nomearquivo);
  WVALDESC:= 0;

// Abrir arquivo selecionado, apenas para ver qual código de Empresa
  AssignFile(Arq, nomearquivo);
  Reset (Arq);
  Readln (Arq, registro);

  Fdtreferencia := '''' + STR_AddZeros(cbx_cod_mes.ValueItem, 2) + '/01/' + edt_ano.text + '''';

  //Bloqueio Novo por Situação Ativo e Inativo

  if (cbx_cod_statusAtivo.valueitem = 2) and (StrToDate('01/'+STR_AddZeros(cbx_cod_mes.ValueItem, 2)+'/'+edt_ano.Text) < StrToDate('01/10/2011')) then
  begin
    Dlg_Alerta('Atenção: Carga para Inativos só é Valida a partir de Outubro de 2011',self);
    Exit
  end;
  if DB_OpenSQL('select top 1 * from tbl_baixadesconto where dtreferencia_flh = '+Fdtreferencia+
  ' and cod_empresafolha = ' +copy(registro,1,2)+' and cod_statusAtivo = '+cbx_cod_statusAtivo.valueitem) > 0 then
  begin
    Dlg_Alerta('O arquivo '+cbx_cod_statusAtivo.Text+' para este mês de referência da Empresa ' + copy(registro,1,2) + ' já foi carregado!',self);
    Exit;
  end;

// Pelo tamanho (em bytes) e pela data de criação, verifica se esse arquivo já fora processado
  if DB_OpenSQL('select * from tbl_lotebaixadesconto where tamanho_lbd = '+
  IntToStr(TamanhoArq) + ' and dtarquivo_lbd = ' + DB_FormatDataSQL(DataArq, ftDate)) > 0 then
  begin
    if not Dlg_YesNo('Atenção: Há um arquivo carregado anteriormente com o mesmo tamanho e data de criação! Deseja continuar?',self) then
      Exit;
  end;
  ProgressBar1.position := 0 ;
  ProgressBar1.Visible := true ;
  lbl_linha.visible := true ;

  //Quantidade de linhas no TXT
  aList := TStringList.Create;
  try
    aList.LoadFromFile(nomearquivo);
    ProgressBar1.max := aList.Count;
  finally
    aList.Free;
  end;

  Reset (Arq);
  DB_BeginTrans;
  while not EOF(Arq) do
  begin
    with ProgressBar1 do
      begin
      position := position + 1;
      end;
    Application.ProcessMessages;
    lbl_linha.Caption:= 'Total de Registros Lidos/Carregados : '+IntToStr(ProgressBar1.Position);
    Readln (Arq, registro);
    if Length(registro) = 31 then
       begin
       DB_ExecSQL('insert into tbl_baixadesconto (dtreferencia_flh, cod_empresafolha,'+
       ' matriculadebito_seg, digitomatdeb_seg, inscricao_ben, cod_tarifa, vldesconto, cod_statusbaixa, cod_statusAtivo)'+
       ' values ('+Fdtreferencia+','+copy(registro,1,2)+','+copy(registro,3,6)+','+copy(registro,9,1)+
       ','+copy(registro,10,5)+','+copy(registro,15,4)+','+copy(registro,19,13)+', 0,'+cbx_cod_statusAtivo.valueitem+')');
       WVALDESC:= WVALDESC + StrToFloat(STR_SubstChar(copy(registro,19,13),'.',','));
       end
    else
    begin
      DB_ExecSQL('insert into tbl_baixadesconto (dtreferencia_flh, cod_empresafolha,'+
      ' matriculadebito_seg, digitomatdeb_seg, inscricao_ben, cod_tarifa, vldesconto, cod_statusbaixa, cod_statusAtivo)'+
      ' values ('+Fdtreferencia+','+copy(registro,1,2)+','+copy(registro,3,5)+','+copy(registro,8,1)+
      ','+copy(registro,9,5)+','+copy(registro,14,4)+','+copy(registro,18,13)+', 0,'+cbx_cod_statusAtivo.valueitem+')');
      WVALDESC:= WVALDESC  + StrToFloat(STR_SubstChar(copy(registro,18,13),'.',','));
    end;
  end;
    DB_ExecSQL('insert into tbl_lotebaixadesconto (dtreferencia_lbd, cod_empresafolha,'+
               ' dtsistema_lbd, cod_usuario, dtarquivo_lbd, tamanho_lbd, totalregistro_lbd, valortotal_lbd, cod_statusAtivo)'+
               ' values ('+Fdtreferencia+','+copy(registro,1,2)+ ', getdate(),'+ IntToStr(FCod_Usuario) +
               ',' + DB_FormatDataSQL(DataArq, ftDate)+',' + IntToStr(TamanhoArq) + ',' + IntToStr(ProgressBar1.Max) + ',' +
               DB_FormatDataSQL(WVALDESC, ftFloat)+','+cbx_cod_statusAtivo.valueitem+')');

  //faz a checagem
    DB_OpenSQL('select sum(vldesconto) from dbo.tbl_baixadesconto where dtreferencia_flh = '+
    Fdtreferencia + ' and cod_empresafolha = ' + copy(registro,1,2)+' and cod_statusAtivo = '+cbx_cod_statusAtivo.valueitem);
    WVALDESC:= Tab.Fields[0].Value;

    //verifica para não carregar o mesmo arquivo para situação diferente
    if cbx_cod_statusAtivo.ValueItem = 1 then
      Fsituacao := 2
    else
      FSituacao := 1;
    DB_OpenSQL('select isnull(sum(vldesconto),0) as vldesconto from dbo.tbl_baixadesconto where cod_empresafolha = '+
    copy(registro,1,2)+' and dtreferencia_flh = ' +Fdtreferencia+' and cod_statusAtivo = '+IntToStr(FSituacao));
    edt_ver.text:= FormatFloat('###,###,###,###', WVALDESC);
    edt_aleatorio.Text:= FormatFloat('###,###,###,###', Tab.Fields[0].Value);
    if edt_ver.text = edt_aleatorio.Text then
    begin
      if Dlg_YesNo('Atenção: Gerado carga no mesmo valor da Empresa ' +copy(registro,1,2)+
      ' , deseja continuar?',self) then
      begin
        edt_ver.Visible:= True;
        edt_ver.SetFocus;
        Exit;
      end
      else
      begin
        //cancela as transacoes
        DB_RollBack;
        Exit;
      end
    end;
    //verifica se ja foi realizada uma carga de ATIVO com o mesmo valor em um periodo de 36 meses
    DB_OpenSQL('select top 36 dtreferencia_flh, sum(vldesconto) from dbo.tbl_baixadesconto where cod_empresafolha = '+
    copy(registro,1,2)+' and dtreferencia_flh < ' +Fdtreferencia+' and cod_statusAtivo = 1'+
    ' group by dtreferencia_flh order by dtreferencia_flh desc');
    edt_ver.text:= FormatFloat('###,###,###,###', WVALDESC);
    while not tab.Eof do
    begin
      edt_aleatorio.Text:= FormatFloat('###,###,###,###', Tab.Fields[1].Value);
      if edt_ver.text = edt_aleatorio.Text then
        if Dlg_YesNo('Atenção: Gerado carga de Ativo no mesmo valor da Empresa ' + copy(registro,1,2) +
        ' na referência ' + Tab.Fields[0].AsString + ', deseja continuar?',self) then
        begin
          edt_ver.Visible:= True;
          edt_ver.SetFocus;
          Exit;
        end
        else
        begin
          //cancela as transacoes
          DB_RollBack;
          Exit;
        end
      else
        tab.Next;
    end;

    //verifica se ja foi realizada uma carga de INATIVO com o mesmo valor em um periodo de 36 meses
    DB_OpenSQL('select top 36 dtreferencia_flh, sum(vldesconto) from dbo.tbl_baixadesconto where cod_empresafolha = '+
    copy(registro,1,2)+' and dtreferencia_flh < ' +Fdtreferencia+' and cod_statusAtivo = 2'+
    ' group by dtreferencia_flh order by dtreferencia_flh desc');
    edt_ver.text:= FormatFloat('###,###,###,###', WVALDESC);
    while not tab.Eof do
    begin
      edt_aleatorio.Text:= FormatFloat('###,###,###,###', Tab.Fields[1].Value);
      if edt_ver.text = edt_aleatorio.Text then
        if Dlg_YesNo('Atenção: Gerado carga de Inativo no mesmo valor da Empresa ' + copy(registro,1,2) +
        ' na referência ' + Tab.Fields[0].AsString + ', deseja continuar?',self) then
        begin
          edt_ver.Visible:= True;
          edt_ver.SetFocus;
          Exit;
        end
        else
        begin
          //cancela as transacoes
          DB_RollBack;
          Exit;
        end
      else
        tab.Next;
    end;
   btn_contclick(Sender);
end;

procedure TFrm_Mov_2043.PDJButton1Click(Sender: TObject);
var
  vl : double;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  DB_ExecSQL('update tbl_lotefolhadescontos set dtbaixaautomatica_flh = getdate()'+
  ' where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and dtbaixaautomatica_flh is null'+
  ' and cod_empresafolha in (select distinct cod_empresafolha  from tbl_baixadesconto '+
  ' where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_statusbaixa = 0 and cod_tarifa <> 575)');

  Query1.Close;
  Query1.sql.Clear;
  Query1.sql.Add('select dtreferencia_flh, cod_empresafolha, matriculadebito_seg, digitomatdeb_seg,'+
  ' inscricao_ben, cod_tarifa, vldesconto, cod_statusbaixa from tbl_baixadesconto where dtreferencia_flh = '''+
  +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_statusbaixa = 0 and cod_tarifa <> 575 '+
  ' order by cod_empresafolha, matriculadebito_seg, cod_tarifa');
  Query1.open;
  Query1.Prior;
  ProgressBar1.position := 0 ;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Visible := true ;
  lbl_linha.visible := true ;
  while not Query1.Eof do
  begin
    with ProgressBar1 do
      begin
      position := position + 1
      end;
    lbl_linha.Caption:= 'Total de Registros : '+IntToStr(ProgressBar1.position);
    Application.ProcessMessages;
    Query2.Close;
    Query2.sql.Clear;
    Query2.sql.Add('select sum(vldesconto_adf) as vldesconto_adf from tbl_descontofolha Where dtreferencia_flh = '''+
    cbx_cod_mes.valueitem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
    ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
    ' and ((cod_sitdesconto = 1) or (cod_sitdesconto = 101)) and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString+
    ' and cod_descontofolha not in (select cod_descontofolha from tbl_parcelamento)');
    Query2.open;
    vl := Query2.FieldByName('vldesconto_adf').AsFloat;
    DB_BeginTrans;
    try
      if (Query1.FieldByName('vldesconto').AsFloat - 0.05 <= Query2.FieldByName('vldesconto_adf').AsFloat)
      and (Query1.FieldByName('vldesconto').AsFloat + 0.05 >= Query2.FieldByName('vldesconto_adf').AsFloat) then
      begin
        DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(), vlpago_flh = vldesconto_adf where dtreferencia_flh = '''+
        +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
        ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
        ' and ((cod_sitdesconto = 1) or (cod_sitdesconto = 101)) and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
        DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = '''+
        +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
        ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
        ' and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
      end else begin
        Query2.Close;
        Query2.sql.Clear;
        Query2.sql.Add('select sum(valorpagar_par) as vldesconto_adf from tbl_parcelamento p, tbl_descontofolha d where d.cod_descontofolha = p.cod_descontofolha and p.dtvencimento_par = '''+
        cbx_cod_mes.valueitem+'/01/'+edt_ano.Text+''' and d.cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
        ' and d.matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
        ' and ((p.cod_sitdesconto = 1) or (p.cod_sitdesconto = 101)) and d.cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
        Query2.open;
        vl := vl + Query2.FieldByName('vldesconto_adf').AsFloat;
        if (Query1.FieldByName('vldesconto').AsFloat - 0.05 <= Query2.FieldByName('vldesconto_adf').AsFloat)
        and (Query1.FieldByName('vldesconto').AsFloat + 0.05 >= Query2.FieldByName('vldesconto_adf').AsFloat) then
        begin
          DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 101, vlpago_par = valorpagar_par, dtsitdesconto_par = getdate(), dtpagto_par = getdate() from tbl_descontofolha d where d.cod_descontofolha = tbl_parcelamento.cod_descontofolha and dtvencimento_par = '''+
          +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
          ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
          ' and tbl_parcelamento.cod_sitdesconto = 1 and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
          DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = '''+
          +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
          ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
          ' and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
        end else begin
          if (Query1.FieldByName('vldesconto').AsFloat - 0.05 <= vl) and (Query1.FieldByName('vldesconto').AsFloat + 0.05 >= vl) then
          begin
            DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 101, vlpago_par = valorpagar_par, dtsitdesconto_par = getdate(), dtpagto_par = getdate() from tbl_descontofolha d where d.cod_descontofolha = tbl_parcelamento.cod_descontofolha and dtvencimento_par = '''+
            +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
            ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
            ' and tbl_parcelamento.cod_sitdesconto = 1 and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
            DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(), vlpago_flh = vldesconto_adf where dtreferencia_flh = '''+
            +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
            ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
            ' and ((cod_sitdesconto = 1) or (cod_sitdesconto = 101)) and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
            DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = '''+
            +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
            ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
            ' and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
            DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = '''+
            +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+Query1.FieldByName('cod_empresafolha').AsString+
            ' and matriculadebito_seg = '+Query1.FieldByName('matriculadebito_seg').AsString+
            ' and cod_tarifa = '+Query1.FieldByName('cod_tarifa').AsString);
          end;
        end;
      end;
      DB_Commit;
    except;
      DB_RollBack;
    end;
    Query1.Next;
  end;
  //volta situação para normal de beneficiarios suspensos por falta de pagamento
  DB_ExecSQL('EXEC spc_cont_normalizaSuspensoFaltaPagto '''+cbx_cod_mes.valueitem+'/01/'+edt_ano.Text+'''');
  GeraAuditoria(0, '0', 'Referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text, lbl_linha.Caption, 0);
end;

procedure  TFrm_Mov_2043.Pesquisar;
begin
  Query3.Close;
  Query3.sql.Clear;
  Query3.sql.Add('select cod_empresafolha, matriculadebito_seg, digitomatdeb_seg, inscricao_ben, cod_tarifa, vldesconto, cod_statusbaixa'+
  ' from dbo.tbl_baixadesconto where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
  ''' and cod_tarifa <> 575 and cod_statusbaixa in (0,2) order by cod_empresafolha, cod_tarifa, matriculadebito_seg');
  Query3.open;
  lbl_total.Caption := 'Total de Registros =  '+IntToStr(Query3.RecordCount);
end;

procedure TFrm_Mov_2043.btn_pesquisarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  Pesquisar;
  GeraAuditoria(0, '0', 'Referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text +
                ', consulta desc.c/problemas na baixa', lbl_total.Caption, 0);
end;

procedure TFrm_Mov_2043.btn_contClick(Sender: TObject);
begin
  inherited;
  //confirma
  DB_Commit;
  GeraAuditoria(StrToInt(Copy(registro,1,2)), '0', 'referência ' + cbx_cod_mes.Text + '/' +
  edt_ano.Text, lbl_linha.Caption + ', valor de R$' + FormatFloat('###,###,###,##0.00', WVALDESC), 0);
  ProgressBar1.Visible:= False;
end;

procedure TFrm_Mov_2043.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SpeedButton1.Visible:= False;
  edt_aleatorio.Visible:= False;
  edt_ver.Visible:= False;
  if edt_ver.Text <> edt_aleatorio.Text then
     if Dlg_YesNo('Senha incorreta, tem certeza que deseja continuar!',Self) then
        begin
        edt_ver.Visible:= True;
        edt_ver.SetFocus;
        end
     else
        begin
        //cancela as transacoes
        DB_RollBack;
        Exit;
        end
  else
     btn_contClick(Sender);
end;

procedure TFrm_Mov_2043.edt_verEnter(Sender: TObject);
var
  i: integer;
const
  str='1Aa2Bc3Cc4Dd5Ee6Ff7Gg8Hh9Ii0JjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
begin
  inherited;
  SpeedButton1.Visible:= True;
  edt_aleatorio.Visible:= True;
  edt_aleatorio.Text:='';
  edt_ver.Text:='';
  Randomize;
  for i:=1 to 4 do
     edt_aleatorio.Text:=edt_aleatorio.Text+str[random(length(str))+1];
end;

procedure TFrm_Mov_2043.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 3);
end;

procedure TFrm_Mov_2043.Button1Click(Sender: TObject);
var
  FResto : double;
begin
  inherited;
  DB_BeginTrans;
  Query2.Close;
  Query2.sql.Clear;
  Query2.sql.Add('select d.cod_beneficiario, d.matriculadebito_seg, d.digitomatdeb_seg, d.vldesconto_adf, d.cod_tarifa'+
  ' from tbl_descontofolha d, tbl_baixadesconto b where d.matriculadebito_seg = b.matriculadebito_seg'+
  ' and d.cod_empresafolha = b.cod_empresafolha and d.dtreferencia_flh  = b.dtreferencia_flh and d.cod_tarifa = b.cod_tarifa'+
  ' and d.dtreferencia_flh = ''10/01/2011'' and d.cod_empresafolha = 5 and d.cod_sitdesconto = 1'+
  ' and d.matriculadebito_seg not in (6527, 11829) order by d.cod_tarifa, d.matriculadebito_seg');
  Query2.open;
  while not Query2.eof do
  begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('select saldo from tbm_saldobaixa where cod_empresafolha = 5 and matriculadebito_seg = '+
    Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);
    Query1.open;
    if Query1.FieldByName('saldo').AsFloat >=  Query2.FieldByName('vldesconto_adf').AsFloat then
    begin
        DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(), '+
        ' vlpago_flh = vldesconto_adf where dtreferencia_flh = ''10/01/2011'' and cod_empresafolha = 5'+
        ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
        ' and cod_sitdesconto = 1 and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);

        DB_ExecSQL('update tbm_saldobaixa set saldo = saldo - '+DB_FormatDataSQL(Query2.FieldByName('vldesconto_adf').AsFloat, ftFloat)+
        'where cod_empresafolha = 5 and matriculadebito_seg = '+
        Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);
    end
    else
    begin
      DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(), '+
      ' vlpago_flh = '+DB_FormatDataSQL(Query1.FieldByName('saldo').AsFloat,ftFloat)+' where dtreferencia_flh = ''10/01/2011'' and cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
      ' and cod_sitdesconto = 1 and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);

      FResto :=  Query2.FieldByName('vldesconto_adf').AsFloat - Query1.FieldByName('saldo').AsFloat;

      Set_IncluirDesconto(Query2.fieldbYName('cod_beneficiario').AsString, Query2.FieldByName('matriculadebito_seg').AsString, Query2.FieldByName('digitomatdeb_seg').AsString,
      FloatToStr(FResto), '0', Query2.FieldByName('cod_tarifa').AsString, '5',
      '11', '2011', date, 'Dif. Baixa - Out/2011', 0, FCod_TelaSistema);

      DB_ExecSQL('update tbm_saldobaixa set saldo = 0 where cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);

      DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = ''10/01/2011'' and cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
      ' and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);
    end;
    Query2.Next;
  end;
  //Baixa Parcelamento

  Query2.Close;
  Query2.sql.Clear;
  Query2.sql.Add('select d.cod_beneficiario, d.matriculadebito_seg, d.digitomatdeb_seg, p.valorpagar_par, d.cod_tarifa'+
  ' from tbl_parcelamento p, tbl_descontofolha d, tbl_baixadesconto b where d.cod_descontofolha = p.cod_descontofolha'+
  ' and d.matriculadebito_seg = b.matriculadebito_seg and d.cod_empresafolha = b.cod_empresafolha'+
  ' and p.dtvencimento_par  = b.dtreferencia_flh and d.cod_tarifa = b.cod_tarifa'+
  ' and p.dtvencimento_par = ''10/01/2011'' and d.cod_empresafolha = 5  and p.cod_sitdesconto = 1'+
  ' and d.matriculadebito_seg not in (6527, 11829) order by d.cod_tarifa, d.matriculadebito_seg');
  Query2.open;
  while not Query2.eof do
  begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('select saldo from tbm_saldobaixa where cod_empresafolha = 5 and matriculadebito_seg = '+
    Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);
    Query1.open;
    if Query1.FieldByName('saldo').AsFloat >=  Query2.FieldByName('valorpagar_par').AsFloat then
    begin
      DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 101, vlpago_par = valorpagar_par, dtsitdesconto_par = getdate(), dtpagto_par = getdate()'+
      ' from tbl_descontofolha d where d.cod_descontofolha = tbl_parcelamento.cod_descontofolha '+
      ' and dtvencimento_par = ''10/01/2011'' and cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
      ' and tbl_parcelamento.cod_sitdesconto = 1 and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);

      DB_ExecSQL('update tbm_saldobaixa set saldo = saldo - '+DB_FormatDataSQL(Query2.FieldByName('valorpagar_par').AsFloat, ftFloat)+
      'where cod_empresafolha = 5 and matriculadebito_seg = '+
      Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);
    end
    else
    begin
      DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 101, vlpago_par = '+DB_FormatDataSQL(Query1.FieldByName('saldo').AsFloat,ftFloat)+
      ', dtsitdesconto_par = getdate(), dtpagto_par = getdate()'+
      ' from tbl_descontofolha d where d.cod_descontofolha = tbl_parcelamento.cod_descontofolha '+
      ' and dtvencimento_par = ''10/01/2011'' and cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
      ' and tbl_parcelamento.cod_sitdesconto = 1 and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);

      FResto :=  Query2.FieldByName('valorpagar_par').AsFloat - Query1.FieldByName('saldo').AsFloat;

      Set_IncluirDesconto(Query2.fieldbYName('cod_beneficiario').AsString, Query2.FieldByName('matriculadebito_seg').AsString, Query2.FieldByName('digitomatdeb_seg').AsString,
      FloatToStr(FResto), '0', Query2.FieldByName('cod_tarifa').AsString, '5',
      '11', '2011', date, 'Dif. Baixa - Out/2011 - Parc.', 0, FCod_TelaSistema);

      DB_ExecSQL('update tbm_saldobaixa set saldo = 0 where cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.fieldByName('matriculadebito_seg').AsString+' and cod_tarifa = '+Query2.fieldByName('cod_tarifa').AsString);

      DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 1 where dtreferencia_flh = ''10/01/2011'' and cod_empresafolha = 5'+
      ' and matriculadebito_seg = '+Query2.FieldByName('matriculadebito_seg').AsString+
      ' and cod_tarifa = '+Query2.FieldByName('cod_tarifa').AsString);
    end;
    Query2.Next;
  end;

  Dlg_Ok('ok',self);
end;

procedure TFrm_Mov_2043.Button2Click(Sender: TObject);
begin
  inherited;
  DB_Commit;
end;

procedure TFrm_Mov_2043.Button3Click(Sender: TObject);
begin
  inherited;
  DB_RollBack;
end;

procedure TFrm_Mov_2043.btn_exportarClick(Sender: TObject);
var
  str_arquiventrad, S, nomearq : String;
  Arq : TextFile;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  Pesquisar;
  if Query3.RecordCount < 1 then
     Exit;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
  begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(Arq, str_arquiventrad);
    Rewrite (Arq);
    S := 'Emp; Matricula; Dig; Inscrição; Tarifa; Valor';
    Writeln(Arq,S);
    Query3.First;
    with Query3 do
    begin
      while not EOF do
      begin
        S:= FieldByName('cod_empresafolha').Text + ';' + FieldByName('matriculadebito_seg').Text + ';' +
        FieldByName('digitomatdeb_seg').Text + ';' + FieldByName('inscricao_ben').AsString + ';' +
        FieldByName('cod_tarifa').AsString + ';' +FormatFloat('###,###,###,##0.00', FieldByName('vldesconto').Value);
        Writeln(Arq,S);
        Next;
      end;
    end;
    CloseFile(Arq);
    //Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    //if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
    //     then Exit ;
   // nomearq := SaveDialog.InitialDir + str_arquiventrad;
   // ShellExecute(Handle, nil, PChar(nomearq), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TFrm_Mov_2043.btn_ajustarClick(Sender: TObject);
var
  valordesconto, vldiferenca : double;
  executado : boolean;
  FCod_beneficiario, FDigito : String;
begin
  inherited;
  if not Acs_AcessoEspecial('204301') then
  begin
    Dlg_Alerta(MSG_DLG_NaoAutorizado, self);
    Exit;
  end;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  Pesquisar;
  executado := false;
  with Query3 do
  begin
    while not Query3.EOF do
    begin
      valordesconto := FieldByName('vldesconto').AsFloat;
      if FieldByName('cod_statusbaixa').AsInteger = 0 then
      begin
        DB_BeginTrans;
        DB_OpenSQL('select cod_benTit, digitomatdeb_seg,  isnull(sum(vldesconto_adf),0) as vldesconto_adf  from vw_descontos'+
        ' where cod_empresafolha = '+FieldByName('cod_empresafolha').Text+' and dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
        ''' and cod_tarifa = '+FieldByName('cod_tarifa').AsString+' and cod_sitdesconto >= 100 and cod_sitdesconto <= 104'+
        ' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text+
        ' group by cod_benTit, digitomatdeb_seg');
        if (valordesconto - 0.05 <= Tab.FieldByName('vldesconto_adf').AsFloat) and (valordesconto + 0.05 >= Tab.FieldByName('vldesconto_adf').AsFloat ) then
        begin
          executado := DB_ExecSQL('insert into tbl_descontofolha ('+
          ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
          ' vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
          ' cod_sitdesconto, dtsitdesconto_flh, dtpagto_flh, vlpago_flh, obs_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
          Tab.FieldByName('cod_benTit').AsString+', 0, 0, '+FieldByName('matriculadebito_seg').Text+', '+Tab.FieldByName('digitomatdeb_seg').AsString+
          ', '+DB_FormatDataSQL(valordesconto, ftFloat)+', 0, '+FieldByName('cod_tarifa').AsString+', '+FieldByName('cod_empresafolha').Text+', '''+
          cbx_cod_mes.valueitem + '/01/'+edt_ano.Text+''', getdate(), 5, getdate(), getdate(),'+DB_FormatDataSQL(valordesconto, ftFloat)+
          ',''Pago em Duplicidade'','+Str_IntToStr(FCod_Usuario)+', getdate(), '''+cbx_cod_mes.valueitem + '/01/'+edt_ano.Text+''')');
        end
        else begin
          valordesconto := FieldByName('vldesconto').AsFloat;
          DB_OpenADOSQL('select cod_benTit, digitomatdeb_seg,  isnull(sum(vldesconto_adf),0) as vldesconto_adf  from vw_descontos'+
          ' where cod_empresafolha = '+FieldByName('cod_empresafolha').Text+' and dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
          ''' and cod_tarifa = '+FieldByName('cod_tarifa').AsString+' and cod_sitdesconto = 1'+
          ' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text+
          ' group by cod_benTit, digitomatdeb_seg');
          FCod_beneficiario := TabADO.FieldByName('cod_benTit').AsString;
          FDigito := TabADO.FieldByName('digitomatdeb_seg').AsString;
          if  (valordesconto + 0.05 >= TabADO.FieldByName('vldesconto_adf').AsFloat ) then
          begin
            vldiferenca := valordesconto - TabADO.FieldByName('vldesconto_adf').AsFloat;
            if FCod_beneficiario = '' then
            begin
              DB_OpenSQL('select s.cod_beneficiario, digitomatdeb_seg from tbl_segurado s, tbl_beneficiario b'+
              ' where s.cod_beneficiario = b.cod_beneficiario and cod_empresafolha = '+
              FieldByName('cod_empresafolha').Text+' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text);
              FCod_beneficiario := Tab.FieldByName('cod_beneficiario').AsString;
              FDigito := Tab.FieldByName('digitomatdeb_seg').AsString;
            end;
            executado := DB_ExecSQL('insert into tbl_descontofolha ('+
            ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
            ' vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
            ' cod_sitdesconto, dtsitdesconto_flh, dtpagto_flh, vlpago_flh, obs_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
            FCod_beneficiario+', 0, 0, '+FieldByName('matriculadebito_seg').Text+', '+FDigito+
            ', '+DB_FormatDataSQL(vldiferenca, ftFloat)+', 0, '+FieldByName('cod_tarifa').AsString+', '+FieldByName('cod_empresafolha').Text+', '''+
            cbx_cod_mes.valueitem + '/01/'+edt_ano.Text+''', getdate(), 101, getdate(), getdate(),'+DB_FormatDataSQL(vldiferenca, ftFloat)+
            ',''Divergencia de valor na baixa'','+Str_IntToStr(FCod_Usuario)+', getdate(), '''+cbx_cod_mes.valueitem + '/01/'+edt_ano.Text+''')');
            if executado then
              executado := DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(),'+
              ' vlpago_flh = vldesconto_adf, cod_usuario = '+Str_IntToStr(FCod_Usuario)+' where dtreferencia_flh = '''+
              cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+FieldByName('cod_empresafolha').Text+
              ' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text+
              ' and cod_sitdesconto = 1 and cod_tarifa = '+FieldByName('cod_tarifa').AsString);
          end;
          if (valordesconto - 0.05 <= TabADO.FieldByName('vldesconto_adf').AsFloat) then
          begin
            executado := DB_ExecSQL('update tbl_descontofolha set cod_sitdesconto = 101, dtsitdesconto_flh = getdate(), dtpagto_flh = getdate(),'+
            ' vlpago_flh = vldesconto_adf, cod_usuario = '+Str_IntToStr(FCod_Usuario)+' where dtreferencia_flh = '''+
            +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+FieldByName('cod_empresafolha').Text+
            ' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text+
            ' and cod_sitdesconto = 1 and cod_tarifa = '+FieldByName('cod_tarifa').AsString+
            ' and vldesconto_adf >= '+DB_FormatDataSQL((valordesconto - 0.05), ftFloat)+' and vldesconto_adf <= '+DB_FormatDataSQL((valordesconto + 0.05),ftFloat));
          end;
        end;
        if executado then
          DB_ExecSQL('update tbl_baixadesconto set cod_statusbaixa = 2 where dtreferencia_flh = '''+
          +cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and cod_empresafolha = '+FieldByName('cod_empresafolha').Text+
          ' and matriculadebito_seg = '+FieldByName('matriculadebito_seg').Text+
          ' and cod_statusbaixa = 0 and cod_tarifa = '+FieldByName('cod_tarifa').AsString);
        if executado then
          DB_Commit
        else
          DB_RollBack;
      end;
      Next;
    end;
  end;
  DB_ExecSQL('insert into tbl_histdescontofolha'+
  '  select cod_descontofolha, dtsitdesconto_flh, cod_usuario, 2043, 2, '''' as complemento  from tbl_descontofolha'+
  ' where dtreferencia_flh = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''' and dtsitdesconto_flh >= '''+
  FormatDateTime('mm/dd/yyyy', Date)+' 00:00:00'' and dtdesconto_flh <= '''+FormatDateTime('mm/dd/yyyy', Date)+
  ' 00:00:00'' and cod_usuario = '+Str_IntToStr(FCod_Usuario));   
end;

procedure TFrm_Mov_2043.dbg_itemservicoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.Field.Dataset.FieldbyName('cod_statusbaixa').AsInteger = 2 then
    (Sender as TDBGrid).Canvas.Font.Color := clGreen
  else
    (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
  dbg_itemservico.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Mov_2043.stg_audiDrawCell(Sender: TObject; ACol,
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

end.



