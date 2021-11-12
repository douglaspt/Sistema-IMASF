unit Tmp_1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Db, Grids, DBGrids, DBTables;

type
  TFrm_Tmp1 = class(TForm)
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    tl: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tmp1: TFrm_Tmp1;

implementation
uses dtm_principal6, FUN_DB, FUN_STR, FUN_Beneficiario;

{$R *.DFM}

procedure TFrm_Tmp1.Button1Click(Sender: TObject);
var
  wInsc : Integer;
  wDig, wCodBen, wTipS, wTit, wdtsit : String;
  executado : boolean;
begin




  with Query1 do
  begin


    // IMPORTAR OS DEPEPENDENTES
    sql.Clear;
    sql.add('select inscricao, * from __DependentesA dt, tbl_beneficiario b where inscricao_ben = inscricao and titulacartei_ben = ''00'' and CODBEN IS NULL AND INSCRICAO IS NOT NULL order by inscricao');
    open;
    while not eof do
    begin
      wInsc := fieldbyname('inscricao_ben').asinteger;
      wTipS := fieldbyname('cod_tiposegurado').asString;
      wTit := Ben_GeraTitularidadeCarteira(inttostr(wInsc), 1);
      wDig := STR_GeraDigito11(wTipS + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      if wInsc <> 0 then begin
          executado := db_ExecSQL('insert into tbl_beneficiario ( '+
          ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
          ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
          ' processo_ben, nomepai_ben, nomemae_ben, '+
          ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
          ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
          ' foneresi_ben, obs_ben, '+
          ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
          ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
          ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
          ' email_ben) Values ('+
          ' 1, 1, '+wTipS+', '+fieldbyname('cod_uf').asString+', '+fieldbyname('cd2_uf').asString+', '+wTipS+', '+
            IntToStr(wInsc)+', '+fieldbyname('cod_estadociv').asString+', '+wDig+', '''+fieldbyname('NOME').asString+''', '+
            DB_FormatDataSQL(fieldbyname('dtnascim').AsDateTime, ftdate)+', ''M'', GETDATE(), GETDATE(), '+
          ' 0, '''', '''+fieldbyname('NOMEMAE').asString+''', '''+
            fieldbyname('endereco_ben').asString+''', '''+fieldbyname('bairro_ben').asString+''', '''+fieldbyname('cidade_ben').asString+''', '''+fieldbyname('cep_ben').asString+''', '''+
            fieldbyname('enderecocor_ben').asString+''', '''+fieldbyname('bairrocor_ben').asString+''', '''+fieldbyname('cidadecor_ben').asString+''', '''+fieldbyname('cepcor_ben').asString+''', '''+
            fieldbyname('foneresi_ben').asString+''', ''--2--'', '''+
            fieldbyname('rg_ben').asString+''', '+DB_FormatDataSQL(fieldbyname('dtemissaorg_ben').AsDateTime, ftdate)+', '''+fieldbyname('orgemissorrg_ben').asString+''', '''+fieldbyname('cpf_ben').asString+''', '''+fieldbyname('titeleitor_ben').asString+''', '+
          ' GETDATE(), '+wTit+', GETDATE(), null, 5, null, '+
          ' GETDATE(), 0, 0, 0, '''+fieldbyname('email_ben').asString+
          ' '')');
          if executado then begin
            DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
            wCodBen := Tab.Fields[0].AsString ;
            executado := db_ExecSQL('insert into tbl_dependente ( '+
            ' cod_beneficiario, cod_grauparent, cod_estfisico, dtrenovacao_dep, dtlimite_dep, '+
            ' rgproprio_dep, cpfproprio_dep '+
            ' ) values ('+
            wCodBen+', 99, 1, ''12/31/2999'', ''12/31/2999'', 0, 0)');
            if executado then
            executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
            wCodBen+', 1, ''12/31/2999'', getdate())');
            /// FALTA SALVAR O NIVEL DE CARENCIA
      end else begin
        DB_ExecSQL('UPDATE tmp_intermedDep SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
         ///listar erros e segurados nao encontrados
      end;
      end;
      tl.Caption := IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;


  {
    //IMPORTAR OS SEGURADOS novo cadastro intermedica
    wInsc := STRTOINT(Edit3.Text);
    sql.Clear;
    sql.add('SELECT * FROM __TitularesA t, tbl_fpm f '+
            '  WHERE matr = matricula_mte AND COD_EMPRESAFOLHA = 5 '+
            ' AND CODBEN IS NULL and nome = nome_fpm');
    open;
    while not eof do
    begin
      wInsc := wInsc + 1;
      wDig := STR_GeraDigito11('11' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      wdtsit := trim(fieldbyname('dtsitemp_fpm').Asstring);
      if wdtsit = '' then
        wdtsit := '01/01/1950';
      executado := db_ExecSQL('insert into tbl_beneficiario ( '+
      ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
      ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
      ' processo_ben, nomepai_ben, nomemae_ben, '+
      ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
      ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
      ' foneresi_ben, obs_ben, '+
      ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
      ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
      ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
      ' email_ben) Values ('+
      ' 1, 1, 1, '+fieldbyname('cod_uf').asString+', '+fieldbyname('cod_uf').asString+', 1, '+
        IntToStr(wInsc)+', 9, '+wDig+', '''+fieldbyname('NOME').asString+''', '+DB_FormatDataSQL(fieldbyname('dtnascim').AsDateTime, ftdate)+', ''M'', GETDATE(), GETDATE(), '+
      ' 0, '''', '''', '''+
        fieldbyname('endereco_fpm').asString+''', '''+fieldbyname('bairro_fpm').asString+''', '''+fieldbyname('cidade_fpm').asString+''', '''+fieldbyname('cep_fpm').asString+''', '''+
        fieldbyname('endereco_fpm').asString+''', '''+fieldbyname('bairro_fpm').asString+''', '''+fieldbyname('cidade_fpm').asString+''', '''+fieldbyname('cep_fpm').asString+''', '''+
        fieldbyname('foneresi_fpm').asString+''', ''--2--'', '''', '''', '''', '''+fieldbyname('cpf_fpm').asString+''', '''', '+
      ' GETDATE(), 0, GETDATE(), null, 5, null, '+
      ' GETDATE(), 0, 0, 0, '''')');
      if executado then begin
        DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
        wCodBen := Tab.Fields[0].AsString ;
        executado := db_ExecSQL('insert into tbl_segurado ( '+
        ' cod_beneficiario, cod_situacempr, funcaoemp_seg, cod_setoremp, '+
        ' fonecome_seg, cod_formaadm, dtadmiss_seg, dtsituempr_seg, '+
        ' funcaocomiss_seg, matriculadebito_seg, digitomatdeb_seg, matriculaprinc_seg, digitomatpri_seg)'+
        ' values ('+
        wCodBen+', 1, '''+fieldbyname('funcaoemp_seg').asString+''', 0, '''+
        fieldbyname('fonecome_fpm').asString+''', 3, '''+wdtsit+''', '''+wdtsit+''', '''', '+
        fieldbyname('matricula_mte').asString+', '+fieldbyname('digito_mte').asString+', '+fieldbyname('matricula_mte').asString+', '+fieldbyname('digito_mte').asString+
        ' )');
        if executado then begin
        executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
        wCodBen+', 1, ''12/31/2999'', getdate())');
        /// FALTA SALVAR O NIVEL DE CARENCIA
        end else begin
          DB_ExecSQL('UPDATE __TitularesA SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
           ///listar erros e segurados nao encontrados
        end;
      end;
      tl.Caption := 'SEGURADO : '+IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;


    }

{

    //IMPORTAR OS SEGURADOS
    wInsc := STRTOINT(Edit3.Text);
    sql.Clear;
    sql.add('select * from tmp_TitularesSaida WHERE codben is null');
    open;
    while not eof do
    begin
      wInsc := wInsc + 1;
      wDig := STR_GeraDigito11(fieldbyname('TIPO').asString + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      executado := db_ExecSQL('insert into tbl_beneficiario ( '+
      ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
      ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
      ' processo_ben, nomepai_ben, nomemae_ben, '+
      ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
      ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
      ' foneresi_ben, obs_ben, '+
      ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
      ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
      ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
      ' email_ben) Values ('+
      ' 1, 1, '+fieldbyname('EMPR').asString+', '+fieldbyname('UF').asString+', '+fieldbyname('UF').asString+', '+fieldbyname('TIPO').asString+', '+
        IntToStr(wInsc)+', '+fieldbyname('cod_estadociv').asString+', '+wDig+', '''+fieldbyname('NOME').asString+''', '+DB_FormatDataSQL(fieldbyname('DTNASCIM').AsDateTime, ftdate)+', '''+fieldbyname('SEXO').asString+''', GETDATE(), GETDATE(), '+
      ' 0, '''+fieldbyname('NOMEPAI').asString+''', '''+fieldbyname('NOMEMAE').asString+''', '''+
        fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
        fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
        fieldbyname('TELEFONERESID').asString+''', '''+fieldbyname('OBS').asString+''', '''+
        fieldbyname('RG').asString+''', '+DB_FormatDataSQL(fieldbyname('DTEMISRG').AsDateTime, ftdate)+', '''+fieldbyname('ORGAOEMISRG').asString+''', '''+fieldbyname('CPF').asString+''', '''+fieldbyname('TITULOELEIT').asString+''', '+
      ' GETDATE(), 0, GETDATE(), null, 5, null, '+
      ' GETDATE(), 0, 0, 0, '''+fieldbyname('E-MAIL').asString+
      ' '')');
      if executado then begin
        DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
        wCodBen := Tab.Fields[0].AsString ;
        executado := db_ExecSQL('insert into tbl_segurado ( '+
        ' cod_beneficiario, cod_situacempr, funcaoemp_seg, cod_setoremp, '+
        ' fonecome_seg, cod_formaadm, dtadmiss_seg, dtsituempr_seg, '+
        ' funcaocomiss_seg, matriculadebito_seg, digitomatdeb_seg, matriculaprinc_seg, digitomatpri_seg)'+
        ' values ('+
        wCodBen+', '+fieldbyname('SITEMPR').asString+', '''+fieldbyname('FUNCAO').asString+''', '+fieldbyname('SETOR').asString+', '''+
        fieldbyname('FONECOMER').asString+''', 3, '+DB_FormatDataSQL(fieldbyname('DTADMIS').AsDateTime, ftdate)+', '+DB_FormatDataSQL(fieldbyname('DTSITEMP').AsDateTime, ftdate)+', '''+
        fieldbyname('FUNCAOCOMIS').asString+''', '+fieldbyname('MATR').asString+', '+fieldbyname('DG').asString+', '+fieldbyname('MATR').asString+', '+fieldbyname('DG').asString+
        ' )');
        if executado then begin
        executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
        wCodBen+', 1, ''12/31/2999'', getdate())');
        /// FALTA SALVAR O NIVEL DE CARENCIA
        end else begin
          DB_ExecSQL('UPDATE tmp_intermedTit SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
           ///listar erros e segurados nao encontrados
        end;
      end;
      tl.Caption := 'SEGURADO : '+IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;


    }
    {

    // IMPORTAR OS DEPEPENDENTES
    sql.Clear;
    sql.add('select * from tmp_intermedDep WHERE SEQUENCIA >= '+Edit1.Text+' AND SEQUENCIA <= '+Edit2.Text);
    open;
    while not eof do
    begin
      db_OpenSQL('select inscricao_ben, cod_tiposegurado from tbl_beneficiario b, tbl_segurado s '+
      ' where b.cod_beneficiario = s.cod_beneficiario '+
      ' and matriculadebito_seg = '+fieldbyname('MATR').asString+' and digitomatdeb_seg = '+fieldbyname('DV').asString);
      wInsc := TAB.fields[0].AsInteger;
      wTipS := TAB.fields[1].AsString;
      wDig := STR_GeraDigito11(wTipS + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      if wInsc <> 0 then begin
          executado := db_ExecSQL('insert into tbl_beneficiario ( '+
          ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
          ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
          ' processo_ben, nomepai_ben, nomemae_ben, '+
          ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
          ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
          ' foneresi_ben, obs_ben, '+
          ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
          ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
          ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
          ' email_ben) Values ('+
          ' 1, 1, '+wTipS+', '+fieldbyname('UF').asString+', '+fieldbyname('UF').asString+', '+wTipS+', '+
            IntToStr(wInsc)+', '+fieldbyname('cod_estadociv').asString+', '+wDig+', '''+fieldbyname('NOME').asString+''', '+DB_FormatDataSQL(fieldbyname('DTNASCIM').AsDateTime, ftdate)+', '''+fieldbyname('SEXO').asString+''', GETDATE(), GETDATE(), '+
          ' 0, '''+fieldbyname('NOMEPAI').asString+''', '''+fieldbyname('NOMEMAE').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('TELEFONERESID').asString+''', '''+fieldbyname('OBS').asString+''', '''+
            fieldbyname('RG').asString+''', '+DB_FormatDataSQL(fieldbyname('DTEMISRG').AsDateTime, ftdate)+', '''+fieldbyname('ORGEMISRG').asString+''', '''+fieldbyname('CPF').asString+''', '''+fieldbyname('TITELEIT').asString+''', '+
          ' GETDATE(), 0, GETDATE(), null, 5, null, '+
          ' GETDATE(), 0, 0, 0, '''+fieldbyname('E-MAIL').asString+
          ' '')');
          if executado then begin
            DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
            wCodBen := Tab.Fields[0].AsString ;
            executado := db_ExecSQL('insert into tbl_dependente ( '+
            ' cod_beneficiario, cod_grauparent, cod_estfisico, dtrenovacao_dep, dtlimite_dep, '+
            ' rgproprio_dep, cpfproprio_dep '+
            ' ) values ('+
            wCodBen+', '+fieldbyname('GRAUPARENT').asString+', '+fieldbyname('ESTFIS').asString+', ''12/31/2999'', ''12/31/2999'', '+
            fieldbyname('RGPROPRIO').asString+', '+fieldbyname('CPFPROPRIO').asString+
            ' )');
            if executado then
            executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
            wCodBen+', 1, ''12/31/2999'', getdate())');
            /// FALTA SALVAR O NIVEL DE CARENCIA
      end else begin
        DB_ExecSQL('UPDATE tmp_intermedDep SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
         ///listar erros e segurados nao encontrados
      end;
      end;
      tl.Caption := IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;

       }

        {

    // IMPORTAR OS DEPENDENTES INTERMEDICA
    sql.Clear;
    sql.add('select * from tmp_DependentesSaida where CODBEN is null AND INSCRICAO IS NOT NULL order by INSCRICAO ');
    open;
    while not eof do
    begin
      wInsc := fieldbyname('INSCRICAO').AsInteger;
      wTipS := fieldbyname('TIPSEG').asString;
      wTit := Ben_GeraTitularidadeCarteira(inttostr(wInsc), 1);
      wDig := STR_GeraDigito11(wTipS + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      if wInsc <> 0 then begin
          executado := db_ExecSQL('insert into tbl_beneficiario ( '+
          ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
          ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
          ' processo_ben, nomepai_ben, nomemae_ben, '+
          ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
          ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
          ' foneresi_ben, obs_ben, '+
          ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
          ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
          ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
          ' email_ben) Values ('+
          ' 1, 1, '+wTipS+', '+fieldbyname('UF').asString+', '+fieldbyname('UF').asString+', '+wTipS+', '+
            IntToStr(wInsc)+', '+fieldbyname('cod_estadociv').asString+', '+wDig+', '''+fieldbyname('NOME').asString+''', '+DB_FormatDataSQL(fieldbyname('DTNASCIM').AsDateTime, ftdate)+', '''+fieldbyname('SEXO').asString+''', GETDATE(), GETDATE(), '+
          ' 0, '''+fieldbyname('NOMEPAI').asString+''', '''+fieldbyname('NOMEMAE').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('TELEFONERESID').asString+''', '''+fieldbyname('OBS').asString+''', '''+
            fieldbyname('RG').asString+''', '+DB_FormatDataSQL(fieldbyname('DTEMISRG').AsDateTime, ftdate)+', '''+fieldbyname('ORGEMISRG').asString+''', '''+fieldbyname('CPF').asString+''', '''+fieldbyname('TITELEIT').asString+''', '+
          ' GETDATE(), '+wtit+', GETDATE(), null, 5, null, '+
          ' GETDATE(), 1, 0, 0, '''+fieldbyname('E-MAIL').asString+
          ' '')');
          if executado then begin
            DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
            wCodBen := Tab.Fields[0].AsString ;
            executado := db_ExecSQL('insert into tbl_dependente ( '+
            ' cod_beneficiario, cod_grauparent, cod_estfisico, dtrenovacao_dep, dtlimite_dep, '+
            ' rgproprio_dep, cpfproprio_dep '+
            ' ) values ('+
            wCodBen+', '+fieldbyname('GRAUPARENT').asString+', '+fieldbyname('ESTFIS').asString+', ''12/31/2999'', ''12/31/2999'', '+
            fieldbyname('RGPROPRIO').asString+', '+fieldbyname('CPFPROPRIO').asString+
            ' )');
            if executado then
            executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
            wCodBen+', 1, ''12/31/2999'', getdate())');
            /// FALTA SALVAR O NIVEL DE CARENCIA
      end else begin
        DB_ExecSQL('UPDATE tmp_DependentesSaida SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
         ///listar erros e segurados nao encontrados
      end;
      end;
      tl.Caption := IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;

  }
       {

    // IMPORTAR OS AGREGADOS
    sql.Clear;
    sql.add('select * from tmp_AgregadosSaida where inscricao is not null order by inscricao ');
    open;
    while not eof do
    begin
      wInsc := fieldbyname('INSCRICAO').AsInteger;
      wTipS := fieldbyname('TIPSEG').asString;
      wTit := Ben_GeraTitularidadeCarteira(inttostr(wInsc), 2);
      wDig := STR_GeraDigito11(wTipS + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + '00' ) ;
      if wInsc <> 0 then begin
          executado := db_ExecSQL('insert into tbl_beneficiario ( '+
          ' cod_plano, cod_sitbeneficiario, cod_empresa, cod_uf, cd2_uf, cod_tiposegurado, '+
          ' inscricao_ben, cod_estadociv, digito_ben, nome_ben, dtnascim_ben, sexo_ben, dtcadastro_ben, dtinscricao_ben, '+
          ' processo_ben, nomepai_ben, nomemae_ben, '+
          ' endereco_ben, bairro_ben, cidade_ben, cep_ben, '+
          ' enderecocor_ben, bairrocor_ben, cidadecor_ben, cepcor_ben, '+
          ' foneresi_ben, obs_ben, '+
          ' rg_ben, dtemissaorg_ben, orgemissorrg_ben, cpf_ben, titeleitor_ben, '+
          ' dtsituacao_ben, titulacartei_ben, dtcarencia_ben, idade_ben, cod_empresafolha, idadecontrib_ben, '+
          ' dtplano_ben, cod_tipodependente, cod_tipocoberturaunimed, cod_tipocoberturaodonto, '+
          ' email_ben) Values ('+
          ' 1, 1, '+wTipS+', '+fieldbyname('UF').asString+', '+fieldbyname('UF').asString+', '+wTipS+', '+
            IntToStr(wInsc)+', '+fieldbyname('cod_estadociv').asString+', '+wDig+', '''+fieldbyname('NOME').asString+''', '+DB_FormatDataSQL(fieldbyname('DTNASCIM').AsDateTime, ftdate)+', '''+fieldbyname('SEXO').asString+''', GETDATE(), GETDATE(), '+
          ' 0, '''+fieldbyname('NOMEPAI').asString+''', '''+fieldbyname('NOMEMAE').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('ENDERECO').asString+''', '''+fieldbyname('BAIRRO').asString+''', '''+fieldbyname('CIDADE').asString+''', '''+fieldbyname('CEP').asString+''', '''+
            fieldbyname('TELEFONERESID').asString+''', '''+fieldbyname('OBS').asString+''', '''+
            fieldbyname('RG').asString+''', '+DB_FormatDataSQL(fieldbyname('DTEMISRG').AsDateTime, ftdate)+', '''+fieldbyname('ORGEMISRG').asString+''', '''+fieldbyname('CPF').asString+''', '''+fieldbyname('TITELEIT').asString+''', '+
          ' GETDATE(), '+wtit+', GETDATE(), null, 5, null, '+
          ' GETDATE(), 2, 0, 0, '''+fieldbyname('E-MAIL').asString+
          ' '')');
          if executado then begin
            DB_OpenSQL('select max(cod_beneficiario), max(inscricao_ben) from tbl_beneficiario where inscricao_ben < 99999');
            wCodBen := Tab.Fields[0].AsString ;
            executado := db_ExecSQL('insert into tbl_dependente ( '+
            ' cod_beneficiario, cod_grauparent, cod_estfisico, dtrenovacao_dep, dtlimite_dep, '+
            ' rgproprio_dep, cpfproprio_dep '+
            ' ) values ('+
            wCodBen+', '+fieldbyname('GRAUPARENT').asString+', '+fieldbyname('ESTFIS').asString+', ''12/31/2999'', ''12/31/2999'', '+
            fieldbyname('RGPROPRIO').asString+', '+fieldbyname('CPFPROPRIO').asString+
            ' )');
            if executado then
            executado := db_ExecSQL('insert into tbl_carteira (cod_beneficiario, via_car, dtvalidade_car, dtemissao_car) values ('+
            wCodBen+', 1, ''12/31/2999'', getdate())');
            /// FALTA SALVAR O NIVEL DE CARENCIA
      end else begin
        DB_ExecSQL('UPDATE tmp_AgregadosSaida SET ERRO = 1 WHERE SEQUENCIA = '+fieldbyname('SEQUENCIA').asString);
         ///listar erros e segurados nao encontrados
      end;
      end;
      tl.Caption := IntToStr(wInsc);
      Application.ProcessMessages;
      next;
    end;

    }

  end;

end;

procedure TFrm_Tmp1.Button2Click(Sender: TObject);
begin
  DB_BeginTrans;
  showmessage(inttostr(DB_TranCount));
end;

procedure TFrm_Tmp1.Button3Click(Sender: TObject);
begin
  DB_RollBack;
end;

procedure TFrm_Tmp1.Button4Click(Sender: TObject);
begin
DB_Commit;
showmessage(inttostr(DB_TranCount));
end;

procedure TFrm_Tmp1.Button5Click(Sender: TObject);
var
  wInsc : Integer;
  wDig, wTipS, wTit, wCodBen : String;
begin
  with Query1 do
  begin


    //IMPORTAR OS SEGURADOS
    sql.Clear;
    sql.add('select inscricao_ben, cod_tiposegurado, b.cod_beneficiario from tbl_beneficiario b, tbl_dependente d '+
            'where b.cod_beneficiario = d.cod_beneficiario and inscricao_ben >= 30000 '+
            ' and cod_tipodependente = 0 and titulacartei_ben <> ''00'' order by inscricao_ben');
    open;
    while not eof do
    begin
      wInsc := fields[0].AsInteger;
      wTipS := fields[1].AsString;
      wCodBen := Fields[2].AsString ;
      wTit := Ben_GeraTitularidadeCarteira(inttostr(wInsc), 1) ;
      wDig := STR_GeraDigito11(wTipS + '1' + STR_RightAlign(inttostr(wInsc),#48,5) + wTit ) ;
      db_ExecSQL('update tbl_beneficiario set cod_tipodependente = 1'+
      ', titulacartei_ben = '+wtit+', digito_ben = '+wdig+
      ' where cod_beneficiario = '+wCodBen);
//      tl.Caption := IntToStr(wInsc);
//      Application.ProcessMessages;
      next;
    end;
  end;
end;

procedure TFrm_Tmp1.Button6Click(Sender: TObject);
var
  wInsc : Integer;
  wDig, wTipS, wTit, wCodBen : String;
begin
  with Query1 do
  begin

    sql.Clear;
////    sql.add('select cod_beneficiario, inscricao_ben, nome_ben from tbl_beneficiario where email_ben = '''' and inscricao_ben >= 30000 and inscricao_ben <= 32000 and titulacartei_ben = 0 order by inscricao_ben');
////    sql.add('SELECT cod_beneficiario, inscricao_ben, nome_ben FROM tmp_intermeddEP d, tbl_beneficiario b WHERE d.codben = b.cod_beneficiario and d.INSCRICAO <> b.inscricao_ben order by inscricao_ben');
//    sql.add('SELECT cod_beneficiario, inscricao_ben, nome_ben FROM tbl_beneficiario b WHERE b.inscricao_ben > 40775 and b.inscricao_ben < 99775 order by inscricao_ben');
    sql.add('select * from tbl_beneficiario where inscricao_ben >= 30000 and cod_plano = 1 and cod_sitbeneficiario = 1 and dtcadastro_ben >= ''03/23/2006'' order by inscricao_ben');
    open;
    while not eof do
    begin
      wCodBen := Fields[0].AsString ;
      db_ExecSQL('delete tbl_beneficiario '+
      ' where cod_beneficiario = '+wCodBen);
      tl.Caption := wCodBen;
      Application.ProcessMessages;
      next;
    end;
  end;
end;

end.
