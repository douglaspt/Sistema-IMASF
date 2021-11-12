unit Fun_Contabil;

interface

function Ctb_ultimaContribuicaoGerada(cod_empresafolha, campoData : string): TDateTime; Export ;
function Ctb_DtReferenciaUltimaContribuicaoGerada(cod_empresafolha : string): TDateTime; Export ;
function Ctb_DtUltimoEnvioGerado(cod_empresafolha : string): TDateTime; Export;
function Ctb_DtUltimaBaixaGerada(cod_empresafolha : string): TDateTime; Export;

implementation
uses Fun_DB, sysutils;

//campoData = qualquer campo formato de data nesta tabela. Ex : dtreferencia_flh
function Ctb_ultimaContribuicaoGerada(cod_empresafolha, campoData : string): TDateTime;
begin
  DB_OpenSQL('select '+campoData+', dtreferencia_flh from tbl_lotefolhadescontos where cod_empresafolha = '+
  cod_empresafolha+ 'order by '+campoData+' desc');
  if tab.Fields[0].AsDateTime > tab.Fields[1].AsDateTime then
    result := tab.Fields[0].AsDateTime
  else
    result := tab.Fields[1].AsDateTime;
  DB_ClearSQL;
end;

function Ctb_DtReferenciaUltimaContribuicaoGerada(cod_empresafolha : string): TDateTime;
begin
  result := Ctb_ultimaContribuicaoGerada(cod_empresafolha, 'dtreferencia_flh');
end;

function Ctb_DtUltimoEnvioGerado(cod_empresafolha : string): TDateTime;
begin
  result := Ctb_ultimaContribuicaoGerada(cod_empresafolha, 'dtenvio_flh');
end;

function Ctb_DtUltimaBaixaGerada(cod_empresafolha : string): TDateTime;
begin
  result := Ctb_ultimaContribuicaoGerada(cod_empresafolha, 'dtbaixaautomatica_flh');
end;

function Ctb_FormatarDotacao(dotacao : string): String;
begin
  if copy(dotacao, 1,4) = FormatDateTime('yyyy', now) then
    dotacao := copy(dotacao, 5, 40);
  dotacao := copy(dotacao, 1, 2) + '.' + copy(dotacao, 3, 2) + '.' +
  copy(dotacao, 5, 40)
//  result := dotacao;
end;

end.
