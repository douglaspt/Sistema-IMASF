unit Mov_2077;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB, Grids,
  DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, DCChoice, math;

type
  TFrm_Mov_2077 = class(TFrm_Bas_TelaPadrao)
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dts_Simpro: TDataSource;
    dts_simprohistorico: TDataSource;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox9: TGroupBox;
    btn_pesquisa: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edt_codigo: TBEdit;
    edt_descricao: TBEdit;
    btn_limpar: TPDJButton;
    dbg_simpro: TDBGrid;
    RadioGroup1: TRadioGroup;
    TabSheet10: TTabSheet;
    dts_brasindice: TDataSource;
    dts_brasindicehistorico: TDataSource;
    TabSheet9: TTabSheet;
    lbl_linha: TLabel;
    pgb_tabelas: TProgressBar;
    mem_log: TMemo;
    salva_arquivo: TSaveDialog;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    stg_audi: TStringGrid;
    btn_carregar: TPDJButton;
    Label6: TLabel;
    lbl_simpro: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    DBEdit10: TDBEdit;
    function MontaValorB: String;
    function testanumero(texto: string): boolean;
    procedure Separacampos;
    procedure FormCreate(Sender: TObject);
    procedure Leitura(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edt_codigoExit(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure Pesquisa;
    procedure btn_limparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure edt_codigobrasKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet10Enter(Sender: TObject);
    procedure Soatualiza;
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_carregarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Frm_Mov_2077: TFrm_Mov_2077;
  MyFile: file of Byte;
  myFileSize: Longint;
  Executado : boolean;
  Wdtvigencia, Wdtvalidade, wdtvigencia_bic: TDate;
  Linhas, I, X, WSeq, Seq, WErro, wcod_tipocondcomerc, wcod_brasindice, wcod_laboratorio, wcod_medicamento,
  wqtde_fracionamento, wedicao_ultimaalteracao, wgrava: integer;
  Lista: TStringList;
  Arq : TextFile;
  wpreco_pmc_medicamento, wpreco_pmc_medicamentofrac, wipi, wpreco_pfb_medicamento, wpreco_pfb_medicamentofrac: Double;
  wpc_em_ven, wpc_em_usu, wpc_fr_fab, wpc_fr_ven, wpc_fr_usu, wqtde_embal, wqtde_frac,
  wperc_lucr, wperc_desc, wvlr_ipi, Wpreco, Wprecomax, WQtde, WValorp, WValorc, WValorpa, WValorr, wpc_em_fab: Real;
  WNada, Wdescrica, WDT, WValor, Wtipo, Wunidade, Wempresa, Wcod_anvisa, ValorMontado, registro,
  s, dtreferencia_pat, cod_empresafolha, matriculaDebito_seg, digitoMatDeb_seg, nome_ben,
  cargo_pat, situacao_pat, vlsalario_pat, vlcontribuicao_pat, vlpatronal_pat, WEMP, WMonta, widentif, wtp_embal,
  wtp_fracao, wtip_alt, wfabrica, wcod_simpro, wcd_merc, wcd_reg_anv, wcd_barra,
  wdt_reg_anv, wlista, whospitalar, witem_fracionado, wcd_tuss, wcd_classif, wcd_usuario, wcd_fracao,
  FMesReferencia, FAnoReferencia, nomearquivo,  wnome_laboratorio, wnome_medicamento, wcod_apresentacao, wnome_apresentacao,
  wflag_tipo_preco, wflag_portaria_pis_cofins, wcod_barras, wmedicamento_generico, WPasta, wcod_tuss, WHistorico: String;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj, Fun_Acesso,
     Fun_Data, ShellAPI, dtm_principal2, dtm_principal5;

{$R *.DFM}

procedure TFrm_Mov_2077.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivos Eletr�nicos ( SIMPRO / BRAS�NDICE )';
  inherited;
end;

procedure TFrm_Mov_2077.Leitura(Sender: TObject);
function MontaValorS: String;
begin
  ValorMontado := '';
  inc(I);
  While registro[I] >= ' ' do
    begin
    if registro[I] = ';' then
       break;
    ValorMontado := ValorMontado + registro[I];
    inc(I);
    end;
  inc(X);
  result := ValorMontado;
end;

begin
  lbl_linha.Caption:= '';
  if not Dlg_YesNo('Importar de ' + nomearquivo + '?', Self) then
     Exit;
  Lista:= TStringList.Create;
  try
  Lista.LoadFromFile(nomearquivo);
  Linhas:= Lista.Count;
  finally
  Lista.Free;
  end;
  pgb_tabelas.max := Linhas;
  WSeq:= 0;
  DB_OpenSQL('select count(*) as qtd from tbl_simpro');
  Seq:= Tab.FieldByName('qtd').Value;

  if Linhas < 1 then
     begin
     DB_RollBack;
     Dlg_Erro('N�o foi poss�vel Carregar o Arquivo ! O Arquivo est� vazio.', Self);
     Exit;
     end;
  if (GetFileExt(nomearquivo) <> '.CSV') and (GetFileExt(nomearquivo) <> '.csv') then
     begin
     DB_RollBack;
     Dlg_Erro('Somente extens�o do Arquivo tipo CSV!', Self);
     Exit;
     end;
  if ExtractFileName(ExtractFileDir(nomearquivo)) <> 'SIMPRO' then
     begin
     DB_RollBack;
     Dlg_Erro('Os arquivos da Simpro devem estar localizados em W:\Simpro.', Self);
     Exit;
     end;
  AssignFile(Arq, nomearquivo);
  Reset(Arq);
  pgb_tabelas.position := 0 ;
  pgb_tabelas.Visible := true ;
  lbl_linha.visible := true ;
  WErro:= 0;
  if Length(registro) <= 100 then
     begin
     Application.ProcessMessages;
     while not EOF(Arq) do
       begin
       Readln(Arq, registro);
       pgb_tabelas.Position:= pgb_tabelas.Position + 1;
       Inc(WSeq);
       wgrava:= 0;
       wcd_usuario:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       if not testanumero(wcd_usuario) then
          begin
          DB_RollBack;
          Dlg_Erro(nomearquivo + ' difere do layout da Simpro.', Self);
          pgb_tabelas.Visible:= False;
          Closefile(Arq);
          Exit;
          end;
       wcd_fracao:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       Wdescrica:= UPPERCASE(Str_AnsiToAscii(copy(registro, 1, pos(';',registro)-1)));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       WNada:= copy(registro, 1, pos(';',registro)-1);
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       WDT:= Copy(WNada,1,2) + '/' + Copy(WNada,3,2) + '/' + Copy(WNada,5,4);
       try
         Wdtvigencia:= StrToDate(WDT);
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vig�ncia = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       widentif:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
         wpc_em_fab:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o f�brica embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_em_ven:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o venda embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_em_usu:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o usu�rio embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_fab:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o f�brica fra��o = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_ven:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o venda fra��o = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_usu:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o usu�rio fra��o = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wtp_embal:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wtp_fracao:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wqtde_embal:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', quantidade embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wqtde_frac:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', quantidade fra��o = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wperc_lucr:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', % lucratividade do usu�rio = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wtip_alt:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wfabrica:= UPPERCASE(Str_AnsiToAscii(copy(registro, 1, pos(';',registro)-1)));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wcod_simpro:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wcd_merc:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));

       DB_OpenSQL('select cod_simpro from tbl_simpro where cod_simpro = '+ DB_FormatDataSQL(Wcod_simpro, ftString) +
                  ' and dtvigenciainic = ' + DB_FormatDataSQL(Wdtvigencia, ftDate));
       if Tab.RecordCount > 0 then
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', produto ' + wcod_simpro + ' duplicado na vig�ncia ' + DateToStr(Wdtvigencia));
         end;

       try
       wperc_desc:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', % de desconto = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wvlr_ipi:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', % ipi do produto = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wcd_reg_anv:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       WNada:= copy(registro, 1, pos(';',registro)-1);
       WDT:= Copy(WNada,1,2) + '/' + Copy(WNada,3,2) + '/' + Copy(WNada,5,4);
       try
         begin
         Wdtvalidade:= StrToDate(WDT);
         wdt_reg_anv:= DateToStr(Wdtvalidade);
         end;
       except
         wdt_reg_anv:= WNada;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wcd_barra:= copy(registro, 1, pos(';',registro)-1);
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', n�mero do c�digo de barra = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wlista:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       whospitalar:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       witem_fracionado:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wcd_tuss:= UPPERCASE(copy(registro, 1, pos(';',registro)-1));
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       wcd_classif:= UPPERCASE(registro);

// REVER AQUI
// ver quando material = sem classifica��o e bem dur�vel?   Tamb�m wcd_classif = branco???
       wcod_tipocondcomerc:= 4;
       if wcd_classif = 'MC' then
          wcod_tipocondcomerc:= 4;
       if wcd_classif = 'ME' then
          wcod_tipocondcomerc:= 5;
       if wcd_classif = 'OT' then
          wcod_tipocondcomerc:= 6;
       if wcd_classif = 'PT' then
          wcod_tipocondcomerc:= 6;
       if wcd_classif = 'ST' then
          wcod_tipocondcomerc:= 6;
       if wcd_classif = 'IT' then
          wcod_tipocondcomerc:= 6;

       registro:= copy(registro,pos(';',registro)+1, length(registro));
       Executado := True;
       if wgrava = 0 then
          begin
          Executado:= DB_ExecSQL('insert into tbl_simpro (cod_simpro, dtvigenciainic, descricao, identif, pc_em_fab, pc_em_ven, pc_em_usu, pc_fr_fab, '+
                      'pc_fr_ven, pc_fr_usu, tp_embal, tp_fracao, qtde_embal, qtde_frac, perc_lucr, tip_alt, fabrica, cd_merc, perc_desc, '+
                      'vlr_ipi, cd_reg_anv, dt_reg_anv, cd_barra, lista, hospitalar, item_fracionado, cd_tuss, cd_classif, cd_usuario, cd_fracao, cod_tipocondcomerc) values ('+
                      DB_FormatDataSQL(Wcod_simpro, ftString) + ', ' + DB_FormatDataSQL(Wdtvigencia, ftDate) + ', ' + DB_FormatDataSQL(Wdescrica, ftString) + ', '+
                      DB_FormatDataSQL(widentif, ftFloat) + ', ' + DB_FormatDataSQL(wpc_em_fab, ftFloat) + ', ' + DB_FormatDataSQL(wpc_em_ven, ftFloat) + ', '+
                      DB_FormatDataSQL(wpc_em_usu, ftFloat)+ ', ' + DB_FormatDataSQL(wpc_fr_fab, ftFloat)+ ', '+ DB_FormatDataSQL(wpc_fr_ven, ftFloat) + ', ' +
                      DB_FormatDataSQL(wpc_fr_usu, ftFloat)+ ', ' + DB_FormatDataSQL(wtp_embal, ftString)+ ', '+ DB_FormatDataSQL(wtp_fracao, ftString) + ', ' +
                      DB_FormatDataSQL(wqtde_embal, ftFloat) + ', ' + DB_FormatDataSQL(wqtde_frac, ftFloat) + ', ' + DB_FormatDataSQL(wperc_lucr, ftFloat) + ', ' +
                      DB_FormatDataSQL(wtip_alt, ftString) + ', ' + DB_FormatDataSQL(wfabrica, ftString) + ', ' + DB_FormatDataSQL(wcd_merc, ftString) + ', '+
                      DB_FormatDataSQL(wperc_desc, ftFloat) + ', ' + DB_FormatDataSQL(wvlr_ipi, ftFloat) + ', ' + DB_FormatDataSQL(wcd_reg_anv, ftString) + ', '+
                      DB_FormatDataSQL(wdt_reg_anv, ftString) + ', ' + DB_FormatDataSQL(wcd_barra, ftString) + ', ' + DB_FormatDataSQL(wlista, ftString) + ', '+
                      DB_FormatDataSQL(whospitalar, ftString) + ', ' + DB_FormatDataSQL(witem_fracionado, ftString) + ', ' + DB_FormatDataSQL(wcd_tuss, ftString) + ', '+
                      DB_FormatDataSQL(wcd_classif, ftString) + ', '+ DB_FormatDataSQL(wcd_usuario, ftString) + ', '+ DB_FormatDataSQL(wcd_fracao, ftString) + ', '+
                      DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) + ')');
          if Executado = False then
             begin
             inc(WErro);
             mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', produto ' + wcod_simpro + ' duplicado na vig�ncia ' + DateToStr(Wdtvigencia));
             end;
          end;
       lbl_linha.Caption:= IntToStr(WSeq) + ' Registro(s) Lido(s),      ' + IntToStr(WErro) + ' Erro(s)';
       Application.ProcessMessages;
       Next;
       end;
  Closefile(Arq);
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;

  DB_Commit;
  if WErro > 0 then
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Erro_'+ExtractFileName(dlg_leitura.FileName);
        mem_log.Lines.SaveToFile('Erro_'+ExtractFileName(dlg_leitura.FileName));
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        end;

{  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('N�o foi poss�vel importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Simpro.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Simpro.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;}

  DB_OpenSQL('select count(*) as qtd from tbl_simpro');
  WSeq:= Tab.FieldByName('qtd').Value;
  WSeq:= WSeq - Seq;
  if WSeq > 0 then
     begin
     GeraAuditoria(0, '0', 'Simpro, ' + IntToStr(WSeq) + ' registros importados de ' + nomearquivo, '', 0);
     Dlg_Ok(nomearquivo + ' com ' + IntToStr(WSeq) + ' registros importados com sucesso na Simpro!', Self);
     end;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
  end;
end;

procedure TFrm_Mov_2077.TabSheet1Show(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:= 0;
  TabSheet4.Visible:= True;
  edt_codigo.SetFocus;
  Pesquisa;
end;

procedure TFrm_Mov_2077.Pesquisa;
begin
  if (edt_codigo.Text = '') and (edt_descricao.Text = '') then
     Exit;
  with fdt_principal2.spc_cons_adm_simpro do
    begin
    Close;
    parambyname('@indice').Value := RadioGroup1.ItemIndex;
    if edt_codigo.Text = '' then
       parambyname('@cod_simpro').Value := '0'
    else
       parambyname('@cod_simpro').Value := edt_codigo.Text;
    parambyname('@descricao').Value := edt_descricao.Text;
    Open;
    end;
  if fdt_principal2.spc_cons_adm_simpro.RecordCount < 1 then
     begin
     if edt_codigo.Text <> '' then
        begin
        Dlg_Alerta('N�o existe o c�digo ' + edt_codigo.Text + ' na Simpro.', Self);
        edt_codigo.SetFocus;
        end;
     if edt_descricao.Text <> '' then
        begin
        Dlg_Alerta('N�o existe a descri��o ''' + edt_descricao.Text + ''' na Simpro.', Self);
        edt_descricao.SetFocus;
        end;
     Exit;
     end;
  lbl_simpro.Caption:= IntToStr(fdt_principal2.spc_cons_adm_simpro.RecordCount) + ' Registro(s)';
end;

procedure TFrm_Mov_2077.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  edt_codigo.Text:= '';
  edt_descricao.Text:= '';
  if RadioGroup1.ItemIndex = 0 then
     edt_codigo.SetFocus
  else
     edt_descricao.SetFocus;
  Pesquisa;
end;

procedure TFrm_Mov_2077.edt_codigoExit(Sender: TObject);
begin
  inherited;
  btn_pesquisa.OnClick(Self);
end;

procedure TFrm_Mov_2077.btn_pesquisaClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TFrm_Mov_2077.edt_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in['0'..'9',#08] ) then
     key:= #0;
end;

procedure TFrm_Mov_2077.btn_limparClick(Sender: TObject);
begin
  inherited;
  lbl_simpro.Caption:= '';
  fdt_principal2.spc_cons_adm_simpro.Close;
  edt_codigo.Text:= '';
  edt_descricao.Text:= '';
  Pesquisa;
end;

procedure TFrm_Mov_2077.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 0;
  PageControl2.ActivePageIndex:= 0;
  Pesquisa;
end;

procedure TFrm_Mov_2077.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0;
end;



procedure TFrm_Mov_2077.TabSheet9Show(Sender: TObject);
begin
  inherited;
  GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 0);
end;

procedure TFrm_Mov_2077.edt_codigobrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not( key in['0'..'9',#08] ) then
     key:= #0;
end;

procedure TFrm_Mov_2077.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal2.spc_cons_adm_simpro.Close;
  fdt_principal2.spc_cons_adm_simprohistorico.Close;
  fdt_principal5.spc_cons_adm_brasindice.Close;
  fdt_principal5.spc_cons_adm_brasindicehistorico.Close;
end;

function TFrm_Mov_2077.testanumero(texto: string): boolean;
var
  i: integer;
begin
  result := False;
  for i := 1 to length(texto) do
    if texto[i] in ['0'..'9'] then
      result:= True
    else
      begin
      result:= False;
      Exit;
      end;
end;

procedure TFrm_Mov_2077.TabSheet10Enter(Sender: TObject);
begin
  inherited;
  mem_log.Clear;
  lbl_linha.Caption:= '';


end;

procedure TFrm_Mov_2077.Separacampos;
begin
  I:= 0;
  X:= 0;
  WNada:= MontaValorb;
  WNada:= DB_FormatDataSQL(wMonta, ftInteger);
  try
    wcod_laboratorio:= StrToInt(WNada);// DB_FormatDataSQL(WMonta, ftInteger); //StrToInt(WNada);
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo do laborat�rio = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
    wnome_laboratorio:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','�'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome do laborat�rio = ' + WNada);
    end;
  end;
  try
  WNada:= MontaValorb;
  wcod_medicamento:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo do medicamento = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wnome_medicamento:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','�'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome do medicamento = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_apresentacao:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','�'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo da apresenta��o = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wnome_apresentacao:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','�'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome da apresenta��o = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wpreco_pfb_medicamento:= StrToFloat(STR_SubstChar(STR_RemoveChar(WNada,'"'),'.',','));
  wpreco_pmc_medicamento:= wpreco_pfb_medicamento;
  except
    begin
    inc(WErro);
//    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o do medicamento = ' + STR_RemoveChar(FloatToStr(wpreco_medicamento),'"'));
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o do medicamento = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wqtde_fracionamento:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', quant.fracionamento = ' + WNada);
    end;
  end;
  if wqtde_fracionamento = 0 then
     wqtde_fracionamento:= 1;
  WNada:= MontaValorb;
  try
  wflag_tipo_preco:= UPPERCASE(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', flag tipo de pre�o = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wpreco_pfb_medicamentofrac:= StrToFloat(STR_SubstChar(STR_RemoveChar(WNada,'"'),'.',','));
  wpreco_pmc_medicamentofrac:= wpreco_pfb_medicamentofrac;
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', pre�o medicamento fracionado = ' + WNada);
    end;
  end;
  if wflag_tipo_preco = 'PFB' then
     begin
     wpreco_pmc_medicamento:= 0;
     wpreco_pmc_medicamentofrac:= 0;
// For�ar valores em preco, precofrac e qtdefracionada
     if wpreco_pfb_medicamento = 0 then
        begin
        wpreco_pfb_medicamento:= 0.01;
        wpreco_pfb_medicamentofrac:= 0.01;
        end;
     end;
  WNada:= MontaValorb;
  try
  wedicao_ultimaalteracao:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', �ltima altera��o = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wipi:= StrToFloat(STR_SubstChar(STR_RemoveChar(WNada,'"'),'.',','));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', ipi = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wflag_portaria_pis_cofins:= UPPERCASE(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', flag portaria pis = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_barras:= STR_RemoveChar(WNada,'"');
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo de barras = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_brasindice:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo brasindice = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wmedicamento_generico:= UPPERCASE(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', medicamento gen�rico = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_tuss:= STR_RemoveChar(WNada,'"');
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', c�digo TUSS = ' + WNada);
    end;
  end;
end;

function TFrm_Mov_2077.MontaValorB: String;
begin
  ValorMontado := '';
  inc(I);
  While registro[I] >= ' ' do
    begin
    if registro[I] = ',' then
       if registro[I+1] = '"' then
       break;
    ValorMontado := ValorMontado + registro[I];
    inc(I);
    end;
  inc(X);
  result := ValorMontado;
end;

procedure TFrm_Mov_2077.Soatualiza;
begin
  Executado:= True;
  Executado:= DB_ExecSQL('update tmp_brasindice_pfb set cod_tipocondcomerc = ' + DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) +
                         ' where cod_brasindice = ' + DB_FormatDataSQL(wcod_brasindice, ftInteger) +
                         ' and dtvigencia_bic = ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate));
  if Executado = False then
      begin
      inc(WErro);
      mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vig�ncia = ' + copy(registro, 1, pos(';',registro)-1));
      end;
  lbl_linha.Caption:= IntToStr(WSeq - WErro) + ' Analisado(s),      ' + IntToStr(WErro) + ' Erro(s)';
  Application.ProcessMessages;
end;

procedure TFrm_Mov_2077.stg_audiDrawCell(Sender: TObject; ACol,
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

function tbFileSize(const FileName: string): integer;
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

procedure TFrm_Mov_2077.btn_carregarClick(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, I, TamanhoArq: Integer;
  Executado : boolean;
  TamArq : double;
  STR_cod_simpro, STR_cod_fracao, STR_descricao,  STR_dtvigencia, STR_identificacao,
  STR_prFabrica, STR_prVenda, STR_prUsuario, STR_prFabricaFracao, STR_prVendaFracao,
  STR_prUsuarioFracao, STR_tipoEmbalagem, STR_tipoFracao, STR_qtde, STR_qtdeFracao,
  STR_lucro, STR_tipoAlteracao, STR_fabricante, STR_cod_simproTUSS, STR_cod_mercado,
  STR_desconto, STR_ipi, STR_numAnvisa, STR_dtvalidade, STR_cod_barra, STR_tipoLista,
  STR_exclusivoHosp, STR_fracionado, STR_cod_TUSS, STR_classificacao, STR_referencia,
  STR_generico, STR_diversos, Linha, nomearquivo : String;
begin
  inherited;
  dlg_leitura.InitialDir:= 'W:\SIMPRO';
  dlg_leitura.Filter:= 'csv|*.csv';

  if not dlg_leitura.execute then
    exit ;
  nomearquivo := dlg_leitura.filename;
  if (GetFileExt(nomearquivo) <> '.CSV') and (GetFileExt(nomearquivo) <> '.csv') then
  begin
    Dlg_Erro('Somente extens�o do Arquivo tipo CSV!', Self);
    Exit;
  end;

  AssignFile(ArquivoCSV, nomearquivo);
  Executado := true;
  DB_BeginTrans;
  try
    Reset(ArquivoCSV);
    //Readln(ArquivoCSV, Linha);
    Contador := 1;
    pgb_tabelas.Visible:= True;
    pgb_tabelas.Min:= 0;
    TamArq:= tbFileSize(dlg_leitura.FileName) / 66;
    pgb_tabelas.max:= round(TamArq);
    while not EOF(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, Linha);
      //ShowMessage(Linha);

      STR_cod_simpro := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cod_fracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_descricao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_dtvigencia := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_identificacao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prFabrica := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prVenda := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prUsuario := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prFabricaFracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prVendaFracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_prUsuarioFracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_tipoEmbalagem := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_tipoFracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_qtde := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_qtdeFracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_lucro := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_tipoAlteracao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_fabricante := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cod_simproTUSS := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cod_mercado := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_desconto := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_ipi := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_numAnvisa := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_dtvalidade := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cod_barra := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_tipoLista := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_exclusivoHosp := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_fracionado := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_cod_TUSS := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_classificacao := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_referencia := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_generico := copy(Linha, 1, pos(';',Linha)-1);
      Linha := copy(Linha,pos(';',Linha)+1, length(Linha));
      STR_diversos := Linha;
      STR_dtvigencia := copy(STR_dtvigencia,3,2)+'/'+copy(STR_dtvigencia,1,2)+'/'+copy(STR_dtvigencia, 5,4);
      if ((STR_dtvalidade = 'PENDENTE') OR (STR_dtvalidade = 'VIGENTE') OR (STR_dtvalidade = 'SOB PROTOCOLO') OR (STR_dtvalidade = '')) then
        STR_dtvalidade := 'null'
      else
        STR_dtvalidade := ''''+(copy(STR_dtvalidade,3,2)+'/'+copy(STR_dtvalidade,1,2)+'/'+copy(STR_dtvalidade, 5,4))+'''';
      Executado := DB_ExecSQL('insert into tbl_simpro values ('''+STR_cod_simpro+''','''+
      STR_cod_fracao+''', '''+STR_SubstChar(STR_descricao, '''', ' ')+''','''+STR_dtvigencia+''','''+STR_identificacao+''','+
      DB_FormatDataSQL((Strtofloat(STR_prFabrica)/100),ftFloat)+','+DB_FormatDataSQL((Strtofloat(STR_prVenda)/100),ftFloat)+','+
      DB_FormatDataSQL((Strtofloat(STR_prUsuario)/100),ftFloat)+','+DB_FormatDataSQL((Strtofloat(STR_prFabricaFracao)/1000),ftFloat)+','+
      DB_FormatDataSQL((Strtofloat(STR_prVendaFracao)/1000),ftFloat)+','+DB_FormatDataSQL((Strtofloat(STR_prUsuarioFracao)/1000),ftFloat)+','''+
      STR_tipoEmbalagem+''','''+STR_tipoFracao+''','+DB_FormatDataSQL((Strtofloat(STR_qtde)/100),ftFloat)+','+DB_FormatDataSQL((Strtofloat(STR_qtdeFracao)/100),ftFloat)+','''+STR_lucro+''','''+
      STR_tipoAlteracao+''','''+STR_SubstChar(STR_fabricante, '''', ' ')+''','''+STR_cod_simproTUSS+''','''+
      STR_cod_mercado+''','+DB_FormatDataSQL((Strtofloat(STR_desconto)/100),ftFloat)+','+DB_FormatDataSQL((Strtofloat(STR_ipi)/100),ftFloat)+','''+STR_numAnvisa+''','+
      STR_dtvalidade+','''+STR_cod_barra+''','''+STR_tipoLista+''','''+STR_exclusivoHosp+''','''+
      STR_fracionado+''','''+STR_cod_TUSS+''','''+STR_classificacao+''','''+STR_SubstChar(STR_referencia, '''', ' ')+''','''+
      STR_generico+''','''+STR_diversos+''', getdate(),'''+ExtractFileName(nomearquivo)+''')');
      Contador := Contador + 1;
      pgb_tabelas.Position:= Contador;

    end;
  finally
    CloseFile(ArquivoCSV);
  end;
  if Executado then
  begin
    GeraAuditoria(0,'0','Carregamento do Arquivo SIMPRO Realizado' ,'Carga SIMPRO '+nomearquivo, 0);
    Dlg_Ok('Carregamento Realizado com Sucesso!',self);
    DB_Commit;
    DB_RollBack;
  end
  else
  begin
    DB_RollBack;
    Dlg_Alerta('Erro ao Carregar Arquivo',self);
  end;
  pgb_tabelas.Visible:= False;

end;

end.


