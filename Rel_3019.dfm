inherited Frm_Rel_3019: TFrm_Rel_3019
  Caption = 'Frm_Rel_3019'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    TabOrder = 7
  end
  inherited Panel2: TPanel
    Top = 528
    TabOrder = 5
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
    Top = 201
    Height = 327
    TabOrder = 4
    object PDJButton3: TPDJButton
      Left = 144
      Top = 97
      Width = 194
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 0
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 561
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
  object Panel5: TPanel [4]
    Tag = -1
    Left = 0
    Top = 41
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Data de Referência'
    TabOrder = 0
    object cbx_cod_mes: TDCComboBox
      Tag = -1
      Left = 136
      Top = 5
      Width = 175
      Height = 21
      TabOrder = 0
      Items.Strings = (
        '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
        '1 - Conta não recebida por meio Magnético e deverá ser digitada')
      ValueItem = ''
      ItemHeight = 0
      Style = csDropDownList
      ShowCheckBox = True
    end
    object edt_ano: TDCEdit
      Tag = -1
      Left = 320
      Top = 5
      Width = 58
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      EditMask = '9999'
    end
  end
  object Panel1: TPanel [5]
    Tag = -1
    Left = 0
    Top = 137
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Inscrição'
    TabOrder = 3
    object edt_inscricao_ben: TDCEdit
      Tag = -1
      Left = 136
      Top = 5
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      EditMask = '999999'
    end
  end
  object Panel4: TPanel [6]
    Tag = -1
    Left = 0
    Top = 105
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = 
      '    Matrícula                                                   ' +
      '                       Digito'
    TabOrder = 2
    object edt_matriculaDebito_seg: TDCEdit
      Tag = -1
      Left = 136
      Top = 5
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      EditMask = '999999'
    end
    object edt_digitoMatDeb_seg: TDCEdit
      Tag = -1
      Left = 333
      Top = 5
      Width = 46
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      EditMask = '99'
    end
  end
  object Panel6: TPanel [7]
    Tag = -1
    Left = 0
    Top = 73
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Cod. Tarifa'
    TabOrder = 1
    object cbx_cod_tarifa: TDCComboBox
      Tag = -1
      Left = 136
      Top = 5
      Width = 244
      Height = 21
      TabOrder = 0
      Items.Strings = (
        '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
        '1 - Conta não recebida por meio Magnético e deverá ser digitada')
      ValueItem = ''
      ItemHeight = 0
      Style = csDropDownList
      ShowCheckBox = True
    end
  end
  object Panel7: TPanel [8]
    Tag = -1
    Left = 0
    Top = 169
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Indice de Pesquisa'
    TabOrder = 8
    object rdb_matricula: TRadioButton
      Left = 151
      Top = 9
      Width = 77
      Height = 17
      Caption = '  Matrícula'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rdb_inscricao: TRadioButton
      Left = 290
      Top = 9
      Width = 77
      Height = 17
      Caption = '  Inscrição'
      TabOrder = 1
    end
  end
end
