object fdt_principal3: Tfdt_principal3
  OldCreateOrder = False
  Height = 734
  Width = 1024
  object spc_cons_txt_afiliados_erros: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_txt_afiliados_erros'
    Left = 460
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
    object spc_cons_txt_afiliados_errosData: TDateTimeField
      FieldName = 'Data'
    end
    object spc_cons_txt_afiliados_errosTabela: TStringField
      FieldName = 'Tabela'
      FixedChar = True
    end
    object spc_cons_txt_afiliados_errosErro: TIntegerField
      FieldName = 'Erro'
    end
    object spc_cons_txt_afiliados_errosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object spc_cons_txt_afiliados_errosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 180
    end
  end
  object spc_cons_txt_prestadores_erros: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_txt_prestadores_erros'
    Left = 459
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
    object spc_cons_txt_prestadores_errosData: TDateTimeField
      FieldName = 'Data'
    end
    object spc_cons_txt_prestadores_errosTabela: TStringField
      FieldName = 'Tabela'
      FixedChar = True
    end
    object spc_cons_txt_prestadores_errosErro: TIntegerField
      FieldName = 'Erro'
    end
    object spc_cons_txt_prestadores_errosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
    end
    object spc_cons_txt_prestadores_errosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 180
    end
  end
  object spc_cons_txt_estabelecimentos_erros: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_txt_estabelecimentos_erros'
    Left = 285
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
    object spc_cons_txt_estabelecimentos_errosData: TDateTimeField
      FieldName = 'Data'
    end
    object spc_cons_txt_estabelecimentos_errosTabela: TStringField
      FieldName = 'Tabela'
      FixedChar = True
    end
    object spc_cons_txt_estabelecimentos_errosErro: TIntegerField
      FieldName = 'Erro'
    end
    object spc_cons_txt_estabelecimentos_errosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 180
    end
    object spc_cons_txt_estabelecimentos_erroscodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
    end
  end
  object spc_cons_totalcontamedicacarregado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_totalcontamedicacarregado'
    Left = 462
    Top = 97
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
    object spc_cons_totalcontamedicacarregadodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_totalcontamedicacarregadoTotal: TIntegerField
      FieldName = 'Total'
    end
  end
  object spc_cons_txt_carencias_erros: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_txt_carencias_erros'
    Left = 283
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
  end
  object spc_cons_totalitemcontamedicacarregado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_totalitemcontamedicacarregado'
    Left = 89
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciainicial_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafinal_cta'
        ParamType = ptInput
        Value = '99/99/9999'
      end>
    object spc_cons_totalitemcontamedicacarregadodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_totalitemcontamedicacarregadoTotal: TIntegerField
      FieldName = 'Total'
    end
  end
  object spc_cons_adm_histbeneficiario: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histbeneficiario'
    Left = 286
    Top = 97
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_usuario'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_order'
        ParamType = ptInput
      end>
    object spc_cons_adm_histbeneficiariocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_histbeneficiarioinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_histbeneficiariotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_histbeneficiarionome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_histbeneficiariodtalteracao_hsb: TDateTimeField
      FieldName = 'dtalteracao_hsb'
    end
    object spc_cons_adm_histbeneficiariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_histbeneficiarionome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_histbeneficiariocod_telasistema: TIntegerField
      FieldName = 'cod_telasistema'
    end
  end
  object spc_cons_adm_listabeneficiario: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_listabeneficiario'
    Left = 288
    Top = 193
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@titulacartei_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tiposegurado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_sitbeneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_uf'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtnascimIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtnascimFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtinscricaoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtinscricaoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtsituacaoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtsituacaoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtcarenciaIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtcarenciaFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtplanoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtplanoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@idadeIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@idadeFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cepIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cepFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@nome_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@rg_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cpf_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@nomepai_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@nomemae_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@endereco_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@bairro_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cidade_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@foneresi_ben'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@matriculaprinc_seg'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtadmissIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtadmissFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtrenovacaoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtrenovacaoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtlimiteIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtlimiteFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_grauparent'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_estfisico'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@tipo_sit'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_formaadm'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_situacempr'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_regiao'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_cidadeCEP'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@sexo_ben'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_nivelcar'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtcadastroIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtcadastroFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtalteracaoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtalteracaoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_listabeneficiarioinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_listabeneficiariotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_listabeneficiarionome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_listabeneficiariocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_listabeneficiariocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_listabeneficiarionome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_listabeneficiariodtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_listabeneficiarioidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_listabeneficiariodtrenovacao_dep: TDateTimeField
      FieldName = 'dtrenovacao_dep'
    end
    object spc_cons_adm_listabeneficiariodtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_listabeneficiariodtlimite_car: TDateTimeField
      FieldName = 'dtlimite_car'
    end
    object spc_cons_adm_listabeneficiarioinformacao_car: TStringField
      FieldName = 'informacao_car'
      FixedChar = True
      Size = 200
    end
    object spc_cons_adm_listabeneficiariocod_nivelcar: TIntegerField
      FieldName = 'cod_nivelcar'
    end
    object spc_cons_adm_listabeneficiariocod_carencia: TIntegerField
      FieldName = 'cod_carencia'
    end
    object spc_cons_adm_listabeneficiarionome_niv: TStringField
      FieldName = 'nome_niv'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_listabeneficiariocpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
  end
  object spc_cons_adm_contribuicaonaogerada: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contribuicaonaogerada'
    Left = 282
    Top = 143
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contribuicaonaogeradainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_contribuicaonaogeradatitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_contribuicaonaogeradanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribuicaonaogeradanome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribuicaonaogeradadtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_contribuicaonaogeradanome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_descontozerado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontozerado'
    Left = 89
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object IntegerField1: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object IntegerField2: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object StringField1: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
  end
  object spc_cons_adm_descontocodigo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontocodigo'
    Left = 460
    Top = 143
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciaIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_descontocodigocod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontocodigonome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontocodigovldesconto: TFloatField
      FieldName = 'vldesconto'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontocodigovlpago: TFloatField
      FieldName = 'vlpago'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontocodigodtreferencia: TStringField
      FieldName = 'dtreferencia'
      FixedChar = True
      Size = 25
    end
  end
  object spc_cons_adm_descontoplano01: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontoplano01'
    Left = 86
    Top = 95
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciaIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_descontoplano01cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_descontoplano01nome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontoplano01dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontoplano01vldesconto: TFloatField
      FieldName = 'vldesconto'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontoplano01vlpago: TFloatField
      FieldName = 'vlpago'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_corpoclinico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_corpoclinico'
    Left = 470
    Top = 247
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_corpoclinicocod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conveniado'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_corpoclinicocod_crm: TIntegerField
      DisplayLabel = 'CRM'
      FieldName = 'cod_crm'
    end
    object spc_cons_adm_corpoclinicocpf_cln: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf_cln'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_corpoclinicocod_espmedamb: TIntegerField
      DisplayLabel = 'Cod. Esp.'
      FieldName = 'cod_espmedamb'
    end
    object spc_cons_adm_corpocliniconome_cln: TStringField
      DisplayLabel = 'Nome Médico'
      FieldName = 'nome_cln'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_corpocliniconome_esp: TStringField
      DisplayLabel = 'Esp. Médica'
      FieldName = 'nome_esp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_corpocliniconome_stc: TStringField
      FieldName = 'nome_stc'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_corpocliniconomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_adm_corpocliniconome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_corpoclinicorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_corpoclinicodtsituacao_con: TDateTimeField
      FieldName = 'dtsituacao_con'
    end
    object spc_cons_adm_corpoclinicocnpj_con: TStringField
      FieldName = 'cnpj_con'
      FixedChar = True
    end
    object spc_cons_adm_corpoclinicocod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_cons_adm_corpoclinicodescricao_sta: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'descricao_sta'
      FixedChar = True
    end
    object spc_cons_adm_corpoclinicodtcadastro_cln: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtcadastro_cln'
    end
  end
  object spc_cons_adm_conveniado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_conveniado'
    Left = 462
    Top = 194
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_conveniadoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_conveniadoFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoConveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@cod_sitconveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_conveniadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_conveniadonome_stc: TStringField
      FieldName = 'nome_stc'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_conveniadonome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_conveniadocepcor_con: TStringField
      FieldName = 'cepcor_con'
      FixedChar = True
      Size = 9
    end
    object spc_cons_adm_conveniadonomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadocnpj_con: TStringField
      FieldName = 'cnpj_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadonomedirecao_con: TStringField
      FieldName = 'nomedirecao_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadofonedirecao_con: TStringField
      FieldName = 'fonedirecao_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadoregistrodirecao_con: TStringField
      FieldName = 'registrodirecao_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadonomecontato_con: TStringField
      FieldName = 'nomecontato_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadofonecont1_con: TStringField
      FieldName = 'fonecont1_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadofonecont2_con: TStringField
      FieldName = 'fonecont2_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadofaxcont_con: TStringField
      FieldName = 'faxcont_con'
      FixedChar = True
    end
    object spc_cons_adm_conveniadoprocesso_con: TStringField
      FieldName = 'processo_con'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_conveniadodtassinatura_con: TDateTimeField
      FieldName = 'dtassinatura_con'
    end
    object spc_cons_adm_conveniadodtrenovacao_con: TDateTimeField
      FieldName = 'dtrenovacao_con'
    end
    object spc_cons_adm_conveniadoemail_con: TStringField
      FieldName = 'email_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadosite_con: TStringField
      FieldName = 'site_con'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_conveniadoenderecojur_con: TStringField
      FieldName = 'enderecojur_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadobairrojur_con: TStringField
      FieldName = 'bairrojur_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadocidadejur_con: TStringField
      FieldName = 'cidadejur_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadocepjur_con: TStringField
      FieldName = 'cepjur_con'
      FixedChar = True
      Size = 9
    end
    object spc_cons_adm_conveniadoenderecocor_con: TStringField
      FieldName = 'enderecocor_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadobairrocor_con: TStringField
      FieldName = 'bairrocor_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadocidadecor_con: TStringField
      FieldName = 'cidadecor_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadodtcadastro_con: TDateTimeField
      FieldName = 'dtcadastro_con'
    end
    object spc_cons_adm_conveniadodtsituacao_con: TDateTimeField
      FieldName = 'dtsituacao_con'
    end
    object spc_cons_adm_conveniadoporte1_pan: TFloatField
      FieldName = 'porte1_pan'
    end
    object spc_cons_adm_conveniadoporte2_pan: TFloatField
      FieldName = 'porte2_pan'
    end
    object spc_cons_adm_conveniadoporte3_pan: TFloatField
      FieldName = 'porte3_pan'
    end
    object spc_cons_adm_conveniadoporte4_pan: TFloatField
      FieldName = 'porte4_pan'
    end
    object spc_cons_adm_conveniadoporte5_pan: TFloatField
      FieldName = 'porte5_pan'
    end
    object spc_cons_adm_conveniadoporte6_pan: TFloatField
      FieldName = 'porte6_pan'
    end
    object spc_cons_adm_conveniadoporte7_pan: TFloatField
      FieldName = 'porte7_pan'
    end
    object spc_cons_adm_conveniadoporte8_pan: TFloatField
      FieldName = 'porte8_pan'
    end
    object spc_cons_adm_conveniadoobs_con: TMemoField
      FieldName = 'obs_con'
      BlobType = ftMemo
    end
  end
  object spc_cons_med_especialidadesplanos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_especialidadesplanos'
    Left = 88
    Top = 143
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_especialidadesplanoscod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_especialidadesplanosnome_stc: TStringField
      FieldName = 'nome_stc'
      FixedChar = True
      Size = 35
    end
    object spc_cons_med_especialidadesplanosnomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_especialidadesplanosrazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_especialidadesplanosdtsituacao_con: TDateTimeField
      FieldName = 'dtsituacao_con'
    end
    object spc_cons_med_especialidadesplanoscnpj_con: TStringField
      FieldName = 'cnpj_con'
      FixedChar = True
    end
    object spc_cons_med_especialidadesplanosnome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_especialidadesplanoscod_espmedamb: TIntegerField
      FieldName = 'cod_espmedamb'
    end
    object spc_cons_med_especialidadesplanosnome_esp: TStringField
      FieldName = 'nome_esp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_conveniadoplano: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoplano'
    Left = 92
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_conveniadoplanocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_conveniadoplanonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_conveniadoplanodescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_concessaointernacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_concessaointernacao'
    Left = 286
    Top = 247
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_autorizainternacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_concessaointernacaocod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_concessaointernacaosequencia_cin: TIntegerField
      FieldName = 'sequencia_cin'
    end
    object spc_cons_med_concessaointernacaodtautorizacao_cin: TDateTimeField
      FieldName = 'dtautorizacao_cin'
    end
    object spc_cons_med_concessaointernacaonumdiarias_cin: TIntegerField
      FieldName = 'numdiarias_cin'
    end
    object spc_cons_med_concessaointernacaodtinicio_cin: TDateTimeField
      FieldName = 'dtinicio_cin'
    end
    object spc_cons_med_concessaointernacaodtfinal_cin: TDateTimeField
      FieldName = 'dtfinal_cin'
    end
    object spc_cons_med_concessaointernacaoauditor_cin: TStringField
      FieldName = 'auditor_cin'
      FixedChar = True
      Size = 80
    end
    object spc_cons_med_concessaointernacaojustificativa_cin: TStringField
      FieldName = 'justificativa_cin'
      FixedChar = True
      Size = 180
    end
    object spc_cons_med_concessaointernacaocod_statusAutorizaInternacao: TIntegerField
      FieldName = 'cod_statusAutorizaInternacao'
    end
    object spc_cons_med_concessaointernacaodescricao_sai: TStringField
      FieldName = 'descricao_sai'
      FixedChar = True
      Size = 15
    end
  end
  object spc_cons_med_controleuti: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_controleuti'
    Left = 286
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_autorizainternacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_controleuticod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_controleutisequencia_uti: TIntegerField
      FieldName = 'sequencia_uti'
    end
    object spc_cons_med_controleutidtinternacao_uti: TDateTimeField
      FieldName = 'dtinternacao_uti'
    end
    object spc_cons_med_controleutidtalta_uti: TDateTimeField
      FieldName = 'dtalta_uti'
    end
    object spc_cons_med_controleutinumdiarias_uti: TIntegerField
      FieldName = 'numdiarias_uti'
    end
    object spc_cons_med_controleutijustificativa_uti: TStringField
      FieldName = 'justificativa_uti'
      FixedChar = True
      Size = 180
    end
    object spc_cons_med_controleuticod_statusAutorizaInternacao: TIntegerField
      FieldName = 'cod_statusAutorizaInternacao'
    end
    object spc_cons_med_controleutidescricao_sai: TStringField
      FieldName = 'descricao_sai'
      FixedChar = True
      Size = 15
    end
  end
  object spc_cont_reagendarParcelamento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cont_reagendarParcelamento'
    Left = 88
    Top = 194
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_descontofolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@parcela_par'
        ParamType = ptInput
        Value = 0
      end>
  end
  object spc_cons_med_tlMaterialProcPrincipal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_tlMaterialProcPrincipal'
    Left = 92
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_itemservico'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
        Value = '01/01/2003'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_tlMaterialProcPrincipalcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_tlMaterialProcPrincipaldtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_tlMaterialProcPrincipalsequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_tlMaterialProcPrincipalsequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_tlMaterialProcPrincipalcod_especialidade: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object spc_cons_med_tlMaterialProcPrincipaltlItens: TFloatField
      FieldName = 'tlItens'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_tlMaterialProcPrincipaltlMaterial: TFloatField
      FieldName = 'tlMaterial'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_tlMaterialProcPrincipaltlMedicamento: TFloatField
      FieldName = 'tlMedicamento'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_tlMaterialProcPrincipaltlTotal: TFloatField
      FieldName = 'tlTotal'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_conveniadoendereco: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_conveniadoendereco'
    Left = 473
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_conveniadoenderecosequencia_cne: TSmallintField
      DisplayLabel = 'Seq.'
      FieldName = 'sequencia_cne'
    end
    object spc_cons_adm_conveniadoenderecorazao_cne: TStringField
      DisplayLabel = 'Nome do Conveniado'
      FieldName = 'razao_cne'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_conveniadoenderecocnpj_cne: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj_cne'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_conveniadoenderecoendereco_cne: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'endereco_cne'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_conveniadoenderecocep_cne: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep_cne'
      FixedChar = True
      Size = 9
    end
    object spc_cons_adm_conveniadoenderecobairro_cne: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro_cne'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadoenderecocidade_cne: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade_cne'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_conveniadoenderecouf_cne: TIntegerField
      DisplayLabel = 'UF'
      FieldName = 'uf_cne'
    end
    object spc_cons_adm_conveniadoenderecofone_cne: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'fone_cne'
      FixedChar = True
      Size = 25
    end
    object spc_cons_adm_conveniadoenderecocod_uf: TIntegerField
      FieldName = 'cod_uf'
    end
    object spc_cons_adm_conveniadoenderecocod_cidadeCEP: TIntegerField
      FieldName = 'cod_cidadeCEP'
    end
    object spc_cons_adm_conveniadoenderecorecolheISS_cne: TBooleanField
      FieldName = 'recolheISS_cne'
    end
    object spc_cons_adm_conveniadoenderecocod_fornecedorOrcom: TIntegerField
      DisplayLabel = 'Cod. Forn. ORCOM'
      FieldName = 'cod_fornecedorOrcom'
    end
  end
  object spc_cons_adm_falhasBaixa: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_falhasBaixa'
    Left = 92
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_bne'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_falhasBaixadtreferencia_bne: TDateTimeField
      FieldName = 'dtreferencia_bne'
    end
    object spc_cons_adm_falhasBaixacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_falhasBaixamatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_falhasBaixadigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_falhasBaixainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_falhasBaixacod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_falhasBaixavldesconto_bne: TFloatField
      FieldName = 'vldesconto_bne'
    end
    object spc_cons_adm_falhasBaixanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_descontovlgrande: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontovlgrande'
    Left = 478
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@valor'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_descontovlgrandeinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontovlgrandetitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontovlgrandenome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontovlgrandenome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontovlgrandedtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_descontovlgrandevldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontovlgrandecod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
  end
  object spc_cons_adm_divergenciavalores: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_divergenciavalores'
    Left = 288
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_divergenciavaloresinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_divergenciavalorestitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_divergenciavaloresmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_divergenciavaloresnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_divergenciavaloresnome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_divergenciavaloresvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_divergenciavaloresvldesconto_adf_1: TFloatField
      FieldName = 'vldesconto_adf_1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_divergenciavalorescod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_divergenciavaloresnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 3
    end
    object spc_cons_adm_divergenciavaloresidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
  end
  object spc_cons_adm_descEmpFolhaDif: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descEmpFolhaDif'
    Left = 92
    Top = 457
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2003'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_descEmpFolhaDifinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descEmpFolhaDiftitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descEmpFolhaDifnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descEmpFolhaDifcod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descEmpFolhaDifcod_empresafolha_1: TIntegerField
      FieldName = 'cod_empresafolha_1'
    end
    object spc_cons_adm_descEmpFolhaDifcod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descEmpFolhaDifvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_BenCanceladoFalecido: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_BenCanceladoFalecido'
    Left = 288
    Top = 457
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_BenCanceladoFalecidoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_BenCanceladoFalecidotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_BenCanceladoFalecidonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_BenCanceladoFalecidodtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_BenCanceladoFalecidonome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_inscritos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_inscritos'
    Left = 471
    Top = 457
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_inscritosinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_inscritostitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_inscritosnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_inscritosnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_inscritosdtinscricao_ben: TDateTimeField
      FieldName = 'dtinscricao_ben'
    end
    object spc_cons_adm_inscritosdtcadastro_ben: TDateTimeField
      FieldName = 'dtcadastro_ben'
    end
  end
  object spc_cons_adm_mudarplano: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_mudarplano'
    Left = 476
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_mudarplanoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_mudarplanotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_mudarplanonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_mudarplanonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_mudarplanodtinscricao_ben: TDateTimeField
      FieldName = 'dtinscricao_ben'
    end
    object spc_cons_adm_mudarplanodtcadastro_ben: TDateTimeField
      FieldName = 'dtcadastro_ben'
    end
    object spc_cons_adm_mudarplanodtplano_ben: TDateTimeField
      FieldName = 'dtplano_ben'
    end
  end
  object spc_cons_adm_Ben18anos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_Ben18anos'
    Left = 292
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_Ben18anosinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_Ben18anostitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_Ben18anosnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_Ben18anosdtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_Ben18anosnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_Ben18anosdtinscricao_ben: TDateTimeField
      FieldName = 'dtinscricao_ben'
    end
    object spc_cons_adm_Ben18anosdtcadastro_ben: TDateTimeField
      FieldName = 'dtcadastro_ben'
    end
  end
  object spc_cons_adm_benefiporfaixa: TStoredProc
    OnCalcFields = spc_cons_adm_benefiporfaixaCalcFields
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_benefiporfaixa'
    Left = 92
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_dr1'
        ParamType = ptInput
        Value = '10/01/2003'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_benefiporfaixadescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_benefiporfaixaqtde_dr1: TIntegerField
      FieldName = 'qtde_dr1'
    end
    object spc_cons_adm_benefiporfaixavlcontribuicao_dr1: TFloatField
      FieldName = 'vlcontribuicao_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixavlpercapta_dr1: TFloatField
      FieldName = 'vlpercapta_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixavlpatrona_dr1: TFloatField
      FieldName = 'vlpatrona_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixavlpercaptasalarial_dr1: TFloatField
      FieldName = 'vlpercaptasalarial_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixaat0a500s_dr1: TIntegerField
      FieldName = 'at0a500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat500a750s_dr1: TIntegerField
      FieldName = 'at500a750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat750a1000s_dr1: TIntegerField
      FieldName = 'at750a1000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat1000a1250s_dr1: TIntegerField
      FieldName = 'at1000a1250s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat1250a1500s_dr1: TIntegerField
      FieldName = 'at1250a1500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat1500a1750s_dr1: TIntegerField
      FieldName = 'at1500a1750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat1750a2000s_dr1: TIntegerField
      FieldName = 'at1750a2000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaat2000eacimas_dr1: TIntegerField
      FieldName = 'at2000eacimas_dr1'
    end
    object spc_cons_adm_benefiporfaixaap0a500s_dr1: TIntegerField
      FieldName = 'ap0a500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap500a750s_dr1: TIntegerField
      FieldName = 'ap500a750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap750a1000s_dr1: TIntegerField
      FieldName = 'ap750a1000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap1000a1250s_dr1: TIntegerField
      FieldName = 'ap1000a1250s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap1250a1500s_dr1: TIntegerField
      FieldName = 'ap1250a1500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap1500a1750s_dr1: TIntegerField
      FieldName = 'ap1500a1750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap1750a2000s_dr1: TIntegerField
      FieldName = 'ap1750a2000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaap2000eacimas_dr1: TIntegerField
      FieldName = 'ap2000eacimas_dr1'
    end
    object spc_cons_adm_benefiporfaixape0a500s_dr1: TIntegerField
      FieldName = 'pe0a500s_dr1'
    end
    object spc_cons_adm_benefiporfaixape500a750s_dr1: TIntegerField
      FieldName = 'pe500a750s_dr1'
    end
    object spc_cons_adm_benefiporfaixape750a1000s_dr1: TIntegerField
      FieldName = 'pe750a1000s_dr1'
    end
    object spc_cons_adm_benefiporfaixape1000a1250s_dr1: TIntegerField
      FieldName = 'pe1000a1250s_dr1'
    end
    object spc_cons_adm_benefiporfaixape1250a1500s_dr1: TIntegerField
      FieldName = 'pe1250a1500s_dr1'
    end
    object spc_cons_adm_benefiporfaixape1500a1750s_dr1: TIntegerField
      FieldName = 'pe1500a1750s_dr1'
    end
    object spc_cons_adm_benefiporfaixape1750a2000s_dr1: TIntegerField
      FieldName = 'pe1750a2000s_dr1'
    end
    object spc_cons_adm_benefiporfaixape2000eacimas_dr1: TIntegerField
      FieldName = 'pe2000eacimas_dr1'
    end
    object spc_cons_adm_benefiporfaixaex0a500s_dr1: TIntegerField
      FieldName = 'ex0a500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex500a750s_dr1: TIntegerField
      FieldName = 'ex500a750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex750a1000s_dr1: TIntegerField
      FieldName = 'ex750a1000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex1000a1250s_dr1: TIntegerField
      FieldName = 'ex1000a1250s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex1250a1500s_dr1: TIntegerField
      FieldName = 'ex1250a1500s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex1500a1750s_dr1: TIntegerField
      FieldName = 'ex1500a1750s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex1750a2000s_dr1: TIntegerField
      FieldName = 'ex1750a2000s_dr1'
    end
    object spc_cons_adm_benefiporfaixaex2000eacimas_dr1: TIntegerField
      FieldName = 'ex2000eacimas_dr1'
    end
    object spc_cons_adm_benefiporfaixaquantmascs_dr1: TIntegerField
      FieldName = 'quantmascs_dr1'
    end
    object spc_cons_adm_benefiporfaixaquantfemis_dr1: TIntegerField
      FieldName = 'quantfemis_dr1'
    end
    object spc_cons_adm_benefiporfaixavalormascs_dr1: TFloatField
      FieldName = 'valormascs_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixavalorfemis_dr1: TFloatField
      FieldName = 'valorfemis_dr1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixatlfxetariape: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tlfxetariape'
      Calculated = True
    end
    object spc_cons_adm_benefiporfaixatlfxetariaat: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tlfxetariaat'
      Calculated = True
    end
    object spc_cons_adm_benefiporfaixatlfxetariaap: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tlfxetariaap'
      Calculated = True
    end
    object spc_cons_adm_benefiporfaixatlfxetariaex: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tlfxetariaex'
      Calculated = True
    end
    object spc_cons_adm_benefiporfaixavltotal: TFloatField
      FieldName = 'vltotal'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_benefiporfaixavltotalpercapta: TFloatField
      FieldName = 'vltotalpercapta'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_contratoServicoEspecial: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contratoServicoEspecial'
    Left = 650
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contratoServicoEspecialcod_contratoServicoEspecial: TIntegerField
      FieldName = 'cod_contratoServicoEspecial'
    end
    object spc_cons_adm_contratoServicoEspecialcod_conveniado: TIntegerField
      DisplayLabel = 'Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_contratoServicoEspecialdescricao_cse: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_cse'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contratoServicoEspecialvalor_cse: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_cse'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_contratoServicoEspecialsituacao_cse: TIntegerField
      DisplayLabel = 'Situação'
      FieldName = 'situacao_cse'
    end
    object spc_cons_adm_contratoServicoEspecialdescsituacao: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'descsituacao'
      FixedChar = True
      Size = 9
    end
    object spc_cons_adm_contratoServicoEspecialdotacao_cse: TStringField
      DisplayLabel = 'Dotação'
      FieldName = 'dotacao_cse'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contratoServicoEspecialempenho_cse: TStringField
      DisplayLabel = 'Empenho'
      FieldName = 'empenho_cse'
      FixedChar = True
    end
  end
  object spc_cons_adm_itemServicoEspecial: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_itemServicoEspecial'
    Left = 658
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_contratoServicoEspecial'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_itemServicoEspecialcod_itemServicoEspecial: TIntegerField
      FieldName = 'cod_itemServicoEspecial'
    end
    object spc_cons_adm_itemServicoEspecialcod_contratoServicoEspecial: TIntegerField
      FieldName = 'cod_contratoServicoEspecial'
    end
    object spc_cons_adm_itemServicoEspecialcod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_itemServicoEspecialcod_itemServico: TIntegerField
      DisplayLabel = 'Item Serviço'
      FieldName = 'cod_itemServico'
    end
    object spc_cons_adm_itemServicoEspecialdotacao_ise: TStringField
      DisplayLabel = 'Dotação'
      FieldName = 'dotacao_ise'
      FixedChar = True
    end
    object spc_cons_adm_itemServicoEspecialnome_pla: TStringField
      DisplayLabel = 'Plano'
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_med_conveniadoProcesso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoProcesso'
    Left = 658
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_conveniadoProcessocod_conveniadoProcesso: TAutoIncField
      FieldName = 'cod_conveniadoProcesso'
    end
    object spc_cons_med_conveniadoProcessocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoProcessoprocesso_cpr: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'processo_cpr'
    end
    object spc_cons_med_conveniadoProcessoanoProcesso_cpr: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'anoProcesso_cpr'
    end
    object spc_cons_med_conveniadoProcessonumConvenio_cpr: TIntegerField
      DisplayLabel = 'Convenio'
      FieldName = 'numConvenio_cpr'
    end
    object spc_cons_med_conveniadoProcessoanoConvenio_cpr: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'anoConvenio_cpr'
    end
    object spc_cons_med_conveniadoProcessodataAssinatura_cpr: TDateTimeField
      DisplayLabel = 'Dt. Assinatura'
      FieldName = 'dataAssinatura_cpr'
    end
    object spc_cons_med_conveniadoProcessodataRenovacao_cpr: TDateTimeField
      DisplayLabel = 'Dt. Renovação'
      FieldName = 'dataRenovacao_cpr'
    end
    object spc_cons_med_conveniadoProcessodataVencimento_cpr: TDateTimeField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'dataVencimento_cpr'
    end
    object spc_cons_med_conveniadoProcessodataSistema_cpr: TDateTimeField
      DisplayLabel = 'Dt. Alteração'
      FieldName = 'dataSistema_cpr'
    end
    object spc_cons_med_conveniadoProcessocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_conveniadoProcessonome_usu: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_med_conveniadoProcessoobs_cpr: TMemoField
      FieldName = 'obs_cpr'
      BlobType = ftMemo
    end
    object spc_cons_med_conveniadoProcessocod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_cons_med_conveniadoProcessodescricao_sta: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'descricao_sta'
      FixedChar = True
    end
  end
  object spc_cons_med_empenhoConveniado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_empenhoConveniado'
    Left = 658
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniadoProcesso'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_empenhoConveniadocod_empenhoConveniado: TAutoIncField
      FieldName = 'cod_empenhoConveniado'
    end
    object spc_cons_med_empenhoConveniadocod_conveniadoProcesso: TIntegerField
      FieldName = 'cod_conveniadoProcesso'
    end
    object spc_cons_med_empenhoConveniadonumEmpenho_emc: TIntegerField
      DisplayLabel = 'Nº Empenho'
      FieldName = 'numEmpenho_emc'
    end
    object spc_cons_med_empenhoConveniadoanoEmpenho_emc: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'anoEmpenho_emc'
    end
    object spc_cons_med_empenhoConveniadovlEmpenho_emc: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vlEmpenho_emc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_empenhoConveniadosaldoEmpenho_emc: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldoEmpenho_emc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_empenhoConveniadodtsistema_emc: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtsistema_emc'
    end
    object spc_cons_med_empenhoConveniadocod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_cons_med_empenhoConveniadodescricao_sta: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'descricao_sta'
      FixedChar = True
    end
    object spc_cons_med_empenhoConveniadocnpj_emc: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj_emc'
      FixedChar = True
      Size = 18
    end
    object spc_cons_med_empenhoConveniadonumeroPA_emc: TIntegerField
      DisplayLabel = 'Nº PA'
      FieldName = 'numeroPA_emc'
    end
  end
  object spc_cons_adm_planopagto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_planopagto'
    Left = 658
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_adm_planopagtoseq_ppg: TAutoIncField
      FieldName = 'seq_ppg'
    end
    object spc_cons_adm_planopagtodesc_ppg: TStringField
      DisplayWidth = 16
      FieldName = 'desc_ppg'
      FixedChar = True
      Size = 60
    end
    object spc_cons_adm_planopagtodtlim1_ppg: TStringField
      DisplayWidth = 13
      FieldName = 'dtlim1_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim2_ppg: TStringField
      DisplayWidth = 13
      FieldName = 'dtlim2_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim3_ppg: TStringField
      DisplayWidth = 13
      FieldName = 'dtlim3_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim4_ppg: TStringField
      DisplayWidth = 12
      FieldName = 'dtlim4_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim5_ppg: TStringField
      DisplayWidth = 13
      FieldName = 'dtlim5_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim6_ppg: TStringField
      DisplayWidth = 14
      FieldName = 'dtlim6_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim7_ppg: TStringField
      DisplayWidth = 19
      FieldName = 'dtlim7_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim8_ppg: TStringField
      DisplayWidth = 19
      FieldName = 'dtlim8_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim9_ppg: TStringField
      DisplayWidth = 19
      FieldName = 'dtlim9_ppg'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_planopagtodtlim10_ppg: TStringField
      DisplayWidth = 19
      FieldName = 'dtlim10_ppg'
      FixedChar = True
      Size = 16
    end
  end
  object spc_cons_med_histcondcomerciais: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_med_histcondcomerciais'
    Left = 658
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_histcondcomerciaiscod_condcomerc: TAutoIncField
      FieldName = 'cod_condcomerc'
    end
    object spc_cons_med_histcondcomerciaiscod_tipocondcomerc: TAutoIncField
      FieldName = 'cod_tipocondcomerc'
    end
    object spc_cons_med_histcondcomerciaisnome_tcc: TStringField
      FieldName = 'nome_tcc'
      FixedChar = True
      Size = 100
    end
    object spc_cons_med_histcondcomerciaispercentual_cco: TFloatField
      FieldName = 'percentual_cco'
      DisplayFormat = '##0.00'
    end
    object spc_cons_med_histcondcomerciaisdatainicial_cco: TDateTimeField
      FieldName = 'datainicial_cco'
    end
    object spc_cons_med_histcondcomerciaisdatafinal_cco: TDateTimeField
      FieldName = 'datafinal_cco'
    end
    object spc_cons_med_histcondcomerciaisnome_agr: TStringField
      FieldName = 'nome_agr'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_contribPFGBPeriodo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_contribPFGBPeriodo'
    Left = 658
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferenciaini_cpb'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftString
        Name = '@dtreferenciafim_cpb'
        ParamType = ptInput
        Value = '99/99/9999'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_grauparent'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contribPFGBPeriododtreferencia_cpb: TDateTimeField
      FieldName = 'dtreferencia_cpb'
    end
    object spc_cons_adm_contribPFGBPeriodocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_contribPFGBPeriodomatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_contribPFGBPeriododigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_contribPFGBPeriodoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_contribPFGBPeriodotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_contribPFGBPeriodonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_contribPFGBPeriodonome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_contribPFGBPeriodonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBPeriodocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_contribPFGBPeriododtsistema_cpb: TDateTimeField
      FieldName = 'dtsistema_cpb'
    end
    object spc_cons_adm_contribPFGBPeriododtretroativo_cpb: TDateTimeField
      FieldName = 'dtretroativo_cpb'
    end
    object spc_cons_adm_contribPFGBPeriodocod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_contribPFGBPeriodocod_grauparent: TIntegerField
      FieldName = 'cod_grauparent'
    end
    object spc_cons_adm_contribPFGBPeriodocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_contribPFGBPeriodonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_contribPFGBPeriodocod_sitcontribPFGB: TIntegerField
      FieldName = 'cod_sitcontribPFGB'
    end
    object spc_cons_adm_contribPFGBPeriodonome_scp: TStringField
      FieldName = 'nome_scp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBPeriodocod_contribpfgb: TAutoIncField
      FieldName = 'cod_contribpfgb'
    end
    object spc_cons_adm_contribPFGBPeriododescricao_emp: TStringField
      FieldName = 'descricao_emp'
      FixedChar = True
      Size = 60
    end
    object spc_cons_adm_contribPFGBPeriodoobservacao_cpb: TStringField
      FieldName = 'observacao_cpb'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBPeriododtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_contribPFGBPeriodosexo_ben: TStringField
      FieldName = 'sexo_ben'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_contribPFGBPeriodocidade_cep: TStringField
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_contribPFGBPeriodosigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
  end
  object spc_cons_adm_simulaContrib02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_simulaContrib02'
    Left = 658
    Top = 356
    ParamData = <
      item
        DataType = ftString
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_simulaContrib02cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_simulaContrib02inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_simulaContrib02nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_simulaContrib02cod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_simulaContrib02cod_tiposegurado: TIntegerField
      FieldName = 'cod_tiposegurado'
    end
    object spc_cons_adm_simulaContrib02cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_simulaContrib02cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_simulaContrib02vldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_simulaContrib02idadecontrib_ben: TIntegerField
      FieldName = 'idadecontrib_ben'
    end
    object spc_cons_adm_simulaContrib02cod_planopagto: TIntegerField
      FieldName = 'cod_planopagto'
    end
    object spc_cons_adm_simulaContrib02planoAtual: TIntegerField
      FieldName = 'planoAtual'
    end
    object spc_cons_adm_simulaContrib02vlfixo_piv: TFloatField
      FieldName = 'vlfixo_piv'
    end
    object spc_cons_adm_simulaContrib02Opcao1: TIntegerField
      FieldName = 'Opcao1'
    end
    object spc_cons_adm_simulaContrib02Opcao2: TIntegerField
      FieldName = 'Opcao2'
    end
    object spc_cons_adm_simulaContrib02Opcao3: TIntegerField
      FieldName = 'Opcao3'
    end
    object spc_cons_adm_simulaContrib02vlOpcao1: TFloatField
      FieldName = 'vlOpcao1'
    end
    object spc_cons_adm_simulaContrib02vlOpcao2: TFloatField
      FieldName = 'vlOpcao2'
    end
    object spc_cons_adm_simulaContrib02vlOpcao3: TFloatField
      FieldName = 'vlOpcao3'
    end
    object spc_cons_adm_simulaContrib02salario: TFloatField
      FieldName = 'salario'
    end
    object spc_cons_adm_simulaContrib02nome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_simulaContrib02nomePlaOp1: TStringField
      FieldName = 'nomePlaOp1'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_simulaContrib02nomePlaOp2: TStringField
      FieldName = 'nomePlaOp2'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_simulaContrib02nomePlaOp3: TStringField
      FieldName = 'nomePlaOp3'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_med_totalEmpenhoPA: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_totalEmpenhoPA'
    Left = 659
    Top = 409
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cnpj_emc'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_totalEmpenhoPAnumeroPA_clp: TIntegerField
      DisplayLabel = 'Nº PA'
      FieldName = 'numeroPA_clp'
    end
    object spc_cons_med_totalEmpenhoPAcod_empenhoConveniado: TIntegerField
      DisplayLabel = 'Cod. Emp.'
      FieldName = 'cod_empenhoConveniado'
    end
    object spc_cons_med_totalEmpenhoPAnumEmpenho_emc: TIntegerField
      DisplayLabel = 'Empenho'
      FieldName = 'numEmpenho_emc'
    end
    object spc_cons_med_totalEmpenhoPAanoEmpenho_emc: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'anoEmpenho_emc'
    end
    object spc_cons_med_totalEmpenhoPAvlEmpenho_emc: TFloatField
      DisplayLabel = 'Valor Empenho'
      FieldName = 'vlEmpenho_emc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalEmpenhoPAvlinformado_itc: TFloatField
      DisplayLabel = 'Vl. Apresentado'
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalEmpenhoPAvlpagar_itc: TFloatField
      DisplayLabel = 'Valor Repassado'
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalEmpenhoPAvlpagoEmpenho: TFloatField
      DisplayLabel = 'Vl. Pg. Empenho'
      FieldName = 'vlpagoEmpenho'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalEmpenhoPASaldoApresentado: TFloatField
      DisplayLabel = 'Saldo Apresentado'
      FieldName = 'SaldoApresentado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalEmpenhoPASaldoRepassado: TFloatField
      DisplayLabel = 'Saldo Repassado'
      FieldName = 'SaldoRepassado'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_extratoCopartBenefi: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_extratoCopartBenefi'
    Left = 661
    Top = 459
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtCoparticipacao'
        ParamType = ptInput
        Value = '01/01/2019'
      end>
    object spc_cons_adm_extratoCopartBeneficod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_extratoCopartBenefinome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoCopartBenefidtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_extratoCopartBenefisequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_adm_extratoCopartBenefisequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_adm_extratoCopartBenefidtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_adm_extratoCopartBeneficod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_adm_extratoCopartBenefinome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_adm_extratoCopartBenefiqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_adm_extratoCopartBenefivlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_adm_extratoCopartBenefivlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_adm_extratoCopartBenefivlcoparticipacao_itc: TFloatField
      FieldName = 'vlcoparticipacao_itc'
    end
    object spc_cons_adm_extratoCopartBeneficod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_extratoCopartBenefiinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_extratoCopartBenefititulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_extratoCopartBenefinome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoCopartBeneficod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_extratoCopartBenefidtCoparticipacao_cta: TDateTimeField
      FieldName = 'dtCoparticipacao_cta'
    end
  end
  object spc_cons_adm_extratoCopartTitular: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_extratoCopartTitular'
    Left = 669
    Top = 543
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtCoparticipacao'
        ParamType = ptInput
        Value = '01/01/2019'
      end>
    object spc_cons_adm_extratoCopartTitularcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_extratoCopartTitularnome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoCopartTitulardtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_extratoCopartTitulardtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_adm_extratoCopartTitularcod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_adm_extratoCopartTitularnome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_adm_extratoCopartTitularqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_adm_extratoCopartTitularvlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_adm_extratoCopartTitularvlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_adm_extratoCopartTitularvlcoparticipacao_itc: TFloatField
      FieldName = 'vlcoparticipacao_itc'
    end
    object spc_cons_adm_extratoCopartTitularcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_extratoCopartTitularinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_extratoCopartTitulartitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_extratoCopartTitularnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoCopartTitularcod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_extratoCopartTitulardtCoparticipacao_cta: TDateTimeField
      FieldName = 'dtCoparticipacao_cta'
    end
    object spc_cons_adm_extratoCopartTitularidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
  end
  object spc_cons_adm_fechamentoCopartMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoCopartMensal'
    Left = 94
    Top = 535
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end>
    object spc_cons_adm_fechamentoCopartMensaldtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_fechamentoCopartMensalcod_faixaetaria: TIntegerField
      FieldName = 'cod_faixaetaria'
    end
    object spc_cons_adm_fechamentoCopartMensalcod_plano: TStringField
      FieldName = 'cod_plano'
      FixedChar = True
      Size = 4
    end
    object spc_cons_adm_fechamentoCopartMensalnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoCopartMensaldescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoCopartMensaldescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_fechamentoCopartMensalgrupo_fxe: TSmallintField
      FieldName = 'grupo_fxe'
    end
    object spc_cons_adm_fechamentoCopartMensalqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoCopartMensalvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoCopartMensalvlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
    object spc_cons_adm_fechamentoCopartMensalvlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_adm_fechamentoCopartPeriodo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoCopartPeriodo'
    Left = 320
    Top = 535
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_ini'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_fim'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end>
    object spc_cons_adm_fechamentoCopartPeriododtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_fechamentoCopartPeriodocod_plano: TStringField
      FieldName = 'cod_plano'
      FixedChar = True
      Size = 4
    end
    object spc_cons_adm_fechamentoCopartPeriodonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoCopartPeriodoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoCopartPeriodovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoCopartPeriodovlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
    object spc_cons_adm_fechamentoCopartPeriodovlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_adm_fechamentoCopartDetalhado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoCopartDetalhado'
    Left = 489
    Top = 511
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end>
    object spc_cons_adm_fechamentoCopartDetalhadocarteira: TStringField
      FieldName = 'carteira'
      FixedChar = True
      Size = 45
    end
    object spc_cons_adm_fechamentoCopartDetalhadonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoCopartDetalhadoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_fechamentoCopartDetalhadovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoCopartDetalhadovlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
  end
  object spc_cons_adm_fechamentoOdonto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoOdonto'
    Left = 85
    Top = 592
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2019'
      end>
    object spc_cons_adm_fechamentoOdontodtReferencia: TDateTimeField
      FieldName = 'dtReferencia'
    end
    object spc_cons_adm_fechamentoOdontoplano: TStringField
      FieldName = 'plano'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_fechamentoOdontoempresa: TIntegerField
      FieldName = 'empresa'
    end
    object spc_cons_adm_fechamentoOdontonome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoOdontopagamento: TStringField
      FieldName = 'pagamento'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoOdontoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoOdontovalor: TFloatField
      FieldName = 'valor'
    end
    object spc_cons_adm_fechamentoOdontoordem: TIntegerField
      FieldName = 'ordem'
    end
    object spc_cons_adm_fechamentoOdontosituacao: TStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 50
    end
  end
end
