object fdt_principal4: Tfdt_principal4
  OldCreateOrder = False
  Left = 1
  Top = 1
  Height = 812
  Width = 1157
  object spc_cons_adm_Tlbenefiporfaixa: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_Tlbenefiporfaixa'
    Left = 486
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_dr1'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_Tlbenefiporfaixadescricao_fxe: TStringField
      FieldName = 'descricao_fxe'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_TlbenefiporfaixaQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object spc_cons_adm_TlbenefiporfaixaTotalContrib: TFloatField
      FieldName = 'TotalContrib'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_TlbenefiporfaixaTotalPercapta: TFloatField
      FieldName = 'TotalPercapta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_TlbenefiporfaixaTotalPatronal: TFloatField
      FieldName = 'TotalPatronal'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_TlbenefiporfaixaTotalPercaptasalarial: TFloatField
      FieldName = 'TotalPercaptasalarial'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_Tlbenefiporfaixavltotal: TFloatField
      FieldName = 'vltotal'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_Tlbenefiporfaixavltotalpercapta: TFloatField
      FieldName = 'vltotalpercapta'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_histsalarios: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_histsalarios'
    Left = 301
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@matricula_mte'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_abeIni'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_abeFin'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresa'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_histsalariosinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_histsalariosmatricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_histsalariosnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_histsalarioscod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_histsalariosdtreferencia_abe: TDateTimeField
      FieldName = 'dtreferencia_abe'
    end
    object spc_cons_adm_histsalariosvlbase_mte: TFloatField
      FieldName = 'vlbase_mte'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_BenefiForaDoMesAnterior: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_BenefiForaDoMesAnterior'
    Left = 96
    Top = 2
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
    object spc_cons_adm_BenefiForaDoMesAnteriorinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_BenefiForaDoMesAnteriortitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_BenefiForaDoMesAnteriormatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_BenefiForaDoMesAnteriornome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_BenefiForaDoMesAnteriorvldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_BenefiForaDoMesAnteriorcod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_BenefiForaDoMesAnteriornome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_descontosMatricuraErrada: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontosMatricuraErrada'
    Left = 488
    Top = 48
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
    object spc_cons_adm_descontosMatricuraErradamatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontosMatricuraErradadigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_descontosMatricuraErradavldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_descontosMatricuraErradacod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontosMatricuraErradacod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_descontosMatricuraErradainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
  end
  object spc_cons_adm_favorito: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_favorito'
    Left = 96
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_usuario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_favoritocod_telasistema: TIntegerField
      DisplayLabel = 'Cod. Tela Sistema'
      FieldName = 'cod_telasistema'
    end
    object spc_cons_adm_favoritonome_tls: TStringField
      DisplayLabel = 'Nome Tela Sistema'
      FieldName = 'nome_tls'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_dotacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dotacao'
    Left = 303
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_unidadeOrcam'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_dotacaocod_dotacao: TIntegerField
      FieldName = 'cod_dotacao'
    end
    object spc_cons_adm_dotacaocod_unidadeOrcam: TIntegerField
      FieldName = 'cod_unidadeOrcam'
    end
    object spc_cons_adm_dotacaocod_dotacaoBase: TIntegerField
      DisplayLabel = 'Cod. Dotação'
      FieldName = 'cod_dotacaoBase'
    end
    object spc_cons_adm_dotacaovalor_dtc: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_dtc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_dotacaodotacao: TStringField
      DisplayLabel = 'Cod. Dotacao'
      FieldName = 'dotacao'
      FixedChar = True
      Size = 26
    end
    object spc_cons_adm_dotacaoProj_Ativ_OpEsp: TStringField
      DisplayLabel = 'Projetos / Atividades / Op. Especiais'
      FieldName = 'Proj_Ativ_OpEsp'
      FixedChar = True
      Size = 242
    end
  end
  object spc_cons_adm_dotacaoSetor: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_dotacaoSetor'
    Left = 490
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_setorIMASF'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_dotacaoSetordotacao: TStringField
      FieldName = 'dotacao'
      FixedChar = True
      Size = 31
    end
    object spc_cons_adm_dotacaoSetorcod_dotacao: TAutoIncField
      FieldName = 'cod_dotacao'
    end
    object spc_cons_adm_dotacaoSetorProj_Ativ_OpEsp: TStringField
      DisplayLabel = 'Projetos / Atividades / Op. Especiais'
      FieldName = 'Proj_Ativ_OpEsp'
      FixedChar = True
      Size = 242
    end
    object spc_cons_adm_dotacaoSetorvalor_dtc: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_dtc'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_consultaGeralBen: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_consultaGeralBen'
    Left = 95
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@matricula_mte'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@nome_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@ordem'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cpf_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@rg_ben'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtnascim_ben'
        ParamType = ptInput
      end>
    object spc_cons_adm_consultaGeralBencod_beneficiario: TAutoIncField
      DisplayLabel = 'Cod. Interno'
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_consultaGeralBeninscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_consultaGeralBentitulacartei_ben: TIntegerField
      DisplayLabel = 'Tit.'
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_consultaGeralBennome_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_consultaGeralBennome_tdp: TStringField
      DisplayLabel = 'Tipo Beneficiário'
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_consultaGeralBencod_plano: TIntegerField
      DisplayLabel = 'Cod. Plano'
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_consultaGeralBennome_emp: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_consultaGeralBenmatricula_mte: TIntegerField
      DisplayLabel = 'Matrícula'
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_consultaGeralBencod_sitbeneficiario: TIntegerField
      FieldName = 'cod_sitbeneficiario'
    end
    object spc_cons_adm_consultaGeralBennome_sit: TStringField
      DisplayLabel = 'Situação'
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_consultaGeralBendtnascim_ben: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_consultaGeralBenrg_ben: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_consultaGeralBencpf_ben: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_consultaGeralBencod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
  end
  object spc_cons_adm_ItemPedidoCompra: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_ItemPedidoCompra'
    Left = 303
    Top = 95
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_PedidoCompra'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_ItemPedidoCompracod_PedidoCompra: TIntegerField
      FieldName = 'cod_PedidoCompra'
    end
    object spc_cons_adm_ItemPedidoCompranumOrdem_ipc: TIntegerField
      FieldName = 'numOrdem_ipc'
    end
    object spc_cons_adm_ItemPedidoCompradiscriminacao_ipc: TStringField
      FieldName = 'discriminacao_ipc'
      FixedChar = True
      Size = 120
    end
    object spc_cons_adm_ItemPedidoCompraqtde_ipc: TIntegerField
      FieldName = 'qtde_ipc'
    end
    object spc_cons_adm_ItemPedidoComprasequencia_ipc: TIntegerField
      FieldName = 'sequencia_ipc'
    end
    object spc_cons_adm_ItemPedidoCompranumPedido_pcs: TStringField
      FieldName = 'numPedido_pcs'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_ItemPedidoCompracod_unidadeOrcam: TIntegerField
      FieldName = 'cod_unidadeOrcam'
    end
    object spc_cons_adm_ItemPedidoCompracod_setorImasf: TIntegerField
      FieldName = 'cod_setorImasf'
    end
    object spc_cons_adm_ItemPedidoCompranome_sti: TStringField
      FieldName = 'nome_sti'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_ItemPedidoCompracod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_ItemPedidoCompradescricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_ItemPedidoCompradtSolicitacao_pcs: TDateTimeField
      FieldName = 'dtSolicitacao_pcs'
    end
    object spc_cons_adm_ItemPedidoCompracod_dotacaoContabil: TIntegerField
      FieldName = 'cod_dotacaoContabil'
    end
    object spc_cons_adm_ItemPedidoCompranumeroDotacao_dtc: TStringField
      FieldName = 'numeroDotacao_dtc'
      FixedChar = True
      Size = 45
    end
    object spc_cons_adm_ItemPedidoComprajustificativa_pcs: TStringField
      FieldName = 'justificativa_pcs'
      FixedChar = True
      Size = 250
    end
    object spc_cons_adm_ItemPedidoCompracod_usuarioChefe: TIntegerField
      FieldName = 'cod_usuarioChefe'
    end
    object spc_cons_adm_ItemPedidoCompradescricao_usu_1: TStringField
      FieldName = 'descricao_usu_1'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_ItemPedidoCompracod_usuarioDiretor: TIntegerField
      FieldName = 'cod_usuarioDiretor'
    end
    object spc_cons_adm_ItemPedidoCompradescricao_usu_2: TStringField
      FieldName = 'descricao_usu_2'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_autorizainternacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_autorizainternacao'
    Left = 95
    Top = 147
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
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
        DataType = ftString
        Name = '@dtentrada_ain_Ini'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@dtentrada_ain_Fin'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@dtalta_alt_Ini'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = '@dtalta_alt_Fin'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftInteger
        Name = '@cod_plano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_tipointernacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_autorizainternacaocod_autorizainternacao: TAutoIncField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_autorizainternacaocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_autorizainternacaonomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_autorizainternacaonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_autorizainternacaoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_autorizainternacaoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_med_autorizainternacaonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_med_autorizainternacaonome_aco: TStringField
      FieldName = 'nome_aco'
      FixedChar = True
      Size = 30
    end
    object spc_cons_med_autorizainternacaodtentrada_ain: TDateTimeField
      FieldName = 'dtentrada_ain'
    end
    object spc_cons_med_autorizainternacaocod_tipointernacao: TIntegerField
      FieldName = 'cod_tipointernacao'
    end
    object spc_cons_med_autorizainternacaodtalta_alt: TDateTimeField
      FieldName = 'dtalta_alt'
    end
    object spc_cons_med_autorizainternacaotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_autorizainternacaopermanencia: TIntegerField
      FieldName = 'permanencia'
    end
    object spc_cons_med_autorizainternacaorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
  end
  object spc_cons_adm_processoporsetor: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_processoporsetor'
    Left = 305
    Top = 147
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_setorDestino'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@destinatario_tmt'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@processo_tmt'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@ano_tmt'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_corprocesso'
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
        DataType = ftString
        Name = '@assunto_tmt'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@interessado_tmt'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtprocessoInicial'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftString
        Name = '@dtprocessoFinal'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@order'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_processoporsetorprocesso_tmt: TIntegerField
      FieldName = 'processo_tmt'
    end
    object spc_cons_adm_processoporsetorano_tmt: TIntegerField
      FieldName = 'ano_tmt'
    end
    object spc_cons_adm_processoporsetorinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_processoporsetordtDestino_tmt: TDateTimeField
      FieldName = 'dtDestino_tmt'
    end
    object spc_cons_adm_processoporsetorassunto_tmt: TStringField
      FieldName = 'assunto_tmt'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_processoporsetorinteressado_tmt: TStringField
      FieldName = 'interessado_tmt'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_processoporsetorcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_processoporsetorcod_setorDestino: TIntegerField
      FieldName = 'cod_setorDestino'
    end
    object spc_cons_adm_processoporsetordestinatario_tmt: TStringField
      FieldName = 'destinatario_tmt'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_processoporsetornome_cor: TStringField
      FieldName = 'nome_cor'
      FixedChar = True
      Size = 30
    end
  end
  object spc_cons_med_totalItenservico: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_totalItenservico'
    Left = 492
    Top = 147
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
      end
      item
        DataType = ftString
        Name = '@sexo_ben'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
        ParamType = ptInput
        Value = '0'
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
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoSADT'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@Indice'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_totalItenservicoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_totalItenservicotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_totalItenserviconome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_totalItenservicototal: TIntegerField
      FieldName = 'total'
    end
    object spc_cons_med_totalItenservicovlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_totalItenservicovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_adm_reembolso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_reembolso'
    Left = 97
    Top = 194
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@status'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_reembolsosequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_adm_reembolsocod_PrestadorSM: TStringField
      FieldName = 'cod_PrestadorSM'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_reembolsonome_psm: TStringField
      FieldName = 'nome_psm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_reembolsocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_adm_reembolsocod_uf: TSmallintField
      FieldName = 'cod_uf'
    end
    object spc_cons_adm_reembolsosigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_adm_reembolsodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_reembolsostatus_ctm: TIntegerField
      FieldName = 'status_ctm'
    end
    object spc_cons_adm_reembolsodescricao_sts: TStringField
      FieldName = 'descricao_sts'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_reembolsocod_acomodacao: TIntegerField
      FieldName = 'cod_acomodacao'
    end
    object spc_cons_adm_reembolsodtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_adm_reembolsodtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_adm_reembolsocod_tipatendimento: TIntegerField
      FieldName = 'cod_tipatendimento'
    end
    object spc_cons_adm_reembolsocod_cid: TStringField
      FieldName = 'cod_cid'
      FixedChar = True
      Size = 6
    end
    object spc_cons_adm_reembolsocod_especialidade: TIntegerField
      FieldName = 'cod_especialidade'
    end
    object spc_cons_adm_reembolsonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_reembolsodtsistema_ctm: TDateTimeField
      FieldName = 'dtsistema_ctm'
    end
    object spc_cons_adm_reembolsocod_Requerimento: TIntegerField
      FieldName = 'cod_Requerimento'
    end
    object spc_cons_adm_reembolsodtprotocolo_rem2: TDateTimeField
      FieldName = 'dtprotocolo_rem'
    end
    object spc_cons_adm_reembolsocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object spc_cons_adm_reembolsotipoCalculo_rem: TIntegerField
      FieldName = 'tipoCalculo_rem'
    end
  end
  object spc_cons_adm_itemreembolso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_itemreembolso'
    Left = 304
    Top = 194
    ParamData = <
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_itemreembolsosequenciaitem_itc: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'sequenciaitem_itc'
    end
    object spc_cons_adm_itemreembolsocod_itemservico: TIntegerField
      DisplayLabel = 'Item Servico'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_adm_itemreembolsocod_padrao: TIntegerField
      DisplayLabel = 'Cod. Padrao'
      FieldName = 'cod_padrao'
    end
    object spc_cons_adm_itemreembolsodescricao_itc: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_itemreembolsoemergencia_itc: TStringField
      DisplayLabel = 'EMG'
      FieldName = 'emergencia_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_itemreembolsodhe_itc: TStringField
      DisplayLabel = 'DHE'
      FieldName = 'dhe_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_itemreembolsodtrealizacao_itc: TDateTimeField
      DisplayLabel = 'Dt. Realização'
      FieldName = 'dtrealizacao_itc'
    end
    object spc_cons_adm_itemreembolsocod_posicao: TIntegerField
      DisplayLabel = 'Pos.'
      FieldName = 'cod_posicao'
    end
    object spc_cons_adm_itemreembolsoqtde_itc: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtde_itc'
    end
    object spc_cons_adm_itemreembolsovlinformado_itc: TFloatField
      DisplayLabel = 'Vl. Inf.'
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_itemreembolsovlpagar_itc: TFloatField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object spc_cons_adm_itemreembolsoretorno_itc: TStringField
      DisplayLabel = 'Retorno'
      FieldName = 'retorno_itc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_itemreembolsosequenciaconta_ctm: TIntegerField
      DisplayLabel = 'Seq. Conta'
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_adm_itemreembolsoobs_itc: TStringField
      FieldName = 'obs_itc'
      FixedChar = True
      Size = 200
    end
  end
  object spc_cons_adm_totalreembolso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalreembolso'
    Left = 493
    Top = 194
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@sequenciaconta_ctm'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@status_ctm'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_totalreembolsocarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_totalreembolsonomebenefi_ctm: TStringField
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_totalreembolsodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_totalreembolsoTlVlinformado: TFloatField
      FieldName = 'TlVlinformado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_totalreembolsoTlVlpagar: TFloatField
      FieldName = 'TlVlpagar'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_erroleituracontamed: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_erroleituracontamed'
    Left = 97
    Top = 239
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
        Value = 0
      end>
    object spc_cons_med_erroleituracontamedcod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_erroleituracontamednome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_erroleituracontameddtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_erroleituracontamedregistro_ecm: TStringField
      FieldName = 'registro_ecm'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_erroleituracontameddtrecebimento_cta: TDateTimeField
      FieldName = 'dtrecebimento_cta'
    end
    object spc_cons_med_erroleituracontameddtcritica_cta: TDateTimeField
      FieldName = 'dtcritica_cta'
    end
  end
  object spc_cons_adm_loteFolhaDescontos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_loteFolhaDescontos'
    Left = 312
    Top = 239
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_adm_loteFolhaDescontoscod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_loteFolhaDescontosnome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_loteFolhaDescontosdtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_loteFolhaDescontosdtgeradoCont_flh: TDateTimeField
      FieldName = 'dtgeradoCont_flh'
    end
    object spc_cons_adm_loteFolhaDescontosdtenvio_flh: TDateTimeField
      FieldName = 'dtenvio_flh'
    end
    object spc_cons_adm_loteFolhaDescontosdtbaixaautomatica_flh: TDateTimeField
      FieldName = 'dtbaixaautomatica_flh'
    end
    object spc_cons_adm_loteFolhaDescontostlArquivos_flh: TIntegerField
      FieldName = 'tlArquivos_flh'
    end
  end
  object spc_cons_adm_agendamentos: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_agendamentos'
    Left = 495
    Top = 239
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtAgendamentoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtAgendamentoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtSistemaIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtSistemaFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cod_usuario'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@status_age'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@indice'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_agendamentoscod_AgendamentoBeneficiario: TAutoIncField
      FieldName = 'cod_AgendamentoBeneficiario'
    end
    object spc_cons_adm_agendamentoscod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_agendamentosinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_agendamentostitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_agendamentosnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_agendamentosdtSituacao_age: TDateTimeField
      FieldName = 'dtSituacao_age'
    end
    object spc_cons_adm_agendamentosdtAgendamento_age: TDateTimeField
      FieldName = 'dtAgendamento_age'
    end
    object spc_cons_adm_agendamentosnome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_agendamentosnome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_agendamentosnome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_agendamentosdtSistema_age: TDateTimeField
      FieldName = 'dtSistema_age'
    end
    object spc_cons_adm_agendamentoscod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_agendamentosstatus_age: TIntegerField
      FieldName = 'status_age'
    end
    object spc_cons_adm_agendamentoscod_ocorrenciaEdital: TIntegerField
      FieldName = 'cod_ocorrenciaEdital'
    end
    object spc_cons_adm_agendamentoscod_planoPagto: TIntegerField
      FieldName = 'cod_planoPagto'
    end
    object spc_cons_adm_agendamentosnome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_agendamentosdescricao_usu: TStringField
      FieldName = 'descricao_usu'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_agendamentosdtInicioCarencia_agc: TDateTimeField
      FieldName = 'dtInicioCarencia_agc'
    end
    object spc_cons_adm_agendamentosdtlimite_car: TDateTimeField
      FieldName = 'dtlimite_car'
    end
    object spc_cons_adm_agendamentosinformacao_car: TStringField
      FieldName = 'informacao_car'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_agendamentoscod_nivelcar: TIntegerField
      FieldName = 'cod_nivelcar'
    end
    object spc_cons_adm_agendamentosnome_niv: TStringField
      FieldName = 'nome_niv'
      FixedChar = True
      Size = 12
    end
  end
  object spc_cons_adm_requerimento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_requerimento'
    Left = 96
    Top = 289
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_Requerimento'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtprotocolo_rem'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_requerimentocod_Requerimento: TIntegerField
      FieldName = 'cod_Requerimento'
    end
    object spc_cons_adm_requerimentodtprotocolo_rem: TDateTimeField
      FieldName = 'dtprotocolo_rem'
    end
    object spc_cons_adm_requerimentoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_requerimentonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_requerimentoTlVlinformado: TFloatField
      FieldName = 'TlVlinformado'
    end
    object spc_cons_adm_requerimentoTlVlpagar: TFloatField
      FieldName = 'TlVlpagar'
    end
    object spc_cons_adm_requerimentodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_adm_requerimentocarteirinha: TStringField
      FieldName = 'carteirinha'
      FixedChar = True
      Size = 45
    end
    object spc_cons_adm_requerimentocpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_requerimentonomePaciente: TStringField
      FieldName = 'nomePaciente'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_requerimentocpfPaciente: TStringField
      FieldName = 'cpfPaciente'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_requerimentonomeReemb: TStringField
      FieldName = 'nomeReemb'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_requerimentocpfReemb: TStringField
      FieldName = 'cpfReemb'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_requerimentonome_bco: TStringField
      FieldName = 'nome_bco'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_requerimentoagencia_ctc: TStringField
      FieldName = 'agencia_ctc'
      FixedChar = True
      Size = 4
    end
    object spc_cons_adm_requerimentodigAgencia_ctc: TStringField
      FieldName = 'digAgencia_ctc'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_requerimentocontaCorrente_ctc: TStringField
      FieldName = 'contaCorrente_ctc'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_requerimentocpfSolicitante: TStringField
      FieldName = 'cpfSolicitante'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_requerimentonomeSolicitante: TStringField
      FieldName = 'nomeSolicitante'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_requerimentocarteirinhaSolicitante: TStringField
      FieldName = 'carteirinhaSolicitante'
      FixedChar = True
      Size = 45
    end
    object spc_cons_adm_requerimentonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_requerimentocod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_requerimentonumeroPA_npa: TIntegerField
      FieldName = 'numeroPA_npa'
    end
  end
  object spc_cons_adm_autorizacaomedica: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_autorizacaomedica'
    Left = 306
    Top = 289
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_beneficiario'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_autorizacaomedicacod_autorizacaoMedica: TIntegerField
      FieldName = 'cod_autorizacaoMedica'
    end
    object spc_cons_adm_autorizacaomedicainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_autorizacaomedicanome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_autorizacaomedicadtatendimento_aum: TDateTimeField
      FieldName = 'dtatendimento_aum'
    end
    object spc_cons_adm_autorizacaomedicacod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_adm_autorizacaomedicanome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_adm_autorizacaomedicadescricao_aum: TStringField
      FieldName = 'descricao_aum'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_autorizacaomedicacod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_adm_autorizacaomedicanomeMedico_aum: TStringField
      FieldName = 'nomeMedico_aum'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_autorizacaomedicadtsistema_aum: TDateTimeField
      FieldName = 'dtsistema_aum'
    end
    object spc_cons_adm_autorizacaomedicacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_autorizacaomedicaobs_ita: TStringField
      FieldName = 'obs_ita'
      FixedChar = True
      Size = 150
    end
  end
  object spc_cons_adm_altecaonossoNumero: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_altecaonossoNumero'
    Left = 495
    Top = 289
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_descontofolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@parcelan_par'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_altecaonossoNumerocod_descontofolha: TIntegerField
      FieldName = 'cod_descontofolha'
    end
    object spc_cons_adm_altecaonossoNumerocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_altecaonossoNumeronome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_altecaonossoNumerocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_adm_altecaonossoNumerocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_adm_altecaonossoNumeroinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_altecaonossoNumerodtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_altecaonossoNumerotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_altecaonossoNumerodigito_ben: TIntegerField
      FieldName = 'digito_ben'
    end
    object spc_cons_adm_altecaonossoNumeromatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_altecaonossoNumerodigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_altecaonossoNumerocod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_altecaonossoNumeronome_tar: TStringField
      FieldName = 'nome_tar'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_altecaonossoNumerocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_altecaonossoNumeronome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_altecaonossoNumerodtdesconto_flh: TDateTimeField
      FieldName = 'dtdesconto_flh'
    end
    object spc_cons_adm_altecaonossoNumeronossonumero_flh: TStringField
      FieldName = 'nossonumero_flh'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_altecaonossoNumerovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_altecaonossoNumeronparcela_par: TIntegerField
      FieldName = 'nparcela_par'
    end
    object spc_cons_adm_altecaonossoNumeroparcelan_par: TIntegerField
      FieldName = 'parcelan_par'
    end
    object spc_cons_adm_altecaonossoNumerovalorpagar_par: TFloatField
      FieldName = 'valorpagar_par'
    end
    object spc_cons_adm_altecaonossoNumerovlpercjuros_par: TFloatField
      FieldName = 'vlpercjuros_par'
    end
  end
  object spc_cons_adm_itemautorizacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_itemautorizacao'
    Left = 96
    Top = 334
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_autorizacaoMedica'
        ParamType = ptInput
      end>
    object spc_cons_adm_itemautorizacaocod_autorizacaoMedica: TIntegerField
      FieldName = 'cod_autorizacaoMedica'
    end
    object spc_cons_adm_itemautorizacaocod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_adm_itemautorizacaoobs_ita: TStringField
      FieldName = 'obs_ita'
      FixedChar = True
      Size = 150
    end
    object spc_cons_adm_itemautorizacaoqtde_ita: TIntegerField
      FieldName = 'qtde_ita'
    end
    object spc_cons_adm_itemautorizacaocod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_adm_itemautorizacaonome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_adm_itemautorizacaodtatendimento_ita: TDateTimeField
      FieldName = 'dtatendimento_ita'
    end
    object spc_cons_adm_itemautorizacaodtsistema_ita: TDateTimeField
      FieldName = 'dtsistema_ita'
    end
    object spc_cons_adm_itemautorizacaocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_itemautorizacaonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_itemautorizacaocod_statusAutorizaInternacao: TIntegerField
      FieldName = 'cod_statusAutorizaInternacao'
    end
    object spc_cons_adm_itemautorizacaodescricao_sai: TStringField
      FieldName = 'descricao_sai'
      FixedChar = True
      Size = 15
    end
  end
  object spc_cons_med_pacienteinternado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_pacienteinternado'
    Left = 311
    Top = 334
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end>
    object spc_cons_med_pacienteinternadocod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_pacienteinternadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_pacienteinternadonomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_pacienteinternadocod_plano: TIntegerField
      FieldName = 'cod_plano'
    end
    object spc_cons_med_pacienteinternadoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_pacienteinternadocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object spc_cons_med_pacienteinternadodigito_ben: TSmallintField
      FieldName = 'digito_ben'
    end
    object spc_cons_med_pacienteinternadotitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_med_pacienteinternadonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_pacienteinternadoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_med_pacienteinternadonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadonome_its: TStringField
      FieldName = 'nome_its'
      FixedChar = True
      Size = 255
    end
    object spc_cons_med_pacienteinternadodtentrada_ain: TDateTimeField
      FieldName = 'dtentrada_ain'
    end
    object spc_cons_med_pacienteinternadolocal_ain: TStringField
      FieldName = 'local_ain'
      FixedChar = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadoDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
    end
    object spc_cons_med_pacienteinternadoDiariasQTO: TIntegerField
      FieldName = 'DiariasQTO'
    end
    object spc_cons_med_pacienteinternadoDiferenca: TIntegerField
      FieldName = 'Diferenca'
    end
    object spc_cons_med_pacienteinternadonome_cid: TStringField
      FieldName = 'nome_cid'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_pacienteinternadonome_aco: TStringField
      FieldName = 'nome_aco'
      FixedChar = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadosigla_int: TStringField
      FieldName = 'sigla_int'
      FixedChar = True
      Size = 2
    end
    object spc_cons_med_pacienteinternadonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadodtalta_alt: TDateTimeField
      FieldName = 'dtalta_alt'
    end
    object spc_cons_med_pacienteinternadoDiariasConcessao: TIntegerField
      FieldName = 'DiariasConcessao'
    end
    object spc_cons_med_pacienteinternadorazao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
  end
  object spc_cons_adm_extratoreembolso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_extratoreembolso'
    Left = 498
    Top = 334
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_Requerimento'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtprotocolo_rem'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtentradaIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtentradaFin'
        ParamType = ptInput
      end>
    object spc_cons_adm_extratoreembolsocod_Requerimento: TIntegerField
      FieldName = 'cod_Requerimento'
    end
    object spc_cons_adm_extratoreembolsocod_PrestadorSM: TStringField
      FieldName = 'cod_PrestadorSM'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_extratoreembolsodtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_adm_extratoreembolsonome_psm: TStringField
      FieldName = 'nome_psm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoreembolsovlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_extratoreembolsovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_extratoreembolsocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_extratoreembolsonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_extratoreembolsoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_extratoreembolsocod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_adm_extratoreembolsodescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_extratoreembolsoobs_itc: TStringField
      FieldName = 'obs_itc'
      FixedChar = True
      Size = 200
    end
  end
  object spc_cons_med_statusloteconta001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_statusloteconta001'
    Left = 96
    Top = 383
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
        Value = '01/01/2001'
      end>
    object spc_cons_med_statusloteconta001cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_statusloteconta001nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_statusloteconta001dtreferencia: TStringField
      FieldName = 'dtreferencia'
      FixedChar = True
      Size = 25
    end
    object spc_cons_med_statusloteconta001vlapresentado_cta: TFloatField
      FieldName = 'vlapresentado_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statusloteconta001vlrepasse_cta: TFloatField
      FieldName = 'vlrepasse_cta'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statusloteconta001diferenca: TFloatField
      FieldName = 'diferenca'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_statusloteconta001dtcritica_cta: TDateTimeField
      FieldName = 'dtcritica_cta'
    end
    object spc_cons_med_statusloteconta001dtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
    end
  end
  object spc_cons_adm_descontosduplicados: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_descontosduplicados'
    Left = 310
    Top = 383
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
    object spc_cons_adm_descontosduplicadosinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_descontosduplicadostitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
    object spc_cons_adm_descontosduplicadosmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_descontosduplicadosnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_descontosduplicadoscod_tarifa: TIntegerField
      FieldName = 'cod_tarifa'
    end
    object spc_cons_adm_descontosduplicadosvldescontoatual: TFloatField
      FieldName = 'vldescontoatual'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_resumoconta02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_resumoconta02'
    Left = 498
    Top = 383
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
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_resumoconta02cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_resumoconta02carteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_resumoconta02cod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_resumoconta02nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumoconta02nome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_resumoconta02dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_resumoconta02vlInformado: TFloatField
      FieldName = 'vlInformado'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_resumoconta02vlPagar: TFloatField
      FieldName = 'vlPagar'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object spc_cons_med_extratoCrmDetalhado: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_extratoCrmDetalhado'
    Left = 90
    Top = 435
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_crm'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_itemServico'
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
        DataType = ftInteger
        Name = '@cod_acomodacao'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_med_extratoCrmDetalhadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_extratoCrmDetalhadonomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_extratoCrmDetalhadocod_crm: TIntegerField
      FieldName = 'cod_crm'
    end
    object spc_cons_med_extratoCrmDetalhadomedico_crm: TStringField
      FieldName = 'medico_crm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoCrmDetalhadocod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_extratoCrmDetalhadocarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 45
    end
    object spc_cons_med_extratoCrmDetalhadonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_extratoCrmDetalhadoqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_extratoCrmDetalhadovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_extratoCrmDetalhadodtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
  end
  object spc_cons_med_criticaAutorizacaoItem: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_criticaAutorizacaoItem'
    Left = 309
    Top = 430
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_med_criticaAutorizacaoItemcod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_criticaAutorizacaoItemnome_con: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_criticaAutorizacaoItemcriticaConveniado: TStringField
      DisplayLabel = 'Conveniado'
      FieldName = 'criticaConveniado'
      FixedChar = True
      Size = 1
    end
    object spc_cons_med_criticaAutorizacaoItemcriticaBeneficiario: TStringField
      DisplayLabel = 'Beneficiario'
      FieldName = 'criticaBeneficiario'
      FixedChar = True
      Size = 1
    end
    object spc_cons_med_criticaAutorizacaoItemcriticaCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'criticaCRM'
      FixedChar = True
      Size = 1
    end
    object spc_cons_med_criticaAutorizacaoItemcriticaItem: TStringField
      DisplayLabel = 'Procedimento'
      FieldName = 'criticaItem'
      FixedChar = True
      Size = 1
    end
  end
  object spc_cons_med_criticaCRM: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_criticaCRM'
    Left = 500
    Top = 430
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_med_criticaCRMcod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_criticaCRMnome_con: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_med_itemhonorarioParticipacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_itemhonorarioParticipacao'
    Left = 669
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end>
    object spc_cons_med_itemhonorarioParticipacaocod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_itemhonorarioParticipacaonome_con: TStringField
      DisplayLabel = 'Conveniado'
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemhonorarioParticipacaonomereduzido_con: TStringField
      DisplayLabel = 'Conveniado'
      FieldName = 'nomereduzido_con'
      FixedChar = True
    end
    object spc_cons_med_itemhonorarioParticipacaocod_itemServico: TIntegerField
      DisplayLabel = 'Item Serviço'
      FieldName = 'cod_itemServico'
    end
    object spc_cons_med_itemhonorarioParticipacaonome_its: TStringField
      DisplayLabel = 'Descrição Item'
      FieldName = 'nome_its'
      FixedChar = True
      Size = 250
    end
    object spc_cons_med_itemhonorarioParticipacaovlParticipacao_ihp: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vlParticipacao_ihp'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_med_itemhonorarioParticipacaodescricaoAutorizacao_ihp: TStringField
      DisplayLabel = 'Descricão'
      FieldName = 'descricaoAutorizacao_ihp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemhonorarioParticipacaoobs_ihp: TStringField
      DisplayLabel = 'Observação'
      FieldName = 'obs_ihp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_itemhonorarioParticipacaodtsistema_ihp: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtsistema_ihp'
    end
  end
  object spc_cons_med_contaBenefTratamento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_contaBenefTratamento'
    Left = 669
    Top = 109
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2008'
      end>
    object spc_cons_med_contaBenefTratamentocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_contaBenefTratamentonome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_contaBenefTratamentodtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_contaBenefTratamentosequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_contaBenefTratamentosequenciaconta_ctm: TIntegerField
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_contaBenefTratamentocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_contaBenefTratamentocarteirainform_ctm: TStringField
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_contaBenefTratamentonomebenefi_ctm: TStringField
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_contaBenefTratamentodtentrada_ctm: TDateTimeField
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_contaBenefTratamentodtsaida_ctm: TDateTimeField
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_med_contaBenefTratamentocod_itemservico: TIntegerField
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_contaBenefTratamentocod_padrao: TIntegerField
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_contaBenefTratamentodescricao_itc: TStringField
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_contaBenefTratamentoqtde_itc: TIntegerField
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_contaBenefTratamentovlinformado_itc: TFloatField
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_contaBenefTratamentovlpagar_itc: TFloatField
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_contaBenefTratamentovlParticipacao_ihp: TFloatField
      FieldName = 'vlParticipacao_ihp'
    end
  end
  object spc_cons_med_contaBenefNaoEstaTratamento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_contaBenefNaoEstaTratamento'
    Left = 669
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_cta'
        ParamType = ptInput
        Value = '01/01/2008'
      end>
    object spc_cons_med_contaBenefNaoEstaTratamentocod_conveniado: TIntegerField
      DisplayLabel = 'Cod. Conv.'
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentonome_con: TStringField
      DisplayLabel = 'Conveniado'
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_contaBenefNaoEstaTratamentodtreferencia_cta: TDateTimeField
      DisplayLabel = 'Dt. Referência'
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentosequencia_cta: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentosequenciaconta_ctm: TIntegerField
      DisplayLabel = 'Seq. Conta'
      FieldName = 'sequenciaconta_ctm'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentocod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentocarteirainform_ctm: TStringField
      DisplayLabel = 'Carteirinha'
      FieldName = 'carteirainform_ctm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_med_contaBenefNaoEstaTratamentonomebenefi_ctm: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nomebenefi_ctm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_contaBenefNaoEstaTratamentodtentrada_ctm: TDateTimeField
      DisplayLabel = 'Dt. Entrada'
      FieldName = 'dtentrada_ctm'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentodtsaida_ctm: TDateTimeField
      DisplayLabel = 'Dt. Saida'
      FieldName = 'dtsaida_ctm'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentocod_itemservico: TIntegerField
      DisplayLabel = 'Cod. Item Servico'
      FieldName = 'cod_itemservico'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentocod_padrao: TIntegerField
      DisplayLabel = 'Cod. Padrao'
      FieldName = 'cod_padrao'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentodescricao_itc: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'descricao_itc'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_contaBenefNaoEstaTratamentoqtde_itc: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtde_itc'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentovlinformado_itc: TFloatField
      DisplayLabel = 'Vl. Informado'
      FieldName = 'vlinformado_itc'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentovlpagar_itc: TFloatField
      DisplayLabel = 'Vl. Pagar'
      FieldName = 'vlpagar_itc'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentovlParticipacao_ihp: TFloatField
      DisplayLabel = 'Vl. Participação'
      FieldName = 'vlParticipacao_ihp'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentoinscricao_ben: TIntegerField
      DisplayLabel = 'Inscr.'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentomatriculadebito_seg: TIntegerField
      DisplayLabel = 'Matricula'
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentodigitomatdeb_seg: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_med_contaBenefNaoEstaTratamentocod_empresafolha: TIntegerField
      DisplayLabel = 'Cod. Emp.'
      FieldName = 'cod_empresafolha'
    end
  end
  object spc_cons_med_dotacoestmedico02: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_dotacoestmedico02'
    Left = 669
    Top = 205
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2001'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
        Value = 1
      end>
    object spc_cons_med_dotacoestmedico02cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_dotacoestmedico02dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_dotacoestmedico02sequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_dotacoestmedico02razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_dotacoestmedico02cnpj_emc: TStringField
      FieldName = 'cnpj_emc'
      FixedChar = True
      Size = 18
    end
    object spc_cons_med_dotacoestmedico02processo_con: TStringField
      FieldName = 'processo_con'
      FixedChar = True
      Size = 61
    end
    object spc_cons_med_dotacoestmedico02empenho_con: TStringField
      FieldName = 'empenho_con'
      FixedChar = True
      Size = 61
    end
    object spc_cons_med_dotacoestmedico02protocolo_cta: TIntegerField
      FieldName = 'protocolo_cta'
    end
    object spc_cons_med_dotacoestmedico02vlrepasse_cta: TFloatField
      FieldName = 'vlrepasse_cta'
    end
    object spc_cons_med_dotacoestmedico02vlapresentado_cta: TFloatField
      FieldName = 'vlapresentado_cta'
    end
    object spc_cons_med_dotacoestmedico02vlrecuperado_cta: TFloatField
      FieldName = 'vlrecuperado_cta'
    end
    object spc_cons_med_dotacoestmedico02vlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
    end
    object spc_cons_med_dotacoestmedico02vlnf_cta: TFloatField
      FieldName = 'vlnf_cta'
    end
    object spc_cons_med_dotacoestmedico02vlpagoEmpenho: TFloatField
      FieldName = 'vlpagoEmpenho'
    end
    object spc_cons_med_dotacoestmedico02dtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
    end
    object spc_cons_med_dotacoestmedico02dtcompetencia_cta: TDateTimeField
      FieldName = 'dtcompetencia_cta'
    end
    object spc_cons_med_dotacoestmedico02vlISS_cta: TFloatField
      FieldName = 'vlISS_cta'
    end
    object spc_cons_med_dotacoestmedico02ISSrequerido_cta: TBooleanField
      FieldName = 'ISSrequerido_cta'
    end
    object spc_cons_med_dotacoestmedico02ISSrecebido_cta: TBooleanField
      FieldName = 'ISSrecebido_cta'
    end
    object spc_cons_med_dotacoestmedico02recolheISS_cne: TBooleanField
      FieldName = 'recolheISS_cne'
    end
    object spc_cons_med_dotacoestmedico02dotacao: TStringField
      FieldName = 'dotacao'
      FixedChar = True
      Size = 40
    end
    object spc_cons_med_dotacoestmedico02dtvalidade: TDateTimeField
      FieldName = 'dtvalidade'
    end
    object spc_cons_med_dotacoestmedico02nf_cta: TStringField
      FieldName = 'nf_cta'
      FixedChar = True
    end
    object spc_cons_med_dotacoestmedico02vljurosMulta_cta: TFloatField
      FieldName = 'vljurosMulta_cta'
    end
    object spc_cons_med_dotacoestmedico02dtvencimento2_cta: TDateTimeField
      FieldName = 'dtvencimento2_cta'
    end
    object spc_cons_med_dotacoestmedico02vlpago2_cta: TFloatField
      FieldName = 'vlpago2_cta'
    end
    object spc_cons_med_dotacoestmedico02vltotal1: TFloatField
      FieldName = 'vltotal1'
    end
    object spc_cons_med_dotacoestmedico02vltotal2: TFloatField
      FieldName = 'vltotal2'
    end
    object spc_cons_med_dotacoestmedico02vlempenho1: TFloatField
      FieldName = 'vlempenho1'
    end
    object spc_cons_med_dotacoestmedico02vlempenho2: TFloatField
      FieldName = 'vlempenho2'
    end
    object spc_cons_med_dotacoestmedico02numEmpenho_emc: TIntegerField
      FieldName = 'numEmpenho_emc'
    end
    object spc_cons_med_dotacoestmedico02obs_cta: TMemoField
      FieldName = 'obs_cta'
      BlobType = ftMemo
    end
  end
  object spc_cons_adm_adesaoBEM: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_adesaoBEM'
    Left = 669
    Top = 252
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_order'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtini'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@dtfim'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@indfiltro'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@situacao'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_adesaoBEMcod_adesaoBEM: TAutoIncField
      FieldName = 'cod_adesaoBEM'
    end
    object spc_cons_adm_adesaoBEMcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_adesaoBEMnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_adesaoBEMinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_adesaoBEMdtAdesaoBEM_adb: TDateTimeField
      FieldName = 'dtAdesaoBEM_adb'
    end
    object spc_cons_adm_adesaoBEMdtfinalBEM_adb: TDateTimeField
      FieldName = 'dtfinalBEM_adb'
    end
    object spc_cons_adm_adesaoBEMcod_planoBEM: TIntegerField
      FieldName = 'cod_planoBEM'
    end
    object spc_cons_adm_adesaoBEMcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_adesaoBEMnome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_adm_adesaoBEMdtsistema_adb: TDateTimeField
      FieldName = 'dtsistema_adb'
    end
    object spc_cons_adm_adesaoBEMtitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
  end
  object spc_cons_adm_contribPFGBResumo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contribPFGBResumo'
    Left = 669
    Top = 300
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
        Name = '@cod_sitcontribPFGB'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contribPFGBResumocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_contribPFGBResumoMes: TIntegerField
      FieldName = 'Mes'
    end
    object spc_cons_adm_contribPFGBResumoAno: TIntegerField
      FieldName = 'Ano'
    end
    object spc_cons_adm_contribPFGBResumoContReg: TIntegerField
      FieldName = 'ContReg'
    end
    object spc_cons_adm_contribPFGBResumoTot: TFloatField
      FieldName = 'Tot'
    end
    object spc_cons_adm_contribPFGBResumotit: TIntegerField
      FieldName = 'tit'
    end
    object spc_cons_adm_contribPFGBResumodescricao_emp: TStringField
      FieldName = 'descricao_emp'
      FixedChar = True
      Size = 60
    end
  end
  object spc_adm_baixaPagtoContribuicaoPFGB: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_adm_baixaPagtoContribuicaoPFGB'
    Left = 680
    Top = 394
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
    object IntegerField1: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Mes'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Ano'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ContReg'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Tot'
    end
    object IntegerField6: TIntegerField
      FieldName = 'tit'
    end
    object StringField1: TStringField
      FieldName = 'descricao_emp'
      FixedChar = True
      Size = 60
    end
  end
  object spc_cons_adm_contribPFGBResumosituacao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_contribPFGBResumosituacao'
    Left = 669
    Top = 347
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
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_sitcontribPFGB'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_contribPFGBResumosituacaocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_contribPFGBResumosituacaoMes: TIntegerField
      FieldName = 'Mes'
    end
    object spc_cons_adm_contribPFGBResumosituacaoAno: TIntegerField
      FieldName = 'Ano'
    end
    object spc_cons_adm_contribPFGBResumosituacaoContReg: TIntegerField
      FieldName = 'ContReg'
    end
    object spc_cons_adm_contribPFGBResumosituacaoTot: TFloatField
      FieldName = 'Tot'
    end
    object spc_cons_adm_contribPFGBResumosituacaotit: TIntegerField
      FieldName = 'tit'
    end
    object spc_cons_adm_contribPFGBResumosituacaonome_sie: TStringField
      FieldName = 'nome_sie'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_contribPFGBResumosituacaodescricao_emp: TStringField
      FieldName = 'descricao_emp'
      FixedChar = True
      Size = 60
    end
  end
  object spc_cons_adm_estatutariosemplanosaude: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_estatutariosemplanosaude'
    Left = 680
    Top = 444
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@matricula_mte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cpf_fpm'
        ParamType = ptInput
        Value = ' '
      end
      item
        DataType = ftString
        Name = '@dtadmissao_fpm'
        ParamType = ptInput
      end>
    object spc_cons_adm_estatutariosemplanosaudecod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_estatutariosemplanosaudematricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_estatutariosemplanosaudenome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_estatutariosemplanosaudecpf_fpm: TStringField
      FieldName = 'cpf_fpm'
      FixedChar = True
      Size = 14
    end
    object spc_cons_adm_estatutariosemplanosaudedtadmissao_fpm: TDateTimeField
      FieldName = 'dtadmissao_fpm'
    end
    object spc_cons_adm_estatutariosemplanosaudeendereco_fpm: TStringField
      FieldName = 'endereco_fpm'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_estatutariosemplanosaudenumero_fpm: TIntegerField
      FieldName = 'numero_fpm'
    end
    object spc_cons_adm_estatutariosemplanosaudecomplemento_fpm: TStringField
      FieldName = 'complemento_fpm'
      FixedChar = True
      Size = 60
    end
    object spc_cons_adm_estatutariosemplanosaudebairro_fpm: TStringField
      FieldName = 'bairro_fpm'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_estatutariosemplanosaudecep_fpm: TStringField
      FieldName = 'cep_fpm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_estatutariosemplanosaudefuncaoemp_seg: TStringField
      FieldName = 'funcaoemp_seg'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_estatutariosemplanosaudefoneresi_fpm: TStringField
      FieldName = 'foneresi_fpm'
      FixedChar = True
    end
    object spc_cons_adm_estatutariosemplanosaudefonecome_fpm: TStringField
      FieldName = 'fonecome_fpm'
      FixedChar = True
    end
    object spc_cons_adm_estatutariosemplanosaudeobs_fpm: TStringField
      FieldName = 'obs_fpm'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_matricporcpf: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_matricporcpf'
    Left = 88
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@matricula_mte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cpf_fpm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtadmissao_fpm'
        ParamType = ptInput
      end>
    object spc_cons_adm_matricporcpfcpf_fpm: TStringField
      FieldName = 'cpf_fpm'
      FixedChar = True
      Size = 14
    end
    object spc_cons_adm_matricporcpfcod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_matricporcpfmatricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_matricporcpfnome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_matricporcpffuncaoemp_seg: TStringField
      FieldName = 'funcaoemp_seg'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_matricporcpfdtadmissao_fpm: TDateTimeField
      FieldName = 'dtadmissao_fpm'
    end
    object spc_cons_adm_matricporcpfcod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_matricporcpfinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
  end
  object spc_cons_adm_procsemandamento: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_procsemandamento'
    Left = 496
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtsistema_tmt'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_corprocesso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@ordem'
        ParamType = ptInput
      end>
    object spc_cons_adm_procsemandamentonome_cor: TStringField
      FieldName = 'nome_cor'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_procsemandamentocod_tramite: TIntegerField
      FieldName = 'cod_tramite'
    end
    object spc_cons_adm_procsemandamentoprocesso_tmt: TIntegerField
      FieldName = 'processo_tmt'
    end
    object spc_cons_adm_procsemandamentoano_tmt: TIntegerField
      FieldName = 'ano_tmt'
    end
    object spc_cons_adm_procsemandamentoassunto_tmt: TStringField
      FieldName = 'assunto_tmt'
      FixedChar = True
      Size = 100
    end
    object spc_cons_adm_procsemandamentointeressado_tmt: TStringField
      FieldName = 'interessado_tmt'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_procsemandamentoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_procsemandamentodtdestino_tmt: TDateTimeField
      FieldName = 'dtdestino_tmt'
    end
    object spc_cons_adm_procsemandamentodestinatario_tmt: TStringField
      FieldName = 'destinatario_tmt'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_procsemandamentodtsistema_tmt: TDateTimeField
      FieldName = 'dtsistema_tmt'
    end
    object spc_cons_adm_procsemandamentocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_adm_procsemandamentoremetente_tmt: TStringField
      FieldName = 'remetente_tmt'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_procsemandamentoSetorDestino: TStringField
      FieldName = 'SetorDestino'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_procsemandamentonome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
  end
  object spc_cons_adm_fechamentoContribPeriodo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_fechamentoContribPeriodo'
    Left = 680
    Top = 500
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_ini'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_fim'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_fechamentoContribPeriododtreferencia_flh: TDateTimeField
      FieldName = 'dtreferencia_flh'
    end
    object spc_cons_adm_fechamentoContribPeriodocod_plano: TStringField
      FieldName = 'cod_plano'
      FixedChar = True
      Size = 4
    end
    object spc_cons_adm_fechamentoContribPeriodonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoContribPeriodoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoContribPeriodovldesconto_adf: TFloatField
      FieldName = 'vldesconto_adf'
    end
    object spc_cons_adm_fechamentoContribPeriodovlpago_flh: TFloatField
      FieldName = 'vlpago_flh'
    end
    object spc_cons_adm_fechamentoContribPeriodovlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_adm_fechamentoPatronalPeriodo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_fechamentoPatronalPeriodo'
    Left = 97
    Top = 538
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@dtreferencia_ini'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftString
        Name = '@dtreferencia_fim'
        ParamType = ptInput
        Value = '01/01/2005'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaoPlano'
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
        DataType = ftBoolean
        Name = '@decimoTerceiro'
        ParamType = ptInput
        Value = 'False'
      end
      item
        DataType = ftInteger
        Name = '@cod_statusAtivo'
        ParamType = ptInput
        Value = 0
      end>
    object spc_cons_adm_fechamentoPatronalPeriododtreferencia_pat: TDateTimeField
      FieldName = 'dtreferencia_pat'
    end
    object spc_cons_adm_fechamentoPatronalPeriodocod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_adm_fechamentoPatronalPeriodonome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoPatronalPeriodoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_adm_fechamentoPatronalPeriodovlcontribuicao_pat: TFloatField
      FieldName = 'vlcontribuicao_pat'
    end
    object spc_cons_adm_fechamentoPatronalPeriodovlpatronal_pat: TFloatField
      FieldName = 'vlpatronal_pat'
    end
    object spc_cons_adm_fechamentoPatronalPeriodovlpercapita: TFloatField
      FieldName = 'vlpercapita'
    end
  end
  object spc_cons_med_despPlanoPeriodo: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_med_despPlanoPeriodo'
    Left = 305
    Top = 538
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
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_despPlanoPeriododtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_despPlanoPeriodocod_classificacaoPlano: TIntegerField
      FieldName = 'cod_classificacaoPlano'
    end
    object spc_cons_med_despPlanoPeriodonome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_despPlanoPeriodoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object spc_cons_med_despPlanoPeriodototal: TFloatField
      FieldName = 'total'
    end
  end
  object spc_cons_adm_movimentacaoaseco: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_movimentacaoaseco'
    Left = 496
    Top = 536
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
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
      end
      item
        DataType = ftInteger
        Name = '@cod_situacao_fpm'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_classificacaositdpd'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_situacaodpd'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_movimentacaoasecocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_movimentacaoasecomatricula_mte: TIntegerField
      FieldName = 'matricula_mte'
    end
    object spc_cons_adm_movimentacaoasecodigito_mte: TIntegerField
      FieldName = 'digito_mte'
    end
    object spc_cons_adm_movimentacaoaseconome_fpm: TStringField
      FieldName = 'nome_fpm'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_movimentacaoaseconome_sdp: TStringField
      FieldName = 'nome_sdp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_movimentacaoasecodtsistema_fpm: TDateTimeField
      FieldName = 'dtsistema_fpm'
    end
    object spc_cons_adm_movimentacaoasecocod_situacao_fpm: TStringField
      FieldName = 'cod_situacao_fpm'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_movimentacaoasecocod_situacaodpd: TIntegerField
      FieldName = 'cod_situacaodpd'
    end
    object spc_cons_adm_movimentacaoasecocod_classificacaositdpd: TIntegerField
      FieldName = 'cod_classificacaositdpd'
    end
    object spc_cons_adm_movimentacaoasecodtsitemp_fpm: TDateTimeField
      FieldName = 'dtsitemp_fpm'
    end
    object spc_cons_adm_movimentacaoaseconome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_adm_movimentacaoasecoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_movimentacaoasecoprocesso_ben: TStringField
      FieldName = 'processo_ben'
      FixedChar = True
      Size = 10
    end
  end
  object spc_cons_adm_totalDividaBenefi: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_totalDividaBenefi'
    Left = 680
    Top = 555
    ParamData = <
      item
        DataType = ftString
        Name = '@dtreferencia_flh'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@cod_sitdesconto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@matriculadebito_seg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dias'
        ParamType = ptInput
      end>
    object spc_cons_adm_totalDividaBeneficod_benTit: TIntegerField
      FieldName = 'cod_benTit'
    end
    object spc_cons_adm_totalDividaBenefiinscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_totalDividaBeneficod_empresafolha: TIntegerField
      DisplayLabel = 'Emp.'
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_totalDividaBenefimatriculadebito_seg: TIntegerField
      DisplayLabel = 'Matricula'
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_totalDividaBenefidigitomatdeb_seg: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_totalDividaBenefinomeTit_ben: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nomeTit_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_totalDividaBeneficpfTit_ben: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpfTit_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_totalDividaBenefivldesconto_adf: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vldesconto_adf'
      DisplayFormat = '###,###,##0.00'
    end
    object spc_cons_adm_totalDividaBenefitldesc: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'tldesc'
    end
    object spc_cons_adm_totalDividaBenefidtMenorDesc: TDateTimeField
      DisplayLabel = 'Menor Dt. Desc.'
      FieldName = 'dtMenorDesc'
    end
    object spc_cons_adm_totalDividaBenefidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'dias'
    end
    object spc_cons_adm_totalDividaBenefiendereco_ben: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 173
    end
    object spc_cons_adm_totalDividaBenefibairro_ben: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalDividaBeneficep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_totalDividaBeneficidade_cep: TStringField
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_totalDividaBenefisigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_adm_totalDividaBenefinumOficio_hda: TIntegerField
      DisplayLabel = 'Ofício'
      FieldName = 'numOficio_hda'
    end
    object spc_cons_adm_totalDividaBenefiano_hda: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ano_hda'
    end
    object spc_cons_adm_totalDividaBenefidtEmissao_hda: TDateTimeField
      DisplayLabel = 'Dt. Emissão'
      FieldName = 'dtEmissao_hda'
    end
  end
  object spc_cons_adm_verdocingresso: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_adm_verdocingresso'
    Left = 304
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_tipodependente'
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
        Name = '@cod_pensionista'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_verdocingressocod_docingresso: TIntegerField
      FieldName = 'cod_docingresso'
    end
    object spc_cons_adm_verdocingressonome_din: TStringField
      FieldName = 'nome_din'
      FixedChar = True
      Size = 255
    end
    object spc_cons_adm_verdocingressoDoc_Regra_din: TIntegerField
      FieldName = 'Doc_Regra_din'
    end
    object spc_cons_adm_verdocingressocod_doctipobeneficiario: TAutoIncField
      FieldName = 'cod_doctipobeneficiario'
    end
    object spc_cons_adm_verdocingressoTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 9
    end
  end
  object spc_cons_med_benefTratamentoHospReferencia: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'dbo.spc_cons_med_benefTratamentoHospReferencia'
    Left = 672
    Top = 56
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
        Name = '@indfiltro'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_med_benefTratamentoHospReferenciacod_beneficiario: TIntegerField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_med_benefTratamentoHospReferenciainscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_med_benefTratamentoHospReferencianome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_benefTratamentoHospReferenciadtinicio_bht: TDateTimeField
      FieldName = 'dtinicio_bht'
    end
    object spc_cons_med_benefTratamentoHospReferenciadtsistema_bth: TDateTimeField
      FieldName = 'dtsistema_bth'
    end
    object spc_cons_med_benefTratamentoHospReferenciadtfim_bth: TDateTimeField
      FieldName = 'dtfim_bth'
    end
    object spc_cons_med_benefTratamentoHospReferenciaobs_bth: TStringField
      FieldName = 'obs_bth'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_benefTratamentoHospReferenciacod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_benefTratamentoHospReferencianome_con: TStringField
      FieldName = 'nome_con'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_benefTratamentoHospReferenciacod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object spc_cons_med_benefTratamentoHospReferencianome_usu: TStringField
      FieldName = 'nome_usu'
      FixedChar = True
    end
    object spc_cons_med_benefTratamentoHospReferencianome_sit: TStringField
      FieldName = 'nome_sit'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_benefTratamentoHospReferenciadescricao_sie: TStringField
      FieldName = 'descricao_sie'
      FixedChar = True
      Size = 50
    end
    object spc_cons_med_benefTratamentoHospReferenciatitulacartei_ben: TIntegerField
      FieldName = 'titulacartei_ben'
    end
  end
  object spc_cons_med_dotacoestmedico03: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_med_dotacoestmedico03'
    Left = 96
    Top = 617
    ParamData = <
      item
        DataType = ftInteger
        Name = '@cod_conveniado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtreferencia'
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        DataType = ftInteger
        Name = '@sequencia_cta'
        ParamType = ptInput
      end>
    object spc_cons_med_dotacoestmedico03cod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_dotacoestmedico03dtreferencia_cta: TDateTimeField
      FieldName = 'dtreferencia_cta'
    end
    object spc_cons_med_dotacoestmedico03sequencia_cta: TIntegerField
      FieldName = 'sequencia_cta'
    end
    object spc_cons_med_dotacoestmedico03razao_con: TStringField
      FieldName = 'razao_con'
      FixedChar = True
      Size = 70
    end
    object spc_cons_med_dotacoestmedico03cnpj_cta: TStringField
      FieldName = 'cnpj_cta'
      FixedChar = True
      Size = 18
    end
    object spc_cons_med_dotacoestmedico03processo_con: TStringField
      FieldName = 'processo_con'
      FixedChar = True
      Size = 61
    end
    object spc_cons_med_dotacoestmedico03protocolo_cta: TIntegerField
      FieldName = 'protocolo_cta'
    end
    object spc_cons_med_dotacoestmedico03nf_cta: TStringField
      FieldName = 'nf_cta'
      FixedChar = True
    end
    object spc_cons_med_dotacoestmedico03vlrepasse_cta: TFloatField
      FieldName = 'vlrepasse_cta'
    end
    object spc_cons_med_dotacoestmedico03vlapresentado_cta: TFloatField
      FieldName = 'vlapresentado_cta'
    end
    object spc_cons_med_dotacoestmedico03vlrecuperado_cta: TFloatField
      FieldName = 'vlrecuperado_cta'
    end
    object spc_cons_med_dotacoestmedico03vlpago_cta: TFloatField
      FieldName = 'vlpago_cta'
    end
    object spc_cons_med_dotacoestmedico03vlnf_cta: TFloatField
      FieldName = 'vlnf_cta'
    end
    object spc_cons_med_dotacoestmedico03dtvencimento_cta: TDateTimeField
      FieldName = 'dtvencimento_cta'
    end
    object spc_cons_med_dotacoestmedico03dtcompetencia_cta: TDateTimeField
      FieldName = 'dtcompetencia_cta'
    end
    object spc_cons_med_dotacoestmedico03vlISS_cta: TFloatField
      FieldName = 'vlISS_cta'
    end
    object spc_cons_med_dotacoestmedico03ISSrequerido_cta: TBooleanField
      FieldName = 'ISSrequerido_cta'
    end
    object spc_cons_med_dotacoestmedico03ISSrecebido_cta: TBooleanField
      FieldName = 'ISSrecebido_cta'
    end
    object spc_cons_med_dotacoestmedico03recolheISS_cne: TBooleanField
      FieldName = 'recolheISS_cne'
    end
    object spc_cons_med_dotacoestmedico03descricaoPA_clp: TStringField
      FieldName = 'descricaoPA_clp'
      FixedChar = True
      Size = 60
    end
    object spc_cons_med_dotacoestmedico03dtvalidade: TDateTimeField
      FieldName = 'dtvalidade'
    end
    object spc_cons_med_dotacoestmedico03vljurosMulta_cta: TFloatField
      FieldName = 'vljurosMulta_cta'
    end
    object spc_cons_med_dotacoestmedico03dtvencimento2_cta: TDateTimeField
      FieldName = 'dtvencimento2_cta'
    end
    object spc_cons_med_dotacoestmedico03vlpago2_cta: TFloatField
      FieldName = 'vlpago2_cta'
    end
    object spc_cons_med_dotacoestmedico03vltotal1: TFloatField
      FieldName = 'vltotal1'
    end
    object spc_cons_med_dotacoestmedico03vltotal2: TFloatField
      FieldName = 'vltotal2'
    end
    object spc_cons_med_dotacoestmedico03vlPA: TFloatField
      FieldName = 'vlPA'
    end
    object spc_cons_med_dotacoestmedico03obs_cta: TMemoField
      FieldName = 'obs_cta'
      BlobType = ftMemo
    end
  end
  object spc_cons_adm_fechamentoMensalADM: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_fechamentoMensalADM'
    Left = 305
    Top = 617
    ParamData = <
      item
        DataType = ftString
        Name = '@dtinscricaoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtinscricaoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtsituacaoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtsituacaoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtplanoIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@dtplanoFin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@situacao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@tipoSit'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cod_empresafolha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@cod_plano'
        ParamType = ptInput
      end>
    object spc_cons_adm_fechamentoMensalADMmatriculadebito_seg: TIntegerField
      FieldName = 'matriculadebito_seg'
    end
    object spc_cons_adm_fechamentoMensalADMinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_fechamentoMensalADMTitularidade: TStringField
      FieldName = 'Titularidade'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_fechamentoMensalADMnome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_fechamentoMensalADMcpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_fechamentoMensalADMnome_gra: TStringField
      FieldName = 'nome_gra'
      FixedChar = True
    end
    object spc_cons_adm_fechamentoMensalADMplano: TStringField
      FieldName = 'plano'
      FixedChar = True
      Size = 5
    end
    object spc_cons_adm_fechamentoMensalADMdtnascim_ben: TDateTimeField
      FieldName = 'dtnascim_ben'
    end
    object spc_cons_adm_fechamentoMensalADMdigitomatdeb_seg: TIntegerField
      FieldName = 'digitomatdeb_seg'
    end
    object spc_cons_adm_fechamentoMensalADMnome_empf: TStringField
      FieldName = 'nome_empf'
      FixedChar = True
      Size = 50
    end
  end
  object spc_cons_adm_termoOpcao: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_termoOpcao'
    Left = 680
    Top = 624
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_empresafolha'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = '@inscricao_ben'
        ParamType = ptInput
        Value = '0'
      end>
    object spc_cons_adm_termoOpcaocod_beneficiario: TAutoIncField
      FieldName = 'cod_beneficiario'
    end
    object spc_cons_adm_termoOpcaoinscricao_ben: TIntegerField
      FieldName = 'inscricao_ben'
    end
    object spc_cons_adm_termoOpcaonome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaomatricula: TIntegerField
      FieldName = 'matricula'
    end
    object spc_cons_adm_termoOpcaocod_empresafolha: TIntegerField
      FieldName = 'cod_empresafolha'
    end
    object spc_cons_adm_termoOpcaocod_empresafolha_1: TIntegerField
      FieldName = 'cod_empresafolha_1'
    end
    object spc_cons_adm_termoOpcaocpf_ben: TStringField
      FieldName = 'cpf_ben'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_termoOpcaorg_ben: TStringField
      FieldName = 'rg_ben'
      FixedChar = True
    end
    object spc_cons_adm_termoOpcaoemail_ben: TStringField
      FieldName = 'email_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaosexo_ben: TStringField
      FieldName = 'sexo_ben'
      FixedChar = True
      Size = 1
    end
    object spc_cons_adm_termoOpcaonome_civ: TStringField
      FieldName = 'nome_civ'
      FixedChar = True
    end
    object spc_cons_adm_termoOpcaonomemae_ben: TStringField
      FieldName = 'nomemae_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaonomepai_ben: TStringField
      FieldName = 'nomepai_ben'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaocep_ben: TStringField
      FieldName = 'cep_ben'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_termoOpcaoendereco_ben: TStringField
      FieldName = 'endereco_ben'
      FixedChar = True
      Size = 80
    end
    object spc_cons_adm_termoOpcaonumero_ben: TIntegerField
      FieldName = 'numero_ben'
    end
    object spc_cons_adm_termoOpcaocomplemento_ben: TStringField
      FieldName = 'complemento_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_termoOpcaobairro_ben: TStringField
      FieldName = 'bairro_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_termoOpcaocidade_cep: TStringField
      FieldName = 'cidade_cep'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_termoOpcaosigla_uf: TStringField
      FieldName = 'sigla_uf'
      FixedChar = True
      Size = 2
    end
    object spc_cons_adm_termoOpcaofoneresi_ben: TStringField
      FieldName = 'foneresi_ben'
      FixedChar = True
      Size = 40
    end
    object spc_cons_adm_termoOpcaofonecel_ben: TStringField
      FieldName = 'fonecel_ben'
      FixedChar = True
    end
    object spc_cons_adm_termoOpcaonome_emp: TStringField
      FieldName = 'nome_emp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaodtnascim_ben: TStringField
      FieldName = 'dtnascim_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_termoOpcaonome_pla: TStringField
      FieldName = 'nome_pla'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_termoOpcaonome_clp: TStringField
      FieldName = 'nome_clp'
      FixedChar = True
      Size = 50
    end
    object spc_cons_adm_termoOpcaoparentesco: TStringField
      FieldName = 'parentesco'
      FixedChar = True
    end
    object spc_cons_adm_termoOpcaocpfTit: TStringField
      FieldName = 'cpfTit'
      FixedChar = True
      Size = 18
    end
    object spc_cons_adm_termoOpcaovlfixo_piv: TFloatField
      FieldName = 'vlfixo_piv'
    end
    object spc_cons_adm_termoOpcaonome_efi: TStringField
      FieldName = 'nome_efi'
      FixedChar = True
      Size = 12
    end
    object spc_cons_adm_termoOpcaoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_adm_termoOpcaocategoriaBenefi: TStringField
      FieldName = 'categoriaBenefi'
      FixedChar = True
      Size = 10
    end
    object spc_cons_adm_termoOpcaodtinscricao_ben: TStringField
      FieldName = 'dtinscricao_ben'
      FixedChar = True
      Size = 30
    end
    object spc_cons_adm_termoOpcaonome_tdp: TStringField
      FieldName = 'nome_tdp'
      FixedChar = True
      Size = 12
    end
  end
end
