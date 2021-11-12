unit Fun_Str;

interface

uses SysUtils, Classes;

function GetFieldArray(S:String; i:integer): string;              export ;
function STR_Date: String ;                                       export ;  //Traz a Data Atual
function STR_Tomorrow: String ;                                         export ;  //Traz a Data de Amanhã
//function STR_DBDateTime: String ;                                 export ;  //Traz a Data e Hora Atual
//function STR_DBDate: String ;                                     export ;  //Traz a Data Atual no format do banco de dados
//function STR_NMDate: String ;                                     export ;  //Traz a Data Atual sem Máscara
function STR_ValNum(Key:Char): Char ;                             export ;  //Valida entrada de números
//function STR_DateNoMask(D:String): String ;                       export ;  //Retira a máscara da Data
function STR_DateMask(D:String) : String ;                        export ;  //Formata a data c/ máscara
//function STR_DateToDBStr(D:TDateTime): String ;                   export ;  //Converte a data para o formato do banco de dados (SQL)
//function STR_DateTimeToDBStr(D : TDAteTime): String ;             export ;  //Converte a data para o fromato longo do banco de dados (SQL)
function STR_PrimeiroStr(S:String): String ;
function STR_GeraDigito11(V:String): String ;                     export ;
function STR_RightAlign(S:String;C:Char;Tam : Integer): String ;  export ;
function STR_RemoveChar(S:String;K : Char): String ;              export ;
function STR_RemoveChars(S:String): String ;                      export ;
function STR_RemoveCharsStr(S:String): String ;                   export ;
function STR_ValDouble(S:String; Key : Char): Char ;              export ;  //Valida a entrada de números flutuantes
function STR_SubstChar(S:String;O,D : Char): String ;             export ;
function STR_DBFloat(V:String): String ;                          export ;  //Converte string de um numero real para o mesmo em formato do banco de dados
function STR_RemoveZero(V:String): String ;                       export ;  //Remove zeros a esquerda
function STR_AddSpaces(V:String;T:Integer): String ;              export ;  //Adiciona espaços a direita elimina espaços a esquerda
function STR_AddSpaces2(V:String;T:Integer): String ;             export ;  //Adiciona espaços a direita
function STR_AddZeros(V:String;T:Integer): String ;               export ;  //Adiciona zeros a direita
function STR_GetIdadeM(V:String): Integer ;                       export ;  //Retorna a idade em meses baseada na data atual
//function STR_SomAnos(V:String;A:Integer): String ;                export ;  //Soma os anos na data informada (Result = V + A, onde V = Data informada e A = Ano(s) informado(s))
//function STR_SubtraiAnos(V:String;A:Integer): String ;            export ;  //Subtrai os anos na data informada (Result = V - A, onde V = Data informada e A = Ano(s) informado(s))
//function STR_SomMeses(V:String;M:Integer): String ;               export ;  //Soma os meses na data informada (Result = V + M, onde V = Data informada e M = Mes(es) informado(s))
function STR_IntToStr(V:Integer): String ;                        export ;  //Valida e converte inteiro para string
function STR_StrToInt(V:String): Integer ;                        export ;  //Valida e converte string para inteiro
function STR_RemoveSimbolos(V:String): String ;                   export ;  //Remove todos os caracteres deixando somente os números
function STR_GetNomeArquivo(S : String): String ;                 export ;  //Retorna o nome do arquivo Ex. "S = 'A:\testes\Arq1.txt  //  Result = Arq1.txt"
function STR_GetIdadeMeses(V:String): Integer ;                   export ;
function STR_UltimoDiaMesAnterior(d:String): TDateTime;           export ;
function STR_UltimoDiaMes(d:String): TDateTime;                   export ;
Function Str_Extenso( flt_valorinforma:Double ) : String;         Export ;
function STR_GetDescricaoSexo(S : String): String ;               export ;
function Str_StrToFloat(V:String): Double;                        export ;
function Str_AnsiToAscii ( str: String ): String;                 export ;
function Str_PrimeiraLetraMaiuscula(Texto:String): String;        export ;  //Converte Primeira Letra do Texto em Maiúscula
function GetFileExt(FileName: string): String;                    export ;  //Pegar somente Extensão do Arquivo
function ContaLinhaTXT(LocalArquivo: String): Integer;            export ;

implementation
{$H+}

function GetFieldArray(S:String; i:integer): string;
var
  n, id : integer;
  FR : String ;
begin
  n := -1 ;
  S := ', ' + S + ',';
  while (n < i) do
  begin
    for id := 0 to length(s) do
    begin
      if n = i then
        FR := FR + S[id];
      if S[id] = ',' then
        Inc(n);
    end;
  end;
  Result := Trim(Copy(FR,1,length(FR)-1));
end;

function Str_IntToStr(V:Integer): String;
begin
  try
    Result := IntToStr(V) ;
  except
    Result := '0' ;
  end;
end;

function Str_StrToInt(V:String): Integer;
begin
  try
    Result := StrToInt(V) ;
  except
    Result := 0 ;
  end;
end;

function Str_StrToFloat(V:String): Double;
begin
  try
    Result := StrToFloat(V) ;
  except
    Result := 0 ;
  end;
end;

function STR_Date: String ;
begin
  Result := DateToStr(Date) ;
end;

function STR_Tomorrow: String ;
begin
  Result := DateToStr(Date+1) ;
end;


function STR_DateMask(D:String): String ;
begin
  if (D = '') or (D = '0') then Result := '' else
    Result := Copy(D,7,2)+'/'+Copy(D,5,2)+'/'+Copy(D,1,4) ;
end;

function STR_GeraDigito11(V:String): String ;
var
  i , m, tam : integer ;
  r : longint ;
const
  MIni = 20 ;
begin
  Tam := Length(V) ;
  //Em caso de erro retorna "Err"
  if (Tam > 30) or (Tam = 0) then Result := 'Err' else begin
    M := MIni ;
    R := 0 ;
    //Calculo digito verificador, módulo 11 
    for i := 0 to Tam-1 do begin
      Inc(r, (StrToInt(Copy(V,(Tam-i),1))) * M);
      if M < 90 then Inc(M,10) else M := MIni ;
    end;
    M := R mod 11 ;
    if M > 9 then Result := '0' else Result := IntToStr(M) ;
  end;
end;

function STR_ValNum(Key:Char): Char ;
begin
  if (Key in ['0'..'9',#13,#8]) then
    Result := Key
  else Result := #0 ;
end;
                      
function STR_DBFloat(V:String): String ;
begin
  V := STR_RemoveChar(V,'.') ;
  Result := STR_SubstChar(V,Char(','),Char('.'));
end;

function STR_SubstChar(S:String;O,D : Char): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if (s[i] in [O]) then
      result := result + d
    else
      result := result + s[i] ;
end;

function STR_RemoveChar(S:String;K : Char): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if not (s[i] in [k]) then
      result := result + s[i];
end;

function STR_PrimeiroStr(S:String): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if (s[i] <> ' ') then
      result := result + s[i]
    else
      exit;  
end;

function STR_RemoveChars(S:String): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if (s[i] in ['0'..'9']) then
      result := result + s[i];
end;

function STR_RemoveCharsStr(S:String): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if (s[i] in ['0'..'9', '.', '-', ',']) then
      result := result + s[i];
end;

function STR_ValDouble(S:String; Key : Char): Char ;
begin
  Result := Key ;
  case Key of
    ',': if (Pos(',', S) > 1) then Result := #0;
    '0'..'9',#13,#8 : ;
    else
      Result := #0 ;
  end;
end;

function STR_RightAlign(S:String;C:Char;Tam : Integer): String ;
var
  i, ta : integer ;
begin
  Result := '' ;
  ta := Length(S) ;
  if ta > Tam then Exit ;
  for i := 0 to Tam-1 do begin
    if (Tam-i) > ta then
      Result := Result + C else
      Result := Result + Copy(S,(ta+1)-(tam-i),1);
  end;

end;


function STR_RemoveZero(V:String): String ;
var
  i : double ;
begin
  try
    i := StrToFloat(v);
    Result := FloatToStr(i) ;
  except
    Result := V
  end;
end;

function STR_AddSpaces(V:String;T:integer): String ;
begin
  try
    V := Trim(V) ;
    V := Copy(V,1,T);
    while length(V) <= T do
      V := V + ' ';
    result := V ;
  except
    Result := 'Err'
  end;
end;

function STR_AddSpaces2(V:String;T:integer): String ;
begin
  try
    V := Copy(V,1,T);
    while length(V) < T do
      V := V + ' ';
    result := V ;
  except
    Result := 'Err'
  end;
end;

function STR_AddZeros(V:String;T:integer): String ;
begin
  try
    V := Copy(Trim(V),1,T) ;
    while length(V) < T do
      V := '0' + V ;
    result := V ;
  except
    Result := 'Err'
  end;
end;


function STR_GetIdadeMeses(V:String): Integer ;
var
//  ano, mes, dia : Integer ;
//  wano, wmes, wdia : Word ;
  wd : double ;
begin
  try
{    if Pos('/', V) > 0 then
      V := STR_DateNoMask(V) ;
    DecodeDate(Date, wano, wmes, wdia ) ;
    mes := StrToInt(copy(V,5,2));
    dia := StrToInt(copy(V,7,2));
    ano := StrToInt(copy(V,1,4));
    if dia < wdia then
      wmes := wmes - 1 ;
    Result := (wmes - mes) + ((wano - ano)*12) ;
  except
    Result := -1000 ;
  end;  }
    if Pos('/', V) = 0 then
      V := STR_DateMask(V) ;
    wd := Date - StrToDate(V) ;
    result := Trunc(wd / 30.4375) ;
  except
    Result := -1000 ;
  end;
end;

function STR_GetIdadeM(V:String): Integer ;
var
  wdia, wmes : Integer ;
begin
  try
    wdia := StrToInt(FloatToStr(Date - StrToDate(V))) ;
    wmes := wdia div 30 ;
    result := wmes ;
  except
    Result := -1000 ;
  end;
end;

function STR_RemoveSimbolos(V:String): String ;
var
  i : integer ;
  s : string ;
begin
  s := '' ;
  for i := 1 to length(v) do
    if v[i] in ['0'..'9'] then s := s + v[i];
  Result := s ;
end;

function STR_GetNomeArquivo(S : String): String ;
var
  i, t : integer ;
  r, rs : string ;
begin
  r := '' ;
  rs:= '' ;
  t := length(S) ;
  for i := 0 to t do
    if s[t-i] = '\' then begin
      r := r + s[t-i] ;
      break ;
    end else
      r := r + s[t-i] ;
  t := length(r) ;
  for i := 0 to t-1 do
    Rs := rs + r[t-i];
  Result := rs ;
end;

function STR_GetDescricaoSexo(S : String): String ;
begin
  result := '';
  if s = 'F' then
    result := 'Feminino' ;
  if s = 'M' then
    result := 'Masculino' ;
end;

function STR_UltimoDiaMesAnterior(d:String): TDateTime;
var
  wdt : TDateTime ;
  wm : string ;
begin
  wdt := IncMonth(StrToDate(d),-1);
  wm := FormatDateTime('mm', wdt) ;
  while FormatDateTime('mm', wdt) = wm do
    wdt := wdt +1;
  wdt := wdt - 1;
  result := wdt ;
end;

function STR_UltimoDiaMes(d:String): TDateTime;
var
  wdt : TDateTime ;
  wm : string ;
begin
  if d = '' then
    wdt := date
  else begin
    if Length(d) = 2 then
      d := '28/'+d+'/'+FormatDateTime('yyyy',Date);
    if Length(d) = 7 then
      d := '28/'+d;
    wdt := StrToDate(d);
  end;
  wm := FormatDateTime('mm', wdt) ;
  while FormatDateTime('mm', wdt) = wm do
    wdt := wdt +1;
  wdt := wdt - 1;
  result := wdt ;
end;

Function Str_Extenso( flt_valorinforma:Double ) : String;
{ Esta rotina espera receber o valor no formato 9999 ou 9999,99 (string)}
var
   str_textdocentav,
   str_textdocenten,
   str_textdomilhar,
   str_textdomilhao,
   str_textdobilhao,
   str_textdotrilha,
   str_textdoinform : string;
const
   cns_nomedaunidad : array[1..9] of string = ('um'
                                              ,'dois'
                                              ,'tres'
                                              ,'quatro'
                                              ,'cinco'
                                              ,'seis'
                                              ,'sete'
                                              ,'oito'
                                              ,'nove');
   cns_nomedadezuni : array[1..9] of string = ('onze'
                                              ,'doze'
                                              ,'treze'
                                              ,'quatorze'
                                              ,'quinze'
                                              ,'dezesseis'
                                              ,'dezessete'
                                              ,'dezoito'
                                              ,'dezenove');
   cns_nomedadezena : array[1..9] of string = ('dez'
                                              ,'vinte'
                                              ,'trinta'
                                              ,'quarenta'
                                              ,'cinquenta'
                                              ,'sessenta'
                                              ,'setenta'
                                              ,'oitenta'
                                              ,'noventa');
   cns_nomedacenten : array[1..9] of string = ('cento'
                                              ,'duzentos'
                                              ,'trezentos'
                                              ,'quatrocentos'
                                              ,'quinhentos'
                                              ,'seiscentos'
                                              ,'setecentos'
                                              ,'oitocentos'
                                              ,'novecentos');
   function rotina_verificondic (bol_expresinform : boolean
                                ;str_casoverdadei
                                ,str_casoforfalso : string) : string;
   begin
   if bol_expresinform = true then
      rotina_verificondic := str_casoverdadei
      else
      rotina_verificondic := str_casoforfalso;
   end;
   function rotina_miniextensos (str_conjuntotrio: string): string;
   var
      str_textdounidad,
      str_textdodezena,
      str_textdocenten: string;
   begin
   str_textdounidad := '';
   str_textdodezena := '';
   str_textdocenten := '';
   if ((str_conjuntotrio[2] = '1')
   and (str_conjuntotrio[3] <> '0')) then
      begin
      str_textdounidad := cns_nomedadezuni[strtoint(str_conjuntotrio[3])];
      str_textdodezena := '';
      end
      else
      begin
      if str_conjuntotrio[2] <> '0' then
         str_textdodezena := cns_nomedadezena [strtoint(str_conjuntotrio[2])];
      if str_conjuntotrio[3] <> '0' then
         str_textdounidad := cns_nomedaunidad [strtoint(str_conjuntotrio[3])];
      end;
   if ((str_conjuntotrio[1] = '1')
   and (str_textdounidad = '')
   and (str_textdodezena = '')) then
      str_textdocenten := 'cem'
      else
      if str_conjuntotrio[1] <> '0' then
         str_textdocenten := cns_nomedacenten [strtoint(str_conjuntotrio[1])]
         else
         str_textdocenten := '';
   rotina_miniextensos := str_textdocenten
                        + rotina_verificondic ((str_textdocenten <> '')
                                          and ((str_textdodezena <> '')
                                          or  (str_textdounidad <> '')), ' e ', '')
                        + str_textdodezena
                        + rotina_verificondic ((str_textdodezena <> '')
                                          and  (str_textdounidad <> ''), ' e ', '')
                        + str_textdounidad;
   end;
begin
result := '';
if ((flt_valorinforma > 999999999999999.99)
or  (flt_valorinforma < 0)) then
   begin
//   showmessage ('O valor está fora do intervalo permitido');
   result := '';
   exit;
   end;
str_textdoinform := formatfloat('000000000000000.00',flt_valorinforma);
str_textdotrilha := rotina_miniextensos (copy(str_textdoinform,  1, 3));
str_textdobilhao := rotina_miniextensos (copy(str_textdoinform,  4, 3));
str_textdomilhao := rotina_miniextensos (copy(str_textdoinform,  7, 3));
str_textdomilhar := rotina_miniextensos (copy(str_textdoinform, 10, 3));
str_textdocenten := rotina_miniextensos (copy(str_textdoinform, 13, 3));
str_textdocentav := rotina_miniextensos ('0' + copy(str_textdoinform,17,2));

if ((str_textdotrilha = '')
and (str_textdobilhao = '')
and (str_textdomilhao = '')
and (str_textdomilhar = '')
and (str_textdocenten = '')
and (str_textdocentav = '')) then
   result := 'zero reais';

if str_textdotrilha <> '' then
   begin
   result := str_textdotrilha;
   if copy(str_textdoinform, 1, 3) = '001' then
      result := result
              + ' trilhão'
      else
      result := result
              + ' trilhões';
   if ((str_textdobilhao = '')
   and (str_textdomilhao = '')
   and (str_textdomilhar = '')
   and (str_textdocenten = '')
   and (str_textdocentav = '')) then
      result := result + ' de reais'
      else
      begin
      if ((str_textdobilhao <> '')
      or  (str_textdomilhao <> '')
      or  (str_textdomilhar <> '')
      or  (str_textdocenten <> '')) then
         result := result + ', '
         else
         begin
         if str_textdocentav <> '' then
            result := result + ' de reais e ';
         end;
      end;
   end;

if str_textdobilhao <> '' then
   begin
   result := result
           + str_textdobilhao;
   if copy(str_textdoinform, 4, 3) = '001' then
      result := result
              + ' bilhão'
      else
      result := result
              + ' bilhões';
   if ((str_textdomilhao = '')
   and (str_textdomilhar = '')
   and (str_textdocenten = '')
   and (str_textdocentav = '')) then
      result := result + ' de reais'
      else
      begin
      if ((str_textdomilhao <> '')
      or  (str_textdomilhar <> '')
      or  (str_textdocenten <> '')) then
         result := result + ', '
         else
         begin
         if str_textdocentav <> '' then
            result := result + ' de reais e ';
         end;
      end;
   end;

if str_textdomilhao <> '' then
   begin
   result := result
           + str_textdomilhao;
   if copy(str_textdoinform, 7, 3) = '001' then
      result := result
              + ' milhão'
      else
      result := result
              + ' milhões';
   if ((str_textdomilhar = '')
   and (str_textdocenten = '')
   and (str_textdocentav = '')) then
      result := result + ' de reais'
      else
      begin
      if ((str_textdomilhar <> '')
      or  (str_textdocenten <> '')) then
         result := result + ', '
         else
         begin
         if str_textdocentav <> '' then
            result := result + ' de reais e ';
         end;
      end;
   end;

if str_textdomilhar <> '' then
   begin
   result := result
           + str_textdomilhar
           + ' mil';
   if ((str_textdocenten = '')
   and (str_textdocentav = '')) then
      result := result + ' reais'
      else
      begin
      if str_textdocenten <> '' then
         begin
         if ((copy(str_textdoinform, 14, 2) = '00')
         or  (copy(str_textdoinform, 13, 1) = '0')) then
            result := result + ' e '
            else
            result := result + ', ';
         end
         else
         begin
         if str_textdocentav <> '' then
            result := result + ' reais e ';
         end;
      end;
   end;

if str_textdocenten <> '' then
   begin
   result := result
           + str_textdocenten;
   if ((str_textdotrilha = '')
   and (str_textdobilhao = '')
   and (str_textdomilhao = '')
   and (str_textdomilhar = '')
   and (copy(str_textdoinform, 13, 3) = '001')) then
      begin
      if str_textdocentav = '' then
         result := result + ' real'
         else
         begin
         if str_textdocenten <> '' then
            result := result + ' real e ';
         end;
      end
      else
      begin
      if str_textdocentav = '' then
         result := result + ' reais'
         else
         begin
         if str_textdocenten <> '' then
            result := result + ' reais e ';
         end;
      end;
   end;

if str_textdocentav <> '' then
   begin
   if ((str_textdotrilha = '')
   and (str_textdobilhao = '')
   and (str_textdomilhao = '')
   and (str_textdomilhar = '')
   and (str_textdocenten = '')) then
      begin
      if copy(str_textdoinform, 17, 2) = '01' then
         result := result
                 + str_textdocentav
                 + ' centavo de real'
         else
         result := result
                 + str_textdocentav
                 + ' centavos de real';
      end
      else
      begin
      if copy(str_textdoinform, 17, 2) = '01' then
         result := result
                 + str_textdocentav
                 + ' centavo'
         else
         result := result
                 + str_textdocentav
                 + ' centavos';
      end;
   end;
end;

function Str_AnsiToAscii ( str: String ): String;
var i: Integer; 
begin 
for i := 1 to Length ( str ) do            
case str[i] of 
'á': str[i] := 'a'; 
'é': str[i] := 'e'; 
'í': str[i] := 'i'; 
'ó': str[i] := 'o'; 
'ú': str[i] := 'u'; 
'à': str[i] := 'a'; 
'è': str[i] := 'e'; 
'ì': str[i] := 'i'; 
'ò': str[i] := 'o'; 
'ù': str[i] := 'u'; 
'â': str[i] := 'a'; 
'ê': str[i] := 'e';
'î': str[i] := 'i';
'ô': str[i] := 'o'; 
'û': str[i] := 'u'; 
'ä': str[i] := 'a'; 
'ë': str[i] := 'e'; 
'ï': str[i] := 'i'; 
'ö': str[i] := 'o'; 
'ü': str[i] := 'u'; 
'ã': str[i] := 'a';
'õ': str[i] := 'o'; 
'ñ': str[i] := 'n'; 
'ç': str[i] := 'c'; 
'Á': str[i] := 'A'; 
'É': str[i] := 'E'; 
'Í': str[i] := 'I'; 
'Ó': str[i] := 'O'; 
'Ú': str[i] := 'U'; 
'À': str[i] := 'A'; 
'È': str[i] := 'E'; 
'Ì': str[i] := 'I'; 
'Ò': str[i] := 'O'; 
'Ù': str[i] := 'U'; 
'Â': str[i] := 'A';
'Ê': str[i] := 'E'; 
'Î': str[i] := 'I'; 
'Ô': str[i] := 'O'; 
'Û': str[i] := 'U'; 
'Ä': str[i] := 'A'; 
'Ë': str[i] := 'E'; 
'Ï': str[i] := 'I'; 
'Ö': str[i] := 'O'; 
'Ü': str[i] := 'U';
'Ã': str[i] := 'A'; 
'Õ': str[i] := 'O'; 
'Ñ': str[i] := 'N'; 
'Ç': str[i] := 'C';
//Troca apóstrofe por espaço
'''': str[i] := '´';
end; 
Result := str;
end;

function Str_PrimeiraLetraMaiuscula(Texto:String): String;
begin
if Texto <> '' then
  begin
  Texto := UpperCase(Copy(Texto,1,1))+LowerCase(Copy(Texto,2,Length(Texto)));
  Result := Texto;
  end;
end;

function GetFileExt(FileName: string): String;
var
i: integer;
begin
  Result:= '';
  for i:=Length(FileName) downto 1 do
    begin
    Result:=FileName[i]+Result;
    if FileName[i]= '.'
       then break;
    end;
  FileName:= Result;
end;

function ContaLinhaTXT(LocalArquivo: String): Integer;
var
  Arquivo: TStringList;
  TamArquivo: Integer;
begin
  Arquivo:= TStringList.Create();
    try
    Arquivo.LoadFromFile(LocalArquivo);
    TamArquivo:= Arquivo.Count;
    finally
    FreeAndNil(Arquivo);
    end;
  Result:= TamArquivo;
end;

end.
