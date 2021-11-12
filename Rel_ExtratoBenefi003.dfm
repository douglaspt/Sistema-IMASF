inherited Frm_Rel_ExtratoBenefi003: TFrm_Rel_ExtratoBenefi003
  Caption = 'Frm_Rel_ExtratoBenefi003'
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
      Left = 12
      Top = 232
      Width = 533
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Detalhado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 5
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data de Atendimento de                                      ' +
        '                   até'
      TabOrder = 4
      object edt_dtinicial: TDCDateEdit
        Tag = -5
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtfinal: TDCDateEdit
        Tag = -5
        Left = 324
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Empresa de Origem'
      TabOrder = 0
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Plano de Benefícios'
      TabOrder = 1
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
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
        '    Idade                                                      a' +
        'té'
      TabOrder = 2
      object edt_idade_ini: TDCEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 53
        Height = 21
        MaxLength = 3
        TabOrder = 0
        EditMask = '999'
      end
      object edt_idade_fin: TDCEdit
        Tag = -1
        Left = 236
        Top = 5
        Width = 53
        Height = 21
        MaxLength = 3
        TabOrder = 1
        EditMask = '999'
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Sub Total                                                   ' +
        '                             até'
      TabOrder = 3
      object edt_valor_ini: TDCEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        MaxLength = 14
        TabOrder = 0
      end
      object edt_valor_fin: TDCEdit
        Tag = -1
        Left = 324
        Top = 5
        Width = 151
        Height = 21
        MaxLength = 14
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 12
      Top = 268
      Width = 533
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Simplificado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 6
    end
    object PDJButton2: TPDJButton
      Left = 12
      Top = 306
      Width = 533
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir Totais de Atendimentos Realizados pelo Beneficiário'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 7
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
