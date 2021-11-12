unit Mov_2031;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, dbtables, db;

type
  TFrm_2031 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Tb : Tquery;
    tentativas : integer;
  public
    { Public declarations }
  end;

var
  Frm_2031: TFrm_2031;

implementation
uses Fun_DB, Fun_Acesso, Fun_Beneficiario, constantes, Fun_desconto, Fun_Data;

{$R *.DFM}

procedure TFrm_2031.Button1Click(Sender: TObject);
  procedure EscreveLogAtualizacao(descricao, codigoAntigo, codigoAlterado : String);
  begin
    EscreveLog(LOG_INFORMACAO, 'Agendamento Nº '+tb.FieldByName('cod_AgendamentoBeneficiario').asstring+
    'Alterado '+descricao+' de '+codigoAntigo+' para '+codigoAlterado+' do Beneficiário Cod.'+
    tb.FieldByName('cod_beneficiario').asstring+ ', Insc. '+tb.FieldByName('inscricao_ben').asstring+
    ' '+tb.FieldByName('titulacartei_ben').asstring);
  end;
  var
    s, wCod_planoPagto_Old, FStatus : string;
    Executado : boolean;

begin
  DB_RollBack;
  DB_BeginTrans;
  Tb := TQuery.Create(nil);
  Tb.DatabaseName := BD_Alias_DataBase ;
  Tb.sql.add('exec spc_cons_adm_AgendamentoBenefi');
  Tb.open;
  while not tb.Eof do begin
    Executado := True;
    Application.ProcessMessages;
    //Altera a Situação do Beneficiario
    if (tb.FieldByName('cod_sitBeneficiario').asstring <> '') then begin
      Executado := Ben_AlteraSituacao(tb.FieldByName('cod_beneficiario').asstring,
      tb.FieldByName('inscricao_ben').asstring, tb.FieldByName('titulacartei_ben').asstring,
      tb.FieldByName('dtSituacao_age').asstring, tb.FieldByName('cod_sitBeneficiario').asstring,
      tb.FieldByName('cod_sitBeneficiarioAnt').asstring, tb.FieldByName('cod_ocorrenciaEdital').asstring);
      EscreveLogAtualizacao('a Situação', tb.FieldByName('cod_sitBeneficiarioAnt').asstring, tb.FieldByName('cod_sitBeneficiario').asstring);
    end;
    Application.ProcessMessages;
    //Altera o Plano do Beneficiário
    if (tb.FieldByName('cod_plano').asstring <> '') then begin
      Executado := Ben_AlteraPlano(tb.FieldByName('cod_plano').asstring, tb.FieldByName('dtSituacao_age').asstring,
      tb.FieldByName('inscricao_ben').asstring, tb.FieldByName('titulacartei_ben').asstring,
      tb.FieldByName('cod_beneficiario').asstring, tb.FieldByName('cod_ocorrenciaEdital').asstring, false);
      EscreveLogAtualizacao('o Plano', tb.FieldByName('cod_planoAnt').asstring, tb.FieldByName('cod_plano').asstring);
      if (tb.FieldByName('cod_planoPagto').asstring = '') then
        DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+tb.FieldByName('cod_beneficiario').AsString);
    end;
    Application.ProcessMessages;
    //Altera p Plano de Pagamento especial
    if (tb.FieldByName('cod_planoPagto').asstring <> '') then begin
      if DB_OpenSQL('select cod_planoPagto from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+tb.FieldByName('cod_beneficiario').asstring) > 0 then begin
        wCod_planoPagto_Old := Tab.fields[0].AsString;
        FStatus := '1';
      end else begin
        FStatus := '0';
        wCod_planoPagto_Old := '000';
      end;
      //Ben_AlteraPlanoPagto(planoPagto, inscricao, titulacartei, cod_beneficiario, cod_ocorrenciaEdital,
      //Fstatus, dtPlanoPagto : string; alteraDependentes : boolean) : boolean;

      Executado := Ben_AlteraPlanoPagto(tb.FieldByName('cod_planoPagto').asstring,
      tb.FieldByName('inscricao_ben').asstring, tb.FieldByName('titulacartei_ben').asstring,
      tb.FieldByName('cod_beneficiario').asstring,
      tb.FieldByName('cod_ocorrenciaEdital').asstring,  FStatus, tb.FieldByName('dtSituacao_age').asstring, true);
      EscreveLogAtualizacao('O Plano de Pagamento', wCod_planoPagto_Old, tb.FieldByName('cod_planoPagto').asstring);
    end;
    Application.ProcessMessages;
    //Altera o Tipo de Dependencia
    if (tb.FieldByName('cod_tipodependente').asstring <> '') then begin
      Executado := Ben_AlteraTipoDependente(tb.FieldByName('cod_beneficiario').asstring, tb.FieldByName('inscricao_ben').asstring,
      tb.FieldByName('titulacartei_ben').asstring,  tb.FieldByName('cod_tipodependente').asstring,
      tb.FieldByName('dtSituacao_age').asstring, tb.FieldByName('cod_ocorrenciaEdital').asstring);
      EscreveLogAtualizacao('a Titularidade', s, tb.FieldByName('titulacartei_ben').asstring);
    end;
    Application.ProcessMessages;
    if (Executado) then Begin
      Executado := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), tb.FieldByName('inscricao_ben').asstring, '00', '');
    end;
    Application.ProcessMessages;

    if (Executado) then
      Executado := DB_ExecSQL('update tbl_AgendamentoBeneficiario set status_age = 1 where cod_AgendamentoBeneficiario = '+
    tb.FieldByName('cod_AgendamentoBeneficiario').asstring);

//    if not (Executado) then
 //     ShowMessage(tb.FieldByName('cod_AgendamentoBeneficiario').asstring);
    tb.next;
    if not (Executado) then begin
      DB_RollBack;
//      FinalizaLog();
    EscreveLog(LOG_ERRO, 'ERRO AO EXECUTAR - Agendamento Nº '+tb.FieldByName('cod_AgendamentoBeneficiario').asstring+
    ' do Beneficiário Cod.'+tb.FieldByName('cod_beneficiario').asstring+ ', Insc. '+tb.FieldByName('inscricao_ben').asstring+
    ' '+tb.FieldByName('titulacartei_ben').asstring);
//     ShowMessage('NÃO FOI POSSÍVEL EXECUTAR OS AGENDAMENTOS');
//      exit;
    end;
  end;
  Timer1.Enabled := true ;
  DB_Commit;
  Close;
  FinalizaLog();
end;

procedure TFrm_2031.Button2Click(Sender: TObject);
begin
  DB_RollBack;
//  FinalizaLog();
end;

procedure TFrm_2031.Button3Click(Sender: TObject);
begin
  DB_Commit;
//FinalizaLog();
end;

procedure TFrm_2031.Timer1Timer(Sender: TObject);
begin
  if tentativas < 30 then begin //executa 30 vezes o agendamento
    tentativas := tentativas + 1;
    label2.Caption := 'Tentativa '+inttostr(tentativas);
    Application.ProcessMessages;
    Timer1.Enabled := false ;
    Button1.Click;
  end else
    close;
end;

procedure TFrm_2031.FormDestroy(Sender: TObject);
begin
  FinalizaLog();
end;

procedure TFrm_2031.FormShow(Sender: TObject);
begin
  IniciaLog(LOG_LOCALGRAVACAO);
  EscreveLog(LOG_INFORMACAO, 'TESTE DO Sistema de Agendamento Automático Iniciado ----------------------------');
  DB_OpenDataBase(self);
  Label1.Caption := BD_ServerName;
  tentativas := 0;
end;

end.
