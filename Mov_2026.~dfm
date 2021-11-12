inherited Frm_Mov_2026: TFrm_Mov_2026
  Caption = 'Frm_Mov_2026'
  ClientHeight = 574
  ClientWidth = 793
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 793
    inherited Image1: TImage
      Width = 791
    end
  end
  inherited Panel2: TPanel
    Top = 522
    Width = 793
    inherited Image3: TImage
      Width = 791
    end
    inherited btn_salvar: TPDJButton
      Tag = -1
      Left = 229
    end
    inherited btn_cancelar: TPDJButton
      Left = 342
    end
    inherited btn_excluir: TPDJButton
      Left = 455
      Visible = False
    end
    object btn_aprovar: TPDJButton
      Left = 568
      Top = 4
      Width = 109
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Enabled = False
      Caption = ' Aprovar'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_aprovarClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Tag = -5
    Width = 793
    Height = 481
    object Panel4: TPanel
      Tag = -2
      Left = 3
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Código '
      TabOrder = 0
      object edt_cod_autorizainternacao: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_autorizainternacaoButtonClick
      end
      object pnl_alertaStatus: TPanel
        Left = 598
        Top = 6
        Width = 178
        Height = 21
        BevelOuter = bvLowered
        Caption = 'EM ANÁLISE'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object rdb_todos: TRadioButton
        Left = 237
        Top = 9
        Width = 56
        Height = 17
        Caption = 'Todos'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rdb_emAnalise: TRadioButton
        Left = 314
        Top = 9
        Width = 77
        Height = 17
        Caption = 'Em Análise'
        TabOrder = 3
      end
      object rdb_aprovado: TRadioButton
        Left = 414
        Top = 9
        Width = 77
        Height = 17
        Caption = 'Aprovado'
        TabOrder = 4
      end
    end
    object pnl_conveniado: TPanel
      Tag = -1
      Left = 3
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Cod.Conveniado'
      TabOrder = 1
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnEnter = edt_cod_conveniadoEnter
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -5
        Left = 236
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
      end
    end
    object pnl_inscricao: TPanel
      Tag = -1
      Left = 3
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '              Carteirinha                                       ' +
        '                                     Plano'
      TabOrder = 2
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_carteira: TDCEdit
        Tag = -5
        Left = 319
        Top = 5
        Width = 187
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -5
        Left = 119
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 2
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_nome_pla: TDCEdit
        Tag = -5
        Left = 574
        Top = 5
        Width = 167
        Height = 21
        Hint = 'IDADE INCLUINDO MESES'
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 3
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Beneficiario                                                ' +
        '                                                                ' +
        '                                          Idade'
      TabOrder = 3
      object edt_cod_statusAutorizaInternacao: TDCEdit
        Tag = -1
        Left = 618
        Top = 6
        Width = 21
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 1
        TabOrder = 2
      end
      object edt_nome: TDCEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 387
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_idade: TDCEdit
        Tag = -5
        Left = 574
        Top = 5
        Width = 74
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object PageControl1: TPageControl
      Tag = -1
      Left = 3
      Top = 131
      Width = 795
      Height = 390
      ActivePage = tbs_principal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      object tbs_principal: TTabSheet
        Caption = 'Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnShow = tbs_principalShow
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 9
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    AMB                                                         ' +
            '                 '
          TabOrder = 0
          object edt_cod_padrao: TDCChoiceEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 93
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 15
            TabOrder = 0
            OnExit = edt_cod_padraoExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_padraoButtonClick
            EditMask = '99999999'
          end
          object edt_nome_its: TDCEdit
            Tag = -5
            Left = 218
            Top = 5
            Width = 503
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 41
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    CRM do Médico                                               ' +
            '      '
          TabOrder = 1
          object edt_cod_crm: TDCChoiceEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 93
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 15
            TabOrder = 0
            OnExit = edt_cod_crmExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_crmButtonClick
          end
          object edt_medico_crm: TDCEdit
            Tag = -5
            Left = 218
            Top = 5
            Width = 503
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel9: TPanel
          Tag = -1
          Left = 0
          Top = 73
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Data de Entrada '
          TabOrder = 2
          object edt_dtentrada_ain: TDCDateEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 185
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel10: TPanel
          Tag = -1
          Left = 0
          Top = 105
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    CID                                                         ' +
            '                 '
          TabOrder = 3
          object edt_cod_cid: TDCChoiceEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 93
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnExit = edt_cod_cidExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_cidButtonClick
          end
          object edt_nome_cid: TDCEdit
            Tag = -5
            Left = 218
            Top = 5
            Width = 503
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 137
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Acomodação                                                  ' +
            '                                              RN                ' +
            '          Exceção'
          TabOrder = 4
          object cbx_cod_acomodacao: TDCComboBox
            Tag = -1
            Left = 120
            Top = 5
            Width = 185
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
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object edt_rn_ain: TDCEdit
            Tag = -1
            Left = 388
            Top = 5
            Width = 30
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 1
            TabOrder = 1
          end
          object edt_excecao_ain: TDCEdit
            Tag = -1
            Left = 513
            Top = 4
            Width = 30
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 1
            TabOrder = 2
          end
        end
        object Panel12: TPanel
          Tag = -1
          Left = 0
          Top = 169
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = '    OBS'
          TabOrder = 5
          object edt_obs_ain: TDCEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 601
            Height = 21
            MaxLength = 250
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 201
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Data da Alteração                                           ' +
            '                             Código do Usuário                  ' +
            '                                     '
          TabOrder = 6
          object edt_dtalteracao_ain: TDCDateEdit
            Tag = -1
            Left = 121
            Top = 5
            Width = 184
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            Checked = True
            ButtonExist = False
            Kind = dkDateTime
            ShowWeekDay = True
          end
          object cbx_cod_usuario: TDCComboBox
            Tag = -1
            Left = 408
            Top = 5
            Width = 313
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDown
            ShowCheckBox = True
          end
        end
        object Panel36: TPanel
          Tag = -1
          Left = 0
          Top = 233
          Width = 782
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Tipos de Internação'
          TabOrder = 7
          object cbx_cod_tipointernacao: TDCComboBox
            Tag = 3
            Left = 121
            Top = 5
            Width = 286
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
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object pnl_procedimento: TPanel
          Left = 1
          Top = 270
          Width = 749
          Height = 21
          BevelOuter = bvLowered
          Caption = '*** PROCEDIMENTO NÃO AUTORIZADO PARA O CONVENIADO ***'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Visible = False
        end
        object btn_imprimirAutorizacao: TPDJButton
          Left = 30
          Top = 295
          Width = 270
          Height = 26
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'Imprimir Autorização'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_imprimirAutorizacaoClick
          TabOrder = 9
        end
        object PDJButton1: TPDJButton
          Left = 497
          Top = 295
          Width = 270
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Visualizar Resumo de Internação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 10
        end
        object Mem_autorizacao: TMemo
          Left = 310
          Top = 294
          Width = 169
          Height = 26
          TabStop = False
          Lines.Strings = (
            '')
          TabOrder = 11
          Visible = False
        end
      end
      object tbs_concessao: TTabSheet
        Caption = 'Concessões'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        OnShow = tbs_concessaoShow
        object Label3: TLabel
          Left = 11
          Top = 254
          Width = 386
          Height = 16
          Caption = 'Total de Diárias pelo Conveniado no periodo de 1 ano: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_tlconcessao: TLabel
          Left = 399
          Top = 252
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_novocin: TPDJButton
          Left = 40
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Adicionar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_novocinClick
          TabOrder = 5
        end
        object btn_alterarcin: TPDJButton
          Left = 153
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'A&lterar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_alterarcinClick
          TabOrder = 6
        end
        object btn_Remover_cin: TPDJButton
          Left = 491
          Top = 284
          Width = 109
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
          OnClick = btn_Remover_cinClick
          TabOrder = 9
        end
        object btn_Salvarcin: TPDJButton
          Left = 265
          Top = 284
          Width = 109
          Height = 25
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
          OnClick = btn_SalvarcinClick
          TabOrder = 7
        end
        object btn_cancelar_cin: TPDJButton
          Left = 378
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
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
          OnClick = btn_cancelar_cinClick
          TabOrder = 8
        end
        object pnl_crm: TPanel
          Tag = -1
          Left = 9
          Top = 11
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Seqüencia'
          TabOrder = 0
          object edt_sequencia_cin: TDCEdit
            Left = 116
            Top = 5
            Width = 77
            Height = 21
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            EditMask = '0000'
          end
        end
        object Panel14: TPanel
          Tag = -1
          Left = 9
          Top = 75
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Dt. Inicio                                                  ' +
            '                                 Dt. Final                      ' +
            '                                               Nº Diárias'
          TabOrder = 2
          object edt_dtinicio_cin: TDCDateEdit
            Left = 116
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtfinal_cin: TDCDateEdit
            Left = 367
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 1
            OnExit = edt_dtfinal_cinExit
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_numdiarias_cin: TDCEdit
            Left = 621
            Top = 5
            Width = 64
            Height = 21
            Color = clInfoBk
            MaxLength = 60
            ReadOnly = True
            TabOrder = 2
            EditMask = '0000'
          end
        end
        object Panel15: TPanel
          Tag = -1
          Left = 9
          Top = 43
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Dt. Autorização                                             ' +
            '                               Status           '
          TabOrder = 1
          object edt_dtautorizacao_cin: TDCDateEdit
            Left = 116
            Top = 5
            Width = 153
            Height = 21
            TabStop = False
            Enabled = False
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object cb2_cod_statusAutorizaInternacao: TDCComboBox
            Left = 367
            Top = 5
            Width = 153
            Height = 21
            Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel16: TPanel
          Tag = -1
          Left = 9
          Top = 107
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Auditor'
          TabOrder = 3
          object edt_auditor_cin: TDCEdit
            Left = 116
            Top = 5
            Width = 570
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
        object Panel31: TPanel
          Tag = -1
          Left = 9
          Top = 139
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Justificativa'
          TabOrder = 4
          object edt_justificativa_cin: TDCEdit
            Left = 116
            Top = 5
            Width = 570
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
        object dbg_concessao: TDBGrid
          Left = 4
          Top = 4
          Width = 775
          Height = 240
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbg_concessaoDrawColumnCell
          OnDblClick = dbg_concessaoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'sequencia_cin'
              Title.Caption = 'Sequencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtautorizacao_cin'
              Title.Caption = 'Dt. Autorização'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numdiarias_cin'
              Title.Caption = 'Num. Diarias'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtinicio_cin'
              Title.Caption = 'Dt. Inicio'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfinal_cin'
              Title.Caption = 'Dt. Final'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'auditor_cin'
              Title.Caption = 'Auditor'
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'justificativa_cin'
              Title.Caption = 'Justificativa'
              Width = 215
              Visible = True
            end>
        end
      end
      object tbl_uti: TTabSheet
        Caption = 'UTI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        OnShow = tbl_utiShow
        object Panel17: TPanel
          Tag = -1
          Left = 9
          Top = 9
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Seqüencia                                                   ' +
            '                                Status'
          TabOrder = 0
          object edt_sequencia_uti: TDCEdit
            Tag = 2
            Left = 116
            Top = 5
            Width = 77
            Height = 21
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            EditMask = '0000'
          end
          object cb3_cod_statusAutorizaInternacao: TDCComboBox
            Tag = 2
            Left = 363
            Top = 5
            Width = 153
            Height = 21
            Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel18: TPanel
          Tag = -1
          Left = 9
          Top = 41
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Dt. Internação                                              ' +
            '                             Dt. Alta                           ' +
            '                                       Nº Diárias'
          TabOrder = 1
          object edt_dtinternacao_uti: TDCDateEdit
            Tag = 2
            Left = 116
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtalta_uti: TDCDateEdit
            Tag = 2
            Left = 363
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 1
            OnExit = edt_dtalta_utiExit
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_numdiarias_uti: TDCEdit
            Tag = 2
            Left = 609
            Top = 5
            Width = 77
            Height = 21
            Color = clInfoBk
            MaxLength = 60
            ReadOnly = True
            TabOrder = 2
            EditMask = '0000'
          end
        end
        object btn_adicionar_uti: TPDJButton
          Left = 40
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Adicionar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_adicionar_utiClick
          TabOrder = 2
        end
        object btn_altera_uti: TPDJButton
          Left = 153
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'A&lterar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_altera_utiClick
          TabOrder = 3
        end
        object btn_remover_uti: TPDJButton
          Left = 491
          Top = 284
          Width = 109
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
          OnClick = btn_remover_utiClick
          TabOrder = 6
        end
        object btn_salvar_uti: TPDJButton
          Left = 265
          Top = 284
          Width = 109
          Height = 25
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
          OnClick = btn_salvar_utiClick
          TabOrder = 4
        end
        object btn_cancelar_uti: TPDJButton
          Left = 378
          Top = 284
          Width = 109
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
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
          OnClick = btn_cancelar_utiClick
          TabOrder = 5
        end
        object Panel32: TPanel
          Tag = -1
          Left = 9
          Top = 73
          Width = 730
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Justificativa'
          TabOrder = 7
          object edt_justificativa_uti: TDCEdit
            Tag = 2
            Left = 116
            Top = 5
            Width = 570
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
        object dbg_uti: TDBGrid
          Left = 4
          Top = 4
          Width = 775
          Height = 267
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbg_utiDrawColumnCell
          OnDblClick = dbg_utiDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'sequencia_uti'
              Title.Caption = 'Sequencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtinternacao_uti'
              Title.Caption = 'Dt. Internação'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtalta_uti'
              Title.Caption = 'Dt. Alta'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numdiarias_uti'
              Title.Caption = 'Num. Diarias'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'justificativa_uti'
              Title.Caption = 'Justificativa'
              Width = 371
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Alta Hospitalar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        OnShow = TabSheet4Show
        object PageControl2: TPageControl
          Left = 0
          Top = 2
          Width = 777
          Height = 361
          ActivePage = tbs_alta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object tbs_alta: TTabSheet
            Caption = 'Dados Gerais da Alta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            object Panel20: TPanel
              Tag = -1
              Left = 2
              Top = 34
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Data da Alta                                                ' +
                '                        '
              TabOrder = 1
              object edt_dtalta_alt: TDCDateEdit
                Tag = 3
                Left = 114
                Top = 5
                Width = 136
                Height = 21
                TabOrder = 0
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
            object Panel33: TPanel
              Tag = -1
              Left = 2
              Top = 130
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Vl. Estimado                                                ' +
                '                               Vl. Informado                    ' +
                '                                          Vl. Pago'
              TabOrder = 4
              object edt_vlestimado_alt: TDCEdit
                Tag = 3
                Left = 112
                Top = 5
                Width = 134
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
              object edt_vlinformado_alt: TDCEdit
                Tag = 3
                Left = 396
                Top = 5
                Width = 134
                Height = 21
                MaxLength = 250
                TabOrder = 1
              end
              object edt_vlpago_alt: TDCEdit
                Tag = 3
                Left = 615
                Top = 5
                Width = 140
                Height = 21
                MaxLength = 250
                TabOrder = 2
              end
            end
            object Panel30: TPanel
              Tag = -1
              Left = 2
              Top = 66
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Num. Intercorrência Realizadas                              ' +
                '               Total de Visitas                                 ' +
                '               Total Autorizadas'
              TabOrder = 2
              object edt_numintercorrencia_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 73
                Height = 21
                MaxLength = 250
                TabOrder = 0
                EditMask = '0000'
              end
              object edt_tlvisitas_alt: TDCEdit
                Tag = 3
                Left = 396
                Top = 5
                Width = 72
                Height = 21
                MaxLength = 250
                TabOrder = 1
                EditMask = '0000'
              end
              object edt_tlautorizadas_alt: TDCEdit
                Tag = 3
                Left = 615
                Top = 5
                Width = 72
                Height = 21
                Color = clInfoBk
                MaxLength = 250
                TabOrder = 2
                EditMask = '0000'
              end
            end
            object Panel6: TPanel
              Tag = -1
              Left = 2
              Top = 98
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Num. Total de Diarias                                       ' +
                '             Num. de Diárias em UTI/CTI/UCO'
              TabOrder = 3
              object edt_numtldiarias_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 73
                Height = 21
                Color = clInfoBk
                MaxLength = 250
                ReadOnly = True
                TabOrder = 0
                EditMask = '0000'
              end
              object edt_numtldiariasuti_alt: TDCEdit
                Tag = 3
                Left = 615
                Top = 5
                Width = 72
                Height = 21
                Color = clInfoBk
                MaxLength = 250
                TabOrder = 1
                EditMask = '0000'
              end
            end
            object Panel34: TPanel
              Tag = -1
              Left = 2
              Top = 2
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Cod. Esp                                             '
              TabOrder = 0
              object edt_cod_espmedamb: TDCEdit
                Tag = 3
                Left = 114
                Top = 5
                Width = 135
                Height = 21
                MaxLength = 250
                TabOrder = 0
                EditMask = '0000'
              end
            end
            object PDJButton2: TPDJButton
              Left = 193
              Top = 225
              Width = 296
              Height = 25
              Hint = 'Salvar Informações da Alta'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = 'Salvar Informações da Alta'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = PDJButton2Click
              TabOrder = 5
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Detalhes da Alta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            object Panel21: TPanel
              Tag = -1
              Left = 1
              Top = 33
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Queixa da Internação'
              TabOrder = 1
              object edt_queixa_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 6
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel22: TPanel
              Tag = -1
              Left = 1
              Top = 65
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Conclusões diagnósticas'
              TabOrder = 2
              object edt_conclusoes_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel23: TPanel
              Tag = -1
              Left = 1
              Top = 97
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Especificar antibioticoterapia'
              TabOrder = 3
              object edt_antibioticoterapia_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel25: TPanel
              Tag = -1
              Left = 1
              Top = 129
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Evolução Clinica'
              TabOrder = 4
              object edt_evolucaoclinica_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel26: TPanel
              Tag = -1
              Left = 1
              Top = 161
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '   Exame Físico de Alta'
              TabOrder = 5
              object edt_exame_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel27: TPanel
              Tag = -1
              Left = 1
              Top = 193
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Prescrição de Alta'
              TabOrder = 6
              object edt_prescricao_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel28: TPanel
              Tag = -1
              Left = 1
              Top = 225
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Exames Realizados'
              TabOrder = 7
              object edt_examerealizados_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel29: TPanel
              Tag = -1
              Left = 1
              Top = 257
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Especialidades Solicitadas'
              TabOrder = 8
              object edt_especialidades_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 583
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
            object Panel35: TPanel
              Tag = -1
              Left = 1
              Top = 1
              Width = 765
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Médico(a) Assistente'
              TabOrder = 0
              object edt_medicoassist_alt: TDCEdit
                Tag = 3
                Left = 174
                Top = 5
                Width = 331
                Height = 21
                MaxLength = 250
                TabOrder = 0
              end
            end
          end
        end
      end
      object tbs_procedimento: TTabSheet
        Caption = 'Procedimentos Autorizados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        OnShow = tbs_procedimentoShow
        object btn_adicionaritem: TPDJButton
          Left = 14
          Top = 263
          Width = 109
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Adicionar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_adicionaritemClick
          TabOrder = 0
        end
        object btn_alteraitem: TPDJButton
          Left = 127
          Top = 263
          Width = 109
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'A&lterar '
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_alteraitemClick
          TabOrder = 1
        end
        object btn_removeritem: TPDJButton
          Left = 465
          Top = 263
          Width = 109
          Height = 25
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
          OnClick = btn_removeritemClick
          TabOrder = 2
        end
        object btn_salvaritem: TPDJButton
          Left = 239
          Top = 263
          Width = 109
          Height = 25
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
          OnClick = btn_salvaritemClick
          TabOrder = 3
        end
        object btn_cancelaritem: TPDJButton
          Left = 352
          Top = 263
          Width = 109
          Height = 25
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
          OnClick = btn_cancelaritemClick
          TabOrder = 4
        end
        object Panel19: TPanel
          Tag = -1
          Left = 7
          Top = 17
          Width = 722
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Item de Serviço'
          TabOrder = 5
          object edt_descricao_itc: TDCEdit
            Tag = 5
            Left = 215
            Top = 5
            Width = 498
            Height = 21
            Color = clInfoBk
            MaxLength = 80
            ReadOnly = True
            TabOrder = 1
          end
          object edt_cod_itemservico: TDCChoiceEdit
            Tag = 5
            Left = 110
            Top = 5
            Width = 95
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnExit = edt_cod_itemservicoExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_itemservicoButtonClick
          end
        end
        object Panel37: TPanel
          Tag = -1
          Left = 7
          Top = 49
          Width = 722
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            '    Observação                                                  ' +
            '                                                                ' +
            '                                                                ' +
            '         Qtde.'
          TabOrder = 6
          object edt_obs_ita: TDCEdit
            Tag = 5
            Left = 110
            Top = 5
            Width = 507
            Height = 21
            MaxLength = 250
            TabOrder = 0
          end
          object edt_qtde_ita: TDCEdit
            Tag = 5
            Left = 672
            Top = 5
            Width = 41
            Height = 21
            MaxLength = 4
            TabOrder = 1
            OnKeyDown = edt_qtde_itaKeyDown
            EditMask = '9999'
          end
        end
        object Panel38: TPanel
          Tag = -1
          Left = 7
          Top = 82
          Width = 722
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            '    Data Atendimento                                            ' +
            '                                              Status'
          TabOrder = 7
          object edt_dtatendimento_ita: TDCDateEdit
            Tag = 5
            Left = 110
            Top = 5
            Width = 185
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object cbx_cod_statusAutorizaInternacao: TDCComboBox
            Tag = 5
            Left = 408
            Top = 5
            Width = 185
            Height = 21
            Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel39: TPanel
          Tag = -1
          Left = 7
          Top = 115
          Width = 722
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Data da Alteração                                           ' +
            '                            Código do Usuário                   ' +
            '                                    '
          TabOrder = 8
          object edt_dtalteracao_ita: TDCDateEdit
            Tag = 5
            Left = 110
            Top = 5
            Width = 184
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            Checked = True
            ButtonExist = False
            Kind = dkDateTime
            ShowWeekDay = True
          end
          object cb2_cod_usuario: TDCComboBox
            Tag = 5
            Left = 408
            Top = 5
            Width = 313
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDown
            ShowCheckBox = True
          end
        end
        object dbg_itemservico: TDBGrid
          Left = 3
          Top = 3
          Width = 775
          Height = 250
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbg_itemservicoDrawColumnCell
          OnDblClick = dbg_itemservicoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_autorizacaoMedica'
              Title.Caption = 'Autorização Médica'
              Width = 2
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_itemservico'
              Title.Caption = 'Cód.Item'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_padrao'
              Title.Caption = 'Cód. Padrão'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_its'
              Title.Caption = 'Nome'
              Width = 354
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obs_ita'
              Title.Caption = 'Observação'
              Width = 368
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtatendimento_ita'
              Title.Caption = 'Data Atendimento'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsistema_ita'
              Title.Caption = 'Data Sistema'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_usu'
              Title.Caption = 'Usuário'
              Width = 82
              Visible = True
            end>
        end
        object pnl_procedimento2: TPanel
          Left = 35
          Top = 293
          Width = 623
          Height = 21
          BevelOuter = bvLowered
          Caption = '*** PROCEDIMENTO NÃO AUTORIZADO PARA O CONVENIADO ***'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
      end
      object tbl_resumo: TTabSheet
        Caption = 'Resumo Clínico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        object Label1: TLabel
          Left = 9
          Top = 5
          Width = 48
          Height = 13
          Caption = 'Descrição'
        end
        object Label2: TLabel
          Left = 14
          Top = 280
          Width = 230
          Height = 13
          Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object mem_resumoclinico_ain: TMemo
          Tag = -1
          Left = 7
          Top = 22
          Width = 771
          Height = 249
          MaxLength = 60000
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 555
    Width = 793
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal3.spc_cons_med_concessaointernacao
    Left = 153
    Top = 492
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal3.spc_cons_med_controleuti
    Left = 265
    Top = 491
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_itemautorizacao
    Left = 97
    Top = 489
  end
end
