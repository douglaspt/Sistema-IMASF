unit Rel_ExtratoBenefi002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Psock, NMsmtp, NMpop3,
  ShellAPI, IniFiles;

type
  TFrm_Rel_ExtratoBenefi002 = class(TFrm_Bas_TelaPadrao)
    NMSMTP1: TNMSMTP;
    NMPOP3: TNMPOP3;
    lbl_nome: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    edt_email_ben: TDCEdit;
    Panel1: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    PDJButton4: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    btn_enviarEmail: TPDJButton;
    btn_enviarEmailLote: TPDJButton;
    pgb_registros: TProgressBar;
    Button1: TButton;
    btn_email: TButton;
    Panel6: TPanel;
    edt_dtinicialLote: TDCDateEdit;
    edt_dtfinalLote: TDCDateEdit;
    lbl_totalbenefiDesc: TLabel;
    lbl_totalbenefi: TLabel;
    Label1: TLabel;
    lbl_semExtrato: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl_enviados: TLabel;
    pgb_lote: TProgressBar;
    lsb_historico: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton2Click(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_emailClick(Sender: TObject);
    procedure btn_enviarEmailClick(Sender: TObject);
    procedure btn_enviarEmailLoteClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;

  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoBenefi002: TFrm_Rel_ExtratoBenefi002;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ExtratoBenefi002, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Med_ExtratoBenefi004, Imp_Med_ExtratoBenefi001, Fun_Obj, Bas_Impressao, ComObj,
Fun_Acesso, Fun_Email;

{$R *.DFM}

procedure TFrm_Rel_ExtratoBenefi002.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato do Beneficiário Analítico' ;
  FEditChave    := 'edt_inscricao_ben' ;
  FEditAlteracao:= 'edt_carteira' ;
  FUltFoco      := 'edt_razao_con' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL  := FSQL_Beneficiario ;
  FPesquisaTit  := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_ExtratoBenefi002.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Código do Beneficiário deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtinicial.name, 'Data Inicial de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'Data Final de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) ;
end;

procedure TFrm_Rel_ExtratoBenefi002.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi002 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
    ParamByName('@inscricao_ben').AsString := '0';
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_extratobenefi002;
  Frm_Bas_Impressao.FCampo1 := edt_dtinicial.Text;
  Frm_Bas_Impressao.FCampo2 := edt_dtfinal.Text;
  Frm_Bas_Impressao.showReport(4188);
  Fdt_principal.spc_cons_med_extratobenefi002.close;

 { Frm_Imp_Med_ExtratoBenefi002 := TFrm_Imp_Med_ExtratoBenefi002.Create(Self);
  Frm_Imp_Med_ExtratoBenefi002.FPeriodoInicial := edt_dtinicial.Text ;
  Frm_Imp_Med_ExtratoBenefi002.FPeriodoFinal := edt_dtfinal.Text ;
  Frm_Imp_Med_ExtratoBenefi002.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoBenefi002.Release;
  Fdt_principal.spc_cons_med_extratobenefi002.close; }
end;

procedure TFrm_Rel_ExtratoBenefi002.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin


end;

procedure TFrm_Rel_ExtratoBenefi002.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
    edt_email_ben.Text := '';
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, email_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_email_ben.Text := Tab.FieldByNAme('email_ben').AsString;
  end;
end;

procedure TFrm_Rel_ExtratoBenefi002.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  edt_dtinicial.Text := '01/01/'+FormatDAteTime('yyyy',date);
  edt_dtfinal.Text := FormatDAteTime('dd/mm/yyyy', date);
  edt_dtinicialLote.Text := '01/01/'+FormatDAteTime('yyyy',date);
  edt_dtfinalLote.Text := FormatDAteTime('dd/mm/yyyy', date);
end;

procedure TFrm_Rel_ExtratoBenefi002.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi002 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
    ParamByName('@inscricao_ben').AsString := '0';
    open;
  end;
  Frm_Imp_Med_ExtratoBenefi004 := TFrm_Imp_Med_ExtratoBenefi004.Create(Self);
  Frm_Imp_Med_ExtratoBenefi004.FPeriodoInicial := edt_dtinicial.Text ;
  Frm_Imp_Med_ExtratoBenefi004.FPeriodoFinal := edt_dtfinal.Text ;
  Frm_Imp_Med_ExtratoBenefi004.CarteiraBen := edt_carteira.text ;
  Frm_Imp_Med_ExtratoBenefi004.NomeBen := edt_nome.text;
  Frm_Imp_Med_ExtratoBenefi004.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoBenefi004.Release;
  Fdt_principal.spc_cons_med_extratobenefi002.close;
end;

procedure TFrm_Rel_ExtratoBenefi002.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_ExtratoBenefi002.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi001 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    open;
  end;
  Frm_Imp_Med_ExtratoBenefi001 := TFrm_Imp_Med_ExtratoBenefi001.Create(Self);
  Frm_Imp_Med_ExtratoBenefi001.FPeriodoInicial := edt_dtinicial.Text ;
  Frm_Imp_Med_ExtratoBenefi001.FPeriodoFinal := edt_dtfinal.Text ;
  Frm_Imp_Med_ExtratoBenefi001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoBenefi001.Release;
  Fdt_principal.spc_cons_med_extratobenefi001.close;
end;

procedure TFrm_Rel_ExtratoBenefi002.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_conveniado',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_conveniado',8,length('edt_cod_conveniado')),
  'cod_conveniado, nome_con, razao_con', 'Cod.Conv, Nome do Conveniado, Razão Social',
  'Localizar Conveniados', '', true));
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_ExtratoBenefi002.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

procedure TFrm_Rel_ExtratoBenefi002.Button1Click(Sender: TObject);
var
 linha, coluna : integer;
 planilha : variant;
 valorcampo : string;
begin
  inherited;
  with Fdt_principal.spc_cons_med_extratobenefi002 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
    open;
    CachedUpdates := true;
    planilha:= CreateoleObject('Excel.Application');
    planilha.WorkBooks.add(1);
    planilha.caption := 'Exportando dados do dbGrid para o Excel';
    planilha.visible := true;
    ApplyUpdates;
    First;
    for linha := 0 to RecordCount - 1 do
    begin
     for coluna := 1 to FieldCount do
     begin
       valorcampo := Fields[coluna - 1].AsString;
       planilha.cells[linha + 2,coluna] := valorCampo;
     end;
     Next;
    end;
    for coluna := 1 to FieldCount do
    begin
     valorcampo := Fields[coluna - 1].DisplayLabel;
     planilha.cells[1,coluna] := valorcampo;
    end;
    planilha.columns.Autofit;
  end;

end;

procedure TFrm_Rel_ExtratoBenefi002.btn_emailClick(Sender: TObject);
begin
  inherited;
  //Não funciona apos saida do BRMA
   { Aqui você coloca o seu servidor SMTP }
  NMSMTP1.Host := 'mail-ssl.locaweb.com.br';
  { Porta SMTP, Esta porta não deve ser alterada!}
  NMSMTP1.Port := 587;
    {Seu Nome de login }
  NMSMTP1.UserID := 'instituto@imasf.com.br';
  { Aqui você se Conecta ao servidor }
  NMSMTP1.Connect;
  { Se ocorrer algum erro durante a conexão com o servidor, o aplicativo dá uma mensagem de erro }
  if not NMSMTP1.Connected then
  begin
    raise Exception.Create('Erro de conexão');
    ShowMessage('Erro de conexão');
    Exit;
  end;

  with NMSMTP1.PostMessage do begin
    {Aqui você digita o seu e-mail }
    FromAddress := 'instituto@imasf.com.br';
    {Aqui você digita seu nome }
    FromName := 'Douglas';
    {Aqui o E-mail do destinatário }
    ToAddress.Clear;
    ToAddress.Add('cpd@imasf.com.br');

    { Aqui é a parte do assunto da mensagem }
    Subject := 'Assunto da mensagem';

    { Este será o corpo da mensagem }
    Body.Clear;
    Body.Add('1ª linha da mensagem');
    Body.Add('2ª linha da mensagem');
    Body.Add(''); { Linha em branco }
    Body.Add('última linha da mensagem');

    { Anexar arquivos(Se não quiser anexar arquivos pode apagar as tres linhas seguintes) }
  //  Attachments.Clear;
    { Aqui deve conter o endereço do anexo }
  //  Attachments.Add('c:\Sistemas\anexos\teste.txt');
  end;
  { Mandar o e-mail }
  NMSMTP1.SendMail;
  { É importante esta parte pois ela disconecta do servidor }
  NMSMTP1.Disconnect;
end;

procedure TFrm_Rel_ExtratoBenefi002.btn_enviarEmailClick(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
  Retorno : Boolean;
begin
  inherited;
  Retorno := true;
  if CriticaParametros then
    Exit;
  if (not BAS_ValidarCampo(edt_email_ben.name, 'E-mail do beneficiário não cadastrado!', VLD_Preenchido )) then
    Exit;
  if Dlg_YesNo('Deseja enviar o extrato para o e-mail do beneficiario?',self) then
  begin
    with Fdt_principal.spc_cons_med_extratobenefi002 do
    begin
      close;
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
      ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinal.Date) ;
      ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text, '-');
      ParamByName('@inscricao_ben').AsString := '0';
      open;
      pgb_registros.Max:= RecordCount;
      if RecordCount = 0 then
      begin
        Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
        Close;
        Exit;
      end;
    end;
    Fdt_principal.spc_cons_med_extratobenefi002.First;
    //SaveDialog.DefaultExt:= 'CSV';
    //SaveDialog.Filter:= 'CSV';
   // if SaveDialog.Execute then
   //    begin
    str_arquiventrad:= 'C:\Sistemas\Anexos\Extrato_'+edt_inscricao_ben.Text+'.CSV';
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'Data de Entrada;Inscrição;Nome;Cód.Padrão;Descrição;Conveniado; Qtde.;Vl.Honorário';
    Writeln(byt_nameofthfile,S);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min:= 0;
    try
      with Fdt_principal.spc_cons_med_extratobenefi002 do
      begin
        while not EOF do
        begin
          pgb_registros.Position:= pgb_registros.Position + 1;
          S:= FieldByName('dtentrada_ctm').AsString + ';' +
          FieldByName('inscricao_ben').AsString + ';' +
          FieldByName('nome_ben').AsString + ';' +
          FieldByName('cod_itemservico').AsString + ';' +
          FieldByName('nome_its').AsString + ';' +
          FieldByName('nomereduzido_con').AsString + ';' +
          FieldByName('qtde_itc').AsString + ';' +
          FormatFloat('###,###,##0.00', FieldByName('vlpagar_itc').AsFloat);
          Writeln(byt_nameofthfile, S);
          Next;
        end;
      end;
      Closefile (byt_nameofthfile);
    except
      Retorno := false;
    end;
    //Dlg_Ok('Gerado arquivo em C:\Sistemas\Anexos\ExtratoBenefi.CSV',self);
    pgb_registros.Visible:= False;
    Fdt_principal.spc_cons_med_extratobenefi002.Close;
    Retorno := EnviaEmail(edt_email_ben.Text, 'Extrato Beneficiário',
        'Segue em anexo extrato do beneficiario '+edt_nome.text+' Periodo de '+edt_dtinicial.Text+' até '+edt_dtfinal.Text, 'C:\Sistemas\Anexos\Extrato_'+edt_inscricao_ben.Text+'.CSV');
    if Retorno then
      Dlg_Ok('E-mail enviado com sucesso!',self)
    else
      Dlg_Alerta('Erro ao enviar E-mail!',self);
  end
end;

procedure TFrm_Rel_ExtratoBenefi002.btn_enviarEmailLoteClick(Sender: TObject);
var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
  Retorno : Boolean;
  FSemExtrato, FEnviados : integer;
begin
  inherited;
  Retorno := true;
  lsb_historico.Clear;
  FSemExtrato := 0;
  FEnviados := 0;
  lsb_historico.Items.Add('Iniciando...');
  DB_OpenSQL('select cod_beneficiario, inscricao_ben, nome_ben, email_ben, cod_tipodependente'+
  ' from tbl_beneficiario b, tbl_sitbeneficiario s where b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
  ' and tipo_sit < 2 and email_ben <> '''' and cod_tipodependente = 0 and cod_plano in (2,3)'+
  ' and inscricao_ben < 10'+
  ' order by inscricao_ben, cod_beneficiario');
  lsb_historico.Items.Add('Pesquisando beneficiários com e-mail...');
  lbl_totalbenefi.Caption := IntToStr(Tab.RecordCount);
  pgb_lote.Max:= tab.RecordCount;
  pgb_lote.Min:= 0;
  pgb_lote.Visible:= True;
  while not Tab.Eof do
  begin
    Application.ProcessMessages;
    lsb_historico.Items.Add('Nome: '+Tab.fieldByName('nome_ben').AsString);
    lsb_historico.Items.Add('E-mail: '+Tab.fieldByName('email_ben').AsString);
    Application.ProcessMessages;
    with Fdt_principal.spc_cons_med_extratobenefi002 do
    begin
      close;
      ParamByName('@cod_beneficiario').AsString := '0';
      ParamByName('@dtentradaInicial').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtinicialLote.Date) ;
      ParamByName('@dtentradaFinal').AsString := FormatDAteTime('mm/dd/yyyy',edt_dtfinalLote.Date) ;
      ParamByName('@cod_conveniado').AsString := '';
      ParamByName('@inscricao_ben').AsString := Tab.fieldByName('inscricao_ben').AsString;;
      open;
      lsb_historico.Items.Add('Total de Registros no Extrato: '+IntToStr(RecordCount));
    end;
    if Fdt_principal.spc_cons_med_extratobenefi002.RecordCount > 0 then
    begin
      lsb_historico.Items.Add('Gerando o Arquivo...');
      FEnviados := FEnviados + 1;
      Fdt_principal.spc_cons_med_extratobenefi002.First;
      str_arquiventrad:= 'C:\Sistemas\Anexos\Extrato_'+Tab.fieldByName('inscricao_ben').AsString+'.CSV';
      AssignFile(byt_nameofthfile, str_arquiventrad);
      Rewrite (byt_nameofthfile);
      S:= 'Data de Entrada;Inscrição;Nome;Cód.Padrão;Descrição;Conveniado; Qtde.;Vl.Honorário';
      Writeln(byt_nameofthfile,S);
      S:= '';
      try
        with Fdt_principal.spc_cons_med_extratobenefi002 do
        begin
          while not EOF do
          begin
            S:= FieldByName('dtentrada_ctm').AsString + ';' +
            FieldByName('inscricao_ben').AsString + ';' +
            FieldByName('nome_ben').AsString + ';' +
            FieldByName('cod_itemservico').AsString + ';' +
            FieldByName('nome_its').AsString + ';' +
            FieldByName('nomereduzido_con').AsString + ';' +
            FieldByName('qtde_itc').AsString + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlpagar_itc').AsFloat);
            Writeln(byt_nameofthfile, S);
            Next;
          end;
        end;
        Closefile (byt_nameofthfile);
        lsb_historico.Items.Add('Arquivo Gerado...');
      except
        Retorno := false;
        lsb_historico.Items.Add('Erro ao gerar o Arquivo...');
      end;
      lsb_historico.Items.Add('Enviando E-mail...');
      Retorno := EnviaEmail(Tab.fieldByName('email_ben').AsString, 'Extrato Beneficiário',
        'Segue em anexo extrato do beneficiario '+Tab.fieldByName('nome_ben').AsString+
        ' Periodo de '+edt_dtinicialLote.Text+' até '+edt_dtfinalLote.Text, 'C:\Sistemas\Anexos\Extrato_'+Tab.fieldByName('inscricao_ben').AsString+'.CSV');

      if Retorno then
        lsb_historico.Items.Add('E-mail enviado com sucesso!')
      else
        lsb_historico.Items.Add('Erro ao enviar E-mail!');
    end
    else
    begin
      FSemExtrato := FSemExtrato + 1;
      lsb_historico.Items.Add('Nenhum atendimento encontrado no periodo...');
    end;
    lsb_historico.Items.Add('**********************************************************************************************************************************');
    Tab.Next;
    Application.ProcessMessages;
    pgb_registros.Position:= pgb_registros.Position + 1;
    //DeleteFile('C:\Sistemas\Anexos\Extrato_'+Tab.fieldByName('cod_beneficiario').AsString+'.CSV');
  end;
  lbl_semExtrato.Caption := IntToStr(FSemExtrato);
  lbl_enviados.Caption := IntToStr(FEnviados);

end;

procedure TFrm_Rel_ExtratoBenefi002.TabSheet2Show(Sender: TObject);
begin
  inherited;
  lbl_semExtrato.Caption := '0';
  lbl_enviados.Caption := '0';
  lbl_totalbenefi.Caption := '0';
  lsb_historico.Clear;
  btn_enviarEmailLote.Enabled := Acs_AcessoEspecial('300701');
end;

end.

