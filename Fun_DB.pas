(******************************************************************************
Todas funções com retorno booleano retornam false caso ocorra algum erro na execução
*******************************************************************************)
unit Fun_DB;

interface
uses dbtables, sysutils, forms, VirtIntf, db, classes, adodb, controls;

Const

   MAX_FIELDS    = 60 ;
   MAX_KEYFIELDS = 10 ;

Type
  TFields = record
    FName : String[50] ;
    FPos : Integer ;
    FType : TFieldType ;
    FValue : Variant ;
    FMemo : String ;
    FPrimaryKey : Boolean ;
    FIdentify : Boolean ;
    FDecimals: Integer ;
  End ;

var
  Tab : TQuery ;
  TabADO : TADOQuery;
  FTabela : String ;    // Nome da Tabela a ser acessada
  FFields : array[0..MAX_FIELDS] of TFields ;
  FFieldsCount  : Integer ; //Total de Colunas na Tabela
  FIndexIdentify : boolean ; //Indice "Identify" ou Auto Incremento
  MSG_Erro : String ;   // Mensagem de Erro


function DB_OpenDataBase(Frm:TForm): integer; export ;  //retorna a ordem do servidor conectado, ex: 1o servidor conectador retorna = 1, se nao conseguiu no primeiro e se conectou no segundo, restona 2. e assim vai. Retorna -1 se não conseguir se conectar
function DB_Insert(Frm:TForm): boolean; export ;        //Insere um registro na tabela
function DB_Update(Frm:TForm): boolean; export ;        //Atualiza um registro na tabela
function DB_Delete(Frm:TForm): boolean; export ;        //Apaga um registro na tabela
function DB_OpenTable(Frm:TForm): boolean; export ;     //Abre uma Tabela
function DB_InsertByFields(Frm : TForm; F, Tbl : string) : boolean ; export ;
function DB_UpdateByFields(Frm : TForm; F, Tbl : string) : boolean ; export ;
function DB_OpenTableByFields(Frm:TForm;Obj, Tbl : String): boolean; export ;

function DB_FormatDataSQL(V:Variant; T:TFieldType): String ;

procedure DB_GetTabFieldsDefs(Frm:TForm); export ;      //Carrega Definições da Tabela com os Dados do Formulário
function DB_SQL_Insert(Frm : TForm): String ;
function DB_SQL_Delete(Frm : TForm): String ;
function DB_SQL_OpenTable(Frm : TForm): String ;

function  DB_ExecSQL(wSQL : String): Boolean ; export ;
function  DB_ExecSQLParams(wSQL : String; showMessage : boolean): Boolean ; export;
function  DB_OpenSQL(wSQL : String): Integer ; export ;
function  DB_LocCampo(Tbl, Chave, Ret : String; Valor : Variant) : Variant ; export ;

procedure DB_BeginTrans; export ;
procedure DB_Commit  ;   export ;
procedure DB_RollBack;   export ;
procedure DB_ClearSQL;   export ;
procedure DB_DevSeq (C, N : String)                 ; export ;
procedure DB_DevSeqTab(C, T, FN, FV : String ; N : integer ) ; export ;
function  DB_FString (FName: String): String ; export ;
function  DB_FDateStr(FName: String): String ; export ;
function  DB_FInteger(FName: String): Integer; export ;
function  DB_FDouble (FName: String): Double ; export ;
function  DB_FN      (Index:Integer): Variant; export ;
function  DB_GetSeq (C : String) : String   ; export ;
function  DB_GetSeqTab(C, T, FN, FV : String ): Integer; export ;
function  DB_LocRegistro(Tab, Chave : String ; Valor : Variant): Boolean ; export ;
procedure DB_Empty (T : String)              ; export ;
function  DB_RollCount: Integer;               export ;
function  DB_TranCount: Integer;               export ;
function  DB_GetPrimaryKey(): String ;         export ;

function DB_OpenADOSQL(wSQL : String): Integer ;        export ;
function DB_ExecADOSQL(wSQL : String): Boolean ;        export ;
procedure DB_ClearADOSQL;                               export ;

implementation
uses Fun_Obj, Constantes, Dlg_Mensagem, Fun_Str, dtm_principal, Fun_Acesso, Dtm_OLAP;
{$H+}


function DB_OpenDataBase(Frm:TForm): Integer ;
var AliasParams : TStringList;
DBPath : string;
  function DB_OpenDataBaseReserva(Frm:TForm): Integer;
  begin
    Result := 2 ;
    fdt_principal.bd_imasf.Params.Clear;
    fdt_principal.bd_imasf.Params.Add('server name=fs-imasf-01');
  //  fdt_principal.bd_imasf.Params.Add('application name=STIMASF '+getversion+' - '+Acs_GetComputerName);
    fdt_principal.bd_imasf.Params.Add('host name='+Acs_GetComputerName);
    fdt_principal.bd_imasf.Params.Add('database name=imasf');
    fdt_principal.bd_imasf.Params.Add('user name=sa');
    fdt_principal.bd_imasf.Params.Add('password=key');
    fdt_principal.bd_imasf_ado.ConnectionString := 'Provider=SQLOLEDB.1;Password=key;Persist Security Info=True;User ID=sa;Initial Catalog=imasf;Data Source=fs-imasf-01';
    try
      fdt_principal.bd_imasf.open;
//      fdt_OLAP.OLAP_imasf.Open;
    except
      Result := 3 ;
      fdt_principal.bd_imasf.Params.Clear;
      fdt_principal.bd_imasf.Params.Add('server name=spd01');
      try
        fdt_principal.bd_imasf.open;
      except
        Result := -1 ;
        MSG_Erro := ReleaseException ;
        MSG_Erro := 'Erro ao executar instrução para Banco de Dados "'+MSG_Erro+'"' ;
      end;
    end;
  end;
begin
  try
    Result := 1 ;
    AliasParams := TStringList.create;
    if not Session.IsAlias('imasf') then
    begin
      AliasParams.Values['BLOB SIZE'] := '64';
      AliasParams.Values['SERVER NAME'] := '';
      AliasParams.Values['USER NAME'] := '';
      Session.AddAlias('imasf', 'MSSQL', AliasParams) ;
      Session.SaveConfigFile;
    end;
    {else
    begin
      Session.GetAliasParams('imasf',AliasParams);
      if AliasParams.Values['BLOB SIZE']= '32' then
      begin
        AliasParams.Values['BLOB SIZE'] := '64';
        Session.ModifyAlias('imasf',AliasParams);
        Session.SaveConfigFile;
      end;  
    end;    }
    fdt_principal.bd_imasf.Params.Clear;
 //   fdt_principal.bd_imasf.Params.Add('application name=STIMASF '+getversion+' - '+Acs_GetComputerName);
    fdt_principal.bd_imasf.Params.Add('host name='+Acs_GetComputerName);
    fdt_principal.bd_imasf.Params.Add('server name='+BD_ServerName);
    fdt_principal.bd_imasf.Params.Add('database name=imasf');
    //fdt_principal.bd_imasf.Params.Add('database name='+BD_Alias_DataBase);
    fdt_principal.bd_imasf.Params.Add('user name='+DB_Alias_UserName);
    fdt_principal.bd_imasf.Params.Add('password='+BD_Alias_Password);
    fdt_principal.bd_imasf.open;
    fdt_principal.bd_imasf_ado.ConnectionString := 'Provider=SQLOLEDB.1;Password='+BD_Alias_Password+';Persist Security Info=True;User ID='+DB_Alias_UserName+';Initial Catalog=imasf;Data Source='+BD_ServerName+'';
    if fdt_principal.bd_imasf.Connected then
      EscreveLog(LOG_INFORMACAO, 'Conectado ao Banco de Dados no Servidor '+BD_ServerName+
      ' pelo usuário '+DB_Alias_UserName);
  except
    EscreveLog(LOG_ERRO, '','Não foi possível conectar ao Banco de Dados Principal');
    Result := DB_OpenDataBaseReserva(frm) ;
    if Result > 0 then exit ;
    MSG_Erro := 'NÃO FOI POSSÍVEL A CONECTAR A NENHUM SERVIDOR ! NÃO SERÁ POSSÍVEL EXECUTAR O SISTEMA !' ;
  end;
end;

function DB_GetPrimaryKey(): String ;
begin
  result := FormatFloat('##########', (now*100000)-3800000000);
end;

procedure ClearFFields;
var
  I: Integer;
begin
  for I := 0 to High(FFields) do begin
    FFields[I].FName := '';
    FFields[I].FPos := 0;
    FFields[I].FType := ftUnknown ;
    FFields[I].FValue := 0 ;
    FFields[I].FPrimaryKey := false;
    FFields[I].FIdentify := false ;
    FFields[I].FDecimals := 0 ;
  end;
end;

procedure DB_GetTabFieldsDefs(Frm:TForm);
  procedure Clear(var A: array of Variant);
  var
    I: Integer;
  begin
    for I := 0 to High(A) do A[I] := '';
  end;
var
  i, ic: integer;
  c, v : string ;
  t : TFieldType ;
begin
  ClearFFields;
  ic := 0 ;
  with Frm do
  for I := 0 to ComponentCount - 1 do begin
    If ( Components[i].Tag >= -3 ) and ( Components[i].Tag < 0 ) Then Begin
      c := Obj_GetFormObjName ( Frm, I ) ;
      v := Obj_GetFormObjValue ( Frm, I ) ;
      t := Obj_GetFormObjType ( Frm, I ) ;
      if (c <> '') then begin
        FFields[ic].FName := c ;
        FFields[ic].FPos := ic ;
        FFields[ic].FValue:= v ;
        FFields[ic].FType := t ;
        FFields[ic].FPrimaryKey := (Components[i].Tag = -2) or (Components[i].Tag = -3);
        FFields[ic].FIdentify := (Components[i].Tag = -3) ;
        inc(ic);
      end;
      c := '' ;
      v := '' ;
    end;
  end;
  FFieldsCount := ic ;
  for i := 0 to FFieldsCount-1 do
    if FFields[i].FPrimaryKey then begin
      FTabela := 'tbl_'+Copy(FFields[i].FName,5,length(FFields[i].FName));
      break;
    end;
end;

function DB_FormatDataSQL(V:Variant; T:TFieldType): String ;
var
  d : Tdate;
begin
  case T of
    ftSmallint, ftInteger, ftLargeint : begin
      if varType(v) = varString then
        if v = '' then begin
          result := 'null';
          exit;
        end ;
      result := intToStr(v) ;
    end;
    ftFloat, ftCurrency : result := ''''+STR_SubstChar(STR_RemoveChar(v,'.'), ',', '.')+'''';
    ftDate, ftTime, ftDateTime : begin
      try
        d := v;
        if d <> 0 then
          result := ''''+formatdatetime('mm/dd/yyyy',v)+''''
        else
          result := 'null';
      except
        try
          if varType(v) = varString then
            if (v = '') or (v = '00:00:00') then begin
              result := 'null';
              exit;
            end;
          if t = ftDateTime then begin
    //        result := ''''+formatdatetime('mm/dd/yyyy',v)+formatdatetime(' hh:mm:ss',time)+''''
            v := strtodatetime(v);
            result := ''''+formatdatetime('mm/dd/yyyy hh:mm:ss',v)+''''
          end else begin
            v := strtodate(copy(v,1,10));
            result := ''''+formatdatetime('mm/dd/yyyy',v)+'''';
          end;
        except
          result := 'null';
        end;

      end;
    end;
    ftString, ftMemo : result := ''''+v+'''';
    ftBoolean : if v = true then result := '1' else result := '0';
  end;
end;

function DB_FormatFormDataSQL(V:Variant; T:TFieldType): String ;
begin
  if v = null then begin
    result := '' ;
    Exit;
  end;
    case T of
      ftSmallint, ftInteger, ftLargeint, ftAutoInc : result := v ;
      ftFloat, ftCurrency : result := v ;
      ftDate, ftTime, ftDateTime : begin
        if varType(v) = varString then
          v := strtodate(v);
        if (T = ftDateTime) and (length(v) > 10) then
          result := formatdatetime('dd/mm/yyyy hh:mm:ss',v)
        else
          result := formatdatetime('dd/mm/yyyy',v);
      end;
      ftString, ftMemo : result := v;
      ftBoolean : if v = true then result := '1' else result := '0';
    end;
end;

function DB_SQL_Insert(Frm : TForm): String ;
var
  wF, wV, FSql : String ;
  i : integer ;
begin
  DB_GetTabFieldsDefs(Frm);
  wF := '' ;
  wV := '' ;
  FSql := 'insert into ' + FTabela + ' ( ';
  for i := 0 to FFieldsCount - 1 do begin
    if FFields[i].FIdentify then
      continue ;
    wF := wF + FFields[i].FName + ', ';
    wV := wV + DB_FormatDataSQL(FFields[i].FValue, FFields[i].FType) + ', ' ;
  end;
  FSql := FSql + copy(wF, 1, length(wF)-2) + ' ) values ( ' + copy(wV, 1, length(wV)-2)+' )';
  Result := FSql;
end;

function DB_SQL_Update(Frm : TForm): String ;
var
  FSql : String ;
  i : integer ;
begin
  DB_GetTabFieldsDefs(Frm);
  FSql := 'update ' + FTabela + ' set ';
  For i := 0 to FFieldsCount - 1 do begin
    if FFields[i].FIdentify then
      continue ;
//    if FFields[i].FMemo = '' then
      FSql := FSql + FFields[i].FName + ' = ' + DB_FormatDataSQL(FFields[i].FValue, FFields[i].FType) + ', ' ;
//    else
//      FSql := FSql + FFields[i].FName + ' = ''' + FFields[i].FMemo + ''', ' ;
  end;
  FSql := copy(Fsql, 1, length(FSql)-2) + ' where ';
  For i := 0 to FFieldsCount - 1 do
    if FFields[i].FPrimaryKey then
      FSql := FSql + FFields[i].FName + ' = ' + DB_FormatDataSQL(FFields[i].FValue, FFields[i].FType) + ' and ' ;
  Result := copy(Fsql, 1, length(FSql)-5);
end;


function DB_SQL_Delete(Frm : TForm): String ;
var                                                     
  FSql : String ;
  i : integer ;
begin
  DB_GetTabFieldsDefs(Frm);
  FSql := 'delete from ' + FTabela + ' where ';
  For i := 0 to FFieldsCount - 1 do
    if FFields[i].FPrimaryKey then
      FSql := FSql + FFields[i].FName + ' = ' + DB_FormatDataSQL(FFields[i].FValue, FFields[i].FType) + ' and ' ;
  Result := copy(Fsql, 1, length(FSql)-5);
end;

function DB_SQL_OpenTable(Frm : TForm): String ;
var
  FSql : String ;
  i : integer ;
begin
  DB_GetTabFieldsDefs(Frm);
  FSql := 'select ' ;
  for i := 0 to FFieldsCount - 1 do
    FSql := FSql + FFields[i].FName + ', ';
  FSql := copy(Fsql, 1, length(FSql)-2) + ' from ' + FTabela + ' where ';
  For i := 0 to FFieldsCount - 1 do
    if FFields[i].FPrimaryKey then
      FSql := FSql + FFields[i].FName + ' = ' + DB_FormatDataSQL(FFields[i].FValue, FFields[i].FType) + ' and ' ;
  Result := copy(Fsql, 1, length(FSql)-5);
end;

function DB_Insert(Frm:TForm): boolean;
begin
  result := DB_ExecSQL(DB_SQL_Insert(Frm)) ;
  if not result then
    Dlg_Erro(MSG_Erro, Frm);
end;

function DB_Update(Frm:TForm): boolean;
begin
  result := DB_ExecSQL(DB_SQL_Update(Frm)) ;
  if not result then
    Dlg_Erro(MSG_Erro, Frm);
end;

function DB_Delete(Frm:TForm): boolean;
begin
  result := DB_ExecSQL(DB_SQL_Delete(Frm)) ;
  if not result then
    Dlg_Erro(MSG_Erro, Frm);
end;

function DB_OpenTable(Frm:TForm): boolean;
  (* ------------------------------------------------------------------------- *
   * FieldValuesToForm -> Preenche os objetos do formulario baseado nos valores*
   *                      dos campos da tabela.                                *
   *                      Os Nomes dos campos no formulario DEVEM ter as tres  *
   *                      primeiras letras determinando o tipo do campo; o nome*
   *                      do campo na tabela deve vir a partir da quarta pos.  *
   *                                                                           *
   * Parametros: F -> Formulario                                               *
  (* ------------------------------------------------------------------------- *)
  Procedure FieldValuesToForm ( Frm : TForm ) ;
  Var
    i : Integer ;
    FieldName : String ;
  Begin
    //Carrega o FFields com os Dados da Tabela
    For i := 0 to FFieldsCount - 1 do
      FFields[i].FValue := Tab.FieldByName(FFields[i].FName).Value ;
    //Carrega o Formulário com os Dados da Tabela
    For i:=0 To Frm.ComponentCount-1 Do
    Begin
      If ( Frm.Components[i].Tag >= -3 ) and ( frm.Components[i].Tag < 0 ) Then begin
        FieldName := Obj_GetFormObjName(Frm,i);
        if FieldName <> '' then
          Obj_SetFormObjValue(Frm,i,DB_FormatFormDataSQL(Tab.FieldByName(FieldName).AsVariant, Tab.FieldByName(FieldName).DataType)) ;
      end;
    End ;
  End ;
begin
  result := DB_OpenSQL(DB_SQL_OpenTable(Frm)) > 0 ;
  if not result then begin
    if MSG_Erro = '' then
      MSG_Erro := MSG_DB_ERR_RecNotFound ;
    Dlg_Erro(MSG_Erro, Frm);
    exit;
  end;
  FieldValuesToForm(Frm);
end;

function DB_OpenTableByFields(Frm:TForm;Obj, Tbl : String): boolean;
  (* ------------------------------------------------------------------------- *
   * FieldValuesToForm -> Preenche os objetos do formulario baseado nos valores*
   *                      dos campos da tabela.                                *
   *                      Os Nomes dos campos no formulario DEVEM ter as tres  *
   *                      primeiras letras determinando o tipo do campo; o nome*
   *                      do campo na tabela deve vir a partir da quarta pos.  *
   *                                                                           *
   * Parametros: Frm -> Formulario                                               *
  (* ------------------------------------------------------------------------- *)
  Procedure FieldValuesToForm ( Frm : TForm; Obj : String ) ;
  Var
    i : Integer ;
    t : String ;
  Begin
    i := 0 ;
    t := '0';
    while ((t <> GetFieldArray(Obj,i)) and (t <> '')) do
    begin
      t := GetFieldArray(Obj,i);
      inc(i);
      if t <> '' then
        try
          Obj_SetFormObjValueByName(Frm, t, Tab.FieldByName(Copy(t,5, length(t))).Value);
        except
          Dlg_Erro('Erro ao atribuir valor "'+Tab.FieldByName(Copy(t,5, length(t))).AsString+
          '"ao campo "'+t+'" . Comando SQl : "'+Tab.sql.text+'". Erro Fun_DB_001', frm);
        end;
    end;
  End ;
var
  t, FSql : string ;
  i : integer ;
begin
  i := 0 ;
  t := '0' ;
  FSql := 'select ' ;
  while ((t <> GetFieldArray(Obj,i)) and (t <> '')) do
  begin
    t := GetFieldArray(Obj,i);
    inc(i);
    if t <> '' then
      FSql := FSql + Copy(t,5, length(t)) + ', ';
  end;
  FSql := copy(FSql,1,length(FSql)-2) + ' from ' + Tbl ;
  t := GetFieldArray(Obj,0);
  FSql := FSql + ' where ';
  FSql := FSql + Copy(t,5, length(t)) + ' = ' +
  DB_FormatDataSQL( Obj_GetFormObjValueByName(Frm, t), Obj_GetFormObjTypeByName (Frm, t)) ;
  result := DB_OpenSQL(FSql) > 0 ;
  if not result then begin
    if MSG_Erro = '' then
      MSG_Erro := MSG_DB_ERR_RecNotFound ;
    Dlg_Erro(MSG_Erro, Frm);
    exit;
  end;
  FieldValuesToForm(Frm, Obj);
end;

function DB_InsertByFields(Frm : TForm; F, Tbl : string) : boolean ;
var
  t, wF, wV, FSql : string;
  i : integer ;
begin
  i := 0 ;
  t := '0' ;
  while ((t <> GetFieldArray(F,i)) and (t <> '')) do
  begin
    t := GetFieldArray(F,i);
    inc(i);
    if t <> '' then begin
      wF := wF + Copy(t,5, length(t)) + ', ';
      wV := wV + DB_FormatDataSQL( Obj_GetFormObjValueByName(Frm, t), Obj_GetFormObjTypeByName (Frm, t)) + ', ';
    end;
  end;
  FSql := 'insert into ' + Tbl + ' ( ';
  FSql := FSql + copy(wF, 1, length(wF)-2) + ' ) values ( ' + copy(wV, 1, length(wV)-2)+' )';
  Result := DB_ExecSQL(FSql);
end;

function DB_UpdateByFields(Frm : TForm; F, Tbl : string) : boolean ;
var
  t, FSql : string;
  i : integer ;
begin
  i := 0 ;
  t := '0' ;
  FSql := 'update ' + Tbl + ' set ';
  while ((t <> GetFieldArray(F,i)) and (t <> '')) do
  begin
    t := GetFieldArray(F,i);
    inc(i);
    if t <> '' then
      FSql := FSql + Copy(t,5, length(t)) + ' = ' +
      DB_FormatDataSQL( Obj_GetFormObjValueByName(Frm, t), Obj_GetFormObjTypeByName (Frm, t)) + ', ' ;
  end;
  t := GetFieldArray(F,0);
  FSql := copy(Fsql, 1, length(FSql)-2) + ' where ';
  FSql := FSql + Copy(t,5, length(t)) + ' = ' +
  DB_FormatDataSQL( Obj_GetFormObjValueByName(Frm, t), Obj_GetFormObjTypeByName (Frm, t)) ;
  Result := DB_ExecSQL(FSql);
end;

procedure DB_BeginTrans;
begin
  if DB_ExecSQL('begin tran') then
    EscreveLog(LOG_INFORMACAO, 'Transação Iniciada');
end;

procedure DB_Commit;
var
  i : integer ;
begin
  i := DB_TranCount;
  if i > 0 then
    if DB_ExecSQL('commit') then
      EscreveLog(LOG_INFORMACAO, 'Commit na Transação : '+STR_IntToStr(i));
end;

procedure DB_RollBack;
var
  i : integer ;
begin
  i := DB_TranCount;
  if i > 0 then
    if DB_ExecSQL('rollback') then
      EscreveLog(LOG_INFORMACAO, 'Rollback na Transação : '+STR_IntToStr(i));
end;

procedure DB_ClearSQL;
begin
  try
    if (Tab <> nil) and (Tab.Active) then
    with Tab do begin
      Close;
      SQL.Clear;
//      UnPrepare;
//      Free;
    end;
  except;

  end;
end;

procedure DB_ClearADOSQL;
begin
  try
    if (TabADO <> nil) and (TabADO.Active) then
    with TabADO do begin
      Close;
      SQL.Clear;
//      Free;
    end;
  except;

  end;
end;

function DB_LocRegistro(Tab, Chave : String; Valor : Variant): Boolean ;
begin
{  try
    with dtm_datamodule.qryAux do begin
      Close;
      SQL.Clear;
      case VarType(Valor) of
        varInteger, varByte, varSmallint :
          SQL.Add('Select '+Chave+' from '+Tab+' where '+Chave+' = '+Valor);
        varString, varDate :
          SQL.Add('Select '+Chave+' from '+Tab+' where '+Chave+' = '''+Valor+'''');
      end;
      SQL.Add(' and situacregist = 0');
      try // Tenta localizar registros ativos ( Caso a tabela não tenha o campo SituacRegist, ocorrera erro ao abrir a tabela e tentara novamente sem o campo situacregist )
        Open;
      except
        SQL.Clear;
        case VarType(Valor) of
          varInteger, varByte, varSmallint :
            SQL.Add('Select '+Chave+' from '+Tab+' where '+Chave+' = '+Valor);
          varString, varDate :
            SQL.Add('Select '+Chave+' from '+Tab+' where '+Chave+' = '''+Valor+'''');
        end;
        Open;
      end;
      Result := recordcount > 0 ;
      Close;
    end;
  except
    Result := false ;
  end;}
end;

function DB_ExecSQLParams(wSQL : String; showMessage : boolean): Boolean ;
begin
  try
    with Tab do begin
      if Tab = nil then
      begin
        Tab := TQuery.Create(nil);
        DatabaseName := BD_Alias_DataBase ;
      end
      else
      begin
        Close;
        SQL.Clear;
      end;
      SQL.Add(wSQL);
      ExecSQL;
      Close;
      SQL.Clear;
      EscreveLog(LOG_SQL, Wsql);
      Result := true ;
    end;
  except
//    Tab.Free;
    Result := False ;
    if showMessage then begin
      MSG_Erro := ReleaseException ;
      if pos('Key violation', MSG_Erro) > 0 then
        MSG_Erro := MSG_BD_ERR_KeyViolation
      else
        MSG_Erro := 'Erro ao executar instrução para Banco de Dados "'+MSG_Erro+'"' ;
      Dlg_Erro(MSG_Erro, Application.MainForm);
    end;
  end;
end;


function DB_ExecSQL(wSQL : String): Boolean ; 
begin
  result := DB_ExecSQLParams(wSQL, true);
end;

function DB_ExecADOSQL(wSQL : String): Boolean ;
begin
  try
   // if TabADO = nil then
    with TabADO do begin
      if TabADO = nil then begin
        TabADO := TADOQuery.Create(nil);
        Connection := Fdt_principal.bd_imasf_ado;
      end else begin
        TabADO.Close;
        SQL.Clear;
      end;
      SQL.Add(wSQL);
      ExecSQL;
  //    Free;
      EscreveLog(LOG_SQL, Wsql);
      Result := true ;
    end;
  except
    TabADO.Free;
    Result := False ;
    MSG_Erro := ReleaseException ;
    if pos('Key violation', MSG_Erro) > 0 then
      MSG_Erro := MSG_BD_ERR_KeyViolation
    else
      MSG_Erro := 'Erro ao executar instrução para Banco de Dados "'+MSG_Erro+'"' ;
    Dlg_Erro(MSG_Erro, Application.MainForm);
  end;
end;

function DB_OpenSQL(wSQL : String): Integer ;
begin
  try
    with Tab do begin
      if Tab = nil then
      begin
        Tab := TQuery.Create(nil);
        DatabaseName := BD_Alias_DataBase ;
      end
      else
      begin
        Close;
        SQL.Clear;
      end;
      SQL.Add(wSQL);
      Open;
      if recordcount <> -1 then
        Result := recordcount
      else
        Result := 1 ;
    end;
    EscreveLog(LOG_SQL, Wsql + '    --> Tl. de Registros : '+ inttostr(result));
  except
    Result := -1 ;
    MSG_Erro := ReleaseException ;
//    tab.Free;
  end;
end;

function DB_OpenADOSQL(wSQL : String): Integer ;
begin
  try
    with TabADO do begin
      if TabADO = nil then begin
        TabADO := TADOQuery.Create(nil);
        Connection := Fdt_principal.bd_imasf_ado;
      end else begin
        TabADO.Close;
        SQL.Clear;
      end;
      Connection := Fdt_principal.bd_imasf_ado;
      SQL.Add(wSQL);
      Open;
      if recordcount <> -1 then
        Result := recordcount
      else
        Result := 1 ;
    end;
    EscreveLog(LOG_SQL, Wsql + '    --> Tl. de Registros : '+ inttostr(result));
  except
    Result := -1 ;
    MSG_Erro := ReleaseException ;
//    tabADO.Free;
  end;
end;

function DB_LocCampo(Tbl, Chave, Ret : String; Valor : Variant): Variant ;
var
  FSQL : String ;
begin
  case VarType(Valor) of
    varInteger, varByte, varSmallint :
    FSQl := 'Select '+Ret+' from '+Tbl+' where '+Chave+' = '+Valor;
    varString, varDate :
    FSQL := 'Select '+Ret+' from '+Tbl+' where '+Chave+' = '''+Valor+'''';
  end;
  if DB_OpenSQL(FSQL) > 0 then
    result := Tab.Fields[0].Value
  else
    result := -1000 ;
end;

function DB_GetSeq(C : String ): String;
var
  i : string ;
begin
  DB_OpenSQL ('Select '+C+'+1 from tbl_parametro');
  i := Tab.Fields[0].AsString ;
  DB_ExecSQL ('Update tbl_parametro set '+C+' = ' + i);
  Result := i ;
end;

function DB_GetSeqTab(C, T, FN, FV : String ): Integer;
//var
//  i : integer ;
begin
//  DB_OpenSQL ('Select '+C+' from '+T+' where '+FN+' = '''+FV+'''');
//  i := dtm_datamodule.qryAux.FieldByName(C).AsInteger+1 ;
//  DB_ExecSQL ('Update '+T+' set '+C+' = ' + IntToStr(i)+' where '+FN+' = '''+FV+'''');
//  Result := i ;
//  if dtm_datamodule.db_imasf.InTransaction then begin
//    DB_Commit ;
//    DB_BeginTrans ;
//  end;
end;

procedure DB_DevSeqTab(C, T, FN, FV : String; N : integer );
//var
//  i : integer ;
begin
//  DB_OpenSQL ('Select '+C+' from '+T+' where '+FN+' = '''+FV+'''');
//  i := dtm_datamodule.qryAux.FieldByName(C).AsInteger ;
//  if i = n then begin
//    DB_ExecSQL ('Update '+T+' set '+C+' = ' + IntToStr(i-1)+' where '+FN+' = '''+FV+'''');
//    if dtm_datamodule.db_imasf.InTransaction then begin
//      DB_Commit ;
//      DB_BeginTrans ;
//    end;
//  end;
end;


procedure DB_DevSeq (C, N : String) ;
begin
  DB_BeginTrans ;
  DB_OpenSQL ('Select '+C+' from tbl_parametro');
  if Tab.Fields[0].AsString = n then DB_ExecSQL ('Update tbl_parametro set '+C+' = '+C+'-1' );
  DB_Commit ;
end;

procedure DB_Empty (T : String) ;
begin
//  DB_ExecSQL ('Delete from '+T);
end;

function  DB_FString(FName: String): String  ;
begin
//  try
//    Result := dtm_datamodule.qryAux.FieldByName(FName).AsString ;
//  except
//    Result := '' ;
//  end;
end;

function  DB_FDateStr(FName: String): String  ;
begin
//  try
//    Result := STR_DateMask(dtm_datamodule.qryAux.FieldByName(FName).AsString) ;
//  except
//    Result := '' ;
//  end;
end;

function  DB_FInteger(FName: String): Integer ;
begin
//  try
//    Result := dtm_datamodule.qryAux.FieldByName(FName).AsInteger ;
//  except
//    Result := -1000 ;
//  end;
end;

function  DB_FDouble(FName: String): Double ;
begin
//  try
//    Result := dtm_datamodule.qryAux.FieldByName(FName).AsFloat ;
//  except
//    Result := -1000 ;
//  end;
end;

function DB_FN(Index:Integer): Variant; export ;
begin
//  try
//    Result := dtm_datamodule.qryAux.Fields[Index].Value ;
//  except
//    Result := -1000 ;
//  end;
end;

function DB_RollCount: Integer;
begin
  DB_OpenSQL('select @@rowcount');
  result := Tab.fields[0].asinteger;
  DB_ClearSQL;
end;

function DB_TranCount: Integer;
begin
  DB_OpenSQL('select @@trancount');
  result := Tab.fields[0].asinteger;
  DB_ClearSQL;
end;


end.
