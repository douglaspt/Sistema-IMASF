unit Fun_Data ;

interface

Uses
     SysUtils, Windows ;

Function Data_EOM( Dt : TDateTime ): TDateTime; Export;
Function Data_BOM( Dt : TDateTime ): TDateTime; Export;
Function Data_BOW( Dt : TDateTime ): TDateTime; Export;
Function Data_EOW( Dt : TDateTime ): TDateTime; Export;
Function Data_VerSemana( Dt : TDateTime ) : Integer; Export; // a qual semana do mes uma data pertence
Function Data_GetMonthName ( Mes : Integer ) : String ; Overload ; Export ;
Function Data_GetMonthName ( Dt : TDateTime ) : String ; Overload ; Export ;
Function Data_GetMonthParteName ( Mes : Integer ) : String ; Overload ; Export ;
//Function Data_GetLastDayMonth ( Mes : Integer ) : Integer ; Export ;
//Function Data_GenStrDateByMonth ( Mes : Integer ) : String ; export ;
//Function Data_GenDateByMonth ( Mes : Integer ) : TDateTime ;  Export ;
Function Data_CheckMes ( Mes : Integer ) : Boolean ; Export ;
Function Data_Month ( Dt : TDateTime ) : Integer ; Export ;
Function Data_Year ( Dt : TDateTime ) : Integer ; Export ;
//Function Data_Description ( Dt : TDateTime ) : String ; Export ;
Function Data_GetIdadeAnos(Dt, DataBase:TDateTime): Integer ;     export ;  //Retorna a idade baseada na data base
Function Data_GetIdadeMes(Dt, DataBase:TDateTime): Integer ;     export ;  //Retorna a idade baseada na data base
Function Data_GetIdadeExt(Dt, DataBase:TDateTime): String ;     export ;  //Retorna a idade baseada na data base
Function Data_Format ( Format : String ; Dt : TDateTime ) : String ;
Function Data_SubtraiMeses(Dt : TDateTime ; Mes : integer) : TDateTime;          export ;
Function Data_Subtrai1mes(Dt : TDateTime) : TDateTime;          export ;
Function Data_Soma1mes(Dt : TDateTime) : TDateTime;          export ;
function Data_GetFileDate(Arquivo: String): TDateTime;          export ;
implementation

//Uses
//   Fun_Str, NumFun ;
Function Data_EOW( Dt : TDateTime ): TDateTime;
var
  Dia : Integer    ;
Begin
  Dia := DayOfWeek( Dt )  ;
  Dia := 7 - Dia          ;
  Result := ( Dt + Dia )  ;
End;

Function Data_BOM( Dt : TDateTime ): TDateTime;
var
  Ano,Mes,Dia    : Word ;
Begin
  DecodeDate( Dt , Ano, Mes, Dia ) ;
  Result := ( Dt -  Dia ) + 1      ;
End;

Function Data_BOW( Dt : TDateTime ): TDateTime;
var
    Dia  : Integer  ;
Begin
  Dia := DayOfWeek( Dt )       ;
  Result := ( Dt - Dia ) + 1   ;
End;

Function Data_EOM( Dt : TDateTime ): TDateTime;
var
    Num : Integer         ;
    Ano1,Mes1,Dia1 : Word ;
    Ano2,Mes2,Dia2 : Word ;
Begin
  DecodeDate( Dt , Ano1, Mes1, Dia1 ) ;
  For Num := 1 To 32 Do   // 32 pq nenhum mes é maior que 32
  Begin
     Dt := Dt + 1 ;
     DecodeDate( Dt , Ano2 , Mes2 , Dia2 ) ;
     IF Mes2 <> Mes1 Then
     Begin
        Dt := Dt - 1 ;
        Result := Dt    ;
        Exit; // 1.0 dia do mes seguinte
     End;
  End;
  Result := Dt    ;
End;

Function Data_VerSemana( Dt : TDateTime ): Integer;
var
    Dia  : Integer ;
    VarAno,VarMes,VarDia  : Word ;
Begin
  DecodeDate( Dt , VarAno , VarMes , VarDia )   ;
  Dia := DayOfWeek( Data_BOM(Dt) )       ;
  Result := ( 1 + Trunc( ( Dia + VarDia ) / 7 ) ) ;
End;

Function Data_GetMonthName ( Mes : Integer ) : String ;
Begin
   Case Mes Of
       1  : Result := 'Janeiro' ;
       2  : Result := 'Fevereiro' ;
       3  : Result := 'Março' ;
       4  : Result := 'Abril' ;
       5  : Result := 'Maio' ;
       6  : Result := 'Junho' ;
       7  : Result := 'Julho' ;
       8  : Result := 'Agosto' ;
       9  : Result := 'Setembro' ;
       10 : Result := 'Outubro' ;
       11 : Result := 'Novembro' ;
       12 : Result := 'Dezembro' ;
   End ;
End ;

Function Data_GetMonthParteName ( Mes : Integer ) : String ;
Begin
   Case Mes Of
       1  : Result := 'JAN' ;
       2  : Result := 'FEV' ;
       3  : Result := 'MAR' ;
       4  : Result := 'ABR' ;
       5  : Result := 'MAI' ;
       6  : Result := 'JUN' ;
       7  : Result := 'JUL' ;
       8  : Result := 'AGO' ;
       9  : Result := 'SET' ;
       10 : Result := 'OUT' ;
       11 : Result := 'NOV' ;
       12 : Result := 'DEZ' ;
   End ;
End ;

Function Data_GetMonthName ( Dt : TDateTime ) : String ;
Var
   a,m,d : Word ;
Begin
   DecodeDate(Dt,a,m,d) ;
   Result := Data_GetMonthName(m) ;
End ;

Function Data_GetLastDayMonth ( Mes : Integer ) : Integer ;
Begin
   Result := -1 ;
   Case Mes Of
       1,3,5,7,8,10,12 : Result := 31 ;
       4,6,9,11 : Result := 30 ;
       2 : Result := 28 ;
   End ;
End ;

{Function Data_GenStrDateByMonth ( Mes : Integer ) : String ;
Var
   a,m,d : Word ;
Begin
   DecodeDate(Date(),a,m,d) ;
   Result := '01/' + Num_IntToStrZ(Mes,2) + '/' + Str_IntToStr(a) ;
End ;

}
Function Data_CheckMes ( Mes : Integer ) : Boolean ;
Begin
   Result := False ;
   If ( (Mes >= 1) And (Mes <= 12) ) Then
       Result := True ;
End ;

Function Data_Month ( Dt : TDateTime ) : Integer ;
Var
   d, m, y : Word ;
Begin
   DecodeDate(Dt,y,m,d) ;
   Result := m ;
End ;

Function Data_Year( Dt : TDateTime ) : Integer ;
Var
   d, m, y : Word ;
Begin
   DecodeDate(Dt,y,m,d) ;
   Result := y ;
End ;
{
Function Data_Description ( Dt : TDateTime ) : String ;
Var
   d, m, y : Word ;
Begin
   DecodeDate(Dt,y,m,d) ;
   Result := Str_Zero(m,2) + ' de ' + Data_GetMonthName(m) + ' de ' + Str_Zero(y,4) ;
End ;
 }
function Data_GetIdadeAnos(Dt, DataBase:TDateTime): Integer ;
var
  wd : double ;
begin
  try
    wd := DataBase - dt ;
    result := Trunc(wd / 365.25) ;
  except
    Result := -1000 ;
  end;
end;

function Data_GetIdadeMes(Dt, DataBase:TDateTime): Integer ;
var
  wd : double ;
begin
  try
    wd := DataBase - dt ;
    result := Trunc(wd / 30.4375) ;
  except
    Result := -1000 ;
  end;
end;

function Data_GetIdadeExt(Dt, DataBase:TDateTime): String ;
var
  i, y, m : integer ;
  r : string ;
begin
  if dt = 0 then begin
    r := '';
    exit;
  end;
  i := Data_GetIdadeMes(dt, Database);
  y := i div 12 ;
  m := i - Trunc((y * 12));
  case y of
    0 : r := '0 anos ';
    1 : r := inttostr(y) + ' ano ';
    2..200 : r := inttostr(y) + ' anos ';
  end;
  case m of
    1 : r := r + 'e ' + inttostr(m) + ' mes ';
    2..200 : r := r + 'e ' + inttostr(m) + ' meses ';
  end;
  result :=  r ;
end;

Function Data_Format ( Format : String ; Dt : TDateTime ) : String ;
Begin
  try
    result := FormatDAteTime ( Format, Dt ) ;
    if (result = '30/12/1899') or (result = '12/30/1899') then
      result := '' ;
  except
    result := '' ;
  end;
End ;

function Data_GetFileDate(Arquivo: String): TDateTime;
var
  FHandle: integer;
begin
  FHandle := FileOpen(Arquivo, 0);
  try
    Result := FileDateToDateTime(FileGetDate(FHandle));
  finally
    FileClose(FHandle);
  end;
end;


Function Data_Subtrai1mes(Dt : TDateTime) : TDateTime;
var
  dr : tDatetime;
begin
  dr := Dt - 27;
 while (StrToInt(FormatDateTime('dd', dr)) <> StrToInt(FormatDateTime('dd', Dt)))  do
   dr := dr -1 ;
 result := dr;
end;

Function Data_Soma1mes(Dt : TDateTime) : TDateTime;
var
  dr : tDatetime;
begin
  dr := Dt + 27;
 while (StrToInt(FormatDateTime('dd', dr)) <> StrToInt(FormatDateTime('dd', Dt)))  do
   dr := dr + 1 ;
 result := dr;
end;

Function Data_SubtraiMeses(Dt : TDateTime ; Mes : integer) : TDateTime;
var
 i : integer;
begin
  for i := 1 to Mes do
  begin
  Dt := Data_Subtrai1mes(dt);
  end;
  result := dt;
end;


end.




