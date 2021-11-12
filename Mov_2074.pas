unit Mov_2074;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, FileCtrl, ADODB;

type
  TFrm_Mov_2074 = class(TFrm_Bas_TelaPadrao)
    pgc_processamento: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    stg_audi: TStringGrid;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    btn_geraConsignum: TPDJButton;
    GroupBox1: TGroupBox;
    btn_geraFolha: TPDJButton;
    pgb_registros: TProgressBar;
    SaveDialog: TSaveDialog;
    Panel13: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    pgb_folha: TProgressBar;
    GroupBox2: TGroupBox;
    lsb_historico: TListBox;
    Button1: TButton;
    Qry_Web: TADOQuery;
    ADOPortal: TADOConnection;
    Button2: TButton;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    btn_carregarOdonto: TPDJButton;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    btn_gerarRedeNormal: TPDJButton;
    pgb_portal: TProgressBar;
    btn_gerarRedeReferencia: TPDJButton;
    btn_baixaOdonto: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    pgb_odonto: TProgressBar;
    dlg_leitura: TOpenDialog;
    GroupBox6: TGroupBox;
    PDJButton1: TPDJButton;
    GroupBox7: TGroupBox;
    btn_coparticipacao: TPDJButton;
    Panel4: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    Panel5: TPanel;
    cb4_cod_mes: TDCComboBox;
    ed4_ano: TDCEdit;
    btn_gerarDescontoOdonto: TPDJButton;
    Button3: TButton;
    btn_fechamentoOdonto: TPDJButton;
    procedure btn_geraConsignumClick(Sender: TObject);
    procedure btn_geraFolhaClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_carregarOdontoClick(Sender: TObject);
    procedure btn_gerarRedeNormalClick(Sender: TObject);
    procedure btn_gerarRedeReferenciaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_baixaOdontoClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_coparticipacaoClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure btn_gerarDescontoOdontoClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_fechamentoOdontoClick(Sender: TObject);
  private
    { Private declarations }

    resultado : boolean;
    str_arq1002, str_arq1003, Str_FAEE, Str_ArqRedeNormal, Str_ArqBeneficiario, Str_Coparticipacao : String;
    byt_nameofthfile : TextFile;
    function DB_ExecSQLWeb(wSQL : String): Boolean ;
    procedure GeraArquivoFolha(cod_empresafolha, nomeArquivo : String);
    procedure GeraResumoFolha(cod_empresafolha, nomeArquivo : String);
    function EnviarArquivoFolha(cod_empresafolha, nomeEmp, email, ccopia, nomeArquivo, nomeArquivo02, nomeArquivo03  : String) : boolean;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2074: TFrm_Mov_2074;
  ChaveExp: Integer;

implementation

uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_Obj, Fun_Email, Fun_Data, dtm_principal3, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Mov_2074.btn_geraConsignumClick(Sender: TObject);
var
 Sql, S : String;
begin
  inherited;
  Sql := 'select mesAno, cpf_fpm, '''' as codEmp, matricula, Parcela,'+
    ' imasf.dbo.fun_addzeros(replace(cast(valor as varchar),''.'',''''),16) as valor, acao,'+
    'cod_tarifa, '''' as complemento, ''A'' as Categoria, '''' as idSolicitacao, upper(dbo.fun_tirarAcentos(descricao)) as descricao'+
    ' from aux_DSKConsignum';

  if DB_OpenSQL('select top 10 cod_descontofolha from tbl_descontofolha'+
  ' where dtreferencia_flh = '''+FormatDateTime('mm/01/yyyy',Data_Subtrai1mes(Date))+''' and cod_empresafolha <> 99 and ((cod_sitdesconto = 1) or (cod_sitdesconto = 998))'+
  ' and cod_descontofolha not in (select cod_descontofolha from tbl_parcelamento)') > 0 then
  begin
    Dlg_Alerta('Não foi possivel processar a folha pois há descontos em aberto no mês Anterior!',self);
    Exit;
  end;

  resultado := DB_ExecSQL('exec spc_adm_DSKConsignum');
  Application.ProcessMessages;
  if resultado then
  begin
    resultado :=  DB_OpenSQL(Sql+' where acao = 1002') > 0;
    Tab.First;
    SaveDialog.DefaultExt:= 'txt';
    SaveDialog.Filter:= 'txt';
    SaveDialog.InitialDir := 'W:\Folha\';
    SaveDialog.FileName := 'Arq_1002';
    if DirectoryExists('W:Folha') then
    begin
      str_arq1002 := 'W:\Folha\Arq_1002.txt';
      str_arq1003 := 'W:\Folha\Arq_1003.txt';
    end
    else
    begin
      if SaveDialog.Execute then
        ExtractFilePath(SaveDialog.FileName);
        str_arq1002:= ExtractFilePath(SaveDialog.FileName)+'Arq_1002.txt';
        str_arq1003:= ExtractFilePath(SaveDialog.FileName)+'Arq_1003.txt';
    end;

    AssignFile(byt_nameofthfile, str_arq1002);
    Rewrite (byt_nameofthfile);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min:= 0;
    while not Tab.EOF do
    begin
      pgb_registros.Position:= pgb_registros.Position + 1;
      Application.ProcessMessages;
      S:= Tab.FieldByName('mesAno').AsString + ';' +
        Tab.FieldByName('cpf_fpm').AsString + ';' +
        Tab.FieldByName('codEmp').AsString + ';' +
        Tab.FieldByName('matricula').AsString + ';' +
        Tab.FieldByName('Parcela').AsString + ';' +
        Tab.FieldByName('valor').AsString + ';' +
        Tab.FieldByName('acao').AsString + ';' +
        Tab.FieldByName('cod_tarifa').AsString + ';' +
        Tab.FieldByName('complemento').AsString + ';' +
        Tab.FieldByName('Categoria').AsString + ';' +
        Tab.FieldByName('idSolicitacao').AsString + ';' +
        Tab.FieldByName('descricao').AsString;
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
  end;
  if resultado then
  begin
    resultado :=  DB_OpenSQL(Sql+' where acao = 1003') > 0;
    Tab.First;

    AssignFile(byt_nameofthfile, str_arq1003);
    Rewrite (byt_nameofthfile);
    S:= '';
    pgb_registros.Visible:= True;
    Application.ProcessMessages;
    pgb_registros.Min:= 0;
    while not Tab.EOF do
    begin
      pgb_registros.Position:= pgb_registros.Position + 1;
      Application.ProcessMessages;
      S:= Tab.FieldByName('mesAno').AsString + ';' +
        Tab.FieldByName('cpf_fpm').AsString + ';' +
        Tab.FieldByName('codEmp').AsString + ';' +
        Tab.FieldByName('matricula').AsString + ';' +
        Tab.FieldByName('Parcela').AsString + ';' +
        Tab.FieldByName('valor').AsString + ';' +
        Tab.FieldByName('acao').AsString + ';' +
        Tab.FieldByName('cod_tarifa').AsString + ';' +
        Tab.FieldByName('complemento').AsString + ';' +
        Tab.FieldByName('Categoria').AsString + ';' +
        Tab.FieldByName('idSolicitacao').AsString + ';' +
        Tab.FieldByName('descricao').AsString;
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
    GeraAuditoria(0,'0','Gerados Arquivos Consignum' ,'(1002 e 1003)', 0);
    Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(str_arq1003),self);
    pgb_registros.Visible:= False;

  end;
end;

procedure TFrm_Mov_2074.GeraArquivoFolha(cod_empresafolha, nomeArquivo : String);
var
  Sql, Sql02, S, Fcod_empresafolha : String;

begin

  if (cod_empresafolha = '5') then
  begin
    Sql := 'select * from aux_dsk_EnvioFolha'+
    ' where cod_empresafolha in ('+cod_empresafolha+')'+
    ' and cod_tarifa in (516,870,871,872,873,874,875, 882,883,884,578,632,604,634, 865,866, 867, 893,894,895)'+
    ' order by cod_empresafolha, ano, mes, Col004, matriculadebito_seg, digitomatdeb_seg, cod_tarifa, Col008';

    Sql02 := 'select * from aux_dsk_EnvioFolha'+
    ' where cod_empresafolha in ('+cod_empresafolha+')'+
    ' and cod_tarifa in (876,877,878,879,880,881,885,886,887,576,577,976,977,978,979,980,981,985,986,987,638,621,615,636,627,821,596,616, 888,889,892,896,897,898)'+
    ' order by cod_empresafolha, ano, mes, Col004, matriculadebito_seg, digitomatdeb_seg, cod_tarifa, Col008';

    if DB_OpenSQL(Sql) > 0 then
    begin
      AssignFile(byt_nameofthfile, nomeArquivo+'FAE05_01.txt');
      Rewrite (byt_nameofthfile);
      S:= '';
      Tab.First;
      while not Tab.EOF do
      begin
        pgb_folha.Position:= pgb_folha.Position + 1;
        Application.ProcessMessages;
        Fcod_empresafolha := Tab.FieldByName('cod_empresafolha').AsString;
        if Fcod_empresafolha = '16' then
          Fcod_empresafolha := '05';
        S:= Fcod_empresafolha+
          Tab.FieldByName('ano').AsString+
          Tab.FieldByName('mes').AsString+
          Tab.FieldByName('Col004').AsString+
          Tab.FieldByName('matriculadebito_seg').AsString+
          Tab.FieldByName('digitomatdeb_seg').AsString+
          Tab.FieldByName('cod_tarifa').AsString+
          Tab.FieldByName('Col008').AsString+
          Tab.FieldByName('totalparcela').AsString+
          Tab.FieldByName('parcela').AsString+
          Tab.FieldByName('vldesconto').AsString;
        Writeln(byt_nameofthfile, S);
        Tab.Next;
      end;
      Closefile (byt_nameofthfile);
      lsb_historico.Items.Add('Arquivo Gerado em '+nomeArquivo);
    end;

    if DB_OpenSQL(Sql02) > 0 then
    begin
      AssignFile(byt_nameofthfile, nomeArquivo+'FAE05_02.txt');
      Rewrite (byt_nameofthfile);
      S:= '';
      Tab.First;
      while not Tab.EOF do
      begin
        pgb_folha.Position:= pgb_folha.Position + 1;
        Application.ProcessMessages;
        Fcod_empresafolha := Tab.FieldByName('cod_empresafolha').AsString;
        if Fcod_empresafolha = '16' then
          Fcod_empresafolha := '05';
        S:= Fcod_empresafolha+
          Tab.FieldByName('ano').AsString+
          Tab.FieldByName('mes').AsString+
          Tab.FieldByName('Col004').AsString+
          Tab.FieldByName('matriculadebito_seg').AsString+
          Tab.FieldByName('digitomatdeb_seg').AsString+
          Tab.FieldByName('cod_tarifa').AsString+
          Tab.FieldByName('Col008').AsString+
          Tab.FieldByName('totalparcela').AsString+
          Tab.FieldByName('parcela').AsString+
          Tab.FieldByName('vldesconto').AsString;
        Writeln(byt_nameofthfile, S);
        Tab.Next;
      end;
      Closefile (byt_nameofthfile);
      lsb_historico.Items.Add('Arquivo Gerado em '+nomeArquivo);
    end;



  end
  else
  begin
    Sql := 'select * from aux_dsk_EnvioFolha'+
    ' where cod_empresafolha in ('+cod_empresafolha+')'+
    ' order by cod_empresafolha, ano, mes, Col004, matriculadebito_seg, digitomatdeb_seg, cod_tarifa, Col008';

    if DB_OpenSQL(Sql) > 0 then
    begin
      AssignFile(byt_nameofthfile, nomeArquivo);
      Rewrite (byt_nameofthfile);
      S:= '';
      Tab.First;
      while not Tab.EOF do
      begin
        pgb_folha.Position:= pgb_folha.Position + 1;
        Application.ProcessMessages;
        Fcod_empresafolha := Tab.FieldByName('cod_empresafolha').AsString;
        if Fcod_empresafolha = '16' then
          Fcod_empresafolha := '05';
        S:= Fcod_empresafolha+
          Tab.FieldByName('ano').AsString+
          Tab.FieldByName('mes').AsString+
          Tab.FieldByName('Col004').AsString+
          Tab.FieldByName('matriculadebito_seg').AsString+
          Tab.FieldByName('digitomatdeb_seg').AsString+
          Tab.FieldByName('cod_tarifa').AsString+
          Tab.FieldByName('Col008').AsString+
          Tab.FieldByName('totalparcela').AsString+
          Tab.FieldByName('parcela').AsString+
          Tab.FieldByName('vldesconto').AsString;
        Writeln(byt_nameofthfile, S);
        Tab.Next;
      end;
      Closefile (byt_nameofthfile);
      lsb_historico.Items.Add('Arquivo Gerado em '+nomeArquivo);
    end;
  end;
end;

procedure TFrm_Mov_2074.GeraResumoFolha(cod_empresafolha, nomeArquivo : String);
var
  S, Cod_emp : String;
  TotalDesconto : double;
begin
  //Gera Resumo CSV
  DB_OpenSQL('select a.cod_empresafolha, nome_emp, ano, mes, cast(a.cod_tarifa as varchar(4)) as cod_tarifa,'+
  ' imasf.dbo.fun_addzeros(sum(cast(vldesconto as int)),12) as vldesconto,'+
  ' sum(cast(vldesconto as float)) / 100 as vldesconto2'+
  ' from aux_dsk_EnvioFolha a, tbl_empresafolha e where a.cod_empresafolha = e.cod_empresafolha '+
  ' and a.cod_empresafolha = '+cod_empresafolha+
  ' group by a.cod_empresafolha, nome_emp, ano, mes, a.cod_tarifa'+
  ' order by a.cod_empresafolha, ano, mes, a.cod_tarifa');

  AssignFile(byt_nameofthfile, nomeArquivo);
  Rewrite (byt_nameofthfile);
  S:= '';
  Writeln(byt_nameofthfile, 'Resumo da Folha - Referência '+FormatDateTime('mm',date)+'/'+FormatDateTime('yyyy',date));
  Writeln(byt_nameofthfile, '');
  Tab.First;
  Cod_emp :=  Tab.FieldByName('cod_empresafolha').AsString;
  TotalDesconto := 0;
  Writeln(byt_nameofthfile, Tab.FieldByName('nome_emp').AsString );
  while not Tab.EOF do
  begin
    if Cod_emp = Tab.FieldByName('cod_empresafolha').AsString then
    begin
      Application.ProcessMessages;
      S:= Tab.FieldByName('cod_tarifa').AsString+';'+
      Tab.FieldByName('vldesconto2').AsString;
      TotalDesconto :=  TotalDesconto+Tab.FieldByName('vldesconto2').AsFloat;
      Writeln(byt_nameofthfile, S);
    end
    else begin
      S:= 'Total;'+FormatFloat('###,###,##0.00', TotalDesconto);
      Writeln(byt_nameofthfile, S);
      Writeln(byt_nameofthfile, '');
      Writeln(byt_nameofthfile, Tab.FieldByName('nome_emp').AsString );
      Cod_emp := Tab.FieldByName('cod_empresafolha').AsString;
      TotalDesconto := 0;
      Application.ProcessMessages;
      S:= Tab.FieldByName('cod_tarifa').AsString+';'+
      Tab.FieldByName('vldesconto2').AsString;
      TotalDesconto :=  TotalDesconto+Tab.FieldByName('vldesconto2').AsFloat;
      Writeln(byt_nameofthfile, S);
    end;
    Tab.Next;
  end;
  S:= 'Total;'+FormatFloat('###,###,##0.00', TotalDesconto);
  Writeln(byt_nameofthfile, S);
  Closefile (byt_nameofthfile);
  lsb_historico.Items.Add('Arquivo Gerado em '+nomearquivo);

end;

function TFrm_Mov_2074.EnviarArquivoFolha(cod_empresafolha, nomeEmp, email, ccopia, nomeArquivo, nomeArquivo02, nomeArquivo03 : String) : boolean;
var
 Retorno : boolean;
begin
  //email := 'douglaspt@gmail.com';
  if email <> '' then
  begin
    StB_Principal.Panels[0].Text:= 'Enviando E-Mail para ' + email;
    Retorno := EnviaEmail5Anexos(email, ccopia,
    'Folha do  mês de '+Data_GetMonthName(StrToInt(FormatDateTime('mm',date)))+' de '+FormatDateTime('yyyy',date)+
    ' - '+nomeEmp,
    'Segue em anexo o arquivo de Folha do mês de '+Data_GetMonthName(StrToInt(FormatDateTime('mm',date)))+' de '+FormatDateTime('yyyy',date),
    //'Favor desconsiderar o e-mail anterior, segue arquivo correto',
    nomeArquivo, nomeArquivo02,nomeArquivo03,'','');
    Application.ProcessMessages;
    if Retorno then
    begin
      StB_Principal.Panels[0].Text:= 'E-Mail Enviado para '+ email;
      lsb_historico.Items.Add('E-mail enviado para '+email);
    end;
    Result := Retorno;
  end
  else begin
     lsb_historico.Items.Add('E-mail não encontrado para '+nomeEmp);
     Result := false;
  end;
end;

procedure TFrm_Mov_2074.btn_geraFolhaClick(Sender: TObject);
Var
  Sql, S, Cod_emp, Destinatario, CCopia : String;
  Retorno : boolean;
  TotalDesconto : double;
begin
  inherited;
  lsb_historico.Clear;
  if DB_OpenSQL('select destinatario_cfg, ccopia_cfg from tbl_configEmail where cod_configEmail = 1') > 0 then
  begin
    Destinatario := Tab.fieldByname('destinatario_cfg').AsString;
    CCopia := Tab.fieldByname('ccopia_cfg').AsString;
  end;
 // if (FormatDateTime('yyyy',date) = edt_ano.Text) and (FormatDateTime('mm',date) = cbx_cod_mes.ValueItem) then
 //   Exit;

  if DB_OpenSQL('select top 10 cod_descontofolha from tbl_descontofolha'+
  ' where dtreferencia_flh = '''+FormatDateTime('mm/01/yyyy',Data_Subtrai1mes(Date))+''' and cod_empresafolha <> 99 and ((cod_sitdesconto = 1) or (cod_sitdesconto = 998))'+
  ' and cod_descontofolha not in (select cod_descontofolha from tbl_parcelamento)') > 0 then
  begin
    Dlg_Alerta('Não foi possivel processar a folha pois há descontos em aberto no mês Anterior!',self);
    Exit;
  end;
  lsb_historico.Items.Add('Gerando dados para os Arquivos...');
  resultado := DB_ExecSQL('exec spc_adm_geraDSKDescontos');
  if not resultado then
  begin
    lsb_historico.Items.Add('*** Erro ao Gerar os Arquivos de folha ***');
    Exit;
  end;  
  lsb_historico.Items.Add('Dados Gerados para os Arquivos');
  pgb_folha.Min:= 0;
  pgb_folha.Visible:= True;
  SaveDialog.DefaultExt:= 'txt';
  SaveDialog.Filter:= 'txt';
  SaveDialog.InitialDir := 'W:\Folha\';
  SaveDialog.FileName := 'FAELOG.txt';
  if DirectoryExists('W:\Folha') then

  begin
    Str_FAEE := 'W:\Folha\FAELOG.txt';
  end
  else
  begin
    if SaveDialog.Execute then
      Str_FAEE:= SaveDialog.FileName;
  end;
  lsb_historico.Items.Add('Gerando dados para o Arquivo FAELOG...');
  if DB_OpenSQL('select a.cod_empresafolha, nome_emp, ano, mes, cast(a.cod_tarifa as varchar(4)) as cod_tarifa,'+
  ' imasf.dbo.fun_addzeros(sum(cast(vldesconto as int)),12) as vldesconto,'+
  ' sum(cast(vldesconto as float)) / 100 as vldesconto2'+
  ' from aux_dsk_EnvioFolha a, tbl_empresafolha e where a.cod_empresafolha = e.cod_empresafolha '+
  ' group by a.cod_empresafolha, nome_emp, ano, mes, a.cod_tarifa'+
  ' order by a.cod_empresafolha, ano, mes, a.cod_tarifa') > 0 then
  begin
    //Gera FAELOG
    AssignFile(byt_nameofthfile, Str_FAEE);
    Rewrite (byt_nameofthfile);
    S:= '';
    Tab.First;
    while not Tab.EOF do
    begin
      Application.ProcessMessages;
      S:= Tab.FieldByName('cod_empresafolha').AsString+','+
        Tab.FieldByName('ano').AsString+','+
        Tab.FieldByName('mes').AsString+','+
        Tab.FieldByName('cod_tarifa').AsString+','+
        Tab.FieldByName('vldesconto').AsString;
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
    lsb_historico.Items.Add('Arquivo Gerado em '+Str_FAEE);
  end;
  lsb_historico.Items.Add('Pesquisando Empresas...');
  DB_OpenADOSQL('select * from tbl_empresafolha where cod_statusAtivo = 1'+
  ' and cod_empresafolha <> 99 order by cod_empresafolha');
  TabADO.First;
  lsb_historico.Items.Add('Gerando Arquivos das Empresas...');
  while not TabADO.Eof do
  begin
    if (TabADO.FieldByName('cod_empresafolha').AsString = '5') then
      GeraArquivoFolha(TabADO.FieldByName('cod_empresafolha').AsString,
      ExtractFilePath(Str_FAEE))
    else
      GeraArquivoFolha(TabADO.FieldByName('cod_empresafolha').AsString,
      ExtractFilePath(Str_FAEE)+'FAE'+STR_AddZeros(TabADO.FieldByName('cod_empresafolha').AsString,2)+'.txt');
    GeraResumoFolha(TabADO.FieldByName('cod_empresafolha').AsString,
    ExtractFilePath(Str_FAEE)+'Resumo '+TabADO.FieldByName('nome_emp').AsString+'.csv');
    TabADO.Next;
  end;
     
  //Enviar Email para as Empresas
  DB_OpenADOSQL('select * from tbl_empresafolha where cod_statusAtivo = 1'+
  ' and cod_empresafolha <> 99 and enviaEmailFolha_emp = 1 order by cod_empresafolha');
  TabADO.First;
  lsb_historico.Items.Add('Enviando E-mail para as Empresas...');
  while not TabADO.Eof do
  begin
    EnviarArquivoFolha(TabADO.FieldByName('cod_empresafolha').AsString, TabADO.FieldByName('nome_emp').AsString,
      TabADO.FieldByName('email_emp').AsString, CCopia,
      ExtractFilePath(Str_FAEE)+'FAE'+STR_AddZeros(TabADO.FieldByName('cod_empresafolha').AsString,2)+'.txt',
      ExtractFilePath(Str_FAEE)+'Resumo '+TabADO.FieldByName('nome_emp').AsString+'.csv', '');
      //ShowMessage('Email : '+TabADO.FieldByName('nome_emp').AsString);
    TabADO.Next;
  end;
  GeraAuditoria(0,'0','Gerados Arquivos de Folha' ,'FAEE', 0);
  pgb_folha.Visible:= False;
end;

procedure TFrm_Mov_2074.TabSheet3Show(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  DB_OpenSQL('select top 1 mes, ano  from aux_dsk_EnvioFolha');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Tab.fieldByName('mes').AsInteger);
  edt_ano.Text := Tab.fieldByName('ano').AsString;
  lsb_historico.Clear;
end;

procedure TFrm_Mov_2074.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2074.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;



function TFrm_Mov_2074.DB_ExecSQLWeb(wSQL : String): Boolean ;
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

procedure TFrm_Mov_2074.Button1Click(Sender: TObject);
begin
  inherited;
  //Provider=MSDASQL.1;Persist Security Info=False;Data Source=portalImasf;

  DB_OpenSQL('select b.cod_beneficiario, inscricao_ben, titulacartei_ben, nome_ben, cpf_ben, dtnascim_ben,'+
  ' idade_ben, sexo_ben, isnull(cod_grauparent,0) as cod_grauparent, email_ben, fonecel_ben,'+
  ' nome_pla, b.cod_sitbeneficiario, nome_plp, cod_estfisico'+
  ' from tbl_beneficiario b left join tbl_dependente d on b.cod_beneficiario = d.cod_beneficiario'+
  ' inner join tbl_plano p on b.cod_plano = p.cod_plano'+
  ' inner join tbl_sitbeneficiario s on b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
  ' left join tbl_beneficiarioPlanoPagtoEspecial bn on b.cod_beneficiario = bn.cod_beneficiario'+
  ' left join tbl_planoPagto pp on bn.cod_planopagto = pp.cod_planopagto');
  //' where b.cod_sitbeneficiario = 1');

  try
    ADOPortal.Connected := true;
  except
    Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
    Exit;
  end;

  if ADOPortal.Connected then
    begin
      try
        DB_ExecSQLWeb('delete from Beneficiario where id > 0');
      except
        Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
        Exit;
      end;
      while not tab.Eof do
      begin
       // ProgressBar1.Position := ProgressBar1.Position + 1;
        try
          DB_ExecSQLWeb('insert into Beneficiario (id, CPF, celular, dataNascimento, email, grauParentesco, idade, inscricao, '+
          'nome, plano, sexo, situacao_id, tabela, titularidade, estadoFisico) values ('+Tab.FieldByName('cod_beneficiario').AsString+','''+
          Tab.FieldByName('cpf_ben').AsString+''','''+Tab.FieldByName('fonecel_ben').AsString+''', '''+Data_Format('yyyy/mm/dd', Tab.FieldByName('dtnascim_ben').AsDateTime)+''','''+
          Tab.FieldByName('email_ben').AsString+''','''+Tab.FieldByName('cod_grauparent').AsString+''','''+
          Tab.FieldByName('idade_ben').AsString+''','''+Tab.FieldByName('inscricao_ben').AsString+''','''+
          Tab.FieldByName('nome_ben').AsString+''','''+Tab.FieldByName('nome_pla').AsString+''','''+
          Tab.FieldByName('sexo_ben').AsString+''','''+
          Tab.FieldByName('cod_sitbeneficiario').AsString+''','''+Tab.FieldByName('nome_plp').AsString+''','''+
          Tab.FieldByName('titulacartei_ben').AsString+''', '''+Tab.FieldByName('cod_estfisico').AsString+''')');
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

  
end;

procedure TFrm_Mov_2074.Button2Click(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select cod_conveniado, nome_con, dtreferencia_cta, dtentrada_ctm, cod_padrao, nome_its, qtde_itc, vlinformado_itc, vlpagar_itc,'+
  ' cod_beneficiario, idadeben_ctm, cod_classificacaoPlano, coparticipacao, dataDesconto'+
  ' from tmp_coparticipacao where cod_beneficiario > 0');

  try
    ADOPortal.Connected := true;
  except
    Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
    Exit;
  end;

  if ADOPortal.Connected then
    begin
     { try
        DB_ExecSQLWeb('delete from ContaMedica where id > 0');
      except
        Dlg_Alerta('Falha na Conexão com a Web! Efetuar Procedimento novamente.',self);
        Exit;
      end;}
      while not tab.Eof do
      begin
       // ProgressBar1.Position := ProgressBar1.Position + 1;
        try
          DB_ExecSQLWeb('insert into ContaMedica (idConveniado, nomeConveniado, referencia, dataEntrada, dataDesconto, idItem, descricaoItem, qtde, valorInformado, valorPago,'+
          ' idadeAtendimento, idClassificacaoPlano, coparticipacao, beneficiario_id) values ('+Tab.FieldByName('cod_conveniado').AsString+','''+
          STR_RemoveChar( Tab.FieldByName('nome_con').AsString, '''') +''','''+Data_Format('yyyy/mm/dd', Tab.FieldByName('dtreferencia_cta').AsDateTime)+''', '''+
          Data_Format('yyyy/mm/dd', Tab.FieldByName('dtentrada_ctm').AsDateTime)+''','''+
          Data_Format('yyyy/mm/dd', Tab.FieldByName('dataDesconto').AsDateTime)+''','''+
          Tab.FieldByName('cod_padrao').AsString+''','''+Tab.FieldByName('nome_its').AsString+''','''+
          Tab.FieldByName('qtde_itc').AsString+''','+DB_FormatDataSQL(Tab.FieldByName('vlinformado_itc').AsFloat, ftFloat)+','+
          DB_FormatDataSQL(Tab.FieldByName('vlpagar_itc').AsFloat, ftFloat)+','''+Tab.FieldByName('idadeben_ctm').AsString+''','''+
          Tab.FieldByName('cod_classificacaoPlano').AsString+''','+DB_FormatDataSQL(Tab.FieldByName('coparticipacao').AsFloat, ftFloat)+','''+
          Tab.FieldByName('cod_beneficiario').AsString+''')');
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
end;

procedure TFrm_Mov_2074.btn_carregarOdontoClick(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, I, TamanhoArq: Integer;
  Executado : boolean;
  Linha, nomearquivo, STR_dtReferencia, STR_atribuicao, STR_associacao, STR_matricula, STR_contrato,
  STR_dtCompetencia, STR_nome, STR_plano, STR_dtnascimento, STR_cpf, STR_valor,
  STR_vigencia, STR_empresa : String;
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência deve ser Preenchido !', VLD_Preenchido )) then
    Exit;

  if DB_OpenSQL('select distinct dtDebOdonto_flh from tbl_loteFolhaDescontos'+
  ' where cod_empresafolha <> 99 and dtreferencia_flh = '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''') < 1 then
  begin
    Dlg_Alerta('Não há folha gerada para este Periodo!',self);
    Exit;
  end
  else begin
    if Tab.FieldByName('dtDebOdonto_flh').AsString <> '' then
    begin
      Dlg_Alerta('Arquivo já Carregado para este Periodo!',self);
      Exit;
    end;
  end;
  dlg_leitura.InitialDir:= 'W:\Odonto';
  dlg_leitura.Filter:= 'csv|*.csv';

  if not dlg_leitura.execute then
    exit ;
  nomearquivo := dlg_leitura.filename;
  if (GetFileExt(nomearquivo) <> '.CSV') and (GetFileExt(nomearquivo) <> '.csv') then
  begin
    Dlg_Erro('Somente extensão do Arquivo tipo CSV!', Self);
    Exit;
  end;

  AssignFile(ArquivoCSV, nomearquivo);
  Executado := true;
  DB_BeginTrans;
  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Contador := 1;
    pgb_odonto.Visible:= True;
    pgb_odonto.Min:= 0;
    while not EOF(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, Linha);
      //ShowMessage(Linha);

      STR_dtReferencia :=  cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text;
      STR_atribuicao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_associacao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_matricula := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_contrato := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_dtCompetencia := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_nome := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_plano := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_dtnascimento := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cpf := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_valor := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_vigencia := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_empresa := Linha;
      STR_dtCompetencia := copy(STR_dtCompetencia,4,3)+copy(STR_dtCompetencia,1,3)+copy(STR_dtCompetencia,7,4);
      STR_vigencia := copy(STR_vigencia,4,3)+copy(STR_vigencia,1,3)+copy(STR_vigencia,7,4);
      Executado := DB_ExecSQL('insert into tbl_prodent values ('''+STR_dtReferencia+
      ''', '''+STR_atribuicao+''','''+STR_associacao+''', '+STR_matricula+','''+STR_contrato+
      ''', '''+STR_dtCompetencia+''', '''+STR_nome+''','''+STR_plano+''','''+STR_dtnascimento+
      ''', '''+STR_cpf+''', '''+STR_SubstChar(STR_valor,',','.')+''','''+STR_vigencia+
      ''', '''+STR_empresa+''', null,null)');
      Contador := Contador + 1;
      pgb_odonto.Position:= Contador;
    end;
  finally
    CloseFile(ArquivoCSV);
  end;
  if Executado then
  begin
    GeraAuditoria(0,'0','Carregamento do Odonto Realizado' ,'Carga Prodent '+cb2_cod_mes.valueitem+ed2_ano.Text+'.csv', 0);
    Dlg_Ok('Carregamento Realizado com Sucesso!',self);
    DB_ExecSQL('update tbl_loteFolhaDescontos set dtDebOdonto_flh = '''+FormatDateTime('mm/dd/yyyy',Date)+
    ''' where dtreferencia_flh = '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''');
    DB_Commit;
  end
  else
  begin
    DB_RollBack;
    Dlg_Alerta('Erro ao Carregar Arquivo',self);
  end;
  pgb_odonto.Visible:= False;

end;

procedure TFrm_Mov_2074.btn_gerarRedeNormalClick(Sender: TObject);
var
  S : String;
begin
  inherited;
  resultado := DB_ExecSQL('exec spc_adm_geraItensRedeNormal');
  Application.ProcessMessages;
  if resultado then
  begin
    DB_OpenSQL('select * from tmp_itensRedeNormal order by cod_conveniado, cod_padrao');
    SaveDialog.DefaultExt:= 'csv';
    SaveDialog.Filter:= 'csv';
    SaveDialog.InitialDir := 'W:\Portal\';
    SaveDialog.FileName := 'ArqRedeNormal';
    if DirectoryExists('W:Portal') then
    begin
      Str_ArqRedeNormal := 'W:\Portal\ArqRedeNormal.csv';
    end
    else
    begin
      if SaveDialog.Execute then
        ExtractFilePath(SaveDialog.FileName);
        Str_ArqRedeNormal:= ExtractFilePath(SaveDialog.FileName)+'ArqRedeNormal.csv';
    end;

    AssignFile(byt_nameofthfile, Str_ArqRedeNormal);
    Rewrite (byt_nameofthfile);
    S := '';
    pgb_portal.Visible:= True;
    pgb_portal.Min:= 0;
    while not Tab.EOF do
    begin
              pgb_portal.Position:= pgb_portal.Position + 1;
      Application.ProcessMessages;
      S:= Tab.FieldByName('cod_conveniado').AsString + ';' +
      Tab.FieldByName('nome_con').AsString + ';' +
      Tab.FieldByName('cod_padrao').AsString + ';' +
      Tab.FieldByName('cod_itemservico').AsString + ';' +
      Tab.FieldByName('nome_its').AsString + ';' +
      Tab.FieldByName('cod_cbhpm').AsString + ';' +
      Tab.FieldByName('nomeCBHPM_its').AsString + ';' +
      Tab.FieldByName('cod_classificacaoSADT').AsString + ';' +
      Tab.FieldByName('descricao_ccv').AsString + ';' +
      Tab.FieldByName('vlTotal_hit').AsString + ';' +
      Tab.FieldByName('coparticipacao').AsString+';1';
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
  end;
  GeraAuditoria(0,'0','Gerados Arquivos da Rede Normal' ,'ArqRedeNormal.txt', 0);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(Str_ArqRedeNormal),self);
  pgb_portal.Visible:= False;

end;

procedure TFrm_Mov_2074.btn_gerarRedeReferenciaClick(Sender: TObject);
var
  S : String;
begin
  inherited;
  resultado := DB_ExecSQL('exec spc_adm_geraItensRedeReferencia');
  Application.ProcessMessages;
  if resultado then
  begin
    DB_OpenSQL('select * from tmp_itensRedeReferencia order by cod_conveniado, cod_padrao');
    SaveDialog.DefaultExt:= 'csv';
    SaveDialog.Filter:= 'csv';
    SaveDialog.InitialDir := 'W:\Portal\';
    SaveDialog.FileName := 'ArqRedeReferencia';
    if DirectoryExists('W:Portal') then
    begin
      Str_ArqRedeNormal := 'W:\Portal\ArqRedeReferencia.csv';
    end
    else
    begin
      if SaveDialog.Execute then
        ExtractFilePath(SaveDialog.FileName);
        Str_ArqRedeNormal:= ExtractFilePath(SaveDialog.FileName)+'ArqRedeReferencia.csv';
    end;

    AssignFile(byt_nameofthfile, Str_ArqRedeNormal);
    Rewrite (byt_nameofthfile);
    S := '';
    pgb_portal.Visible:= True;
    pgb_portal.Min:= 0;
    while not Tab.EOF do
    begin
      pgb_portal.Position:= pgb_portal.Position + 1;
      Application.ProcessMessages;
      S:= Tab.FieldByName('cod_conveniado').AsString + ';' +
      Tab.FieldByName('nome_con').AsString + ';' +
      Tab.FieldByName('cod_padrao').AsString + ';' +
      Tab.FieldByName('cod_itemservico').AsString + ';' +
      Tab.FieldByName('nome_its').AsString + ';' +
      Tab.FieldByName('cod_cbhpm').AsString + ';' +
      Tab.FieldByName('nomeCBHPM_its').AsString + ';' +
      Tab.FieldByName('cod_classificacaoSADT').AsString + ';' +
      Tab.FieldByName('descricao_ccv').AsString + ';' +
      Tab.FieldByName('vlTotal_hit').AsString + ';' +
      Tab.FieldByName('coparticipacao').AsString+';2';
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
  end;
    GeraAuditoria(0,'0','Gerados Arquivos da Rede Referênciada' ,'ArqRedeReferencia.txt', 0);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(Str_ArqRedeNormal),self);
  pgb_portal.Visible:= False;

end;

procedure TFrm_Mov_2074.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  Obj_SetFormObjValueByName(self, cb2_cod_mes.name, FormatDateTime('m',date));
  ed2_ano.text := FormatDateTime('yyyy',date);
end;

procedure TFrm_Mov_2074.btn_baixaOdontoClick(Sender: TObject);
var
  S : String;
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência deve ser Preenchido !', VLD_Preenchido )) then
    Exit;

  resultado := DB_ExecSQL('exec spc_adm_baixaProdent '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''');

  Application.ProcessMessages;
  if resultado then
  begin
    DB_OpenSQL('select Atribuicao, associacao, matricula, Contrato, DtCompetencia, Nome, Plano, '+
    ' dtnascimento, CPF, Valor, Vigencia, Empresa, p.cod_beneficiario, pagamento, nome_ben, '+
    ' situacao = case when (cod_situacao_fpm is null) then ''Matricula/Empresa não Encontrada'''+
    ' when (cod_situacao_fpm = 1) then ''Situação Normal na Empresa'''+
    ' when (cod_situacao_fpm = 2) then ''Situação Cancelada na Empresa'''+
    ' end, nome_sdp'+
    ' from tbl_prodent p left join tbl_beneficiario b on p.cod_beneficiario = b.cod_beneficiario'+
    ' left join tbl_sitbeneficiario s on b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
    ' left join tbl_fpm f on matricula = matricula_mte and Empresa = f.cod_empresafolha'+
    ' left join tbl_situacaodpd sd on f.cod_situacaodpd = sd.cod_situacaodpd'+
    ' where dtReferencia = '''+cb2_cod_mes.valueItem+'/01/'+ed2_ano.text+
    ''' order by Empresa, matricula, DtCompetencia, Nome');
    SaveDialog.DefaultExt:= 'csv';
    SaveDialog.Filter:= 'csv';
    SaveDialog.InitialDir := 'W:\Odonto\';
    SaveDialog.FileName := 'Baixa Prodent '+cb2_cod_mes.valueitem+ed2_ano.Text;
    if DirectoryExists('W:Odonto') then
    begin
      Str_ArqRedeNormal := 'W:\Odonto\'+'Baixa Prodent '+cb2_cod_mes.valueitem+ed2_ano.Text+'.csv';
    end
    else
    begin
      if SaveDialog.Execute then
        ExtractFilePath(SaveDialog.FileName);
        Str_ArqRedeNormal:= ExtractFilePath(SaveDialog.FileName)+'Baixa Prodent '+cb2_cod_mes.valueitem+ed2_ano.Text+'.csv';
    end;

    AssignFile(byt_nameofthfile, Str_ArqRedeNormal);
    Rewrite (byt_nameofthfile);
    S:= 'Atribuicao;Cod_Assoc;Funcional;Contrato;Competencia;Nome;Plano;Dt_Nasc;CPF;Valor;Vigencia;Empresa;Cod. Benef.;Pagamento;Nome Titular no Imasf;Situacao; Descricao Sit.';
    Writeln(byt_nameofthfile,S);
    S := '';
    pgb_odonto.Visible:= True;
    pgb_odonto.Min:= 0;

    while not Tab.EOF do
    begin
      pgb_odonto.Position:= pgb_odonto.Position + 1;
      Application.ProcessMessages;
      
      S:= Tab.FieldByName('Atribuicao').AsString + ';' +
      Tab.FieldByName('associacao').AsString + ';' +
      Tab.FieldByName('matricula').AsString + ';' +
      Tab.FieldByName('Contrato').AsString + ';' +
      Tab.FieldByName('DtCompetencia').AsString + ';' +
      Tab.FieldByName('Nome').AsString + ';' +
      Tab.FieldByName('Plano').AsString + ';' +
      Tab.FieldByName('dtnascimento').AsString + ';' +
      Tab.FieldByName('CPF').AsString + ';' +
      Tab.FieldByName('Valor').AsString + ';' +
      Tab.FieldByName('Vigencia').AsString+';'+
      Tab.FieldByName('Empresa').AsString+';'+
      Tab.FieldByName('cod_beneficiario').AsString+';'+
      Tab.FieldByName('pagamento').AsString+';'+
      Tab.FieldByName('nome_ben').AsString+';'+
      Tab.FieldByName('situacao').AsString+';'+
      Tab.FieldByName('nome_sdp').AsString;
      Writeln(byt_nameofthfile, S);
      Tab.Next;
    end;
    Closefile (byt_nameofthfile);
  end;
  GeraAuditoria(0,'0','Gerados Arquivos de Baixa Odonto' ,'Baixa Prodent '+cb2_cod_mes.valueitem+ed2_ano.Text+'.csv', 0);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(Str_ArqRedeNormal),self);
  DB_ExecSQL('update tbl_loteFolhaDescontos set dtTranfOdonto_flh = '''+FormatDateTime('mm/dd/yyyy',Date)+
  ''' where dtreferencia_flh = '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''');
  
  pgb_odonto.Visible:= False;

end;

procedure TFrm_Mov_2074.PDJButton1Click(Sender: TObject);
var
  S : String;
begin
  inherited;
  DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, b.nome_ben, cpf_ben, dtnascim_ben,'+
  ' isnull(idade_ben,0) as idade_ben, sexo_ben, isnull(cod_grauparent,0) as cod_grauparent, email_ben, fonecel_ben,'+
  ' p.nome_pla, b.cod_sitbeneficiario, nome_plp, isnull(cod_estfisico,0) as cod_estfisico'+
  ' from tbl_beneficiario b left join tbl_dependente d on b.cod_beneficiario = d.cod_beneficiario'+
  ' inner join tbl_plano p on b.cod_plano = p.cod_plano'+
  ' inner join tbl_sitbeneficiario s on b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
  ' left join tbl_beneficiarioPlanoPagtoEspecial bn on b.cod_beneficiario = bn.cod_beneficiario'+
  ' left join tbl_planoPagto pp on bn.cod_planopagto = pp.cod_planopagto'+
  ' where tipo_sit < 2');

  SaveDialog.DefaultExt:= 'csv';
  SaveDialog.Filter:= 'csv';
  SaveDialog.InitialDir := 'W:\Portal\';
  SaveDialog.FileName := 'ArqBeneficiario';
  if DirectoryExists('W:Portal') then
  begin
    Str_ArqBeneficiario := 'W:\Portal\ArqBeneficiario.csv';
  end
  else
  begin
    if SaveDialog.Execute then
      ExtractFilePath(SaveDialog.FileName);
      Str_ArqBeneficiario:= ExtractFilePath(SaveDialog.FileName)+'ArqBeneficiario.csv';
  end;

  AssignFile(byt_nameofthfile, Str_ArqBeneficiario);
  Rewrite (byt_nameofthfile);
  S := '';
  pgb_portal.Visible:= True;
  pgb_portal.Min:= 0;
  while not Tab.EOF do
  begin
    pgb_portal.Position:= pgb_portal.Position + 1;
    Application.ProcessMessages;

    S:= Tab.FieldByName('cod_beneficiario').AsString + ';' +
    Tab.FieldByName('inscricao_ben').AsString + ';' +
    Tab.FieldByName('titulacartei_ben').AsString + ';' +
    Tab.FieldByName('nome_ben').AsString + ';' +
    Tab.FieldByName('cpf_ben').AsString + ';' +
    Tab.FieldByName('dtnascim_ben').AsString + ';' +
    Tab.FieldByName('idade_ben').AsString + ';' +
    Tab.FieldByName('sexo_ben').AsString + ';' +
    Tab.FieldByName('cod_grauparent').AsString + ';' +
    Tab.FieldByName('email_ben').AsString + ';' +
    Tab.FieldByName('fonecel_ben').AsString + ';' +
    Tab.FieldByName('nome_pla').AsString + ';' +
    Tab.FieldByName('cod_sitbeneficiario').AsString + ';' +
    Tab.FieldByName('nome_plp').AsString + ';' +
    Tab.FieldByName('cod_estfisico').AsString;
    Writeln(byt_nameofthfile, S);
    Tab.Next;
  end;
  Closefile (byt_nameofthfile);

  GeraAuditoria(0,'0','Gerados Arquivos da Rede Referênciada' ,'ArqBeneficiario.txt', 0);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(Str_ArqBeneficiario),self);
  pgb_portal.Visible:= False;
end;

procedure TFrm_Mov_2074.btn_coparticipacaoClick(Sender: TObject);
var
  S : String;
begin
  inherited;
  if (not BAS_ValidarCampo(cb3_cod_mes.name, 'Mês de Referência das Contas Médicas deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed3_ano.name, 'Ano de Referência das Contas Médicas deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb4_cod_mes.name, 'Mês de Referência dos Descontos deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed4_ano.name, 'Ano de Referência dos Descontos deve ser Preenchido !', VLD_Preenchido )) then
    Exit;

  if DB_OpenSQL('select * from tbl_lotecontamedica where dtrepasse_cta is null and cod_conveniado not in (9989,9997)'+
  ' and dtreferencia_cta = '''+cb3_cod_mes.valueitem+'/01/'+ed3_ano.Text+'''') > 0 then
  begin
    Dlg_Alerta('Não é possivel gerar a Coparticipação pois há Contas Médicas não fechadas no periodo '+
    cb3_cod_mes.Text+'/'+ed3_ano.Text+'!',self);
  //  Exit;
  end;
  DB_OpenSQL('select dataDesconto, cod_conveniado, nome_con, dtreferencia_cta, dtentrada_ctm, cod_padrao, nome_its, qtde_itc,'+
  ' vlinformado_itc, vlpagar_itc, cod_beneficiario, idadeben_ctm, cod_classificacaoPlano, coparticipacao'+
  ' from tmp_coparticipacao07 where cod_beneficiario > 0');

  SaveDialog.DefaultExt:= 'csv';
  SaveDialog.Filter:= 'csv';
  SaveDialog.InitialDir := 'W:\Portal\';
  SaveDialog.FileName := 'Coparticipacao_'+IntToStr(cb4_cod_mes.valueitem)+ed4_ano.Text;
  if DirectoryExists('W:Portal') then
  begin
    Str_Coparticipacao := 'W:\Portal\Coparticipacao_'+IntToStr(cb4_cod_mes.valueitem)+ed4_ano.Text+'.csv';
  end
  else
  begin
    if SaveDialog.Execute then
      ExtractFilePath(SaveDialog.FileName);
      Str_Coparticipacao:= ExtractFilePath(SaveDialog.FileName)+'Coparticipacao_'+IntToStr(cb4_cod_mes.valueitem)+ed4_ano.Text+'.csv';
  end;

  AssignFile(byt_nameofthfile, Str_Coparticipacao);
  Rewrite (byt_nameofthfile);
  S := '';
  pgb_portal.Visible:= True;
  pgb_portal.Min:= 0;
  while not Tab.EOF do
  begin
    pgb_portal.Position:= pgb_portal.Position + 1;
    Application.ProcessMessages;

    S:= Tab.FieldByName('dataDesconto').AsString + ';' +
    Tab.FieldByName('cod_conveniado').AsString + ';' +
    Tab.FieldByName('nome_con').AsString + ';' +
    Tab.FieldByName('dtreferencia_cta').AsString + ';' +
    Tab.FieldByName('dtentrada_ctm').AsString + ';' +
    Tab.FieldByName('cod_padrao').AsString + ';' +
    Tab.FieldByName('nome_its').AsString + ';' +
    Tab.FieldByName('qtde_itc').AsString + ';' +
    Tab.FieldByName('vlinformado_itc').AsString + ';' +
    Tab.FieldByName('vlpagar_itc').AsString + ';' +
    Tab.FieldByName('cod_beneficiario').AsString + ';' +
    Tab.FieldByName('idadeben_ctm').AsString + ';' +
    Tab.FieldByName('cod_classificacaoPlano').AsString + ';' +
    Tab.FieldByName('coparticipacao').AsString;
    Writeln(byt_nameofthfile, S);
    Tab.Next;
  end;
  Closefile (byt_nameofthfile);

  GeraAuditoria(0,'0','Gerados Arquivos de Coparticipacao' ,'Coparticipacao_'+IntToStr(cb4_cod_mes.valueitem)+ed4_ano.Text+'.csv', 0);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(Str_Coparticipacao),self);
  pgb_portal.Visible:= False;
end;

procedure TFrm_Mov_2074.TabSheet5Show(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  DB_OpenSQL('select top 1 dbo.fun_somaUmMes(dtreferencia_cta) as dtreferencia_cta from tbl_lotecontamedica'+
  ' where dtCoparticipacao_cta = (select max(dtCoparticipacao_cta) from tbl_lotecontamedica)');
  Obj_SetFormObjValueByName(self, cb3_cod_mes.name, FormatDateTime('m',Tab.fieldByName('dtreferencia_cta').AsDateTime));
  ed3_ano.text := FormatDateTime('yyyy', Tab.fieldByName('dtreferencia_cta').AsDateTime);

  BAS_CarregarCombo('cb4_cod_mes', 'nome_mes');
  DB_OpenSQL('select dbo.fun_somaUmMes(max(dtreferencia_flh)) as dtreferencia_flh from tbl_loteFolhaDescontos'+
  ' where dtenvio_flh is not null and cod_empresafolha = 5');
  Obj_SetFormObjValueByName(self, cb4_cod_mes.name, FormatDateTime('m',Tab.fieldByName('dtreferencia_flh').AsDateTime));
  ed4_ano.Text := FormatDateTime('yyyy', Tab.fieldByName('dtreferencia_flh').AsDateTime);


end;

procedure TFrm_Mov_2074.btn_gerarDescontoOdontoClick(Sender: TObject);
begin
  inherited;
 { if DB_OpenSQL('select distinct dtDebOdonto_flh from tbl_loteFolhaDescontos'+
  ' where cod_empresafolha <> 99 and dtDebOdonto_flh is not null and dtreferencia_flh = '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''') > 0 then
  begin
    Dlg_Alerta('Ja existe folha gerada para este Periodo!',self);
    Exit;
  end;  }
  DB_ExecSQL('spc_adm_geraDescontoOdonto '''+cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text+'''');
end;

procedure TFrm_Mov_2074.Button3Click(Sender: TObject);
begin
  inherited;
  Str_FAEE := 'W:\Folha\Resumo.csv';
  DB_OpenADOSQL('select * from tbl_empresafolha where cod_statusAtivo = 1'+
  ' and cod_empresafolha <> 99 order by cod_empresafolha');
  TabADO.First;
  lsb_historico.Items.Add('Gerando Arquivos das Empresas...');
  while not TabADO.Eof do
  begin
    GeraResumoFolha(TabADO.FieldByName('cod_empresafolha').AsString,
    ExtractFilePath(Str_FAEE)+'Resumo '+TabADO.FieldByName('nome_emp').AsString+'.csv');
    TabADO.Next;
  end;
end;

procedure TFrm_Mov_2074.btn_fechamentoOdontoClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  with fdt_principal3.spc_cons_adm_fechamentoOdonto do
  begin
    close;
    ParamByName('@dtreferencia').AsString := cb2_cod_mes.valueitem+'/01/'+ed2_ano.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_fechamentoOdonto;
  Frm_Bas_Impressao.FCampo1:= 'Competência: '+cb2_cod_mes.Text+'/'+ed2_ano.Text;
  Frm_Bas_Impressao.showReport(4256);
  fdt_principal3.spc_cons_adm_fechamentoOdonto.close;
end;

end.



