unit Fun_Beneficiario ;

interface
uses forms, dialogs, db, dbtables;


function FormatarCarteirinha(c : string): string ;                   export ;
function MontarCarteirinha(emp, pla, ins, tit : string ): string ;   export ;
function SequenciaTitularidade(inscricao:string): string;            export ;
function ADM_critica_carteiravalidade(cod_tiposegurado, cod_formaadm,
cod_grauparent, dtnascim_ben : string): string;                      export ;
function ADM_ver_beneficiarioCadastrado(inscricao_ben, nome_ben :
string; frm:tform): boolean ;                                        export ;
function ADM_GeraDigMatricula(U, V : String): String;                export ;
function ADM_VerCarencia(cod_beneficiario : string): boolean ;       export ;
function ADM_VerDevolucao(cod_beneficiario : string): boolean ;      export ;
function GetCodBeneficiario(inscricao, titulacartei:string): string; export ;
function Ben_AlteraSituacao(cod_beneficiario, inscricao, titularidade,
Fdtsituacao, Fsituacao, wCod_Sit_Old, cod_ocorrenciaEdital : string): boolean; export ;
function Ben_AlteraSituacaoHistorico(cod_beneficiario, inscricao, titularidade,
Fdtsituacao, Fsituacao, wCod_Sit_Old, cod_ocorrenciaEdital : string): boolean; export ;
function Ben_AlteraPlano(plano, dtplano, inscricao, titulacartei, cod_beneficiario,
cod_ocorrenciaEdital : string; alteraDependentes : boolean): boolean;          export ;
function Ben_AlteraPlanoPagto(planoPagto, inscricao, titulacartei, cod_beneficiario, cod_ocorrenciaEdital, Fstatus, dtPlanoPagto : string; alteraDependentes : boolean) : boolean; export;
function Ben_GeraHistorico(FCod_Usuario, Fcod_TelaSistema, inscricao_ben,
titula, cod_beneficiario : String): boolean;                         export ;
function Ben_GeraTitularidadeCarteira(inscricao_ben: String;
cod_tipodependente : Integer): String;                               export ;
function Ben_AlteraTipoDependente(cod_beneficiario, inscricao_ben, titulacartei_ben,
cod_tipodependente, dtSituacao_age, cod_ocorrenciaEdital : String): Boolean; export ;
function Set_OcorrenciaEdital(cod_beneficiario, inscricao_ben, titulacartei_ben,
cod_ocorrenciaEdital, dtSituacao_age, dtReferencia_hoe : String): Boolean; export ;
function Ben_CriticaDependente(cod_grauparent, cod_plano, cod_tipodependente,
inscricao_ben, cod_estfisico : String; idade_ben, status : integer; dtinscricao_ben: TDateTime; frm:Tform): Boolean; export;
function CalculaDigito(cod_empresafolha, matricula : String) : integer; export;
//function Ben_GetNomeByCodBeneficiario(cod : integer): String; export;

implementation
uses Fun_Str, Fun_DB, sysutils, Dlg_Mensagem, Fun_Acesso, Constantes, Fun_Desconto ;

function FormatarCarteirinha(c : string): string ;
begin
  if Length(c) = 10 then
    result := copy(c,1,1) + '.' + copy(c,2,1) + '.' + copy(c,3, 5) + '.' + copy(c,8,2) + '-' + copy(c, 10,1);
  if Length(c) = 11 then 
    result := copy(c,1,1) + '.' + copy(c,3,1) + '.' + copy(c,4, 5) + '.' + copy(c,9,2) + '-' + copy(c, 11,1);
end;

function MontarCarteirinha(emp, pla, ins, tit : string ): string ;
var
  dig : string ;
begin
  if (emp = '') or (pla = '') or (ins = '') or (tit = '') then
    result := ''
  else begin
//    dig := STR_GeraDigito11(emp + pla + ins + tit + dig) ;
    dig := STR_GeraDigito11(copy(emp,1,1) + pla + STR_RightAlign(ins,#48,5) + STR_RightAlign(tit,#48,2) ) ;
    result := emp + pla + STR_RightAlign(ins,#48,5) + STR_RightAlign(tit,#48,2) + dig ;
  end;
end;

function GetCodBeneficiario(inscricao, titulacartei:string): string;
begin
  if DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
  inscricao+' and titulacartei_ben = '+titulacartei ) > 0 then
    result := Tab.Fields[0].AsString
  else
    result := '1' ;
end;

function SequenciaTitularidade(inscricao:string): string;
begin
  if DB_OpenSQL('select max(titularidade_ben)+1 from tbl_beneficiario where inscricao_ben = '+
  inscricao ) > 0 then
    result := Tab.Fields[0].AsString
  else
    result := '1' ;
end;

function ADM_critica_carteiravalidade(cod_tiposegurado, cod_formaadm, cod_grauparent, dtnascim_ben : string): string;
var
 Fdia : integer;
begin
  if (DB_OpenSQL('exec spc_adm_critica_carteiravalidade '+cod_tiposegurado+', '+
  cod_formaadm+', '+cod_grauparent+', '''+dtnascim_ben+'''') > 0) and
  (Tab.Fields[0].AsString <> '') then begin
    if strtoint(copy(dtnascim_ben,4,2)) = 1 then
      Fdia := 1
    else
      Fdia := strtoint(copy(dtnascim_ben,4,2))-1;
//    result := formatdatetime('dd/mm/yyyy',Tab.Fields[0].AsDateTime)
    result := inttostr(Fdia)+'/'+copy(Tab.Fields[0].AsString,4,2)+'/'+copy(Tab.Fields[0].AsString,7,4);
  end else
    result := '31/12/2999' ;
  DB_ClearSQL;
end;

function ADM_ver_beneficiarioCadastrado(inscricao_ben, nome_ben : string; frm:tform): boolean ;
begin
  result := false ;
  if DB_OpenSQL('select nome_ben, titulacartei_ben, inscricao_ben from tbl_beneficiario where '+
  ' nome_ben = '''+nome_ben+'''') > 0 then begin
    if Tab.FieldByName('titulacartei_ben').AsInteger = 0 then
      SHOWMESSAGE('Nome ja cadastrado no Cadastro de Segurados !');
    if  (Tab.FieldByName('titulacartei_ben').AsInteger > 0)
    and (Tab.FieldByName('inscricao_ben').AsString = inscricao_ben) then
      SHOWMESSAGE('Nome já Cadastrado para esta inscrição !');
    if  (Tab.FieldByName('titulacartei_ben').AsInteger > 0)
    and (Tab.FieldByName('inscricao_ben').AsString <> inscricao_ben) then
      SHOWMESSAGE('Nome já Cadastrado no Cadastro de Dependentes !');
    result := true ;
  end;
end;

function ADM_GeraDigMatricula(U, V : String): String;
var
  i, r : integer ;
  t, p : string ;
const
  pm = '87432' ;               //Peso da Matrícula
  pu = '32' ;                   //Peso do Usuário
  f = '9' ;                     //Peso Fixo
begin
  U := STR_AddZeros(U, 2) ;
  V := STR_AddZeros(V, 5) ;
  T := U + F + V ;
  P := PU+ F + PM;
  R := 0 ;
  for i := 1 to 8 do
    R := R + StrToInt(T[i]) * StrToInt(P[i]) ;
  i := R MOD 10 ;
  if i <> 0 then i := 10 - i ;
    Result := IntToStr( i );
end;

function ADM_VerCarencia(cod_beneficiario : string): boolean ;
begin
  DB_OpenSql('exec spc_cons_adm_maiorcarencia '+cod_beneficiario);
  result := Tab.Fields[0].AsString <> '' ;
  DB_ClearSQL;
end;

function ADM_VerDevolucao(cod_beneficiario : string): boolean ;
begin
  DB_OpenSql('exec spc_cons_adm_carteiradevolucao '+cod_beneficiario);
  result := (Tab.Fieldbyname('dtdevolucao_cdv').AsString <> '')
  and (Tab.Fieldbyname('dtdevolucao_cdv').AsDateTime <= date)
  and (Tab.Fieldbyname('dtdevolvido_cdv').AsString = '') ;
  DB_ClearSQL;
end;

function Ben_GeraTitularidadeCarteira(inscricao_ben: String; cod_tipodependente : Integer): String;
begin
  // Busca o ultimo código da Sequencia de Dependencia
  try
    if (cod_tipodependente <> 2) and (cod_tipodependente <> 0) then begin
      result:='select max(titulacartei_ben)+1 from tbl_beneficiario where inscricao_ben = '+inscricao_ben+
      ' and titulacartei_ben < 50';
    end;
    if cod_tipodependente >= 2 then
      result:='select max(titulacartei_ben)+1 from tbl_beneficiario where inscricao_ben = '+inscricao_ben;
    DB_OpenSql(result);
    if (cod_tipodependente >= 2) and (Tab.Fields[0].AsInteger < 50) then
      result := '50'
    else
      result := Tab.Fields[0].AsString ;
  except
    result := 'erro';
  end;      
end;

function Ben_GeraHistorico(FCod_Usuario, Fcod_TelaSistema, inscricao_ben, titula, cod_beneficiario : String): boolean;
begin
  if STR_StrToInt(titula) = 0 then
    result := DB_ExecSQLParams('insert into tbl_histbeneficiario (cod_usuario, cod_beneficiario, dtalteracao_hsb, cod_telasistema, computador_hsb) '+
    ' select '+FCod_Usuario+', cod_beneficiario, getdate(), '+Fcod_TelaSistema+', '''+Acs_GetComputerName+''''+
    ' from tbl_beneficiario where inscricao_ben = '+inscricao_ben, false)
  else
    result := DB_ExecSQLParams('insert into tbl_histbeneficiario (cod_usuario, cod_beneficiario, dtalteracao_hsb, cod_telasistema) values ('+
    FCod_Usuario+', '+cod_beneficiario+', getdate(), '+Fcod_TelaSistema+')', false);
end;

function Ben_AlteraSituacaoHistorico(cod_beneficiario, inscricao, titularidade, Fdtsituacao, Fsituacao, wCod_Sit_Old, cod_ocorrenciaEdital : string): boolean;
begin
  // VERIFICA SE É TITULAR E NÃO CANCELADO, altera a situção de todos os beneficiarios (segurados e dependentes normais)
  if (str_strToInt(titularidade) = 0) and
  (DB_OpenSql('select tipo_sit from tbl_sitbeneficiario where tipo_sit < 2 and cod_sitbeneficiario = '+wCod_Sit_Old)>0) then
  begin
    if DB_OpenSQL('select h.cod_beneficiario from tbl_histsitbeneficiario h, tbl_beneficiario b '+
    ' where h.cod_beneficiario = b.cod_beneficiario and b.inscricao_ben = '+
    inscricao+' and b.titulacartei_ben = '+titularidade) > 0 then
      result := DB_ExecSQLParams('update tbl_histsitbeneficiario set dtfinal_hsb = '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
      'from tbl_beneficiario b, tbl_sitbeneficiario s where tbl_histsitbeneficiario.cod_beneficiario = b.cod_beneficiario'+
      ' and s.cod_sitbeneficiario = b.cod_sitbeneficiario '+
      ' and b.inscricao_ben = '+inscricao+' and dtfinal_hsb is null', false);
    if not result then exit;
    result := DB_ExecSQLParams('insert into tbl_histsitbeneficiario '+
    '(cod_beneficiario, cod_sitbeneficiario, dtfinal_hsb, dtsistema_hsb, dtinicial_hsb)'+
    'select cod_beneficiario, '+Fsituacao+', null, getdate(), '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
    ' from tbl_beneficiario b, tbl_sitbeneficiario s where inscricao_ben = '+inscricao+
    ' and s.cod_sitbeneficiario = b.cod_sitbeneficiario ', false);
    if not result then exit;
    result := DB_ExecSQLParams('update tbl_beneficiario set cod_sitbeneficiario = '+
    Fsituacao+', dtsituacao_ben = '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
    ' from tbl_sitbeneficiario s '+
    ' where s.cod_sitbeneficiario = tbl_beneficiario.cod_sitbeneficiario '+
    ' and inscricao_ben = '+inscricao+' and s.tipo_sit < 2', false);
  end else begin // SE NAO FOR TITULAR OU TITULAR CANCELADO, somente altera a situação de um único beneficiario
    if DB_OpenSQL('select h.cod_beneficiario from tbl_histsitbeneficiario h, tbl_beneficiario b where h.cod_beneficiario = b.cod_beneficiario and b.cod_beneficiario = '+cod_beneficiario) > 0 then
      result := DB_ExecSQLParams('update tbl_histsitbeneficiario set dtfinal_hsb = '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
      'from tbl_beneficiario b where tbl_histsitbeneficiario.cod_beneficiario = '+
      'b.cod_beneficiario and b.cod_beneficiario = '+cod_beneficiario+' and dtfinal_hsb is null', false);
    if not result then exit;

    result := DB_ExecSQLParams('insert into tbl_histsitbeneficiario '+
    '(cod_beneficiario, cod_sitbeneficiario, dtfinal_hsb, dtsistema_hsb, dtinicial_hsb)'+
    'select cod_beneficiario, '+Fsituacao+', null, getdate(), '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
    ' from tbl_beneficiario where cod_beneficiario = '+cod_beneficiario, false);
  end;
end;

function Ben_AlteraSituacao(cod_beneficiario, inscricao, titularidade, Fdtsituacao, Fsituacao, wCod_Sit_Old, cod_ocorrenciaEdital : string): boolean;
begin
  result := Set_OcorrenciaEdital(cod_beneficiario, inscricao, titularidade, cod_ocorrenciaEdital, Fdtsituacao, Get_MesReferenciaFolha('01/mm/yyyy'));
  if not result then exit;
  result := DB_ExecSQLParams('update tbl_beneficiario set cod_sitbeneficiario = '+
  Fsituacao+', dtsituacao_ben = '+DB_FormatDataSQL(Fdtsituacao, ftDate)+
  ' from tbl_sitbeneficiario s '+
  ' where s.cod_sitbeneficiario = tbl_beneficiario.cod_sitbeneficiario '+
  ' and cod_beneficiario = '+cod_beneficiario, false);
  if result then
    result := Ben_AlteraSituacaoHistorico(cod_beneficiario, inscricao, titularidade, Fdtsituacao, Fsituacao, wCod_Sit_Old, cod_ocorrenciaEdital);
end;

function Ben_AlteraPlano(plano, dtplano, inscricao, titulacartei, cod_beneficiario,
cod_ocorrenciaEdital : string; alteraDependentes : boolean): boolean;
begin
  if (STR_StrToInt(titulacartei) = 0) and (alteraDependentes) then
    result := DB_ExecSQLParams('update tbl_beneficiario set cod_plano = '+plano+', dtplano_ben = '+
    DB_FormatDataSQL(dtplano, ftDate)+' from tbl_sitbeneficiario s '+
    ' where s.cod_sitbeneficiario = tbl_beneficiario.cod_sitbeneficiario and inscricao_ben = '+
    inscricao+' and titulacartei_ben < 50 and s.tipo_sit < 2', false)
  else
    result := DB_ExecSQLParams('update tbl_beneficiario set cod_plano = '+plano+', dtplano_ben = '+
    DB_FormatDataSQL(dtplano, ftDate)+' from tbl_sitbeneficiario s '+
    ' where s.cod_sitbeneficiario = tbl_beneficiario.cod_sitbeneficiario and inscricao_ben = '+
    inscricao+' and titulacartei_ben = '+titulacartei+' and s.tipo_sit < 2', false);
  if not result then exit ;
  result := Set_OcorrenciaEdital(cod_beneficiario, inscricao, titulacartei, cod_ocorrenciaEdital, dtplano, Get_MesReferenciaFolha('01/mm/yyyy'));
end;

function Ben_AlteraPlanoPagto(planoPagto, inscricao, titulacartei, cod_beneficiario, cod_ocorrenciaEdital, Fstatus, dtPlanoPagto : string; alteraDependentes : boolean) : boolean;
begin
  if (STR_StrToInt(Fstatus) = 0)  then
  begin
    if (STR_StrToInt(titulacartei) = 0) and (alteraDependentes) then
      result :=  DB_ExecSQLParams('insert into tbl_beneficiarioPlanoPagtoEspecial  '+
      ' select cod_beneficiario, '+planoPagto+', '+DB_FormatDataSQL(dtPlanoPagto, ftDate)+', null'+
      ' from tbl_beneficiario b, tbl_sitbeneficiario s where s.cod_sitbeneficiario = b.cod_sitbeneficiario'+
      ' and inscricao_ben = '+inscricao+' and titulacartei_ben < 50 and s.tipo_sit < 2' , false)
    else
      result := DB_ExecSQLParams('insert into tbl_beneficiarioPlanoPagtoEspecial (cod_beneficiario, cod_planoPagto, dtplanoPagto) values ('+
      cod_beneficiario+', '+planoPagto+','+DB_FormatDataSQL(dtPlanoPagto, ftDate)+')', false);
  end
  else
  begin
    if (STR_StrToInt(titulacartei) = 0) and (alteraDependentes) then
      result :=  DB_ExecSQLParams('update tbl_beneficiarioPlanoPagtoEspecial set cod_planoPagto = '+planoPagto+
      ' , dtplanoPagto = '+DB_FormatDataSQL(dtPlanoPagto, ftDate)+
      ' from tbl_beneficiario b, tbl_sitbeneficiario s where tbl_beneficiarioPlanoPagtoEspecial.cod_beneficiario = b.cod_beneficiario'+
      ' and s.cod_sitbeneficiario = b.cod_sitbeneficiario and inscricao_ben = '+inscricao+
      ' and titulacartei_ben < 50 and s.tipo_sit < 2',false)
    else
      Result := DB_ExecSQLParams('update tbl_beneficiarioPlanoPagtoEspecial set cod_planoPagto = '+planoPagto+
      ', dtplanoPagto = '+DB_FormatDataSQL(dtPlanoPagto, ftDate)+' where cod_beneficiario = '+cod_beneficiario, false);
  end;

end;

function Ben_AlteraTipoDependente(cod_beneficiario, inscricao_ben, titulacartei_ben,
cod_tipodependente, dtSituacao_age, cod_ocorrenciaEdital : String): Boolean;
begin
  if STR_StrToInt(titulacartei_ben) = 0 then begin
    result := False;
    EscreveLog(LOG_ERRO, 'ESTA ROTINA SÓ FUNCIONA PARA DEPENDENTES');
    exit;
  end;
  result := DB_ExecSQLParams('UPDATE tbl_beneficiario SET cod_tipodependente = '+cod_tipodependente+
  ', dtsituacao_ben = '+DB_FormatDataSQL(dtSituacao_age, ftDate)+
  ', titulacartei_ben = '+Ben_GeraTitularidadeCarteira(inscricao_ben, strToINt(cod_tipodependente))+
  ' WHERE cod_beneficiario = '+cod_beneficiario, false);
  if not result then exit ;
  result := DB_ExecSQLParams('UPDATE tbl_dependente SET dtrenovacao_dep = '''+'12/31/2999'+''', dtlimite_dep = '''+'12/31/2999'+''''+
  ' WHERE cod_beneficiario = '+cod_beneficiario, false);
 { if not result then exit ;
  if DB_OpenSQL('select cod_beneficiario from tbl_histtipdepend where cod_beneficiario = '+cod_beneficiario) > 0 then
    result := DB_ExecSQLParams('update tbl_histtipdepend set dtfinal_hdp = getdate()'+
    ' where cod_beneficiario = '+cod_beneficiario+' and dtfinal_hdp is null', false); }
  if not result then exit ;
  result := Set_OcorrenciaEdital(cod_beneficiario, inscricao_ben, titulacartei_ben, cod_ocorrenciaEdital, dtSituacao_age, Get_MesReferenciaFolha('01/mm/yyyy'));
end;


function Set_OcorrenciaEdital(cod_beneficiario, inscricao_ben, titulacartei_ben, cod_ocorrenciaEdital, dtSituacao_age, dtReferencia_hoe : String): Boolean;
begin
  if DB_OpenSQL('select * from tbl_histOcorrenciaEdital where cod_beneficiario = '+cod_beneficiario+
  ' and cod_ocorrenciaEdital = '+cod_ocorrenciaEdital+' and dtOcorrencia_hoe = '+DB_FormatDataSQL(dtSituacao_age, ftdate)) <= 0 then
  begin
    if STR_StrToInt(titulacartei_ben) > 0 then
      result := DB_ExecSQLParams('insert into tbl_histOcorrenciaEdital(cod_beneficiario, cod_ocorrenciaEdital, dtOcorrencia_hoe, dtReferencia_hoe) values ('+cod_beneficiario+','+
      cod_ocorrenciaEdital+','+DB_FormatDataSQL(dtSituacao_age, ftdate)+','+DB_FormatDataSQL(dtReferencia_hoe, ftdate)+')', false)
    else begin
      if (STR_StrToInt(cod_ocorrenciaEdital) > 2000) and (STR_StrToInt(cod_ocorrenciaEdital) < 3000) then //Para Alteração de Planos não se deve gerar ocorrencia de edital para os assistidos
        result := DB_ExecSQLParams('insert into tbl_histOcorrenciaEdital(cod_beneficiario, cod_ocorrenciaEdital, dtOcorrencia_hoe, dtReferencia_hoe)'+
        'select cod_beneficiario, '+cod_ocorrenciaEdital+', '+DB_FormatDataSQL(dtSituacao_age, ftdate)+', '+
        DB_FormatDataSQL(dtReferencia_hoe, ftdate)+
        ' from tbl_beneficiario b, tbl_sitbeneficiario s where b.cod_sitbeneficiario = s.cod_sitbeneficiario and inscricao_ben = '+
        inscricao_ben+' and tipo_sit < 2 and b.titulacartei_ben < 50', false)
      else
        result := DB_ExecSQLParams('insert into tbl_histOcorrenciaEdital(cod_beneficiario, cod_ocorrenciaEdital, dtOcorrencia_hoe, dtReferencia_hoe)'+
        'select cod_beneficiario, '+cod_ocorrenciaEdital+', '+DB_FormatDataSQL(dtSituacao_age, ftdate)+', '+
        DB_FormatDataSQL(dtReferencia_hoe, ftdate)+
        ' from tbl_beneficiario b, tbl_sitbeneficiario s where b.cod_sitbeneficiario = s.cod_sitbeneficiario and inscricao_ben = '+
        inscricao_ben+' and tipo_sit < 2', false);
    end;
  end;
end;

function Ben_CriticaDependente(cod_grauparent, cod_plano, cod_tipodependente, inscricao_ben,  cod_estfisico  : String; idade_ben ,status : integer; dtinscricao_ben: TDateTime; frm:Tform): Boolean;
begin
  result := true;

  if (dtinscricao_ben >= StrToDate('01/09/2021')) then
  begin
   { if (StrtoInt(cod_tipodependente) >= 2) then
    begin
      Dlg_Alerta('Inscrição para novos somente como Dependente!', frm);
      result := false;
      Exit;
    end;
    if  ((cod_grauparent <> '1') and (cod_grauparent <> '2') and (cod_grauparent <> '3')
      and (cod_grauparent <> '4') and (cod_grauparent <> '5') and (cod_grauparent <> '10')) then
    begin
      Dlg_Alerta('Grau de Parentesco não permitido para novas inclusões!', frm);
      result := false;
      Exit;
    end;  }
    if  ((cod_grauparent = '3') and (cod_grauparent = '4') and (cod_grauparent = '5') and (cod_grauparent = '10') and (cod_estfisico = '1') and (idade_ben >= 18)) then
    begin
      Dlg_Alerta('Idade não permitida para este Grau de Parentesco!', frm);
      result := false;
      Exit;
    end;
  end
  else
  begin
    if status = 1 then
    begin
      if DB_OpenSQL('select b.cod_beneficiario from tbl_beneficiario b, tbl_dependente d '+
      ' where b.cod_beneficiario = d.cod_beneficiario and inscricao_ben = '+inscricao_ben+' and cod_grauparent <> 6 and cod_tipodependente = 1') > 0 then
      begin
        if (cod_tipodependente = '1') and (cod_grauparent = '6') and (cod_plano <> '1') and (cod_plano <> '6') then begin
          Dlg_Alerta('Pai ou Mãe não podem ser inscritos como Dependente Normal pois ja existem Dependentes Cadastrados!', frm);
          result := false;
          Exit;
        end;
      end;
      if DB_OpenSQL('select b.cod_beneficiario from tbl_beneficiario b, tbl_dependente d, tbl_sitbeneficiario s '+
      ' where b.cod_beneficiario = d.cod_beneficiario and b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
      ' and inscricao_ben = '+inscricao_ben+' and cod_grauparent = 6 and cod_tipodependente = 1 and s.tipo_sit < 2') > 0 then
      begin
        if (cod_tipodependente = '1') and (cod_plano <> '1') and (cod_plano <> '6') then begin
          Dlg_Alerta('Não pode ser inscrito um Dependente Normal pois ja existe um Pai ou Mãe como Dependente Normal!', frm);
          result := false;
          Exit;
        end;
      end;
    end
    else
    begin
      //Verificar mais regras que o sistema não deve permitir o cadastro de dependentes, Ex. Bloquear a Inscrição de Dependente Normal maior de 18 anos
      if (cod_tipodependente = '1') and (cod_estfisico = '1') and (idade_ben >= 21) and (cod_plano <> '1') and (cod_plano <> '6') and ((cod_grauparent = '3')
      or (cod_grauparent = '4') or (cod_grauparent = '5') or (cod_grauparent = '10') or (cod_grauparent = '25'))  then begin
        Dlg_Alerta('Maiores de 18 anos desse Grau de Parentesco so Podem ser Inscrito como Inválido ou Assistido!', frm);
        result := false;
        Exit;
      end;
      if (cod_tipodependente = '1') and (cod_plano <> '1') and (cod_plano <> '6') and ((cod_grauparent = '7') or (cod_grauparent = '8') or (cod_grauparent = '9') or
      (cod_grauparent = '11') or (cod_grauparent = '12') or (cod_grauparent = '13') or (cod_grauparent = '14') or
      (cod_grauparent = '15') or (cod_grauparent = '16') or (cod_grauparent = '17') or (cod_grauparent = '18') or
      (cod_grauparent = '19') or (cod_grauparent = '20') or (cod_grauparent = '21') or (cod_grauparent = '22') or
      (cod_grauparent = '23') or (cod_grauparent = '24'))  then begin
        Dlg_Alerta('Esse Grau de Parentesco so é Permitido para Cadastro de Assistidos!', frm);
        result := false;
        Exit;
      end;
    end;
  end;
end;

function CalculaDigito(cod_empresafolha, matricula : String) : integer; export;
var
  soma : integer;
begin
  if cod_empresafolha = '' then
    cod_empresafolha := '00';
  if matricula = '' then
    matricula := '00000';
  if StrToInt(matricula) < 100000 then
  begin
    soma := (StrToInt(Copy(STR_AddZeros(cod_empresafolha,2),1,1)) * 3);
    soma := soma + (StrToInt(Copy(STR_AddZeros(cod_empresafolha,2),2,1)) * 2);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,5),1,1)) * 8);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,5),2,1)) * 7);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,5),3,1)) * 4);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,5),4,1)) * 3);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,5),5,1)) * 2) + 81;
    if soma mod 10 = 0 then
      Result := 0
    else
      Result := (10 - (soma mod 10));
  end
  else
  begin
    soma := (StrToInt(Copy(STR_AddZeros(cod_empresafolha,2),1,1)) * 4);
    soma := soma + (StrToInt(Copy(STR_AddZeros(cod_empresafolha,2),2,1)) * 3);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),1,1)) * 9);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),2,1)) * 8);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),3,1)) * 7);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),4,1)) * 4);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),5,1)) * 3);
    soma := soma + (StrToInt(Copy(STR_AddZeros(matricula,6),6,1)) * 2) + 18;
    if soma mod 10 = 0 then
      Result := 0
    else
      Result := (10 - (soma mod 10));
  end;
end;


end.

