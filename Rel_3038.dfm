inherited Frm_Rel_3038: TFrm_Rel_3038
  Caption = 'Frm_Rel_3038'
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
    object PDJButton4: TPDJButton
      Left = 216
      Top = 188
      Width = 113
      Height = 25
      Hint = 'Imprime Ficha Cadastral do Segurado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 0
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscri��o'
      TabOrder = 1
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
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
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Benefici�rio'
      TabOrder = 2
      object edt_nome: TDCEdit
        Tag = -10
        Left = 324
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '   Cod.Usu�rio                                              '
      TabOrder = 3
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object RdG_OrdemImpressao: TRadioGroup
      Left = 592
      Top = 300
      Width = 185
      Height = 145
      Caption = 'Ordem de Impress�o '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Inscri��o, Titularidade'
        'Nome do Benefici�rio'
        'Data da Altera��o'
        'Nome do Usu�rio')
      ParentFont = False
      TabOrder = 4
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
