unit Fun_Numero ;

interface

Uses
     SysUtils, Windows, Math ;

function Arredondar(Valor: Double; Dec: Integer): Double; Export;     
Function Num_JuroComposto( i : double; n : integer ): Double; Export;


implementation

function Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
  Numero1,
  Numero2,
  Numero3: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;


Function Num_JuroComposto( i : double; n : integer ): Double;
begin
  if i <> 0 then
    i := i / 100
  else
    i := 0.00000001;  
  result := (i*Power((1+i), n)) / (Power((1+i), n)-1);
end;

end.

