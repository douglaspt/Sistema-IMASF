
(******************************************************************************
Constantes utilizadas no sistema
*******************************************************************************)

unit Constantes;

interface

  Const

    {1 Mensagens  (MSG)}                                                                            
      {1.1 Mensagens de Banco de Dados   (BD)}
        {1.1.1 Mensagens de Aviso  (Ok)}
        MSG_DB_OKInsert         = 'Inclusão efetuada com sucesso' ;
        MSG_DB_OKUpdate         = 'Alteração efetuada com sucesso' ;

        {1.1.2 Mensagens de Erro   (ERR)}
        MSG_BD_ERR_KeyViolation = 'Registro já Cadastrado' ;
        MSG_DB_ERR_RecNotFound  = 'Registro não encontrado !';
        {1.1.3 Mensagens de Confirmação    (CON)}
        MSG_DB_CON_Salva        = 'Confirma Salvar ?' ;
        MSG_DB_CON_Cancela      = 'Confirma Cancelar a Operação ?' ;
        MSG_DB_CON_Exclui       = 'Confirma Excluir ?' ;
        MSG_DB_CON_SaiSistema   = 'Confirma Sair do Sistema ?' ;
      {1.2 Mensagens de Caixas de Diálogo  (DLG)}
      MSG_DLG_Confirma          = 'Confirma Operação ?' ;
      MSG_DLG_NaoAutorizado     = 'Usuário não autorizado a executar esta operação!' ;

    {2 Datas   (DAT)}
    DAT_ANOBASE             = 20 ;           // Ano verifidor "Bug Ano 2000"(< DAT_ANOBASE ano 19xx e >= DAT_ANOBASE 20xx)
    DAT_DBFormat            = 'mm/dd/yyyy' ; //Formato de Data para acesso aos Banco de Dados
    DAT_DBLongFormat        = 'mm/dd/yyyy hh:nn:ss' ;
    DAT_NoMaskFormat        = 'yyyymmdd' ;   //Formato de Data sem máscara
    DAT_LogFormat           = 'ddmmyyyyhhnnss' ;

    {3 Textos         (TXT)}
      {3.1 Títulos/Nomes    (TIT)}
      TXT_TIT_Sistema       = 'Instituto Municipal de Assistência à Saúde do Funcionalismo' ;
      TXT_TIT_SistRed       = 'IMASF' ;

    {4 Registro do Windows}
    REG_KEY_SISTEMA        = 'Software\'+TXT_TIT_SistRed ;

    {5 Valores             (VAL)}
    VAL_Float              = '###,###,##0.00' ;    // Máscara para Display de Valor Float
    VAL_DBFloat            = '#########.##' ;      // Máscara para Banco de Dados Valor Float

    {6 Banco de Dados      (BD)}
    BD_ServerName          = 'dti-sql-02';//'dti-sql-02';//'db-imasf-01' ;
    BD_Alias_DataBase      = 'bd_imasf';//'bd_imasf' ;
    DB_Alias_UserName      = 'stlogin';//'stlogin';//'sa';//'stlogin';
    BD_Alias_Password      = 'cpD1w@zphPRDdti31';//'cpD1w@zphPRDdti31';//key@sa07';//'HSl_stI@08';
    BD_Find_Equal          = 0 ;
    BD_Find_Larger         = 1 ;
    BD_Find_Small          = 2 ;
    BD_Find_Like           = 3 ;

    {7 Status de Formulário}
    FST_Normal             = 0 ;
    FST_Novo               = 1 ;
    FST_Alteracao          = 2 ;

    {8 Tipos de Validação de Campos}
    VLD_Preenchido         = 0 ;
    VLD_NumMaiorZero       = 1 ;
    VLD_DataPreenchida     = 2 ;
    VLD_CPF                = 3 ;
    VLD_DataValida         = 4 ;
    VLD_DataNascimento     = 5 ;

    {9.1 Selects pesquisas Fun_ConsCadastro}
    FSQL_Beneficiario = 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, p.nome_pla, b.processo_ben, s.nome_sit, d.nome_tdp, m.matriculaprinc_seg '+
    ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_beneficiario a, tbl_segurado m, tbl_plano p, tbl_tipodependente d '+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and a.cod_beneficiario = m.cod_beneficiario '+
    ' and b.inscricao_ben = a.inscricao_ben and b.cod_plano = p.cod_plano and b.cod_tipodependente = d.cod_tipodependente';

    {9.2 Títulos pesquisas FUn_ConsCadastro}
    FTit_Benefeciario = 'Código, Inscrição, Nome, Plano, Processo, Situação, Tip. Depend., Matrícula' ;


    {10 Tipos de Mensagens de Log}
    LOG_UTILIZACAO         = 1 ; //Informações de Utilização Normal do Sistema, ações em botões etc
    LOG_INFORMACAO         = 2 ; //Log com informações adicionais, mais detalhado que o LOG_UTILIZACAO
    LOG_IMPRESSAOQR        = 3 ; //Informações de Impressões feitas pelo Quick Report
    LOG_SQL                = 4 ; //Log dos comandos SQL executados pelo sistema
    LOG_ERRO               = 9 ; //Log com informações de erros no sistema;

    LOG_LOCALGRAVACAO      = 'P:\Logfile\';//'\\spd01\programas\Logfile\';
    LOG_LOCALGRAVACAORES   = 'C:\';

    {11 Pastas para acesso de documetos externos}
    DOC_AdmDeclaracoes     = '\\fs-imasf-01\Programas\docs\adm\declarações\';

    {12 Dados do Sistema}
    SYS_Operadores         = 'spd08, spd10'; //Operadores que dão suporte e/ou manutenção do sistema
    {13 Excessões do Sistema}
    EXP_SQLInvalido        = 'Erro na instrução SQL';

    {14 Pastas para acesso de arquivos externos}
    ARQ_Patronal           = 'W:\Patronais';

    ARQ_Relatorios         = 'C:\Sistemas\reports';
   //ARQ_Relatorios         = 'P:\reports';

    ARQ_Farmacia           = 'F:\SAF_';
    ARQ_CopiaFarmacia      = 'W:\Farmacia\dbf';
                                          
  Var

    {Parametros do Sistema}
    PAR_ChefiaMedico : String;
    PAR_ChefiaRevContas : String;
    PAR_ChefiaADM : String;
    PAR_CargoMedico : String;
    PAR_CargoRevContas : String;
    PAR_CargoADM : String;

implementation


end.
