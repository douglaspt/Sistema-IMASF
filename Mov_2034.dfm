inherited Frm_Mov_2034: TFrm_Mov_2034
  Caption = 'Frm_Mov_2034'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Label1: TLabel [1]
      Left = 272
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Label1'
    end
    object btn_excluir: TPDJButton
      Left = 235
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Exclui Registro Corrente'
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
      Caption = '&Excluir'
      OnClick = btn_excluirClick
      TabOrder = 1
    end
    object Btn_LimpaCampos: TPDJButton
      Left = 8
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
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    object SpeedButton6: TSpeedButton
      Left = 152
      Top = 142
      Width = 109
      Height = 25
      Hint = 'Localizar conforme o texto digitado'
      Caption = '&Verificar'
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
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Cod. Conveniado     '
      TabOrder = 0
      object edt_cod_conveniado: TDCEdit
        Left = 150
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 12
        TabOrder = 0
        EditMask = '999999999999'
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 0
      Top = 65
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Sequencia da Conta'
      TabOrder = 2
      object edt_sequenciaconta_ctm: TDCEdit
        Tag = 3
        Left = 150
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 12
        TabOrder = 0
        EditMask = '9999999999'
      end
      object edt_nome_ben: TDCEdit
        Tag = 1
        Left = 250
        Top = 5
        Width = 400
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 150
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 0
      Top = 97
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Sequencia do Item'
      TabOrder = 3
      object edt_sequenciaitem_itc: TDCEdit
        Tag = 1
        Left = 150
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 12
        TabOrder = 0
        EditMask = '9999999999'
      end
      object edt_itemservico: TDCEdit
        Tag = 1
        Left = 250
        Top = 5
        Width = 400
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 150
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 0
      Top = 33
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Mes / Ano de Referência                                     ' +
        '                                                             Seq' +
        'uencia'
      TabOrder = 1
      object edt_ano: TDCEdit
        Left = 319
        Top = 5
        Width = 56
        Height = 21
        MaxLength = 12
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequencia_cta: TDCEdit
        Left = 498
        Top = 5
        Width = 49
        Height = 21
        MaxLength = 12
        TabOrder = 2
        EditMask = '9999'
      end
      object cbx_cod_mes: TDCComboBox
        Left = 150
        Top = 5
        Width = 165
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
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
    Left = 16
    Top = 473
  end
end
