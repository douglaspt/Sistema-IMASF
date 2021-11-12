object fdt_principal5: Tfdt_principal5
  OldCreateOrder = False
  Left = 1
  Top = 1
  Height = 800
  Width = 945
  object spc_cons_adm_totalBenefiAtivo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalBenefiAtivo'
    Left = 75
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_tba'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_totalBenefiAtivodescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalBenefiAtivodtreferencia_tba: TDateTimeField
      FieldName = 'dtreferencia_tba'
    end
    object spc_cons_adm_totalBenefiAtivocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_totalBenefiAtivocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_totalBenefiAtivonome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_totalBenefiAtivoqtde_tba: TIntegerField
      FieldName = 'qtde_tba'
    end
    object spc_cons_adm_totalBenefiAtivonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_histOcorrenciaEdital: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histOcorrenciaEdital'
    Left = 282
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = '@dtOcorrenciaInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtOcorrenciaFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtReferencia_hoe'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtSistemaInicial'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtSistemaFinal'
        ParamType = ptInput
      end>
    object spc_cons_adm_histOcorrenciaEditalcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_histOcorrenciaEditalinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_histOcorrenciaEditaltitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_histOcorrenciaEditalidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_histOcorrenciaEditalnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_histOcorrenciaEditalnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_histOcorrenciaEditalcod_ocorrenciaEdital: TIntegerField
      DisplayLabel = 'Cod. Ocorr.'
      FieldName = 'cod_ocorrenciaEdital'
    end
    object spc_cons_adm_histOcorrenciaEditaldtOcorrencia_hoe: TDateTimeField
      DisplayLabel = 'Dt. Ocorr�ncia'
      FieldName = 'dtOcorrencia_hoe'
    end
    object spc_cons_adm_histOcorrenciaEditaldtSistema_hoe: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtSistema_hoe'
    end
    object spc_cons_adm_histOcorrenciaEditaldescricao_oce: TStringField
      DisplayLabel = 'Descri��o'
      FieldName = 'descricao_oce'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_histOcorrenciaEditaltipo_oce: TStringField
      FieldName = 'tipo_oce'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_histOcorrenciaEditalcod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_histOcorrenciaEditaldtReferencia_hoe: TDateTimeField
      FieldName = 'dtReferencia_hoe'
    end
  end
  object spc_cons_adm_TextoEdital: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_TextoEdital'
    Left = 529
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = '@dtOcorrenciaInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtOcorrenciaFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtReferencia_hoe'
        ParamType = ptInput
      end>
    object spc_cons_adm_TextoEditalcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_TextoEditalinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_TextoEditaltitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_TextoEditalidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_TextoEditalnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_TextoEditalnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_TextoEditalcod_ocorrenciaEdital: TIntegerField
      FieldName = 'cod_ocorrenciaEdital'
    end
    object spc_cons_adm_TextoEditalcod_textoEdital: TIntegerField
      FieldName = 'cod_textoEdital'
    end
    object spc_cons_adm_TextoEditaldescricao_ted: TStringField
      FieldName = 'descricao_ted'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_TextoEditalprocesso_ben: TStringField
      FieldName = 'processo_ben'
      FixedChar = True
      Size = 10
    end
  end
  object spc_cons_adm_totalBenefiAtivo02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalBenefiAtivo02'
    Left = 75
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_dr2'
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
        Name = '@tipoClassificacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_totalBenefiAtivo02dtreferencia_dr2: TDateTimeField
      FieldName = 'dtreferencia_dr2'
    end
    object spc_cons_adm_totalBenefiAtivo02cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_totalBenefiAtivo02nome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_totalBenefiAtivo02cod_faixaEtaria: TIntegerField
      FieldName = 'cod_faixaEtaria'
    end
    object spc_cons_adm_totalBenefiAtivo02descricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalBenefiAtivo02tlSegurados: TIntegerField
      FieldName = 'tlSegurados'
    end
    object spc_cons_adm_totalBenefiAtivo02tlDependentes: TIntegerField
      FieldName = 'tlDependentes'
    end
    object spc_cons_adm_totalBenefiAtivo02tlPensionistas: TIntegerField
      FieldName = 'tlPensionistas'
    end
    object spc_cons_adm_totalBenefiAtivo02tlAssistidos: TIntegerField
      FieldName = 'tlAssistidos'
    end
  end
  object spc_cons_adm_totalBenefiAtivo03: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalBenefiAtivo03'
    Left = 284
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_dr2'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = 1
      end>
    object spc_cons_adm_totalBenefiAtivo03dtreferencia_dr2: TDateTimeField
      FieldName = 'dtreferencia_dr2'
    end
    object spc_cons_adm_totalBenefiAtivo03cod_faixaEtaria: TIntegerField
      FieldName = 'cod_faixaEtaria'
    end
    object spc_cons_adm_totalBenefiAtivo03descricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalBenefiAtivo03tlSegurados: TIntegerField
      FieldName = 'tlSegurados'
    end
    object spc_cons_adm_totalBenefiAtivo03tlDependentes: TIntegerField
      FieldName = 'tlDependentes'
    end
    object spc_cons_adm_totalBenefiAtivo03tlPensionistas: TIntegerField
      FieldName = 'tlPensionistas'
    end
    object spc_cons_adm_totalBenefiAtivo03tlAssistidos: TIntegerField
      FieldName = 'tlAssistidos'
    end
    object spc_cons_adm_totalBenefiAtivo03Sem_Ass: TIntegerField
      FieldName = 'Sem_Ass'
    end
  end
  object spc_cons_adm_Ocorrenciaedital: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_Ocorrenciaedital'
    Left = 529
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = '@dtOcorrenciaInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtOcorrenciaFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtReferencia_hoe'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@tipo_oce'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_Ocorrenciaeditalcod_ocorrenciaEdital: TIntegerField
      FieldName = 'cod_ocorrenciaEdital'
    end
    object spc_cons_adm_Ocorrenciaeditaldescricao_oce: TStringField
      FieldName = 'descricao_oce'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_Ocorrenciaeditaltipo_oce: TStringField
      FieldName = 'tipo_oce'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_Ocorrenciaeditalcod_textoEdital: TIntegerField
      FieldName = 'cod_textoEdital'
    end
    object spc_cons_adm_OcorrenciaeditalTlEnf: TIntegerField
      FieldName = 'TlEnf'
    end
    object spc_cons_adm_OcorrenciaeditalTlInt: TIntegerField
      FieldName = 'TlInt'
    end
    object spc_cons_adm_OcorrenciaeditalTlEsp2: TIntegerField
      FieldName = 'TlEsp'
    end
    object spc_cons_adm_OcorrenciaeditalTlApa: TIntegerField
      FieldName = 'TlApa'
    end
    object spc_cons_adm_Ocorrenciaeditaltotalbenefi2: TIntegerField
      FieldName = 'totalbenefi'
    end
  end
  object spc_cons_med_pendenciaContaMed: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pendenciaContaMed'
    Left = 76
    Top = 93
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_ctm'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_pendenciaContaMedcod_pendenciaContaMed: TAutoIncField
      DisplayLabel = 'C�digo'
      FieldName = 'cod_pendenciaContaMed'
    end
    object spc_cons_med_pendenciaContaMedcod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conveniado'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_pendenciaContaMeddtreferencia_ctm: TDateTimeField
      DisplayLabel = 'Dt. Refer�ncia'
      FieldName = 'dtreferencia_ctm'
    end
    object spc_cons_med_pendenciaContaMeddescricao_ctm: TStringField
      DisplayLabel = 'Descri��o'
      FieldName = 'descricao_ctm'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_pendenciaContaMedcod_statuspendencia: TIntegerField
      FieldName = 'cod_statuspendencia'
    end
    object spc_cons_med_pendenciaContaMeddescricao_stp: TStringField
      DisplayLabel = 'Status'
      FieldName = 'descricao_stp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_vlcontribuicao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_vlcontribuicao'
    Left = 286
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_vlcontribuicaovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_vlcontribuicaodtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_glosa02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_glosa02'
    Left = 529
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@internacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_glosa02cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_glosa02dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_glosa02sequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_glosa02sequenciaconta_ctm: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_glosa02carteirainform_ctm: TStringField
      DisplayLabel = 'Carteira Informada'
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_glosa02nomebenefi_ctm: TStringField
      DisplayLabel = 'Nome do Benefici�rio'
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_glosa02dtentrada_ctm: TDateTimeField
      DisplayLabel = 'Dt. Atendimento'
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_glosa02cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_glosa02cod_acomodacao: TIntegerField
      FieldName = 'cod_acomodacao'
    end
    object spc_cons_glosa02dtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_glosa02cod_tipatendimento: TIntegerField
      FieldName = 'cod_tipatendimento'
    end
    object spc_cons_glosa02cod_cid: TStringField
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 6
    end
    object spc_cons_glosa02cod_especialidade: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object spc_cons_glosa02cod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
  end
  object spc_cons_med_autorizainternacao02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_autorizainternacao02'
    Left = 76
    Top = 139
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_autorizainternacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_autorizainternacao02cod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_autorizainternacao02cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_autorizainternacao02nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao02enderecojur_con: TStringField
      FieldName = 'enderecojur_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao02bairrojur_con: TStringField
      FieldName = 'bairrojur_con'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_autorizainternacao02fonedirecao_con: TStringField
      FieldName = 'fonedirecao_con'
      FixedChar = True
    end
    object spc_cons_med_autorizainternacao02cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_autorizainternacao02nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao02cod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_autorizainternacao02medico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao02cod_cid: TStringField
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 6
    end
    object spc_cons_med_autorizainternacao02cod_acomodacao: TIntegerField
      FieldName = 'cod_acomodacao'
    end
    object spc_cons_med_autorizainternacao02nome_aco: TStringField
      FieldName = 'nome_aco'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_autorizainternacao02cod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_autorizainternacao02dtalteracao_ain: TDateTimeField
      FieldName = 'dtalteracao_ain'
    end
    object spc_cons_med_autorizainternacao02obs_ain: TStringField
      FieldName = 'obs_ain'
      FixedChar = True
      Size = 200
    end
    object spc_cons_med_autorizainternacao02cod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_autorizainternacao02nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao02dtprevisao_ain: TDateTimeField
      FieldName = 'dtprevisao_ain'
    end
  end
  object spc_cons_med_custoAgregadoPorMedico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_custoAgregadoPorMedico'
    Left = 281
    Top = 139
    ParamData = <
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
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@cod_crm'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_custoAgregadoPorMedicocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_custoAgregadoPorMedicomedico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_custoAgregadoPorMedicocod_classificacaoSADT: TIntegerField
      FieldName = 'cod_classificacaoSADT'
    end
    object spc_cons_med_custoAgregadoPorMedicodescricaoGrupo_csa: TStringField
      FieldName = 'descricaoGrupo_csa'
      FixedChar = True
      Size = 40
    end
    object spc_cons_med_custoAgregadoPorMedicodescricaoSubGrupo_csa: TStringField
      FieldName = 'descricaoSubGrupo_csa'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia1: TDateTimeField
      FieldName = 'referencia1'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde1: TIntegerField
      FieldName = 'qtde1'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor1: TFloatField
      FieldName = 'valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia2: TDateTimeField
      FieldName = 'referencia2'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde2: TIntegerField
      FieldName = 'qtde2'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor2: TFloatField
      FieldName = 'valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia3: TDateTimeField
      FieldName = 'referencia3'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde3: TIntegerField
      FieldName = 'qtde3'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor3: TFloatField
      FieldName = 'valor3'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia4: TDateTimeField
      FieldName = 'referencia4'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde4: TIntegerField
      FieldName = 'qtde4'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor4: TFloatField
      FieldName = 'valor4'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia5: TDateTimeField
      FieldName = 'referencia5'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde5: TIntegerField
      FieldName = 'qtde5'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor5: TFloatField
      FieldName = 'valor5'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia6: TDateTimeField
      FieldName = 'referencia6'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde6: TIntegerField
      FieldName = 'qtde6'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor6: TFloatField
      FieldName = 'valor6'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia7: TDateTimeField
      FieldName = 'referencia7'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde7: TIntegerField
      FieldName = 'qtde7'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor7: TFloatField
      FieldName = 'valor7'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia8: TDateTimeField
      FieldName = 'referencia8'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde8: TIntegerField
      FieldName = 'qtde8'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor8: TFloatField
      FieldName = 'valor8'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia9: TDateTimeField
      FieldName = 'referencia9'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde9: TIntegerField
      FieldName = 'qtde9'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor9: TFloatField
      FieldName = 'valor9'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia10: TDateTimeField
      FieldName = 'referencia10'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde10: TIntegerField
      FieldName = 'qtde10'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor10: TFloatField
      FieldName = 'valor10'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia11: TDateTimeField
      FieldName = 'referencia11'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde11: TIntegerField
      FieldName = 'qtde11'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor11: TFloatField
      FieldName = 'valor11'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_custoAgregadoPorMedicoreferencia12: TDateTimeField
      FieldName = 'referencia12'
    end
    object spc_cons_med_custoAgregadoPorMedicoqtde12: TIntegerField
      FieldName = 'qtde12'
    end
    object spc_cons_med_custoAgregadoPorMedicovalor12: TFloatField
      FieldName = 'valor12'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_pacienteinternadoDiario: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pacienteinternadoDiario'
    Left = 529
    Top = 138
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_pacienteinternadoDiarionomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_pacienteinternadoDiarioUTI: TIntegerField
      FieldName = 'UTI'
    end
    object spc_cons_med_pacienteinternadoDiarioAPCM: TIntegerField
      FieldName = 'APCM'
    end
    object spc_cons_med_pacienteinternadoDiarioAPCC: TIntegerField
      FieldName = 'APCC'
    end
    object spc_cons_med_pacienteinternadoDiarioAPCP: TIntegerField
      FieldName = 'APCP'
    end
    object spc_cons_med_pacienteinternadoDiarioAPCO: TIntegerField
      FieldName = 'APCO'
    end
    object spc_cons_med_pacienteinternadoDiarioAPPQ: TIntegerField
      FieldName = 'APPQ'
    end
    object spc_cons_med_pacienteinternadoDiarioEFCM: TIntegerField
      FieldName = 'EFCM'
    end
    object spc_cons_med_pacienteinternadoDiarioEFCC: TIntegerField
      FieldName = 'EFCC'
    end
    object spc_cons_med_pacienteinternadoDiarioEFCP: TIntegerField
      FieldName = 'EFCP'
    end
    object spc_cons_med_pacienteinternadoDiarioEFCO: TIntegerField
      FieldName = 'EFCO'
    end
    object spc_cons_med_pacienteinternadoDiarioEFPQ: TIntegerField
      FieldName = 'EFPQ'
    end
    object spc_cons_med_pacienteinternadoDiarioHPCM: TIntegerField
      FieldName = 'HPCM'
    end
    object spc_cons_med_pacienteinternadoDiarioHPCC: TIntegerField
      FieldName = 'HPCC'
    end
    object spc_cons_med_pacienteinternadoDiarioHPCP: TIntegerField
      FieldName = 'HPCP'
    end
    object spc_cons_med_pacienteinternadoDiarioHPCO: TIntegerField
      FieldName = 'HPCO'
    end
    object spc_cons_med_pacienteinternadoDiarioHPPQ: TIntegerField
      FieldName = 'HPPQ'
    end
    object spc_cons_med_pacienteinternadoDiarioTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object spc_cons_med_pacienteinternadoTotalDiariasMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pacienteinternadoTotalDiariasMensal'
    Left = 74
    Top = 191
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_pacienteinternadoTotalDiariasMensalnomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalUTI: TIntegerField
      FieldName = 'UTI'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalAPCM: TIntegerField
      FieldName = 'APCM'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalAPCC: TIntegerField
      FieldName = 'APCC'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalAPCP: TIntegerField
      FieldName = 'APCP'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalAPCO: TIntegerField
      FieldName = 'APCO'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalAPPQ: TIntegerField
      FieldName = 'APPQ'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalEFCM: TIntegerField
      FieldName = 'EFCM'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalEFCC: TIntegerField
      FieldName = 'EFCC'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalEFCP: TIntegerField
      FieldName = 'EFCP'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalEFCO: TIntegerField
      FieldName = 'EFCO'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalEFPQ: TIntegerField
      FieldName = 'EFPQ'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalHPCM: TIntegerField
      FieldName = 'HPCM'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalHPCC: TIntegerField
      FieldName = 'HPCC'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalHPCP: TIntegerField
      FieldName = 'HPCP'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalHPCO: TIntegerField
      FieldName = 'HPCO'
    end
    object spc_cons_med_pacienteinternadoTotalDiariasMensalHPPQ: TIntegerField
      FieldName = 'HPPQ'
    end
  end
  object spc_cons_adm_descontosduplicadosMesAnterior: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontosduplicadosMesAnterior'
    Left = 284
    Top = 191
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
    object spc_cons_adm_descontosduplicadosMesAnteriorinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontosduplicadosMesAnteriortitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontosduplicadosMesAnteriormatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontosduplicadosMesAnteriornome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosduplicadosMesAnteriorcod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontosduplicadosMesAnteriorvldescontoatual: TFloatField
      FieldName = 'vldescontoatual'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_totalBenefiAtivo04: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalBenefiAtivo04'
    Left = 526
    Top = 190
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_tba'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_totalBenefiAtivo04dtreferencia_tba: TDateTimeField
      FieldName = 'dtreferencia_tba'
    end
    object spc_cons_adm_totalBenefiAtivo04cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_totalBenefiAtivo04nome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_totalBenefiAtivo04cod_faixaEtaria: TIntegerField
      FieldName = 'cod_faixaEtaria'
    end
    object spc_cons_adm_totalBenefiAtivo04descricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalBenefiAtivo04tlSegurados: TIntegerField
      FieldName = 'tlSegurados'
    end
    object spc_cons_adm_totalBenefiAtivo04tlDependentes: TIntegerField
      FieldName = 'tlDependentes'
    end
    object spc_cons_adm_totalBenefiAtivo04tlPensionistas: TIntegerField
      FieldName = 'tlPensionistas'
    end
    object spc_cons_adm_totalBenefiAtivo04tlAssistidos: TIntegerField
      FieldName = 'tlAssistidos'
    end
    object spc_cons_adm_totalBenefiAtivo04Sem_Ass: TIntegerField
      FieldName = 'Sem_Ass'
    end
    object spc_cons_adm_totalBenefiAtivo04tlSegTesouraria: TIntegerField
      FieldName = 'tlSegTesouraria'
    end
    object spc_cons_adm_totalBenefiAtivo04tlDepTesouraria: TIntegerField
      FieldName = 'tlDepTesouraria'
    end
  end
  object spc_cons_adm_baixadesconto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_baixadesconto'
    Left = 71
    Top = 240
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
      end
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@digitomatdeb_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_tarifa'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_baixadescontodtreferencia_flh: TDateTimeField
      DisplayLabel = 'Dt. Refer�ncia'
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_baixadescontocod_empresafolha: TIntegerField
      DisplayLabel = 'Cod. Empresa'
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_baixadescontomatriculadebito_seg: TIntegerField
      DisplayLabel = 'Matr�cula'
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_baixadescontodigitomatdeb_seg: TIntegerField
      DisplayLabel = 'Digito'
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_baixadescontoinscricao_ben: TIntegerField
      DisplayLabel = 'Inscri��o'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_baixadescontocod_tarifa: TIntegerField
      DisplayLabel = 'Cod. Tarifa'
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_baixadescontovldesconto: TFloatField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'vldesconto'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_divergenciaPrefeitura: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_divergenciaPrefeitura'
    Left = 286
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_div'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@matriculaDebito_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@digitoMatDeb_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_tarifa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_divergenciaPrefeituradtreferencia_div: TDateTimeField
      FieldName = 'dtreferencia_div'
    end
    object spc_cons_adm_divergenciaPrefeiturainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_divergenciaPrefeituramatriculaDebito_seg: TIntegerField
      FieldName = 'matriculaDebito_seg'
    end
    object spc_cons_adm_divergenciaPrefeituradigitoMatDeb_seg: TIntegerField
      FieldName = 'digitoMatDeb_seg'
    end
    object spc_cons_adm_divergenciaPrefeituracod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_divergenciaPrefeituranome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_divergenciaPrefeituravlpendente_div: TFloatField
      FieldName = 'vlpendente_div'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_divergenciaPrefeituranome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_divergenciaPrefeiturafoneresi_fpm: TStringField
      FieldName = 'foneresi_fpm'
      FixedChar = True
    end
  end
  object spc_cons_adm_materialcontamedica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_materialcontamedica'
    Left = 527
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_materialcontamedicacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_materialcontamedicadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_materialcontamedicasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_adm_materialcontamedicasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_adm_materialcontamedicasequenciaitem_mtc: TIntegerField
      FieldName = 'sequenciaitem_mtc'
    end
    object spc_cons_adm_materialcontamedicacod_itemmaterial: TIntegerField
      FieldName = 'cod_itemmaterial'
    end
    object spc_cons_adm_materialcontamedicacod_padraomat: TIntegerField
      FieldName = 'cod_padraomat'
    end
    object spc_cons_adm_materialcontamedicadescricao_mtc: TStringField
      FieldName = 'descricao_mtc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_materialcontamedicadtrealizacao_mtc: TDateTimeField
      FieldName = 'dtrealizacao_mtc'
    end
    object spc_cons_adm_materialcontamedicaqtde3_mtc: TIntegerField
      FieldName = 'qtde3_mtc'
    end
    object spc_cons_adm_materialcontamedicavlinformado_mtc: TFloatField
      FieldName = 'vlinformado_mtc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_materialcontamedicavlpagar_mtc: TFloatField
      FieldName = 'vlpagar_mtc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_materialcontamedicareducacresc_mtc: TFloatField
      FieldName = 'reducacresc_mtc'
    end
    object spc_cons_adm_materialcontamedicastatus_mtc: TIntegerField
      FieldName = 'status_mtc'
    end
    object spc_cons_adm_materialcontamedicaqtdepagar3_mtc: TIntegerField
      FieldName = 'qtdepagar3_mtc'
    end
    object spc_cons_adm_materialcontamedicaqtde_mtc: TFloatField
      FieldName = 'qtde_mtc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_materialcontamedicapagtoincondicional_itc: TBooleanField
      FieldName = 'pagtoincondicional_itc'
    end
    object spc_cons_adm_materialcontamedicaqtdepagar_mtc: TFloatField
      FieldName = 'qtdepagar_mtc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_materialcontamedicacod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_adm_materialcontamedicadescricao_sts: TStringField
      FieldName = 'descricao_sts'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_materialcontamedicadiferenca: TFloatField
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_medicamentocontamedica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_medicamentocontamedica'
    Left = 73
    Top = 293
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_medicamentocontamedicacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_adm_medicamentocontamedicadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_medicamentocontamedicasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_adm_medicamentocontamedicasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_adm_medicamentocontamedicasequenciaitem_mdc: TIntegerField
      FieldName = 'sequenciaitem_mdc'
    end
    object spc_cons_adm_medicamentocontamedicacod_itemmed: TIntegerField
      FieldName = 'cod_itemmed'
    end
    object spc_cons_adm_medicamentocontamedicacod_padraomed: TIntegerField
      FieldName = 'cod_padraomed'
    end
    object spc_cons_adm_medicamentocontamedicadescricao_mdc: TStringField
      FieldName = 'descricao_mdc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_medicamentocontamedicadtrealizacao_mdc: TDateTimeField
      FieldName = 'dtrealizacao_mdc'
    end
    object spc_cons_adm_medicamentocontamedicaqtde3_mdc: TIntegerField
      FieldName = 'qtde3_mdc'
    end
    object spc_cons_adm_medicamentocontamedicavlinformado_mdc: TFloatField
      FieldName = 'vlinformado_mdc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_medicamentocontamedicavlpagar_mdc: TFloatField
      FieldName = 'vlpagar_mdc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_medicamentocontamedicareducacresc_mdc: TFloatField
      FieldName = 'reducacresc_mdc'
    end
    object spc_cons_adm_medicamentocontamedicastatus_mdc: TIntegerField
      FieldName = 'status_mdc'
    end
    object spc_cons_adm_medicamentocontamedicaqtdepagar3_mdc: TIntegerField
      FieldName = 'qtdepagar3_mdc'
    end
    object spc_cons_adm_medicamentocontamedicaqtde_mdc: TFloatField
      FieldName = 'qtde_mdc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_medicamentocontamedicapagtoincondicional_itc: TBooleanField
      FieldName = 'pagtoincondicional_itc'
    end
    object spc_cons_adm_medicamentocontamedicaqtdepagar_mdc: TFloatField
      FieldName = 'qtdepagar_mdc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_medicamentocontamedicacod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_adm_medicamentocontamedicadescricao_sts: TStringField
      FieldName = 'descricao_sts'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_medicamentocontamedicadiferenca: TFloatField
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object spc_cons_itemglosa2: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_itemglosa2'
    Left = 292
    Top = 293
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_itemglosa2cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_itemglosa2dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_itemglosa2sequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_itemglosa2sequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_itemglosa2sequenciaitem_itc: TIntegerField
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_itemglosa2cod_itemservico: TIntegerField
      DisplayLabel = 'Cod. Interno'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_itemglosa2cod_padrao: TIntegerField
      DisplayLabel = 'Cod. Padr�o'
      FieldName = 'cod_padrao'
    end
    object spc_cons_itemglosa2descricao_itc: TStringField
      DisplayLabel = 'Descri��o do Servi�o / Procedimento'
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_itemglosa2emergencia_itc: TStringField
      FieldName = 'emergencia_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemglosa2dhe_itc: TStringField
      FieldName = 'dhe_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemglosa2dtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_itemglosa2cod_posicao: TIntegerField
      FieldName = 'cod_posicao'
    end
    object spc_cons_itemglosa2qtde_itc: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtde_itc'
    end
    object spc_cons_itemglosa2vlinformado_itc: TFloatField
      DisplayLabel = 'Vl. Inform.'
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemglosa2vlpagar_itc: TFloatField
      DisplayLabel = 'Vl. Pagar'
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemglosa2reducacresc_itc: TFloatField
      FieldName = 'reducacresc_itc'
    end
    object spc_cons_itemglosa2retorno_itc: TStringField
      DisplayLabel = 'Retorno'
      FieldName = 'retorno_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemglosa2status_itc: TIntegerField
      FieldName = 'status_itc'
    end
    object spc_cons_itemglosa2pagtoincondicional_itc: TBooleanField
      FieldName = 'pagtoincondicional_itc'
    end
    object spc_cons_itemglosa2obs_itc: TStringField
      FieldName = 'obs_itc'
      FixedChar = True
      Size = 200
    end
    object spc_cons_itemglosa2cod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_itemglosa2descricao_sts: TStringField
      DisplayLabel = 'Status'
      FieldName = 'descricao_sts'
      FixedChar = True
      Size = 50
    end
    object spc_cons_itemglosa2diferenca: TFloatField
      DisplayLabel = 'Glosa'
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_Simulacontrib: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_Simulacontrib'
    Left = 525
    Top = 293
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_adm_Simulacontribcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_Simulacontribdtreferencia: TDateTimeField
      FieldName = 'dtreferencia'
    end
    object spc_cons_adm_Simulacontribidade: TIntegerField
      FieldName = 'idade'
    end
    object spc_cons_adm_Simulacontribvalor1: TFloatField
      FieldName = 'valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_Simulacontribvalor2: TFloatField
      FieldName = 'valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_Simulacontribdiferenca: TFloatField
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_autorizainternacao03: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_autorizainternacao03'
    Left = 81
    Top = 343
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_autorizainternacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_autorizainternacao03cod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_autorizainternacao03cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_autorizainternacao03cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_autorizainternacao03dtentrada_ain: TDateTimeField
      FieldName = 'dtentrada_ain'
    end
    object spc_cons_med_autorizainternacao03dtsaida_ain: TDateTimeField
      FieldName = 'dtsaida_ain'
    end
    object spc_cons_med_autorizainternacao03nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao03inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_autorizainternacao03nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacao03sequencia_cin: TIntegerField
      FieldName = 'sequencia_cin'
    end
    object spc_cons_med_autorizainternacao03dtautorizacao_cin: TDateTimeField
      FieldName = 'dtautorizacao_cin'
    end
    object spc_cons_med_autorizainternacao03numdiarias_cin: TIntegerField
      FieldName = 'numdiarias_cin'
    end
    object spc_cons_med_autorizainternacao03dtinicio_cin: TDateTimeField
      FieldName = 'dtinicio_cin'
    end
    object spc_cons_med_autorizainternacao03dtfinal_cin: TDateTimeField
      FieldName = 'dtfinal_cin'
    end
    object spc_cons_med_autorizainternacao03dtalta_alt: TDateTimeField
      FieldName = 'dtalta_alt'
    end
    object spc_cons_med_autorizainternacao03resumoclinico_ain: TMemoField
      FieldName = 'resumoclinico_ain'
      BlobType = ftMemo
    end
  end
  object spc_cons_med_extratobenefi004: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratobenefi004'
    Left = 284
    Top = 343
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@idade_ini'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@idade_fin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@valor_ini'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@valor_fin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtentradaInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtentradaFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_extratobenefi004cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_extratobenefi004inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratobenefi004titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratobenefi004cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratobenefi004cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratobenefi004digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_extratobenefi004nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratobenefi004qtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_extratobenefi004vlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_consultapatronal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_consultapatronal'
    Left = 526
    Top = 343
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
        Value = 0
      end
      item
        DataType = ftString
        Name = '@nome_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@vlsalarioIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@vlsalarioFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@matriculaDebito_seg'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@decimoTerceiro'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_consultapatronalcod_empresafolha: TIntegerField
      DisplayLabel = 'Emp.'
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_consultapatronaldtreferencia_pat: TDateTimeField
      DisplayLabel = 'Dt. Refer�ncia'
      FieldName = 'dtreferencia_pat'
    end
    object spc_cons_adm_consultapatronalmatriculaDebito_seg: TIntegerField
      DisplayLabel = 'Matricula'
      FieldName = 'matriculaDebito_seg'
    end
    object spc_cons_adm_consultapatronaldigitoMatDeb_seg: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digitoMatDeb_seg'
    end
    object spc_cons_adm_consultapatronalnome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_consultapatronalcargo_pat: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo_pat'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_consultapatronalsituacao_pat: TStringField
      DisplayLabel = 'Situa��o'
      FieldName = 'situacao_pat'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_consultapatronalvlsalario_pat: TFloatField
      DisplayLabel = 'Sal�rio'
      FieldName = 'vlsalario_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronalvlcontribuicao_pat: TFloatField
      DisplayLabel = 'Contribui��o'
      FieldName = 'vlcontribuicao_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronalvlpatronal_pat: TFloatField
      DisplayLabel = 'Patronal'
      FieldName = 'vlpatronal_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronalcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_consultapatronalcod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_consultapatronalidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_consultapatronalcod_empresaPatronal: TIntegerField
      FieldName = 'cod_empresaPatronal'
    end
    object spc_cons_adm_consultapatronalcod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_cons_adm_consultapatronaldecimoTerceiro_pat: TBooleanField
      FieldName = 'decimoTerceiro_pat'
    end
  end
  object spc_cons_med_fornecedorFarmacia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_fornecedorFarmacia'
    Left = 81
    Top = 393
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_fornecedor'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_situacao'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_fornecedorFarmaciacod_fornecedorFarmacia: TAutoIncField
      FieldName = 'cod_fornecedorFarmacia'
    end
    object spc_cons_med_fornecedorFarmaciacod_fornecedorSIAF: TStringField
      FieldName = 'cod_fornecedorSIAF'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_fornecedorFarmaciarazaoSocial_ffa: TStringField
      FieldName = 'razaoSocial_ffa'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_fornecedorFarmaciaapelido_ffa: TStringField
      FieldName = 'apelido_ffa'
      FixedChar = True
    end
    object spc_cons_med_fornecedorFarmaciaendereco_ffa: TStringField
      FieldName = 'endereco_ffa'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_fornecedorFarmaciacidade_ffa: TStringField
      FieldName = 'cidade_ffa'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_fornecedorFarmaciasigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_med_fornecedorFarmaciacep_ffa: TStringField
      FieldName = 'cep_ffa'
      FixedChar = True
      Size = 8
    end
    object spc_cons_med_fornecedorFarmaciaddd_ffa: TStringField
      FieldName = 'ddd_ffa'
      FixedChar = True
      Size = 4
    end
    object spc_cons_med_fornecedorFarmaciafone1_ffa: TStringField
      FieldName = 'fone1_ffa'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_fornecedorFarmaciafone2_ffa: TStringField
      FieldName = 'fone2_ffa'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_fornecedorFarmaciafone3_ffa: TStringField
      FieldName = 'fone3_ffa'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_fornecedorFarmaciaramal1_ffa: TStringField
      FieldName = 'ramal1_ffa'
      FixedChar = True
      Size = 15
    end
    object spc_cons_med_fornecedorFarmaciaramal2_ffa: TStringField
      FieldName = 'ramal2_ffa'
      FixedChar = True
      Size = 15
    end
    object spc_cons_med_fornecedorFarmaciaramal3_ffa: TStringField
      FieldName = 'ramal3_ffa'
      FixedChar = True
      Size = 15
    end
    object spc_cons_med_fornecedorFarmaciafax_ffa: TFloatField
      FieldName = 'fax_ffa'
    end
    object spc_cons_med_fornecedorFarmaciaobs_ffa: TStringField
      FieldName = 'obs_ffa'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_fornecedorFarmaciacgc_ffa: TStringField
      FieldName = 'cgc_ffa'
      FixedChar = True
      Size = 18
    end
    object spc_cons_med_fornecedorFarmaciainscricaoEstadual_ffa: TStringField
      FieldName = 'inscricaoEstadual_ffa'
      FixedChar = True
      Size = 15
    end
    object spc_cons_med_fornecedorFarmaciacod_sitFornecedorFarmacia: TSmallintField
      FieldName = 'cod_sitFornecedorFarmacia'
    end
    object spc_cons_med_fornecedorFarmaciaSituacao: TStringField
      FieldName = 'Situacao'
      FixedChar = True
      Size = 7
    end
  end
  object spc_cons_med_vendaMedicamentoFarmacia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_vendaMedicamentoFarmacia'
    Left = 287
    Top = 393
    ParamData = <
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
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dataInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dataFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_vendaMedicamentoFarmaciadata_vmf: TDateTimeField
      DisplayLabel = 'Dt. da Compra'
      FieldName = 'data_vmf'
    end
    object spc_cons_med_vendaMedicamentoFarmaciacod_medicamento: TIntegerField
      DisplayLabel = 'Cod. Med.'
      FieldName = 'cod_medicamento'
    end
    object spc_cons_med_vendaMedicamentoFarmaciaTIP1: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIP1'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_vendaMedicamentoFarmaciaqtde_vmf: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtde_vmf'
    end
    object spc_cons_med_vendaMedicamentoFarmaciadescricao_vmf: TStringField
      DisplayLabel = 'Descri��o'
      FieldName = 'descricao_vmf'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_vendaMedicamentoFarmaciaprecoUnitario_vmf: TFloatField
      DisplayLabel = 'Pre�o Unit.'
      FieldName = 'precoUnitario_vmf'
    end
    object spc_cons_med_vendaMedicamentoFarmaciaLOJ: TStringField
      FieldName = 'LOJ'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_vendaMedicamentoFarmaciaVEN: TStringField
      FieldName = 'VEN'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_vendaMedicamentoFarmaciaCODFAV: TStringField
      FieldName = 'CODFAV'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_vendaMedicamentoFarmaciacomanda_vmf: TIntegerField
      DisplayLabel = 'Comanda'
      FieldName = 'comanda_vmf'
    end
    object spc_cons_med_vendaMedicamentoFarmaciacod_beneficiario: TIntegerField
      DisplayLabel = 'Cod. Ben.'
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_vendaMedicamentoFarmaciainscricao_ben: TIntegerField
      DisplayLabel = 'Insc.'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_vendaMedicamentoFarmaciatitulacartei_ben: TIntegerField
      DisplayLabel = 'Tit.'
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_vendaMedicamentoFarmaciaprecoTotal: TFloatField
      DisplayLabel = 'Pre�o Total'
      FieldName = 'precoTotal'
    end
  end
  object spc_cons_adm_descontofarmacia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofarmacia'
    Left = 526
    Top = 393
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_descontofarmaciainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontofarmaciacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontofarmaciamatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofarmaciadigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontofarmaciavldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_descontofarmaciacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontofarmacianome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_despPlanoFaixaEtaria: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_despPlanoFaixaEtaria'
    Left = 89
    Top = 443
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaIni_cta'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaIni_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin_cta'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFin_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_despPlanoFaixaEtariacod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_med_despPlanoFaixaEtarianome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despPlanoFaixaEtariacod_faixaetaria: TIntegerField
      FieldName = 'cod_faixaetaria'
    end
    object spc_cons_med_despPlanoFaixaEtariadescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_despPlanoFaixaEtariatotal: TFloatField
      FieldName = 'total'
    end
  end
  object spc_cons_adm_regiaoCidade: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_regiaoCidade'
    Left = 292
    Top = 443
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_regiao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_regiaoCidadecod_regiao: TIntegerField
      FieldName = 'cod_regiao'
    end
    object spc_cons_adm_regiaoCidadecod_cidadeCep: TIntegerField
      DisplayLabel = 'Cod. Cidade'
      FieldName = 'cod_cidadeCep'
    end
    object spc_cons_adm_regiaoCidadecidade_cep: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
  end
  object spc_cons_med_custoAgregadoPorEspecialidadeMedico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_custoAgregadoPorEspecialidadeMedico'
    Left = 520
    Top = 442
    ParamData = <
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_especialidade'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicomedico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia1: TDateTimeField
      FieldName = 'referencia1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde1: TIntegerField
      FieldName = 'qtde1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde1Cons: TIntegerField
      FieldName = 'qtde1Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor1: TFloatField
      FieldName = 'valor1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia2: TDateTimeField
      FieldName = 'referencia2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde2: TIntegerField
      FieldName = 'qtde2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde2Cons: TIntegerField
      FieldName = 'qtde2Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor2: TFloatField
      FieldName = 'valor2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia3: TDateTimeField
      FieldName = 'referencia3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde3: TIntegerField
      FieldName = 'qtde3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde3Cons: TIntegerField
      FieldName = 'qtde3Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor3: TFloatField
      FieldName = 'valor3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia4: TDateTimeField
      FieldName = 'referencia4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde4: TIntegerField
      FieldName = 'qtde4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde4Cons: TIntegerField
      FieldName = 'qtde4Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor4: TFloatField
      FieldName = 'valor4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia5: TDateTimeField
      FieldName = 'referencia5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde5: TIntegerField
      FieldName = 'qtde5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde5Cons: TIntegerField
      FieldName = 'qtde5Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor5: TFloatField
      FieldName = 'valor5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia6: TDateTimeField
      FieldName = 'referencia6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde6: TIntegerField
      FieldName = 'qtde6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde6Cons: TIntegerField
      FieldName = 'qtde6Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor6: TFloatField
      FieldName = 'valor6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia7: TDateTimeField
      FieldName = 'referencia7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde7: TIntegerField
      FieldName = 'qtde7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde7Cons: TIntegerField
      FieldName = 'qtde7Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor7: TFloatField
      FieldName = 'valor7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia8: TDateTimeField
      FieldName = 'referencia8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde8: TIntegerField
      FieldName = 'qtde8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde8Cons: TIntegerField
      FieldName = 'qtde8Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor8: TFloatField
      FieldName = 'valor8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia9: TDateTimeField
      FieldName = 'referencia9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde9: TIntegerField
      FieldName = 'qtde9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde9Cons: TIntegerField
      FieldName = 'qtde9Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor9: TFloatField
      FieldName = 'valor9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia10: TDateTimeField
      FieldName = 'referencia10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde10: TIntegerField
      FieldName = 'qtde10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde10Cons: TIntegerField
      FieldName = 'qtde10Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor10: TFloatField
      FieldName = 'valor10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia11: TDateTimeField
      FieldName = 'referencia11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde11: TIntegerField
      FieldName = 'qtde11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde11Cons: TIntegerField
      FieldName = 'qtde11Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor11: TFloatField
      FieldName = 'valor11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoreferencia12: TDateTimeField
      FieldName = 'referencia12'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde12: TIntegerField
      FieldName = 'qtde12'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicoqtde12Cons: TIntegerField
      FieldName = 'qtde12Cons'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeMedicovalor12: TFloatField
      FieldName = 'valor12'
    end
  end
  object spc_cons_adm_histplanoOdonto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histplanoOdonto'
    Left = 89
    Top = 498
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_histplanoOdontocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_histplanoOdontocod_tipocoberturaodonto: TIntegerField
      FieldName = 'cod_tipocoberturaodonto'
    end
    object spc_cons_adm_histplanoOdontodescricao_tco: TStringField
      FieldName = 'descricao_tco'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_histplanoOdontodtadesao_hpo: TDateTimeField
      FieldName = 'dtadesao_hpo'
    end
    object spc_cons_adm_histplanoOdontodtsaida_hpo: TDateTimeField
      FieldName = 'dtsaida_hpo'
    end
    object spc_cons_adm_histplanoOdontodtsistema_hpo2: TDateTimeField
      FieldName = 'dtsistema_hpo'
    end
    object spc_cons_adm_histplanoOdontocod_afiliadoOdonto: TIntegerField
      FieldName = 'cod_afiliadoOdonto'
    end
    object spc_cons_adm_histplanoOdontonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_histplanoOdontocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_histplanoOdontomatricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
  end
  object spc_cons_adm_TotalBenefiAtivoDetalhado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_TotalBenefiAtivoDetalhado'
    Left = 289
    Top = 497
    ParamData = <
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
        DataType = ftString
        Name = '@sexo_tba'
        ParamType = ptInput
      end>
    object spc_cons_adm_TotalBenefiAtivoDetalhadodtreferencia_tba: TStringField
      FieldName = 'dtreferencia_tba'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadocod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadocod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadocod_faixaetaria: TIntegerField
      FieldName = 'cod_faixaetaria'
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadodescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadonome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_TotalBenefiAtivoDetalhadonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_entradaSaidaDependentes: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_entradaSaidaDependentes'
    Left = 96
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = '@dataInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dataFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_entradaSaidaDependentesinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_entradaSaidaDependentesmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_entradaSaidaDependentesnome_seg: TStringField
      FieldName = 'nome_seg'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_entradaSaidaDependentesnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_entradaSaidaDependentesnome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_entradaSaidaDependentessexo_ben: TStringField
      FieldName = 'sexo_ben'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_entradaSaidaDependentestipoRequerimento: TStringField
      FieldName = 'tipoRequerimento'
      FixedChar = True
    end
    object spc_cons_adm_entradaSaidaDependentesdtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_entradaSaidaDependentesdtlimite_dep: TDateTimeField
      FieldName = 'dtlimite_dep'
    end
    object spc_cons_adm_entradaSaidaDependentesnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_entradaSaidaDependentesdtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
  end
  object spc_cons_med_histempenhoConveniado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_histempenhoConveniado'
    Left = 305
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_empenhoConveniado'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_histempenhoConveniadocod_histempenhoConveniado: TAutoIncField
      FieldName = 'cod_histempenhoConveniado'
    end
    object spc_cons_med_histempenhoConveniadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_histempenhoConveniadodtreferencia_cta: TDateTimeField
      DisplayLabel = 'Dt. Refer�ncia'
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_histempenhoConveniadosequencia_cta: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_histempenhoConveniadocod_empenhoConveniado: TStringField
      FieldName = 'cod_empenhoConveniado'
      FixedChar = True
    end
    object spc_cons_med_histempenhoConveniadovlpago_cta: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'vlpago_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_histempenhoConveniadocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_histempenhoConveniadodescricao_usu: TStringField
      DisplayLabel = 'Usu�rio'
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_histempenhoConveniadodtsistema_hec: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtsistema_hec'
    end
  end
  object spc_cons_adm_descontofolha03: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofolha03'
    Left = 524
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_flh'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_flh'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_tarifa'
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
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtpagto_flh'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtdesconto_flh'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_order'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@parcelas'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@nossonumero_flh'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@titulacartei_ben'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_usuario'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtsistema_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_descontofolha03email_ben: TStringField
      FieldName = 'email_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha03foneresi_ben: TStringField
      FieldName = 'foneresi_ben'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_descontofolha03cod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontofolha03cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontofolha03nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha03vldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_descontofolha03cod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontofolha03nome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha03COLUMN9: TStringField
      FieldName = 'COLUMN9'
      FixedChar = True
      Size = 25
    end
    object spc_cons_adm_descontofolha03dtrefatraso_flh: TDateTimeField
      FieldName = 'dtrefatraso_flh'
    end
    object spc_cons_adm_descontofolha03cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontofolha03cod_descontofolha_1: TIntegerField
      FieldName = 'cod_descontofolha_1'
    end
    object spc_cons_adm_descontofolha03dtdesconto_flh: TDateTimeField
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_descontofolha03cod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontofolha03dtsitdesconto_flh: TDateTimeField
      FieldName = 'dtsitdesconto_flh'
    end
    object spc_cons_adm_descontofolha03dtpagto_flh: TDateTimeField
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontofolha03nome_sds: TStringField
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontofolha03vlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
    object spc_cons_adm_descontofolha03vlparcelado: TFloatField
      FieldName = 'vlparcelado'
    end
    object spc_cons_adm_descontofolha03inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontofolha03titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontofolha03nome_tse: TStringField
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 21
    end
    object spc_cons_adm_descontofolha03nguia_flh: TIntegerField
      FieldName = 'nguia_flh'
    end
    object spc_cons_adm_descontofolha03obs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha03parcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontofolha03nparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontofolha03nossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 17
    end
    object spc_cons_adm_descontofolha03dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontofolha03descricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha03dtsistema_flh: TDateTimeField
      FieldName = 'dtsistema_flh'
    end
    object spc_cons_adm_descontofolha03COLUMN31: TFloatField
      FieldName = 'COLUMN31'
    end
    object spc_cons_adm_descontofolha03matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofolha03vlcorrecao_flh: TFloatField
      FieldName = 'vlcorrecao_flh'
    end
    object spc_cons_adm_descontofolha03vljuros_flh: TFloatField
      FieldName = 'vljuros_flh'
    end
    object spc_cons_adm_descontofolha03vlmulta_flh: TFloatField
      FieldName = 'vlmulta_flh'
    end
    object spc_cons_adm_descontofolha03vlpercjuros_par: TFloatField
      FieldName = 'vlpercjuros_par'
    end
  end
  object spc_cons_adm_descontosMatriculaAntiga: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_descontosMatriculaAntiga'
    Left = 524
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_descontosMatriculaAntiganome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosMatriculaAntigainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontosMatriculaAntigadtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontosMatriculaAntigaempresadesconto: TIntegerField
      FieldName = 'empresadesconto'
    end
    object spc_cons_adm_descontosMatriculaAntigamatriculadesconto: TIntegerField
      FieldName = 'matriculadesconto'
    end
    object spc_cons_adm_descontosMatriculaAntigadigitodesconto: TIntegerField
      FieldName = 'digitodesconto'
    end
    object spc_cons_adm_descontosMatriculaAntigavldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_descontosMatriculaAntigacod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontosMatriculaAntigacod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_descontosMatriculaAntigaempresacadastro: TIntegerField
      FieldName = 'empresacadastro'
    end
    object spc_cons_adm_descontosMatriculaAntigamatriculacadastro: TIntegerField
      FieldName = 'matriculacadastro'
    end
    object spc_cons_adm_descontosMatriculaAntigadigitocadastro: TIntegerField
      FieldName = 'digitocadastro'
    end
    object spc_cons_adm_descontosMatriculaAntigaparcelan_par: TStringField
      FieldName = 'parcelan_par'
      FixedChar = True
      Size = 8
    end
    object spc_cons_adm_descontosMatriculaAntiganparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontosMatriculaAntigacod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontosMatriculaAntiganome_sds: TStringField
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontosMatriculaAntiganome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
  end
  object spc_cons_adm_brasindice: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_brasindice'
    Left = 96
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_brasindice'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@descricao'
        ParamType = ptInput
      end>
    object spc_cons_adm_brasindicecod_brasindice: TIntegerField
      FieldName = 'cod_brasindice'
    end
    object spc_cons_adm_brasindicenome_medicamento: TStringField
      FieldName = 'nome_medicamento'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_brasindicenome_laboratorio: TStringField
      FieldName = 'nome_laboratorio'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_brasindicedtvigencia_bic: TDateTimeField
      FieldName = 'dtvigencia_bic'
    end
  end
  object spc_cons_adm_brasindicehistorico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_brasindicehistorico'
    Left = 288
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_brasindice'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_brasindicehistoricocod_brasindice: TIntegerField
      FieldName = 'cod_brasindice'
    end
    object spc_cons_adm_brasindicehistoricodtvigencia_bic: TDateTimeField
      FieldName = 'dtvigencia_bic'
    end
    object spc_cons_adm_brasindicehistoricocod_laboratorio: TIntegerField
      FieldName = 'cod_laboratorio'
    end
    object spc_cons_adm_brasindicehistoriconome_laboratorio: TStringField
      FieldName = 'nome_laboratorio'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_brasindicehistoricocod_medicamento: TIntegerField
      FieldName = 'cod_medicamento'
    end
    object spc_cons_adm_brasindicehistoriconome_medicamento: TStringField
      FieldName = 'nome_medicamento'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_brasindicehistoricocod_apresentacao: TStringField
      FieldName = 'cod_apresentacao'
      FixedChar = True
    end
    object spc_cons_adm_brasindicehistoriconome_apresentacao: TStringField
      FieldName = 'nome_apresentacao'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_brasindicehistoricopreco_pfb_medicamento: TFloatField
      FieldName = 'preco_pfb_medicamento'
      DisplayFormat = '##,###,##0.00'
    end
    object spc_cons_adm_brasindicehistoricoqtde_fracionamento: TIntegerField
      FieldName = 'qtde_fracionamento'
    end
    object spc_cons_adm_brasindicehistoricopreco_pfb_medicamentofrac: TFloatField
      FieldName = 'preco_pfb_medicamentofrac'
      DisplayFormat = '##,###,##0.00'
    end
    object spc_cons_adm_brasindicehistoricoedicao_ultimaalteracao: TIntegerField
      FieldName = 'edicao_ultimaalteracao'
    end
    object spc_cons_adm_brasindicehistoricoipi: TFloatField
      FieldName = 'ipi'
    end
    object spc_cons_adm_brasindicehistoricoflag_portaria_pis_cofins: TStringField
      FieldName = 'flag_portaria_pis_cofins'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_brasindicehistoricocod_barras: TStringField
      FieldName = 'cod_barras'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_brasindicehistoricomedicamento_generico: TStringField
      FieldName = 'medicamento_generico'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_brasindicehistoricocod_tuss: TIntegerField
      FieldName = 'cod_tuss'
    end
    object spc_cons_adm_brasindicehistoricocod_tipocondcomerc: TStringField
      FieldName = 'cod_tipocondcomerc'
      FixedChar = True
      Size = 14
    end
    object spc_cons_adm_brasindicehistoricopreco_pmc_medicamento: TFloatField
      FieldName = 'preco_pmc_medicamento'
      DisplayFormat = '##,###,##0.00'
    end
    object spc_cons_adm_brasindicehistoricopreco_pmc_medicamentofrac: TFloatField
      FieldName = 'preco_pmc_medicamentofrac'
      DisplayFormat = '##,###,##0.00'
    end
  end
  object spc_exibir_critica_medicamentocontamedica_codbrasindice: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_exibir_critica_medicamentocontamedica_codbrasindice'
    Left = 530
    Top = 593
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2010'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaitem_itc'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_exibir_critica_medicamentocontamedica_codbrasindicecod_erroglosa: TIntegerField
      FieldName = 'cod_erroglosa'
    end
    object spc_exibir_critica_medicamentocontamedica_codbrasindicedescricao_erg: TStringField
      FieldName = 'descricao_erg'
      FixedChar = True
      Size = 80
    end
    object spc_exibir_critica_medicamentocontamedica_codbrasindicedescricao_glo: TStringField
      FieldName = 'descricao_glo'
      FixedChar = True
      Size = 100
    end
  end
  object spc_cons_adm_exibeauditoria: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_exibeauditoria'
    Left = 104
    Top = 647
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_tela'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_exibeauditoriacod_auditoriaSistema: TAutoIncField
      FieldName = 'cod_auditoriaSistema'
    end
    object spc_cons_adm_exibeauditoriadtsistema_aud: TDateTimeField
      FieldName = 'dtsistema_aud'
    end
    object spc_cons_adm_exibeauditoriacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_exibeauditoriacod_telasistema: TIntegerField
      FieldName = 'cod_telasistema'
    end
    object spc_cons_adm_exibeauditoriachaveCampo_aud: TIntegerField
      FieldName = 'chaveCampo_aud'
    end
    object spc_cons_adm_exibeauditoriachaveExtra_aud: TStringField
      FieldName = 'chaveExtra_aud'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriaip_aud: TStringField
      FieldName = 'ip_aud'
      FixedChar = True
      Size = 16
    end
    object spc_cons_adm_exibeauditoriausuarioRede_aud: TStringField
      FieldName = 'usuarioRede_aud'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditorianomeComputador_aud: TStringField
      FieldName = 'nomeComputador_aud'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriainfo_aud: TStringField
      FieldName = 'info_aud'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_exibeauditoriadetalhe_aud: TStringField
      FieldName = 'detalhe_aud'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_exibeauditoriaobs_aud: TStringField
      FieldName = 'obs_aud'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_exibeauditoriacod_tipoEdicao: TIntegerField
      FieldName = 'cod_tipoEdicao'
    end
    object spc_cons_adm_exibeauditoriacod_usuario_1: TIntegerField
      FieldName = 'cod_usuario_1'
    end
    object spc_cons_adm_exibeauditoriacod_setorimasf: TIntegerField
      FieldName = 'cod_setorimasf'
    end
    object spc_cons_adm_exibeauditorianome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriadescricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_exibeauditoriasenha_usu: TIntegerField
      FieldName = 'senha_usu'
    end
    object spc_cons_adm_exibeauditoriastatus_usu: TIntegerField
      FieldName = 'status_usu'
    end
    object spc_cons_adm_exibeauditoriacod_cargoUsuario: TIntegerField
      FieldName = 'cod_cargoUsuario'
    end
    object spc_cons_adm_exibeauditoriacod_tipoedicao_1: TIntegerField
      FieldName = 'cod_tipoedicao_1'
    end
    object spc_cons_adm_exibeauditoriadescricao_ted: TStringField
      FieldName = 'descricao_ted'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_exibeauditoriacod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_exibeauditoriacod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_exibeauditoriacod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_exibeauditoriacod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_exibeauditoriacod_uf: TSmallintField
      FieldName = 'cod_uf'
    end
    object spc_cons_adm_exibeauditoriacd2_uf: TSmallintField
      FieldName = 'cd2_uf'
    end
    object spc_cons_adm_exibeauditoriacod_tiposegurado: TIntegerField
      FieldName = 'cod_tiposegurado'
    end
    object spc_cons_adm_exibeauditoriainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_exibeauditoriacod_estadociv: TIntegerField
      FieldName = 'cod_estadociv'
    end
    object spc_cons_adm_exibeauditoriadigito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_adm_exibeauditorianome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_exibeauditoriadtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_exibeauditoriasexo_ben: TStringField
      FieldName = 'sexo_ben'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_exibeauditoriadtcadastro_ben: TDateTimeField
      FieldName = 'dtcadastro_ben'
    end
    object spc_cons_adm_exibeauditoriadtinscricao_ben: TDateTimeField
      FieldName = 'dtinscricao_ben'
    end
    object spc_cons_adm_exibeauditoriaprocesso_ben: TStringField
      FieldName = 'processo_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_exibeauditorianomepai_ben: TStringField
      FieldName = 'nomepai_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_exibeauditorianomemae_ben: TStringField
      FieldName = 'nomemae_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_exibeauditoriaendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_exibeauditoriabairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriacidade_ben: TStringField
      FieldName = 'cidade_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriacep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_exibeauditorianumero_ben: TIntegerField
      FieldName = 'numero_ben'
    end
    object spc_cons_adm_exibeauditoriacomplemento_ben: TStringField
      FieldName = 'complemento_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriaenderecocor_ben: TStringField
      FieldName = 'enderecocor_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_exibeauditoriabairrocor_ben: TStringField
      FieldName = 'bairrocor_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriacidadecor_ben: TStringField
      FieldName = 'cidadecor_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriacepcor_ben: TStringField
      FieldName = 'cepcor_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_exibeauditorianumerocor_ben: TIntegerField
      FieldName = 'numerocor_ben'
    end
    object spc_cons_adm_exibeauditoriacomplementocor_ben: TStringField
      FieldName = 'complementocor_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriafoneresi_ben: TStringField
      FieldName = 'foneresi_ben'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_exibeauditoriaobs_ben: TMemoField
      FieldName = 'obs_ben'
      BlobType = ftMemo
    end
    object spc_cons_adm_exibeauditoriarg_ben: TStringField
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriadtemissaorg_ben: TDateTimeField
      FieldName = 'dtemissaorg_ben'
    end
    object spc_cons_adm_exibeauditoriaorgemissorrg_ben: TStringField
      FieldName = 'orgemissorrg_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_exibeauditoriacpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_exibeauditoriatiteleitor_ben: TStringField
      FieldName = 'titeleitor_ben'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriaoutrosdocume_ben: TStringField
      FieldName = 'outrosdocume_ben'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriatipodocume_ben: TStringField
      FieldName = 'tipodocume_ben'
      FixedChar = True
      Size = 6
    end
    object spc_cons_adm_exibeauditoriadtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_exibeauditoriatitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_exibeauditoriadtcarencia_ben: TDateTimeField
      FieldName = 'dtcarencia_ben'
    end
    object spc_cons_adm_exibeauditoriaidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_exibeauditoriacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_exibeauditoriaidadecontrib_ben: TIntegerField
      FieldName = 'idadecontrib_ben'
    end
    object spc_cons_adm_exibeauditorianomecarteira_ben: TStringField
      FieldName = 'nomecarteira_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_exibeauditoriaalerta_ben: TStringField
      FieldName = 'alerta_ben'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_exibeauditoriadtplano_ben: TDateTimeField
      FieldName = 'dtplano_ben'
    end
    object spc_cons_adm_exibeauditoriacod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_exibeauditoriacod_tipocoberturaunimed: TIntegerField
      FieldName = 'cod_tipocoberturaunimed'
    end
    object spc_cons_adm_exibeauditoriacod_tipocoberturaodonto: TIntegerField
      FieldName = 'cod_tipocoberturaodonto'
    end
    object spc_cons_adm_exibeauditoriaemail_ben: TStringField
      FieldName = 'email_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_exibeauditoriadtadesaoodonto_ben: TDateTimeField
      FieldName = 'dtadesaoodonto_ben'
    end
    object spc_cons_adm_exibeauditoriadtendereco_ben: TDateTimeField
      FieldName = 'dtendereco_ben'
    end
    object spc_cons_adm_exibeauditoriacod_cidadeCEP: TIntegerField
      FieldName = 'cod_cidadeCEP'
    end
    object spc_cons_adm_exibeauditoriacod_cidadecorCEP: TIntegerField
      FieldName = 'cod_cidadecorCEP'
    end
    object spc_cons_adm_exibeauditoriacod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_exibeauditoriamailing_ben: TIntegerField
      FieldName = 'mailing_ben'
    end
    object spc_cons_adm_exibeauditoriacertidaonascvivo_ben: TStringField
      FieldName = 'certidaonascvivo_ben'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriacod_tipodocumento: TIntegerField
      FieldName = 'cod_tipodocumento'
    end
    object spc_cons_adm_exibeauditoriadtdocumento_ben: TDateTimeField
      FieldName = 'dtdocumento_ben'
    end
    object spc_cons_adm_exibeauditoriafonecel_ben: TStringField
      FieldName = 'fonecel_ben'
      FixedChar = True
    end
    object spc_cons_adm_exibeauditoriadetalhe2_aud: TStringField
      FieldName = 'detalhe2_aud'
      FixedChar = True
      Size = 244
    end
  end
  object spc_cons_contamedicaBenefi: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_contamedicaBenefi'
    Left = 304
    Top = 647
    ParamData = <
      item
        DataType = ftString
        Name = '@referenciaIni'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@referenciaFin'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_contamedicaBeneficod_conveniado: TIntegerField
      DisplayLabel = 'C�digo'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_contamedicaBenefidtreferencia_cta: TDateTimeField
      DisplayLabel = 'Dt. Refer�ncia'
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_contamedicaBenefisequencia_cta: TIntegerField
      DisplayLabel = 'Mov.'
      FieldName = 'sequencia_cta'
    end
    object spc_cons_contamedicaBenefisequenciaconta_ctm: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_contamedicaBenefidtentrada_ctm: TDateTimeField
      DisplayLabel = 'Dt. Entrada'
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_contamedicaBeneficod_autorizacao: TIntegerField
      DisplayLabel = 'Autoriza��o'
      FieldName = 'cod_autorizacao'
    end
  end
end
