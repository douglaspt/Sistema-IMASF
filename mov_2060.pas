{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit mov_2060;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList, FileCtrl,
  Psock, NMsmtp, NMpop3, IniFiles, ShellApi;

type
  TFrm_Mov_2060 = class(TFrm_Bas_TelaPadrao)
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    Panel1: TPanel;
    btn_localizar: TPDJButton;
    DataSource3: TDataSource;
    lbl_total: TLabel;
    btn_excluir: TPDJButton;
    btn_imprimir: TPDJButton;
    btn_exportacsv: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;                                                                  
    Memo1: TMemo;
    NMSMTP1: TNMSMTP;
    btn_novo: TPDJButton;
    Label1: TLabel;
    btn_fecharmes: TPDJButton;
    stg_audi: TStringGrid;
    NMPOP31: TNMPOP3;
    procedure btn_localizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_exportacsvClick(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
    procedure cbx_cod_empresafolhaEnter(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure Tmr_CloseTimer(Sender: TObject);
    procedure btn_fecharmesClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    function ExecutarEEsperar(NomeArquivo : String) : Boolean;
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
    wCod_Beneficiario : String;
  end;

var
  Frm_Mov_2060: TFrm_Mov_2060;
  WMES: String[02];
  WANO: String[04];
  WGERAL: Real;
  WAA: String[4];
  WEmail, WResponsavel, WPasta, WDestinatario, WCCopia: String;
  Mesant, AnoAnt, AnoDir: Integer;
  TRegT, TRegD, GTRegT, GTRegD, WTot, TValT, TValD, GTValT, GTValD: Double;
  Data: TInifile;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, dtm_principal6,
     Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_data, dtm_principal, dtm_principal4,
     fun_str, Fun_Email;

{$R *.DFM}

function TFrm_Mov_2060.ExecutarEEsperar(NomeArquivo : String) : Boolean;
var
  Sh: TShellExecuteInfo;
  CodigoSaida: DWORD;
begin
  FillChar(Sh, SizeOf(Sh), 0) ;
  Sh.cbSize := SizeOf(TShellExecuteInfo) ;
  with Sh do
    begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpVerb := nil;
    lpFile := PChar(NomeArquivo);
    nShow := SW_SHOWNORMAL;
    end;
  if ShellExecuteEx(@Sh) then
     begin
     repeat
     Application.ProcessMessages;
     GetExitCodeProcess(Sh.hProcess, CodigoSaida) ;
     until not(CodigoSaida = STILL_ACTIVE);
     Result := True;
     end
  else
     Result := False;
end;

procedure TFrm_Mov_2060.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_excluir.Enabled := b ;
end;

procedure TFrm_Mov_2060.btn_localizarClick(Sender: TObject);
begin
  inherited;
  FStatus:= 0;
  lbl_total.Visible:= False;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser preenchido !', VLD_Preenchido )) then
    begin
    Panel1.SetFocus;
    cbx_cod_mes.SetFocus;
    FStatus:= 1;
    Exit;
    end;
end;

procedure TFrm_Mov_2060.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_usuario', 'nome_usu');
  BAS_CarregarCombo('cbx_cod_sitcontribPFGB', 'nome_scp');                 
  BAS_CarregarCombo('cb2_cod_sitcontribPFGB', 'nome_scp');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
//  if DB_OpenSQL('select vlfixo_piv from tbl_planoitemvalor where cod_planopagto = 1') > 0 then
//     ValorPFGB:= Tab.Fields[0].Value;
  GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 0);
end;

procedure TFrm_Mov_2060.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal6.spc_cons_adm_contribPFGB.Close;
end;

procedure TFrm_Mov_2060.btn_imprimirClick(Sender: TObject);
begin
  btn_localizarClick(Sender);
  if FStatus = 1 then
     Exit;
  TRegT:= 0;
  TRegD:= 0;
  GTRegT:= 0;
  GTRegD:= 0;
  Mesant:= 0;
  AnoAnt:= 0;
  WGERAL:= 0;
  Memo1.Clear;
  Memo1.Visible:= False;

  with fdt_principal4.spc_cons_adm_contribPFGBResumo do
    begin
    close;
    ParamByName('@dtreferencia_cpb').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    Parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    Parambyname('@cod_sitcontribPFGB').AsString := '2';  // Pagos
    Open;
    end;

  with fdt_principal4.spc_cons_adm_contribPFGBResumo do
    begin
    if recordcount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
       Close;
       pnl_referencia.SetFocus;
       Exit;
       end;
    end;
  Fdt_principal4.spc_cons_adm_contribPFGBResumo.First;

// Separa qtde e valores do mês corrente dos períodos retroativos
  with Fdt_principal4.spc_cons_adm_contribPFGBResumo do
    begin
    while not eof do
       begin
       if FieldByName('mes').Value <> 00 then
          begin
          if FieldByName('mes').Value = cbx_cod_mes.ValueItem then
             begin
             if FieldByName('tit').Value = 1 then
                begin
                TRegT:= FieldByName('ContReg').Value;
                GTRegT:= GTRegT + TRegT;
                end
             else
                begin
                TRegD:= FieldByName('ContReg').Value;
                GTRegD:= GTRegD + FieldByName('ContReg').Value;
                end
             end
          else
             if (FieldByName('mes').Value <> Mesant) or (FieldByName('ano').Value <> AnoAnt) then
                begin
                TRegD:= TRegD + TRegT;
                TRegT:= 0;
                TRegD:= 0;
                Mesant:= FieldByName('mes').Value;
                AnoAnt:= FieldByName('ano').Value;
                end;
             if FieldByName('mes').Value <> cbx_cod_mes.ValueItem then
                if FieldByName('tit').Value = 1 then
                   begin
                   TRegT:= FieldByName('ContReg').Value;
                   GTRegT:= GTRegT + FieldByName('ContReg').Value;
                   end
                else
                   begin
                   TRegD:= FieldByName('ContReg').Value;
                   GTRegD:= GTRegD + FieldByName('ContReg').Value;
                   end
          end
       else
          if FieldByName('mes').Value = 0 then
             begin
             if FieldByName('tit').Text = '1' then
                begin
                TRegD:= TRegD + TRegT;
                GTRegD:= GTRegD + GTRegT;
                WGERAL:= WGERAL + FieldByName('tot').Value;
                end
             else
                WGERAL:= WGERAL + FieldByName('tot').Value;
             end;
{
          if FieldByName('mes').Value = 0 then
             begin
             if FieldByName('tit').Text = '1' then
                if recordcount = 2 then
                   begin
                   TRegD:= TRegD + TRegT;
                   GTRegD:= GTRegD + GTRegT;
                   WGERAL:= WGERAL + FieldByName('tot').Value;
                   end
             else
                begin
                GTRegD:= GTRegD + GTRegT;
                WGERAL:= WGERAL + FieldByName('tot').Value;
                end;
             end;   }
     Next;
     end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_contribPFGBResumo;
  Frm_Bas_Impressao.FCampo1 := 'R$' + FormatFloat('##,###,###,##0.00', WGERAL);
  Frm_Bas_Impressao.FCampo2 := Fdt_principal4.spc_cons_adm_contribPFGBResumo.FieldByName('descricao_emp').AsString;
  Frm_Bas_Impressao.FCampo3 := cbx_cod_mes.Text + ' de ' + FormatFloat('0000',StrToInt(WAA));
  Frm_Bas_Impressao.FCampo4 := str_extenso(WGERAL);
  Frm_Bas_Impressao.FCampo5 := '';
  Frm_Bas_Impressao.FCampo6 := '';
  Mesant:= 0;
  AnoAnt:= 0;
  TRegD:= 0;
  if Fdt_principal4.spc_cons_adm_contribPFGBResumo.RecordCount > 4 then
     begin
     Fdt_principal4.spc_cons_adm_contribPFGBResumo.First;
     Frm_Bas_Impressao.FCampo5 := ', sendo este valor resultante de:';
     with Fdt_principal4.spc_cons_adm_contribPFGBResumo do
       begin
       while not eof do
          begin
          if FieldByName('mes').Value <> 0 then
             if (FieldByName('mes').Value <> Mesant) or (FieldByName('ano').Value <> AnoAnt) then
                if Mesant = 0 then
                   begin
                   Mesant:= FieldByName('mes').Value;
                   AnoAnt:= FieldByName('ano').Value;
                   TRegD:= FieldByName('tot').Value;
                   end
                else
                   begin
                   if Mesant <> cbx_cod_mes.ValueItem then
                      Memo1.Lines.Add('- Diferença da prestação de serviço assistencial competência mês de '+
                                      FormatDateTime('mmmm/yyyy', StrToDate('01/' + IntToStr(Mesant) +
                                      '/' + IntToStr(AnoAnt))) + ', importando em R$' +
                                      FormatFloat('##,###,###,##0.00',TRegD) +
                                      ' (' + str_extenso(TRegD) + ');')
                   else
                      Memo1.Lines.Add('- R$' + FormatFloat('##,###,###,##0.00',TRegD) +
                                      ' (' + str_extenso(TRegD) + ') da competência de '+
                                      FormatDateTime('mmmm/yyyy', StrToDate('01/' + IntToStr(Mesant) +
                                      '/' + IntToStr(AnoAnt)))+ ';');
                   Mesant:= FieldByName('mes').Value;
                   AnoAnt:= FieldByName('ano').Value;
                   TRegD:= FieldByName('tot').Value;
                   end
             else
                TRegD:= TRegD + FieldByName('tot').Value;
          Next;
          end;
       if Mesant <> cbx_cod_mes.ValueItem then
                       Memo1.Lines.Add('- Diferença da prestação de serviço assistencial competência mês de '+
                                      FormatDateTime('mmmm/yyyy', StrToDate('01/' + IntToStr(Mesant) +
                                      '/' + IntToStr(AnoAnt))) + ', importando em R$' +
                                      FormatFloat('##,###,###,##0.00',TRegD) +
                                      ' (' + str_extenso(TRegD) + ');')
       else
                      Memo1.Lines.Add('- R$' + FormatFloat('##,###,###,##0.00',TRegD) +
                                      ' (' + str_extenso(TRegD) + ') da competência de '+
                                      FormatDateTime('mmmm/yyyy', StrToDate('01/' + IntToStr(Mesant) +
                                      '/' + IntToStr(AnoAnt)))+ ';');
       end;
     end;
  Frm_Bas_Impressao.FCampo6 := Memo1.Text;

  Frm_Bas_Impressao.FCampo7 := '';
  Frm_Bas_Impressao.FCampo8 := '';
  Frm_Bas_Impressao.FCampo9 := '';
  Frm_Bas_Impressao.FCampo10 := '';
  Frm_Bas_Impressao.FCampo11 := '';


  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Bas_Impressao.FSetorChefe := Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FChefe := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
    Frm_Bas_Impressao.FCargoChefe := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    Frm_Bas_Impressao.FSetorChefe := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FChefe := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
    Frm_Bas_Impressao.FCargoChefe := Tab.FieldByName('cargoResponsavel').AsString;
  end;
  Tab.Close;
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 4');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Bas_Impressao.FSetorResponsavel := Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FResponsavel := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
    Frm_Bas_Impressao.FCargoResponsavel := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    Frm_Bas_Impressao.FSetorResponsavel := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FResponsavel := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
    Frm_Bas_Impressao.FCargoResponsavel := Tab.FieldByName('cargoResponsavel').AsString;
  end;

  Frm_Bas_Impressao.showReport(4201);
  fdt_principal4.spc_cons_adm_contribPFGBResumo.close;
//  GeraAuditoria(0, '0', 'Emissão do recibo do PFGB de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
//               ' da(o) ' + cbx_cod_empresafolha.Text + ' no valor de ' +   Frm_Bas_Impressao.FCampo1,'', 0);
end;

procedure TFrm_Mov_2060.btn_exportacsvClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad, Parametro, S, Situ, ArqBenef, ArqResumo, WATIVO: String;
  Mesant, AnoAnt, i: Integer;
  Nomearquivo: String;
  Retorno : boolean;
begin
  btn_localizarClick(Sender);
  if FStatus = 1 then
     Exit;
  lbl_total.Visible:= True;
  with fdt_principal6.spc_cons_adm_contribPFGB do
    begin
    close;
    ParamByName('@dtreferencia_cpb').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    Parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@inscricao_ben').AsString := '0';
    ParamByName('@matriculadebito_seg').AsString := '0';
    ParamByName('@digitomatdeb_seg').AsString := '0';
    ParamByName('@order').AsInteger := 0;
    ParamByName('@situacao').Value := 1; // Em Aberto
    ParamByName('@cod_situacempr').Value:= 0;
    Open;
    end;

// Só ler os registros em aberto
  if not DirectoryExists('W:\PFGB\' + FormatFloat('0000',StrToInt(WAA)) + '-' + FormatFloat('00',cbx_cod_mes.ValueItem)) then
     ForceDirectories('W:\PFGB\' + FormatFloat('0000',StrToInt(WAA)) + '-' + FormatFloat('00',cbx_cod_mes.ValueItem));

  str_arquiventrad:= 'W:\PFGB\' + FormatFloat('0000',StrToInt(WAA)) + '-' + FormatFloat('00',cbx_cod_mes.ValueItem) + '\' +
                     'PFGB -'+ cbx_cod_empresafolha.Text + '-'+ cbx_cod_mes.Text + '-' + WAA + '.CSV';
  with fdt_principal6.spc_cons_adm_contribPFGB do
    begin
    if recordcount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
       Close;
       Exit;
       end;
    end;
  Fdt_principal6.spc_cons_adm_contribPFGB.First;
  Memo1.Visible:= True;
  Memo1.Height:= 207;
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  S:= 'Relação de Beneficiários do PFGB - '+ Fdt_principal6.spc_cons_adm_contribPFGB.FieldByName('descricao_emp').AsString;
  Writeln(byt_nameofthfile,S);
  S:= 'Inscrição;Titularidade;Tipo;Matrícula;Dig;Nome;Parentesco;Referência;Situacao;Observações;Dt.Nascimento;Sexo;Cidade Logradouro;UF';
  Writeln(byt_nameofthfile,S);
  S:= '';
  pgb_registros.Min:= 0;
  pgb_registros.Position:= 0;
  pgb_registros.Max := Fdt_principal6.spc_cons_adm_contribPFGB.RecordCount;
  pgb_registros.Visible:= True;
  Situ:= '';
  with Fdt_principal6.spc_cons_adm_contribPFGB do
    begin
    while not eof do
       begin
       if FieldByName('cod_sitcontribPFGB').Value = 1 then
          begin
          if FieldByName('nome_sie').AsString <> '' then
             Situ:= FieldByName('nome_sie').AsString;
          S:= FieldByName('inscricao_ben').AsString + ';' + FieldByName('titulacartei_ben').AsString + ';' +
              FieldByName('nome_tdp').AsString + ';' + FieldByName('matriculadebito_seg').AsString + ';' +
              FieldByName('digitomatdeb_seg').AsString + ';' + FieldByName('nome_ben').AsString + ';';
          if FieldByName('dtretroativo_cpb').AsString = '' then
             if FieldByName('nome_gra').AsString <> '' then
                S:= S + FieldByName('nome_gra').AsString + ';' + cbx_cod_mes.valueItem + '/' + edt_ano.Text
             else
                S:= S + '(titular)' + ';' + cbx_cod_mes.valueItem + '/' + edt_ano.Text
          else
             if FieldByName('nome_gra').AsString <> '' then
                S:= S + FieldByName('nome_gra').AsString + ';' + FormatDateTime('mm/yyyy', StrToDate(FieldByName('dtretroativo_cpb').AsString))
             else
                S:= S + '(titular)' + ';' + FormatDateTime('mm/yyyy', StrToDate(FieldByName('dtretroativo_cpb').AsString));
          S:= S + ';' + Situ + ';' + FieldByName('observacao_cpb').AsString + ';' + FieldByName('dtnascim_ben').AsString + ';'+
              FieldByName('sexo_ben').AsString + ';' + FieldByName('cidade_cep').AsString + ';' + FieldByName('sigla_uf').AsString;
          pgb_registros.Position:= pgb_registros.Position + 1;
          Writeln(byt_nameofthfile,S);
          end;
       Next ;
       end;
    end;
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Adicionado ' + IntToStr(pgb_registros.Position) + ' beneficiários');
  lbl_total.Refresh;
  closefile (byt_nameofthfile);
  TRegT:= 0;
  TRegD:= 0;
  GTRegT:= 0;
  GTRegD:= 0;
  WTot:= 0;
  Mesant:= 0;
  AnoAnt:= 0;
  WATIVO:= '';

// Resumo mês e retroativos, identificando titulares e dependentes
  with fdt_principal4.spc_cons_adm_contribPFGBResumo do
    begin
    close;
    ParamByName('@dtreferencia_cpb').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    Parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
// Só gera o que está em aberto
    Parambyname('@cod_sitcontribPFGB').AsString := '1';
    Open;
    end;

  pgb_registros.Visible:= False;
  Dlg_Ok('Gerado arquivo ' + str_arquiventrad, self);
  Memo1.Clear;
  Memo1.Visible:= False;
  ArqBenef:= str_arquiventrad;

  str_arquiventrad:= 'W:\PFGB\' + FormatFloat('0000',StrToInt(WAA)) + '-' + FormatFloat('00',cbx_cod_mes.ValueItem) + '\' +
                     'resumo PFGB - '+ cbx_cod_empresafolha.Text + ' - '+ cbx_cod_mes.Text + '-' + WAA + '.CSV';
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  S:= 'Relação de Beneficiários do PFGB';
  Writeln(byt_nameofthfile,S);
  S:= '';
  Writeln(byt_nameofthfile,S);
  S:= 'Referência - ' + FormatDateTime('mmmm/yyyy', StrToDate('01/' + cbx_cod_mes.ValueItem + '/' + WAA));
  Writeln(byt_nameofthfile,S);
  S:= '';
  Writeln(byt_nameofthfile,S);
  S:= Fdt_principal4.spc_cons_adm_contribPFGBResumo.FieldByName('descricao_emp').AsString;
  Writeln(byt_nameofthfile,S);
  S:= '';

  S:= ';Titularidade;Quantidade;Valor';
  Writeln(byt_nameofthfile,S);
  TRegD:= 0;
  TRegT:= 0;
  GTRegT:= 0;
  GTRegD:= 0;
  TValD:= 0;
  TValT:= 0;
  GTValT:= 0;
  GTValD:= 0;
  pgb_registros.Min:= 0;
  pgb_registros.Position:= 0;
  pgb_registros.Max:= Fdt_principal4.spc_cons_adm_contribPFGBResumo.RecordCount;
  pgb_registros.Visible:= True;
  with Fdt_principal4.spc_cons_adm_contribPFGBResumo do
    begin
    while not eof do
       begin
       if FieldByName('mes').Value <> 00 then
          begin
          if FieldByName('mes').Value = cbx_cod_mes.ValueItem then
             begin
             if FieldByName('tit').Value = 1 then
                begin
                S:= ';Titulares;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
                TRegT:= FieldByName('ContReg').Value;
                GTRegT:= GTRegT + TRegT;
                TValT:= FieldByName('tot').Value;
                GTValT:= GTValT + TValT;
                end
             else
                begin
                S:= ';Dependentes;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
                TRegD:= FieldByName('ContReg').Value;
                GTRegD:= GTRegD + FieldByName('ContReg').Value;
                TValD:= FieldByName('tot').Value;
                GTValD:= GTValD + TValD;
                end
             end
          else
             if (FieldByName('mes').Value <> Mesant) or (FieldByName('ano').Value <> AnoAnt) then
                begin
                TRegD:= TRegD + TRegT;
                S:= ';Total Geral;'+ FormatFloat('##,###,###',(TRegD)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(TValD+TValT));
                TRegT:= 0;
                TRegD:= 0;
                TValD:= 0;
                TValT:= 0;
                Writeln(byt_nameofthfile,S);
                S:= '';
                Writeln(byt_nameofthfile,S);
                S:= 'Retroativos - Referência ' + FormatDateTime('mmmm/yyyy', StrToDate('01/' + FieldByName('mes').AsString + '/' + FieldByName('ano').AsString));
                Writeln(byt_nameofthfile,S);
                S:= ';Titularidade;Quantidade;Valor';
                Writeln(byt_nameofthfile,S);
                Mesant:= FieldByName('mes').Value;
                AnoAnt:= FieldByName('ano').Value;
                end;
             if FieldByName('mes').Value <> cbx_cod_mes.ValueItem then
                if FieldByName('tit').Value = 1 then
                   begin
                   S:= ';Titulares;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
                   TRegT:= FieldByName('ContReg').Value;
                   GTRegT:= GTRegT + FieldByName('ContReg').Value;
                   TValT:= FieldByName('tot').Value;
                   GTValT:= GTValT + TValT;
                   end
                else
                   begin
                   S:= ';Dependentes;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
                   TRegD:= FieldByName('ContReg').Value;
                   GTRegD:= GTRegD + FieldByName('ContReg').Value;
                   TValD:= FieldByName('tot').Value;
                   GTValD:= GTValD + TValD;
                   end
          end
       else
          if FieldByName('mes').Value = 00 then
             begin
             if FieldByName('tit').Text = '1' then
                begin
                TRegD:= TRegD + TRegT;
                S:= ';Total Geral;'+ FormatFloat('##,###,###',(TRegD)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(TValD+TValT));
                Writeln(byt_nameofthfile,S);
                S:= '';
                Writeln(byt_nameofthfile,S);
                S:= 'Total Geral';
                Writeln(byt_nameofthfile,S);
                S:= ';Titularidade;Quantidade;Valor';
                Writeln(byt_nameofthfile,S);
                S:= ';Titulares;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value))+ '; R$ ' + FormatFloat('##,###,###,##0.00',(GTValT));
                end
             else
                begin
                S:= ';Dependentes;'+ FormatFloat('##,###,###',GTRegD) + '; R$ ' + FormatFloat('##,###,###,##0.00',(GTValD));
                Writeln(byt_nameofthfile,S);
                GTRegD:= GTRegD + GTRegT;
                S:= ';Total Geral;'+ FormatFloat('##,###,###',GTRegD) + '; R$ ' + FormatFloat('##,###,###,##0.00',(GTValD+GTValT));
                WGERAL:= GTValD + GTValT;
                WTot:= WTot + GTRegD;
                end;
             end;
     pgb_registros.Position:= pgb_registros.Position + 1;
     Writeln(byt_nameofthfile,S);
     Next;
     end;
  end;

// Resumo mês e retroativos por situação, identificando titulares e dependentes
  with fdt_principal4.spc_cons_adm_contribPFGBResumoSituacao do
    begin
    close;
    ParamByName('@dtreferencia_cpb').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    Parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    Parambyname('@cod_sitcontribPFGB').AsString := '1';
    Open;
    end;

  pgb_registros.Min:= 0;
  pgb_registros.Position:= 0;
  pgb_registros.Max:= fdt_principal4.spc_cons_adm_contribPFGBResumoSituacao.RecordCount;
  pgb_registros.Visible:= True;

  S:= '';
  Writeln(byt_nameofthfile,S);
  Writeln(byt_nameofthfile,S);

  S:= 'Situacao;Titularidade;Quantidade;Valor';
  Writeln(byt_nameofthfile,S);
  TRegD:= 0;
  TRegT:= 0;
  GTRegT:= 0;
  GTRegD:= 0;

  TValD:= 0;
  TValT:= 0;
  GTValT:= 0;
  GTValD:= 0;

  WATIVO:= '';
  with Fdt_principal4.spc_cons_adm_contribPFGBResumoSituacao do
    begin
    while not eof do
       begin
       if FieldByName('nome_sie').Value = Null then
          WATIVO:= 'ERRO'
       else
          WATIVO:= FieldByName('nome_sie').Value;
       if FieldByName('mes').Value = 1 then
          begin
          if FieldByName('tit').Value = 1 then
             begin
             S:= WATIVO + ';Titulares;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
             TRegT:= FieldByName('ContReg').Value;
             GTRegT:= GTRegT + TRegT;
             GTValT:= GTValT + FieldByName('tot').Value;
             end
          else
             begin
             S:= WATIVO + ';Dependentes;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
             TRegD:= FieldByName('ContReg').Value;
             GTRegD:= GTRegD + FieldByName('ContReg').Value;
             GTValT:= GTValT + FieldByName('tot').Value;
             end
          end
       else
         begin
         S:= ';Total;'+ FormatFloat('##,###,###',(FieldByName('ContReg').Value)) + '; R$ ' + FormatFloat('##,###,###,##0.00',(FieldByName('tot').Value));
         Writeln(byt_nameofthfile,S);
         S:= '';
         end;
       pgb_registros.Position:= pgb_registros.Position + 1;
       Writeln(byt_nameofthfile,S);
       Next ;
       end;
    end;
  S:= ';Total Geral;'+ FormatFloat('##,###,###',GTRegD+GTRegT) + '; R$ ' + FormatFloat('##,###,###,##0.00',(GTValT));
  Writeln(byt_nameofthfile,S);
  S:= '';
  Writeln(byt_nameofthfile,S);

  DB_ClearSQL;
  // Fechando arquivo Txt
  closefile (byt_nameofthfile);
  DB_ClearSQL;
  pgb_registros.Position:= 0;
  pgb_registros.Visible:= False;
  Dlg_Ok('Gerado arquivo ' + str_arquiventrad, Self);
  ArqResumo:= str_arquiventrad;
  Application.ProcessMessages;
  WEmail := '';
  WResponsavel := '';
  if DB_OpenSQL('select * from tbl_empresafolha where cod_empresafolha = ' + cbx_cod_empresafolha.valueitem) > 0 then
  begin
    if Tab.FieldByName('email_emp').AsString <> '' then
    begin
      WResponsavel:= Tab.FieldByName('nomeresponsavel_emp').AsString;
      WEmail:= Tab.FieldByName('email_emp').AsString;
      WCCopia := Tab.fieldByName('ccopia_emp').AsString;
    end
    else
      Dlg_Alerta('E-mail não cadastrado para empresa!',self);
  end;
 { if DB_OpenSQL('select * from tbl_configEmail where cod_configEmail = 2 ') > 0 then
  begin
    WDestinatario := Tab.fieldByName('destinatario_cfg').AsString;
    WCCopia := Tab.fieldByName('ccopia_cfg').AsString;
  end; }
  
  //WEmail := 'douglaspt@gmail.com';

  if WEmail <> '' then
  begin
    StB_Principal.Panels[0].Text:= 'Enviando E-Mail para ' + WEmail;
    Retorno := EnviaEmail5Anexos(WEmail, WCCopia,
    'PFGB DO MÊS DE '+UpperCase(cbx_cod_mes.Text), 'Segue em anexo o PFGB do mês de '+cbx_cod_mes.Text+' de '+edt_ano.Text , ArqBenef, ArqResumo,'','','');

    Application.ProcessMessages;
    if Retorno then
      Dlg_Ok('E-mail enviado com sucesso para '+WEmail,self);
    StB_Principal.Panels[0].Text:= 'E-Mail Enviado para '+ WEmail;
  end;
 GeraAuditoria(0, '0', 'Geração de Arquivo CSV, PFGB de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
 ' da(o) ' + cbx_cod_empresafolha.Text + ' sendo ' + FloatToStr(WTot) + ' registros Ativos/Inativos','E-Mail ' + WEmail + ', Responsável ' + WResponsavel ,0);

end;

procedure TFrm_Mov_2060.edt_anoExit(Sender: TObject);
begin
  inherited;
  if edt_ano.Text <> '' then
  begin
    WAA:= edt_ano.Text;
    AnoDir:= StrToInt(edt_ano.Text);
    if AnoDir < 100 then
       WAA:= '20' + edt_ano.Text;
  end;
end;

procedure TFrm_Mov_2060.cbx_cod_empresafolhaEnter(Sender: TObject);
begin
  inherited;
  Memo1.Height:= 0;
  Memo1.Clear;
end;

procedure TFrm_Mov_2060.btn_novoClick(Sender: TObject);
begin
  FStatus:= 0;
  lbl_total.Visible:= False;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) then
    begin
    Panel1.SetFocus;
    cbx_cod_mes.SetFocus;
    FStatus:= 1;
    Exit;
    end;
 // Exit;

  if strtodate('01/'+cbx_cod_mes.valueItem + '/'+edt_ano.text ) > Data_BOM(date) then
      begin
      Dlg_Ok('Mês/Ano de Referência não pode ser maior do que a Data do Sistema!',self);
      exit;
      end;

  DB_OpenSQL('select count(*) from tbl_contribPFGB where dtreferencia_cpb = ''' +
             Data_Format('mm-dd-yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text))) + '''');
  if Tab.Fields[0].AsInteger > 1000 then
     begin
     Dlg_Alerta('Geração da Contribuição PFGB já Realizada em ' +
                Data_Format('mmmm/yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text))) + '.', Self);
     Exit;
     end;
  pgb_registros.Visible:= True;
  pgb_registros.Min:= 0;
  pgb_registros.Max:= 1000;
  lbl_total.Visible:= True;
  Tmr_Close.Enabled:= True;
  if DB_ExecSQL('exec spc_geraContribuicaoPFGB '+inttostr(FCod_Usuario)+ ',''' + cbx_cod_mes.valueItem + '/' + '01/' + edt_ano.text+ '''') then
     begin
     lbl_total.Caption:= 'Total de Registros = ' + IntToStr(DB_OpenSQL('select * from tbl_contribPFGB where dtreferencia_cpb = ''' +
                         Data_Format('mm-dd-yyyy', Data_BOM(Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text)))) + ''''));
     Dlg_Ok('Contribuição PFGB de ' + Data_Format('mmmm/yyyy', Data_BOM(Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text)))) +
            ' Gerada com Sucesso!', Self);
     GeraAuditoria(0, '0', 'Geração contribuição PFGB do mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
                  ', ' + lbl_total.Caption + ' (inclusive os retroativos)', '', 0);
     pgb_registros.Visible:= False;
     Tmr_Close.Enabled:= False;
     cbx_cod_mes.SetFocus;
     end
  else
     Dlg_Alerta('Erro ao Gerar Contribuição PFGB de ' + Data_Format('mmmm/yyyy', Data_BOM(Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text)))), Self);
end;

procedure TFrm_Mov_2060.Tmr_CloseTimer(Sender: TObject);
begin
  inherited;
  pgb_registros.Position:= pgb_registros.Position + Tmr_Close.Interval;
  pgb_registros.Refresh;
end;

procedure TFrm_Mov_2060.btn_fecharmesClick(Sender: TObject);
var
 msgFechamento, cod_emp, sqlEmp : String;
begin
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) then
    Exit;
  if (cbx_cod_empresafolha.Text <> '') then
  begin
    cod_emp := cbx_cod_empresafolha.valueItem;
    sqlEmp := ' and cod_empresafolha = '+cod_emp;
    msgFechamento := 'Fechamento do mês de '+cbx_cod_mes.Text+'/'+edt_ano.Text+
    ', da(o) '+cbx_cod_empresafolha.Text+'  realizado com sucesso!';
  end
  else
  begin
    sqlEmp := '';
    cod_emp := '0';
    msgFechamento := 'Fechamento do mês de '+cbx_cod_mes.Text+'/'+edt_ano.Text+' realizado com sucesso!';
  end;
  if FStatus = 1 then
     Exit;
  if not Dlg_YesNo('Após fechado, não será possível mais alterações no mês, continuar a operação?', Self) then
     Exit;
  DB_OpenSQL('select count(*) from tbl_contribPFGB where cod_sitcontribPFGB = 2'+
  ' and dtreferencia_cpb = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+''''+sqlEmp);
  if Tab.Fields[0].AsInteger > 10 then
     begin
     Dlg_Alerta ('Fechamento do mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text + ', já realizado!', Self);
     exit;
     end;
  if DB_ExecSQL('exec spc_adm_baixaPagtoContribuicaoPFGB '''+ cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+ ''',' + cod_emp) then
     begin
     Dlg_Ok(msgFechamento, Self);
     GeraAuditoria(0, '0', msgFechamento, '', 0);
     end
  else
     begin
     Dlg_Alerta('Erro ao Fechar o mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text, Self);
     GeraAuditoria(0, '0', 'Erro ao fechar o mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text, '', 0);
     end;
     GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 0);
  inherited;
end;

procedure TFrm_Mov_2060.stg_audiDrawCell(Sender: TObject; ACol,
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


