object Fdt_principal: TFdt_principal
  OldCreateOrder = False
  Left = 12
  Top = 106
  Height = 747
  Width = 1022
  object bd_imasf: TDatabase
    AliasName = 'imasf'
    DatabaseName = 'bd_imasf'
    LoginPrompt = False
    Params.Strings = (
      'server name=dti-sql-02'
      'database name=imasf'
      'user name=stlogin'
      'password=cpD1w@zphPRDdti31')
    SessionName = 'Default'
    Left = 50
    Top = 4
  end
  object spc_cons_itemconta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_itemconta'
    Left = 56
    Top = 158
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@status_ctm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@indice'
        ParamType = ptInput
        Value = 'cod_itemservico'
      end>
    object spc_cons_itemcontacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_itemcontadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_itemcontasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_itemcontasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_itemcontasequenciaitem_itc: TIntegerField
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_itemcontacod_itemservico: TIntegerField
      DisplayLabel = 'Cod. Interno'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_itemcontadescricao_itc: TStringField
      DisplayLabel = 'Descrição do Serviço / Procedimento'
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 50
    end
    object spc_cons_itemcontaemergencia_itc: TStringField
      FieldName = 'emergencia_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemcontadhe_itc: TStringField
      FieldName = 'dhe_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemcontacod_posicao: TIntegerField
      FieldName = 'cod_posicao'
    end
    object spc_cons_itemcontaqtde_itc: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtde_itc'
      DisplayFormat = '###,##0'
    end
    object spc_cons_itemcontavlpagar_itc: TFloatField
      DisplayLabel = 'Vl. Pagar'
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemcontaretorno_itc: TStringField
      DisplayLabel = 'Retorno'
      FieldName = 'retorno_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_itemcontastatus_itc: TIntegerField
      FieldName = 'status_itc'
    end
    object spc_cons_itemcontacod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_itemcontadescricao_sts: TStringField
      DisplayLabel = 'Status'
      FieldName = 'descricao_sts'
      FixedChar = True
    end
    object spc_cons_itemcontacod_padrao: TIntegerField
      DisplayLabel = 'Cod. Padrão'
      FieldName = 'cod_padrao'
    end
    object spc_cons_itemcontavlinformado_itc: TFloatField
      DisplayLabel = 'Vl. Inform.'
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemcontadtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_itemcontapagtoincondicional_itc: TBooleanField
      FieldName = 'pagtoincondicional_itc'
    end
    object spc_cons_itemcontareducacresc_itc: TFloatField
      FieldName = 'reducacresc_itc'
      DisplayFormat = '##0.0000'
    end
    object spc_cons_itemcontaobs_itc: TStringField
      FieldName = 'obs_itc'
      FixedChar = True
      Size = 100
    end
    object spc_cons_itemcontadiferenca: TFloatField
      DisplayLabel = 'Glosa'
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qry_contamedica: TQuery
    Left = 208
  end
  object spc_cons_contamedica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_contamedica'
    Left = 52
    Top = 53
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftSmallint
        Name = '@status_ctm'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@internacao'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object IntegerField2: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object IntegerField3: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object IntegerField4: TIntegerField
      FieldName = 'cod_endconveniado'
    end
    object StringField2: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object IntegerField5: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object StringField3: TStringField
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'Cod. Autorização'
      FieldName = 'cod_autorizacao'
    end
    object IntegerField7: TIntegerField
      FieldName = 'cod_acomodacao'
    end
    object IntegerField8: TIntegerField
      FieldName = 'cod_tipatendimento'
    end
    object StringField6: TStringField
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 10
    end
    object IntegerField9: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object IntegerField10: TIntegerField
      FieldName = 'cod_crm'
    end
    object IntegerField11: TIntegerField
      FieldName = 'status_ctm'
    end
    object spc_cons_contamedicacod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_contamedicadescricao_sts: TStringField
      FieldName = 'descricao_sts'
      FixedChar = True
    end
    object spc_cons_contamedicadtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_contamedicadtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_contamedicapagtoincondicional_ctm: TBooleanField
      FieldName = 'pagtoincondicional_ctm'
    end
  end
  object spc_cons_glosa: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_glosa'
    Left = 54
    Top = 106
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@status_ctm'
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
    object spc_cons_glosacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_glosadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_glosasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_glosasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_glosasequenciaitem_itc: TIntegerField
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_glosadescricao_glo: TStringField
      DisplayLabel = 'Observação da Glosa'
      FieldName = 'descricao_glo'
      FixedChar = True
      Size = 100
    end
    object spc_cons_glosacod_erroglosa: TIntegerField
      DisplayLabel = 'Cod. Erro'
      FieldName = 'cod_erroglosa'
    end
    object spc_cons_glosacod_classeGlosa: TIntegerField
      FieldName = 'cod_classeGlosa'
    end
    object spc_cons_glosaDescricao_cgl: TStringField
      DisplayLabel = 'Classificação da Glosa'
      FieldName = 'Descricao_cgl'
      FixedChar = True
      Size = 30
    end
    object spc_cons_glosacod_descricaoGlosa: TIntegerField
      DisplayLabel = 'Cod. Glosa'
      FieldName = 'cod_descricaoGlosa'
    end
    object spc_cons_glosadescricao_dgl: TStringField
      DisplayLabel = 'Descrição no Sistema da Glosa'
      FieldName = 'descricao_dgl'
      FixedChar = True
      Size = 200
    end
    object spc_cons_glosadescricao_erg: TStringField
      DisplayLabel = 'Tipo de Glosa'
      FieldName = 'descricao_erg'
      FixedChar = True
      Size = 80
    end
  end
  object spc_cons_med_resumoconta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_resumoconta'
    Left = 56
    Top = 210
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
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
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_resumocontasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_resumocontacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_resumocontanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumocontadtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_resumocontadtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_med_resumocontacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_resumocontacarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_resumocontavlInformado: TFloatField
      FieldName = 'vlInformado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_resumocontavlPagar: TFloatField
      FieldName = 'vlPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_resumocontanome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumocontadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
  end
  object spc_cons_itemglosa: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_itemglosa'
    Left = 60
    Top = 262
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_itemglosadtrecebimento_cta: TDateTimeField
      FieldName = 'dtrecebimento_cta'
    end
    object spc_cons_itemglosadtleitura_cta: TDateTimeField
      FieldName = 'dtleitura_cta'
    end
    object spc_cons_itemglosadtcritica_cta: TDateTimeField
      FieldName = 'dtcritica_cta'
    end
    object spc_cons_itemglosacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_itemglosadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_itemglosasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_itemglosasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_itemglosacarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_itemglosanomebenefi_ctm: TStringField
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_itemglosadtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_itemglosadtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_itemglosacod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_itemglosacod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_itemglosadescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_itemglosadtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_itemglosavlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemglosavlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_itemglosacod_erroglosa: TIntegerField
      FieldName = 'cod_erroglosa'
    end
    object spc_cons_itemglosadescricao_erg: TStringField
      FieldName = 'descricao_erg'
      FixedChar = True
      Size = 80
    end
    object spc_cons_itemglosadescricao_glo: TStringField
      FieldName = 'descricao_glo'
      FixedChar = True
      Size = 80
    end
    object spc_cons_itemglosasequenciaitem_itc: TIntegerField
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_itemglosaobs_itc: TStringField
      FieldName = 'obs_itc'
      FixedChar = True
      Size = 200
    end
    object spc_cons_itemglosacod_classeGlosa: TIntegerField
      FieldName = 'cod_classeGlosa'
    end
    object spc_cons_itemglosaDescricao_cgl: TStringField
      FieldName = 'Descricao_cgl'
      FixedChar = True
      Size = 30
    end
  end
  object spc_cons_med_totalpagarconta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_totalpagarconta'
    Left = 60
    Top = 314
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_totalpagarcontatotalpagar: TFloatField
      FieldName = 'totalpagar'
    end
    object spc_cons_med_totalpagarcontatotalinformado: TFloatField
      FieldName = 'totalinformado'
    end
    object spc_cons_med_totalpagarcontavlrecuperado_cta: TFloatField
      FieldName = 'vlrecuperado_cta'
    end
  end
  object spc_cons_med_loteconta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_loteconta'
    Left = 60
    Top = 366
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_lotecontacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_lotecontadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_lotecontasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_lotecontadtrecebimento_cta: TDateTimeField
      FieldName = 'dtrecebimento_cta'
    end
    object spc_cons_med_lotecontadtleitura_cta: TDateTimeField
      FieldName = 'dtleitura_cta'
    end
    object spc_cons_med_lotecontadtcritica_cta: TDateTimeField
      FieldName = 'dtcritica_cta'
    end
    object spc_cons_med_lotecontadtrepasse_cta: TDateTimeField
      FieldName = 'dtrepasse_cta'
    end
    object spc_cons_med_lotecontadtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
    end
    object spc_cons_med_lotecontacod_midia: TIntegerField
      FieldName = 'cod_midia'
    end
    object spc_cons_med_lotecontavlrepasse_cta: TFloatField
      FieldName = 'vlrepasse_cta'
    end
    object spc_cons_med_lotecontavlapresentado_cta: TFloatField
      FieldName = 'vlapresentado_cta'
    end
    object spc_cons_med_lotecontavlrecuperado_cta: TFloatField
      FieldName = 'vlrecuperado_cta'
    end
    object spc_cons_med_lotecontavlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
    end
    object spc_cons_med_lotecontaprotocolo_cta: TIntegerField
      FieldName = 'protocolo_cta'
    end
    object spc_cons_med_lotecontavlnf_cta: TFloatField
      FieldName = 'vlnf_cta'
    end
    object spc_cons_med_lotecontadtemissaoNF_cta: TDateTimeField
      FieldName = 'dtemissaoNF_cta'
    end
    object spc_cons_med_lotecontadtrecebimentoNF_cta: TDateTimeField
      FieldName = 'dtrecebimentoNF_cta'
    end
    object spc_cons_med_lotecontadtenvioNF_cta: TDateTimeField
      FieldName = 'dtenvioNF_cta'
    end
    object spc_cons_med_lotecontadtcompetencia_cta: TDateTimeField
      FieldName = 'dtcompetencia_cta'
    end
    object spc_cons_med_lotecontarazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_lotecontacnpj_con: TStringField
      FieldName = 'cnpj_con'
      FixedChar = True
    end
    object spc_cons_med_lotecontadescricao_ccv: TStringField
      FieldName = 'descricao_ccv'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_lotecontanf_cta: TStringField
      FieldName = 'nf_cta'
      FixedChar = True
    end
    object spc_cons_med_lotecontavlISS_cta: TFloatField
      FieldName = 'vlISS_cta'
    end
    object spc_cons_med_lotecontaISSrequerido_cta: TBooleanField
      FieldName = 'ISSrequerido_cta'
    end
    object spc_cons_med_lotecontaISSrecebido_cta: TBooleanField
      FieldName = 'ISSrecebido_cta'
    end
  end
  object spc_cons_med_statusloteconta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_statusloteconta'
    Left = 212
    Top = 262
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
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
        Value = '01/01/2001'
      end>
    object spc_cons_med_statuslotecontacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_statuslotecontadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_statuslotecontasequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_statuslotecontadtrecebimento_cta: TDateTimeField
      FieldName = 'dtrecebimento_cta'
      EditMask = '99/99/9999'
    end
    object spc_cons_med_statuslotecontadtleitura_cta: TDateTimeField
      FieldName = 'dtleitura_cta'
      EditMask = '99/99/9999'
    end
    object spc_cons_med_statuslotecontadtcritica_cta: TDateTimeField
      FieldName = 'dtcritica_cta'
      EditMask = '99/99/9999'
    end
    object spc_cons_med_statuslotecontadtrepasse_cta: TDateTimeField
      FieldName = 'dtrepasse_cta'
      EditMask = '99/99/9999'
    end
    object spc_cons_med_statuslotecontadtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
      EditMask = '99/99/9999'
    end
    object spc_cons_med_statuslotecontacod_midia: TIntegerField
      FieldName = 'cod_midia'
    end
    object spc_cons_med_statuslotecontavlrepasse_cta: TFloatField
      FieldName = 'vlrepasse_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statuslotecontanome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_statuslotecontavlapresentado_cta: TFloatField
      FieldName = 'vlapresentado_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statuslotecontavlrecuperado_cta: TFloatField
      FieldName = 'vlrecuperado_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statuslotecontavlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statuslotecontaprotocolo_cta: TIntegerField
      FieldName = 'protocolo_cta'
    end
    object spc_cons_med_statuslotecontanf_cta: TStringField
      FieldName = 'nf_cta'
      FixedChar = True
    end
    object spc_cons_med_statuslotecontavlnf_cta: TFloatField
      FieldName = 'vlnf_cta'
    end
    object spc_cons_med_statuslotecontadtemissaoNF_cta: TDateTimeField
      FieldName = 'dtemissaoNF_cta'
    end
    object spc_cons_med_statuslotecontadtrecebimentoNF_cta: TDateTimeField
      FieldName = 'dtrecebimentoNF_cta'
    end
    object spc_cons_med_statuslotecontadtenvioNF_cta: TDateTimeField
      FieldName = 'dtenvioNF_cta'
    end
    object spc_cons_med_statuslotecontadtcompetencia_cta: TDateTimeField
      FieldName = 'dtcompetencia_cta'
    end
    object spc_cons_med_statuslotecontavlISS_cta: TFloatField
      FieldName = 'vlISS_cta'
    end
    object spc_cons_med_statuslotecontaISSrequerido_cta: TBooleanField
      FieldName = 'ISSrequerido_cta'
    end
    object spc_cons_med_statuslotecontaISSrecebido_cta: TBooleanField
      FieldName = 'ISSrecebido_cta'
    end
  end
  object spc_cons_med_despconvplano001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_despconvplano001'
    Left = 548
    Top = 106
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
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@status'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_despconvplano001nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despconvplano001dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_despconvplano001sequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_despconvplano001cod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_med_despconvplano001nome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despconvplano001vlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano001vlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano001numeroPA_clp: TIntegerField
      FieldName = 'numeroPA_clp'
    end
  end
  object spc_cons_med_extratobenefi001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratobenefi001'
    Left = 208
    Top = 106
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
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
    object spc_cons_med_extratobenefi001nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratobenefi001cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratobenefi001nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratobenefi001qtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_med_extratobenefi001vlpago: TFloatField
      FieldName = 'vlpago'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratobenefi001cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_extratobenefi001inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratobenefi001titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratobenefi001cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratobenefi001cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratobenefi001digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_extratobenefi001nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_extratobenefi002: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratobenefi002'
    Left = 208
    Top = 158
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
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
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_extratobenefi002cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_extratobenefi002inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratobenefi002titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratobenefi002cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratobenefi002cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratobenefi002dtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_extratobenefi002digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_extratobenefi002nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratobenefi002cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratobenefi002dtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_med_extratobenefi002nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratobenefi002qtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_extratobenefi002vlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratobenefi002nomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_extratobenefi002cod_acomodacao: TIntegerField
      FieldName = 'cod_acomodacao'
    end
    object spc_cons_med_extratobenefi002nome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 35
    end
    object spc_cons_med_extratobenefi002nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_extratobenefi003: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratobenefi003'
    Left = 210
    Top = 210
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
      end
      item
        DataType = ftString
        Name = '@valor_ini'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@valor_fin'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratobenefi003cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_extratobenefi003inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratobenefi003titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratobenefi003cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratobenefi003cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratobenefi003dtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_extratobenefi003digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_extratobenefi003nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratobenefi003cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratobenefi003dtrealizacao_itc: TDateTimeField
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_med_extratobenefi003nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratobenefi003qtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_extratobenefi003vlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratobenefi003nomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_extratobenefi003nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratobenefi003cod_acomodacao: TIntegerField
      FieldName = 'cod_acomodacao'
    end
  end
  object spc_cons_med_conveniadoItemdetalhe: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItemdetalhe'
    Left = 220
    Top = 366
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservico'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_conveniadoItemdetalhecod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoItemdetalhecod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItemdetalhedtvalidade_hit: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'dtvalidade_hit'
    end
    object spc_cons_med_conveniadoItemdetalhevlhonorario_hit: TFloatField
      DisplayLabel = 'Vl. Honorário'
      FieldName = 'vlhonorario_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemdetalhePorteAnestesico_hit: TFloatField
      DisplayLabel = 'Porte Anestesico'
      FieldName = 'PorteAnestesico_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemdetalheNumAuxiliares_hit: TIntegerField
      DisplayLabel = 'Num. Auxiliares'
      FieldName = 'NumAuxiliares_hit'
    end
    object spc_cons_med_conveniadoItemdetalhevlFilme_hit: TFloatField
      DisplayLabel = 'Vl. Filme'
      FieldName = 'vlFilme_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemdetalhefatormult_hit: TFloatField
      DisplayLabel = 'Fator Mult.'
      FieldName = 'fatormult_hit'
      DisplayFormat = '###,###,##0.0000'
    end
    object spc_cons_med_conveniadoItemdetalhevlTotal_hit: TFloatField
      DisplayLabel = 'vl. Total'
      FieldName = 'vlTotal_hit'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_conveniadoItemdetalhesequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object spc_cons_med_conveniadoItemdetalheretorno_hit: TIntegerField
      DisplayLabel = 'Retorno'
      FieldName = 'retorno_hit'
    end
  end
  object spc_cons_med_conveniadoItemEspecial: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItemEspecial'
    Left = 372
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservico'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_conveniadoItemEspecialcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoItemEspecialcod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItemEspecialcod_plano: TIntegerField
      DisplayLabel = 'Cod. Plano'
      FieldName = 'cod_plano'
    end
    object spc_cons_med_conveniadoItemEspecialvlHonorario_ihe: TFloatField
      DisplayLabel = 'vl. Honorario'
      FieldName = 'vlHonorario_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialPorteAnestesico_ihe: TFloatField
      DisplayLabel = 'Porte Anest.'
      FieldName = 'PorteAnestesico_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialNumAuxiliares_ihe: TIntegerField
      DisplayLabel = 'N. Auxil.'
      FieldName = 'NumAuxiliares_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialvlFilme_ihe: TFloatField
      DisplayLabel = 'vl. Filme'
      FieldName = 'vlFilme_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialFatorMult_ihe: TFloatField
      DisplayLabel = 'Fator Mult.'
      FieldName = 'FatorMult_ihe'
      DisplayFormat = '###,##0.0000'
    end
    object spc_cons_med_conveniadoItemEspecialnome_pla: TStringField
      DisplayLabel = 'Nome do Plano'
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_conveniadoItemEspecialvlTotal_hit: TFloatField
      DisplayLabel = 'Vl. Total'
      FieldName = 'vlTotal_hit'
    end
    object spc_cons_med_conveniadoItemEspecialdtvalidade_ihe: TDateTimeField
      FieldName = 'dtvalidade_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialdtalteracao_ihe: TDateTimeField
      FieldName = 'dtalteracao_ihe'
    end
    object spc_cons_med_conveniadoItemEspecialcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_conveniadoItemEspecialcod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
    object spc_cons_med_conveniadoItemEspecialcod_statusAtivoEsp: TIntegerField
      FieldName = 'cod_statusAtivoEsp'
    end
  end
  object spc_cons_med_Itens: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_Itens'
    Left = 372
    Top = 53
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_subgrupoIS'
        ParamType = ptInput
        Value = '1'
      end>
    object spc_cons_med_Itenscod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_Itensnome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
  end
  object spc_cons_med_extratoconven001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoconven001'
    Left = 372
    Top = 106
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoIni'
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
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
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
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratoconven001cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoconven001cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratoconven001nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratoconven001tlitens_exc: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '#,###,##0'
    end
    object spc_cons_med_extratoconven001tlpago_exc: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoconven001tlpacientes_exc: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '#,###,##0'
    end
    object spc_cons_med_extratoconven001nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoconven001razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratoconven001tlgeral_exc: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '##0.00 %'
    end
  end
  object spc_cons_med_extratoconven002: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoconven002'
    Left = 372
    Top = 158
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoFin'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratoconven002cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoconven002nome_sgr: TStringField
      FieldName = 'nome_sgr'
      FixedChar = True
      Size = 180
    end
    object spc_cons_med_extratoconven002nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoconven002razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratoconven002tlitens_exc: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoconven002tlpago_exc: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoconven002tlpacientes_exc: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoconven002tlgeral_exc: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '##0.00 %'
    end
    object spc_cons_med_extratoconven002cod_subgrupo: TIntegerField
      FieldName = 'cod_subgrupo'
    end
  end
  object spc_cons_med_extratoconven003: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoconven003'
    Left = 376
    Top = 210
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServicoFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratoconven003cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoconven003cod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object spc_cons_med_extratoconven003cod_grandegrupo: TIntegerField
      FieldName = 'cod_grandegrupo'
    end
    object spc_cons_med_extratoconven003nome_gru: TStringField
      FieldName = 'nome_gru'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratoconven003tlitens_exc: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoconven003tlpago_exc: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoconven003tlpacientes_exc: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoconven003nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoconven003razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratoconven003tlgeral_exc: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '##0.00 %'
    end
  end
  object spc_cons_med_extratoitem001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoitem001'
    Left = 376
    Top = 262
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@Cod_ItemServico'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratoitem001cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoitem001cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratoitem001nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratoitem001tlitens_exc: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoitem001tlpago_exc: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoitem001tlpacientes_exc: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoitem001nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoitem001razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratoitem001tlgeral_exc: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00 %'
    end
    object spc_cons_med_extratoitem001nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_extratoitem002: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoitem002'
    Left = 378
    Top = 314
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '1791'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservico'
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
        Value = '01/01/2002'
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
        Value = '0'
      end>
    object IntegerField12: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object IntegerField13: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object StringField1: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object IntegerField14: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object FloatField1: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField15: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object StringField4: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object FloatField2: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00 %'
    end
    object spc_cons_med_extratoitem002cod_especialidade: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object spc_cons_med_extratoitem002nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_extratoitem003: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoitem003'
    Left = 396
    Top = 366
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoInicial'
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
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
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
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = '0'
      end>
    object IntegerField16: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object IntegerField17: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object StringField7: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object IntegerField18: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object FloatField3: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00 %'
    end
    object spc_cons_med_extratoitem003nomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_extratoitem003nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoitem003cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_extratoitem003cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_extratoitem003inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_extratoitem003titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_extratoitem003digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_extratoitem003nomeextrato_its: TStringField
      FieldName = 'nomeextrato_its'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_extratocrm001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratocrm001'
    Left = 556
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
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = '0'
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
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFin'
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
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object IntegerField21: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object FloatField5: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00 %'
    end
    object spc_cons_med_extratocrm001cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratocrm001cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratocrm001cod_especialidade: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object spc_cons_med_extratocrm001cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_extratocrm001cod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_extratocrm001medico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratocrm001nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratocrm001razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_extratocrm001nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
  end
  object spc_cons_dependente: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_dependente'
    Left = 540
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '2'
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
      end>
    object spc_cons_dependentecod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_dependentenome_ben: TStringField
      DisplayLabel = 'Nome do Dependente'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_dependentedtnascim_ben: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_dependentenome_sit: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 35
    end
    object spc_cons_dependentenome_tdp: TStringField
      DisplayLabel = 'Tipo de Dependencia'
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_dependentenome_pla: TStringField
      DisplayLabel = 'Plano'
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_dependentenome_gra: TStringField
      DisplayLabel = 'Grau de Parentesco'
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_dependenteidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_dependentecod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_dependentecod_tipocoberturaodonto: TIntegerField
      FieldName = 'cod_tipocoberturaodonto'
    end
    object spc_cons_dependentedescricao_tco: TStringField
      DisplayLabel = 'Tipo Cober. Odon.'
      FieldName = 'descricao_tco'
      FixedChar = True
      Size = 30
    end
    object spc_cons_dependentedtadesaoodonto_ben: TDateTimeField
      DisplayLabel = 'Dt. Adesão Odon.'
      FieldName = 'dtadesaoodonto_ben'
    end
  end
  object spc_cons_med_despconvplano002: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_despconvplano002'
    Left = 548
    Top = 158
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaIni_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaIni_cta'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFin_cta'
        ParamType = ptInput
        Value = '10'
      end
      item
        DataType = ftInteger
        Name = '@statusConta'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_despconvplano002cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_despconvplano002nomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_despconvplano002tlpfgbEnf: TFloatField
      FieldName = 'tlpfgbEnf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlpfgbApa: TFloatField
      FieldName = 'tlpfgbApa'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlintermediario: TFloatField
      FieldName = 'tlintermediario'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlespecial: TFloatField
      FieldName = 'tlespecial'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoInt: TFloatField
      FieldName = 'tlassistidoInt'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoEsp: TFloatField
      FieldName = 'tlassistidoEsp'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoPfgbEnf: TFloatField
      FieldName = 'tlassistidoPfgbEnf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoPfgbApa: TFloatField
      FieldName = 'tlassistidoPfgbApa'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoEnf: TFloatField
      FieldName = 'tlassistidoEnf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoApa: TFloatField
      FieldName = 'tlassistidoApa'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlPfgbEnfEduc: TFloatField
      FieldName = 'tlPfgbEnfEduc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoEnfEduc: TFloatField
      FieldName = 'tlassistidoEnfEduc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002tlassistidoApaEduc: TFloatField
      FieldName = 'tlassistidoApaEduc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_despconvplano002razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
  end
  object spc_cons_adm_matriculaentrada: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_matriculaentrada'
    Left = 548
    Top = 262
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_matriculaentradacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_matriculaentradamatricula_mte: TIntegerField
      DisplayLabel = 'Matricula'
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_matriculaentradadigito_mte: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digito_mte'
    end
    object spc_cons_adm_matriculaentradavlbase_mte: TFloatField
      DisplayLabel = 'Salário / Vl. Base'
      FieldName = 'vlbase_mte'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_matriculaentradapercentual_mte: TFloatField
      DisplayLabel = '% sobre Salário'
      FieldName = 'percentual_mte'
    end
    object spc_cons_adm_matriculaentradainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_matriculaentradasituacao_mte: TIntegerField
      FieldName = 'situacao_mte'
    end
    object spc_cons_adm_matriculaentradadesc_sit: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'desc_sit'
      FixedChar = True
      Size = 7
    end
    object spc_cons_adm_matriculaentradanome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_matriculaentradacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
  end
  object spc_cons_adm_planoitemvalor: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_planoitemvalor'
    Left = 548
    Top = 210
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_planopagto'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_planoitemvalordescricao_piv: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_piv'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_planoitemvalorfaixaIni_piv: TSmallintField
      FieldName = 'faixaIni_piv'
    end
    object spc_cons_adm_planoitemvalorfaixaFin_piv: TSmallintField
      FieldName = 'faixaFin_piv'
    end
    object spc_cons_adm_planoitemvalorvlfixo_piv: TFloatField
      DisplayLabel = 'Vl. Fixo'
      FieldName = 'vlfixo_piv'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_planoitemvalorvldependente_piv: TFloatField
      DisplayLabel = 'Vl. dependente'
      FieldName = 'vldependente_piv'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_planoitemvalorpercentual_piv: TFloatField
      DisplayLabel = '% sobre Vl. Base'
      FieldName = 'percentual_piv'
      DisplayFormat = '##0.00 %'
    end
    object spc_cons_adm_planoitemvalorformacob_piv: TSmallintField
      FieldName = 'formacob_piv'
    end
    object spc_cons_adm_planoitemvalorobs_piv: TStringField
      FieldName = 'obs_piv'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_planoempresa: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_planoempresa'
    Left = 544
    Top = 366
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_planoempresanome_plp: TStringField
      DisplayLabel = 'Plano de Pagamento'
      FieldName = 'nome_plp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_planoempresanome_tdp: TStringField
      DisplayLabel = 'Tipo de Dependência'
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_planoempresadescricao_ple: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_ple'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_descontofolha02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofolha02'
    Left = 540
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '9066'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_flh'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_flh'
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
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_sitdesconto'
        ParamType = ptInput
        Value = '0'
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
        Value = '0'
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
        Name = '@cod_usuario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtsistema_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_descontofolha02cod_descontofolha: TAutoIncField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_descontofolha02cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_descontofolha02nome_ben: TStringField
      DisplayLabel = 'Nome do Beneficiário'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02vldesconto_adf: TFloatField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha02cod_tarifa: TIntegerField
      DisplayLabel = 'Cod. Tarifa'
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontofolha02nome_tar: TStringField
      DisplayLabel = 'Nome da Tarifa'
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02COLUMN7: TStringField
      DisplayLabel = 'Mês/Ano de Referência'
      FieldName = 'COLUMN7'
      FixedChar = True
      Size = 25
    end
    object spc_cons_adm_descontofolha02cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontofolha02cod_descontofolha_1: TAutoIncField
      FieldName = 'cod_descontofolha_1'
    end
    object spc_cons_adm_descontofolha02dtdesconto_flh: TDateTimeField
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_descontofolha02cod_sitdesconto: TIntegerField
      FieldName = 'cod_sitdesconto'
    end
    object spc_cons_adm_descontofolha02dtsitdesconto_flh: TDateTimeField
      FieldName = 'dtsitdesconto_flh'
    end
    object spc_cons_adm_descontofolha02dtpagto_flh: TDateTimeField
      FieldName = 'dtpagto_flh'
    end
    object spc_cons_adm_descontofolha02nome_sds: TStringField
      DisplayLabel = 'Situação do Desconto'
      FieldName = 'nome_sds'
      FixedChar = True
      Size = 35
    end
    object spc_cons_adm_descontofolha02vlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha02vlparcelado: TFloatField
      FieldName = 'vlparcelado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontofolha02inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontofolha02titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontofolha02nome_tse: TStringField
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 21
    end
    object spc_cons_adm_descontofolha02nguia_flh: TIntegerField
      FieldName = 'nguia_flh'
    end
    object spc_cons_adm_descontofolha02obs_flh: TStringField
      FieldName = 'obs_flh'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02parcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_descontofolha02nparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_descontofolha02nossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_descontofolha02dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontofolha02descricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02dtsistema_flh: TDateTimeField
      FieldName = 'dtsistema_flh'
    end
    object spc_cons_adm_descontofolha02COLUMN29: TFloatField
      FieldName = 'COLUMN29'
    end
    object spc_cons_adm_descontofolha02matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofolha02dtrefatraso_flh: TDateTimeField
      FieldName = 'dtrefatraso_flh'
    end
    object spc_cons_adm_descontofolha02vlcorrecao_flh: TFloatField
      FieldName = 'vlcorrecao_flh'
    end
    object spc_cons_adm_descontofolha02vljuros_flh: TFloatField
      FieldName = 'vljuros_flh'
    end
    object spc_cons_adm_descontofolha02vlmulta_flh: TFloatField
      FieldName = 'vlmulta_flh'
    end
    object spc_cons_adm_descontofolha02vlpercjuros_par: TFloatField
      FieldName = 'vlpercjuros_par'
    end
    object spc_cons_adm_descontofolha02nometit: TStringField
      FieldName = 'nometit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02emailtit: TStringField
      FieldName = 'emailtit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha02fonetit: TStringField
      FieldName = 'fonetit'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_descontofolha02cod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_descontofolha02processo_ben: TStringField
      FieldName = 'processo_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_descontofolha02endereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 173
    end
    object spc_cons_adm_descontofolha02nome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_descontofolha02dtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_descontofolha02cpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_descontofolha02rg_ben: TStringField
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_descontofolha02cidade_cep: TStringField
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_descontofolha02bairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_descontofolha02cep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_descontofolha02sigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_adm_descontofolha02nome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_descontofolha01: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontofolha01'
    Left = 544
    Top = 314
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
      end>
    object spc_cons_adm_descontofolha01cod_tarifa: TIntegerField
      DisplayLabel = 'Cod. Tarifa'
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontofolha01nome_tar: TStringField
      DisplayLabel = 'Nome da Tarifa'
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontofolha01COLUMN4: TStringField
      DisplayLabel = 'Mês/Ano de Refência'
      FieldName = 'COLUMN4'
      FixedChar = True
      Size = 25
    end
    object spc_cons_adm_descontofolha01cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontofolha01dtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_descontofolha01matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontofolha01digitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontofolha01vldesconto_adf: TFloatField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_extratoitem004: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoconven004'
    Left = 212
    Top = 418
    ParamData = <
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
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_extratoitem004cod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratoitem004nome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_extratoitem004tlitens_exc: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoitem004tlpago_exc: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoitem004tlpacientes_exc: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object spc_cons_med_extratoitem004tlgeral_exc: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_dependrenovacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dependrenovacao'
    Left = 208
    Top = 53
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
    object spc_cons_adm_dependrenovacaocod_novoplano: TIntegerField
      FieldName = 'cod_novoplano'
    end
    object spc_cons_adm_dependrenovacaocod_grauparent: TIntegerField
      FieldName = 'cod_grauparent'
    end
    object spc_cons_adm_dependrenovacaocod_estfisico: TSmallintField
      FieldName = 'cod_estfisico'
    end
  end
  object spc_cons_adm_dependrenovacaocarta: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dependrenovacaocarta'
    Left = 372
    Top = 418
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
    object spc_cons_adm_dependrenovacaocartanometit: TStringField
      FieldName = 'nometit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaocartaprocesso_ben: TStringField
      FieldName = 'processo_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_dependrenovacaocartadtrenovacao_dep: TDateTimeField
      FieldName = 'dtrenovacao_dep'
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
    object spc_cons_adm_dependrenovacaocartaidade: TIntegerField
      FieldName = 'idade'
    end
    object spc_cons_adm_dependrenovacaocartadescricaoplanotit: TStringField
      FieldName = 'descricaoplanotit'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_dependrenovacaocartavalorplano: TFloatField
      FieldName = 'valorplano'
    end
    object spc_cons_adm_dependrenovacaocartavalorextenso: TStringField
      FieldName = 'valorextenso'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_dependrenovacaocartanome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_dependrenovacaocartadatapartir: TStringField
      FieldName = 'datapartir'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_dependrenovacaocartacod_planopagto: TIntegerField
      FieldName = 'cod_planopagto'
    end
  end
  object spc_cons_med_extratoitem005: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoitem005'
    Left = 60
    Top = 418
    ParamData = <
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
        DataType = ftString
        Name = '@dtrealizacaoInicial_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFinal_itc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaInicial_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaInicial_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFinal_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@sequenciaFinal_cta'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object IntegerField20: TIntegerField
      FieldName = 'tlitens_exc'
      DisplayFormat = '###,###,##0'
    end
    object FloatField7: TFloatField
      FieldName = 'tlpago_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField22: TIntegerField
      FieldName = 'tlpacientes_exc'
      DisplayFormat = '###,###,##0'
    end
    object FloatField8: TFloatField
      FieldName = 'tlgeral_exc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_extratoitem005cod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object spc_cons_med_extratoitem005cod_grandegrupo: TIntegerField
      FieldName = 'cod_grandegrupo'
    end
    object spc_cons_med_extratoitem005nome_gru: TStringField
      FieldName = 'nome_gru'
      FixedChar = True
      Size = 70
    end
  end
  object spc_cons_adm_histplano: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histplano'
    Left = 380
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_histplanonome_pla: TStringField
      DisplayLabel = 'Plano'
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_histplanodtfinal_hpl: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'dtfinal_hpl'
      EditMask = '00/00/0000;1;_'
    end
    object spc_cons_adm_histplanodtinicial_hlp: TDateTimeField
      FieldName = 'dtinicial_hlp'
    end
    object spc_cons_adm_histplanodtsistema_hpl: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtsistema_hpl'
    end
    object spc_cons_adm_histplanocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
  end
  object spc_cons_adm_histtipsegurado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histtipsegurado'
    Left = 216
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_histtipseguradonome_tse: TStringField
      DisplayLabel = 'Tipo de Segurado'
      FieldName = 'nome_tse'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_histtipseguradodtfinal_hsg: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'dtfinal_hsg'
    end
    object spc_cons_adm_histtipseguradodtsistema_hsg: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtsistema_hsg'
    end
  end
  object spc_cons_adm_histtipdepend: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histtipdepend'
    Left = 60
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_histtipdependnome_tdp: TStringField
      DisplayLabel = 'Tipo de Dependência'
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_histtipdependdtfinal_hdp: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'dtfinal_hdp'
    end
    object spc_cons_adm_histtipdependdtsistema_hdp: TDateTimeField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'dtsistema_hdp'
    end
  end
  object spc_cons_adm_beneficiario001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_beneficiario001'
    Left = 546
    Top = 418
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_beneficiario001cod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_beneficiario001inscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_beneficiario001nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_beneficiario001cod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_beneficiario001cod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_beneficiario001titulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_beneficiario001digito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_adm_beneficiario001matriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_beneficiario001digitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_beneficiario001endereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_beneficiario001bairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_beneficiario001cidade_ben: TStringField
      FieldName = 'cidade_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_beneficiario001cep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_beneficiario001cod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_beneficiario001cod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_beneficiario001cod_situacao_fpm: TIntegerField
      FieldName = 'cod_situacao_fpm'
    end
  end
  object bd_imasf_ado: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=key@sa07;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=imasf;Data Source=DB-IMASF-01;Use Pr' +
      'ocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Works' +
      'tation ID=SPD08;Use Encryption for Data=False;Tag with column co' +
      'llation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 120
    Top = 8
  end
  object spc_cons_med_conveniadoItens: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItens'
    Left = 224
    Top = 313
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_itemServicoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@descricao'
        ParamType = ptInput
      end>
    object spc_cons_med_conveniadoItenscod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_conveniadoItenscod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_conveniadoItenscod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_conveniadoItensnome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_conveniadoItensdtvalidade_hit: TDateTimeField
      FieldName = 'dtvalidade_hit'
    end
    object spc_cons_med_conveniadoItensvlhonorario_hit: TFloatField
      FieldName = 'vlhonorario_hit'
    end
    object spc_cons_med_conveniadoItensPorteAnestesico_hit: TFloatField
      FieldName = 'PorteAnestesico_hit'
    end
    object spc_cons_med_conveniadoItensNumAuxiliares_hit: TIntegerField
      FieldName = 'NumAuxiliares_hit'
    end
    object spc_cons_med_conveniadoItensvlFilme_hit: TFloatField
      FieldName = 'vlFilme_hit'
    end
    object spc_cons_med_conveniadoItensfatormult_hit: TFloatField
      FieldName = 'fatormult_hit'
    end
    object spc_cons_med_conveniadoItenssequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object spc_cons_med_conveniadoItensretorno_hit: TIntegerField
      FieldName = 'retorno_hit'
    end
    object spc_cons_med_conveniadoItensvlTotal_hit: TFloatField
      FieldName = 'vlTotal_hit'
    end
    object spc_cons_med_conveniadoItensobs_hit: TMemoField
      FieldName = 'obs_hit'
      BlobType = ftMemo
    end
    object spc_cons_med_conveniadoItenscod_statusAtivo: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
  end
  object spc_cons_adm_requerimentocomvalor: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_requerimentocomvalor'
    Left = 84
    Top = 534
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_requerimentocomvalorinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_requerimentocomvalorcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_requerimentocomvalornome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_requerimentocomvaloridade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_requerimentocomvalorcod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_requerimentocomvalorcod_tipodependente: TIntegerField
      FieldName = 'cod_tipodependente'
    end
    object spc_cons_adm_requerimentocomvalornome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_requerimentocomvalortipo_sit: TSmallintField
      FieldName = 'tipo_sit'
    end
    object spc_cons_adm_requerimentocomvalorcod_planopagto: TIntegerField
      FieldName = 'cod_planopagto'
    end
    object spc_cons_adm_requerimentocomvalorcod_grauparent: TIntegerField
      FieldName = 'cod_grauparent'
    end
    object spc_cons_adm_requerimentocomvalornome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_requerimentocomvalorcod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_requerimentocomvalornome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_requerimentocomvalorvlfixo_piv: TFloatField
      FieldName = 'vlfixo_piv'
    end
    object spc_cons_adm_requerimentocomvalordescricao_pla: TStringField
      FieldName = 'descricao_pla'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_resumocontaanalitica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_med_resumocontaanalitica'
    Left = 274
    Top = 534
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
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_resumocontaanaliticacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_resumocontaanaliticasequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_resumocontaanaliticacarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_resumocontaanaliticacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_resumocontaanaliticanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumocontaanaliticadtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_resumocontaanaliticadtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_med_resumocontaanaliticanome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumocontaanaliticadtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_resumocontaanaliticavlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_resumocontaanaliticavlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_resumocontaanaliticacod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_resumocontaanaliticacod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_resumocontaanaliticadescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_resumocontaanaliticaqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_resumocontaanaliticacod_autorizacao: TIntegerField
      FieldName = 'cod_autorizacao'
    end
  end
  object spc_cons_med_conveniadoItens01: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_conveniadoItens'
    Left = 458
    Top = 534
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_itemServicoIni'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_itemservicoFin'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@descricao'
        ParamType = ptInput
      end>
    object IntegerField19: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object IntegerField23: TIntegerField
      FieldName = 'cod_padrao'
    end
    object IntegerField24: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object StringField8: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'dtvalidade_hit'
    end
    object FloatField9: TFloatField
      FieldName = 'vlhonorario_hit'
    end
    object FloatField10: TFloatField
      FieldName = 'PorteAnestesico_hit'
    end
    object IntegerField25: TIntegerField
      FieldName = 'NumAuxiliares_hit'
    end
    object FloatField11: TFloatField
      FieldName = 'vlFilme_hit'
    end
    object FloatField12: TFloatField
      FieldName = 'fatormult_hit'
    end
    object IntegerField26: TIntegerField
      FieldName = 'sequencia'
    end
    object IntegerField27: TIntegerField
      FieldName = 'retorno_hit'
    end
    object FloatField13: TFloatField
      FieldName = 'vlTotal_hit'
    end
    object MemoField1: TMemoField
      FieldName = 'obs_hit'
      BlobType = ftMemo
    end
    object IntegerField28: TIntegerField
      FieldName = 'cod_statusAtivo'
    end
  end
  object spc_cons_med_gestante: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_gestante'
    Left = 624
    Top = 534
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_order'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtfim'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@indfiltro'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_gestantecod_beneficiario: TIntegerField
      DisplayLabel = 'Cod. benef.'
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_gestanteinscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_gestantenome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_gestantedtinicio_gte: TDateTimeField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'dtinicio_gte'
    end
    object spc_cons_med_gestantedtfinal_gte: TDateTimeField
      DisplayLabel = 'Dt. Final'
      FieldName = 'dtfinal_gte'
    end
    object spc_cons_med_gestantedtsistema_gte: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtsistema_gte'
    end
  end
  object spc_cons_med_procedRealizadoBenef: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_procedRealizadoBenef'
    Left = 84
    Top = 593
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_itemservico'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_procedRealizadoBenefcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_procedRealizadoBenefdtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_procedRealizadoBenefsequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_procedRealizadoBenefsequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_procedRealizadoBenefdtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_procedRealizadoBenefcod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_procedRealizadoBenefcod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_procedRealizadoBenefdescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_procedRealizadoBenefqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_procedRealizadoBenefvlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_procedRealizadoBenefvlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
  end
  object spc_cons_med_despconvplano003: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_despconvplano003'
    Left = 272
    Top = 590
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
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = '01/01/2000'
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
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoConveniado'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_despconvplano003cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_despconvplano003nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despconvplano003dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_despconvplano003cod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_med_despconvplano003nome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despconvplano003vlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_despconvplano003vlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_despconvplano003numeroPA_clp: TIntegerField
      FieldName = 'numeroPA_clp'
    end
    object spc_cons_med_despconvplano003descricao_ccv: TStringField
      FieldName = 'descricao_ccv'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_saldoEmpenhoConveniado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_saldoEmpenhoConveniado'
    Left = 473
    Top = 590
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
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
        Value = '01/01/2000'
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
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoConveniado'
        ParamType = ptInput
        Value = 99
      end
      item
        DataType = ftInteger
        Name = '@ano'
        ParamType = ptInput
        Value = 2000
      end>
    object spc_cons_med_saldoEmpenhoConveniadocod_empenhoConveniado: TAutoIncField
      FieldName = 'cod_empenhoConveniado'
    end
    object spc_cons_med_saldoEmpenhoConveniadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_saldoEmpenhoConveniadonome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_saldoEmpenhoConveniadorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_saldoEmpenhoConveniadocnpj_emc: TStringField
      FieldName = 'cnpj_emc'
      FixedChar = True
      Size = 18
    end
    object spc_cons_med_saldoEmpenhoConveniadonumEmpenho_emc: TIntegerField
      FieldName = 'numEmpenho_emc'
    end
    object spc_cons_med_saldoEmpenhoConveniadoanoEmpenho_emc: TIntegerField
      FieldName = 'anoEmpenho_emc'
    end
    object spc_cons_med_saldoEmpenhoConveniadonumeroPA_emc: TIntegerField
      FieldName = 'numeroPA_emc'
    end
    object spc_cons_med_saldoEmpenhoConveniadodescricao_sta: TStringField
      FieldName = 'descricao_sta'
      FixedChar = True
    end
    object spc_cons_med_saldoEmpenhoConveniadovlEmpenho_emc: TFloatField
      FieldName = 'vlEmpenho_emc'
    end
    object spc_cons_med_saldoEmpenhoConveniadovlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
    end
    object spc_cons_med_saldoEmpenhoConveniadosaldo: TFloatField
      FieldName = 'saldo'
    end
  end
  object Database1: TDatabase
    AliasName = 'imasf'
    DatabaseName = 'bd_imasf'
    LoginPrompt = False
    Params.Strings = (
      'server name=dti-sql-02'
      'database name=imasf'
      'user name=stlogin'
      'password=cpD1w@zphPRDdti31')
    SessionName = 'Default'
    Left = 701
    Top = 12
  end
  object spc_cons_med_extratoconvenMensal: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoconvenMensal'
    Left = 681
    Top = 590
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtrealizacaoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@sequenciaIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferenciaFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@sequenciaFin'
        ParamType = ptInput
      end>
    object spc_cons_med_extratoconvenMensalcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoconvenMensaldtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_extratoconvenMensalcod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratoconvenMensalqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_extratoconvenMensalvlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_extratoconvenMensalvlmedio: TFloatField
      FieldName = 'vlmedio'
    end
    object spc_cons_med_extratoconvenMensalqtdeBenefi: TIntegerField
      FieldName = 'qtdeBenefi'
    end
    object spc_cons_med_extratoconvenMensalnome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_extratoconvenMensalnome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoconvenMensalrazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
  end
end
