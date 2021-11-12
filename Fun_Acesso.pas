unit Fun_Acesso ;

interface

uses sysutils, forms, registry, Windows, TLHelp32, Winsock, StdCtrls, Grids, Fun_Obj;

//function FormatarCarteirinha(c : string): string ;                   export ;
function Acs_ValidaDesbloqueio(FormAtivo:Tform): integer;                   export ;
function Acs_GetFileDate(TheFileName: string): string;                      export ;
function Acs_NomeUsuario(cod_usuario : string) : string ;                   export ;
function Acs_AcessoSistema(nomefrm_tls : string) : boolean ;                export ;
function Acs_AcessoEspecial(cod_telaEspecial : string) : boolean ;          export ;
function Acs_algoritimoSenha (str_valorsenhaat:string) : string;            export ;
function Acs_ValidarSenha(nome_usu, senha : string; frm:Tform) : boolean ;  export ;
function Acs_GetWinUserName : String ;                                      export ;
function GetUsuarioLogado: String;                                          export ;
function Acs_GetComputerName : String ;                                     export ;
function Acs_GetDSKSerialNumber(LetraUnidade : String) : String ;           export ;
function IniciaLog(localGravacao:String): boolean;                          export ;
procedure EscreveLog(nomeBotao:String);                         overload ;  export ;
procedure EscreveLog(nomeBotao, msg:String);                    overload ;  export ;
procedure EscreveLog(tipo:integer;nomeBotao, msg:String);       overload ;  export ;
procedure EscreveLog(tipo:integer; msg:String);                 overload ;  export ;
function FinalizaLog(): boolean;                                            export ;
function getVersion : string;                                               export ;
function getLocalIP: String;                                                export ;
function GetIP:string;  export;
procedure GeraAuditoria(chave : integer; chaveExtra, info, detalhe : String; tipo : integer);   export;
procedure GetInfoAuditoria( Frm : TForm ; CompName : String; chave : integer );                 export;
procedure GetInfoAuditoria1ou2( Frm : TForm ; CompName : String; chave : integer; Flag_Conveniado_Beneficiario: integer); export;

var
  FCod_Usuario,
  FCod_TelaSistema, FCod_setorimasf : Integer ;
  FSiteAjuda : String ;
  FConsultar,
  FIncluir,
  FAlterar,
  FExcluir : boolean ;
  FNomeTelaSistema,
  FNome_Usu, FCargoUsuario : String ;
  Reg:TRegistry;
  tFl: TextFile;
  // Uso essas 4 linhas na Auditoria do Sistema
  FCodigoGeral, StatusBotaoAntesHeranca: Integer;
  FNomeGeral: String;
  DadosEntrada, DadosSaida: TResultArray;
  WMudancas : String ;

implementation

uses Fun_DB, Dlg_Mensagem, Fun_Str, constantes, Dlg_EnviaMensagem, Dlg_SenhaAcesso;
//uses Fun_Str, Fun_DB, sysutils ;

function Acs_ValidaDesbloqueio(FormAtivo:Tform): integer;
begin
  FormAtivo.Enabled := false;
  Frm_Dlg_SenhaAcesso := TFrm_Dlg_SenhaAcesso.Create(FormAtivo);
  Frm_Dlg_SenhaAcesso.ShowModal;
  result := Frm_Dlg_SenhaAcesso.FRetornoAcesso;
  Frm_Dlg_SenhaAcesso.Release;
  FormAtivo.Enabled := true ;
end;

function Acs_GetFileDate(TheFileName: string): string;
var
  FHandle: integer;
begin
  FHandle := FileOpen(TheFileName, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;

function Acs_ValidarSenha(nome_usu, senha : string; frm:Tform) : boolean ;
begin
  if DB_OpenSQL('select cod_usuario, senha_usu, descricao_usu, cod_setorimasf, c.descricao_cgu'+
  ' from tbl_usuario u left join  tbl_cargoUsuario c on u.cod_cargoUsuario = c.cod_cargoUsuario'+
  ' where nome_usu = '''+nome_usu+''' and status_usu = 1') > 0 then begin
    FCod_Usuario := Tab.FieldByName('cod_usuario').AsInteger ;
    FNome_Usu := Tab.FieldByName('descricao_usu').AsString ;
    FCargoUsuario := Tab.FieldByName('descricao_cgu').AsString;
    FCod_setorimasf := Tab.FieldByName('cod_setorimasf').AsInteger;
    if Tab.FieldByName('senha_usu').AsString = senha then
      result := true
    else begin
      Dlg_Alerta('Senha Inválida !', frm);
      result := false ;
    end;
  end else begin
    Dlg_Alerta('Usuário não cadastrado !', frm);
    result := false ;
  end;
end;

function Acs_NomeUsuario(cod_usuario : string) : string ;
begin
  if DB_OpenSQL('select nome_usu from tbl_usuario where cod_usuario = '+cod_usuario) > 0 then
    result := Tab.Fields[0].AsString
  else
    result := '' ;
  DB_ClearSQL;
end;

function Acs_AcessoSistema(nomefrm_tls : string) : boolean ;
begin
  if DB_OpenSQL('select a.cod_telasistema, a.consultar_acs, a.incluir_acs, a.alterar_acs, '+
  ' a.excluir_acs, t.nome_tls, t.siteAjuda_tls '+
  ' from tbl_acesso a, tbl_telasistema t where a.cod_telasistema = t.cod_telasistema and '+
  ' cod_usuario = '+inttostr(FCod_Usuario)+' and nomefrm_tls = '''+nomefrm_tls+'''') > 0 then begin
    FCod_TelaSistema := Tab.FieldByName('cod_telasistema').AsInteger ;
    FSiteAjuda := Tab.FieldByName('siteAjuda_tls').asString ;
    FNomeTelaSistema := Tab.FieldByName('nome_tls').AsString ;
    FConsultar := Tab.FieldByName('consultar_acs').AsInteger = 1 ;
    FIncluir := Tab.FieldByName('incluir_acs').AsInteger = 1 ;
    FAlterar := Tab.FieldByName('alterar_acs').AsInteger = 1 ;
    FExcluir := Tab.FieldByName('excluir_acs').AsInteger = 1 ;
    result := true ;
  end else begin
    result := false ;
  end;
end;


function Acs_AcessoEspecial(cod_telaEspecial : string) : boolean ;
begin
  result := (DB_OpenSQL('select * from tbl_acessoEspecial where cod_usuario = '+
  inttostr(FCod_Usuario)+' and cod_telaEspecial = '+cod_telaEspecial) > 0);
end;

function Acs_algoritimoSenha (str_valorsenhaat:string) : string;
var
   str_resultadopas,
   str_valorinforma : string;
   int_contarocorre : shortint;
   arr_campocalculo : array [0..10] of char;
   flt_numpassgerad : extended;
begin
if str_valorsenhaat = 'NOVA' then
   result := 'NOVA'
   else
   begin
   str_valorinforma := str_valorsenhaat;
   while length(str_valorinforma) < 10
   do str_valorinforma := str_valorinforma + ' ';
   for int_contarocorre := 0 to 9
   do strpcopy(arr_campocalculo , str_valorinforma);
   flt_numpassgerad := (((  (ord(arr_campocalculo[0]) div 10 + ord(arr_campocalculo[1]) mod 10)
                          * (ord(arr_campocalculo[9]) div 10 + ord(arr_campocalculo[8]) mod 10))
                       +  ( (ord(arr_campocalculo[2]) div 10 + ord(arr_campocalculo[3]) mod 10)
                          * (ord(arr_campocalculo[7]) div 10 + ord(arr_campocalculo[6]) mod 10))
                       +  ( (ord(arr_campocalculo[4]) div 10 + ord(arr_campocalculo[5]) mod 10)
                          * (ord(arr_campocalculo[5]) div 10 + ord(arr_campocalculo[4]) mod 10))
                       +  ( (ord(arr_campocalculo[6]) div 10 + ord(arr_campocalculo[7]) mod 10)
                          * (ord(arr_campocalculo[3]) div 10 + ord(arr_campocalculo[2]) mod 10))
                       +  ( (ord(arr_campocalculo[8]) div 10 + ord(arr_campocalculo[9]) mod 10)
                          * (ord(arr_campocalculo[1]) div 10 + ord(arr_campocalculo[0]) mod 10))) * length(str_valorsenhaat)
                       + ord(arr_campocalculo[0]) div 10
                       + ord(arr_campocalculo[0]) mod 10
                       + ord(arr_campocalculo[1]) div 10
                       + ord(arr_campocalculo[1]) mod 10
                       + ord(arr_campocalculo[2]) div 10
                       + ord(arr_campocalculo[2]) mod 10
                       + ord(arr_campocalculo[3]) div 10
                       + ord(arr_campocalculo[3]) mod 10
                       + ord(arr_campocalculo[4]) div 10
                       + ord(arr_campocalculo[4]) mod 10
                       + ord(arr_campocalculo[5]) div 10
                       + ord(arr_campocalculo[5]) mod 10
                       + ord(arr_campocalculo[6]) div 10
                       + ord(arr_campocalculo[6]) mod 10
                       + ord(arr_campocalculo[7]) div 10
                       + ord(arr_campocalculo[7]) mod 10
                       + ord(arr_campocalculo[8]) div 10
                       + ord(arr_campocalculo[8]) mod 10
                       + ord(arr_campocalculo[9]) div 10
                       + ord(arr_campocalculo[9]) mod 10) * sqrt(length(str_valorsenhaat)) * 2201;
   str_resultadopas := '';
   for int_contarocorre := 0 to 9
   do if ((copy(floattostr(flt_numpassgerad), int_contarocorre + 1, 1) <> ',')
      and (copy(floattostr(flt_numpassgerad), int_contarocorre + 1, 1) <> ',')) then
         str_resultadopas := str_resultadopas + copy(floattostr(flt_numpassgerad), int_contarocorre + 1, 1);
   result := str_resultadopas;
   end;
end;

function Acs_GetWinUserName : String ;
begin
  try
    Reg:=TRegistry.Create;
    Reg.RootKey:= HKEY_LOCAL_MACHINE;
    Reg.OpenKey('Network\Logon',true);
    Result:=Reg.ReadString('UserName');
//    if Result = '' then
//      Result := 'Usuário não identificado' ;
  except
    Result:='err';
  end;
end;

function GetUsuarioLogado: String;
var
  I: DWord;
  user: string;
begin
  I := 255;
  SetLength(user, I);
  Windows.GetUserName(PChar(user), I);
  user := string(PChar(user));
  result := user;
end;


function Acs_GetComputerName : String ;
var
  lpBuffer : PChar;
  nSize : DWord;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

function Acs_GetDSKSerialNumber(LetraUnidade : String) : String ;
  function DecToHex(aValue: LongInt): String;
    var
      w: Array[1..2] of Word absolute aValue;

      function HexByte(b: Byte): String;
      const
        Hex: Array[$0..$F] of Char = '0123456789ABCDEF';
      begin
        HexByte := Hex[b shr 4] + Hex[b and $F];
      end;

      function HexWord(w: Word): String;
      begin
        HexWord := HexByte(Hi(w)) + HexByte(Lo(w));
      end;
    begin
      Result := HexWord(w[2]) + HexWord(w[1]);
    end;
  var
    VolumeLabel, FileSystem: Array[0..$FF] of Char;
    SerialNumber, DW, SysFlags: DWord;
begin
  GetVolumeInformation ( PChar(LetraUnidade+':\'), VolumeLabel, SizeOf(VolumeLabel),
                         @SerialNumber, DW, SysFlags,
                         FileSystem, SizeOf(FileSystem));
  Result := DecToHex(SerialNumber) ;
end;

function IniciaLog(localGravacao:String): boolean;
begin
  AssignFile(tFl, localGravacao+'Log_'+FormatDateTime('yyyymm', now)+Acs_GetComputerName+'IP'+STR_SubstChar(getLocalIP,'.','_')+'U'+inttostr(FCod_Usuario)+'.txt');
  try
    Append(tFl);
    result := true;
  except
    try
      Rewrite(tFl);
      result := true;
    except
      try
//        AssignFile(tFl, LOG_LOCALGRAVACAORES +'Log_'+FormatDateTime('yyyymm', now)+Acs_GetComputerName+'.txt');
//        Rewrite(tFl);
        if localGravacao <> LOG_LOCALGRAVACAORES then
          IniciaLog(LOG_LOCALGRAVACAORES);
      except
        result := false ;
      end;
    end;
  end;
end;

function FinalizaLog(): boolean;
begin
  result := true;
  try
    EscreveLog('','Fechou o Sistema Normalmente ------------------------------ FINALIZA LOG -------------');
    Flush(tFl);
    CloseFile(tFl);
  except
    result := false ;
  end;
end;

procedure EscreveLog(tipo:integer;nomeBotao, msg:String);
begin
  try
    Writeln(tfL, STR_AddZeros(InttoStr(tipo), 2)+FormatDateTime(DAT_LogFormat, now)+ STR_AddZeros(InttoStr(FCod_Usuario), 3)+STR_AddZeros(Inttostr(FCod_TelaSistema),4)+nomeBotao+msg);
  except
  end;
end;

procedure EscreveLogMSG(tipo:integer;nomeBotao, msg:String);
begin
  EscreveLog(tipo, nomeBotao, msg);
  try
    if (tipo = 9)
    and (msg <> MSG_BD_ERR_KeyViolation) and (msg <> MSG_DB_ERR_RecNotFound) //Não envia estas menssagens
    then
      Dlg_EnviaMSGbyNetSend(SYS_Operadores, 'Usuário ' + InttoStr(FCod_Usuario) +
      ' na Tela : '+ Inttostr(FCod_TelaSistema) + ' apresentou o seguinte Erro ==> ' + MSG);
  except

  end;
end;

procedure EscreveLog(nomeBotao:String);
begin
  EscreveLog(LOG_UTILIZACAO, nomeBotao, '');
//  Writeln(tfL, STR_AddZeros(InttoStr(LOG_UTILIZACAO), 2)+FormatDateTime(DAT_LogFormat, now)+ STR_AddZeros(InttoStr(FCod_Usuario), 3)+STR_AddZeros(Inttostr(FCod_TelaSistema),4)+nomeBotao);
end;

procedure EscreveLog(nomeBotao, msg:String);
begin
  EscreveLog(LOG_UTILIZACAO, nomeBotao, msg);
//  Writeln(tfL, STR_AddZeros(InttoStr(LOG_INFORMACAO), 2)+FormatDateTime(DAT_LogFormat, now)+ STR_AddZeros(InttoStr(FCod_Usuario), 3)+STR_AddZeros(Inttostr(FCod_TelaSistema),4)+nomeBotao+msg);
end;

procedure EscreveLog(tipo:integer;msg:String); //Utilizado pelo programa onde pode vir mensagens de erro pelo tipo 9
begin
  EscreveLogMSG(tipo, '', msg);
end;

function getVersion : string;
{ ---------------------------------------------------------
   Extracts the FileVersion element of the VERSIONINFO
   structure that Delphi maintains as part of a project's
   options.

   Results are returned as a standard string.  Failure
   is reported as "".

   Note that this implementation was derived from similar
   code used by Delphi to validate ComCtl32.dll.  For
   details, see COMCTRLS.PAS, line 3541.
  -------------------------------------------------------- }
const
   NOVIDATA = '';

var
  dwInfoSize,           // Size of VERSIONINFO structure
  dwVerSize,            // Size of Version Info Data
  dwWnd: DWORD;         // Handle for the size call.
  FI: PVSFixedFileInfo; // Delphi structure; see WINDOWS.PAS
  ptrVerBuf: Pointer;   // pointer to a version buffer
  strFileName,          // Name of the file to check
  strVersion : string;  // Holds parsed version number
begin

   strFileName := paramStr( 0 );
   dwInfoSize :=
      getFileVersionInfoSize( pChar( strFileName ), dwWnd);

   if ( dwInfoSize = 0 ) then
      result := NOVIDATA
   else
   begin

      getMem( ptrVerBuf, dwInfoSize );
      try

         if getFileVersionInfo( pChar( strFileName ),
            dwWnd, dwInfoSize, ptrVerBuf ) then

            if verQueryValue( ptrVerBuf, '\',
                              pointer(FI), dwVerSize ) then

            strVersion :=
               format( '%d.%d.%d.%d',
                       [ hiWord( FI.dwFileVersionMS ),
                         loWord( FI.dwFileVersionMS ),
                         hiWord( FI.dwFileVersionLS ),
                         loWord( FI.dwFileVersionLS ) ] );

      finally
        freeMem( ptrVerBuf );
      end;
    end;
  Result := strVersion;
end;


function getLocalIP: string;
type
   TaPInAddr = array [0..10] of PInAddr;
   PaPInAddr = ^TaPInAddr;
var
    phe: PHostEnt;
    pptr: PaPInAddr;
    Buffer: array [0..63] of char;
    i: Integer;
    GInitData: TWSADATA;
begin
    WSAStartup($101, GInitData);
    Result := '';
    GetHostName(Buffer, SizeOf(Buffer));
    phe :=GetHostByName(buffer);
    if phe = nil then Exit;
    pptr := PaPInAddr(Phe^.h_addr_list);
    i := 0;
    while pptr^[i] <> nil do
    begin
      result:=StrPas(inet_ntoa(pptr^[i]^));
      Inc(i);
    end;
    WSACleanup;
end;

function GetIP:string;
var
WSAData: TWSAData;
HostEnt: PHostEnt;
Name:string;
begin
WSAStartup(2, WSAData);
SetLength(Name, 255);
Gethostname(PChar(Name), 255);
SetLength(Name, StrLen(PChar(Name)));
HostEnt := gethostbyname(PChar(Name));
with HostEnt^ do
begin
Result := Format('%d.%d.%d.%d',
[Byte(h_addr^[0]),Byte(h_addr^[1]),
Byte(h_addr^[2]),Byte(h_addr^[3])]);
end;
WSACleanup;
end;

procedure GeraAuditoria(chave : integer; chaveExtra, info, detalhe : String; tipo : integer);
begin
  try
  DB_ExecSQL('insert into tbl_auditoriasistema (cod_usuario, cod_telasistema, chaveCampo_aud, '+
             'chaveExtra_aud, ip_aud, usuarioRede_aud, nomeComputador_aud, info_aud, detalhe_aud, '+
             'obs_aud, cod_tipoEdicao) values('+ InttoStr(FCod_Usuario) + ',' +
             Inttostr(FCod_TelaSistema) + ','+IntToStr(chave) +','+ chaveExtra + ','''+ GetIp+ ''',''' +
             Acs_GetWinUserName + ''',''' + Acs_GetComputerName + ''',''' + info +''','''+
             detalhe + ''','''','+ IntToStr(tipo) + ')');
  except

  end;
end;

procedure GetInfoAuditoria( Frm : TForm ; CompName : String; chave : integer);
Var
  i, x, col: Integer;
//  S: String;
//  drawrect: trect;
Begin
  x:= 0;
  For i:= 0 To Frm.ComponentCount -1 Do
    If ( Frm.Components[i].Name = CompName ) Then
//      If ( Frm.Components[i] Is TMemo ) Then
// Tag do TStringGrid = 1
      If ( Frm.Components[i] Is TStringGrid ) and (TStringGrid(Frm.Components[i]).Tag = 1) Then
        Begin
// Limpando TStringGrid
        TStringGrid(Frm.Components[i]).RowCount:= 2;
// Iniciando TStringGrid
        TStringGrid(Frm.Components[i]).DefaultRowHeight:= 17;
        TStringGrid(Frm.Components[i]).Col:= 0;
        for x:= 1 to TStringGrid(Frm.Components[i]).RowCount - 1 do
          for col:= 0 to TStringGrid(Frm.Components[i]).ColCount - 1 do
             TStringGrid(Frm.Components[i]).Cells[col, x]:= '';
//        TStringGrid(Frm.Components[i]).Col:= 0;
//        TStringGrid(Frm.Components[i]).Row:= 1;

        x:= 0;
        if (chave <> 0) and (chave <> 999999999) then
//           DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
           DB_OpenSQL('select *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
                      'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario '+
                      'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao '+
                      'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud '+
                      'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud '+
                      'where cod_telasistema = ' + inttostr(FCod_TelaSistema) +
                      ' and chaveCampo_aud = ' + IntToStr(chave) +
                      ' order by dtsistema_aud Desc')
        else
           if chave = 999999999 then
//              DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
              DB_OpenSQL('select *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
                         'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario ' +
                         'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao '+
                         'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud '+
                         'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud '+
                         'where cod_telasistema = ' + inttostr(FCod_TelaSistema) +
                         ' order by dtsistema_aud Desc')
           else
//              DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
              DB_OpenSQL('select *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
                         'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario ' +
                         'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao '+
                         'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud '+
                         'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud '+
                         'where cod_telasistema = '+ inttostr(FCod_TelaSistema) +
                         ' order by dtsistema_aud Desc');
        if Tab.RecordCount = 0 then
           Exit;

//        TStringGrid(Frm.Components[i]).ColCount:= Tab.FieldCount;
        TStringGrid(Frm.Components[i]).ColCount:= 11;
//        TStringGrid(Frm.Components[i]).RowCount:= Tab.RecordCount + 1;
//        TStringGrid(Frm.Components[i]).RowCount:= 0;
//        TStringGrid(Frm.Components[i]).Col:= 5;
//        TStringGrid(Frm.Components[i]).Row:= 0;

        TStringGrid(Frm.Components[i]).ColWidths[0]:= 63;
        TStringGrid(Frm.Components[i]).ColWidths[1]:= 70;
        TStringGrid(Frm.Components[i]).ColWidths[2]:= 40;
        TStringGrid(Frm.Components[i]).ColWidths[3]:= 130;
        TStringGrid(Frm.Components[i]).ColWidths[4]:= 130;
        TStringGrid(Frm.Components[i]).ColWidths[5]:= 200;
        TStringGrid(Frm.Components[i]).ColWidths[6]:= 250;
        TStringGrid(Frm.Components[i]).ColWidths[7]:= 150;
        TStringGrid(Frm.Components[i]).ColWidths[8]:= 70;
        TStringGrid(Frm.Components[i]).ColWidths[9]:= 40;
        TStringGrid(Frm.Components[i]).ColWidths[10]:= 30;
        TStringGrid(Frm.Components[i]).Cells[0, 0]:= 'Data';
        TStringGrid(Frm.Components[i]).Cells[1, 0]:= 'Usuário';
        TStringGrid(Frm.Components[i]).Cells[2, 0]:= 'Cód.';
        TStringGrid(Frm.Components[i]).Cells[3, 0]:= 'Nome Beneficiário';
        TStringGrid(Frm.Components[i]).Cells[4, 0]:= 'Nome Conveniado';
        TStringGrid(Frm.Components[i]).Cells[5, 0]:= 'Informação';
        TStringGrid(Frm.Components[i]).Cells[6, 0]:= 'Detalhe';
        TStringGrid(Frm.Components[i]).Cells[7, 0]:= 'Observação';
        TStringGrid(Frm.Components[i]).Cells[8, 0]:= 'IP';
        TStringGrid(Frm.Components[i]).Cells[9, 0]:= 'Máq.';
        TStringGrid(Frm.Components[i]).Cells[10, 0]:= 'Tela';
        while not Tab.EOF do
           begin
{           TMemo(Frm.Components[i]).Lines.Add(Tab.FieldByName('dtsistema_aud').AsString + ', Usuário: ' +
                                              Tab.FieldByName('descricao_usu').AsString + ', IP ' +
                                              Tab.FieldByName('ip_aud').AsString +
                                              ', ' + Tab.FieldByName('nomeComputador_aud').AsString +
                                              ', Tela ' + Tab.FieldByName('cod_telasistema').AsString);}
           Inc(x);
           TStringGrid(Frm.Components[i]).RowCount:= x + 1;
           TStringGrid(Frm.Components[i]).Cells[0, x]:= Tab.FieldByName('dtsistema_aud').AsString;
           TStringGrid(Frm.Components[i]).Cells[1, x]:= Tab.FieldByName('descricao_usu').AsString;
           if (chave <> 0) and (chave = 999999999) then
              {TMemo(Frm.Components[i]).Lines.Add('-> Beneficiário: [' + Tab.FieldByName('chaveCampo_aud').AsString +
                                                 '] ' + Tab.FieldByName('nome_ben').AsString + ', ' +
                                                 Tab.FieldByName('info_aud').AsString + ', ' +
                                                 Tab.FieldByName('detalhe_aud').AsString + Tab.FieldByName('detalhe2_aud').AsString )}
              begin
              TStringGrid(Frm.Components[i]).Cells[2, x]:= Tab.FieldByName('chaveCampo_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[3, x]:= Tab.FieldByName('nome_ben').AsString;
              TStringGrid(Frm.Components[i]).Cells[4, x]:= Tab.FieldByName('nome_con').AsString;
              if (FCod_TelaSistema = 2006) or (FCod_TelaSistema = 2051) then
                 begin
                 TStringGrid(Frm.Components[i]).ColWidths[3]:= -1;
                 TStringGrid(Frm.Components[i]).Cells[3, x]:= '';
                 end
              else
                 begin
                 TStringGrid(Frm.Components[i]).ColWidths[4]:= -1;
                 TStringGrid(Frm.Components[i]).Cells[4, x]:= '';
                 end;
              TStringGrid(Frm.Components[i]).Cells[5, x]:= Tab.FieldByName('info_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[6, x]:= Tab.FieldByName('detalhe_aud').AsString + Tab.FieldByName('detalhe2_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[7, x]:= Tab.FieldByName('obs_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[8, x]:= Tab.FieldByName('ip_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[9, x]:= Tab.FieldByName('nomeComputador_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[10, x]:= Tab.FieldByName('cod_telasistema').AsString;
              end
           else
              {TMemo(Frm.Components[i]).Lines.Add('-> ' + Tab.FieldByName('info_aud').AsString + ', ' +
                                                 Tab.FieldByName('detalhe_aud').AsString + Tab.FieldByName('detalhe2_aud').AsString );}
              begin
              TStringGrid(Frm.Components[i]).ColWidths[2]:= -1;
              TStringGrid(Frm.Components[i]).ColWidths[3]:= -1;
              TStringGrid(Frm.Components[i]).ColWidths[4]:= -1;
              TStringGrid(Frm.Components[i]).Cells[5, x]:= Tab.FieldByName('info_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[6, x]:= Tab.FieldByName('detalhe_aud').AsString + Tab.FieldByName('detalhe2_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[7, x]:= Tab.FieldByName('obs_aud').AsString;
              end;
           Tab.Next;
           end;
        TStringGrid(Frm.Components[i]).Col:= 10;
        TStringGrid(Frm.Components[i]).Row:= 1;
        TStringGrid(Frm.Components[i]).Col:= 0;
        DB_ClearSQL;
        End;
end;

procedure GetInfoAuditoria1ou2( Frm : TForm ; CompName : String; chave : integer; Flag_Conveniado_Beneficiario: integer);
Var
  i, x, col: Integer;
//  S: String;
//  drawrect: trect;
 Begin
// Flag_Conveniado_Beneficiario (1 = Beneficiario, 2 = Conveniado e 3 = Empresa
  x:= 0;
  For i:= 0 To Frm.ComponentCount -1 Do
    If ( Frm.Components[i].Name = CompName ) Then
// Tag do TStringGrid = 1
      If ( Frm.Components[i] Is TStringGrid ) and (TStringGrid(Frm.Components[i]).Tag = 1) Then
        Begin
// Limpando TStringGrid
        TStringGrid(Frm.Components[i]).RowCount:= 2;
// Iniciando TStringGrid
        TStringGrid(Frm.Components[i]).DefaultRowHeight:= 17;
        TStringGrid(Frm.Components[i]).Col:= 0;
        for x:= 1 to TStringGrid(Frm.Components[i]).RowCount - 1 do
          for col:= 0 to TStringGrid(Frm.Components[i]).ColCount - 1 do
             TStringGrid(Frm.Components[i]).Cells[col, x]:= '';
        x:= 0;
        if (chave <> 0) and (chave <> 999999999) then
           DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au ' +
                      'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario ' +
                      'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao ' +
                      'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud ' +
                      'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud ' +
                      'left join tbl_empresa e ON e.cod_empresafolha = chaveCampo_aud ' +
                      'where cod_telasistema = ' + inttostr(FCod_TelaSistema) +
                      ' and chaveCampo_aud = ' + IntToStr(chave) +
                      ' order by dtsistema_aud Desc')
        else
           if chave = 999999999 then
              DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
                         'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario ' +
                         'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao '+
                         'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud '+
                         'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud '+
                         'left join tbl_empresa e ON e.cod_empresafolha = chaveCampo_aud ' +
                         'where cod_telasistema = ' + inttostr(FCod_TelaSistema) +
                         ' order by dtsistema_aud Desc')
           else
              DB_OpenSQL('select top 100 *, SUBSTRING(detalhe_aud,256,244) as detalhe2_aud from tbl_auditoriaSistema au '+
                         'left join tbl_usuario u ON u.cod_usuario = au.cod_usuario ' +
                         'left join tbl_tipoedicao te ON te.cod_tipoedicao = au.cod_tipoedicao '+
                         'left join tbl_beneficiario ON cod_beneficiario = chaveCampo_aud '+
                         'left join tbl_conveniado ON cod_conveniado = chaveCampo_aud '+
                         'left join tbl_empresa e ON e.cod_empresafolha = chaveCampo_aud ' +
                         'where cod_telasistema = '+ inttostr(FCod_TelaSistema) +
                         ' order by dtsistema_aud Desc');
        if Tab.RecordCount = 0 then
           Exit;
        TStringGrid(Frm.Components[i]).ColCount:= 12;
        TStringGrid(Frm.Components[i]).ColWidths[0]:= 63;
        TStringGrid(Frm.Components[i]).ColWidths[1]:= 70;
        TStringGrid(Frm.Components[i]).ColWidths[2]:= 40;
        TStringGrid(Frm.Components[i]).ColWidths[3]:= 130;
        TStringGrid(Frm.Components[i]).ColWidths[4]:= 130;
        TStringGrid(Frm.Components[i]).ColWidths[5]:= 130;
        TStringGrid(Frm.Components[i]).ColWidths[6]:= 200;
        TStringGrid(Frm.Components[i]).ColWidths[7]:= 250;
        TStringGrid(Frm.Components[i]).ColWidths[8]:= 150;
        TStringGrid(Frm.Components[i]).ColWidths[9]:= 70;
        TStringGrid(Frm.Components[i]).ColWidths[10]:= 70;
        TStringGrid(Frm.Components[i]).ColWidths[11]:= 30;
        TStringGrid(Frm.Components[i]).Cells[0, 0]:= 'Data';
        TStringGrid(Frm.Components[i]).Cells[1, 0]:= 'Usuário';
        TStringGrid(Frm.Components[i]).Cells[2, 0]:= 'Cód.';
        TStringGrid(Frm.Components[i]).Cells[3, 0]:= 'Nome Beneficiário';
        TStringGrid(Frm.Components[i]).Cells[4, 0]:= 'Nome Conveniado';
        TStringGrid(Frm.Components[i]).Cells[5, 0]:= 'Nome Empresa';
        TStringGrid(Frm.Components[i]).Cells[6, 0]:= 'Informação';
        TStringGrid(Frm.Components[i]).Cells[7, 0]:= 'Detalhe';
        TStringGrid(Frm.Components[i]).Cells[8, 0]:= 'Observação';
        TStringGrid(Frm.Components[i]).Cells[9, 0]:= 'IP';
        TStringGrid(Frm.Components[i]).Cells[10, 0]:= 'Máquina';
        TStringGrid(Frm.Components[i]).Cells[11, 0]:= 'Tela';

        if Flag_Conveniado_Beneficiario = 0 then
           begin
           TStringGrid(Frm.Components[i]).ColWidths[3]:= -1;
           TStringGrid(Frm.Components[i]).Cells[3, x]:= '';
           TStringGrid(Frm.Components[i]).ColWidths[4]:= -1;
           TStringGrid(Frm.Components[i]).Cells[4, x]:= '';
           TStringGrid(Frm.Components[i]).ColWidths[5]:= -1;
           TStringGrid(Frm.Components[i]).Cells[5, x]:= '';
           end
        else
           if Flag_Conveniado_Beneficiario = 1 then
              begin
              TStringGrid(Frm.Components[i]).ColWidths[5]:= -1;
              TStringGrid(Frm.Components[i]).Cells[5, x]:= '';
              TStringGrid(Frm.Components[i]).ColWidths[4]:= -1;
              TStringGrid(Frm.Components[i]).Cells[4, x]:= '';
              end
           else
              if Flag_Conveniado_Beneficiario = 2 then
                 begin
                 TStringGrid(Frm.Components[i]).ColWidths[5]:= -1;
                 TStringGrid(Frm.Components[i]).Cells[5, x]:= '';
                 TStringGrid(Frm.Components[i]).ColWidths[3]:= -1;
                 TStringGrid(Frm.Components[i]).Cells[3, x]:= '';
                 end
              else
                 if Flag_Conveniado_Beneficiario = 3 then
                    begin
                    TStringGrid(Frm.Components[i]).ColWidths[4]:= -1;
                    TStringGrid(Frm.Components[i]).Cells[4, x]:= '';
                    TStringGrid(Frm.Components[i]).ColWidths[3]:= -1;
                    TStringGrid(Frm.Components[i]).Cells[3, x]:= '';
                    end;
        while not Tab.EOF do
           begin
           Inc(x);
           TStringGrid(Frm.Components[i]).RowCount:= x + 1;
           TStringGrid(Frm.Components[i]).Cells[0, x]:= Tab.FieldByName('dtsistema_aud').AsString;
           TStringGrid(Frm.Components[i]).Cells[1, x]:= Tab.FieldByName('descricao_usu').AsString;
           TStringGrid(Frm.Components[i]).Cells[2, x]:= Tab.FieldByName('chaveCampo_aud').AsString;
           TStringGrid(Frm.Components[i]).Cells[3, x]:= Tab.FieldByName('nome_ben').AsString;
           TStringGrid(Frm.Components[i]).Cells[4, x]:= Tab.FieldByName('nome_con').AsString;
           TStringGrid(Frm.Components[i]).Cells[5, x]:= Tab.FieldByName('nome_emp').AsString;
//           if (chave <> 0) or (chave = 999999999) then
//              begin
              TStringGrid(Frm.Components[i]).Cells[6, x]:= Tab.FieldByName('info_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[7, x]:= Tab.FieldByName('detalhe_aud').AsString + Tab.FieldByName('detalhe2_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[8, x]:= Tab.FieldByName('obs_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[9, x]:= Tab.FieldByName('ip_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[10, x]:= Tab.FieldByName('nomeComputador_aud').AsString;
              TStringGrid(Frm.Components[i]).Cells[11, x]:= Tab.FieldByName('cod_telasistema').AsString;
//              end;
           Tab.Next;
           end;
    {
// Tentativa redimensionar Stringgrid nos forms onde existam Auditoria
// Ainda não consegui fazer rodar perfeito, temos que inserir no Drawcell dos forms
       Rect.Left:= 0;
       Rect.Top:= 0;
       Rect.Right:= 130;
       Rect.Bottom:= 17;

       XRect:= Rect;
       drawrect:= Rect;

       xx:= x;
       for x:= 0 to xx-1 do
        for z:= 0 to 11 do
           begin
           S:= TStringGrid(Frm.Components[i]).Cells[z, x];
           if Length(S) > 0 then
              begin
              drawrect:= XRect;
              DrawText(TStringGrid(Frm.Components[i]).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
              if (drawrect.bottom - drawrect.top) > TStringGrid(Frm.Components[i]).RowHeights[x] then
                 (TStringGrid(Frm.Components[i]).RowHeights[x]:= (drawrect.bottom - drawrect.top))
              end
           else
              begin
              drawrect.Right:= XRect.right;
              (TStringGrid(Frm.Components[i]).canvas.fillrect(drawrect));
              DrawText(TStringGrid(Frm.Components[i]).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
              end;
           end;
     }
        TStringGrid(Frm.Components[i]).Col:= 11;
        TStringGrid(Frm.Components[i]).Row:= 1;
        TStringGrid(Frm.Components[i]).Col:= 0;
        DB_ClearSQL;
        End;
end;

end.
