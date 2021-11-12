inherited Frm_Mov_2064: TFrm_Mov_2064
  Caption = 'Frm_Mov_2064'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_imprimir: TPDJButton
      Left = 432
      Top = 4
      Width = 172
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Histórico de Campanhas'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Inscrição   '
      TabOrder = 1
      object edt_cod_beneficiario: TDCChoiceEdit
        Left = 94
        Top = 4
        Width = 84
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Left = 90
        Top = 4
        Width = 91
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
        TabOrder = 1
        OnChange = edt_inscricao_benChange
        OnEnter = edt_inscricao_benEnter
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_placonsulta: TDCEdit
        Left = 620
        Top = 5
        Width = 54
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object btn_cartao: TPDJButton
        Left = 189
        Top = 4
        Width = 35
        Height = 25
        Hint = 'Habilitar Leitura de Cartão'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000000000000000000000000000008000000000000
          0000000000000000000800000000000000000000000000000008077777777777
          777777777777777777080F8888888888888888888888888887080F8888888888
          888888888888888887080F8888888888888888888888888887080F8888888888
          888888888888888887080F8888888888888888888888888887080F8888888888
          888888888888888887080F8888888888888888888888888887080F8888888888
          888888888888888887080F88888888888888888888888888870B0F8888888888
          8888888888888888870B0F88888888888888888888888888870B0FFFFFFFFFFF
          FFFFFFFFFFFFFFFFF70B0000000000000000000000000000000B088888AAAA89
          9998888888888888880B0000778888888888888888888770000B000000000000
          0000000000077777777B800077888888888888888887BBBBBBBB880888888888
          888888888887B000B00B888000000000000000000007BBBBBBBB888888888888
          888888888887B0B0B0B0888888888888888888888887B0B000B0888888888888
          888888888887B0B0B0B0888888888888888888888887BBBBBBBB888888888888
          8888888888888888888888888888888888888888888888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        GlyphHot.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888888888888888888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCC8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8C77777777777
          777777777777777777C8CF8888888888888888888888888887C8CF8888888888
          888888888888888887C8CF8888888888888888888888888887C8CF8888888888
          888888888888888887C8CF8888888888888888888888888887C8CF8888888888
          888888888888888887C8CF8888888888888888888888888887C8CF8888888888
          888888888888888887C8CF8888888888888888888888888887CBCF8888888888
          888888888888888887CBCF8888888888888888888888888887CBCFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF7CBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBC88888AAAA89
          999888888888888888CBCCCC77AAAA88888888888888877CCCCBCCCCCCCCCCCC
          CCCC77777777777777BB8CCC7788888888887BBBBBBBBBBBBBBB88C888888888
          88887BCCCBCCBCCCCBBB888CCCCCCCCCCCCC7BBBBBBBBBBBBBBB888888888888
          88887BCBCBCBCBCBBCBC88888888888888887BCBCCCBCBCBCBBC888888888888
          88887BCBCBCBCCCBCCBC88888888888888887BBBBBBBBBBBBBBB888888888888
          8888877777777777777788888888888888888888888888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        OnClick = btn_cartaoClick
        ShowHint = True
        TabOrder = 3
      end
      object ckb_inscricao: TRadioButton
        Left = 253
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Inscrição'
        Checked = True
        TabOrder = 4
        TabStop = True
        OnClick = ckb_inscricaoClick
      end
      object ckb_funcioanrio: TRadioButton
        Left = 360
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Funcionário'
        TabOrder = 5
        OnClick = ckb_funcioanrioClick
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Plano                                                       ' +
        '                                                                ' +
        '                                                          Idade ' +
        '                                    '
      TabOrder = 3
      object btn_limparcampos: TPDJButton
        Left = 348
        Top = 8
        Width = 26
        Height = 19
        Hint = 'Limpar os Campos'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'X'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnClick = btn_limparcamposClick
        TabOrder = 1
      end
      object edt_idade: TDCEdit
        Left = 615
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edt_plano1: TDCEdit
        Tag = 5
        Left = 90
        Top = 6
        Width = 220
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Visible = False
      end
      object edt_plano: TDCEdit
        Left = 90
        Top = 6
        Width = 247
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edt_situacao: TDCEdit
        Tag = -1
        Left = 387
        Top = 7
        Width = 29
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Visible = False
      end
      object pnl_alerta2: TPanel
        Left = 385
        Top = 5
        Width = 174
        Height = 22
        BevelOuter = bvLowered
        Caption = 'PLANO DIVERGENTE'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Visible = False
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Campanha                                                    ' +
        '                                                                ' +
        '                                    Protocolo'
      TabOrder = 0
      object cbx_cod_campanha: TDCComboBox
        Tag = -1
        Left = 90
        Top = 6
        Width = 370
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = cbx_cod_campanhaChange
        OnEnter = cbx_cod_campanhaEnter
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_ultimoprocotolo_cph: TDCEdit
        Tag = -1
        Left = 615
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 129
      Width = 798
      Height = 61
      TabOrder = 4
      object Label3: TLabel
        Left = 274
        Top = 12
        Width = 59
        Height = 13
        Caption = 'Atendimento'
      end
      object Label1: TLabel
        Left = 121
        Top = 13
        Width = 38
        Height = 13
        Caption = 'Isenção'
      end
      object lbl_obs: TLabel
        Left = 455
        Top = 10
        Width = 22
        Height = 13
        Caption = 'Obs.'
        Visible = False
      end
      object lbl_cartao: TLabel
        Left = 28
        Top = 36
        Width = 232
        Height = 16
        Caption = '*** Leitor de Cartão Habilitado ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object edt_cartao: TDCEdit
        Left = 365
        Top = 7
        Width = 65
        Height = 21
        TabOrder = 5
        OnEnter = edt_cartaoEnter
        OnExit = edt_cartaoExit
        OnKeyDown = edt_cartaoKeyDown
      end
      object pnl_alerta: TPanel
        Left = 307
        Top = 34
        Width = 481
        Height = 22
        BevelOuter = bvLowered
        Caption = 'BENEFICIÁRIO SUSPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object cbx_tipoatend_hph: TDCComboBox
        Tag = -1
        Left = 341
        Top = 6
        Width = 104
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyDown = cbx_tipoatend_hphKeyDown
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_isencao: TDCComboBox
        Tag = -1
        Left = 171
        Top = 6
        Width = 96
        Height = 21
        TabStop = False
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object btn_alterar: TPDJButton
        Left = 80
        Top = 4
        Width = 35
        Height = 24
        Hint = 'Adicionar Isenção'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555500005577777777777777777500005000000000000000007500005088
          80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
          0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
          0F44F0750000508880FF0078088880750000508180F400007844807500005088
          80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
          0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
          00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
          55555555550BFFBB0000}
        GlyphHot.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555500005577777777777777777500005444444444444444447500005488
          84FFFFFF4FFFF4750000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF475
          0000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF4750000548184FCCCCF
          4FCCF4750000548884FF0078488884750000548184FC000078CC847500005488
          84FF7008007884750000548184FCC08FF84484750000548884FFF74FFF844475
          0000544444444448FF843447000054CCCCCCCC74880E43440000544444444444
          44FEE43400005555555555554EFFEE43000055555555555550EFFEE400005555
          55555555550EFFEE0000}
        OnClick = btn_alterarClick
        ShowHint = True
        TabOrder = 0
      end
      object cbx_obs_hph: TComboBox
        Left = 483
        Top = 6
        Width = 306
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnKeyDown = cbx_obs_hphKeyDown
        Items.Strings = (
          'Gestante'
          'Mulheres até 45 dias pós parto '
          'Pacientes imunodeprimidos e com doenças crônicas'
          'Crianças a partir de 9 anos com doença crônica'
          'Trabalhador da área de saúde'
          'Funcionário IMASF')
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 191
      Width = 798
      Height = 293
      ActivePage = TabSheet1
      TabOrder = 5
      object TabSheet1: TTabSheet
        Caption = 'Geral'
        OnShow = TabSheet1Show
        object Label20: TLabel
          Left = 626
          Top = 69
          Width = 55
          Height = 13
          Caption = 'Protocolo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object btn_confirma: TPDJButton
          Left = 13
          Top = 13
          Width = 250
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Confirmar Aplicação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_confirmaClick
          TabStop = True
          TabOrder = 0
        end
        object btn_cancela: TPDJButton
          Left = 13
          Top = 62
          Width = 250
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'C&ancelar Aplicação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cancelaClick
          TabStop = True
          TabOrder = 1
        end
        object btn_cria: TPDJButton
          Left = 293
          Top = 13
          Width = 250
          Height = 25
          Hint = 'Alterar Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'C&riar Campanha'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_criaClick
          TabStop = True
          TabOrder = 2
        end
        object btn_encerra: TPDJButton
          Left = 293
          Top = 62
          Width = 250
          Height = 25
          Hint = 'Alterar Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Encerrar Campanha'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_encerraClick
          TabStop = True
          TabOrder = 3
        end
        object Mem_autorizacao: TMemo
          Left = 152
          Top = 152
          Width = 393
          Height = 49
          TabStop = False
          Lines.Strings = (
            '')
          TabOrder = 4
          Visible = False
        end
        object edt_protocolocancela: TDCEdit
          Left = 626
          Top = 85
          Width = 153
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 5
          Visible = False
          EditMask = '000000000000000000'
        end
        object btn_confirmacancelamento: TPDJButton
          Left = 649
          Top = 112
          Width = 109
          Height = 25
          Hint = 'Confirmar Cancelamento da Aplicação'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Confirma'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_confirmacancelamentoClick
          ShowHint = True
          Visible = False
          TabOrder = 6
        end
        object btn_sair: TPDJButton
          Left = 649
          Top = 139
          Width = 109
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Sair'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_sairClick
          Visible = False
          TabOrder = 7
        end
        object btn_reimpressao: TPDJButton
          Left = 13
          Top = 111
          Width = 250
          Height = 25
          Hint = 'Alterar Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Reimpressão de Protocolo'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_reimpressaoClick
          TabStop = True
          TabOrder = 8
        end
        object btn_gerardebitos: TPDJButton
          Left = 293
          Top = 111
          Width = 250
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Gerar Cobranças'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_gerardebitosClick
          Visible = False
          TabStop = True
          TabOrder = 9
        end
        object pgb_cobranca: TProgressBar
          Left = 13
          Top = 240
          Width = 768
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 10
        end
        object pnl_alerta3: TPanel
          Left = 40
          Top = 212
          Width = 713
          Height = 22
          BevelOuter = bvLowered
          Caption = 'BENEFICIÁRIO NÃO AUTORIZADO PARA VACINAÇÃO IMASF'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Campanhas'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object btn_novocin: TPDJButton
          Left = 0
          Top = 240
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
          TabOrder = 0
        end
        object btn_cancelar_cin: TPDJButton
          Left = 509
          Top = 240
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
          TabOrder = 1
        end
        object btn_Salvarcin: TPDJButton
          Left = 340
          Top = 240
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
          TabOrder = 2
        end
        object btn_alterarcin: TPDJButton
          Left = 170
          Top = 240
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
          TabOrder = 3
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 791
          Height = 233
          TabOrder = 4
          object Panel9: TPanel
            Tag = -1
            Left = 7
            Top = 39
            Width = 770
            Height = 64
            Alignment = taLeftJustify
            Caption = '    Planos participantes'
            TabOrder = 0
            object rdb_todos: TRadioButton
              Left = 123
              Top = 11
              Width = 60
              Height = 17
              Caption = 'Todos'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = rdb_maiorClick
            end
            object rdb_individual: TRadioButton
              Left = 194
              Top = 11
              Width = 77
              Height = 17
              Caption = 'Individual'
              TabOrder = 1
              OnClick = rdb_individualClick
            end
            object LsB_Plano: TListBox
              Left = 425
              Top = 5
              Width = 323
              Height = 51
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 3
              OnClick = LsB_PlanoClick
            end
            object cbx_cod_plano: TDCComboBox
              Left = 123
              Top = 36
              Width = 177
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
            object btn_adicionarPlano: TPDJButton
              Left = 336
              Top = 8
              Width = 81
              Height = 23
              Hint = 'Adicionar Plano'
              RepeatInterval = 50
              RepeatStartInterval = 50
              HotTrackColor = clBlack
              Caption = '&Adicionar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_adicionarPlanoClick
              TabOrder = 4
            end
            object btn_removerplano: TPDJButton
              Left = 336
              Top = 34
              Width = 81
              Height = 23
              Hint = 'Remover Plano'
              RepeatInterval = 50
              RepeatStartInterval = 50
              HotTrackColor = clBlack
              Enabled = False
              Caption = '&Remover'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_removerplanoClick
              TabOrder = 5
            end
          end
          object Panel7: TPanel
            Tag = -1
            Left = 7
            Top = 103
            Width = 770
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Valor                                                       ' +
              '                                         Idade Isenção  menor a ' +
              '                           e maior igual a '
            TabOrder = 1
            object edt_valor_cph: TDCEdit
              Left = 123
              Top = 5
              Width = 96
              Height = 21
              MaxLength = 250
              TabOrder = 0
              OnExit = edt_valor_cphExit
            end
            object edt_idademenor_cph: TDCEdit
              Left = 449
              Top = 5
              Width = 59
              Height = 21
              MaxLength = 250
              TabOrder = 1
            end
            object edt_idademaior_cph: TDCEdit
              Left = 611
              Top = 5
              Width = 59
              Height = 21
              MaxLength = 250
              TabOrder = 2
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 7
            Top = 135
            Width = 770
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Observação'
            TabOrder = 2
            object edt_obs_cph: TDCEdit
              Left = 123
              Top = 5
              Width = 628
              Height = 21
              MaxLength = 120
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Tag = -1
            Left = 7
            Top = 167
            Width = 770
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Data da Criação                                             ' +
              '                             Código do Usuário                  ' +
              '                                     '
            TabOrder = 3
            object cbx_cod_usuario: TDCComboBox
              Left = 408
              Top = 5
              Width = 313
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
            object edt_dtinicio_cph: TDCDateEdit
              Left = 123
              Top = 5
              Width = 174
              Height = 21
              Hint = 'DATA ENCERRAMENTO DA CAMPANHA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel10: TPanel
            Tag = -1
            Left = 7
            Top = 199
            Width = 770
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Data da Encerramento                                        ' +
              '                        Código do Usuário                       ' +
              '                                '
            TabOrder = 4
            object cb2_cod_usuario: TDCComboBox
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
            object edt_dtfinal_cph: TDCDateEdit
              Left = 123
              Top = 5
              Width = 174
              Height = 21
              Hint = 'DATA ENCERRAMENTO DA CAMPANHA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel34: TPanel
            Tag = -1
            Left = 7
            Top = 7
            Width = 770
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Descrição'
            TabOrder = 5
            object edt_descricao_cph: TDCEdit
              Left = 123
              Top = 5
              Width = 370
              Height = 21
              MaxLength = 40
              TabOrder = 0
            end
          end
          object dbg_campanha: TDBGrid
            Left = 4
            Top = 5
            Width = 781
            Height = 227
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_campanha'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao_sta'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao_cph'
                Width = 215
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor_cph'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'planos_cph'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ultimoprocotolo_cph'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idademenor_cph'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idademaior_cph'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtinicio_cph'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtfinal_cph'
                Width = 85
                Visible = True
              end>
          end
        end
      end
    end
    object pnl_cartao: TPanel
      Tag = -1
      Left = 2
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Cartão                                                      ' +
        '     Nome'
      TabOrder = 2
      object edt_dtnascimento: TDCDateEdit
        Left = 90
        Top = 5
        Width = 122
        Height = 21
        Hint = 'DATA ENCERRAMENTO DA CAMPANHA'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        OnExit = edt_dtnascimentoExit
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_carteirinha: TDCEdit
        Left = 89
        Top = 5
        Width = 116
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 60
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edt_nome_ben: TDCEdit
        Left = 263
        Top = 5
        Width = 444
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Panels = <
      item
        Text = 'mensagens'
        Width = 550
      end
      item
        Alignment = taCenter
        Text = 'Data'
        Width = 125
      end
      item
        Text = 'Cod Tela'
        Width = 50
      end>
  end
  inherited Tmr_Close: TTimer
    Top = 185
  end
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = fdt_principal6.spc_adm_campanhas
    Left = 39
    Top = 189
  end
end
