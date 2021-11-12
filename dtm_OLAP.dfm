object fdt_OLAP: Tfdt_OLAP
  OldCreateOrder = False
  Left = 169
  Top = 207
  Height = 480
  Width = 732
  object OLAP_imasf: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saimasf@2004;Persist Security Info=' +
      'True;User ID=sa;Initial Catalog=DWimasf;Data Source=SPD08;Use Pr' +
      'ocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Works' +
      'tation ID=SPD08;Use Encryption for Data=False;Tag with column co' +
      'llation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 20
  end
  object spc_cons_med_pacienteinternado: TADOStoredProc
    Connection = OLAP_imasf
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'spc_cons_med_pacienteinternado;1'
    Parameters = <
      item
        Name = '@dtreferencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = '03/15/2005'
      end>
    Prepared = True
    Left = 80
    Top = 80
    object spc_cons_med_pacienteinternadocod_autorizainternacao: TIntegerField
      FieldName = 'cod_autorizainternacao'
    end
    object spc_cons_med_pacienteinternadocod_conveniado: TIntegerField
      FieldName = 'cod_conveniado'
    end
    object spc_cons_med_pacienteinternadonomereduzido_con: TStringField
      FieldName = 'nomereduzido_con'
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
      Size = 50
    end
    object spc_cons_med_pacienteinternadoidade_ben: TIntegerField
      FieldName = 'idade_ben'
    end
    object spc_cons_med_pacienteinternadonome_pla: TStringField
      FieldName = 'nome_pla'
      ReadOnly = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadoDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
      ReadOnly = True
    end
    object spc_cons_med_pacienteinternadoDiariasQTO: TIntegerField
      FieldName = 'DiariasQTO'
      ReadOnly = True
    end
    object spc_cons_med_pacienteinternadoDiferenca: TIntegerField
      FieldName = 'Diferenca'
      ReadOnly = True
    end
    object spc_cons_med_pacienteinternadonome_cid: TStringField
      FieldName = 'nome_cid'
      Size = 250
    end
    object spc_cons_med_pacienteinternadonome_aco: TStringField
      FieldName = 'nome_aco'
      ReadOnly = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadosigla_int: TStringField
      FieldName = 'sigla_int'
      FixedChar = True
      Size = 2
    end
    object spc_cons_med_pacienteinternadonome_tdp: TStringField
      FieldName = 'nome_tdp'
      ReadOnly = True
      Size = 3
    end
    object spc_cons_med_pacienteinternadodtalta_alt: TDateTimeField
      FieldName = 'dtalta_alt'
    end
  end
end
