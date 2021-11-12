program stConven;

uses
  Forms,
  Windows,
  Dialogs,
  Principal in 'Principal.pas' {Frm_Principal},
  Imp_Resumo in 'Imp_Resumo.pas' {Frm_Imp_Resumo},
  Dlg_NovaDigitacao in 'Dlg_NovaDigitacao.pas' {Frm_Dlg_NovaDigitacao},
  Dlg_Sobre in 'Dlg_Sobre.pas' {Frm_Dlg_Sobre},
  ValidadoresIntf in '..\..\WebServer\ValidadoresIntf.pas';

{$R *.RES}

const NombreMutex='Programa 1.2';
var MiMutex:Thandle;
begin
  mimutex:= CreateMutex(nil,true,NombreMutex);
  if MiMutex=0 then
  begin
    Showmessage('ERRO CRIANDO MUTEX');
    halt;
  end;
  if GetLastError=ERROR_ALREADY_EXISTS then
  begin
    Showmessage('ATENÇÃO : O PROGRAMA NÃO PODE SER EXECUTADO DUAS VEZES !');
    halt;
  end;
  Application.Initialize;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Imp_Resumo, Frm_Imp_Resumo);
  Application.CreateForm(TFrm_Dlg_NovaDigitacao, Frm_Dlg_NovaDigitacao);
  Application.CreateForm(TFrm_Dlg_Sobre, Frm_Dlg_Sobre);
  Application.Run;
end.
