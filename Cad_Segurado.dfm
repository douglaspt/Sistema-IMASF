inherited Frm_Cad_Segurado: TFrm_Cad_Segurado
  Caption = 'Frm_Cad_Segurado'
  ClientHeight = 582
  ClientWidth = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 796
    inherited Image1: TImage
      Width = 794
    end
  end
  inherited Panel2: TPanel
    Top = 530
    Width = 796
    inherited Image3: TImage
      Width = 794
    end
    inherited Btn_Fechar: TPDJButton
      Left = 702
      Width = 93
    end
    inherited btn_novo: TPDJButton
      Width = 93
    end
    inherited btn_alterar: TPDJButton
      Left = 97
      Width = 93
    end
    inherited btn_salvar: TPDJButton
      Left = 190
      Width = 93
    end
    inherited btn_cancelar: TPDJButton
      Left = 283
      Width = 97
    end
    inherited btn_excluir: TPDJButton
      Left = 552
      Visible = False
    end
    object btn_anterior: TPDJButton
      Left = 544
      Top = 4
      Width = 76
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = 'A&nterior'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_anteriorClick
      TabOrder = 6
    end
    object btn_proximo: TPDJButton
      Left = 620
      Top = 4
      Width = 78
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Próximo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_proximoClick
      TabOrder = 7
    end
    object btn_situacao: TPDJButton
      Left = 397
      Top = 4
      Width = 124
      Height = 25
      Hint = 'Altera a Situação do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Situação'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_situacaoClick
      Visible = False
      TabOrder = 8
    end
    object btn_descontos: TPDJButton
      Left = 443
      Top = 5
      Width = 96
      Height = 25
      Hint = 'Altera a Situação do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_descontosClick
      TabOrder = 9
    end
    object btn_senha: TPDJButton
      Left = 400
      Top = 3
      Width = 31
      Height = 26
      Hint = 'Senha para desbloquear e permitir salvar o registro atual'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000084263000852
        84001084CE00ADCEE700299CEF00FF00FF004ABDFF0052F7FF006BF7FF008CF7
        FF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050000000005
        0505050505050505050505050505050505050004060600000505050505050505
        0505050505050505050004060609090000050505050505050505050505050505
        0004060409090609000505050505050505050505050505000406040909020907
        0005050505050505050505050505000406040909020907000505050505050505
        0505050000000406040909020907000505050505050505050505000404040604
        0909020907000505050505050500000000000006060604090902090700050505
        0505050500040404040404060404090902090700050505050505050104080707
        0707080606090902090700050505050505050107070909090909070706090209
        07000505050505050505010A0909090909090907070609090005050505050505
        0505010A09090909090909090707060400050505050505050505010A09090909
        090909090909070600050505050505050505010A090903040409090909090707
        00050505050505050505010A0909030602090909090909070005050505050505
        0505010A09090306020909090909090700050505050505050505010A09090903
        03090909090907070005050505050505050505010A0809090909090909080700
        050505050505050505050505010A080808080808080800050505050505050505
        0505050505010100000000000000050505050505050505050505}
      GlyphHot.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000084263000852
        84001084CE00ADCEE700299CEF00FF00FF004ABDFF0052F7FF006BF7FF008CF7
        FF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050000000005
        0505050505050505050505050505050505050004060600000505050505050505
        0505050505050505050004060609090000050505050505050505050505050505
        0004060409090609000505050505050505050505050505000406040909020907
        0005050505050505050505050505000406040909020907000505050505050505
        0505050000000406040909020907000505050505050505050505000404040604
        0909020907000505050505050500000000000006060604090902090700050505
        0505050500040404040404060404090902090700050505050505050104080707
        0707080606090902090700050505050505050107070909090909070706090209
        07000505050505050505010A0909090909090907070609090005050505050505
        0505010A09090909090909090707060400050505050505050505010A09090909
        090909090909070600050505050505050505010A090903040409090909090707
        00050505050505050505010A0909030602090909090909070005050505050505
        0505010A09090306020909090909090700050505050505050505010A09090903
        03090909090907070005050505050505050505010A0809090909090909080700
        050505050505050505050505010A080808080808080800050505050505050505
        0505050505010100000000000000050505050505050505050505}
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      OnClick = btn_senhaClick
      Visible = False
      TabOrder = 10
    end
    object PDJButton3: TPDJButton
      Left = 391
      Top = 5
      Width = 47
      Height = 23
      Hint = 'Altera a Situação do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&DEP.'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 11
    end
  end
  inherited Panel3: TPanel
    Width = 798
    Height = 489
    Align = alLeft
    object pnl_alerta: TPanel
      Left = 21
      Top = 446
      Width = 753
      Height = 21
      BevelOuter = bvLowered
      Caption = 'BENEFICIÁRIO SUPENSO'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Visible = False
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Completo                                               ' +
        '                                                                ' +
        '                          Carteirinha'
      TabOrder = 1
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 370
        Height = 21
        Hint = 'NOME COMPLETO DO SEGURADO'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'EDT_NOME_BEN'
        OnExit = edt_nome_benExit
        OnKeyDown = edt_nome_benKeyDown
        OnKeyUp = edt_nome_benKeyUp
      end
      object edt_nomecarteira_ben: TDCEdit
        Tag = -1
        Left = 559
        Top = 5
        Width = 230
        Height = 21
        Hint = 'NOME DO DEPENDENTE A SER IMPRESSO NA CARTEIRINHA'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 30
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 0
      object ckb_pericia: TCheckBox
        Left = 404
        Top = 8
        Width = 75
        Height = 17
        Caption = 'Carências'
        TabOrder = 5
      end
      object ckb_cadastroRapido: TCheckBox
        Left = 544
        Top = 8
        Width = 105
        Height = 17
        Caption = 'Cadastro Rapido'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
      object pnl_carteira: TPanel
        Tag = -1
        Left = 539
        Top = 6
        Width = 249
        Height = 21
        BevelOuter = bvLowered
        Caption = 'N° Carteirinha : 1.1.00011.01-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object pnl_dependente: TPanel
        Tag = -1
        Left = 398
        Top = 6
        Width = 133
        Height = 21
        BevelOuter = bvLowered
        Caption = 'N° Dependentes : 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 'NÚMERO COM QUE FOI INSCRITO O SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnChange = edt_inscricao_benChange
        OnExit = edt_inscricao_benExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Tipo de Segurado                                            ' +
        '                                                                ' +
        '                                      '
      TabOrder = 2
      object lbl_processo: TLabel
        Left = 281
        Top = 9
        Width = 86
        Height = 13
        Cursor = crHandPoint
        Caption = 'Processo  Nº/Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lbl_processoClick
      end
      object edt_processo_ben: TDCEdit
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'NÚMERO E ANO EM QUE FOI ABERTO O PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
        OnKeyDown = edt_processo_benKeyDown
      end
      object cbx_cod_TipoSegurado: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'SEGURADO ATIVO, INATIVO, APOSENTADO, FALECIDO,...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = edt_inscricao_benChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Empresa de Origem                                           ' +
        '                Plano de Benefícios                             ' +
        '                           Data do Plano'
      TabOrder = 3
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = edt_inscricao_benChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnChange = cbx_cod_planoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_dtplano_ben: TDCDateEdit
        Tag = -1
        Left = 637
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DA EM QUE FOI FEITA  A OPÇÃO PELO SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Inscrição                                           ' +
        '                   Data de Situação                             ' +
        '                               Data do Sistema'
      TabOrder = 4
      object edt_dtinscricao_ben: TDCDateEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DA EFETIVA INSCRIÇÃO DO SEGURADO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtsituacao_ben: TDCDateEdit
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DA SITUAÇÃO DO SEGURADO NO IMASF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtcadastro_ben: TDCDateEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA INSERIDA PELO COMPUTADOR'
        Color = clInfoBk
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ReadOnly = True
        Checked = True
        ButtonExist = False
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 176
      Width = 796
      Height = 272
      Alignment = taLeftJustify
      TabOrder = 5
      object PageControl: TPageControl
        Left = 4
        Top = 8
        Width = 789
        Height = 261
        ActivePage = TabSheet1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados Pessoais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Panel11: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Estado Civil                                                  ' +
              '                                Sexo'
            TabOrder = 0
            object cbx_cod_estadociv: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO CIVIL EM QUE SE ENCONTRA O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_sexo_ben: TDCComboBox
              Tag = -1
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 1
              OnExit = cbx_sexo_benExit
              Items.Strings = (
                'Masculino'
                'Feminino')
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Data de Nascimento                                            ' +
              '                       Idade                                    ' +
              '                    '
            TabOrder = 1
            object lbl_vlContrib: TLabel
              Left = 552
              Top = 10
              Width = 51
              Height = 13
              Caption = 'Vl. Contrib.'
            end
            object edt_idade: TDCEdit
              Tag = -10
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              TabOrder = 1
              Text = 'ABCDEFGHIJLMN'
            end
            object edt_dtnascim_ben: TDCDateEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              OnKeyDown = edt_dtnascim_benKeyDown
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_vlcontribuicao: TDCDateEdit
              Left = 620
              Top = 5
              Width = 100
              Height = 21
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Alignment = taRightJustify
              ReadOnly = True
              Checked = True
              ButtonExist = False
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel13: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome do Pai                                                   ' +
              '                                                              No' +
              'me da Mãe                            '
            TabOrder = 2
            object edt_nomepai_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 280
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object edt_nomemae_ben: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 280
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
          end
          object Panel14: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tipo Cober. Unimed                                            ' +
              '                                                         Cartão ' +
              'Unimed              '
            TabOrder = 3
            object cbx_cod_tipocoberturaunimed: TDCComboBox
              Tag = -1
              Left = 112
              Top = 6
              Width = 212
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = edt_inscricao_benChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
            object edt_cartaoUnimed_ben: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 141
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 17
              TabOrder = 1
            end
          end
          object Panel15: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            TabOrder = 4
            object edt_alerta_ben: TDCEdit
              Tag = -1
              Left = 4
              Top = 5
              Width = 769
              Height = 21
              Color = 14540253
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 120
              ParentFont = False
              TabOrder = 0
              Text = 
                'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' +
                'aaaaaaaa'
            end
          end
          object pnl_carencia: TPanel
            Left = 12
            Top = 188
            Width = 753
            Height = 21
            BevelOuter = bvLowered
            Caption = '*** BENEFICIÁRIO EM CARÊNCIA ***'
            Color = 33023
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            Visible = False
          end
          object pnl_devolucao: TPanel
            Left = 12
            Top = 164
            Width = 753
            Height = 21
            BevelOuter = bvLowered
            Caption = '*** BENEFICIÁRIO PRECISA DEVOLVER A CARTEIRINHA ***'
            Color = clLime
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endereço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Panel16: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP                                                           ' +
              '      Lograd.                                                   ' +
              '                                                                ' +
              '                Nº'
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 740
              Top = 5
              Width = 26
              Height = 22
              Hint = 'Localizar Endereço'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
                07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
                70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
                FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
              ParentFont = False
              OnClick = SpeedButton6Click
            end
            object edt_endereco_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 50
              ReadOnly = True
              TabOrder = 2
            end
            object edt_cep_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              TabOrder = 0
              Text = '     -   '
              OnExit = edt_cep_benExit
              OnKeyDown = edt_cep_benKeyDown
            end
            object btn_buscarcep: TPDJButton
              Left = 189
              Top = 8
              Width = 22
              Height = 19
              Hint = 'Preenchimento automático da descrição'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcepClick
              TabOrder = 1
            end
            object edt_numero_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro                                                        ' +
              '                                            Dt. Ult. Alt.       ' +
              '                                                                ' +
              '            '
            TabOrder = 2
            object edt_dtendereco_ben: TDCDateEdit
              Tag = -1
              Left = 399
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERAÇÃO NO ENDEREÇO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object chb_mailing_ben: TCheckBox
              Tag = -1
              Left = 626
              Top = 9
              Width = 97
              Height = 17
              Caption = 'Autoriza Mailing'
              TabOrder = 2
              OnClick = chb_mailing_benClick
            end
            object edt_bairro_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 30
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel18: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                                 U.F.           ' +
              '                  Cidade'
            TabOrder = 1
            object cbx_cod_uf: TDCComboBox
              Tag = -1
              Left = 399
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              OnExit = cbx_cod_ufExit
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadeCep: TDCComboBox
              Tag = -1
              Left = 527
              Top = 5
              Width = 200
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object edt_complemento_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Telefone                                                      ' +
              ' Cel.                                          Email'
            TabOrder = 3
            object edt_foneresi_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 88
              Height = 21
              MaxLength = 16
              TabOrder = 0
              OnKeyDown = edt_foneresi_benKeyDown
            end
            object edt_email_ben: TDCEdit
              Tag = -1
              Left = 399
              Top = 5
              Width = 321
              Height = 21
              MaxLength = 50
              TabOrder = 1
            end
            object edt_fonecel_ben: TDCEdit
              Tag = -1
              Left = 248
              Top = 5
              Width = 88
              Height = 21
              MaxLength = 16
              TabOrder = 2
              OnKeyDown = edt_foneresi_benKeyDown
            end
          end
          object Panel44: TPanel
            Tag = -1
            Left = 0
            Top = 160
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                                 U.F.           ' +
              '                  Cidade'
            TabOrder = 5
            object cbx_cd2_uf: TDCComboBox
              Tag = -1
              Left = 399
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadecorCEP: TDCComboBox
              Tag = -1
              Left = 527
              Top = 5
              Width = 200
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object edt_complementocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
            end
          end
          object Panel45: TPanel
            Tag = -1
            Left = 0
            Top = 192
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro p/ Correspond.                                         ' +
              '                                                           '
            TabOrder = 6
            object btn_atualizarEndereco: TPDJButton
              Left = 377
              Top = 4
              Width = 320
              Height = 25
              Hint = 'Altera a Situação do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                42010000424D4201000000000000760000002800000011000000110000000100
                040000000000CC00000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                777770000000777777770000000770000000777777770FFFFF07700000007777
                77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
                0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
                FF077000000070607CCC00000007700000007060777770777777700000007060
                7CCC707777747000000070607777707777444000000070600000007777747000
                0000706666607774777470000000700000007777444770000000777777777777
                777770000000}
              Caption = '&Atualizar Endereço de Correspondência'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_atualizarEnderecoClick
              TabOrder = 1
            end
            object edt_bairrocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              MaxLength = 30
              TabOrder = 0
            end
          end
          object Panel43: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP p/ Correspond.                                        Logr' +
              'ad.                                                             ' +
              '                                                                ' +
              '      Nº'
            TabOrder = 4
            object edt_enderecocor_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 2
            end
            object edt_cepcor_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              TabOrder = 0
              Text = '     -   '
              OnExit = edt_cepcor_benExit
              OnKeyDown = edt_cepcor_benKeyDown
            end
            object edt_numerocor_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
            object btn_buscarcep2: TPDJButton
              Left = 192
              Top = 6
              Width = 19
              Height = 21
              Hint = 'Preenchimento automático da descrição'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcep2Click
              TabOrder = 1
            end
            object btn_chamacadcep: TPDJButton
              Left = 741
              Top = 3
              Width = 0
              Height = 22
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_chamacadcepClick
              TabOrder = 4
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Documentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 2
          ParentFont = False
          object Panel20: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  C.P.F.                                                        ' +
              '                         Decl. Nascido Vivo'
            TabOrder = 1
            object edt_cpf_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              EditMask = '999\.999\.999\-99;_'
              MaxLength = 14
              TabOrder = 0
              Text = '   .   .   -  '
              OnExit = edt_cpf_benExit
            end
            object edt_certidaonascvivo_ben: TDCEdit
              Tag = -1
              Left = 372
              Top = 5
              Width = 153
              Height = 21
              MaxLength = 20
              TabOrder = 1
            end
          end
          object Panel21: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  R.G.                                                          ' +
              '                         Data de Emissão                        ' +
              '                                            Org. Emissor'
            TabOrder = 0
            object edt_rg_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              MaxLength = 14
              TabOrder = 0
            end
            object edt_orgemissorrg_ben: TDCEdit
              Tag = -1
              Left = 628
              Top = 5
              Width = 143
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 2
            end
            object edt_dtemissaorg_ben: TDCDateEdit
              Tag = -1
              Left = 372
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel22: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tit. de Eleitor'
            TabOrder = 2
            object edt_titeleitor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              MaxLength = 18
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Outros Documentos                                             ' +
              '              Tipo'
            TabOrder = 3
            object edt_outrosdocume_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              MaxLength = 20
              TabOrder = 0
            end
            object edt_tipodocume_ben: TDCEdit
              Tag = -1
              Left = 308
              Top = 5
              Width = 69
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 6
              TabOrder = 1
              OnKeyDown = edt_tipodocume_benKeyDown
            end
          end
        end
        object tbs_empresa: TTabSheet
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 3
          ParentFont = False
          object Panel24: TPanel
            Tag = -1
            Left = 0
            Top = 33
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Setor                                                         ' +
              '                          Função / Cargo'
            TabOrder = 0
            object edt_funcaoemp_seg: TDCEdit
              Tag = -5
              Left = 384
              Top = 5
              Width = 273
              Height = 21
              Hint = 'FUNÇÃO/CARGO ATUAL DO SEGURADO'
              MaxLength = 40
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object cbx_cod_setoremp: TDCComboBox
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'SETOR DO DEPARTAMENTO ONDE TRABALHA O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel25: TPanel
            Tag = -1
            Left = 0
            Top = 161
            Width = 777
            Height = 33
            Alignment = taLeftJustify
            Caption = 
              '   Forma Admissão                                               ' +
              '                Função Comissionado'
            TabOrder = 4
            object edt_funcaocomiss_seg: TDCEdit
              Tag = -5
              Left = 384
              Top = 5
              Width = 149
              Height = 21
              Hint = 'NOME DA FUNÇÃO'
              MaxLength = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = edt_funcaocomiss_segKeyDown
            end
            object cbx_cod_formaadm: TDCComboBox
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'SE O SEGURADO É CONCURSADO, CONTRATADO,...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel26: TPanel
            Tag = -1
            Left = 0
            Top = 65
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Fone Comercial'
            TabOrder = 1
            object edt_fonecome_seg: TDCEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'TELEFONE DO LOCAL DE TRABALHO DO SEGURADO'
              MaxLength = 30
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel27: TPanel
            Tag = -1
            Left = 0
            Top = 97
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Data de Admissão'
            TabOrder = 2
            object edt_dtadmiss_seg: TDCDateEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DE ADMISSÃO NA EMPRESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel28: TPanel
            Tag = -1
            Left = 0
            Top = 129
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Situação na Empresa                                           ' +
              '             Data da Situação'
            TabOrder = 3
            object cbx_cod_situacempr: TDCComboBox
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_dtsituempr_seg: TDCDateEdit
              Tag = -5
              Left = 384
              Top = 5
              Width = 149
              Height = 21
              Hint = 'DATA DA ATUAL SITUAÇÃO NA EMPRESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel31: TPanel
            Tag = -1
            Left = 0
            Top = 194
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '   Data Limite'
            TabOrder = 5
            object edt_dtlimite_seg: TDCDateEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DE ADMISSÃO NA EMPRESA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel29: TPanel
            Tag = -1
            Left = 0
            Top = 2
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Local de Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object cb2_cod_empresafolha: TDCComboBox
              Tag = 5
              Left = 112
              Top = 5
              Width = 152
              Height = 21
              Hint = 'FOLHA DE PAGAMENTO DA INSTITUIÇÃO ONDE ESTÁ LOTADO O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
        end
        object tbs_obs: TTabSheet
          Caption = 'OBS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          object Label1: TLabel
            Left = 4
            Top = 216
            Width = 230
            Height = 13
            Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
          end
          object mem_obs_ben: TMemo
            Tag = -1
            Left = 4
            Top = 4
            Width = 769
            Height = 209
            MaxLength = 2000
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Carências'
          ImageIndex = 5
          OnShow = TabSheet6Show
          object PageControl1: TPageControl
            Left = 0
            Top = 9
            Width = 777
            Height = 216
            ActivePage = tbs_carencia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object tbs_carencia: TTabSheet
              Caption = 'Níveis de Carências'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              object Label2: TLabel
                Left = 8
                Top = 149
                Width = 86
                Height = 13
                Caption = 'Nível de Carência'
              end
              object Label3: TLabel
                Left = 178
                Top = 150
                Width = 109
                Height = 13
                Caption = 'Informações Adicionais'
              end
              object btn_adicionarCarencia: TPDJButton
                Left = 584
                Top = 158
                Width = 81
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Adicionar'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_adicionarCarenciaClick
                TabOrder = 0
              end
              object btn_removerCarencia: TPDJButton
                Left = 671
                Top = 158
                Width = 80
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Remover'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_removerCarenciaClick
                TabOrder = 1
              end
              object cbx_cod_nivelcar: TDCComboBox
                Left = 8
                Top = 162
                Width = 137
                Height = 21
                Hint = 'NÍVEL DE CARÊNCIA EM QUE FOI CLASSIFICADO O NOVO SEGURADO'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnChange = cbx_cod_nivelcarChange
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDown
                ShowCheckBox = True
              end
              object edt_informacao_car: TDCEdit
                Left = 176
                Top = 163
                Width = 401
                Height = 21
                Hint = 'OBSERVAÇÕES SOBRE A CARÊNCIA'
                MaxLength = 70
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object ScrollBox1: TScrollBox
                Left = 1
                Top = 31
                Width = 768
                Height = 115
                TabOrder = 4
                object LsB_Carencia: TListBox
                  Left = -4
                  Top = -4
                  Width = 1349
                  Height = 165
                  Color = clInfoBk
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  ItemHeight = 16
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object PDJButton1: TPDJButton
                Left = 148
                Top = 161
                Width = 22
                Height = 21
                Hint = 'Preenchimento automático da descrição'
                RepeatInterval = 50
                RepeatStartInterval = 50
                NumGlyphs = 1
                Glyph.Data = {
                  EE000000424DEE000000000000007600000028000000100000000F0000000100
                  0400000000007800000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFF000000000000FFFF0FEFEFEFEFE0F00F0E000E0000F0FB000FEFEF0F
                  F0E0F7B00E000E0000F0F7FB00EFEFEFEFE0FF7FB0000E0000F00000FB00FF0F
                  F0E07FBBBBB00E0000F0F7FB00EFEFEFEFE0FF7BB00000000000FF7FBB00FFFF
                  FFFFFFF7FBB00FFFFFFFFFFF7FBB00FFFFFF}
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = PDJButton1Click
                Visible = False
                TabOrder = 5
              end
              object Panel5: TPanel
                Tag = -1
                Left = 0
                Top = 0
                Width = 769
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Inicio de Carência'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                object edt_dtcarencia_ben: TDCDateEdit
                  Tag = -1
                  Left = 112
                  Top = 5
                  Width = 153
                  Height = 21
                  Hint = 'DATA DO INÍCIO DA CARÊNCIA DO NOVO INSCRITO'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnChange = edt_dtnascim_benChange
                  Checked = True
                  Kind = dkDate
                  ShowWeekDay = True
                end
              end
            end
            object tbs_doencapre: TTabSheet
              Caption = 'Doenças Pré Existentes'
              ImageIndex = 1
              object Label8: TLabel
                Left = 608
                Top = 77
                Width = 22
                Height = 13
                Caption = 'CID'
              end
              object DBGrid1: TDBGrid
                Left = 2
                Top = 1
                Width = 559
                Height = 184
                Color = 14811105
                DataSource = DataSource4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                OnDblClick = DBG_ItensDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'cod_cid'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nome_cid'
                    Visible = True
                  end>
              end
              object btn_adicionarCID: TPDJButton
                Left = 584
                Top = 118
                Width = 81
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Adicionar'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_adicionarCIDClick
                TabOrder = 1
              end
              object btn_removerCID: TPDJButton
                Left = 671
                Top = 118
                Width = 80
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Remover'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_removerCIDClick
                TabOrder = 2
              end
              object edt_cod_cid: TEditButton
                Tag = -5
                Left = 632
                Top = 69
                Width = 89
                Height = 22
                Hint = 
                  'Digite o código que se deseja alterar ou clique no botão para pe' +
                  'squisar'
                NumbersOnly = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                OnButtonClick = edt_cod_cidButtonClick
                Glyph.Data = {
                  BA040000424DBA0400000000000036040000280000000C0000000B0000000100
                  08000000000084000000C40E0000C40E00000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                  0707070707070707A4A4A4A4A4A4A4A4A40707000000000000000000A4070700
                  FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00
                  A4070700FFFFFFFFFFFFFF00A4070700A4A4A4A4A4A4A400A407070004040404
                  04070700A407070000000000000000000707070707070707070707070707}
              end
            end
          end
        end
        object tbs_carteirinha: TTabSheet
          Caption = 'Carteirinha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 7
          ParentFont = False
          OnShow = tbs_carteirinhaShow
          object Panel39: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 33
            Alignment = taLeftJustify
            Caption = 
              '   Data de Devolução da Carteirinha                             ' +
              '                                OBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_obs_cdv: TDCEdit
              Tag = -5
              Left = 384
              Top = 5
              Width = 385
              Height = 21
              MaxLength = 80
              TabOrder = 0
              OnKeyDown = edt_funcaocomiss_segKeyDown
            end
            object edt_dtdevolucao_cdv: TDCDateEdit
              Tag = -5
              Left = 188
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA DEVOLUÇÃO QUANDO DO CANCELAMENTO DA INSCRIÇÃO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnChange = edt_dtnascim_benChange
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel40: TPanel
            Tag = -1
            Left = 0
            Top = 33
            Width = 777
            Height = 33
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object btn_registrarSolicitacao: TPDJButton
              Left = 384
              Top = 4
              Width = 385
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
                87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
                FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
                0E070F757770000000E070FFF707777777007700007777777777}
              GlyphHot.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888844444444444444884888CFF8FF8FF4884888CCF8CF8CF4884CCCCC88C88
                C84884888C448CF8CF4884888C4E4FF8CF4884CCCC84E4888848844444FF4E48
                FF4884EEEE4F84E4FF484EEEEEE48F4E4F484FECCCE48FF4E4484FECEEE44444
                4E484FECEEE4444444E484FFFE48888888448844448888888888}
              Caption = '&Registrar Solicitação para devolução de Carteirinha'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_registrarSolicitacaoClick
              TabOrder = 0
            end
          end
          object Panel41: TPanel
            Tag = -1
            Left = 0
            Top = 66
            Width = 777
            Height = 33
            Alignment = taLeftJustify
            Caption = 
              '    Data que a Carteirinha foi Devolvida                        ' +
              '                                 OBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_devolvido_cdv: TDCDateEdit
              Tag = -5
              Left = 188
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_obsdv_cdv: TDCEdit
              Tag = -5
              Left = 384
              Top = 5
              Width = 385
              Height = 21
              MaxLength = 80
              TabOrder = 1
              OnKeyDown = edt_funcaocomiss_segKeyDown
            end
          end
          object Panel42: TPanel
            Tag = -1
            Left = 0
            Top = 99
            Width = 777
            Height = 33
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object btn_registrarDevolucao: TPDJButton
              Left = 384
              Top = 4
              Width = 385
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
                87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
                FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
                0E070F757770000000E070FFF707777777007700007777777777}
              GlyphHot.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888844444444444444884888CFF8FF8FF4884888CCF8CF8CF4884CCCCC88C88
                C84884888C448CF8CF4884888C4E4FF8CF4884CCCC84E4888848844444FF4E48
                FF4884EEEE4F84E4FF484EEEEEE48F4E4F484FECCCE48FF4E4484FECEEE44444
                4E484FECEEE4444444E484FFFE48888888448844448888888888}
              Caption = '&Registrar a devolução de Carteirinha'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_registrarDevolucaoClick
              TabOrder = 0
            end
          end
          object DBGrid2: TDBGrid
            Left = 10
            Top = 137
            Width = 755
            Height = 88
            DataSource = DataSource5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'titulacartei_ben'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_ben'
                Width = 258
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao_emc'
                Width = 163
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao_stc'
                Width = 142
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtemissao_hct'
                Width = 131
                Visible = True
              end>
          end
        end
        object tbs_matricula: TTabSheet
          Caption = 'Matrículas'
          ImageIndex = 8
          OnShow = tbs_matriculaShow
          object Label5: TLabel
            Left = 1
            Top = 3
            Width = 241
            Height = 13
            Caption = 'MATRÍCULA(S) DE ORIGEM ( ENTRADA )'
          end
          object Panel33: TPanel
            Tag = -1
            Left = 1
            Top = 28
            Width = 578
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Local de Desconto                                             ' +
              '                     Matrícula                                  ' +
              '       Dig.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object btn_atualizar: TSpeedButton
              Left = 536
              Top = 4
              Width = 29
              Height = 25
              Hint = 'Atualizar Digito'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                06020000424D0602000000000000760000002800000028000000140000000100
                0400000000009001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
                7FF330BFBFBF03307333703337F3FFFF7F37733377F330F0000B033333333033
                37F777737F333333F7F33011111103333330703337F333337F33333777FF301F
                FFF103333330000337F333337F33333777733011111103333330003337F3FF3F
                7F333337773330F00B0003333330033337F7737773333337733330BFBF003333
                3330333337FFFF7733333337333330000003333333333333377777733333FFFF
                FFFF3333333333300000000333333F3333377777777F333303333330BFBFBF03
                33337F333337F3FFFF7F333003333330F0000B0333377F333337F777737F3300
                03333330BFBFBF0333777F333337F3FFFF7F300003333330F0000B0337777F33
                3337F777737F330703333330BFBFBF03337773333337F3FF3F7F330333333330
                F00B0003337FF333FF37F7737773330733370330BFBF00333377FFF77337FFFF
                7733333000003330000003333337777733377777733333333333333333333333
                33333333333333333333}
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btn_atualizarClick
            end
            object edt_matricula_mte: TDCEdit
              Tag = -5
              Left = 360
              Top = 5
              Width = 88
              Height = 21
              MaxLength = 6
              TabOrder = 1
              OnKeyDown = edt_matricula_mteKeyDown
              OnKeyUp = edt_matricula_mteKeyUp
              EditMask = '999999'
            end
            object edt_digito_mte: TDCEdit
              Tag = -5
              Left = 501
              Top = 5
              Width = 24
              Height = 21
              Color = clInfoBk
              MaxLength = 1
              ReadOnly = True
              TabOrder = 2
              EditMask = '9'
            end
            object cb3_cod_empresafolha: TDCComboBox
              Tag = 5
              Left = 106
              Top = 5
              Width = 147
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = cb3_cod_empresafolhaChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel34: TPanel
            Tag = -1
            Left = 1
            Top = 60
            Width = 578
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Situação                                                      ' +
              '                  Salário/Vlr.Base                              ' +
              '         % s/Salário                           '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_vlbase_mte: TDCEdit
              Tag = -5
              Left = 360
              Top = 5
              Width = 88
              Height = 21
              MaxLength = 10
              TabOrder = 1
              OnEnter = edt_vlbase_mteEnter
            end
            object edt_percentual_mte: TDCEdit
              Tag = -5
              Left = 525
              Top = 5
              Width = 40
              Height = 21
              MaxLength = 3
              TabOrder = 2
              EditMask = '999'
            end
            object cbx_status_mte: TDCComboBox
              Tag = -5
              Left = 106
              Top = 5
              Width = 147
              Height = 21
              Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = edt_inscricao_benChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object DBG_matricula: TDBGrid
            Left = 0
            Top = 21
            Width = 596
            Height = 105
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = DBG_matriculaDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'matricula_mte'
                Title.Caption = 'Matrícula'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'digito_mte'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlbase_mte'
                Title.Caption = 'Salário / Vlr.Base'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'percentual_mte'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'desc_sit'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_emp'
                Title.Caption = 'Local de Desconto'
                Width = 154
                Visible = True
              end>
          end
          object pnl_matDebito: TPanel
            Tag = -1
            Left = 1
            Top = 165
            Width = 639
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Local de Desconto                                             ' +
              '                    Matrícula de Débito                         ' +
              '                    Dig.                  '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object edt_matriculadebito_seg: TDCEdit
              Tag = -5
              Left = 395
              Top = 5
              Width = 92
              Height = 21
              Hint = 'MATRÍCULA DO BENEFICÁRIO'
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyUp = edt_matriculadebito_segKeyUp
              EditMask = '999999'
            end
            object edt_digitomatdeb_seg: TDCEdit
              Tag = -5
              Left = 579
              Top = 5
              Width = 24
              Height = 21
              Color = clInfoBk
              MaxLength = 1
              ReadOnly = True
              TabOrder = 2
              EditMask = '9'
            end
            object cbx_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 111
              Top = 5
              Width = 152
              Height = 21
              Hint = 'FOLHA DE PAGAMENTO DA INSTITUIÇÃO ONDE ESTÁ LOTADO O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = cbx_cod_empresafolhaChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object pnl_MatPrincipal: TPanel
            Tag = -1
            Left = 0
            Top = 196
            Width = 639
            Height = 0
            Alignment = taLeftJustify
            Caption = 
              '  Matrícula Principal                                           ' +
              '         Dig.'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
            object edt_matriculaprinc_seg: TDCEdit
              Tag = -5
              Left = 128
              Top = 5
              Width = 105
              Height = 21
              Hint = 'MATRÍCULA USADA PARA DESCONTO EM FOLHA DE PAGAMENTO'
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyUp = edt_matriculaprinc_segKeyUp
              EditMask = '999999'
            end
            object edt_digitomatpri_seg: TDCEdit
              Tag = -5
              Left = 272
              Top = 5
              Width = 41
              Height = 21
              MaxLength = 1
              TabOrder = 1
              EditMask = '9'
            end
          end
          object pnl_planoEspecial: TPanel
            Tag = -1
            Left = 1
            Top = 133
            Width = 639
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tabela de Plano de Pagamento Especial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object cbx_cod_planoPagto: TDCComboBox
              Tag = -5
              Left = 208
              Top = 5
              Width = 425
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = edt_inscricao_benChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
          end
          object gbx_matriculaentrada: TGroupBox
            Left = 606
            Top = 16
            Width = 174
            Height = 109
            Caption = 'Matrículas de Entrada '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object btn_novoMat: TPDJButton
              Left = 15
              Top = 18
              Width = 65
              Height = 22
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Adicionar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_novoMatClick
              TabOrder = 0
            end
            object btn_alterarMat: TPDJButton
              Left = 15
              Top = 47
              Width = 65
              Height = 22
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = 'Al&terar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_alterarMatClick
              TabOrder = 1
            end
            object btn_excluirMat: TPDJButton
              Left = 95
              Top = 47
              Width = 65
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Remover'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_excluirMatClick
              TabOrder = 2
            end
            object btn_salvarMatricula: TPDJButton
              Left = 95
              Top = 18
              Width = 65
              Height = 20
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Enabled = False
              Caption = 'Sal&var'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_salvarMatriculaClick
              TabOrder = 3
            end
            object PDJButton7: TPDJButton
              Left = 15
              Top = 77
              Width = 65
              Height = 22
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Enabled = False
              Caption = 'Cance&lar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = PDJButton7Click
              TabOrder = 4
            end
          end
          object gbx_matriculadebito: TGroupBox
            Left = 655
            Top = 129
            Width = 125
            Height = 103
            Caption = 'Matrícula de Débito '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            object btn_editaMatDeb: TPDJButton
              Left = 29
              Top = 16
              Width = 65
              Height = 22
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Editar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_editaMatDebClick
              TabOrder = 0
            end
            object btn_salvaMatDeb: TPDJButton
              Left = 29
              Top = 46
              Width = 65
              Height = 22
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Enabled = False
              Caption = '&Salvar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_salvaMatDebClick
              TabOrder = 1
            end
            object btn_cancelaMatDeb: TPDJButton
              Left = 29
              Top = 76
              Width = 65
              Height = 22
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Enabled = False
              Caption = '&Cancelar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_cancelaMatDebClick
              TabOrder = 2
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Dependentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 6
          ParentFont = False
          OnShow = TabSheet7Show
          object Label4: TLabel
            Left = 4
            Top = 4
            Width = 199
            Height = 13
            Caption = 'Clique duas vezes para consultar / alterar '
          end
          object lbl_vldesconto_adf: TLabel
            Left = 209
            Top = 212
            Width = 51
            Height = 13
            Caption = 'Vl. Contrib.'
          end
          object Label7: TLabel
            Left = 388
            Top = 212
            Width = 85
            Height = 13
            Caption = 'Dt. Última Contrib.'
          end
          object DBG_Itens: TDBGrid
            Left = 4
            Top = 20
            Width = 769
            Height = 183
            DataSource = DataSource1
            DefaultDrawing = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBG_ItensDrawColumnCell
            OnDblClick = DBG_ItensDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'nome_ben'
                Width = 262
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtnascim_ben'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idade_ben'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tdp'
                Title.Caption = 'Tipo Depend.'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_sit'
                Width = 128
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_pla'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_gra'
                Width = 171
                Visible = True
              end>
          end
          object btn_atualizadep: TPDJButton
            Left = 612
            Top = 206
            Width = 160
            Height = 23
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Atualizar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_atualizadepClick
            TabOrder = 1
          end
          object btn_dependente: TPDJButton
            Left = 6
            Top = 206
            Width = 174
            Height = 23
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Cadastro de Dependentes'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_dependenteClick
            TabOrder = 2
          end
          object edt_cod_dep: TDBEdit
            Left = 270
            Top = 206
            Width = 64
            Height = 21
            DataField = 'cod_beneficiario'
            DataSource = DataSource1
            TabOrder = 3
            OnChange = edt_cod_depChange
          end
          object edt_vldesconto_adf: TDCDateEdit
            Left = 267
            Top = 206
            Width = 100
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Alignment = taRightJustify
            ReadOnly = True
            Checked = True
            ButtonExist = False
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtreferencia_flh: TDCDateEdit
            Left = 481
            Top = 206
            Width = 100
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ReadOnly = True
            Checked = True
            ButtonExist = False
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object tbs_historico: TTabSheet
          Caption = 'Histórico/Relatório'
          ImageIndex = 9
          OnShow = tbs_historicoShow
          object lbl_ocorrencia: TLabel
            Left = 24
            Top = 192
            Width = 63
            Height = 13
            Caption = 'Ocorrencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PDJButton4: TPDJButton
            Left = 13
            Top = 3
            Width = 748
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Consultar Histórico do Segurado'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton4Click
            TabOrder = 0
          end
          object PDJButton10: TPDJButton
            Left = 13
            Top = 32
            Width = 748
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Imprimir Ficha de Segurado      '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton10Click
            TabOrder = 1
          end
          object PDJButton11: TPDJButton
            Left = 13
            Top = 62
            Width = 748
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Imprimir Ficha de Requerimento'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton11Click
            TabOrder = 2
          end
          object cbx_cod_ocorrenciaEdital: TDCComboBox
            Tag = -5
            Left = 104
            Top = 188
            Width = 498
            Height = 21
            Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object PDJButton2: TPDJButton
            Left = 13
            Top = 91
            Width = 748
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = 'Consultas de Compras Efetuadas na Farmácia '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton2Click
            TabOrder = 4
          end
          object Panel6: TPanel
            Tag = -1
            Left = 13
            Top = 121
            Width = 748
            Height = 34
            Alignment = taLeftJustify
            Caption = 
              '  Ano                                                           ' +
              '                                         '
            TabOrder = 5
            object edt_ano: TDCEdit
              Tag = -10
              Left = 66
              Top = 5
              Width = 60
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 6
              TabOrder = 0
            end
            object PDJButton8: TPDJButton
              Left = 487
              Top = 5
              Width = 258
              Height = 25
              Hint = 'Altera a Situação do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
                AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
                00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
                555550FBFB055555555557000075555555555555555555555555}
              GlyphHot.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
                EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
                00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
                555550FBFB055555555557000075555555555555555555555555}
              Caption = 'Contribuições pagas ao imasf por Ano'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = PDJButton8Click
              TabOrder = 1
            end
            object rdb_irpf: TRadioButton
              Left = 160
              Top = 8
              Width = 57
              Height = 17
              Caption = 'IRPF'
              TabOrder = 2
            end
            object rdb_Socontribuicao: TRadioButton
              Left = 232
              Top = 8
              Width = 150
              Height = 17
              Caption = 'Somente Contribuição'
              TabOrder = 3
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Odontológico'
          ImageIndex = 10
          OnShow = TabSheet4Show
          object dbg_odonto: TDBGrid
            Left = 3
            Top = 2
            Width = 777
            Height = 226
            Color = clWhite
            DataSource = DataSource6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'nome_afo'
                Title.Caption = 'Nome'
                Width = 204
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao_tco'
                Title.Caption = 'Tipo Cobert.'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtadesaoodonto_afo'
                Title.Caption = 'Dt.Situação'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'carencia'
                Title.Caption = 'Carência'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DtCarencia'
                Title.Caption = 'Fim da Carência'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nomemae_afo'
                Title.Caption = 'Nome da Mãe'
                Width = 181
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rg_afo'
                Title.Caption = 'RG'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cpf_afo'
                Title.Caption = 'CPF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtnascim_afo'
                Title.Caption = 'Dt.Nascimento'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs_afo'
                Title.Caption = 'Observação'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtsistema_afo'
                Title.Caption = 'Dt.Sistema'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_usuario'
                Title.Caption = 'Cód.Usuário'
                Width = 91
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Hist.Oper.'
          ImageIndex = 11
          OnShow = TabSheet5Show
          object stg_audi: TStringGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 775
            Height = 230
            Color = clInfoBk
            ColCount = 1
            DefaultRowHeight = 17
            FixedCols = 0
            TabOrder = 0
            OnDrawCell = stg_audiDrawCell
          end
        end
      end
    end
    object Panel30: TPanel
      Left = 6
      Top = 465
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 'Não Visível'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      object edt_titularidade_ben: TDCEdit
        Left = 68
        Top = 5
        Width = 45
        Height = 21
        Color = 16777088
        MaxLength = 12
        TabOrder = 0
        Text = '00'
      end
      object edt_digito_ben: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 45
        Height = 21
        Color = 16777088
        MaxLength = 12
        TabOrder = 1
        Text = '0'
      end
      object edt_cod_sitbeneficiario: TDCEdit
        Tag = -1
        Left = 224
        Top = 5
        Width = 45
        Height = 21
        Color = 16777088
        MaxLength = 12
        TabOrder = 2
        Text = '1'
      end
      object edt_titulacartei_ben: TDCEdit
        Tag = -1
        Left = 276
        Top = 5
        Width = 45
        Height = 21
        Color = 16777088
        MaxLength = 12
        TabOrder = 3
        Text = '0'
      end
    end
    object Panel38: TPanel
      Tag = -1
      Left = 1
      Top = 456
      Width = 796
      Height = 32
      Align = alBottom
      Alignment = taLeftJustify
      Caption = 
        '    Data de Alteração                                           ' +
        '                       Alterado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object edt_dtalteracao_hsb: TDCDateEdit
        Left = 124
        Top = 5
        Width = 217
        Height = 21
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ReadOnly = True
        Checked = True
        ButtonExist = False
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_nome_usu: TDCEdit
        Tag = -10
        Left = 460
        Top = 5
        Width = 329
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object pnl_cod_beneficiario: TPanel
      Tag = -1
      Left = 656
      Top = 161
      Width = 141
      Height = 15
      TabOrder = 8
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 563
    Width = 796
  end
  object DataSource1: TDataSource
    DataSet = Fdt_principal.spc_cons_dependente
    Left = 12
    Top = 435
  end
  object DataSource2: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_matriculaentrada
    Left = 42
    Top = 435
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_carteiradevolucao
    Left = 73
    Top = 435
  end
  object DataSource4: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_doencaPreExistente
    Left = 104
    Top = 435
  end
  object DataSource5: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_emissaocarteira
    Left = 136
    Top = 435
  end
  object DataSource6: TDataSource
    Left = 168
    Top = 435
  end
end
