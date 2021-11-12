unit Mov_DisqueteBenefi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB, Grids, DBGrids,
  Buttons, Mask, DBCtrls, jpeg, shellapi, BEdit, BComboBox;

type
  TFrm_Mov_DisqueteBenefi = class(TFrm_Bas_TelaPadrao)
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btn_carregarArquivo: TPDJButton;
    btn_atualizaCadastro: TPDJButton;
    btn_atualizaCadServidores: TPDJButton;
    Panel7: TPanel;
    edt_ano: TBEdit;
    cbx_cod_mes: TBComboBox;
    stg_audi: TStringGrid;
    lbl_linha: TLabel;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    cbx_cod_empresafolha: TBComboBox;
    Panel4: TPanel;
    ed2_ano: TBEdit;
    cb2_cod_mes: TBComboBox;
    edt_dtsistema_abe: TBEdit;
    Panel5: TPanel;
    edt_seqAsecoPMSBC: TBEdit;
    edt_seqAsecoSBCPREV: TBEdit;
    btn_atualizar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_carregarArquivoClick(Sender: TObject);
    procedure btn_atualizaCadastroClick(Sender: TObject);
    procedure btn_atualizaCadServidoresClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbx_cod_empresafolhaChange(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
  private
    { Private declarations }
    dataAtual, dataAnterior : TDateTime;
    SeqArquivoPMSBC, SeqArquivoSBCPREV  : integer;
    procedure AtualizarSequencia;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  FMesReferencia, FAnoReferencia : string;
  end;

var
  Frm_Mov_DisqueteBenefi: TFrm_Mov_DisqueteBenefi;
  Qtcarac, ChaveExp: Integer;
  TamArquivo: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
     Fun_Acesso, Fun_Obj, Fun_Numero, Fun_Data;

{$R *.DFM}

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

procedure TFrm_Mov_DisqueteBenefi.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carga de Funcionarios Publicos Municipais (FPM)';
//  'Carregar Arquivo de Atualização de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_DisqueteBenefi.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self,cbx_cod_mes.name,FMesReferencia);
  if FAnoReferencia <> '' then
    edt_ano.Text := FAnoReferencia;
  ProgressBar1.Visible:= False;
end;

function TFrm_Mov_DisqueteBenefi.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'A empresa deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de referência da conta deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de referência da conta deve ser preenchida !', VLD_Preenchido ));
end;

procedure TFrm_Mov_DisqueteBenefi.btn_carregarArquivoClick(Sender: TObject);
  procedure CarregarArquivo;
  var
    inicioDep : integer;
    localArquivo, nomearquivo, registro: string ;
    Arq : TextFile;
    Seq, TlItem, TlLinha, SeqItm, MAT6: Integer ;
    sql, dtreferencia_abe, cod_empresa, matricula_mte, digito_mte, nome_ben, inscricao_ben,
    funcaoemp_seg, vlbase_mte, cod_setoremp, str_categodpd, dtsituempr_seg, str_codsitdpd,
    endereco, numero, complemento, bairro, cidade, cep, fone, cpf, unidadeRH, obs, uf,
    banco, agencia, digAgencia, contaCorrente, dtadmissao, cod_formaadm,
    nomeDep, dtNascDep, CPFDep, GrauParentesco, sexoDep : string ;
  begin
    SeqArquivoPMSBC := 0;
    SeqArquivoSBCPREV := 0;
    Qtcarac:= 325;
    if dlg_leitura.execute then begin
      localArquivo:= dlg_leitura.filename;
      TamArquivo:= ContaLinhaTXT(localArquivo);
      nomearquivo:= ExtractFileName(localArquivo);
      AssignFile(Arq, localArquivo);
      Reset (Arq);
      //Verifica o Tamanho do Arquivo se é Válido
      if FileSize(Arq) < 1 then begin
        Dlg_Erro('Não foi possível Carregar a Conta ! O arquivo está vazio.' + #13 +  'Se foi enviado pelo conveniado, solicitar um disquete correto.'
        +  #13 +  'Se foi gerado a partir de planilhas,' +  #13 +  '   tentar re-gravar as informações digitadas.'
        +  #13 +  'Caso não seja possível efetuar nova gravação,' +  #13 +  'será necessária a re-digitação das planilhas envolvidas.',self);
        closefile (Arq);
        Exit;
      end;
      Readln (Arq, registro);
      if copy(registro,1,02) = '05' then
      begin
        if (copy(nomearquivo,1,12) = 'SCBSECO_MSBC') then
        begin
          try
            SeqArquivoPMSBC := StrToInt(copy(nomearquivo,14,6));
          except
            Dlg_Alerta('Nome do arquivo com formato errado!',self);
            DB_RollBack;
            Exit;
          end;
          if (SeqArquivoPMSBC <> strtoint(edt_seqAsecoPMSBC.Text) +1)  then
          begin
            Dlg_Alerta('Arquivo fora de sequência. Última sequência PMSBC carregada: '+edt_seqAsecoPMSBC.Text,self);
            DB_RollBack;
            Exit;
          end;
          DB_ExecSQL('update tbl_parametro set seqAsecoPMSBC = '+IntToStr(SeqArquivoPMSBC));
          AtualizarSequencia;
        end
        else
        begin
          if (copy(nomearquivo,1,15) = 'SCBSECO_SBCPREV') then
          begin
            try
              SeqArquivoSBCPREV := StrToInt(copy(nomearquivo,17,6));
            except
              Dlg_Alerta('Nome do arquivo com formato errado!',self);
              DB_RollBack;
              Exit;
            end;
            if (SeqArquivoSBCPREV <> StrToInt(edt_seqAsecoSBCPREV.text) +1)  then
            begin
              Dlg_Alerta('Arquivo fora de Sequência. Ultima sequência SBCPREV carregada: '+edt_seqAsecoSBCPREV.Text,self);
              DB_RollBack;
              Exit;
            end;
            DB_ExecSQL('update tbl_parametro set seqAsecoSBCPREV = '+IntToStr(SeqArquivoSBCPREV));
            AtualizarSequencia;
          end
          else
          begin
            Dlg_Alerta('Nome do arquivo com formato errado!',self);
            DB_RollBack;
            Exit;
          end;
        end;
      end;    
      ProgressBar1.position:= 0;
      ProgressBar1.Visible:= True;
      lbl_linha.visible:= True;
      ProgressBar1.max:= TamArquivo;
      dtreferencia_abe := ''''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''';
      if (StrToInt(copy(registro,1,2)) <> cbx_cod_empresafolha.getItemValue) then
      begin
        Dlg_Alerta('"ATENÇÃO" - Empresa selecionada diferente do arquivo!',self);
        Exit;
      end;
      DB_BeginTrans;
      //Readln (Arq, registro);
      try
        StrtoInt(copy(registro,9,1));
        MAT6 := 1;
      except
        MAT6 := 0;
      end;
      Reset (Arq);
      while not EOF(Arq) do
      begin
        with ProgressBar1 do begin
          Position:= Position + 1
        end;
        lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(ProgressBar1.Position);
        Application.ProcessMessages;
        Readln (Arq, registro);
  //      Decimalseparator := '.' ;
        cod_empresa := copy(registro,1,02);
        matricula_mte := copy(registro,03,05+MAT6);
        digito_mte := copy(registro,08+MAT6,01);
        if digito_mte = '0' then begin
          digito_mte := IntToStr(CalculaDigito(cod_empresa, STR_RemoveZero(matricula_mte)));
        end;
        nome_ben := STR_SubstChar(Trim(copy(registro,9+MAT6,40)), '''','´');
        inscricao_ben := copy(registro,49+MAT6,05);
        str_categodpd := STR_RemoveZero(copy(registro,54+MAT6,02));
        //         str_valdesmovnto := STR_DBFloat(STR_RemoveZero(copy(str_linhasarquiv,46,14)));
        funcaoemp_seg := STR_RemoveChar(trim(copy(registro,56+MAT6,25)), '''');
        dtsituempr_seg := copy(registro,81+MAT6,8);
        dtsituempr_seg := copy(dtsituempr_seg,3,2)+'/'+copy(dtsituempr_seg,1,2)+'/'+copy(dtsituempr_seg,5,4);
        if (cod_empresa = '05') or (cod_empresa = '16') then
        begin
        str_codsitdpd := copy(registro,89+MAT6,03);
        MAT6 := 2;
        end
        else
          str_codsitdpd := copy(registro,89+MAT6,02);
        vlbase_mte := TRim(STR_RemoveCharsStr(STR_SubstChar(copy(registro,91+MAT6,14),',','.')));
        cod_setoremp := copy(registro,105+MAT6,06);
        if (cod_empresa = '05') or (cod_empresa = '61') then
        begin
          endereco := STR_SubstChar(Trim(copy(registro,111+MAT6,34)),'''','´');
          numero := Trim(copy(registro,145+MAT6,5));
          complemento := Trim(copy(registro,150+MAT6,56));
        end
        else begin
          endereco := STR_SubstChar(Trim(copy(registro,111+MAT6,95)),'''','´');
          numero := '';
          complemento := '';
        end;
        bairro := STR_SubstChar(Trim(copy(registro,206+MAT6,20)),'''','´');
        cep := Trim(copy(registro,226+MAT6,8));
        cidade := Trim(copy(registro,234+MAT6,25));
        uf := copy(registro,259+MAT6,2);
        fone := Trim(copy(registro,263+MAT6,15));
        cpf := Trim(copy(registro,279+MAT6,11));
        unidadeRH := Trim(copy(registro,290+MAT6,6));
        obs := Trim(copy(registro,296+MAT6,30));
        banco := copy(registro,326+MAT6, 3);
        agencia := copy(registro,329+MAT6, 4);
        digAgencia := copy(registro,333+MAT6, 1);
        contaCorrente := copy(registro,334+MAT6, 12);
        dtadmissao := copy(registro,346+MAT6, 8);
        if dtadmissao <> '' then
          dtadmissao := copy(dtadmissao,3,2)+'/'+copy(dtadmissao,1,2)+'/'+copy(dtadmissao,5,4)
        else
          dtadmissao := '';
        cod_formaadm := copy(registro,354+MAT6, 1);
        if MAT6 = 2 then
          MAT6 := 1;
        //Verifica se ja existe  na tabela tbl_arqbeneficiario
        if DB_OpenSQL('select matricula_mte from tbl_arqbeneficiario where dtreferencia_abe = '+dtreferencia_abe+
        ' and cod_empresa = '+cod_empresa+' and matricula_mte = '+matricula_mte) > 0 then
        begin
          DB_ExecSQL('delete from tbl_arqbeneficiario where dtreferencia_abe = '+dtreferencia_abe+
          ' and cod_empresa = '+cod_empresa+' and matricula_mte = '+matricula_mte);
        end;
        //insere os dados na tabela
        sql := 'insert into tbl_arqbeneficiario values ('+dtreferencia_abe+', '+
        cod_empresa+', '+matricula_mte+', '+digito_mte+', '''+nome_ben+''', '+inscricao_ben+', '''+
        funcaoemp_seg+''', '''+dtsituempr_seg+''', '''+vlbase_mte+''', '''+cod_setoremp+''', '+
        str_categodpd+', '+str_codsitdpd+', '''+endereco+''','''+bairro+''','''+cidade+''','''+
        cep+''','''+fone+''','''+cpf+''', '''+unidadeRH+''', '''+obs+''','''+uf+''','''+
        numero+''','''+complemento+''','''+banco+''','''+agencia+''','''+digAgencia+''','''+contaCorrente+''','''+
        dtadmissao+''','''+cod_formaadm+''', '''+FormatDateTime('mm/dd/yyyy',Date)+''')';

        if not DB_ExecSQL(sql) then
        begin
          Dlg_Alerta('Erro ao Carregar Arquivo na linha ' + IntToStr(ProgressBar1.position), Self);
          EscreveLog(LOG_ERRO, sql);
          DB_RollBack;
          Exit;
        end; {
        inicioDep := 357;
        while trim(copy(registro, inicioDep,30)) <> '' do
        begin
          nomeDep := trim(copy(registro, inicioDep,30));
          inicioDep := inicioDep + 30;
          dtNascDep := copy(registro, inicioDep,8);
          dtNascDep := copy(dtNascDep,3,2)+'/'+copy(dtNascDep,1,2)+'/'+copy(dtNascDep,5,4);
          inicioDep := inicioDep + 8;
          CPFDep := trim(copy(registro, inicioDep,11));
          inicioDep := inicioDep + 11;
          GrauParentesco := trim(copy(registro, inicioDep,12));
          inicioDep := inicioDep + 12;
          sexoDep := trim(copy(registro, inicioDep,1));
          inicioDep := inicioDep + 1;
          DB_ExecSQL('insert into tbl_arqDependente values ('+dtreferencia_abe+', '+
          cod_empresa+', '+matricula_mte+', '+digito_mte+', '''+nomeDep+''', '''+dtNascDep+
          ''', '''+CPFDep+''', '''+GrauParentesco+''', '''+sexoDep+''','''+FormatDateTime('mm/dd/yyyy',Date)+''')'); 
        end; }
      end;
      DB_Commit;
      closefile (Arq);
      GeraAuditoria(0, '0', 'Carregado arquivo de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
                   ', ' + IntToStr(ProgressBar1.Position) + ' beneficiários', localArquivo, 0);
      ProgressBar1.position:= 0 ;
      ProgressBar1.Visible:= False;
      Dlg_Ok('Operação concluída com Sucesso !', self);
      lbl_linha.Caption:= '';
    end;
  end;
begin
  inherited;
  if CriticaParametros then
    Exit;
  dataAtual := StrToDate('01/'+cbx_cod_mes.getStrItemValue+'/'+edt_ano.Text);
  dataAnterior := StrToDate('01/'+cb2_cod_mes.getStrItemValue+'/'+ed2_ano.Text);
  if (Data_Subtrai1mes(dataAtual) <> dataAnterior) and (cbx_cod_empresafolha.getItemValue <> 5) then
    if not Dlg_YesNo('"ATENÇÃO" - Mês/Ano de Referência deve ser o mês seguinte do ultimo mês carregado, Tem certeza que deseja proceguir?',self) then
        Exit;
  CarregarArquivo;
  EscreveLog(btn_carregarArquivo.name);
end;

procedure TFrm_Mov_DisqueteBenefi.btn_atualizaCadastroClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  dataAtual := StrToDate('01/'+cbx_cod_mes.getStrItemValue+'/'+edt_ano.Text);
  dataAnterior := StrToDate('01/'+cb2_cod_mes.getStrItemValue+'/'+ed2_ano.Text);  
  if (dataAtual < dataAnterior) then
  begin
    Dlg_Alerta('"ATENÇÃO" - Não é permitido atualizar meses menor do que do ultimo mês carregado!',self);
    Exit;
  end;
  if DB_ExecSQL('EXEC spc_adm_atualizarmatricula '''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''') then
     begin
     GeraAuditoria(0, '0', 'Cadastro atualizado ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text, '', 0);
     Dlg_Ok('Operação concluída com Sucesso !', self);
     end
  else
     Dlg_Alerta('Erro ao atualizar Cadastro !', self);
  lbl_linha.Caption:= '';
end;

procedure TFrm_Mov_DisqueteBenefi.btn_atualizaCadServidoresClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  dataAtual := StrToDate('01/'+cbx_cod_mes.getStrItemValue+'/'+edt_ano.Text);
  dataAnterior := StrToDate('01/'+cb2_cod_mes.getStrItemValue+'/'+ed2_ano.Text);  
  if (dataAtual < dataAnterior) then
  begin
    Dlg_Alerta('"ATENÇÃO" - Não é permitido atualizar meses menor do que do ultimo mês carregado!',self);
    Exit;
  end;
  { --comentado em 26/08/2013 --arquivos PMSBC passou a ser diário
  DB_OpenSQL('select count(cod_empresa) as cod_empresa  from tbl_arqbeneficiario'+
  ' where dtreferencia_abe = '''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+''' and cod_empresa = 5');
  if Tab.FieldByName('cod_empresa').AsInteger < 19000 then
  begin
    Dlg_Alerta('Atenção! Verifique se os dois arquivos da Prefeitura foram carregados. Há diferença na media de registro no mês!', Self);
    Exit ;
  end;
  }
  if DB_ExecSQL('EXEC spc_adm_atualizarfpm '''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+''', '+cbx_cod_empresafolha.getStrItemValue) then
     begin
     GeraAuditoria(0, '0', 'Atualizado cadastro de servidores ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text, '', 0);
     Dlg_Ok('Operação concluida com Sucesso !', self);
     end
  else
     Dlg_Alerta('Erro ao atualizar Cadastro de Servidores!', self);
  lbl_linha.Caption:= '';
  EscreveLog(btn_atualizaCadServidores.name);
end;

procedure TFrm_Mov_DisqueteBenefi.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_DisqueteBenefi.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  TStringGrid(stg_audi).ColWidths[7]:= 320;
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

procedure  TFrm_Mov_DisqueteBenefi.AtualizarSequencia;
begin
 if (cbx_cod_empresafolha.getItemValue = 5) then
  begin
    DB_OpenSQL('select seqAsecoPMSBC, seqAsecoSBCPREV from tbl_parametro');
    edt_seqAsecoPMSBC.Text := tab.FieldByName('seqAsecoPMSBC').AsString;
    edt_seqAsecoSBCPREV.Text := tab.FieldByName('seqAsecoSBCPREV').AsString;

  end
  else
  begin
    edt_seqAsecoPMSBC.Text := '';
    edt_seqAsecoSBCPREV.Text := '';
  end;
end;

procedure TFrm_Mov_DisqueteBenefi.cbx_cod_empresafolhaChange(
  Sender: TObject);
begin
  inherited;
  if cbx_cod_empresafolha.Text <> '' then
  begin
    DB_OpenSQL('select max(dtreferencia_abe) as dtreferencia_abe , max(dtsistema_abe) as dtsistema_abe'+
    ' from tbl_arqbeneficiario where cod_empresa = '+cbx_cod_empresafolha.getStrItemValue+' and dtreferencia_abe > (getdate() -180)');
    ed2_ano.Text := FormatDateTime('yyyy', Tab.FieldByName('dtreferencia_abe').AsDateTime);
    Obj_SetFormObjValueByName(self,'cb2_cod_mes',FormatDateTime('mm',Tab.FieldByName('dtreferencia_abe').AsDateTime));
    edt_dtsistema_abe.Text := Tab.FieldByName('dtsistema_abe').AsString;
  end;
  AtualizarSequencia;
end;

procedure TFrm_Mov_DisqueteBenefi.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_empresafolha.getItemValue = 5 then
  begin
    if (SeqArquivoPMSBC <> 0) and (edt_seqAsecoPMSBC.Text <> '') then
      DB_ExecSQL('update tbl_parametro set seqAsecoPMSBC = '+IntToStr(SeqArquivoPMSBC-1));
    if (SeqArquivoSBCPREV <> 0) and (edt_seqAsecoSBCPREV.Text <> '') then
      DB_ExecSQL('update tbl_parametro set seqAsecoSBCPREV = '+IntToStr(SeqArquivoSBCPREV-1));
    AtualizarSequencia;
  end;
end;

end.

