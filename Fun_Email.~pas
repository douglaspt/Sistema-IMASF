unit Fun_Email;

interface
uses forms, IniFiles, Windows;


function EnviaEmail(destino, assunto, msg, anexo : String) : Boolean; Export ;
function EnviaEmail5Anexos(destino, ccopia, assunto, msg, anexo1, anexo2, anexo3, anexo4, anexo5 : String) : Boolean; Export ;

implementation
uses Dlg_Mensagem;

//função para enviar e-mail simples com somente um anexo
function EnviaEmail(destino, assunto, msg, anexo : String) : Boolean;
var
  Data: TInifile;
begin
  try
    DeleteFile('C:\Sistemas\Anexos\Arquivo.ini');
    Data := TIniFile.Create('C:\Sistemas\Anexos\Arquivo.ini'); //Nome do meu arquivo INI que será criado
    Data.WriteString('Destino', 'conteudo', destino);
    Data.WriteString('Assunto', 'conteudo', assunto);
    Data.WriteString('Mensagem', 'conteudo', msg);
    Data.WriteString('Anexo1', 'conteudo', anexo);
    Data.WriteString('Retorno', 'conteudo', '0'); // 0 --gerado - 1 ok - 2 erro
    Data.Free;
    Application.ProcessMessages;
    WinExec('C:\Sistemas\SEnviaEmail.exe', SW_NORMAL);
    Application.ProcessMessages;
    Sleep(3000);
    Result := true;
  except
    Result := false;
  end;
end;

//função para enviar e-mail com 5 anexos
function EnviaEmail5Anexos(destino, ccopia, assunto, msg, anexo1, anexo2, anexo3, anexo4, anexo5 : String) : Boolean;
var
  Data: TInifile;
begin
  try
    DeleteFile('C:\Sistemas\Anexos\Arquivo.ini');
    Data := TIniFile.Create('C:\Sistemas\Anexos\Arquivo.ini'); //Nome do meu arquivo INI que será criado
    Data.WriteString('Destino', 'conteudo', destino);
    Data.WriteString('CCopia', 'conteudo', ccopia);
    Data.WriteString('Assunto', 'conteudo', assunto);
    Data.WriteString('Mensagem', 'conteudo', msg);
    if anexo1 <> '' then
      Data.WriteString('Anexo1', 'conteudo', anexo1);
    if anexo2 <> '' then
      Data.WriteString('Anexo2', 'conteudo', anexo2);
    if anexo3 <> '' then
      Data.WriteString('Anexo3', 'conteudo', anexo3);
    if anexo4 <> '' then
      Data.WriteString('Anexo4', 'conteudo', anexo4);
    if anexo5 <> '' then
      Data.WriteString('Anexo5', 'conteudo', anexo5);
    Data.WriteString('Retorno', 'conteudo', '0'); // 0 --gerado - 1 ok - 2 erro
    Data.Free;
    Application.ProcessMessages;
    WinExec('C:\Sistemas\SEnviaEmail.exe', SW_NORMAL);
    Application.ProcessMessages;
    Sleep(3000);
    Result := true;
  except
    Result := false;
  end;
end;


end.
