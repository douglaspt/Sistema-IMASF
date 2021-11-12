(******************************************************************************
Contém funções para validações de campos
Retorno = true o dado validado esta certo, caso contrário retorna false
*******************************************************************************)
unit Fun_Test;

interface
uses SysUtils, Fun_Str ;

//** Texto
function Test_Preenchido(S:String): boolean ; export ;
function Test_Cep(S:String): boolean ; export ;
function Test_SimNao(S:String): boolean ; export ;

//** Números
function Test_Zero(S:String): boolean ; export ;
function Test_Num(S:String): boolean ; export ;
function Test_NumZero(S:String): boolean ; export ;
function Test_NumMaiorZero(S:String): boolean ; export ;

//** Datas
function Test_Data(S:String): boolean ; export ; //***
function Test_PreenchidoData(S:String): boolean ; export ; //***
function Test_DataValida(S:String): boolean ; export ;
function Test_DataValida6meses(S:String): boolean ; export ;
function Test_DataNascimento(S:String): boolean ; export ;

//** CGC / CNPJ(CPF) / PIS
function Test_CPF(s : string ): Boolean; export ;
function Teste_CNPJ(s: String): Boolean; export ;

implementation

function Test_Preenchido(S:String): boolean ;
begin
  Result := length(S) > 0 ;
end;

function Test_SimNao(S:String): boolean ; export ;
begin
  try
  if (S <> 'N') and (S <> 'S') then
    Result:= False;
  except
  Result:= True;
  end;
end;

function Test_Zero(S:String): boolean ;
begin
  Result := Trim(S) <> '0' ;
end;

function Test_Num(S:String): boolean ;
begin
try
  Result := true ;
  if S <> '' then
    StrToFloat(S) ;
except
  Result := false ;
end;
end;

function Test_NumZero(S:String): boolean ;
begin
  Result := (Test_Num(S)) and (Test_Zero(S) and (Test_Preenchido(S))) ;
end;

function Test_NumMaiorZero(S:String): boolean ;
begin
try
  if not Test_Preenchido(S) then Result := false else
    Result := StrToFloat(STR_RemoveChar(S,'.')) > 0 ;
except
  Result := false ;
end;
end;

function Test_Data(S:String): boolean ;
begin
try
  if (Length(Trim(S)) < 8) then begin
    Result := false ;
    Exit ;
  end ;
  if (S = '00/00/0000') then Result := true else
    Result := StrToDate(S) > 0 ;
except
  Result := false ;
end;
end;

function Test_DataValida(S:String): boolean ;
var
  d : tdatetime ;
begin
  if ((S = '') or (S = '  /  /  ') or (S = '  /  /    ')) then Result := false else begin
    if Test_Data(S) then
    d := strtodate(s);
    if d < (date-365.25) then
      result := false
    else
      if d > (date+3652.50) then
        result := false
      else
        Result := true ;
  end;
end;

function Test_DataValida6meses(S:String): boolean ;
var
  d : tdatetime ;
begin
  if ((S = '') or (S = '  /  /  ') or (S = '  /  /    ')) then Result := false else begin
    if Test_Data(S) then
    d := strtodate(s);
    if d < (date+182.60) then
      result := false
    else
      result := true;  
  end;
end;

function Test_DataNascimento(S:String): boolean ;
var
  d : tdatetime ;
begin
  if ((S = '') or (S = '  /  /  ') or (S = '  /  /    ')) then Result := false else begin
    if Test_Data(S) then
    d := strtodate(s);
    if d > (date) then
      result := false
    else
      Result := true ;
  end;
end;

function Test_PreenchidoData(S:String): boolean ;
begin
  if ((S = '') or (S = '  /  /  ') or (S = '  /  /    ')) then Result := false else
    Result := Test_Data(S) ;
end;

function Test_Cep(S:String): boolean ;
begin
  Result := (length(S) > 4) and (S <> '     -   ');
end;

function Test_CPF(s : string): Boolean;
var
  Soma: Integer;
  iPos, Fator, i: Integer;
  iDig: Integer;
begin
   Result := False;

   { remove os simbolos especiais }
   S := Str_RemoveSimbolos(S);

   If Trim(S) = '' then begin
     Result := true ;
     Exit ;
   end;

   { verifica o CPF possui 11 digitos }
   if Length(S) <> 11 then Exit;

   { calcula os 2 últimos dígitos }
   for iPos := 9 to 10 do
   begin
      Soma := 0;
      Fator := 2;

      for i := iPos downto 1 do
      begin
        Soma := Soma + StrToInt(S[i]) * Fator;
        Inc(Fator);
      end;

      iDig := 11 - Soma mod 11;
      if iDig > 9 then iDig := 0;

      { verifica os digitos com o forncedido }
      if iDig <> StrToInt( S[iPos + 1]) then
        Exit;
   end;

   Result := True;
end;

function Teste_CNPJ(s: String): Boolean;
var
  Soma: Integer;
  iPos, Fator, i: Integer;
  iDig: Integer;
begin
   Result := False;

   { remove os simbolos especiais }
   S := Str_RemoveSimbolos(S);

   { verifica o CPNJ possui 14 digitos }
   if Length(S) <> 14 then Exit;

   { calcula os 2 últimos dígitos }
   for iPos := 12 to 13 do
   begin
      Soma := 0;
      Fator := 2;

      for i := iPos downto 1 do
      begin
        Soma := Soma + StrToInt(S[i]) * Fator;
        Inc(Fator);
        if Fator > 9 then Fator := 2;
      end;

      iDig := 11 - (Soma mod 11);
      if iDig > 9 then iDig := 0;

      { verifica os digitos com o forncedido }
      if iDig <> StrToInt(S[iPos + 1]) then
        Exit;
   end;

   Result := True;

end;

end.
