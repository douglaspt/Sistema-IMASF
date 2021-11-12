inherited Frm_Rel_3070: TFrm_Rel_3070
  Caption = 'Frm_Rel_3070'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel [0]
    Height = 496
    Align = alNone
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Referência Inicial                                      ' +
        '                              '
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 175
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object edt_ano: TDCEdit
        Tag = -1
        Left = 317
        Top = 5
        Width = 59
        Height = 21
        MaxLength = 30
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Local de Desconto'
      TabOrder = 2
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 175
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 2
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Valor do Salário        de                                  ' +
        '       até'
      TabOrder = 3
      object edt_vlsalarioIni: TDCEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object edt_vlsalarioFin: TDCEdit
        Tag = -1
        Left = 294
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 2
      Top = 161
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Nome'
      TabOrder = 5
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 363
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Tag = -2
      Left = 2
      Top = 257
      Width = 798
      Height = 260
      Alignment = taLeftJustify
      TabOrder = 7
      object btn_localizar: TSpeedButton
        Left = 35
        Top = 29
        Width = 254
        Height = 24
        Hint = 'Localizar conforme o texto digitado'
        BiDiMode = bdLeftToRight
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentBiDiMode = False
        OnClick = btn_localizarClick
      end
    end
    object Panel8: TPanel
      Tag = -2
      Left = 2
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '         Matrícula'
      TabOrder = 4
      object edt_matriculaDebito_seg: TDCEdit
        Tag = -1
        Left = 294
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 2
      end
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
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
    end
    object Panel9: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Referência Final                                        ' +
        '                            '
      TabOrder = 1
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 175
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object ed2_ano: TDCEdit
        Tag = -1
        Left = 317
        Top = 5
        Width = 59
        Height = 21
        MaxLength = 30
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object Panel10: TPanel
      Tag = -2
      Left = 2
      Top = 225
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Ordem de Impressão'
      TabOrder = 6
      object rdb_localdesconto: TRadioButton
        Left = 155
        Top = 10
        Width = 119
        Height = 17
        Caption = 'Local de Desconto'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_matricula: TRadioButton
        Left = 305
        Top = 10
        Width = 88
        Height = 17
        Caption = 'Matrícula'
        TabOrder = 1
      end
      object rdb_nome: TRadioButton
        Left = 413
        Top = 10
        Width = 76
        Height = 17
        Caption = 'Nome'
        TabOrder = 2
      end
      object rdb_dtreferencia: TRadioButton
        Left = 509
        Top = 10
        Width = 140
        Height = 17
        Caption = 'Data de Referência'
        TabOrder = 3
      end
    end
    object Panel11: TPanel
      Tag = -2
      Left = 2
      Top = 193
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Classificação do Plano'
      TabOrder = 8
      object cbx_cod_classificacaoPlano: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 363
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
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
  end
  inherited Panel2: TPanel
    inherited Btn_Fechar: TPDJButton
      Left = 664
      Width = 129
    end
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
  inherited Pnl_Titulo2: TPanel [2]
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
    Left = 32
    Top = 409
  end
end
