inherited Frm_Rel_EtiquetaBenefi001: TFrm_Rel_EtiquetaBenefi001
  Caption = 'Frm_Rel_EtiquetaBenefi001'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Limpar todos os campos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = Btn_LimpaCamposClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object Label1: TLabel
      Left = 44
      Top = 321
      Width = 684
      Height = 13
      Caption = 
        '*** - ATENÇÃO - Alterar as configurações de Impressora antes de ' +
        'Imprimir - Tamanho e Tipo (Etiqueta ou Envelope) - ***'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_copia: TEdit
      Left = 703
      Top = 363
      Width = 49
      Height = 21
      TabOrder = 9
      Text = '1'
    end
    object PDJButton4: TPDJButton
      Left = 352
      Top = 391
      Width = 209
      Height = 25
      Hint = 'Imprimir'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Etiquetas OLD'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      Visible = False
      TabOrder = 8
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição de                                                ' +
        '           Até'
      TabOrder = 0
      object edt_inscricaoInicial: TDCEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 75
        Height = 21
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '99999'
      end
      object edt_inscricaoFinal: TDCEdit
        Tag = -1
        Left = 300
        Top = 5
        Width = 75
        Height = 21
        TabOrder = 1
        Alignment = taRightJustify
        EditMask = '99999'
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 1
      Top = 97
      Width = 798
      Height = 86
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Tipo de Beneficiarios'
      TabOrder = 3
      object rdb_titulares: TRadioButton
        Left = 140
        Top = 8
        Width = 124
        Height = 17
        Caption = 'Somente Segurados'
        TabOrder = 0
      end
      object rdb_todos: TRadioButton
        Left = 470
        Top = 35
        Width = 116
        Height = 17
        Caption = 'Todos Beneficiários'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rdb_normais: TRadioButton
        Left = 303
        Top = 8
        Width = 136
        Height = 17
        Caption = 'Somente Dependentes'
        TabOrder = 2
      end
      object rdb_assitidos: TRadioButton
        Left = 470
        Top = 8
        Width = 122
        Height = 17
        Caption = 'Somente Assistidos'
        TabOrder = 3
      end
      object rdb_assistidoend: TRadioButton
        Left = 140
        Top = 35
        Width = 297
        Height = 17
        Caption = 'Somente Assistidos com Endereço diferente do Segurado'
        TabOrder = 4
      end
      object rdb_segsemass: TRadioButton
        Left = 470
        Top = 62
        Width = 263
        Height = 17
        Caption = 'Somente Segurados que não possuem Assistidos'
        TabOrder = 5
      end
      object rdb_segcomass: TRadioButton
        Left = 140
        Top = 62
        Width = 297
        Height = 17
        Caption = 'Somente Segurados que possuem Assistidos'
        TabOrder = 6
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 215
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrições'
      TabOrder = 5
      object edt_inscricao: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 657
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 500
        TabOrder = 0
      end
    end
    object rdG_Etiqueta: TRadioGroup
      Left = 627
      Top = 344
      Width = 167
      Height = 135
      Caption = 'Formato da Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Etiqueta A - A4'
        'Etiqueta B - Carta'
        'Envelope'
        'Remetente')
      ParentFont = False
      TabOrder = 6
    end
    object RdG_Impressora: TRadioGroup
      Left = 23
      Top = 344
      Width = 190
      Height = 97
      Caption = 'Impressora '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'HP'
        'Epson " Folha Vertical"'
        'Epson "Folha Horizontal"'
        'HP Laser Jet')
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Local de Desconto                                           ' +
        '                                                 Empresa'
      TabOrder = 1
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 180
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 443
        Top = 5
        Width = 180
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Plano                                                       ' +
        '                                                           Idade' +
        '  de                                Até '
      TabOrder = 2
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 180
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_idadeIni: TDCEdit
        Tag = -1
        Left = 445
        Top = 5
        Width = 52
        Height = 21
        TabOrder = 1
        Alignment = taRightJustify
        EditMask = '999999'
      end
      object edt_idadeFin: TDCEdit
        Tag = -1
        Left = 572
        Top = 5
        Width = 50
        Height = 21
        TabOrder = 2
        Alignment = taRightJustify
        EditMask = '999999'
      end
    end
    object Panel8: TPanel
      Tag = -2
      Left = 1
      Top = 183
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Situação'
      TabOrder = 4
      object ckb_normal: TCheckBox
        Left = 140
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Normal'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object ckb_suspenso: TCheckBox
        Left = 279
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Suspenso'
        TabOrder = 1
      end
      object ckb_cancelado: TCheckBox
        Left = 399
        Top = 9
        Width = 97
        Height = 17
        Caption = 'Cancelado'
        TabOrder = 2
      end
    end
    object Panel9: TPanel
      Tag = -2
      Left = 1
      Top = 247
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Tipo Impressão'
      TabOrder = 10
      object rdb_inscricao: TRadioButton
        Left = 159
        Top = 8
        Width = 124
        Height = 17
        Caption = 'Inscrição'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_sequencia: TRadioButton
        Left = 314
        Top = 8
        Width = 136
        Height = 17
        Caption = 'Sequencia'
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 34
      Top = 446
      Width = 519
      Height = 25
      Hint = 'Imprime Ficha Cadastral do Segurado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Etiquetas'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 11
    end
    object Panel10: TPanel
      Tag = -2
      Left = 1
      Top = 279
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 12
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_nome: TDCEdit
        Tag = -10
        Left = 236
        Top = 5
        Width = 477
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
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
end
