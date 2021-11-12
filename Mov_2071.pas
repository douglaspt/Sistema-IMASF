unit Mov_2071;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB, Grids,
  DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, DCChoice, math;

type
  TFrm_Mov_2071 = class(TFrm_Bas_TelaPadrao)
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    TabSheet5: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    dbe_cod_simpro: TDBEdit;
    edt_descricao1: TDBEdit;
    dbg_simprohistorico: TDBGrid;
    RadioGroup1: TRadioGroup;
    btn_voltar: TSpeedButton;
    lbl_simpro: TLabel;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    lbl_brasindice: TLabel;
    GroupBox1: TGroupBox;
    btn_pesquisabrasindice: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    edt_codigobras: TBEdit;
    edt_descricaobras: TBEdit;
    btn_limparbrasindice: TPDJButton;
    dbg_brasindice: TDBGrid;
    RadioGroup2: TRadioGroup;
    TabSheet7: TTabSheet;
    btn_voltarbrasindice: TSpeedButton;
    dbg_brasindicehistorico: TDBGrid;
    TabSheet10: TTabSheet;
    dts_brasindice: TDataSource;
    dts_brasindicehistorico: TDataSource;
    TabSheet9: TTabSheet;
    btn_cargabrasindice: TPDJButton;
    btn_cargasimpro: TPDJButton;
    lbl_linha: TLabel;
    pgb_tabelas: TProgressBar;
    lbl_brasindiceh: TLabel;
    Panel5: TPanel;
    edt_cod_brasindice: TDBEdit;
    edt_nome_medicamento: TDBEdit;
    Panel1: TPanel;
    dbe_cod_laboratorio: TDBEdit;
    dbe_nome_laboratorio: TDBEdit;
    Panel4: TPanel;
    dbe_cod_medicamento: TDBEdit;
    Panel6: TPanel;
    dbe_cod_apresentacao: TDBEdit;
    dbe_nome_apresentacao: TDBEdit;
    lbl_simproh: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbe_qtde_embal: TDBEdit;
    edt_tp_embal: TDBEdit;
    edt_tp_fracao: TDBEdit;
    mem_log: TMemo;
    salva_arquivo: TSaveDialog;
    dbe_tuss: TDBEdit;
    Label11: TLabel;
    edt_cd_classif: TDBEdit;
    btn_usocomum_pmc: TPDJButton;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    btn_restritohospital: TPDJButton;
    btn_oncologico: TPDJButton;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    edt_dtinicial: TDCDateEdit;
    btn_usocomum_pfb: TPDJButton;
    stg_audi: TStringGrid;
    function MontaValorB: String;
    function testanumero(texto: string): boolean;
    procedure Separacampos;
    procedure FormCreate(Sender: TObject);
    procedure btn_cargasimproClick(Sender: TObject);
    procedure Leitura(Sender: TObject);
    procedure dbg_simproDblClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edt_codigoExit(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure Pesquisa;
    procedure btn_limparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure TabSheet5Enter(Sender: TObject);
    procedure btn_cargabrasindiceClick(Sender: TObject);
    procedure Leiturabrasindice(Sender: TObject);
    procedure Pesquisabrasindice;
    procedure TabSheet9Show(Sender: TObject);
    procedure btn_pesquisabrasindiceClick(Sender: TObject);
    procedure btn_voltarbrasindiceClick(Sender: TObject);
    procedure dbg_brasindiceDblClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure TabSheet7Enter(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure edt_codigobrasKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codigobrasExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_descricaobrasExit(Sender: TObject);
    procedure btn_limparbrasindiceClick(Sender: TObject);
    procedure TabSheet10Enter(Sender: TObject);
    procedure btn_usocomum_pmcClick(Sender: TObject);
    procedure btn_restritohospitalClick(Sender: TObject);
    procedure btn_oncologicoClick(Sender: TObject);
    procedure Soatualiza;
    procedure edt_dtinicialExit(Sender: TObject);
    procedure btn_usocomum_pfbClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Frm_Mov_2071: TFrm_Mov_2071;
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

procedure TFrm_Mov_2071.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivos Eletrônicos ( SIMPRO / BRASÍNDICE )';
  inherited;
end;

procedure TFrm_Mov_2071.btn_cargasimproClick(Sender: TObject);
begin
  inherited;
  btn_cargasimpro.SetFocus;
  dlg_leitura.FileName:= '';
  dlg_leitura.InitialDir:= 'W:\SIMPRO';
  dlg_leitura.Filter:= 'csv|*.csv';
  dlg_leitura.Execute;
  nomearquivo := dlg_leitura.filename;
  if nomearquivo = '' then                                         
     Exit;
  registro:= '';
  DB_BeginTrans;
  mem_log.Clear;
  Leitura(Self);
end;

procedure TFrm_Mov_2071.Leitura(Sender: TObject);
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
     Dlg_Erro('Não foi possível Carregar o Arquivo ! O Arquivo está vazio.', Self);
     Exit;
     end;
  if (GetFileExt(nomearquivo) <> '.CSV') and (GetFileExt(nomearquivo) <> '.csv') then
     begin
     DB_RollBack;
     Dlg_Erro('Somente extensão do Arquivo tipo CSV!', Self);
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
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
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
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço fábrica embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_em_ven:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço venda embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_em_usu:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço usuário embalagem = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_fab:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço fábrica fração = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_ven:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço venda fração = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wpc_fr_usu:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 1000;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço usuário fração = ' + copy(registro, 1, pos(';',registro)-1));
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
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', quantidade fração = ' + copy(registro, 1, pos(';',registro)-1));
         end;
       end;
       registro:= copy(registro,pos(';',registro)+1, length(registro));
       try
       wperc_lucr:= StrToFloat(copy(registro, 1, pos(';',registro)-1)) / 100;
       except
         begin
         inc(WErro);
         wgrava:= 1;
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', % lucratividade do usuário = ' + copy(registro, 1, pos(';',registro)-1));
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
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', produto ' + wcod_simpro + ' duplicado na vigência ' + DateToStr(Wdtvigencia));
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
         mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', número do código de barra = ' + copy(registro, 1, pos(';',registro)-1));
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
// ver quando material = sem classificação e bem durável?   Também wcd_classif = branco???
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
             mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', produto ' + wcod_simpro + ' duplicado na vigência ' + DateToStr(Wdtvigencia));
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
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
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

procedure TFrm_Mov_2071.dbg_simproDblClick(Sender: TObject);
begin
  inherited;
  if fdt_principal2.spc_cons_adm_simpro.RecordCount > 0 then
     PageControl2.ActivePageIndex:= 1;
end;

procedure TFrm_Mov_2071.TabSheet1Show(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:= 0;
  TabSheet4.Visible:= True;
  edt_codigo.SetFocus;
  Pesquisa;
end;

procedure TFrm_Mov_2071.Pesquisa;
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
        Dlg_Alerta('Não existe o código ' + edt_codigo.Text + ' na Simpro.', Self);
        edt_codigo.SetFocus;
        end;
     if edt_descricao.Text <> '' then
        begin
        Dlg_Alerta('Não existe a descrição ''' + edt_descricao.Text + ''' na Simpro.', Self);
        edt_descricao.SetFocus;
        end;
     Exit;
     end;
  lbl_simpro.Caption:= IntToStr(fdt_principal2.spc_cons_adm_simpro.RecordCount) + ' Registro(s)';
end;

procedure TFrm_Mov_2071.RadioGroup1Click(Sender: TObject);
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

procedure TFrm_Mov_2071.edt_codigoExit(Sender: TObject);
begin
  inherited;
  btn_pesquisa.OnClick(Self);
end;

procedure TFrm_Mov_2071.btn_pesquisaClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TFrm_Mov_2071.edt_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in['0'..'9',#08] ) then
     key:= #0;
end;

procedure TFrm_Mov_2071.btn_limparClick(Sender: TObject);
begin
  inherited;
  lbl_simpro.Caption:= '';
  fdt_principal2.spc_cons_adm_simpro.Close;
  edt_codigo.Text:= '';
  edt_descricao.Text:= '';
  Pesquisa;
end;

procedure TFrm_Mov_2071.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 0;
  PageControl2.ActivePageIndex:= 0;
  Pesquisa;
end;

procedure TFrm_Mov_2071.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0;
end;

procedure TFrm_Mov_2071.TabSheet5Enter(Sender: TObject);
begin
  inherited;
  with fdt_principal2.spc_cons_adm_simprohistorico do
    begin
    Close;
    parambyname('@cod_simpro').Value := dbe_cod_simpro.Text;
    Open;
    end;
  lbl_simproh.Caption:= IntToStr(fdt_principal2.spc_cons_adm_simprohistorico.RecordCount) + ' Registro(s)';
end;

procedure TFrm_Mov_2071.btn_cargabrasindiceClick(Sender: TObject);
begin
  inherited;
  btn_cargabrasindice.Enabled:= False;
  WErro:= 0;
  if wcod_tipocondcomerc <> 3 then
     begin
     Dlg_Alerta('A sequência do processo está incorreta, inicie o processo!', Self);
     Exit;
     end;
  DB_OpenSQL('select count(*) as qtd from tbl_brasindice');
  Seq:= Tab.FieldByName('qtd').Value;
  DB_ExecSQL('insert into tbl_brasindice (cod_brasindice, dtvigencia_bic, cod_laboratorio, nome_laboratorio, cod_medicamento, ' +
             'nome_medicamento, cod_apresentacao, nome_apresentacao, preco_pfb_medicamento, qtde_fracionamento, preco_pfb_medicamentofrac, ' +
             'edicao_ultimaalteracao, ipi, flag_portaria_pis_cofins, cod_barras, medicamento_generico, cod_tuss, cod_tipocondcomerc, ' +
             'preco_pmc_medicamento, preco_pmc_medicamentofrac) '+
             'select t.cod_brasindice, t.dtvigencia_bic, t.cod_laboratorio, t.nome_laboratorio, t.cod_medicamento, t.nome_medicamento, ' +
             't.cod_apresentacao, t.nome_apresentacao, t.preco_pfb_medicamento, t.qtde_fracionamento, t.preco_pfb_medicamentofrac, ' +
             't.edicao_ultimaalteracao, t.ipi, t.flag_portaria_pis_cofins, t.cod_barras, t.medicamento_generico, t.cod_tuss, t.cod_tipocondcomerc, ' +
             't.preco_pmc_medicamento, t.preco_pmc_medicamentofrac ' +
             'from tmp_brasindice_pfb t ' +
             'left join tbl_brasindice b on b.cod_brasindice = t.cod_brasindice ' +
             'where (b.dtvigencia_bic = (select max(b2.dtvigencia_bic) as dtvigencia_bic from tbl_brasindice b2 where b2.cod_brasindice = b.cod_brasindice) or b.dtvigencia_bic is null) ' +
             'and (b.preco_pfb_medicamento is null or b.preco_pfb_medicamento <> t.preco_pfb_medicamento)');
  DB_OpenSQL('select count(*) as qtd from tbl_brasindice');
  WSeq:= Tab.FieldByName('qtd').Value - Seq;
  if WSeq = 0 then
     begin
     Dlg_Alerta('Não há novas inclusões/alterações!', Self);
     Exit;
     end
  else
    lbl_linha.Caption:= IntToStr(WSeq) + ' Registro(s) Carregado(s),      ' + IntToStr(WErro) + ' Erro(s)';
  Application.ProcessMessages;
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;
  DB_ExecSQL('delete from tmp_brasindice_pfb');
  DB_ExecSQL('delete from tmp_brasindice_pmc');
  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Brasindice.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Brasindice.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;
  if WSeq > 0 then
     begin
     GeraAuditoria(0, '0', 'Brasindice, ' + IntToStr(WSeq) + ' registros importados da ', WHistorico, 0);
     Dlg_Ok(nomearquivo + ' com ' + IntToStr(WSeq) + ' registros importados com sucesso na Brasíndice!', Self);
     end;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
end;

procedure TFrm_Mov_2071.Leiturabrasindice(Sender: TObject);
begin
  dlg_leitura.FileName:= '';
//  dlg_leitura.InitialDir:= 'W:\BRASINDICE';
  dlg_leitura.Filter:= 'txt|*.txt';
  dlg_leitura.Execute;
  nomearquivo := dlg_leitura.filename;
  if nomearquivo = '' then
     Exit;
  registro:= '';
  DB_BeginTrans;
  mem_log.Clear;

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
  AssignFile(MyFile, nomearquivo);
  Reset(MyFile);
  myFileSize := FileSize(MyFile); // Obtém o tamanho do arquivo
 //Verifica o Tamanho do Arquivo se é Válido
  if myFileSize < 1 then
     begin
     DB_RollBack;
     Closefile(MyFile);
     Dlg_Erro('Não foi possível Carregar o Arquivo ! O Arquivo está vazio.', Self);
     Exit;
     end;
  if (GetFileExt(nomearquivo) <> '.TXT') and (GetFileExt(nomearquivo) <> '.txt') then
     begin
     DB_RollBack;
     Closefile(MyFile);
     Dlg_Erro('Somente extensão do Arquivo tipo TXT!', Self);
     Exit;
     end;
  WPasta:= ExtractFilePath(ExtractFileDir(nomearquivo));
  WPasta:= WPasta + ExtractFileName(ExtractFileDir(nomearquivo));
  if wcod_tipocondcomerc = 1 then
     if WPasta <> 'W:\BRASINDICE\COMUM' then
        begin
        DB_RollBack;
        Closefile(MyFile);
        Dlg_Erro('Esses arquivos devem estar localizados em W:\BRASINDICE\COMUM', Self);
        Exit;
        end;
  if wcod_tipocondcomerc = 2 then
     if WPasta <> 'W:\BRASINDICE\RESTRITO' then
        begin
        DB_RollBack;
        Closefile(MyFile);
        Dlg_Erro('Esses arquivos devem estar localizados em W:\BRASINDICE\RESTRITO', Self);
        Exit;
        end;
  if wcod_tipocondcomerc = 3 then
     if WPasta <> 'W:\BRASINDICE\ONCOLOGICO' then
        begin
        DB_RollBack;
        Closefile(MyFile);
        Dlg_Erro('Esses arquivos devem estar localizados em W:\BRASINDICE\ONCOLOGICO', Self);
        Exit;
        end;
  Closefile(MyFile);
  AssignFile(Arq, nomearquivo);
  Reset(Arq);
  pgb_tabelas.position:= 0 ;
  pgb_tabelas.Visible:= True ;
  lbl_linha.visible:= True ;
  WErro:= 0;
end;

procedure TFrm_Mov_2071.Pesquisabrasindice;
begin
  if (edt_codigobras.Text = '') and (edt_descricaobras.Text = '') then
     Exit;
  with fdt_principal5.spc_cons_adm_brasindice do
    begin
    Close;
    parambyname('@indice').Value := RadioGroup2.ItemIndex;
    if edt_codigobras.Text = '' then
       parambyname('@cod_brasindice').Value := '0'
    else
       parambyname('@cod_brasindice').Value := edt_codigobras.Text;
    parambyname('@descricao').Value := edt_descricaobras.Text;
    Open;
    end;
  lbl_brasindice.Caption:= IntToStr(fdt_principal5.spc_cons_adm_brasindice.RecordCount) + ' Registro(s)';
end;

procedure TFrm_Mov_2071.TabSheet9Show(Sender: TObject);
begin
  inherited;
  GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 0);
end;

procedure TFrm_Mov_2071.btn_pesquisabrasindiceClick(Sender: TObject);
begin
  inherited;
  Pesquisabrasindice;
end;

procedure TFrm_Mov_2071.btn_voltarbrasindiceClick(Sender: TObject);
begin
  inherited;
  PageControl3.ActivePageIndex:= 0;
end;

procedure TFrm_Mov_2071.dbg_brasindiceDblClick(Sender: TObject);
begin
  inherited;
  if fdt_principal5.spc_cons_adm_brasindice.RecordCount > 0 then
     PageControl3.ActivePageIndex:= 1;
end;

procedure TFrm_Mov_2071.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  edt_codigobras.Text:= '';
  edt_descricaobras.Text:= '';
  if RadioGroup2.ItemIndex = 0 then
     edt_codigobras.SetFocus
  else
     edt_descricaobras.SetFocus;
  Pesquisabrasindice;
end;

procedure TFrm_Mov_2071.TabSheet7Enter(Sender: TObject);
begin
  inherited;
  with fdt_principal5.spc_cons_adm_brasindicehistorico do
    begin
    Close;
    parambyname('@cod_brasindice').Value := edt_cod_brasindice.Text;
    Open;
    end;
  lbl_brasindiceh.Caption:= IntToStr(fdt_principal5.spc_cons_adm_brasindicehistorico.RecordCount) + ' Registro(s)';
end;

procedure TFrm_Mov_2071.TabSheet2Enter(Sender: TObject);
begin
  inherited;
  PageControl3.ActivePageIndex:= 0;
  TabSheet3.Visible:= True;
end;

procedure TFrm_Mov_2071.edt_codigobrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not( key in['0'..'9',#08] ) then
     key:= #0;
end;

procedure TFrm_Mov_2071.edt_codigobrasExit(Sender: TObject);
begin
  inherited;
  btn_pesquisabrasindice.OnClick(Self);
end;

procedure TFrm_Mov_2071.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal2.spc_cons_adm_simpro.Close;
  fdt_principal2.spc_cons_adm_simprohistorico.Close;
  fdt_principal5.spc_cons_adm_brasindice.Close;
  fdt_principal5.spc_cons_adm_brasindicehistorico.Close;
end;

function TFrm_Mov_2071.testanumero(texto: string): boolean;
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

procedure TFrm_Mov_2071.edt_descricaobrasExit(Sender: TObject);
begin
  inherited;
  btn_pesquisabrasindice.OnClick(Self);
end;

procedure TFrm_Mov_2071.btn_limparbrasindiceClick(Sender: TObject);
begin
  inherited;
  lbl_brasindice.Caption:= '';
  fdt_principal5.spc_cons_adm_brasindice.Close;
  edt_codigobras.Text:= '';
  edt_descricaobras.Text:= '';
  Pesquisabrasindice;
end;

procedure TFrm_Mov_2071.TabSheet10Enter(Sender: TObject);
begin
  inherited;
  mem_log.Clear;
  lbl_linha.Caption:= '';
  btn_usocomum_pmc.Enabled:= False;
  btn_restritohospital.Enabled:= False;
  btn_oncologico.Enabled:= False;
  btn_cargabrasindice.Enabled:= False;
end;

procedure TFrm_Mov_2071.btn_usocomum_pmcClick(Sender: TObject);
begin
  inherited;
  wcod_tipocondcomerc:= 1;
  dlg_leitura.InitialDir:= 'W:\BRASINDICE\COMUM';
  Leiturabrasindice(Self);
  if Length(registro) <= 100 then
     begin
     Application.ProcessMessages;
     while not EOF(Arq) do
       begin
       Readln(Arq, registro);
       pgb_tabelas.Position:= pgb_tabelas.Position + 1;
       Inc(WSeq);
       WMonta:= Copy(registro,2,3);
       if not testanumero(WMonta) then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' difere do layout da Brasindice.', Self);
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', difere do layout da Brasindice = ' + WMonta);
          pgb_tabelas.Visible:= False;
          Exit;
          end;

       Separacampos;
       if wflag_tipo_preco <> 'PMC' then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' tipo de preço diferente de PMC!', Self);
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', tipo de preço diferente de PMC.');
          pgb_tabelas.Visible:= False;
          Exit;
          end;
       Executado:= True;
       Executado:= DB_ExecSQL('insert into tmp_brasindice_pmc (cod_brasindice, dtvigencia_bic, cod_laboratorio, '+
                              'nome_laboratorio, cod_medicamento, nome_medicamento, cod_apresentacao, nome_apresentacao, preco_pfb_medicamento, '+
	                      'qtde_fracionamento, preco_pfb_medicamentofrac, edicao_ultimaalteracao, ipi, flag_portaria_pis_cofins, '+
 	                      'cod_barras, medicamento_generico, cod_tuss, cod_tipocondcomerc, preco_pmc_medicamento, preco_pmc_medicamentofrac) values ('+
                              DB_FormatDataSQL(wcod_brasindice, ftInteger) + ', ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate) + ', ' +
                              DB_FormatDataSQL(wcod_laboratorio, ftInteger) + ', '+ DB_FormatDataSQL(wnome_laboratorio, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_medicamento, ftInteger) + ', ' + DB_FormatDataSQL(wnome_medicamento, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_apresentacao, ftString) + ', ' + DB_FormatDataSQL(wnome_apresentacao, ftString) + ', ' +
                              DB_FormatDataSQL(wpreco_pfb_medicamento, ftFloat) + ', ' + DB_FormatDataSQL(wqtde_fracionamento, ftInteger) + ', ' +
                              DB_FormatDataSQL(wpreco_pfb_medicamentofrac, ftFloat) + ', '+ DB_FormatDataSQL(wedicao_ultimaalteracao, ftInteger) + ', ' +
                              DB_FormatDataSQL(wipi, ftFloat) + ', '+ DB_FormatDataSQL(wflag_portaria_pis_cofins, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_barras, ftString) + ', '+ DB_FormatDataSQL(wmedicamento_generico, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_tuss, ftInteger) + ', ' + DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) +  ', ' +
                              DB_FormatDataSQL(wpreco_pmc_medicamento, ftFloat) + ', ' + DB_FormatDataSQL(wpreco_pmc_medicamentofrac, ftFloat) + ')');
       if Executado = False then
          begin
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
          end;
{
       if wpreco_pmc_medicamento <> 0 then
          DB_ExecSQL('update tmp_brasindice_pfb set preco_pmc_medicamento = ' + DB_FormatDataSQL(wpreco_pmc_medicamento, ftFloat) +
                     ', preco_pmc_medicamentofrac = ' + DB_FormatDataSQL(wpreco_pmc_medicamentofrac, ftFloat) +
                     ' where cod_brasindice = ' + DB_FormatDataSQL(wcod_brasindice, ftInteger) +
                     ' and dtvigencia_bic = ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate))
       else
// Quando não tiver PMC, calculamos com a fórmula (PFB / 0.7234)
          DB_ExecSQL('update tmp_brasindice_pfb set preco_pmc_medicamento = preco_pfb_medicamento / 0.7234 ' +
                     ', preco_pmc_medicamentofrac = preco_pfb_medicamentofrac / 0.7234 ' +
                     ' where cod_brasindice = ' + DB_FormatDataSQL(wcod_brasindice, ftInteger) +
                     ' and dtvigencia_bic = ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate));
// Quando não tiver PFB, calculamos com fórmula inversa (PFB * 0.7234)
       Executado:= True;
       Executado:= DB_ExecSQL('insert into tmp_brasindice_pfb (cod_brasindice, dtvigencia_bic, cod_laboratorio, '+
                              'nome_laboratorio, cod_medicamento, nome_medicamento, cod_apresentacao, nome_apresentacao, preco_pfb_medicamento, '+
	                      'qtde_fracionamento, preco_pfb_medicamentofrac, edicao_ultimaalteracao, ipi, flag_portaria_pis_cofins, '+
 	                      'cod_barras, medicamento_generico, cod_tuss, cod_tipocondcomerc, preco_pmc_medicamento, preco_pmc_medicamentofrac) select '+
                              DB_FormatDataSQL(wcod_brasindice, ftInteger) + ', ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate) + ', ' +
                              DB_FormatDataSQL(wcod_laboratorio, ftInteger) + ', '+ DB_FormatDataSQL(wnome_laboratorio, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_medicamento, ftInteger) + ', ' + DB_FormatDataSQL(wnome_medicamento, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_apresentacao, ftString) + ', ' + DB_FormatDataSQL(wnome_apresentacao, ftString) + ', ' +
                              DB_FormatDataSQL(wpreco_pmc_medicamento * 0.7234, ftFloat) + ', ' + DB_FormatDataSQL(wqtde_fracionamento, ftInteger) + ', ' +
                              DB_FormatDataSQL(wpreco_pmc_medicamentofrac * 0.7234, ftFloat) + ', '+ DB_FormatDataSQL(wedicao_ultimaalteracao, ftInteger) + ', ' +
                              DB_FormatDataSQL(wipi, ftFloat) + ', '+ DB_FormatDataSQL(wflag_portaria_pis_cofins, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_barras, ftString) + ', '+ DB_FormatDataSQL(wmedicamento_generico, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_tuss, ftInteger) + ', ' + DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) +  ', ' +
                              DB_FormatDataSQL(wpreco_pmc_medicamento, ftFloat) + ', ' + DB_FormatDataSQL(wpreco_pmc_medicamentofrac, ftFloat) +
                              ' where not exists (select cod_brasindice from tmp_brasindice_pfb where cod_brasindice = ' + DB_FormatDataSQL(wcod_brasindice, ftInteger) + ')');
       if Executado = False then
          begin
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
          end;
          }
       lbl_linha.Caption:= IntToStr(WSeq - WErro) + ' Linha(s) Analisada(s),      ' + IntToStr(WErro) + ' Erro(s)';
       Application.ProcessMessages;
       Next;
       end;

  Closefile(Arq);
  Application.ProcessMessages;
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;
  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Brasindice.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Brasindice.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;
// Atualiza preços PMC no tmp_brasindice_pfb
     DB_ExecSQL('update tmp_brasindice_pfb set tmp_brasindice_pfb.preco_pmc_medicamento = tmp_brasindice_pmc.preco_pmc_medicamento, ' +
                'tmp_brasindice_pfb.preco_pmc_medicamentofrac = tmp_brasindice_pmc.preco_pmc_medicamentofrac ' +
                'from tmp_brasindice_pmc where tmp_brasindice_pfb.cod_brasindice = tmp_brasindice_pmc.cod_brasindice');

// Quando não tiver PMC, calculamos com a fórmula (PFB / 0.7234)
     DB_ExecSQL('update tmp_brasindice_pfb set tmp_brasindice_pfb.preco_pmc_medicamento = tmp_brasindice_pfb.preco_pfb_medicamento / 0.7234, ' +
                'tmp_brasindice_pfb.preco_pmc_medicamentofrac = tmp_brasindice_pfb.preco_pfb_medicamentofrac / 0.7234 ' +
                'from tmp_brasindice_pmc where tmp_brasindice_pfb.cod_brasindice = tmp_brasindice_pmc.cod_brasindice ' +
                'and tmp_brasindice_pfb.preco_pmc_medicamento = 0');

// Quando não tiver PFB, calculamos com fórmula inversa (PMC * 0.7234)
       Executado:= True;
       Executado:= DB_ExecSQL('insert into tmp_brasindice_pfb (cod_brasindice, dtvigencia_bic, cod_laboratorio, ' +
                              'nome_laboratorio, cod_medicamento, nome_medicamento, cod_apresentacao, nome_apresentacao, preco_pfb_medicamento, ' +
   	                      'qtde_fracionamento, preco_pfb_medicamentofrac, edicao_ultimaalteracao, ipi, flag_portaria_pis_cofins, ' +
 	                      'cod_barras, medicamento_generico, cod_tuss, cod_tipocondcomerc, preco_pmc_medicamento, preco_pmc_medicamentofrac) ' +

                              'select m.cod_brasindice, m.dtvigencia_bic, m.cod_laboratorio, ' +
                              'm.nome_laboratorio, m.cod_medicamento, m.nome_medicamento, m.cod_apresentacao, m.nome_apresentacao, m.preco_pmc_medicamento * 0.7234, ' +
	                      'm.qtde_fracionamento, m.preco_pmc_medicamentofrac * 0.7234, m.edicao_ultimaalteracao, m.ipi, m.flag_portaria_pis_cofins, ' +
 	                      'm.cod_barras, m.medicamento_generico, m.cod_tuss, m.cod_tipocondcomerc, m.preco_pmc_medicamento, m.preco_pmc_medicamentofrac ' +
                              'from tmp_brasindice_pmc m ' +
                              'where not exists (select m1.cod_brasindice from tmp_brasindice_pfb m1 where m1.cod_brasindice = m.cod_brasindice)');
       if Executado = False then
          begin
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
          end;

  Dlg_Ok(nomearquivo + ' Analisado com sucesso, Brasíndice Medicamentos de uso comum PMC, continue com o processo clicando em Analisa Uso Restrito Hospital!', Self);
  btn_usocomum_pmc.Enabled:= False;
  btn_restritohospital.Enabled:= True;
  WHistorico:= WHistorico + ', ' + nomearquivo;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
  end;
end;

procedure TFrm_Mov_2071.btn_restritohospitalClick(Sender: TObject);
begin
  inherited;
  wcod_tipocondcomerc:= 2;
  dlg_leitura.InitialDir:= 'W:\BRASINDICE\RESTRITO';
  Leiturabrasindice(Self);
  if Length(registro) <= 100 then
     begin
     Application.ProcessMessages;
     while not EOF(Arq) do
       begin
       Readln(Arq, registro);
       pgb_tabelas.Position:= pgb_tabelas.Position + 1;
       Inc(WSeq);
       WMonta:= Copy(registro,2,3);
       if not testanumero(WMonta) then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' difere do layout da Brasindice.', Self);
          pgb_tabelas.Visible:= False;
          Exit;
          end;
       Separacampos;
       if wflag_tipo_preco <> 'PFB' then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' O tipo de preço é diferente de preço de fábrica!', Self);
          pgb_tabelas.Visible:= False;
          Exit;
          end;
       Soatualiza;
       Next;
       end;
  Closefile(Arq);
  Application.ProcessMessages;
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;
  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Brasindice.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Brasindice.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;
  Dlg_Ok(nomearquivo + ' Analisado com sucesso Brasíndice medicamentos de uso restrito hospital, continue com o processo clicando em Analisa Oncológico!', Self);
  WHistorico:= WHistorico + ', ' + nomearquivo;
  btn_restritohospital.Enabled:= False;
  btn_oncologico.Enabled:= True;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
  end;
end;

procedure TFrm_Mov_2071.Separacampos;
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
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código do laboratório = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
    wnome_laboratorio:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','´'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome do laboratório = ' + WNada);
    end;
  end;
  try
  WNada:= MontaValorb;
  wcod_medicamento:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código do medicamento = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wnome_medicamento:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','´'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome do medicamento = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_apresentacao:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','´'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código da apresentação = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wnome_apresentacao:= UPPERCASE(STR_SubstChar(STR_RemoveChar(WNada,'"'),'''','´'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', nome da apresentação = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wpreco_pfb_medicamento:= StrToFloat(STR_SubstChar(STR_RemoveChar(WNada,'"'),'.',','));
  wpreco_pmc_medicamento:= wpreco_pfb_medicamento;
  except
    begin
    inc(WErro);
//    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço do medicamento = ' + STR_RemoveChar(FloatToStr(wpreco_medicamento),'"'));
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço do medicamento = ' + WNada);
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
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', flag tipo de preço = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wpreco_pfb_medicamentofrac:= StrToFloat(STR_SubstChar(STR_RemoveChar(WNada,'"'),'.',','));
  wpreco_pmc_medicamentofrac:= wpreco_pfb_medicamentofrac;
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', preço medicamento fracionado = ' + WNada);
    end;
  end;
  if wflag_tipo_preco = 'PFB' then
     begin
     wpreco_pmc_medicamento:= 0;
     wpreco_pmc_medicamentofrac:= 0;
// Forçar valores em preco, precofrac e qtdefracionada
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
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', última alteração = ' + WNada);
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
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código de barras = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_brasindice:= StrToInt(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código brasindice = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wmedicamento_generico:= UPPERCASE(STR_RemoveChar(WNada,'"'));
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', medicamento genérico = ' + WNada);
    end;
  end;
  WNada:= MontaValorb;
  try
  wcod_tuss:= STR_RemoveChar(WNada,'"');
  except
    begin
    inc(WErro);
    mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', código TUSS = ' + WNada);
    end;
  end;
end;

procedure TFrm_Mov_2071.btn_oncologicoClick(Sender: TObject);
begin
  inherited;
  wcod_tipocondcomerc:= 3;
  dlg_leitura.InitialDir:= 'W:\BRASINDICE\ONCOLOGICO';
  Leiturabrasindice(Self);
  if Length(registro) <= 100 then
     begin
     Application.ProcessMessages;
     while not EOF(Arq) do
       begin
       Readln(Arq, registro);
       pgb_tabelas.Position:= pgb_tabelas.Position + 1;
       Inc(WSeq);
       WMonta:= Copy(registro,2,3);
       if not testanumero(WMonta) then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' difere do layout da Brasindice.', Self);
          pgb_tabelas.Visible:= False;
          Exit;
          end;
       Separacampos;
       Soatualiza;
       Next;
       end;
  Closefile(Arq);
  Application.ProcessMessages;
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;
  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Brasindice.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Brasindice.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;
  Dlg_Ok(nomearquivo + ' Analisado com sucesso Brasíndice medicamentos Oncológicos, para concluir o processo, clique em CARGA!', Self);
  WHistorico:= WHistorico + ', ' + nomearquivo;
  btn_oncologico.Enabled:= False;
  btn_cargabrasindice.Enabled:= True;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
  end;
end;

function TFrm_Mov_2071.MontaValorB: String;
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

procedure TFrm_Mov_2071.Soatualiza;
begin
  Executado:= True;
  Executado:= DB_ExecSQL('update tmp_brasindice_pfb set cod_tipocondcomerc = ' + DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) +
                         ' where cod_brasindice = ' + DB_FormatDataSQL(wcod_brasindice, ftInteger) +
                         ' and dtvigencia_bic = ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate));
  if Executado = False then
      begin
      inc(WErro);
      mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
      end;
  lbl_linha.Caption:= IntToStr(WSeq - WErro) + ' Analisado(s),      ' + IntToStr(WErro) + ' Erro(s)';
  Application.ProcessMessages;
end;

procedure TFrm_Mov_2071.edt_dtinicialExit(Sender: TObject);
begin
  inherited;
  if edt_dtinicial.Text <> '' then
     begin
     wdtvigencia_bic:= StrToDate(edt_dtinicial.Text);
     btn_usocomum_pfb.Enabled:= True;
     end;
end;

procedure TFrm_Mov_2071.btn_usocomum_pfbClick(Sender: TObject);
begin
  wcod_tipocondcomerc:= 1;
  dlg_leitura.InitialDir:= 'W:\BRASINDICE\COMUM';
  Leiturabrasindice(Self);
  if Length(registro) <= 100 then
     begin
     Application.ProcessMessages;
     wdtvigencia_bic:= StrToDate(edt_dtinicial.Text);
     DB_ExecSQL('delete from tmp_brasindice_pfb');
     DB_ExecSQL('delete from tmp_brasindice_pmc');
     while not EOF(Arq) do
       begin
       Readln(Arq, registro);
       pgb_tabelas.Position:= pgb_tabelas.Position + 1;
       Inc(WSeq);
       WMonta:= Copy(registro,2,3);
       if not testanumero(WMonta) then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' difere do layout da Brasindice.', Self);
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', difere do layout da Brasindice = ' + WMonta);
          pgb_tabelas.Visible:= False;
          Exit;
          end;

       Separacampos;
       if wflag_tipo_preco <> 'PFB' then
          begin
          DB_RollBack;
          Closefile(Arq);
          Dlg_Erro(nomearquivo + ' tipo de preço diferente de PFB!', Self);
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', tipo de preço diferente de PFB.');
          pgb_tabelas.Visible:= False;
          Exit;
          end;
       wpreco_pmc_medicamento:= 0;
       wpreco_pmc_medicamentofrac:= 0;
       Executado:= True;
       Executado:= DB_ExecSQL('insert into tmp_brasindice_pfb (cod_brasindice, dtvigencia_bic, cod_laboratorio, '+
                              'nome_laboratorio, cod_medicamento, nome_medicamento, cod_apresentacao, nome_apresentacao, preco_pfb_medicamento, '+
	                      'qtde_fracionamento, preco_pfb_medicamentofrac, edicao_ultimaalteracao, ipi, flag_portaria_pis_cofins, '+
 	                      'cod_barras, medicamento_generico, cod_tuss, cod_tipocondcomerc, preco_pmc_medicamento, preco_pmc_medicamentofrac) values ('+
                              DB_FormatDataSQL(wcod_brasindice, ftInteger) + ', ' + DB_FormatDataSQL(wdtvigencia_bic, ftDate) + ', ' +
                              DB_FormatDataSQL(wcod_laboratorio, ftInteger) + ', '+ DB_FormatDataSQL(wnome_laboratorio, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_medicamento, ftInteger) + ', ' + DB_FormatDataSQL(wnome_medicamento, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_apresentacao, ftString) + ', ' + DB_FormatDataSQL(wnome_apresentacao, ftString) + ', ' +
                              DB_FormatDataSQL(wpreco_pfb_medicamento, ftFloat) + ', ' + DB_FormatDataSQL(wqtde_fracionamento, ftInteger) + ', ' +
                              DB_FormatDataSQL(wpreco_pfb_medicamentofrac, ftFloat) + ', '+ DB_FormatDataSQL(wedicao_ultimaalteracao, ftInteger) + ', ' +
                              DB_FormatDataSQL(wipi, ftFloat) + ', '+ DB_FormatDataSQL(wflag_portaria_pis_cofins, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_barras, ftString) + ', '+ DB_FormatDataSQL(wmedicamento_generico, ftString) + ', ' +
                              DB_FormatDataSQL(wcod_tuss, ftInteger) + ', ' + DB_FormatDataSQL(wcod_tipocondcomerc, ftInteger) +  ', ' +
                              DB_FormatDataSQL(wpreco_pmc_medicamento, ftFloat) + ', ' + DB_FormatDataSQL(wpreco_pmc_medicamentofrac, ftFloat) + ')');
       if Executado = False then
          begin
          inc(WErro);
          mem_log.Lines.Add('Linha ' + IntToStr(WSeq) + ', data de vigência = ' + copy(registro, 1, pos(';',registro)-1));
          end;
       lbl_linha.Caption:= IntToStr(WSeq - WErro) + ' Linha(s) Analisada(s),      ' + IntToStr(WErro) + ' Erro(s)';
       Application.ProcessMessages;
       Next;
       end;
  Closefile(Arq);
  Application.ProcessMessages;
  pgb_tabelas.Position:= 0;
  pgb_tabelas.Visible := False;
  if WErro = 0 then
     DB_Commit
  else
     begin
     DB_RollBack;
     Dlg_Erro('Não foi possível importar o arquivo, corrija os erros!', Self);
     pgb_tabelas.Position:= 0;
     pgb_tabelas.Visible := False;
     lbl_linha.Caption := '';
     lbl_linha.visible := False;
     if Dlg_YesNo('Deseja de salvar log em arquivo?', Self) then
        begin
        salva_arquivo.FileName:= 'Log_Erro_Brasindice.txt';
        mem_log.Lines.SaveToFile('Log_Erro_Brasindice.txt');
        Dlg_Ok('Arquivo salvo em ' + dlg_leitura.InitialDir + '\' + salva_arquivo.FileName, Self);
        if Dlg_YesNo('Deseja abrir o arquivo salvo?', Self) then
           WinExec(PChar('C:\\WINDOWS\\system32\\notepad.exe ' + salva_arquivo.FileName), SW_SHOW);
        end;
     Exit;
     end;
  Dlg_Ok(nomearquivo + ' Analisado com sucesso, Brasíndice Medicamentos de uso comum PFB, continue com o processo clicando em Analisa Uso Comum PMC!', Self);
  btn_usocomum_pfb.Enabled:= False;
  btn_usocomum_pmc.Enabled:= True;
  WHistorico:= nomearquivo ;
  lbl_linha.Caption := '';
  lbl_linha.visible := False;
  end;
end;

procedure TFrm_Mov_2071.stg_audiDrawCell(Sender: TObject; ACol,
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


