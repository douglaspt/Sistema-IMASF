inherited Frm_Cad_AutorizacaoMedica: TFrm_Cad_AutorizacaoMedica
  Caption = 'Frm_Cad_AutorizacaoMedica'
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btn_cancelar: TPDJButton
      Left = 346
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
    object PDJButton1: TPDJButton
      Left = 572
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      Visible = False
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Cod. Autorização'
      TabOrder = 0
      object edt_cod_autorizacaoMedica: TDCChoiceEdit
        Tag = -2
        Left = 120
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_autorizacaoMedicaKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_autorizacaoMedicaButtonClick
        EditMask = '9999999999'
      end
      object pnl_tipoautorizacao: TPanel
        Left = 375
        Top = 5
        Width = 413
        Height = 21
        BevelOuter = bvLowered
        Caption = 'A Autorização Necessita de aprovação Administrativa'
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
      object edt_carteirinha2: TDCEdit
        Left = 252
        Top = 5
        Width = 28
        Height = 21
        Color = clWhite
        MaxLength = 120
        TabOrder = 2
      end
      object edt_carteirinha: TEdit
        Left = 307
        Top = 6
        Width = 41
        Height = 21
        TabOrder = 3
        OnExit = edt_carteirinhaExit
        OnKeyDown = edt_carteirinhaKeyDown
      end
      object btn_leituracarteirinha: TPDJButton
        Left = 241
        Top = 5
        Width = 127
        Height = 23
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = 'Leitura Carteirinha'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_leituracarteirinhaClick
        ParentColor = False
        Color = clBtnFace
        TabOrder = 4
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '                                                                ' +
        '                                                                ' +
        '                     Idade'
      TabOrder = 1
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
        TabOrder = 1
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 222
        Top = 5
        Width = 83
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 20
        TabOrder = 2
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_nome: TDCEdit
        Tag = -10
        Left = 312
        Top = 5
        Width = 323
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 60
        TabOrder = 3
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_idade: TDCEdit
        Tag = -10
        Left = 688
        Top = 5
        Width = 99
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 4
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel32: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 33
      Alignment = taLeftJustify
      Caption = '    Observação'
      TabOrder = 6
      object edt_cod_tipoAutorizacao: TDCEdit
        Tag = -1
        Left = 605
        Top = 5
        Width = 25
        Height = 21
        TabStop = False
        Enabled = False
        MaxLength = 250
        TabOrder = 0
      end
      object edt_descricao_aum: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 515
        Height = 21
        MaxLength = 250
        TabOrder = 1
        OnKeyDown = edt_descricao_aumKeyDown
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 226
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Sistema                                                 ' +
        '                                                          Usuári' +
        'o'
      TabOrder = 7
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 443
        Top = 5
        Width = 193
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object edt_dtsistema_aum: TDCDateEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    CRM'
      TabOrder = 5
      object edt_nomeMedico_aum: TDCEdit
        Tag = -1
        Left = 222
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clWhite
        MaxLength = 80
        ReadOnly = True
        TabOrder = 1
      end
      object edt_cod_crm: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_crmExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_crmButtonClick
      end
    end
    object pnl_historico: TPanel
      Tag = -1
      Left = 1
      Top = 258
      Width = 798
      Height = 306
      Alignment = taLeftJustify
      TabOrder = 8
      object pnl_alerta: TPanel
        Left = 19
        Top = 229
        Width = 749
        Height = 22
        BevelOuter = bvLowered
        Caption = 'BENEFICIÁRIO SUPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object PageControl: TPageControl
        Left = 4
        Top = 4
        Width = 786
        Height = 201
        ActivePage = TabSheet5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object TabSheet5: TTabSheet
          Caption = 'Itens de Serviço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object btn_senha: TPDJButton
            Left = 624
            Top = 101
            Width = 44
            Height = 37
            Hint = 'Limpa o campo plano'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8008888888888888888888888888888808808888888888888888888888800880
              F878088888888888888888888808800708780888888888888888888887788800
              78780888888888888888888887F8787F88780888888888887008888887F87807
              F878088888888887B33088888808780F0878088888888700BB70888880787800
              787808888888733BB70088887F88787F8878088888887BBB7030888887F8787F
              8878088888700BB70308888888087807F87808888733BB703088888880787807
              F87708887BBBB703088888887F88787F88F708887BBB7030888888887F8877F8
              8F887080BBB703088888888887F87F88F000000BBB7030888888888887F7F880
              0777777BB7030888888888887F7F88077BBBBBBB7030888888888887F87F807B
              BBBBBBB8B30888888888887F887F80BBBB8B8B8B83088888888887F88F7F0BBB
              B0B0B8B8B308888888887F88F87F7BBBBB0B0B8B8308888888887F888F877BBB
              BBB0B0B8B308888888887F88F8007BBB770B0B0B8308888888887F88807F7BB0
              F880B0B83088888888887F88F0787BB00F80BBB830888888888887F8807707B0
              07F0BB83088888888888887F88000877000BB3308888888888888887FFF07870
              8888300888888888888888887770777F77770888888888888888888888807FFF
              7088888888888888888888888888000008888888888888888888}
            GlyphHot.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8448888888888888888888888888888848848888888888888888888888844884
              F878488888888888888888888848844748784888888888888888888887788844
              78784888888888888888888887F8787F88784888888888887448888887F87847
              F878488888888887E33488888848784F4878488888888744EE74888884787844
              787848888888733EE74488887F88787F8878488888887EEE74C4888887F8787F
              8878488888744EE74C48888888487847F87848888733EE74C488888884787847
              F87748887EEEE74C488888887F88787F88F748887EEE74C4888888887F8877F8
              8F887484EEE74C488888888887F87F88F444444EEE74C4888888888887F7F884
              4777777EE74C4888888888887F7F88477EEEEEEE74C4888888888887F87F847E
              EEEEEEE8EC4888888888887F887F84EEEE8E8E8E8C488888888887F88F7F4EEE
              E4E4E8E8EC48888888887F88F87F7EEEEE4E4E8E8C48888888887F888F877EEE
              EEE4E4E8EC48888888887F88F8447EEE774E4E4E8C48888888887F88847F7EE4
              F884E4E8C488888888887F88F4787EE44F84EEE8C4888888888887F8847747E4
              47F4EE8C488888888888887F88444877444EECC48888888888888887FFF47874
              8888C44888888888888888887774777F77774888888888888888888888847FFF
              7088888888888888888888888888444448888888888888888888}
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            OnClick = btn_senhaClick
            Visible = False
            TabOrder = 9
          end
          object Panel7: TPanel
            Tag = -1
            Left = 7
            Top = 9
            Width = 751
            Height = 44
            Alignment = taLeftJustify
            Caption = '    Item de Serviço'
            TabOrder = 0
            object Label1: TLabel
              Left = 118
              Top = 4
              Width = 35
              Height = 13
              Caption = 'Apelido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 212
              Top = 4
              Width = 73
              Height = 13
              Caption = 'Cod. Item Serv.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 311
              Top = 4
              Width = 48
              Height = 13
              Caption = 'Descrição'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edt_descricao_itc: TDCEdit
              Left = 304
              Top = 19
              Width = 440
              Height = 21
              Color = clInfoBk
              MaxLength = 80
              ReadOnly = True
              TabOrder = 2
            end
            object edt_cod_itemservico: TDCChoiceEdit
              Left = 209
              Top = 19
              Width = 90
              Height = 21
              Hint = 
                'Digite o código que se deseja alterar ou clique no botão para pe' +
                'squisar'
              MaxLength = 10
              TabOrder = 1
              OnExit = edt_cod_itemservicoExit
              Alignment = taRightJustify
              OnButtonClick = edt_cod_itemservicoButtonClick
            end
            object edt_apelido_its: TDCEdit
              Left = 110
              Top = 19
              Width = 94
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
              OnKeyDown = edt_apelido_itsKeyDown
            end
          end
          object btn_adicionaritem: TPDJButton
            Left = 8
            Top = 148
            Width = 84
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
            OnClick = btn_adicionaritemClick
            TabOrder = 2
          end
          object btn_alteraitem: TPDJButton
            Left = 208
            Top = 148
            Width = 84
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
            OnClick = btn_alteraitemClick
            TabOrder = 3
          end
          object btn_removeritem: TPDJButton
            Left = 479
            Top = 148
            Width = 84
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
            OnClick = btn_removeritemClick
            TabOrder = 4
          end
          object btn_salvaritem: TPDJButton
            Left = 298
            Top = 148
            Width = 84
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
            OnClick = btn_salvaritemClick
            TabOrder = 5
          end
          object btn_cancelaritem: TPDJButton
            Left = 389
            Top = 148
            Width = 84
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
            OnClick = btn_cancelaritemClick
            TabOrder = 6
          end
          object Panel5: TPanel
            Tag = -1
            Left = 7
            Top = 53
            Width = 751
            Height = 30
            Alignment = taLeftJustify
            Caption = 
              '    Observação                                                  ' +
              '                                                                ' +
              '                                                                ' +
              '                   Qtde.'
            TabOrder = 1
            object edt_obs_ita: TDCEdit
              Left = 110
              Top = 5
              Width = 536
              Height = 21
              MaxLength = 250
              TabOrder = 0
            end
            object edt_qtde_ita: TDCEdit
              Left = 703
              Top = 5
              Width = 41
              Height = 21
              MaxLength = 4
              TabOrder = 1
              OnKeyDown = edt_qtde_itaKeyDown
              EditMask = '9999'
            end
          end
          object btn_imprimirAutorizacao: TPDJButton
            Left = 697
            Top = 148
            Width = 76
            Height = 24
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Imprimir'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_imprimirAutorizacaoClick
            TabOrder = 7
          end
          object btn_adicionarItens: TPDJButton
            Left = 101
            Top = 148
            Width = 100
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Adicionar Itens '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_adicionarItensClick
            TabOrder = 8
          end
          object Mem_autorizacao: TMemo
            Left = 624
            Top = 80
            Width = 145
            Height = 41
            TabStop = False
            Lines.Strings = (
              '')
            TabOrder = 10
            Visible = False
          end
          object Panel38: TPanel
            Tag = -1
            Left = 7
            Top = 83
            Width = 751
            Height = 30
            Alignment = taLeftJustify
            Caption = '    Data Atendimento'
            TabOrder = 11
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
          end
          object Panel39: TPanel
            Tag = -1
            Left = 7
            Top = 113
            Width = 751
            Height = 30
            Alignment = taLeftJustify
            Caption = 
              '    Data da Alteração                                           ' +
              '                                    Código do Usuário           ' +
              '                                            '
            TabOrder = 12
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
              Left = 432
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
            Left = 4
            Top = 2
            Width = 770
            Height = 144
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 13
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_itemservico'
                Title.Caption = 'Cód. Item Servico'
                Width = 107
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
                Width = 364
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtsistema_ita'
                Title.Caption = 'Data Sistema'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_usu'
                Title.Caption = 'Usuário'
                Width = 84
                Visible = True
              end>
          end
          object btn_pdf: TPDJButton
            Left = 627
            Top = 148
            Width = 62
            Height = 24
            Hint = 'Exclui Registro Corrente'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              5A010000424D5A01000000000000760000002800000012000000130000000100
              040000000000E400000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888888000000888888888888888888000000800000000000000888000000800B
              FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
              00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
              BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
              B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
              000088880EEE08778888880000008880EEE0888788888800000088880E088888
              888888000000888880888888888888000000888888888888888888000000}
            GlyphHot.Data = {
              5A010000424D5A01000000000000760000002800000012000000130000000100
              040000000000E400000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888888000000888888888888888888000000844444444444444888000000844E
              FEFEFEFEFE48880000008474EFEFEFEFEFE48800000084E4FEFEFEFEFEF48800
              00008474EFEFEFEFEFE48800000084E77EFEFEFEFEFE78000000847E7FEFEFEF
              EFEF7800000084E777777777777778000000847E7E7CCCC77E78880000008444
              E7E4CCC77778880000008888444CCCC7888888000000888884CCC4C788888800
              000088884CCC48778888880000008884CCC4888788888800000088884C488888
              888888000000888884888888888888000000888888888888888888000000}
            Caption = 'PDF'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = s
            TabOrder = 14
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Histórico de Autorizações Médicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object dbg_histautorizacao: TDBGrid
            Left = 5
            Top = 2
            Width = 767
            Height = 169
            DataSource = DataSource1
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
            OnDblClick = dbg_histautorizacaoDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_autorizacaoMedica'
                Title.Caption = 'Nº Autor.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtatendimento_aum'
                Title.Caption = 'Dt. Atendim.'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_itemservico'
                Title.Caption = 'Item Serv.'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_its'
                Title.Caption = 'Nome'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs_ita'
                Title.Caption = 'Observação'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nomeMedico_aum'
                Title.Caption = 'Nome do Médico'
                Width = 241
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_crm'
                Title.Caption = 'CRM'
                Visible = True
              end>
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Carências'
          ImageIndex = 2
          object ScrollBox1: TScrollBox
            Left = 8
            Top = 8
            Width = 761
            Height = 160
            TabOrder = 0
            object LsB_Carencia: TListBox
              Left = -3
              Top = -2
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
        end
        object TTabSheet
          ImageIndex = 3
          TabVisible = False
          object dbg_listaItem: TDBGrid
            Left = 2
            Top = 3
            Width = 695
            Height = 166
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
                FieldName = 'cod_itemservico'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_padrao'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_its'
                Width = 477
                Visible = True
              end>
          end
          object PDJButton2: TPDJButton
            Left = 705
            Top = 76
            Width = 70
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Cancelar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton2Click
            TabOrder = 1
          end
          object PDJButton3: TPDJButton
            Left = 705
            Top = 38
            Width = 70
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&OK'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton3Click
            TabOrder = 2
          end
        end
      end
      object pnl_carencia: TPanel
        Left = 19
        Top = 207
        Width = 749
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
        TabOrder = 2
        Visible = False
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Conveniado'
      TabOrder = 2
      object edt_nome_con: TDCEdit
        Tag = -10
        Left = 370
        Top = 5
        Width = 418
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 80
        TabOrder = 2
      end
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -1
        Left = 269
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
      end
      object edt_nomereduzido_con: TDCEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 143
        Height = 21
        Hint = 'Pesquisar por Apelido'
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 80
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyDown = edt_nomereduzido_conKeyDown
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Endereço do Conv.                                           ' +
        '                                                 '
      TabOrder = 3
      object cbx_conveniadoendereco: TBComboBox
        Tag = -5
        Left = 120
        Top = 5
        Width = 668
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Atendimento                                             ' +
        '                                               '
      TabOrder = 4
      object edt_dtatendimento_aum: TDCDateEdit
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
      object btn_beneficiario: TPDJButton
        Left = 663
        Top = 5
        Width = 114
        Height = 23
        Hint = 'CONSULTA O CADASTRO DE BENEFICIÁRIOS'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888880808080888888888888888008888888888888800088888888888880B7
          08888000000080B80888880FF008880B7088880FFFF0880B8088800FFF008880
          B708000FFFF08880B00800FFF0FF08880110000FF07088880008000FFF088888
          888800000000888888888000000888888888}
        GlyphHot.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888884848484888888888888888448888888888888844488888888888884B7
          48888444444484B84888884EE448884B7488884EEEE4884B8488844EEE448884
          B748444EEEE48884B44844EEE4EE48884114444EE47488884448444EEE488888
          888844444444888888888444444888888888}
        Caption = 'Beneficiários'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_beneficiarioClick
        ShowHint = True
        TabOrder = 1
      end
      object ckb_isentoCopart_aum: TCheckBox
        Tag = -1
        Left = 417
        Top = 8
        Width = 136
        Height = 17
        Caption = 'Isento Coparticipação'
        TabOrder = 2
      end
    end
  end
  inherited Tmr_Close: TTimer
    Left = 16
    Top = 505
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_autorizacaomedica
    Left = 668
    Top = 423
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_itemautorizacao
    Left = 572
    Top = 418
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_med_conveniadoItens02
    Left = 621
    Top = 418
  end
end
