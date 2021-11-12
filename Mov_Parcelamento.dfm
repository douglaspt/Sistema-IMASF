inherited Frm_Mov_Parcelamento: TFrm_Mov_Parcelamento
  Caption = 'Frm_Mov_Parcelamento'
  ClientHeight = 571
  ClientWidth = 790
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 790
    inherited Image1: TImage
      Width = 788
    end
  end
  inherited Panel2: TPanel
    Top = 519
    Width = 790
    inherited Image3: TImage
      Width = 788
    end
    object btn_cancelar: TPDJButton
      Left = 281
      Top = 4
      Width = 129
      Height = 25
      Hint = 'PERDE TODAS AS INFORMAÇÕES'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777770000000000000777033333333333077703333333333
        3077703333333333307770333333333330777033333333333077703333333333
        307770333333333330777800000000000877770FFF0777777774777000777777
        7774777777777777474777777777777744777777777777774447}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888844444444444448884EEEEEEEEEEE48884EEEEEEEEEE
        E48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEE
        E48884EEEEEEEEEEE4888744444444444788884FFF4888888884888444888888
        8884888888888888484888888888888844888888888888884448}
      Enabled = False
      Caption = '&Cancelar'
      OnClick = btn_cancelarClick
      ShowHint = True
      TabOrder = 1
    end
    object btn_salvar: TPDJButton
      Left = 152
      Top = 4
      Width = 129
      Height = 25
      Hint = 'SALVA O PARCELAMENTO'
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
      Enabled = False
      Caption = '&Salvar'
      OnClick = btn_salvarClick
      ShowHint = True
      TabOrder = 2
    end
    object btn_novo: TPDJButton
      Left = 4
      Top = 4
      Width = 129
      Height = 25
      Hint = 'INCLUI UM NOVO PARCELAMENTO PARA O BENEFICIÁRIO'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888777777777777777778888880000000000000000078888
        880FFFFFFFFFFFFFFF078888880F000FF000FF000F078888880FFFFFFFFFFFFF
        FF078888880F000FF000FF000F078888880FFFFFFFFFFFFFFF078888880F000F
        F000FF000F07888887BFFFFFFFFFFFFFFF07BF8887FBF0BFF000FF000F078788
        87BFFF7BFFFFFFFFFF0788B887FFF7B4444444444447888FB7BB7FF44FFF44FF
        F44777777BFBB44444444444444888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      GlyphHot.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888777777777777777778888884444444444444444478888
        884FFFFFFFFFFFFFFF478888884F444FF444FF444F478888884FFFFFFFFFFFFF
        FF478888884F444FF444FF444F478888884FFFFFFFFFFFFFFF478888884F444F
        F444FF444F47888887BFFFFFFFFFFFFFFF47BF8887FBF4BFF444FF444F478788
        87BFFF7BFFFFFFFFFF4788B887FFF7BCCCCCCCCCCCC7888FB7BB7FFCCFFFCCFF
        FCC777777BFBBCCCCCCCCCCCCCC888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      Caption = '&Novo'
      OnClick = btn_novoClick
      ShowHint = True
      TabOrder = 3
    end
    object btn_cancelaParcelamento: TPDJButton
      Left = 420
      Top = 4
      Width = 216
      Height = 25
      Hint = 'Adicionar Novo Registro'
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
      Caption = 'Cancelamento do &Parcelamento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_cancelaParcelamentoClick
      Visible = False
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 643
      Top = 5
      Width = 31
      Height = 25
      Caption = 'Hist.'
      TabOrder = 5
      TabStop = False
      OnClick = BitBtn2Click
    end
  end
  inherited Panel3: TPanel
    Width = 790
    Height = 478
    object Label1: TLabel
      Left = 236
      Top = 236
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object panel: TPanel
      Left = 1
      Top = 1
      Width = 788
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '                            Local de Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object ed2_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 138
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object ed2_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 138
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = ed2_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = ed2_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_matriculadebito: TDCEdit
        Tag = -10
        Left = 137
        Top = 5
        Width = 112
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object edt_digitodebito: TDCEdit
        Tag = -10
        Left = 577
        Top = 5
        Width = 75
        Height = 21
        TabStop = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object cbx_cod_empresafolha: TDCComboBox
        Left = 400
        Top = 5
        Width = 193
        Height = 21
        Hint = 'EMPRESA PARA DESCONTO'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = cbx_cod_empresafolhaExit
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_cod_sitbeneficiario: TDCEdit
        Tag = -5
        Left = 738
        Top = 3
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 17
        TabOrder = 5
        Visible = False
      end
    end
    object PageControl: TPageControl
      Left = 1
      Top = 33
      Width = 788
      Height = 440
      ActivePage = tbs_branco
      Align = alTop
      TabOrder = 1
      object tbs_branco: TTabSheet
        Caption = 'tbs_branco'
        ImageIndex = 2
        TabVisible = False
        object Panel6: TPanel
          Left = 8
          Top = 20
          Width = 761
          Height = 153
          BevelOuter = bvLowered
          Caption = 
            'Para incluir parcelamento, verifique a opção acima (Beneficiário' +
            ' / Não Beneficiário) e clique no botão "&Novo"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object rdb_matricula: TRadioButton
            Left = 20
            Top = 40
            Width = 233
            Height = 17
            Caption = 'NÃO Beneficiário do IMASF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object rdb_beneficiario: TRadioButton
            Left = 20
            Top = 12
            Width = 113
            Height = 17
            Caption = 'Beneficiário'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            TabStop = True
          end
        end
      end
      object TbS_Novo: TTabSheet
        Caption = 'TbS_Novo'
        TabVisible = False
        object Panel10: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Cod. Tarifa                                                 ' +
            '                                                                ' +
            '                     Índice de Reajuste'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
            Tag = -1
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
          object cbx_cod_indice: TDCComboBox
            Left = 568
            Top = 5
            Width = 205
            Height = 21
            TabStop = False
            Color = clInfoBk
            Enabled = False
            TabOrder = 2
            ReadOnly = True
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel12: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Data de Desconto'
          TabOrder = 4
          object Label2: TLabel
            Left = 300
            Top = 10
            Width = 242
            Height = 13
            Caption = 'Data de refência para cálculo da correção'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edt_dtdesconto_flh: TDCDateEdit
            Tag = -1
            Left = 134
            Top = 5
            Width = 154
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Data da 1º parcela'
          TabOrder = 5
          object edt_dtparcela1: TDCDateEdit
            Tag = -1
            Left = 134
            Top = 5
            Width = 154
            Height = 21
            Hint = 'DIA DO VENCIMENTO QUE SERÁ COBRADA A PRIMEIRA PARCELA'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object pnl_margem: TPanel
            Left = 456
            Top = 6
            Width = 313
            Height = 21
            BevelOuter = bvLowered
            Caption = 'Margem disponivel:'
            Color = clYellow
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Valor Parcelamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object edt_vldesconto_adf: TDCEdit
            Tag = -1
            Left = 134
            Top = 5
            Width = 152
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            TabOrder = 0
          end
          object pnl_alertaIGPM: TPanel
            Left = 456
            Top = 6
            Width = 313
            Height = 21
            BevelOuter = bvLowered
            Caption = 'IGPM Não Atualizado para este Mês'
            Color = clRed
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 256
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Nº de Parcelas                     Percentual de Taxa de Jur' +
            'o                    %                '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object edt_nparcelas: TDCEdit
            Tag = -1
            Left = 134
            Top = 5
            Width = 55
            Height = 24
            MaxLength = 12
            TabOrder = 0
            OnExit = edt_nparcelasExit
          end
          object edt_txjuro: TDCEdit
            Tag = -1
            Left = 402
            Top = 5
            Width = 55
            Height = 24
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
          object btn_calcular: TPDJButton
            Left = 532
            Top = 4
            Width = 165
            Height = 25
            Hint = 'Calcular Parcelamento'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000000000000070777777777777707078078078078070707F07F07F07
              F07070777777777777707078078078078070707F07F07F07F070707777777777
              777070700000000077707070FFFFFFF077707070000000007770707777777777
              7770770000000000000777777777777777777777777777777777}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              88888CCCCCCCCCCCCCCC8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8
              EC8C8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8EC8C8C8888888888
              888C8C8CCCCCCCCC888C8C8CEEEEEEEC888C8C8CCCCCCCCC888C8C8888888888
              888C88CCCCCCCCCCCCC888888888888888888888888888888888}
            Caption = 'Calcular Parcelamento'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_calcularClick
            TabOrder = 2
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 288
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Valor das Parcelas com Juros                                ' +
            '                            Valor Total com Juros               ' +
            '   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          object edt_vlparcelar: TDCEdit
            Tag = -1
            Left = 292
            Top = 5
            Width = 166
            Height = 24
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_vlparcelado: TDCEdit
            Tag = -1
            Left = 622
            Top = 5
            Width = 152
            Height = 24
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel17: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Observação'
          TabOrder = 6
          object edt_obs_flh: TDCEdit
            Tag = -1
            Left = 134
            Top = 5
            Width = 639
            Height = 21
            MaxLength = 50
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 64
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          TabOrder = 2
          object pnl_alertainscricao: TPanel
            Left = 0
            Top = 6
            Width = 590
            Height = 21
            BevelOuter = bvLowered
            Caption = 'SITUAÇÃO INSCRIÇÃO'
            Color = clRed
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Visible = False
          end
          object pnl_alertamatricula: TPanel
            Left = 585
            Top = 6
            Width = 195
            Height = 21
            BevelOuter = bvLowered
            Caption = 'MATRÍCULA DESATIVADA'
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
        object Panel24: TPanel
          Left = 0
          Top = 32
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '   Matrícula de Débito                                          ' +
            '                        Digito'
          TabOrder = 1
          object edt_matricula: TDCEdit
            Tag = -10
            Left = 134
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
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_digito: TDCEdit
            Tag = -10
            Left = 341
            Top = 4
            Width = 75
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
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '   Beneficiário                                                 ' +
            '                              Nome'
          TabOrder = 0
          object edt_nome: TDCEdit
            Tag = -10
            Left = 341
            Top = 5
            Width = 403
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
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_carteira: TDCEdit
            Tag = -10
            Left = 134
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
            Text = 'ABCDEFGHIJLMN'
          end
        end
        object Panel4: TPanel
          Tag = -1
          Left = 0
          Top = 385
          Width = 780
          Height = 33
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Valor Previsto do Parcelamento                              ' +
            '                           + o índice de reajuste a cada mês'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Visible = False
          object edt_vltotal: TDCEdit
            Tag = -1
            Left = 292
            Top = 5
            Width = 167
            Height = 24
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 320
          Width = 780
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Valor da Primeira Parcela Reajustado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Visible = False
          object edt_primParcela: TDCEdit
            Tag = -1
            Left = 292
            Top = 5
            Width = 167
            Height = 24
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Tag = -1
          Left = 0
          Top = 352
          Width = 780
          Height = 33
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Valor das demais Parcelas                                   ' +
            '                              + o índice de rejuste do mês'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
          object edt_demaisParcela: TDCEdit
            Tag = -1
            Left = 292
            Top = 5
            Width = 167
            Height = 24
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object TbS_Consulta: TTabSheet
        Caption = 'TbS_Consulta'
        ImageIndex = 1
        TabVisible = False
        object DBGrid5: TDBGrid
          Left = 4
          Top = 28
          Width = 769
          Height = 301
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'parcelan_par'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nparcela_par'
              Title.Caption = 'Tl.Parcelas'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vldesconto_adf'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlpago_flh'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_tse'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sds'
              Title.Caption = 'Status / Situação'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_tarifa'
              Title.Caption = 'Cod.'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_tar'
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtdesconto_flh'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsitdesconto_flh'
              Title.Caption = 'Dt. Sit. Desc.'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtpagto_flh'
              Title.Caption = 'Dt. Pagto'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nguia_flh'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obs_flh'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nossonumero_flh'
              Title.Caption = 'Nosso Número'
              Visible = True
            end>
        end
        object PDJButton1: TPDJButton
          Left = 4
          Top = 0
          Width = 237
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            8A010000424D8A01000000000000760000002800000018000000170000000100
            04000000000014010000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888877777777777777777788880000000000000000000788880
            FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FF7777FFFFF7777F
            F0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880000778FF
            FFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880
            FF7777FF8FF7777FF0788880FFFFFFFF7FFFFFFFF0788880FFFFFFFF7FFFFFFF
            F0788880444444444778FFFFF0788880FFFFFFFF4FFFFFFFF0788880FFFFFFFF
            4FFFFFFFF0788880FF7777FF4FF7777FF0788880FFFFFFFF4FFFFFFFF0788880
            FFFFFFFF4FFFFFFFF08888800000000000000000008888888888888888888888
            8888888888888888888888888888}
          GlyphHot.Data = {
            8A010000424D8A01000000000000760000002800000018000000170000000100
            04000000000014010000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888888888888888EEEEEEEEEEEEEEEEEE88884444444444444444444E88884
            FFFFFFFFFFFFFFFFF4E88884FFFFFFFFFFFFFFFFF4E88884FFEEEEFFFFFEEEEF
            F4E88884FFFFFFFFFFFFFFFFF4E88884FFFFFFFFFFFFFFFFF4E88884444EE8FF
            FFFFFFFFF4E88884FFFFFFFFFFFFFFFFF4E88884FFFFFFFFFFFFFFFFF4E88884
            FFEEEEFF8FFEEEEFF4E88884FFFFFFFF7FFFFFFFF4E88884FFFFFFFF7FFFFFFF
            F4E88884CCCCCCCCC778FFFFF4E88884FFFFFFFFCFFFFFFFF4E88884FFFFFFFF
            CFFFFFFFF4E88884FFEEEEFFCFFEEEEFF4E88884FFFFFFFFCFFFFFFFF4E88884
            FFFFFFFFCFFFFFFFF48888844444444444444444448888888888888888888888
            8888888888888888888888888888}
          Caption = '&Consultar / Cancelamento'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 1
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        ImageIndex = 3
        TabVisible = False
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 73
          Height = 13
          Caption = 'Hist.Operações'
        end
        object MemoAuditoria: TMemo
          Left = 0
          Top = 15
          Width = 779
          Height = 369
          Color = clInfoBk
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object btn_voltar: TPDJButton
          Left = 690
          Top = 387
          Width = 90
          Height = 25
          Hint = 'Acesso ao Cadastro de Processo'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = 'Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_voltarClick
          TabOrder = 1
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 552
    Width = 790
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
  object DataSource3: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_descontofolha02
    Left = 181
    Top = 389
  end
end
