object fdt_principal6: Tfdt_principal6
  OldCreateOrder = False
  Left = 65528
  Top = 65528
  Height = 876
  Width = 1456
  object spc_cons_med_agendacompromisso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_agendacompromisso'
    Left = 96
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_medico'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtagenda_agc'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_agendacompromissodtagenda_agc: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dtagenda_agc'
    end
    object spc_cons_med_agendacompromissocod_statusagenda: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_statusagenda'
    end
    object spc_cons_med_agendacompromissovalor_agc: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_agc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_agendacompromissoobs_agc: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'obs_agc'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_agendacompromissohora_agc: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'hora_agc'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_agendacompromissocod_medico: TIntegerField
      DisplayLabel = 'CRM'
      FieldName = 'cod_medico'
    end
    object spc_cons_med_agendacompromissocod_carteirinha: TStringField
      DisplayLabel = 'Carteirinha'
      FieldName = 'cod_carteirinha'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_agendacompromissofone_agc: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'fone_agc'
      FixedChar = True
    end
    object spc_cons_med_agendacompromissocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_agendacompromissocod_agendacompromisso: TStringField
      FieldName = 'cod_agendacompromisso'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_agendacompromissonome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_agendacompromissodescricao_sta: TStringField
      DisplayLabel = 'Status'
      FieldName = 'descricao_sta'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_agendacompromissomedico_ccl: TStringField
      DisplayLabel = 'Médico'
      FieldName = 'medico_ccl'
      FixedChar = True
      Size = 80
    end
  end
  object spc_cons_med_itemtransposicao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_itemtransposicao'
    Left = 296
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
      end>
    object spc_cons_med_itemtransposicaocod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conveniado'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_itemtransposicaocod_origem: TIntegerField
      DisplayLabel = 'Cod. de Origem'
      FieldName = 'cod_origem'
    end
    object spc_cons_med_itemtransposicaocod_itemservico: TIntegerField
      DisplayLabel = 'Cod. Item de Serviço'
      FieldName = 'cod_itemservico'
    end
  end
  object spc_cons_med_incidenciacid: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_incidenciacid'
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = '@dtinicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtfinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
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
        Name = '@idadeIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@idadeFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_incidenciacidcod_cid: TStringField
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 6
    end
    object spc_cons_med_incidenciacidnome_cid: TStringField
      FieldName = 'nome_cid'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_incidenciacidqtde: TIntegerField
      FieldName = 'qtde'
    end
  end
  object spc_cons_med_incidenciacidBen: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_incidenciacidBen'
    Left = 96
    Top = 60
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_cid'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@idadeIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@idadeFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_incidenciacidBencod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_incidenciacidBennome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_incidenciacidBenqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_med_incidenciacidBeninscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_incidenciacidBentitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
  end
  object spc_cons_adm_doencaPreExistente: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_doencaPreExistente'
    Left = 312
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_doencaPreExistentecod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_doencaPreExistentecod_cid: TStringField
      DisplayLabel = 'CID'
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 6
    end
    object spc_cons_adm_doencaPreExistentenome_cid: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'nome_cid'
      FixedChar = True
      Size = 250
    end
  end
  object spc_cons_adm_descontofolha07: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofolha07'
    Left = 506
    Top = 60
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_flh'
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
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_order'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtpagto_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtdesconto_flh'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cod_tarifa'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@matricula_mte'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_descontofolha07matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofolha07inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontofolha07titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontofolha07nome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha07cod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontofolha07cod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontofolha07nome_sds: TStringField
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontofolha07dtpagto_flh: TDateTimeField
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontofolha07parcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontofolha07nparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontofolha07vlparcelado: TFloatField
      FieldName = 'vlparcelado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha07vldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha07vlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha07referencia: TStringField
      FieldName = 'referencia'
      FixedChar = True
      Size = 25
    end
    object spc_cons_adm_descontofolha07nossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontofolha07dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontofolha07obs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha07ref: TDateTimeField
      FieldName = 'ref'
    end
    object spc_cons_adm_descontofolha07digitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
  end
  object spc_cons_med_dotacoestmedico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_dotacoestmedico'
    Left = 101
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
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
        Name = '@sequenciaIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFin'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_dotacoestmedicocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_dotacoestmedicorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_dotacoestmedicocnpj_con: TStringField
      FieldName = 'cnpj_con'
      FixedChar = True
    end
    object spc_cons_med_dotacoestmedicodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_dotacoestmedicodtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
    end
    object spc_cons_med_dotacoestmedicovlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_dotacoestmedicovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_dotacoestmedicodotacao_cvv: TStringField
      FieldName = 'dotacao_cvv'
      FixedChar = True
      Size = 40
    end
    object spc_cons_med_dotacoestmedicoprocesso_con: TStringField
      FieldName = 'processo_con'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_dotacoestmedicoempenho_con: TStringField
      FieldName = 'empenho_con'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_ImpostodeRenda: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_ImpostodeRenda'
    Left = 312
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end
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
        Name = '@opcao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_ImpostodeRendacod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_ImpostodeRendainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_ImpostodeRendanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_ImpostodeRendaendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_ImpostodeRendabairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_ImpostodeRendacidade_ben: TStringField
      FieldName = 'cidade_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_ImpostodeRendacep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_ImpostodeRendatitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_ImpostodeRendacod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_ImpostodeRendanome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_ImpostodeRendacod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_ImpostodeRendanome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_ImpostodeRendavldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_ImpostodeRendavlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_ImpostodeRendacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_ImpostodeRendanome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_ImpostodeRendacpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_ImpostodeRendaclassificacao_tar: TStringField
      FieldName = 'classificacao_tar'
      FixedChar = True
      Size = 150
    end
  end
  object spc_cons_adm_contratoAdesao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contratoAdesao'
    Left = 504
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_contratoAdesaoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_contratoAdesaonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contratoAdesaograuparent: TStringField
      FieldName = 'grauparent'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contratoAdesaodtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_contratoAdesaoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_contratoAdesaovlbasico: TFloatField
      FieldName = 'vlbasico'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_contratoAdesaovlintermed: TFloatField
      FieldName = 'vlintermed'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_contratoAdesaovlespecial: TFloatField
      FieldName = 'vlespecial'
    end
  end
  object spc_cons_farm_pedidoCompraFarmacia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_farm_pedidoCompraFarmacia'
    Left = 93
    Top = 167
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_pedidoCompraFarmacia'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_fornecedorFarmacia'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_farm_pedidoCompraFarmaciacod_fornecedorFarmacia: TIntegerField
      FieldName = 'cod_fornecedorFarmacia'
    end
    object spc_cons_farm_pedidoCompraFarmaciacod_medicamento: TIntegerField
      FieldName = 'cod_medicamento'
    end
    object spc_cons_farm_pedidoCompraFarmaciacod_pedidoCompraFarmacia: TIntegerField
      FieldName = 'cod_pedidoCompraFarmacia'
    end
    object spc_cons_farm_pedidoCompraFarmaciadtpedido_pcf: TDateTimeField
      FieldName = 'dtpedido_pcf'
    end
    object spc_cons_farm_pedidoCompraFarmaciacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_farm_pedidoCompraFarmaciaqtde_ipf: TStringField
      FieldName = 'qtde_ipf'
      FixedChar = True
      Size = 10
    end
    object spc_cons_farm_pedidoCompraFarmaciadescricao_med: TStringField
      FieldName = 'descricao_med'
      FixedChar = True
      Size = 50
    end
    object spc_cons_farm_pedidoCompraFarmaciaprecoCompra_est: TFloatField
      FieldName = 'precoCompra_est'
    end
    object spc_cons_farm_pedidoCompraFarmaciaprecoVenda_est: TFloatField
      FieldName = 'precoVenda_est'
    end
    object spc_cons_farm_pedidoCompraFarmaciacod_fornecedorSIAF: TStringField
      FieldName = 'cod_fornecedorSIAF'
      FixedChar = True
      Size = 10
    end
    object spc_cons_farm_pedidoCompraFarmaciarazaoSocial_ffa: TStringField
      FieldName = 'razaoSocial_ffa'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_farm_pedidoCompraFarmacia02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_farm_pedidoCompraFarmacia02'
    Left = 302
    Top = 165
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_pedidoCompraFarmacia'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_farm_pedidoCompraFarmacia02cod_fornecedorFarmacia: TIntegerField
      FieldName = 'cod_fornecedorFarmacia'
    end
    object spc_cons_farm_pedidoCompraFarmacia02cod_medicamento: TIntegerField
      FieldName = 'cod_medicamento'
    end
    object spc_cons_farm_pedidoCompraFarmacia02cod_pedidoCompraFarmacia: TIntegerField
      FieldName = 'cod_pedidoCompraFarmacia'
    end
    object spc_cons_farm_pedidoCompraFarmacia02dtpedido_pcf: TDateTimeField
      FieldName = 'dtpedido_pcf'
    end
    object spc_cons_farm_pedidoCompraFarmacia02cod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_farm_pedidoCompraFarmacia02qtde_ipf: TStringField
      FieldName = 'qtde_ipf'
      FixedChar = True
      Size = 10
    end
    object spc_cons_farm_pedidoCompraFarmacia02descricao_med: TStringField
      FieldName = 'descricao_med'
      FixedChar = True
      Size = 50
    end
    object spc_cons_farm_pedidoCompraFarmacia02precoCompra_est: TFloatField
      FieldName = 'precoCompra_est'
    end
    object spc_cons_farm_pedidoCompraFarmacia02precoVenda_est: TFloatField
      FieldName = 'precoVenda_est'
    end
    object spc_cons_farm_pedidoCompraFarmacia02cod_fornecedorSIAF: TStringField
      FieldName = 'cod_fornecedorSIAF'
      FixedChar = True
      Size = 10
    end
    object spc_cons_farm_pedidoCompraFarmacia02razaoSocial_ffa: TStringField
      FieldName = 'razaoSocial_ffa'
      FixedChar = True
      Size = 50
    end
    object spc_cons_farm_pedidoCompraFarmacia02unidade_est: TStringField
      FieldName = 'unidade_est'
      FixedChar = True
      Size = 9
    end
    object spc_cons_farm_pedidoCompraFarmacia02precoMedio_est: TFloatField
      FieldName = 'precoMedio_est'
    end
  end
  object spc_cons_med_corpoClinicoAmbulatorio: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_corpoClinicoAmbulatorio'
    Left = 518
    Top = 165
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_med_corpoClinicoAmbulatoriocod_crm: TIntegerField
      DisplayLabel = 'Cod. Med.'
      FieldName = 'cod_crm'
    end
    object spc_cons_med_corpoClinicoAmbulatoriocod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_corpoClinicoAmbulatoriomedico_ccl: TStringField
      DisplayLabel = 'Medico'
      FieldName = 'medico_ccl'
      FixedChar = True
      Size = 80
    end
    object spc_cons_med_corpoClinicoAmbulatoriocelular_ccl: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular_ccl'
      FixedChar = True
    end
    object spc_cons_med_corpoClinicoAmbulatoriocod_espmedamb: TIntegerField
      DisplayLabel = 'Cod. Esp.'
      FieldName = 'cod_espmedamb'
    end
    object spc_cons_med_corpoClinicoAmbulatorionome_esp: TStringField
      DisplayLabel = 'Especialidade'
      FieldName = 'nome_esp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_corpoClinicoAmbulatorioHorario: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_corpoClinicoAmbulatorioHorario'
    Left = 86
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_crm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_corpoClinicoAmbulatorioHorariocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorariodiaDaSemana_ccl: TSmallintField
      DisplayLabel = 'Dia da Semana'
      FieldName = 'diaDaSemana_ccl'
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorarioinicioatendimentomanha_ccl: TStringField
      DisplayLabel = 'Ini. Manhã'
      FieldName = 'inicioatendimentomanha_ccl'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorariofimatendimentomanha_ccl: TStringField
      DisplayLabel = 'Fim Manhã'
      FieldName = 'fimatendimentomanha_ccl'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorarioinicioatendimentotarde_ccl: TStringField
      DisplayLabel = 'Ini. Tarde'
      FieldName = 'inicioatendimentotarde_ccl'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorariofimatendimentotarde_ccl: TStringField
      DisplayLabel = 'Fim Tarde'
      FieldName = 'fimatendimentotarde_ccl'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorariointervalo_ccl: TStringField
      DisplayLabel = 'Intervalo'
      FieldName = 'intervalo_ccl'
      FixedChar = True
      Size = 9
    end
    object spc_cons_med_corpoClinicoAmbulatorioHorariodescDiaSemana: TStringField
      DisplayLabel = 'Dia da Semana'
      FieldName = 'descDiaSemana'
      FixedChar = True
      Size = 7
    end
  end
  object spc_cons_adm_etiquetaprocesso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_etiquetaprocesso'
    Left = 314
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricaoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@inscricaoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@processoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@processoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@anoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@anoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_corprocesso'
        ParamType = ptInput
      end>
    object spc_cons_adm_etiquetaprocessoprocesso_tmt: TIntegerField
      FieldName = 'processo_tmt'
    end
    object spc_cons_adm_etiquetaprocessoano_tmt: TIntegerField
      FieldName = 'ano_tmt'
    end
    object spc_cons_adm_etiquetaprocessoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_etiquetaprocessonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_etiquetaprocessodtprocesso_tmt: TDateTimeField
      FieldName = 'dtprocesso_tmt'
    end
    object spc_cons_adm_etiquetaprocessoassunto_tmt: TStringField
      FieldName = 'assunto_tmt'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_etiquetaprocessointeressado_tmt: TStringField
      FieldName = 'interessado_tmt'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_etiquetaprocessomatricula_tmt: TIntegerField
      FieldName = 'matricula_tmt'
    end
    object spc_cons_adm_etiquetaprocessodigito_tmt: TIntegerField
      FieldName = 'digito_tmt'
    end
  end
  object spc_cons_adm_carencia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_carencia'
    Left = 515
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_carenciacod_nivelcar: TIntegerField
      FieldName = 'cod_nivelcar'
    end
    object spc_cons_adm_carenciadtlimite_car: TDateTimeField
      FieldName = 'dtlimite_car'
    end
    object spc_cons_adm_carenciainformacao_car: TStringField
      FieldName = 'informacao_car'
      FixedChar = True
      Size = 200
    end
    object spc_cons_adm_carencianome_niv: TStringField
      FieldName = 'nome_niv'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_med_itemContaBenef: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_itemContaBenef'
    Left = 105
    Top = 271
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
    object spc_cons_med_itemContaBenefcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_itemContaBenefdtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_itemContaBenefsequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_itemContaBenefsequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_itemContaBenefsequenciaitem_itc: TIntegerField
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_med_itemContaBenefcod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_itemContaBenefcod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_itemContaBenefdescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_itemContaBenefqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_itemContaBenefvlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_itemContaBenefvlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_itemContaBenefcod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_itemContaBenefinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_itemContaBenefnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemContaBenefdtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_itemContaBenefstatus_ctm: TIntegerField
      FieldName = 'status_ctm'
    end
    object spc_cons_med_itemContaBenefdescricao_sts: TStringField
      FieldName = 'descricao_sts'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemContaBenefrazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_itemContaBenefcarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 45
    end
    object spc_cons_med_itemContaBenefdtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_med_itemContaBenefcod_autorizacao: TIntegerField
      FieldName = 'cod_autorizacao'
    end
  end
  object spc_cons_med_conveniadoItemespecial02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItemespecial02'
    Left = 314
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_conveniadoItemespecial02cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoItemespecial02cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItemespecial02cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_conveniadoItemespecial02vlHonorario_ihe: TFloatField
      FieldName = 'vlHonorario_ihe'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemespecial02PorteAnestesico_ihe: TFloatField
      FieldName = 'PorteAnestesico_ihe'
    end
    object spc_cons_med_conveniadoItemespecial02NumAuxiliares_ihe: TIntegerField
      FieldName = 'NumAuxiliares_ihe'
    end
    object spc_cons_med_conveniadoItemespecial02vlFilme_ihe: TFloatField
      FieldName = 'vlFilme_ihe'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemespecial02FatorMult_ihe: TFloatField
      FieldName = 'FatorMult_ihe'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemespecial02dtvalidade_ihe: TDateTimeField
      FieldName = 'dtvalidade_ihe'
    end
    object spc_cons_med_conveniadoItemespecial02nome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_conveniadoItemespecial02vlTotal_hit: TFloatField
      FieldName = 'vlTotal_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemespecial02nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
  end
  object spc_cons_med_totalmedicamento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_totalmedicamento'
    Left = 531
    Top = 273
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
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
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_totalmedicamentocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_totalmedicamentonome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_totalmedicamentocod_padraomed: TIntegerField
      FieldName = 'cod_padraomed'
    end
    object spc_cons_med_totalmedicamentodescricao_mdc: TStringField
      FieldName = 'descricao_mdc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_totalmedicamentoqtde_mdc: TFloatField
      FieldName = 'qtde_mdc'
    end
    object spc_cons_med_totalmedicamentovlinformado_mdc: TFloatField
      FieldName = 'vlinformado_mdc'
    end
  end
  object spc_cons_med_totalmaterial: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_totalmaterial'
    Left = 98
    Top = 322
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
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
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_totalmaterialcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_totalmaterialnome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_totalmaterialcod_padraomat: TIntegerField
      FieldName = 'cod_padraomat'
    end
    object spc_cons_med_totalmaterialdescricao_mtc: TStringField
      FieldName = 'descricao_mtc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_totalmaterialqtde_mtc: TFloatField
      FieldName = 'qtde_mtc'
    end
    object spc_cons_med_totalmaterialvlinformado_mtc: TFloatField
      FieldName = 'vlinformado_mtc'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_contribPFGB: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contribPFGB'
    Left = 320
    Top = 322
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_cpb'
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
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
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
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@situacao'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_situacempr'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contribPFGBdtreferencia_cpb: TDateTimeField
      FieldName = 'dtreferencia_cpb'
    end
    object spc_cons_adm_contribPFGBcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_contribPFGBmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_contribPFGBdigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_contribPFGBinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_contribPFGBtitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_contribPFGBnome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_contribPFGBnome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_contribPFGBnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBcod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_contribPFGBdtsistema_cpb: TDateTimeField
      FieldName = 'dtsistema_cpb'
    end
    object spc_cons_adm_contribPFGBdtretroativo_cpb: TDateTimeField
      FieldName = 'dtretroativo_cpb'
    end
    object spc_cons_adm_contribPFGBcod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_contribPFGBcod_grauparent: TIntegerField
      FieldName = 'cod_grauparent'
    end
    object spc_cons_adm_contribPFGBcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_contribPFGBnome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_contribPFGBcod_sitcontribPFGB: TIntegerField
      FieldName = 'cod_sitcontribPFGB'
    end
    object spc_cons_adm_contribPFGBnome_scp: TStringField
      FieldName = 'nome_scp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBcod_contribpfgb: TAutoIncField
      FieldName = 'cod_contribpfgb'
    end
    object spc_cons_adm_contribPFGBdescricao_emp: TStringField
      FieldName = 'descricao_emp'
      FixedChar = True
      Size = 60
    end
    object spc_cons_adm_contribPFGBnome_sie: TStringField
      FieldName = 'nome_sie'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_contribPFGBobservacao_cpb: TStringField
      FieldName = 'observacao_cpb'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contribPFGBdtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_contribPFGBsexo_ben: TStringField
      FieldName = 'sexo_ben'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_contribPFGBcidade_cep: TStringField
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_contribPFGBsigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
  end
  object spc_cons_med_analiseContaPlano: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_analiseContaPlano'
    Left = 530
    Top = 322
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
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
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@sexo_ben'
        ParamType = ptInput
      end>
    object spc_cons_med_analiseContaPlanocod_plano: TStringField
      FieldName = 'cod_plano'
      FixedChar = True
      Size = 1
    end
    object spc_cons_med_analiseContaPlanodescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_analiseContaPlanocod_tipoDependente: TIntegerField
      FieldName = 'cod_tipoDependente'
    end
    object spc_cons_med_analiseContaPlanodescricao_tdp: TStringField
      FieldName = 'descricao_tdp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_analiseContaPlanobenefi: TIntegerField
      FieldName = 'benefi'
    end
    object spc_cons_med_analiseContaPlanoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_med_analiseContaPlanovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_custoAgregadoPorMedicoAutorizacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_custoAgregadoPorMedicoAutorizacao'
    Left = 122
    Top = 375
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
        Name = '@cod_crm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaomedico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaocod_classificacaoSADT: TIntegerField
      FieldName = 'cod_classificacaoSADT'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaodescricaoGrupo_csa: TStringField
      FieldName = 'descricaoGrupo_csa'
      FixedChar = True
      Size = 40
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaodescricaoSubGrupo_csa: TStringField
      FieldName = 'descricaoSubGrupo_csa'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia1: TDateTimeField
      FieldName = 'referencia1'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde1: TIntegerField
      FieldName = 'qtde1'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor1: TFloatField
      FieldName = 'valor1'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia2: TDateTimeField
      FieldName = 'referencia2'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde2: TIntegerField
      FieldName = 'qtde2'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor2: TFloatField
      FieldName = 'valor2'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia3: TDateTimeField
      FieldName = 'referencia3'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde3: TIntegerField
      FieldName = 'qtde3'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor3: TFloatField
      FieldName = 'valor3'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia4: TDateTimeField
      FieldName = 'referencia4'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde4: TIntegerField
      FieldName = 'qtde4'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor4: TFloatField
      FieldName = 'valor4'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia5: TDateTimeField
      FieldName = 'referencia5'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde5: TIntegerField
      FieldName = 'qtde5'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor5: TFloatField
      FieldName = 'valor5'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia6: TDateTimeField
      FieldName = 'referencia6'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde6: TIntegerField
      FieldName = 'qtde6'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor6: TFloatField
      FieldName = 'valor6'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia7: TDateTimeField
      FieldName = 'referencia7'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde7: TIntegerField
      FieldName = 'qtde7'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor7: TFloatField
      FieldName = 'valor7'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia8: TDateTimeField
      FieldName = 'referencia8'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde8: TIntegerField
      FieldName = 'qtde8'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor8: TFloatField
      FieldName = 'valor8'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia9: TDateTimeField
      FieldName = 'referencia9'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde9: TIntegerField
      FieldName = 'qtde9'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor9: TFloatField
      FieldName = 'valor9'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia10: TDateTimeField
      FieldName = 'referencia10'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde10: TIntegerField
      FieldName = 'qtde10'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor10: TFloatField
      FieldName = 'valor10'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia11: TDateTimeField
      FieldName = 'referencia11'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde11: TIntegerField
      FieldName = 'qtde11'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor11: TFloatField
      FieldName = 'valor11'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoreferencia12: TDateTimeField
      FieldName = 'referencia12'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaoqtde12: TIntegerField
      FieldName = 'qtde12'
    end
    object spc_cons_med_custoAgregadoPorMedicoAutorizacaovalor12: TFloatField
      FieldName = 'valor12'
    end
  end
  object spc_cons_adm_descontos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontos'
    Left = 328
    Top = 374
    ParamData = <
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
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
        Name = '@nossonumero_flh'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_descontoscod_descontofolha: TIntegerField
      DisplayLabel = 'Cod. Desc. Interno'
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontoscod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontosinscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontosnome_ben: TStringField
      DisplayLabel = 'Nome do Beneficiário'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontostitulacartei_ben: TIntegerField
      DisplayLabel = 'Tit.'
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontosnome_tse: TStringField
      DisplayLabel = 'Tipo Benefi.'
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 21
    end
    object spc_cons_adm_descontoscod_tarifa: TIntegerField
      DisplayLabel = 'Tarifa'
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontosnome_tar: TStringField
      DisplayLabel = 'Nome da Tarifa'
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosmatriculadebito_seg: TIntegerField
      DisplayLabel = 'Matrícula'
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontosdigitomatdeb_seg: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontosvldesconto_adf: TFloatField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontoscod_empresafolha: TIntegerField
      DisplayLabel = 'Emp.'
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontosdtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontosdtdesconto_flh: TDateTimeField
      DisplayLabel = 'Dt. Desconto'
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_descontoscod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontosnome_sds: TStringField
      DisplayLabel = 'Status / Situação'
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontosdtsitdesconto_flh: TDateTimeField
      DisplayLabel = 'Dt. Sit. Desc.'
      FieldName = 'dtsitdesconto_flh'
    end
    object spc_cons_adm_descontosdtpagto_flh: TDateTimeField
      DisplayLabel = 'Dt. Pgto.'
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontosvlpago_flh: TFloatField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosnguia_flh: TIntegerField
      DisplayLabel = 'Nº Guia'
      FieldName = 'nguia_flh'
    end
    object spc_cons_adm_descontosobs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosnossonumero_flh: TStringField
      DisplayLabel = 'Nosso Numero'
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontosdtsistema_flh: TDateTimeField
      FieldName = 'dtsistema_flh'
    end
    object spc_cons_adm_descontosvljuros_flh: TFloatField
      FieldName = 'vljuros_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosvlmulta_flh: TFloatField
      FieldName = 'vlmulta_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosvlcorrecao_flh: TFloatField
      FieldName = 'vlcorrecao_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosdtrefatraso_flh: TDateTimeField
      DisplayLabel = 'Dt. Atraso'
      FieldName = 'dtrefatraso_flh'
    end
    object spc_cons_adm_descontoscod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_descontosqtdecotas_par: TFloatField
      FieldName = 'qtdecotas_par'
    end
    object spc_cons_adm_descontosvlpercjuros_par: TFloatField
      FieldName = 'vlpercjuros_par'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosparcelan_par: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontosnparcela_par: TIntegerField
      DisplayLabel = 'N. Parc.'
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontosdescricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosvlparcelado: TFloatField
      FieldName = 'vlparcelado'
    end
    object spc_cons_adm_descontoscpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_descontostipoSituacao_sds: TStringField
      FieldName = 'tipoSituacao_sds'
      FixedChar = True
    end
    object spc_cons_adm_descontoscpfTit_ben: TStringField
      FieldName = 'cpfTit_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_descontosnomeTit_ben: TStringField
      FieldName = 'nomeTit_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontoscod_benTit: TIntegerField
      FieldName = 'cod_benTit'
    end
  end
  object spc_cons_adm_acessoEspecial: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_acessoEspecial'
    Left = 510
    Top = 374
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_usuario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_acessoEspecialcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_acessoEspecialcod_telaespecial: TIntegerField
      DisplayLabel = 'Cod. Tela'
      FieldName = 'cod_telaespecial'
    end
    object spc_cons_adm_acessoEspecialdescricao_tlE: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_tlE'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_conveniadoItens02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItens02'
    Left = 122
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_conveniadoItens02cod_itemservico: TIntegerField
      DisplayLabel = 'Cod. Item Serviço'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItens02cod_padrao: TIntegerField
      DisplayLabel = 'Cod. Padrão'
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_conveniadoItens02nome_its: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_conveniadoItens02apelido_its: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'apelido_its'
      FixedChar = True
    end
    object spc_cons_med_conveniadoItens02dtvalidade_hit: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'dtvalidade_hit'
    end
  end
  object spc_tmp_relatorioTutelado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_tmp_relatorioTutelado'
    Left = 327
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_tmp_relatorioTuteladomatriculaDebito_ddp: TIntegerField
      FieldName = 'matriculaDebito_ddp'
    end
    object spc_tmp_relatorioTuteladodigitoMatDeb_ddp: TIntegerField
      FieldName = 'digitoMatDeb_ddp'
    end
    object spc_tmp_relatorioTuteladonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_tmp_relatorioTuteladonome_ddp: TStringField
      FieldName = 'nome_ddp'
      FixedChar = True
      Size = 50
    end
    object spc_tmp_relatorioTuteladodtnascim_ddp: TDateTimeField
      FieldName = 'dtnascim_ddp'
    end
    object spc_tmp_relatorioTuteladodescicao_gpd: TStringField
      FieldName = 'descicao_gpd'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_afiliadoodonto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_afiliadoodonto'
    Left = 512
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = '@matricula_mte'
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
        DataType = ftString
        Name = '@cod_tipocoberturaodonto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@carencia'
        ParamType = ptInput
      end>
    object spc_cons_adm_afiliadoodontocod_afiliadoOdonto: TAutoIncField
      FieldName = 'cod_afiliadoOdonto'
    end
    object spc_cons_adm_afiliadoodontocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_afiliadoodontomatricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_afiliadoodontodigito_mte: TIntegerField
      FieldName = 'digito_mte'
    end
    object spc_cons_adm_afiliadoodontonome_afo: TStringField
      FieldName = 'nome_afo'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_afiliadoodontocod_tipocoberturaodonto: TIntegerField
      FieldName = 'cod_tipocoberturaodonto'
    end
    object spc_cons_adm_afiliadoodontodtadesaoodonto_afo: TDateTimeField
      FieldName = 'dtadesaoodonto_afo'
    end
    object spc_cons_adm_afiliadoodontodtsistema_afo: TDateTimeField
      FieldName = 'dtsistema_afo'
    end
    object spc_cons_adm_afiliadoodontodtnascim_afo: TDateTimeField
      FieldName = 'dtnascim_afo'
    end
    object spc_cons_adm_afiliadoodontorg_afo: TStringField
      FieldName = 'rg_afo'
      FixedChar = True
    end
    object spc_cons_adm_afiliadoodontocpf_afo: TStringField
      FieldName = 'cpf_afo'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_afiliadoodontoobs_afo: TStringField
      FieldName = 'obs_afo'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_afiliadoodontocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_afiliadoodontodescricao_tco: TStringField
      FieldName = 'descricao_tco'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_afiliadoodontonomemae_afo: TStringField
      FieldName = 'nomemae_afo'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_afiliadoodontocod_titulacartei_afo: TIntegerField
      FieldName = 'cod_titulacartei_afo'
    end
    object spc_cons_adm_afiliadoodontocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_afiliadoodontoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_afiliadoodontonome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_afiliadoodontocarencia: TStringField
      FieldName = 'carencia'
      FixedChar = True
      Size = 3
    end
    object spc_cons_adm_afiliadoodontoDtCarencia: TDateTimeField
      FieldName = 'DtCarencia'
    end
  end
  object spc_cons_dir_TotalBenefiAtivo01: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_dir_TotalBenefiAtivo01'
    Left = 117
    Top = 485
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
      end>
    object spc_cons_dir_TotalBenefiAtivo01dtreferencia_dtb: TStringField
      FieldName = 'dtreferencia_dtb'
      FixedChar = True
      Size = 25
    end
    object spc_cons_dir_TotalBenefiAtivo01PFGBenf_dtb: TIntegerField
      FieldName = 'PFGBenf_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01PFGBapto_dtb: TIntegerField
      FieldName = 'PFGBapto_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01Intermed_dtb: TIntegerField
      FieldName = 'Intermed_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01Especial_dtb: TIntegerField
      FieldName = 'Especial_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01PFGBassistidoEnf_dtb: TIntegerField
      FieldName = 'PFGBassistidoEnf_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01PFGBassistidoApto_dtb: TIntegerField
      FieldName = 'PFGBassistidoApto_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01IntermedAssistido_dtb: TIntegerField
      FieldName = 'IntermedAssistido_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01EspecialAssistido_dtb: TIntegerField
      FieldName = 'EspecialAssistido_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivo01Total: TIntegerField
      FieldName = 'Total'
    end
  end
  object spc_cons_med_conveniadoItemCrm: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItemCrm'
    Left = 329
    Top = 485
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_conveniadoItemCrmcod_conveniado: TIntegerField
      DisplayLabel = 'Cod. conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoItemCrmcod_itemservico: TIntegerField
      DisplayLabel = 'Item Serviço'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItemCrmnome_its: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_conveniadoItemCrmcod_crm: TIntegerField
      DisplayLabel = 'CRM'
      FieldName = 'cod_crm'
    end
    object spc_cons_med_conveniadoItemCrmmedico_crm: TStringField
      DisplayLabel = 'Nome Medico'
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_conveniadoItemCrmvlHonorario_ihc: TFloatField
      DisplayLabel = 'Vl. Honorário'
      FieldName = 'vlHonorario_ihc'
    end
    object spc_cons_med_conveniadoItemCrmdtvalidade_ihc: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'dtvalidade_ihc'
    end
  end
  object spc_cons_med_extratoitemNE: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoitemNE'
    Left = 510
    Top = 485
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_itemServicoInicial'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFinal'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
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
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@sexo_ben'
        ParamType = ptInput
      end>
    object spc_cons_med_extratoitemNEnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoitemNEcod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratoitemNEcod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratoitemNEinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratoitemNEtitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratoitemNEdigito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
  end
  object spc_cons_adm_consultapatronal02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_consultapatronal02'
    Left = 676
    Top = 8
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
      end
      item
        DataType = ftString
        Name = '@vlsalarioFin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@matriculaDebito_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_consultapatronal02cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_consultapatronal02dtreferencia_pat: TDateTimeField
      FieldName = 'dtreferencia_pat'
    end
    object spc_cons_adm_consultapatronal02matriculaDebito_seg: TIntegerField
      FieldName = 'matriculaDebito_seg'
    end
    object spc_cons_adm_consultapatronal02digitoMatDeb_seg: TIntegerField
      FieldName = 'digitoMatDeb_seg'
    end
    object spc_cons_adm_consultapatronal02nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_consultapatronal02cargo_pat: TStringField
      FieldName = 'cargo_pat'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_consultapatronal02situacao_pat: TStringField
      FieldName = 'situacao_pat'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_consultapatronal02vlsalario_pat: TFloatField
      FieldName = 'vlsalario_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronal02vlcontribuicao_pat: TFloatField
      FieldName = 'vlcontribuicao_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronal02vlpatronal_pat: TFloatField
      FieldName = 'vlpatronal_pat'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_consultapatronal02cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
  end
  object spc_cons_adm_histOcorrenciaEdital02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histOcorrenciaEdital02'
    Left = 688
    Top = 60
    ParamData = <
      item
        DataType = ftString
        Name = '@dtOcorrenciaInicial'
        ParamType = ptInput
        Value = '01/01/2006'
      end
      item
        DataType = ftString
        Name = '@dtOcorrenciaFinal'
        ParamType = ptInput
        Value = '01/01/2006'
      end
      item
        DataType = ftString
        Name = '@dtReferencia_hoe'
        ParamType = ptInput
      end>
    object spc_cons_adm_histOcorrenciaEdital02cod_ocorrenciaEdital: TIntegerField
      FieldName = 'cod_ocorrenciaEdital'
    end
    object spc_cons_adm_histOcorrenciaEdital02descricao_oce: TStringField
      FieldName = 'descricao_oce'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_histOcorrenciaEdital02tipo_oce: TStringField
      FieldName = 'tipo_oce'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_histOcorrenciaEdital02total: TIntegerField
      FieldName = 'total'
    end
    object spc_cons_adm_histOcorrenciaEdital02cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_histOcorrenciaEdital02nome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_histOcorrenciaEdital02tipo_oce_1: TStringField
      FieldName = 'tipo_oce_1'
      FixedChar = True
      Size = 73
    end
  end
  object spc_cons_med_pacienteinternadoPlano: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pacienteinternadoPlano'
    Left = 690
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_pacienteinternadoPlanoTLPFGB: TIntegerField
      FieldName = 'TLPFGB'
    end
    object spc_cons_med_pacienteinternadoPlanoTLINT: TIntegerField
      FieldName = 'TLINT'
    end
    object spc_cons_med_pacienteinternadoPlanoTLESP: TIntegerField
      FieldName = 'TLESP'
    end
    object spc_cons_med_pacienteinternadoPlanocod_tipointernacao: TIntegerField
      FieldName = 'cod_tipointernacao'
    end
    object spc_cons_med_pacienteinternadoPlanosigla_int2: TStringField
      FieldName = 'sigla_int'
      FixedChar = True
      Size = 2
    end
  end
  object spc_cons_adm_descontofolhaGeral: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofolhaGeral'
    Left = 698
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal'
        ParamType = ptInput
        Value = '01/01/2001'
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
        Name = '@nossonumero_flh'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_order'
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
        DataType = ftString
        Name = '@cod_beneficiario'
        ParamType = ptInput
      end>
    object spc_cons_adm_descontofolhaGeralcod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontofolhaGeralcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontofolhaGeralinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontofolhaGeralnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolhaGeraltitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontofolhaGeralnome_tse: TStringField
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 21
    end
    object spc_cons_adm_descontofolhaGeralcod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontofolhaGeralnome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolhaGeralmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofolhaGeraldigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontofolhaGeralvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeralcod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontofolhaGeraldtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontofolhaGeraldtdesconto_flh: TDateTimeField
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_descontofolhaGeralcod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontofolhaGeralnome_sds: TStringField
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontofolhaGeraldtsitdesconto_flh: TDateTimeField
      FieldName = 'dtsitdesconto_flh'
    end
    object spc_cons_adm_descontofolhaGeraldtpagto_flh: TDateTimeField
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontofolhaGeralvlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeralnguia_flh: TIntegerField
      FieldName = 'nguia_flh'
    end
    object spc_cons_adm_descontofolhaGeralobs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolhaGeralnossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontofolhaGeraldtsistema_flh: TDateTimeField
      FieldName = 'dtsistema_flh'
    end
    object spc_cons_adm_descontofolhaGeralvljuros_flh: TFloatField
      FieldName = 'vljuros_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeralvlmulta_flh: TFloatField
      FieldName = 'vlmulta_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeralvlcorrecao_flh: TFloatField
      FieldName = 'vlcorrecao_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeraldtrefatraso_flh: TDateTimeField
      FieldName = 'dtrefatraso_flh'
    end
    object spc_cons_adm_descontofolhaGeraldescricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolhaGeralcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_descontofolhaGeralqtdecotas_par: TFloatField
      FieldName = 'qtdecotas_par'
    end
    object spc_cons_adm_descontofolhaGeralvlpercjuros_par: TFloatField
      FieldName = 'vlpercjuros_par'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolhaGeralparcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontofolhaGeralnparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontofolhaGeralvlparcelado: TFloatField
      FieldName = 'vlparcelado'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_itemAutorizacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_itemAutorizacao'
    Left = 695
    Top = 221
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_autorizacao'
        ParamType = ptInput
      end>
    object spc_cons_med_itemAutorizacaocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_itemAutorizacaodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_itemAutorizacaosequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_itemAutorizacaosequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_itemAutorizacaodtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_itemAutorizacaocarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_itemAutorizacaonomebenefi_ctm: TStringField
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemAutorizacaocod_autorizacao: TIntegerField
      FieldName = 'cod_autorizacao'
    end
    object spc_cons_med_itemAutorizacaocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_itemAutorizacaocod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_itemAutorizacaocod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_itemAutorizacaodescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_itemAutorizacaoqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_itemAutorizacaovlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_itemAutorizacaovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_itemAutorizacaovlGlosa: TFloatField
      FieldName = 'vlGlosa'
    end
  end
  object spc_cons_med_itemRealizadoBen: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_itemRealizadoBen'
    Left = 703
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoInicial'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFinal'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
        Value = '01/01/2001'
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
        Value = '01/01/2001'
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
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresa'
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
        Name = '@cod_classificacaoSADT'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
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
        Name = '@Indice'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_itemRealizadoBencod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_itemRealizadoBendtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_itemRealizadoBensequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_itemRealizadoBensequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_itemRealizadoBencarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 45
    end
    object spc_cons_med_itemRealizadoBendtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_itemRealizadoBennomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_itemRealizadoBennome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemRealizadoBencod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_itemRealizadoBencod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_itemRealizadoBendescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_itemRealizadoBenqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_itemRealizadoBenvlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_itemRealizadoBenvlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_itemRealizadoBenidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_med_itemRealizadoBencod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_itemRealizadoBencod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
  end
  object spc_cons_med_autorizacaoMedica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_autorizacaoMedica'
    Left = 703
    Top = 322
    ParamData = <
      item
        DataType = ftString
        Name = '@dtatendimentoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtatendimentoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_crm'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_autorizacaoMedica'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoSADT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipoAutorizacao'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@descricao'
        ParamType = ptInput
      end>
    object spc_cons_med_autorizacaoMedicacod_autorizacaoMedica: TIntegerField
      FieldName = 'cod_autorizacaoMedica'
    end
    object spc_cons_med_autorizacaoMedicacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_autorizacaoMedicadtatendimento_aum: TDateTimeField
      FieldName = 'dtatendimento_aum'
    end
    object spc_cons_med_autorizacaoMedicadescricao_aum: TStringField
      FieldName = 'descricao_aum'
      FixedChar = True
      Size = 100
    end
    object spc_cons_med_autorizacaoMedicacod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_autorizacaoMedicanomeMedico_aum: TStringField
      FieldName = 'nomeMedico_aum'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizacaoMedicadtsistema_aum: TDateTimeField
      FieldName = 'dtsistema_aum'
    end
    object spc_cons_med_autorizacaoMedicacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_autorizacaoMedicastatus: TIntegerField
      FieldName = 'status'
    end
    object spc_cons_med_autorizacaoMedicacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_autorizacaoMedicacod_tipoAutorizacao: TIntegerField
      FieldName = 'cod_tipoAutorizacao'
    end
    object spc_cons_med_autorizacaoMedicanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizacaoMedicanome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_autorizacaoMedicanomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_autorizacaoMedicaqtde_ita: TIntegerField
      FieldName = 'qtde_ita'
    end
    object spc_cons_med_autorizacaoMedicacod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_autorizacaoMedicanome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_autorizacaoMedicacarteirinha: TStringField
      FieldName = 'carteirinha'
      FixedChar = True
      Size = 45
    end
    object spc_cons_med_autorizacaoMedicaidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_med_autorizacaoMedicavlTotal_hit: TFloatField
      FieldName = 'vlTotal_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_autorizacaoMedicanome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
  end
  object spc_cons_adm_fechamentoContribMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoContribMensal'
    Left = 703
    Top = 373
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
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_fechamentoContribMensaldtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_fechamentoContribMensalcod_faixaetaria: TIntegerField
      FieldName = 'cod_faixaetaria'
    end
    object spc_cons_adm_fechamentoContribMensalcod_plano: TStringField
      FieldName = 'cod_plano'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_fechamentoContribMensalnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_fechamentoContribMensaldescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoContribMensaldescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_fechamentoContribMensalgrupo_fxe: TSmallintField
      FieldName = 'grupo_fxe'
    end
    object spc_cons_adm_fechamentoContribMensalqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoContribMensalvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoContribMensalvlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
    object spc_cons_adm_fechamentoContribMensalvlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_adm_histOficioDesconto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histOficioDesconto'
    Left = 703
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@oficio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtoficioIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtoficioFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
      end>
    object spc_cons_adm_histOficioDescontocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_histOficioDescontoinscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_histOficioDescontotitulacartei_ben: TIntegerField
      DisplayLabel = 'Tit.'
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_histOficioDescontonome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_histOficioDescontodtoficio1: TDateTimeField
      DisplayLabel = 'Dt. Ofício 1'
      FieldName = 'dtoficio1'
    end
    object spc_cons_adm_histOficioDescontodtoficio2: TDateTimeField
      DisplayLabel = 'Dt. Ofício 2'
      FieldName = 'dtoficio2'
    end
    object spc_cons_adm_histOficioDescontodtoficio3: TDateTimeField
      DisplayLabel = 'Dt. Ofício 3'
      FieldName = 'dtoficio3'
    end
    object spc_cons_adm_histOficioDescontoendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_histOficioDescontobairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_histOficioDescontocep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
  end
  object spc_cons_med_pacienteinternadoPlanoMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pacienteinternadoPlanoMensal'
    Left = 703
    Top = 484
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_pacienteinternadoPlanoMensalTLPFGB: TIntegerField
      FieldName = 'TLPFGB'
    end
    object spc_cons_med_pacienteinternadoPlanoMensalTLINT: TIntegerField
      FieldName = 'TLINT'
    end
    object spc_cons_med_pacienteinternadoPlanoMensalTLESP: TIntegerField
      FieldName = 'TLESP'
    end
    object spc_cons_med_pacienteinternadoPlanoMensalcod_tipointernacao: TIntegerField
      FieldName = 'cod_tipointernacao'
    end
    object spc_cons_med_pacienteinternadoPlanoMensalsigla_int: TStringField
      FieldName = 'sigla_int'
      FixedChar = True
      Size = 2
    end
  end
  object spc_cons_med_incidenciaCrm: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_incidenciaCrm'
    Left = 109
    Top = 535
    ParamData = <
      item
        DataType = ftString
        Name = '@dtinicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtfinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
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
        Name = '@idadeIni'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@idadeFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_incidenciaCrmdtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_incidenciaCrmcod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_incidenciaCrmmedico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_incidenciaCrmcod_espmedamb: TIntegerField
      FieldName = 'cod_espmedamb'
    end
    object spc_cons_med_incidenciaCrmnome_esp: TStringField
      FieldName = 'nome_esp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_fechamentoContribDetalhado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoContribDetalhado'
    Left = 326
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
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_fechamentoContribDetalhadocarteira: TStringField
      FieldName = 'carteira'
      FixedChar = True
      Size = 45
    end
    object spc_cons_adm_fechamentoContribDetalhadonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoContribDetalhadoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_fechamentoContribDetalhadovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoContribDetalhadovlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
  end
  object spc_cons_adm_fechamentoPatronalMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoPatronalMensal'
    Left = 521
    Top = 532
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_pat'
        ParamType = ptInput
        Value = '01/01/2007'
      end
      item
        DataType = ftInteger
        Name = '@grupo_fxe'
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
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftBoolean
        Name = '@decimoTerceiro'
        ParamType = ptInput
        Value = False
      end
      item
        DataType = ftInteger
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_fechamentoPatronalMensaldtreferencia_pat: TDateTimeField
      FieldName = 'dtreferencia_pat'
    end
    object spc_cons_adm_fechamentoPatronalMensalcod_faixaetaria: TIntegerField
      FieldName = 'cod_faixaetaria'
    end
    object spc_cons_adm_fechamentoPatronalMensalcod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_fechamentoPatronalMensalnome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoPatronalMensaldescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_fechamentoPatronalMensalgrupo_fxe: TSmallintField
      FieldName = 'grupo_fxe'
    end
    object spc_cons_adm_fechamentoPatronalMensalqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoPatronalMensalvlcontribuicao_pat: TFloatField
      FieldName = 'vlcontribuicao_pat'
    end
    object spc_cons_adm_fechamentoPatronalMensalvlpatronal_pat: TFloatField
      FieldName = 'vlpatronal_pat'
    end
    object spc_cons_adm_fechamentoPatronalMensalvlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_med_custoAgregadoPorEspecialidade: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_custoAgregadoPorEspecialidade'
    Left = 703
    Top = 532
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
    object spc_cons_med_custoAgregadoPorEspecialidadecod_classificacaoSADT: TIntegerField
      FieldName = 'cod_classificacaoSADT'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadedescricaoGrupo_csa: TStringField
      FieldName = 'descricaoGrupo_csa'
      FixedChar = True
      Size = 40
    end
    object spc_cons_med_custoAgregadoPorEspecialidadedescricaoSubGrupo_csa: TStringField
      FieldName = 'descricaoSubGrupo_csa'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia1: TDateTimeField
      FieldName = 'referencia1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde1: TIntegerField
      FieldName = 'qtde1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor1: TFloatField
      FieldName = 'valor1'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia2: TDateTimeField
      FieldName = 'referencia2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde2: TIntegerField
      FieldName = 'qtde2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor2: TFloatField
      FieldName = 'valor2'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia3: TDateTimeField
      FieldName = 'referencia3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde3: TIntegerField
      FieldName = 'qtde3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor3: TFloatField
      FieldName = 'valor3'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia4: TDateTimeField
      FieldName = 'referencia4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde4: TIntegerField
      FieldName = 'qtde4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor4: TFloatField
      FieldName = 'valor4'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia5: TDateTimeField
      FieldName = 'referencia5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde5: TIntegerField
      FieldName = 'qtde5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor5: TFloatField
      FieldName = 'valor5'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia6: TDateTimeField
      FieldName = 'referencia6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde6: TIntegerField
      FieldName = 'qtde6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor6: TFloatField
      FieldName = 'valor6'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia7: TDateTimeField
      FieldName = 'referencia7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde7: TIntegerField
      FieldName = 'qtde7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor7: TFloatField
      FieldName = 'valor7'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia8: TDateTimeField
      FieldName = 'referencia8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde8: TIntegerField
      FieldName = 'qtde8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor8: TFloatField
      FieldName = 'valor8'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia9: TDateTimeField
      FieldName = 'referencia9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde9: TIntegerField
      FieldName = 'qtde9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor9: TFloatField
      FieldName = 'valor9'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia10: TDateTimeField
      FieldName = 'referencia10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde10: TIntegerField
      FieldName = 'qtde10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor10: TFloatField
      FieldName = 'valor10'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia11: TDateTimeField
      FieldName = 'referencia11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde11: TIntegerField
      FieldName = 'qtde11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor11: TFloatField
      FieldName = 'valor11'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadereferencia12: TDateTimeField
      FieldName = 'referencia12'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadeqtde12: TIntegerField
      FieldName = 'qtde12'
    end
    object spc_cons_med_custoAgregadoPorEspecialidadevalor12: TFloatField
      FieldName = 'valor12'
    end
  end
  object spc_cons_adm_descontos2: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_descontos2'
    Left = 512
    Top = 587
    ParamData = <
      item
        DataType = ftString
        Name = '@cpf_fpm'
        ParamType = ptInput
      end>
    object spc_cons_adm_descontos2cod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontos2cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontos2inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontos2nome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontos2titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontos2cod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontos2matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontos2nome_tse: TStringField
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontos2digitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontos2vldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontos2dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontos2parcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontos2nparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontos2nome_sds: TStringField
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontos2nome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontos2dtdesconto_flh: TDateTimeField
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_descontos2cod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontos2dtsitdesconto_flh: TDateTimeField
      FieldName = 'dtsitdesconto_flh'
    end
    object spc_cons_adm_descontos2dtpagto_flh: TDateTimeField
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontos2vlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2nguia_flh: TIntegerField
      FieldName = 'nguia_flh'
    end
    object spc_cons_adm_descontos2obs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontos2nossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 17
    end
    object spc_cons_adm_descontos2dtsistema_flh: TDateTimeField
      FieldName = 'dtsistema_flh'
    end
    object spc_cons_adm_descontos2vljuros_flh: TFloatField
      FieldName = 'vljuros_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2vlmulta_flh: TFloatField
      FieldName = 'vlmulta_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2vlcorrecao_flh: TFloatField
      FieldName = 'vlcorrecao_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2dtrefatraso_flh: TDateTimeField
      FieldName = 'dtrefatraso_flh'
    end
    object spc_cons_adm_descontos2vlparcelado: TFloatField
      FieldName = 'vlparcelado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontos2CPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_descontos2nome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_descontos2nome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_dependenteTrocaEndereco: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_dependenteTrocaEndereco'
    Left = 709
    Top = 586
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_dependenteTrocaEnderecocod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_dependenteTrocaEndereconome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_dependenteTrocaEnderecoendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_dependenteTrocaEndereconumero_ben: TIntegerField
      FieldName = 'numero_ben'
    end
    object spc_cons_dependenteTrocaEnderecoenderecocor_ben: TStringField
      FieldName = 'enderecocor_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_dependenteTrocaEndereconumerocor_ben: TIntegerField
      FieldName = 'numerocor_ben'
    end
    object spc_cons_dependenteTrocaEndereconome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_dependenteTrocaEnderecoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_dependenteTrocaEnderecocod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_dependenteTrocaEnderecocomplemento_ben: TStringField
      FieldName = 'complemento_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_dependenteTrocaEnderecocomplementocor_ben: TStringField
      FieldName = 'complementocor_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_dependenteTrocaEnderecofoneresi_ben: TStringField
      FieldName = 'foneresi_ben'
      FixedChar = True
      Size = 40
    end
    object spc_cons_dependenteTrocaEndereconome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_dependenteTrocaEndereconome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_dependenteTrocaEnderecofonecel_ben: TStringField
      FieldName = 'fonecel_ben'
      FixedChar = True
    end
    object spc_cons_dependenteTrocaEnderecoemail_ben: TStringField
      FieldName = 'email_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_dependenteTrocaEnderecofonecome_seg: TStringField
      FieldName = 'fonecome_seg'
      FixedChar = True
      Size = 30
    end
  end
  object spc_adm_campanhas: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_adm_campanhas;1'
    Left = 321
    Top = 595
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_adm_campanhascod_campanha: TAutoIncField
      DisplayLabel = 'Cod.'
      FieldName = 'cod_campanha'
    end
    object spc_adm_campanhasdescricao_cph: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_cph'
      FixedChar = True
      Size = 50
    end
    object spc_adm_campanhascod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_adm_campanhasdtinicio_cph: TDateTimeField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'dtinicio_cph'
    end
    object spc_adm_campanhasnome_usu: TStringField
      DisplayLabel = 'Usuário'
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_adm_campanhasdtfinal_cph: TDateTimeField
      DisplayLabel = 'Dt. Fim'
      FieldName = 'dtfinal_cph'
    end
    object spc_adm_campanhascod_usuarioFinal: TIntegerField
      DisplayLabel = 'Usu. Fim'
      FieldName = 'cod_usuarioFinal'
    end
    object spc_adm_campanhasultimoprocotolo_cph: TIntegerField
      DisplayLabel = 'Ult. Prot.'
      FieldName = 'ultimoprocotolo_cph'
    end
    object spc_adm_campanhasvalor_cph: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_cph'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_adm_campanhasplanos_cph: TStringField
      DisplayLabel = 'Planos'
      FieldName = 'planos_cph'
      FixedChar = True
    end
    object spc_adm_campanhasidademenor_cph: TIntegerField
      DisplayLabel = 'Idade Ini.'
      FieldName = 'idademenor_cph'
    end
    object spc_adm_campanhasidademaior_cph: TIntegerField
      DisplayLabel = 'Idade Fim'
      FieldName = 'idademaior_cph'
    end
    object spc_adm_campanhasobs_cph: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'obs_cph'
      FixedChar = True
      Size = 120
    end
    object spc_adm_campanhasdescricao_sta: TStringField
      DisplayLabel = 'Status'
      FieldName = 'descricao_sta'
      FixedChar = True
    end
    object spc_adm_campanhascod_usuarioIinicio: TIntegerField
      DisplayLabel = 'Usu. Ini.'
      FieldName = 'cod_usuarioIinicio'
    end
  end
  object spc_adm_histcampanha: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_adm_histcampanha'
    Left = 117
    Top = 595
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_campanha'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtini'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtfim'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cancela_hph'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cobrado_hph'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@isento'
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
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@obs_hph'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@tipoatend_hph'
        ParamType = ptInput
      end>
    object spc_adm_histcampanhacod_campanha: TIntegerField
      FieldName = 'cod_campanha'
    end
    object spc_adm_histcampanhadescricao_cph: TStringField
      FieldName = 'descricao_cph'
      FixedChar = True
      Size = 50
    end
    object spc_adm_histcampanhaprotocolo_hph: TIntegerField
      FieldName = 'protocolo_hph'
    end
    object spc_adm_histcampanhanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_adm_histcampanhacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_adm_histcampanhacod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_adm_histcampanhaidadeAplicacao: TIntegerField
      FieldName = 'idadeAplicacao'
    end
    object spc_adm_histcampanhacod_hph: TAutoIncField
      FieldName = 'cod_hph'
    end
    object spc_adm_histcampanhamatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_adm_histcampanhadigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_adm_histcampanhainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_adm_histcampanhacancela_hph: TStringField
      FieldName = 'cancela_hph'
      FixedChar = True
      Size = 9
    end
    object spc_adm_histcampanhadtaplicacao_hph: TDateTimeField
      FieldName = 'dtaplicacao_hph'
    end
    object spc_adm_histcampanhacobrado_hph: TStringField
      FieldName = 'cobrado_hph'
      FixedChar = True
      Size = 11
    end
    object spc_adm_histcampanhaisencao_hph: TStringField
      FieldName = 'isencao_hph'
      FixedChar = True
      Size = 1
    end
    object spc_adm_histcampanhaobs_hph: TStringField
      FieldName = 'obs_hph'
      FixedChar = True
      Size = 50
    end
    object spc_adm_histcampanhavalor_cph: TFloatField
      FieldName = 'valor_cph'
    end
    object spc_adm_histcampanhatipoatend_hph: TIntegerField
      FieldName = 'tipoatend_hph'
    end
  end
  object spc_cons_dir_TotalBenefiAtivoporDependente: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_dir_TotalBenefiAtivoporDependente'
    Left = 709
    Top = 643
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferenciaIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
      end>
    object spc_cons_dir_TotalBenefiAtivoporDependentedtreferencia_dtb: TStringField
      FieldName = 'dtreferencia_dtb'
      FixedChar = True
      Size = 25
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBenf_tit_dtb: TIntegerField
      FieldName = 'PFGBenf_tit_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBenf_dep_dtb: TIntegerField
      FieldName = 'PFGBenf_dep_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBenf_ass_dtb: TIntegerField
      FieldName = 'PFGBenf_ass_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteIntermed_tit_dtb: TIntegerField
      FieldName = 'Intermed_tit_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteIntermed_dep_dtb: TIntegerField
      FieldName = 'Intermed_dep_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteIntermed_ass_dtb: TIntegerField
      FieldName = 'Intermed_ass_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteEspecial_tit_dtb: TIntegerField
      FieldName = 'Especial_tit_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteEspecial_dep_dtb: TIntegerField
      FieldName = 'Especial_dep_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependenteEspecial_ass_dtb: TIntegerField
      FieldName = 'Especial_ass_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBapto_tit_dtb: TIntegerField
      FieldName = 'PFGBapto_tit_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBapto_dep_dtb: TIntegerField
      FieldName = 'PFGBapto_dep_dtb'
    end
    object spc_cons_dir_TotalBenefiAtivoporDependentePFGBapto_ass_dtb: TIntegerField
      FieldName = 'PFGBapto_ass_dtb'
    end
  end
  object spc_cons_adm_BenefMatricDesc: TStoredProc
    AutoCalcFields = False
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_BenefMatricDesc'
    Left = 512
    Top = 636
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@matriculadebito_seg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@tipo_sit'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@nome_ben'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
      end>
    object spc_cons_adm_BenefMatricDescnome_emp: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 10
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_BenefMatricDescmatriculadebito_seg: TIntegerField
      DisplayLabel = 'Matríc.'
      DisplayWidth = 4
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_BenefMatricDescnome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_BenefMatricDesccod_beneficiario: TIntegerField
      DisplayLabel = 'Cód.Benef.'
      DisplayWidth = 4
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_BenefMatricDescinscricao_ben: TIntegerField
      DisplayLabel = 'Inscr.'
      DisplayWidth = 4
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_BenefMatricDesctitulacartei_ben: TIntegerField
      DisplayLabel = 'Tit.'
      DisplayWidth = 2
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_BenefMatricDescdtnascim_ben: TDateTimeField
      DisplayLabel = 'Dt.Nascim.'
      DisplayWidth = 10
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_BenefMatricDescrg_ben: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_BenefMatricDesccpf_ben: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_BenefMatricDesccod_tipodependente: TIntegerField
      DisplayLabel = 'Tip.Depend.'
      DisplayWidth = 1
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_BenefMatricDescdtcadastro_ben: TDateTimeField
      DisplayLabel = 'Dt.Cadastro'
      DisplayWidth = 1
      FieldName = 'dtcadastro_ben'
    end
    object spc_cons_adm_BenefMatricDesctipo_sit: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_sit'
    end
    object spc_cons_adm_BenefMatricDescdigitomatdeb_seg: TIntegerField
      DisplayWidth = 1
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_BenefMatricDesccod_empresafolha: TIntegerField
      DisplayWidth = 1
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_BenefMatricDesccod_fpm: TIntegerField
      FieldName = 'cod_fpm'
    end
  end
  object spc_cons_adm_dependentesparaverificacaodetabela: TStoredProc
    AutoCalcFields = False
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_dependentesparaverificacaodetabela;1'
    Left = 305
    Top = 644
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_adm_dependentesparaverificacaodetabelacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelacod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelacod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependentesparaverificacaodetabelainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_dependentesparaverificacaodetabelacod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependentesparaverificacaodetabelacod_tiposegurado: TIntegerField
      FieldName = 'cod_tiposegurado'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_tse: TStringField
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependentesparaverificacaodetabelacod_planopagto: TIntegerField
      FieldName = 'cod_planopagto'
    end
    object spc_cons_adm_dependentesparaverificacaodetabelanome_plp: TStringField
      FieldName = 'nome_plp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_dependrenovacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dependrenovacao'
    Left = 88
    Top = 653
    ParamData = <
      item
        DataType = ftString
        Name = '@dtrenovacaoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrenovacaoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtlimiteIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtlimiteFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtnascimIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtnascimFim'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
      end>
    object spc_cons_adm_dependrenovacaocod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_dependrenovacaoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_dependrenovacaotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_dependrenovacaonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependrenovacaodtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_dependrenovacaonome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_dependrenovacaodtsituacao_ben: TDateTimeField
      FieldName = 'dtsituacao_ben'
    end
    object spc_cons_adm_dependrenovacaodtrenovacao_dep: TDateTimeField
      FieldName = 'dtrenovacao_dep'
    end
    object spc_cons_adm_dependrenovacaodtlimite_dep: TDateTimeField
      FieldName = 'dtlimite_dep'
    end
    object spc_cons_adm_dependrenovacaonome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_dependrenovacaonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependrenovacaocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_dependrenovacaonome_efi: TStringField
      FieldName = 'nome_efi'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_dependrenovacaotitular: TStringField
      FieldName = 'titular'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaodiaaniversario: TStringField
      FieldName = 'diaaniversario'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_dependrenovacaoprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_dependrenovacaocod_planotitular: TIntegerField
      FieldName = 'cod_planotitular'
    end
    object spc_cons_adm_dependrenovacaonometit_pla: TStringField
      FieldName = 'nometit_pla'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_dependrenovacaocarta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dependrenovacaocarta'
    Left = 84
    Top = 706
    ParamData = <
      item
        DataType = ftMemo
        Name = '@Cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_dependrenovacaocartanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaocartadtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_dependrenovacaocartanome_ben_1: TStringField
      FieldName = 'nome_ben_1'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaocartaendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 143
    end
    object spc_cons_adm_dependrenovacaocartabairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_dependrenovacaocartacidade_ben: TStringField
      FieldName = 'cidade_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_dependrenovacaocartacep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_dependrenovacaocartasigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_adm_dependrenovacaocartadescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaocartadtrenovacao_dep: TDateTimeField
      FieldName = 'dtrenovacao_dep'
    end
    object spc_cons_adm_dependrenovacaocartacod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_dependrenovacaocartacod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_dependrenovacaocartainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_dependrenovacaocartatitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_dependrenovacaocartadigito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_adm_dependrenovacaocartadiaaniversario: TStringField
      FieldName = 'diaaniversario'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_dependrenovacaocartacod_planotitular: TIntegerField
      FieldName = 'cod_planotitular'
    end
    object spc_cons_adm_dependrenovacaocartanometit_pla: TStringField
      FieldName = 'nometit_pla'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_contacorrente: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_contacorrente'
    Left = 316
    Top = 704
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contacorrentecod_contacorrente: TAutoIncField
      FieldName = 'cod_contacorrente'
    end
    object spc_cons_adm_contacorrentebanco_ctc: TStringField
      FieldName = 'banco_ctc'
      FixedChar = True
      Size = 3
    end
    object spc_cons_adm_contacorrentenome_bco: TStringField
      FieldName = 'nome_bco'
      FixedChar = True
      Size = 60
    end
    object spc_cons_adm_contacorrenteagencia_ctc: TStringField
      FieldName = 'agencia_ctc'
      FixedChar = True
      Size = 4
    end
    object spc_cons_adm_contacorrentedigAgencia_ctc: TStringField
      FieldName = 'digAgencia_ctc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_contacorrentecontaCorrente_ctc: TStringField
      FieldName = 'contaCorrente_ctc'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_contacorrentecod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_contacorrenteinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_contacorrentenome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contacorrentematriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_contacorrentecod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_contacorrentecpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_contacorrenterg_ben: TStringField
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_contacorrentedtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_contacorrenteemail_ben: TStringField
      FieldName = 'email_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_contacorrentemailing_ben: TIntegerField
      FieldName = 'mailing_ben'
    end
    object spc_cons_adm_contacorrentefoneresi_ben: TStringField
      FieldName = 'foneresi_ben'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_contacorrenteidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_contacorrentetitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_contacorrentecontaprincipal_ctc: TBooleanField
      FieldName = 'contaprincipal_ctc'
    end
    object spc_cons_adm_contacorrenteprincipal: TStringField
      FieldName = 'principal'
      FixedChar = True
      Size = 3
    end
  end
  object spc_cons_adm_histTransfMatDesconto: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_histTransfMatDesconto'
    Left = 510
    Top = 702
    ParamData = <
      item
        DataType = ftString
        Name = '@cpf_fpm'
        ParamType = ptInput
      end>
    object spc_cons_adm_histTransfMatDescontocod_telasistema: TIntegerField
      FieldName = 'cod_telasistema'
    end
    object spc_cons_adm_histTransfMatDescontodtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_histTransfMatDescontodtalteracao_htm: TDateTimeField
      FieldName = 'dtalteracao_htm'
    end
    object spc_cons_adm_histTransfMatDescontonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_histTransfMatDescontocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_histTransfMatDescontomatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_histTransfMatDescontocod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_histTransfMatDescontovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_histTransfMatDescontocod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_histTransfMatDescontoobs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_histTransfMatDescontohtm_motivo: TStringField
      FieldName = 'htm_motivo'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_histTransfMatDescontocod_empresafolha_dest: TIntegerField
      FieldName = 'cod_empresafolha_dest'
    end
    object spc_cons_adm_histTransfMatDescontomatriculadebito_seg_dest: TIntegerField
      FieldName = 'matriculadebito_seg_dest'
    end
    object spc_cons_adm_histTransfMatDescontocpf_fpm_dest: TStringField
      FieldName = 'cpf_fpm_dest'
      FixedChar = True
      Size = 11
    end
  end
  object spc_cons_med_totalitensautorizados: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_med_totalitensautorizados'
    Left = 710
    Top = 702
    ParamData = <
      item
        DataType = ftString
        Name = '@dtatendimentoIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtatendimentoFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_crm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_autorizacaoMedica'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoSADT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipoAutorizacao'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@descricao'
        ParamType = ptInput
      end>
    object spc_cons_med_totalitensautorizadosqtd: TIntegerField
      FieldName = 'qtd'
    end
    object spc_cons_med_totalitensautorizadoscod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_totalitensautorizadosrazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_totalitensautorizadoscod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_totalitensautorizadosnome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_totalitensautorizadosvlTotal_hit: TFloatField
      FieldName = 'vlTotal_hit'
    end
    object spc_cons_med_totalitensautorizadosqtd_autorizacaomedica: TIntegerField
      FieldName = 'qtd_autorizacaomedica'
    end
  end
end
