inherited Frm_Rel_3057: TFrm_Rel_3057
  Caption = 'Frm_Rel_3057'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_beneficiario: TPDJButton
      Left = 8
      Top = 4
      Width = 129
      Height = 25
      Hint = 'CONSULTA O CADASTRO DE BENEFICI�RIOS'
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
      Caption = 'Benefici�rios'
      OnClick = btn_beneficiarioClick
      ShowHint = True
      TabOrder = 1
    end
    object btn_imprimir: TPDJButton
      Left = 225
      Top = 4
      Width = 259
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
      TabOrder = 2
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
      Caption = '    Inscri��o'
      TabOrder = 0
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
      TabOrder = 1
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
      object edt_titularcarteira: TDCEdit
        Left = 686
        Top = 5
        Width = 43
        Height = 21
        Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
        MaxLength = 80
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
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
        TabOrder = 2
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object GrB_Registra2: TGroupBox
      Left = 30
      Top = 333
      Width = 720
      Height = 148
      Caption = 'Registrar Taxa para Exame M�dico'
      TabOrder = 5
      Visible = False
      object Panel10: TPanel
        Tag = -1
        Left = 2
        Top = 47
        Width = 716
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
        TabOrder = 0
        object cb2_cod_tarifa: TDCComboBox
          Tag = -1
          Left = 133
          Top = 5
          Width = 358
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object Panel11: TPanel
        Tag = -1
        Left = 2
        Top = 79
        Width = 716
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Desconto                                            ' +
          '                                                                ' +
          'Valor do Desconto'
        TabOrder = 1
        object ed2_vldesconto_adf: TDCEdit
          Tag = -1
          Left = 536
          Top = 5
          Width = 152
          Height = 21
          MaxLength = 12
          TabOrder = 1
          Text = 'DCEdit1'
        end
        object ed2_dtdesconto_flh: TDCDateEdit
          Tag = -1
          Left = 134
          Top = 5
          Width = 154
          Height = 21
          Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object btn_salvar: TPDJButton
        Left = 136
        Top = 113
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
        TabOrder = 2
      end
      object Panel12: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 716
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '   M�s / Ano de Referencia                                      ' +
          '                                                Local de Descont' +
          'o               '
        TabOrder = 3
        object cb2_cod_mes: TDCComboBox
          Tag = -1
          Left = 133
          Top = 3
          Width = 171
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object ed2_ano: TDCEdit
          Left = 309
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
        object cb2_cod_empresafolha: TDCComboBox
          Tag = -1
          Left = 490
          Top = 5
          Width = 200
          Height = 21
          Hint = 'EMPRESA PARA DESCONTO'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Nome do Assistido'
      TabOrder = 3
      object edt_nomeass: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 409
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 150
        ParentFont = False
        TabOrder = 0
      end
    end
    object GrB_Registra: TGroupBox
      Left = 30
      Top = 141
      Width = 720
      Height = 176
      Caption = 'Registrar 1� Contribui��o de Assistidos'
      TabOrder = 4
      Visible = False
      object Panel6: TPanel
        Tag = -1
        Left = 2
        Top = 47
        Width = 716
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
        object cbx_cod_tarifa: TDCComboBox
          Tag = -1
          Left = 133
          Top = 5
          Width = 358
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object Panel9: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 716
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '   M�s / Ano de Referencia                                      ' +
          '                                                Local de Descont' +
          'o               '
        TabOrder = 0
        object cbx_cod_mes: TDCComboBox
          Tag = -1
          Left = 133
          Top = 3
          Width = 171
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_ano: TDCEdit
          Left = 309
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
        object cbx_cod_empresafolha: TDCComboBox
          Tag = -1
          Left = 499
          Top = 5
          Width = 200
          Height = 21
          Hint = 'EMPRESA PARA DESCONTO'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
      end
      object PDJButton1: TPDJButton
        Left = 138
        Top = 144
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
        OnClick = PDJButton1Click
        ShowHint = True
        TabOrder = 4
      end
      object Panel5: TPanel
        Tag = -1
        Left = 2
        Top = 79
        Width = 716
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Desconto                                            ' +
          '                            Plano                               ' +
          '                                      Idade                     ' +
          '   '
        TabOrder = 2
        object edt_idade: TDCEdit
          Tag = -1
          Left = 597
          Top = 5
          Width = 98
          Height = 21
          MaxLength = 12
          TabOrder = 2
        end
        object edt_dtdesconto_flh: TDCDateEdit
          Tag = -1
          Left = 134
          Top = 5
          Width = 153
          Height = 21
          Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object cbx_cod_plano: TDCComboBox
          Tag = -1
          Left = 360
          Top = 5
          Width = 131
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object Panel7: TPanel
        Tag = -1
        Left = 2
        Top = 111
        Width = 716
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Valor do Desconto                                           ' +
          '                                                                ' +
          '    Valor da Tabela        '
        TabOrder = 3
        object SpeedButton7: TSpeedButton
          Left = 309
          Top = 4
          Width = 24
          Height = 22
          Hint = 'Calcular Desconto'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888CCCCCCCCCCCCCCC8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8
            EC8C8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8EC8C8C8888888888
            888C8C8CCCCCCCCC888C8C8CEEEEEEEC888C8C8CCCCCCCCC888C8C8888888888
            888C88CCCCCCCCCCCCC888888888888888888888888888888888}
          OnClick = SpeedButton7Click
        end
        object edt_vldesconto_adf: TDCEdit
          Tag = -1
          Left = 134
          Top = 5
          Width = 152
          Height = 21
          MaxLength = 12
          TabOrder = 0
          Text = 'DCEdit1'
        end
        object edt_vltabela: TDCEdit
          Tag = -1
          Left = 544
          Top = 5
          Width = 152
          Height = 21
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '   Matr�cula de D�bito                                          ' +
        '                Digito'
      TabOrder = 2
      object edt_matricula: TDCEdit
        Tag = -10
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
        Text = 'ABCDEFGHIJLM'
      end
      object edt_digito: TDCEdit
        Tag = -10
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
