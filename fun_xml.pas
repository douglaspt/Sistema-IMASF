unit Fun_XML ;

interface

Uses sysutils, shellApi, controls, forms, windows, comobj;

Const

   MAX_FIELDS    = 60 ;

Type
  TFieldsXML = record
    FName : String[50] ;
    FValue : String ;
  End ;

function XML_CriaRelatorio(frm : tform; nomeDocumentoXML : String; campos : array of TFieldsXML;imprimir:boolean): boolean;


implementation
uses Fun_Acesso, Fun_Str, constantes;

function XML_CriaRelatorio(frm : tform; nomeDocumentoXML : String; campos : array of TFieldsXML;imprimir:boolean): boolean;
  const
    extencao = '.mht';

  var
    nomearquivo, nomeArquivoDestino, registro : string ;
    Arq, Dest : TextFile;
    i : integer ;

    wordapp:olevariant;
    WordDoc : OLEVariant;

begin
  try
    result := true ;
    nomearquivo := DOC_AdmDeclaracoes+nomeDocumentoXML+extencao;
    AssignFile(Arq, nomearquivo);
    Reset (Arq);
    nomeArquivoDestino := DOC_AdmDeclaracoes+'tmp\'+nomeDocumentoXML+Acs_GetComputerName+extencao;
    AssignFile(Dest, nomeArquivoDestino);
    Rewrite(Dest);
    while not EOF(Arq) do begin
      Readln (Arq, registro);
      for I := 0 to High(campos) do
        registro := StringReplace(registro, campos[i].FName , Str_AnsiToAscii(campos[i].FValue), [rfReplaceAll, rfIgnoreCase]);
      Writeln(Dest, registro);
    end;
    closefile (Arq);
    CloseFile(Dest);
    try
      WordApp := GetActiveOleObject('Word.Application');
    except on exception do
      WordApp := CreateOleObject('Word.Application');
    end;
    wordapp.Visible:=true;
    WordDoc:=WordApp.Documents.Open(nomeArquivoDestino);
    if imprimir then
      try
        WordDoc.Print;
      except
        ShellExecute(frm.Handle, 'print', PChar(nomeArquivoDestino), nil, nil, SW_SHOW)
      end
    else
      try
        WordDoc.PrintPreview;
      except
        ShellExecute(frm.Handle, 'open', PChar(nomeArquivoDestino), nil, nil, SW_SHOW);
      end;
  except
    result := false ;
  end;

end;


end.

