inherited Frm_Mov_2056: TFrm_Mov_2056
  Caption = 'Frm_Mov_2056'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_cancelaremissao: TPDJButton
      Left = 360
      Top = 4
      Width = 148
      Height = 25
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
      Caption = '&Cancelar emissão'
      OnClick = btn_cancelaremissaoClick
      ShowHint = True
      TabOrder = 1
    end
    object PDJButton4: TPDJButton
      Left = 4
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
        07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
        70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
        FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
        4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
        E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
        FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      Visible = False
      TabOrder = 2
    end
    object PDJButton3: TPDJButton
      Left = 150
      Top = 4
      Width = 174
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
        07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
        70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
        FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
        4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
        E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
        FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
      Caption = '&Imprimir para Assinatura'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      Visible = False
      TabOrder = 3
    end
    object PDJButton1: TPDJButton
      Left = 584
      Top = 4
      Width = 89
      Height = 25
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
      Caption = '&Gerar TXT'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      Visible = False
      TabOrder = 4
    end
  end
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object lbl_total: TLabel
          Left = 677
          Top = 330
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 1
          Top = 418
          Width = 464
          Height = 13
          Caption = 
            'Duplo clique para alterar local de atendimento de carteirinhas a' +
            'inda não geradas.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rdg_indice: TRadioGroup
          Left = 1
          Top = 151
          Width = 780
          Height = 33
          Caption = 'Índice de Pesquisa'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Data da Emissão'
            'Inscrição'
            'Nome do Beneficiário')
          TabOrder = 0
        end
        object btn_incluir: TPDJButton
          Left = 1
          Top = 434
          Width = 128
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555500005577777777777777777500005000000000000000007500005088
            80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
            0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
            0F44F0750000508880FF0078088880750000508180F400007844807500005088
            80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
            0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
            00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
            55555555550BFFBB0000}
          GlyphHot.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555500005577777777777777777500005444444444444444447500005488
            84FFFFFF4FFFF4750000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF475
            0000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF4750000548184FCCCCF
            4FCCF4750000548884FF0078488884750000548184FC000078CC847500005488
            84FF7008007884750000548184FCC08FF84484750000548884FFF74FFF844475
            0000544444444448FF843447000054CCCCCCCC74880E43440000544444444444
            44FEE43400005555555555554EFFEE43000055555555555550EFFEE400005555
            55555555550EFFEE0000}
          Caption = '&Incluir Carteirinha'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_incluirClick
          ShowHint = True
          TabOrder = 1
        end
        object edt_carteira: TDCEdit
          Tag = -10
          Left = 227
          Top = 435
          Width = 153
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 2
          Text = 'ABCDEFGHIJLMN'
        end
        object cbx_cod_localunimed: TDCComboBox
          Tag = -1
          Left = 480
          Top = 435
          Width = 177
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
        object edt_cod_beneficiario: TDCChoiceEdit
          Tag = -3
          Left = 132
          Top = 435
          Width = 93
          Height = 21
          Hint = 
            'Digite o código que se deseja alterar ou clique no botão para pe' +
            'squisar'
          MaxLength = 10
          TabOrder = 4
          Alignment = taRightJustify
          EditMask = '9999999'
        end
        object edt_inscricao_ben: TDCChoiceEdit
          Tag = -1
          Left = 133
          Top = 435
          Width = 93
          Height = 21
          Hint = 
            'Digite o código que se deseja alterar ou clique no botão para pe' +
            'squisar'
          MaxLength = 10
          TabOrder = 5
          OnKeyDown = edt_inscricao_benKeyDown
          Alignment = taRightJustify
          OnButtonClick = edt_inscricao_benButtonClick
          EditMask = '9999999'
        end
        object ckb_outreg: TCheckBox
          Left = 390
          Top = 437
          Width = 90
          Height = 17
          Caption = 'Outros Locais'
          TabOrder = 6
          OnClick = ckb_outregClick
        end
        object Panel7: TPanel
          Tag = -1
          Left = 6
          Top = 185
          Width = 776
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Inscrição                                                     ' +
            '                                       Nome'
          TabOrder = 7
          object edt_beneficiario_ben: TBDateEdit
            Tag = -5
            Left = 302
            Top = 5
            Width = 19
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 10
            TabOrder = 0
            Visible = False
          end
          object ed3_inscricao_ben: TBDateEdit
            Tag = -5
            Left = 102
            Top = 3
            Width = 93
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 10
            TabOrder = 1
          end
          object edt_nome_ben: TDCEdit
            Tag = -5
            Left = 398
            Top = 5
            Width = 375
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 2
          end
        end
        object btn_Salvar: TPDJButton
          Left = 165
          Top = 268
          Width = 109
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Salvar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_SalvarClick
          TabStop = True
          TabOrder = 8
        end
        object Panel1: TPanel
          Tag = -1
          Left = 5
          Top = 217
          Width = 777
          Height = 32
          Alignment = taLeftJustify
          Caption = '  Local Atendimento'
          TabOrder = 9
          object cb2_cod_localunimed: TDCComboBox
            Tag = -1
            Left = 102
            Top = 5
            Width = 177
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4227072
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
        end
        object btn_cancelar: TPDJButton
          Left = 349
          Top = 268
          Width = 109
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Cancelar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cancelarClick
          TabStop = True
          TabOrder = 10
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 785
          Height = 112
          Caption = 'Parâmetro para Pesquisa '
          TabOrder = 13
          object Label1: TLabel
            Left = 198
            Top = 27
            Width = 44
            Height = 13
            Caption = 'Dt. Inicial'
          end
          object Label2: TLabel
            Left = 409
            Top = 27
            Width = 36
            Height = 13
            Caption = 'Dt.Final'
          end
          object Label3: TLabel
            Left = 12
            Top = 61
            Width = 32
            Height = 13
            Caption = 'Motivo'
          end
          object Label4: TLabel
            Left = 333
            Top = 61
            Width = 30
            Height = 13
            Caption = 'Status'
          end
          object Label5: TLabel
            Left = 12
            Top = 27
            Width = 43
            Height = 13
            Caption = 'Inscrição'
          end
          object Label6: TLabel
            Left = 12
            Top = 90
            Width = 27
            Height = 13
            Caption = 'Plano'
          end
          object Label7: TLabel
            Left = 333
            Top = 90
            Width = 44
            Height = 13
            Caption = 'Dt. Envio'
            Visible = False
          end
          object Label9: TLabel
            Left = 633
            Top = 72
            Width = 108
            Height = 33
            Caption = 'UNIMED'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -24
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn_localizar: TPDJButton
            Left = 618
            Top = 25
            Width = 117
            Height = 37
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777777777777777777777777777700000000000000000000777777777778888
              8884CEECC0888888077777777777FFFFFF4CEECC0FFFFFFF077777777777FFFF
              F7CEECC0FFFFFFFF077777777777FFFF78FECC0FFFFFFFFF0777777770000007
              8F87C088888888FF077777700666666008770FFFFFFFFFFF07777778EF8FEFE6
              60708888888888FF0777778EFE8EFE77660FFFFFFFFFFFFF077777EFEF8FEFEF
              E6088888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
              EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
              EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF077777EFEF8FEFEF
              EF088888888888FF077777FEFE8EFE77760FFFFFFFFFFFFF0777777FEF8FEFEF
              60888888888888FF077777777F8EFEF00FFFFFFFFFFFFFFF077777777777770F
              FFFFFFFFFFFFFFFF077777777777FFFFFFFFFFFFFFFFFFFF077777777777FFF8
              888888888FFFFFFF077777777777FFFFFFFFFFFFFFFF7000077777777777FFFF
              FFFFFFFFFFFF7FFF077777777777FFFFFFFFFFFFFFFF7FF8077777777777FFFF
              FFFFFFFFFFFF7F87077777777777FFFFFFFFFFFFFFFF7870777777777777FFFF
              FFFFFFFFFFFF7707777777777777FFFFFFFFFFFFFFFF70777777777777777777
              7777777777777777777777777777777777777777777777777777}
            GlyphHot.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777777777777777777777777777744444444444444444444777777777778888
              8884CEECC4888888477777777777FFFFFF4CEECC4FFFFFFF477777777777FFFF
              F7CEECC4FFFFFFFF477777777777FFFF78FECC4FFFFFFFFF4777777774444447
              8F87C4CCCCCCCCFF477777744666666448774FFFFFFFFFFF47777778EF8FEFE6
              6474CCCCCCCCCCFF4777778EFE8EFE77664FFFFFFFFFFFFF477777EFEF8FEFEF
              E64CCCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
              EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
              EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF477777EFEF8FEFEF
              EF4CCCCCCCCCCCFF477777FEFE8EFE77764FFFFFFFFFFFFF4777777FEF8FEFEF
              64CCCCCCCCCCCCFF477777777F8EFEF44FFFFFFFFFFFFFFF477777777777774F
              FFFFFFFFFFFFFFFF477777777777FFFFFFFFFFFFFFFFFFFF477777777777FFFC
              CCCCCCCCCFFFFFFF477777777777FFFFFFFFFFFFFFFF7444477777777777FFFF
              FFFFFFFFFFFF7FFF477777777777FFFFFFFFFFFFFFFF7FF8477777777777FFFF
              FFFFFFFFFFFF7F87477777777777FFFFFFFFFFFFFFFF7874777777777777FFFF
              FFFFFFFFFFFF7747777777777777FFFFFFFFFFFFFFFF74777777777777777777
              7777777777777777777777777777777777777777777777777777}
            Caption = '&Localizar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_localizarClick
            ShowHint = True
            TabOrder = 6
          end
          object PDJButton2: TPDJButton
            Left = 738
            Top = 26
            Width = 41
            Height = 37
            Hint = 'LIMPA PARÂMETROS PARA EFETUAR UMA NOVA PESQUISA'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&X'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton2Click
            ShowHint = True
            TabOrder = 7
          end
          object edt_dtinicial: TDCDateEdit
            Tag = -5
            Left = 252
            Top = 22
            Width = 130
            Height = 21
            TabOrder = 2
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtfinal: TDCDateEdit
            Tag = -5
            Left = 468
            Top = 22
            Width = 130
            Height = 21
            TabOrder = 3
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object cbx_cod_emissaocarteira: TDCComboBox
            Tag = -1
            Left = 93
            Top = 52
            Width = 225
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4227072
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object cbx_cod_statuscarteira: TDCComboBox
            Tag = -1
            Left = 398
            Top = 52
            Width = 200
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4227072
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object ed2_cod_beneficiario: TDCChoiceEdit
            Tag = -3
            Left = 92
            Top = 22
            Width = 93
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 1
            Alignment = taRightJustify
            EditMask = '9999999'
          end
          object ed2_inscricao_ben: TDCChoiceEdit
            Tag = -1
            Left = 93
            Top = 22
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
          object cbx_cod_plano: TDCComboBox
            Tag = -1
            Left = 93
            Top = 82
            Width = 225
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4227072
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object cbx_dtenvio_hct: TDCComboBox
            Tag = -1
            Left = 398
            Top = 82
            Width = 200
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4227072
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            Visible = False
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object edt_dtendereco_ben: TDCDateEdit
          Tag = -1
          Left = 356
          Top = 159
          Width = 141
          Height = 21
          TabOrder = 12
          Visible = False
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object DBG_matricula: TDBGrid
          Left = 1
          Top = 111
          Width = 785
          Height = 304
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 11
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBG_matriculaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'inscricao_ben'
              Title.Caption = 'Inscrição'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'titulacartei_ben'
              Title.Caption = 'tit.'
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_ben'
              Title.Caption = 'Nome'
              Width = 262
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_pla'
              Title.Caption = 'Plano'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_emc'
              Title.Caption = 'Motivo Emissão'
              Width = 142
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_stc'
              Title.Caption = 'Status da Emissão'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtemissao_hcu'
              Title.Caption = 'Dt. Solicitação'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtenvio_hcu'
              Title.Caption = 'Dt. Envio'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtconfirmacao_hcu'
              Title.Caption = 'Dt. Confirmação'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtentrega_hcu'
              Title.Caption = 'Dt. Entrega'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtstatusfinal_hcu'
              Title.Caption = 'Dt. Final'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cidade_lcu'
              Title.Caption = 'Local de Atendimento'
              Width = 180
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Operações'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 455
          Color = clInfoBk
          ColCount = 1
          DefaultRowHeight = 17
          FixedCols = 0
          TabOrder = 0
          OnDrawCell = stg_audiDrawCell
        end
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
    Left = 68
    Top = 457
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_emissaocarteiraUnimed
    Left = 41
    Top = 457
  end
end
