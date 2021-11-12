unit Fun_Desconto;

interface
uses forms, sysutils, db;

function Get_MesReferenciaFolha(): String; Export ; overload;
function Get_MesReferenciaFolha(formato : String): String; overload; export;
function Get_UltimoDesconto(Cod_Usuario : Integer): Integer; export;
function Set_HistoricoDesconto(cod_descontofolha, cod_usuario,
Cod_TelaSistema, cod_tipoedicao : Integer; complemento : String): Boolean; export;
function Set_IncluirDesconto(cod_beneficiario, matricula, digito, vldesconto_adf, vljuros,
cod_tarifa, cod_empresafolha, cod_mes, ano: String; dtdesconto_flh : TdateTime; obs_flh : String;
Cod_Usuario : integer;Cod_TelaSistema : Integer): Boolean; export;
function Set_AlteraDesconto(cod_beneficiario, matricula, digito, vldesconto_adf,
cod_tarifa, cod_empresafolha, vljuros : String; dtdesconto_flh : TdateTime; cod_sitdesconto : String;
dtsitdesconto_flh : TdateTime; vlpago_flh : String; dtpagto_flh : TdateTime;
obs_flh, nguia_flh : String; Cod_Usuario : integer; cod_descontofolha : String;
Cod_TelaSistema : Integer): Boolean; export ;
function Set_AlteraParcelamento(cod_beneficiario, matricula, digito, cod_tarifa, cod_empresafolha,
obs_flh, nguia_flh : String; Cod_Usuario : integer; vldesconto_adf, cod_sitdesconto : String;
dtsitdesconto_flh : TdateTime; vlPago_flh : String; dtPagto_flh : TDateTime; cod_descontofolha,
parcelan_par, cod_mes, ano : String; Cod_TelaSistema : Integer): Boolean; export;

implementation
uses Fun_DB, Dlg_Mensagem, Fun_Str;


function Get_MesReferenciaFolha(formato : String): String;
begin
  DB_OpenSQL('select imasf.dbo.fun_somaUmMes(max(dtenvio_flh)) from tbl_loteFolhaDescontos where cod_empresafolha = 5');
  result := FormatDateTime(formato, Tab.Fields[0].AsDateTime) ;
  DB_ClearSQL;
end;

function Get_MesReferenciaFolha(): String;
begin
  result := Get_MesReferenciaFolha('mm/01/yyyy') ;
end;

function Get_UltimoDesconto(Cod_Usuario : Integer): Integer;
begin
  DB_OpenSQL('select max(cod_descontofolha) from tbl_descontofolha where cod_usuario = '+Str_IntToStr(Cod_Usuario));
  result := Tab.fields[0].asInteger;
  DB_ClearSQL;
end;


function Set_HistoricoDesconto(cod_descontofolha, cod_usuario, Cod_TelaSistema, cod_tipoedicao : Integer; complemento:string): Boolean;
begin
  result := DB_ExecSQL('insert into tbl_histdescontofolha (cod_descontofolha, dtalteracao_hdf, cod_usuario, cod_telasistema, cod_tipoedicao, complemento_hdf) '+
  ' values ('+Str_IntToStr(cod_descontofolha)+', getdate(), '+Str_IntToStr(cod_usuario)+', '+
  Str_IntToStr(Cod_TelaSistema)+ ', '+Str_IntToStr(cod_tipoedicao)+','''+complemento+''')');
end;

function Set_IncluirDesconto(cod_beneficiario, matricula, digito, vldesconto_adf, vljuros,
cod_tarifa, cod_empresafolha, cod_mes, ano: String; dtdesconto_flh : TdateTime; obs_flh : String;
Cod_Usuario : integer;Cod_TelaSistema : Integer): Boolean;
var executado : boolean;
begin
  executado := DB_ExecSQL('insert into tbl_descontofolha ('+
  ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
  ' vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
  ' cod_sitdesconto, dtsitdesconto_flh, obs_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
  cod_beneficiario+', 0, 0, '+matricula+', '+digito+', '''+STR_SubstChar(vldesconto_adf,',','.')+''', '''+
  STR_SubstChar(vljuros,',','.')+''', '+cod_tarifa+', '+cod_empresafolha+', '''+
  cod_mes + '/01/'+ano+''', '''+FormatDateTime('mm/dd/yyyy', dtdesconto_flh)+
  ''', 1, getdate(), '''+obs_flh+''','+Str_IntToStr(Cod_Usuario)+', '''+
  FormatDateTime('mm/dd/yyyy', date)+''', '''+cod_mes + '/01/'+ano+''')');
  if executado then begin
     result := Set_HistoricoDesconto(Get_UltimoDesconto(Cod_Usuario), cod_usuario,
    Cod_TelaSistema, 1, '');
  end
  else
    result := false;
end;

function Set_AlteraDesconto(cod_beneficiario, matricula, digito, vldesconto_adf,
cod_tarifa, cod_empresafolha, vljuros : String; dtdesconto_flh : TdateTime; cod_sitdesconto : String;
dtsitdesconto_flh : TdateTime; vlpago_flh : String; dtpagto_flh : TdateTime;
obs_flh, nguia_flh : String; Cod_Usuario : integer; cod_descontofolha : String;
Cod_TelaSistema : Integer): Boolean;
var executado : boolean;
begin
  executado := DB_ExecSQL('update tbl_descontofolha set '+
  'cod_beneficiario = '+cod_beneficiario+', '+
  'matriculadebito_seg = '+matricula+', '+
  'digitomatdeb_seg = '+digito+', '+
  'vldesconto_adf = '''+STR_SubstChar(vldesconto_adf,',','.')+''', '+
  'cod_tarifa = '+cod_tarifa+', '+
  'cod_empresafolha = '+cod_empresafolha+', '+
  'vljuros_flh = '+DB_FormatDataSQL(vljuros, ftfloat)+', '+
  'dtdesconto_flh = '+DB_FormatDataSQL(dtdesconto_flh, ftdate)+', '+
  'cod_sitdesconto = '+cod_sitdesconto+', '+
  'dtsitdesconto_flh = '+DB_FormatDataSQL(dtsitdesconto_flh, ftdate)+', '+
  'vlpago_flh = '+DB_FormatDataSQL(vlpago_flh, ftfloat)+', '+
  'dtpagto_flh = '+ DB_FormatDataSQL(dtpagto_flh, ftdate)+', '+
  'dtsistema_flh = getdate(), '+
  'obs_flh = '''+obs_flh+''', '+
  'nguia_flh = '+DB_FormatDataSQL(nguia_flh, ftinteger)+', '+
  'cod_usuario = '+Str_IntToStr(cod_usuario)+
  ' where cod_descontofolha = '+cod_descontofolha);
  if executado then
    result := Set_HistoricoDesconto(str_strToInt(cod_descontofolha), cod_usuario, Cod_TelaSistema, 2, '')
  else
    result := false;  
end;

function Set_AlteraParcelamento(cod_beneficiario, matricula, digito, cod_tarifa, cod_empresafolha, obs_flh, nguia_flh : String;
Cod_Usuario : integer; vldesconto_adf, cod_sitdesconto : String; dtsitdesconto_flh : TdateTime;
vlPago_flh : String; dtPagto_flh : TDateTime; cod_descontofolha, parcelan_par, cod_mes, ano : String;
Cod_TelaSistema : Integer): Boolean;
var executado : boolean;
begin
  executado := DB_ExecSQL('update tbl_descontofolha set '+
  'cod_beneficiario = '+cod_beneficiario+', '+
  'matriculadebito_seg = '+matricula+', '+
  'digitomatdeb_seg = '+digito+', '+
  'cod_tarifa = '+cod_tarifa+', '+
  'cod_empresafolha = '+cod_empresafolha+', '+
  'obs_flh = '''+obs_flh+''', '+
  'dtsistema_flh = getdate(), '+
  'nguia_flh = '+DB_FormatDataSQL(nguia_flh, ftinteger)+', '+
  'cod_usuario = '+Str_IntToStr(cod_usuario)+
  ' where cod_descontofolha = '+cod_descontofolha);
  if executado then
    executado := DB_ExecSQL('update tbl_parcelamento set '+
    'valorpagar_par = '''+STR_SubstChar(vldesconto_adf,',','.')+''', '+
    'cod_sitdesconto = '+cod_sitdesconto+', '+
    'dtsitdesconto_par = '+DB_FormatDataSQL(dtsitdesconto_flh, ftdate)+', '+
    'vlpago_par = '+DB_FormatDataSQL(vlpago_flh, ftfloat)+', '+
    'dtpagto_par = '+ DB_FormatDataSQL(dtpagto_flh, ftdate)+', '+
    'nguia_par = '+DB_FormatDataSQL(nguia_flh, ftinteger)+', '+
    'cod_usuario = '+Str_IntToStr(cod_usuario)+
    ' where cod_descontofolha = '+cod_descontofolha+
    ' and parcelan_par = '+parcelan_par+' and dtvencimento_par = '''+cod_mes + '/01/'+ano+'''');
  if executado then
    result := Set_HistoricoDesconto(str_strToInt(cod_descontofolha), cod_usuario, Cod_TelaSistema, 2, '')
  else
    result := false;  
end;


end.
