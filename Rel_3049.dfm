inherited Frm_Rel_3049: TFrm_Rel_3049
  Caption = 'Frm_Rel_3049'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_beneficiario: TPDJButton
      Left = 8
      Top = 4
      Width = 129
      Height = 25
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
      Enabled = False
      Caption = 'Beneficiários'
      OnClick = btn_beneficiarioClick
      ShowHint = True
      TabOrder = 1
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
      Caption = '    Inscrição'
      TabOrder = 0
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
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Beneficiário'
      TabOrder = 1
      object edt_carteira: TDCEdit
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
      object edt_titularcarteira: TDCEdit
        Left = 686
        Top = 5
        Width = 43
        Height = 21
        Hint = 'CÓDIGO DA DESPESA DO BENEFICIÁRIO'
        MaxLength = 80
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = edt_codtarifaKeyDown
      end
      object edt_nome: TDCEdit
        Left = 324
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
    end
    object GrB_Registra: TGroupBox
      Left = 16
      Top = 115
      Width = 769
      Height = 233
      Caption = 'Registrar 2º Via de Carteirinha '
      TabOrder = 2
      Visible = False
      object Panel8: TPanel
        Tag = -1
        Left = 2
        Top = 47
        Width = 765
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '   Local de Desconto'
        TabOrder = 0
        object cbx_cod_empresafolha: TDCComboBox
          Left = 134
          Top = 5
          Width = 315
          Height = 21
          Hint = 'EMPRESA PARA DESCONTO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
      end
      object Panel10: TPanel
        Tag = -1
        Left = 2
        Top = 79
        Width = 765
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Cod. Tarifa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cb2_cod_tarifa: TDCComboBox
          Left = 184
          Top = 5
          Width = 265
          Height = 21
          Hint = 'CÓDIGO DA DESPESA DO BENEFICIÁRIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_codtarifa: TDCEdit
          Left = 134
          Top = 5
          Width = 43
          Height = 21
          Hint = 'CÓDIGO DA DESPESA DO BENEFICIÁRIO'
          MaxLength = 80
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = edt_codtarifaKeyDown
        end
      end
      object Panel11: TPanel
        Tag = -1
        Left = 2
        Top = 111
        Width = 765
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Desconto                                            ' +
          '                                      Valor do Desconto'
        TabOrder = 2
        object edt_vldesconto_adf: TDCEdit
          Left = 440
          Top = 5
          Width = 152
          Height = 21
          MaxLength = 12
          TabOrder = 1
          OnKeyPress = edt_vldesconto_adfKeyPress
          EditMask = '###,###.##'
        end
        object edt_dtdesconto_flh: TDCDateEdit
          Left = 134
          Top = 5
          Width = 154
          Height = 21
          Hint = 'DIA EM QUE É LANÇADO O DESCONTO/DESPESA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object pnl_referencia: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 765
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '   Mês / Ano de Referencia                                      ' +
          '                                                          '
        TabOrder = 3
        object cbx_cod_mes: TDCComboBox
          Left = 134
          Top = 3
          Width = 247
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
        object edt_ano: TDCEdit
          Left = 388
          Top = 3
          Width = 61
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object btn_salvar: TPDJButton
        Left = 132
        Top = 188
        Width = 533
        Height = 25
        Hint = 
          'SOLICITA UMA NOVA CARTEIRINHA E REGISTRA O DESCONTO PARA A FOLHA' +
          ' / BOLETO'
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
        Caption = '&Registra o Requerimento'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_salvarClick
        ShowHint = True
        TabOrder = 4
      end
      object rdb_Imasf: TRadioButton
        Left = 133
        Top = 149
        Width = 70
        Height = 17
        Caption = 'IMASF'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = rdb_ImasfClick
      end
      object rdb_unimed: TRadioButton
        Left = 229
        Top = 149
        Width = 63
        Height = 17
        Caption = 'UNIMED'
        TabOrder = 6
        OnClick = rdb_unimedClick
      end
      object ckb_outreg: TCheckBox
        Left = 350
        Top = 149
        Width = 90
        Height = 17
        Caption = 'Outros Locais'
        TabOrder = 7
        OnClick = ckb_outregClick
      end
      object cbx_cod_localunimed: TDCComboBox
        Tag = -1
        Left = 442
        Top = 146
        Width = 225
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Visible = False
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object btn_imprimir: TPDJButton
      Left = 148
      Top = 400
      Width = 533
      Height = 25
      Hint = 'Imprimir Requerimento'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Requerimento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      Visible = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '   Matrícula de Débito                                          ' +
        '                Digito'
      TabOrder = 4
      object edt_matricula: TDCEdit
        Left = 136
        Top = 5
        Width = 100
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
      object edt_digito: TDCEdit
        Left = 324
        Top = 4
        Width = 72
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
