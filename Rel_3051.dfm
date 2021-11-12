inherited Frm_Rel_3051: TFrm_Rel_3051
  Caption = 'Frm_Rel_3051'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Limpar todos os campos'
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
    Height = 487
    object PDJButton3: TPDJButton
      Left = 208
      Top = 292
      Width = 129
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
      TabOrder = 8
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Setor do IMASF'
      TabOrder = 0
      object cbx_cod_setorDestino: TDCComboBox
        Tag = -1
        Left = 129
        Top = 5
        Width = 316
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
      Top = 225
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Usu�rio'
      TabOrder = 7
      object edt_cod_usuario: TDCEdit
        Tag = -1
        Left = 129
        Top = 4
        Width = 150
        Height = 21
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Interessado'
      TabOrder = 4
      object edt_interessado_tmt: TDCEdit
        Tag = -1
        Left = 129
        Top = 4
        Width = 400
        Height = 21
        TabOrder = 0
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
      Caption = '    Cor do Processo'
      TabOrder = 3
      object cbx_cod_corprocesso: TDCComboBox
        Tag = -1
        Left = 129
        Top = 5
        Width = 224
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscri��o'
      TabOrder = 2
      object edt_inscricao_ben: TDCEdit
        Tag = -1
        Left = 129
        Top = 4
        Width = 80
        Height = 21
        TabOrder = 0
        EditMask = '9999999999'
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Processo                                                    ' +
        '       Ano'
      TabOrder = 1
      object edt_processo_tmt: TDCEdit
        Tag = -1
        Left = 129
        Top = 4
        Width = 80
        Height = 21
        TabOrder = 0
        EditMask = '99999999'
      end
      object edt_ano_tmt: TDCEdit
        Tag = -1
        Left = 272
        Top = 4
        Width = 80
        Height = 21
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Per�odo             de                                      ' +
        '                       at�'
      TabOrder = 6
      object edt_dtprocessoInicial: TDCDateEdit
        Tag = -1
        Left = 129
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtprocessoFinal: TDCDateEdit
        Tag = -1
        Left = 317
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Assunto'
      TabOrder = 5
      object edt_assunto_tmt: TDCEdit
        Tag = -1
        Left = 129
        Top = 4
        Width = 400
        Height = 21
        TabOrder = 0
      end
    end
    object RdG_OrdemImpressao: TRadioGroup
      Left = 544
      Top = 284
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
        'N� do Processo'
        'Inscri��o'
        'Assunto'
        'Interessado')
      ParentFont = False
      TabOrder = 9
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
end
