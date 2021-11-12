{ Invokable interface IValidadores }

unit ValidadoresIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: AnsiString;
    FFirstName: AnsiString;
    FSalary: Double;
  published
    property LastName: AnsiString read FLastName write FLastName;
    property FirstName: AnsiString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  IValidadores = interface(IInvokable)
  ['{3B441E7B-A230-4CC2-ABDD-F674577A9D76}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
    function testConnection(): boolean; stdcall;
    function getNomeBeneficiarioByCodBeneficiario(const Value: Integer): String; stdcall;
    function getNomeBeneficiarioByInscricao(const Inscricao, Titularidade: Integer): String; stdcall;
    function getNomeConveniadoByCodConveniado(const Value: Integer): String; stdcall;
    function getNomeItemServicoByCodPadrao(const Value: Integer): String; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IValidadores));

end.
 