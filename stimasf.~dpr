program stimasf;

uses
  Forms,
  Windows,
  Dialogs,
  Men_Principal in 'Men_Principal.pas' {Frm_Men_Principal},
  Bas_TelaPadrao in 'Bas_TelaPadrao.pas' {Frm_Bas_TelaPadrao},
  Bas_Cadastro in 'Bas_Cadastro.pas' {Frm_Bas_Cadastro},
  Dlg_Mensagem in 'Dlg_Mensagem.pas' {Frm_Bas_CxMensagem},
  dtm_principal in 'dtm_principal.pas' {Fdt_principal: TDataModule},
  Fun_ConsCadastro in 'Fun_ConsCadastro.pas' {Frm_Fun_ConsCadastro},
  Fun_Medico in 'Fun_Medico.pas',
  dtm_principal2 in 'dtm_principal2.pas' {fdt_principal2: TDataModule},
  Imp_Basico in 'Imp_Basico.pas' {Frm_Imp_Basico},
  Dlg_EnviaMensagem in 'Dlg_EnviaMensagem.pas' {Frm_Dlg_EnviaMensagem},
  Dlg_Comunicador in 'Dlg_Comunicador.pas' {Frm_Dlg_Comunicador},
  dtm_principal4 in 'dtm_principal4.pas' {fdt_principal4: TDataModule},
  dtm_principal5 in 'dtm_principal5.pas' {fdt_principal5: TDataModule},
  Fun_Contabil in 'Fun_Contabil.pas',
  dtm_OLAP in 'dtm_OLAP.pas' {fdt_OLAP: TDataModule},
  Bas_Impressao in 'Bas_Impressao.pas' {Frm_Bas_Impressao},
  Bas_Preview in 'Bas_Preview.pas' {Frm_Bas_Preview},
  Tmp_1 in 'Tmp_1.pas' {Frm_Tmp1},
  Tmp_3 in 'Tmp_3.pas' {Frm_Tmp3},
  Tmp_2 in 'Tmp_2.pas' {Frm_Tmp2},
  Rel_3048 in 'Rel_3048.pas' {Frm_Rel_3048},
  Fun_ConsCEP in 'Fun_ConsCEP.pas' {Frm_Fun_ConsCEP},
  Dlg_ImprimeCarta in 'Dlg_ImprimeCarta.pas' {Frm_Dlg_imprimecarta},
  Dlg_ConfigAgox in 'Dlg_ConfigAgox.pas' {Frm_ConfigArgox},
  dtm_principal3 in 'dtm_principal3.pas' {fdt_principal3: TDataModule},
  dtm_principal6 in 'dtm_principal6.pas' {fdt_principal6: TDataModule};

{$R *.RES}

const NombreMutex='Programa IMASF';
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
    Showmessage('ATENÇÃO : O SISTEMA NÃO PODE SER EXECUTADO DUAS VEZES !');
    halt;
  end;
  Application.initialize;
  Application.CreateForm(TFdt_principal, Fdt_principal);
  Application.CreateForm(Tfdt_principal2, fdt_principal2);
  Application.CreateForm(Tfdt_principal4, fdt_principal4);
  Application.CreateForm(TFrm_Men_Principal, Frm_Men_Principal);
  Application.CreateForm(Tfdt_principal5, fdt_principal5);
  Application.CreateForm(Tfdt_OLAP, fdt_OLAP);
  Application.CreateForm(TFrm_Bas_Preview, Frm_Bas_Preview);
  Application.CreateForm(TFrm_Bas_Impressao, Frm_Bas_Impressao);
  Application.CreateForm(TFrm_Tmp1, Frm_Tmp1);
  Application.CreateForm(TFrm_Tmp3, Frm_Tmp3);
  Application.CreateForm(TFrm_Tmp2, Frm_Tmp2);
  Application.CreateForm(TFrm_Rel_3048, Frm_Rel_3048);
  Application.CreateForm(TFrm_Fun_ConsCEP, Frm_Fun_ConsCEP);
  Application.CreateForm(TFrm_Dlg_imprimecarta, Frm_Dlg_imprimecarta);
  Application.CreateForm(Tfdt_principal3, fdt_principal3);
  Application.CreateForm(Tfdt_principal6, fdt_principal6);
  try
    Application.CreateForm(TFrm_Imp_Basico, Frm_Imp_Basico);
  except
//    Application.Minimize;
    MessageDlg('A T E N Ç Ã O !!! ERRO AO DETECTAR IMPRESSORA ! VERIFIQUE SE EXISTE ALGUMA IMPRESSORA CONECTADA AO COMPUTADOR, SE HÁ ALGUMA INSTALADA OU EM REDE, SE ESTÁ HABILITADA E FUNCIONANDO NORMALVENTE ! Não solucionando o problema contate o Departamento Técnico', mtError,
      [mbOk], 0);
    Application.Terminate;
    Exit;
  end;
  Application.CreateForm(TFrm_Bas_TelaPadrao, Frm_Bas_TelaPadrao);
  Application.CreateForm(TFrm_Fun_ConsCadastro, Frm_Fun_ConsCadastro);
  Application.CreateForm(TFrm_Dlg_Comunicador, Frm_Dlg_Comunicador);
  Application.CreateForm(TFrm_Bas_Cadastro, Frm_Bas_Cadastro);
  Application.CreateForm(TFrm_Bas_CxMensagem, Frm_Bas_CxMensagem);
  Application.CreateForm(TFrm_Dlg_imprimecarta, Frm_Dlg_imprimecarta);
  Application.CreateForm(TFrm_Dlg_EnviaMensagem, Frm_Dlg_EnviaMensagem);
  Frm_Men_Principal.Timer.Enabled := true ;
  Frm_Men_Principal.Tmr_Senha.Enabled := true ;
  Application.Run;
  CloseHandle(MiMutex);
end.


