unit Fun_Medico;

interface
uses forms;

function Get_NomeConveniado(C:String): String; Export ;
function Get_NomeConveniadoAtivo(C:String): String; Export ;
function Get_NomeMedico(CRM:String): String; Export ;
function Get_DescricaoServico(C:String): String; Export ;
function Get_NomeAMB(AMB:String): String; Export ;
function Get_NomeCid(CID:String): String; Export ;
function Med_CriticaConta(conven, dtrefe, seguen, status : string; frm:TForm): Boolean; Export ;
function RecebimentoConta(conven, dtrefe, seq, midia : string): Boolean; Export ;
function Get_CodConveniado(Nome : String) : String; Export;
function Med_ConveniadoItem(conven, Item : String; frm : TForm) : Boolean; Export;


implementation
uses Fun_DB, Dlg_Mensagem;

function Med_CriticaConta(conven, dtrefe, seguen, status : string; frm:TForm): Boolean;
begin
  result := true ;
  try
    DB_BeginTrans;
    if DB_ExecSQL('exec spc_efetuar_criticas '+conven+', '+dtrefe+', '+seguen+', '+status) then begin
      DB_Commit;
      Dlg_Ok('Conta Criticada !',frm);
    end else begin
      DB_RollBack;
      Dlg_Alerta('Erro ao Criticar a Conta', frm);
    end;
  except
    result := false ;
  end;
end;

function Get_NomeMedico(CRM:String): String;
begin
  if crm = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select medico_crm from tbl_crm where cod_crm = '+crm);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Get_NomeConveniado(C:String): String;
begin
  if c = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_con from tbl_conveniado where cod_conveniado = '+c);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Get_NomeConveniadoAtivo(C:String): String;
begin
  if c = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_con from tbl_conveniado where cod_sitconveniado < 3 and cod_conveniado = '+c);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Get_DescricaoServico(C:String): String;
begin
  if c = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_its from tbl_itemservico where cod_itemservico = '+c);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
  if result = '' then begin
    if pos('999', c) > 0 then
      result := 'TODOS OS ITENS DE SERVIÇOS DESTE SUBGRUPO' ;
    if pos('99999', c) > 0 then
      result := 'TODOS OS ITENS DE SERVIÇOS DESTE GRUPO' ;
    if pos('9999999', c) > 0 then
      result := 'TODOS OS ITENS DE SERVIÇOS' ;
  end;
end;

function Get_NomeAMB(AMB:String): String;
begin
  if amb = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_its from tbl_itemservico where cod_padrao = '+amb);
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Get_NomeCid(CID:String): String;
begin
  if cid = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select nome_cid from tbl_cid where cod_cid = '''+cid+'''');
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Get_CodConveniado(Nome : String) : String;
begin
  if Nome = '' then begin
    result := '' ;
    exit ;
  end;
  DB_OpenSQL('select top 1 cod_conveniado from tbl_conveniado where cod_sitconveniado <> 3 and nomereduzido_con like ''%'+Nome+'%''');
  result := Tab.Fields[0].AsString ;
  DB_ClearSQL;
end;

function Med_ConveniadoItem(conven, Item : String; frm : TForm ) : Boolean;
begin
  if (conven = '') or (Item = '') then begin
    result := true;
    exit;
  end;
  if DB_OpenSQL('select distinct cod_itemservico from tbl_Itemhonorario where cod_conveniado = '+
  conven+' and cod_statusAtivo = 1 and cod_itemservico = '+Item ) > 0 then
  result := True
  else begin
  result := false;
  Dlg_Alerta('O Item '+Item+' não está Cadastrado pra este Conveniado ', frm);
  end;
end;

function RecebimentoConta(conven, dtrefe, seq, midia : string): Boolean;
begin
  result := true ;
  if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
  ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+seq ) < 1 then
  begin
    DB_ClearSQL;
    DB_ExecSQL('insert into tbl_lotecontamedica '+
    ' (cod_conveniado, dtreferencia_cta, sequencia_cta, dtrecebimento_cta, cod_midia)'+
    ' values ('+conven+', '+dtrefe+', '+seq+',getdate(), '+midia+')');
    if conven = '9997' then
    DB_ExecSQL('update tbl_lotecontamedica set dtleitura_cta = dtrecebimento_cta'+
    ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe);
  end
  else
  result := false;
end;

end.
