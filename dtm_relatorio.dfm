object fdt_relatorio: Tfdt_relatorio
  OldCreateOrder = False
  Left = 244
  Top = 107
  Height = 375
  Width = 544
  object spc_cons_adm_beneficiario001: TStoredProc
    DatabaseName = 'bd_imasf'
    StoredProcName = 'spc_cons_adm_beneficiario001'
    Left = 178
    Top = 14
    ParamData = <
      item
        DataType = ftString
        Name = '@cod_beneficiario'
        ParamType = ptInput
      end>
    object spc_cons_adm_beneficiario001nome_ben: TStringField
      FieldName = 'nome_ben'
      FixedChar = True
      Size = 50
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
  end
  object bd_imasfrelatorio: TDatabase
    AliasName = 'imasf'
    DatabaseName = 'bd_imasf'
    LoginPrompt = False
    Params.Strings = (
      '')
    SessionName = 'Default'
    Left = 48
    Top = 20
  end
end
