inherited Frm_Mov_2069: TFrm_Mov_2069
  Caption = 'Frm_Mov_2069'
  ClientHeight = 582
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    inherited Btn_Fechar: TPDJButton
      Left = 688
    end
    object btn_cancelar: TPDJButton
      Left = 348
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Cancelar a Edi��o Atual'
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
      TabOrder = 1
    end
    object btn_salvar: TPDJButton
      Left = 235
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Salvar/Gravar o Registro Atual'
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
      TabOrder = 2
    end
    object btn_alterar: TPDJButton
      Left = 121
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Alterar Registro'
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
      Caption = '&Alterar'
      OnClick = btn_alterarClick
      TabOrder = 3
    end
    object btn_novo: TPDJButton
      Left = 8
      Top = 4
      Width = 109
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
      Enabled = False
      Caption = '&Novo'
      OnClick = btn_novoClick
      TabOrder = 4
    end
    object btn_excluir: TPDJButton
      Left = 461
      Top = 4
      Width = 100
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
      TabOrder = 5
    end
    object btn_gerar: TPDJButton
      Left = 565
      Top = 4
      Width = 120
      Height = 25
      Hint = 'Gera Registros do PFGB de todas as Empresas'
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
      Caption = '&Gerar Descontos '
      OnClick = btn_gerarClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Height = 489
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 487
      Align = alClient
      Alignment = taLeftJustify
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 796
        Height = 485
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados'
          OnShow = TabSheet1Show
          object lbl_total: TLabel
            Left = 1
            Top = 376
            Width = 8
            Height = 13
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel7: TPanel
            Tag = -1
            Left = 5
            Top = 173
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = '   Inscri��o                                           '
            TabOrder = 0
            object edt_titulacartei_ben: TBEdit
              Tag = -1
              Left = 580
              Top = 5
              Width = 25
              Height = 21
              MaxLength = 250
              TabOrder = 3
              Visible = False
              NumbersOnly = False
            end
            object ed2_cod_beneficiario: TDCChoiceEdit
              Tag = -3
              Left = 98
              Top = 5
              Width = 90
              Height = 21
              Hint = 
                'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                'squisar'
              MaxLength = 10
              TabOrder = 1
              Alignment = taRightJustify
              EditMask = '9999999'
            end
            object ed2_inscricao_ben: TDCChoiceEdit
              Tag = 1
              Left = 98
              Top = 5
              Width = 90
              Height = 21
              Hint = 
                'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                'squisar'
              MaxLength = 10
              TabOrder = 0
              OnKeyDown = ed2_inscricao_benKeyDown
              Alignment = taRightJustify
              OnButtonClick = ed2_inscricao_benButtonClick
              EditMask = '9999999'
            end
            object edt_nome: TDCEdit
              Tag = 1
              Left = 192
              Top = 5
              Width = 421
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 2
            end
          end
          object Panel4: TPanel
            Tag = -1
            Left = 5
            Top = 205
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Matricula                                                Dig.' +
              '                                        M�s/Ano Retroativo'
            TabOrder = 1
            object edt_matriculadebito_seg: TDCEdit
              Tag = 1
              Left = 98
              Top = 4
              Width = 90
              Height = 21
              Color = clInfoBk
              ReadOnly = True
              TabOrder = 0
              EditMask = '99999'
            end
            object edt_digitomatdeb_seg: TBEdit
              Tag = 1
              Left = 219
              Top = 4
              Width = 25
              Height = 21
              Color = clInfoBk
              MaxLength = 250
              ReadOnly = True
              TabOrder = 1
              NumbersOnly = False
            end
            object cb2_cod_empresafolha: TDCComboBox
              Tag = 1
              Left = 450
              Top = 3
              Width = 165
              Height = 21
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Items.Strings = (
                '')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel5: TPanel
            Tag = -1
            Left = 5
            Top = 237
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Tipo Benef.                                                  ' +
              '                   Grau Parent.    '
            TabOrder = 2
            Visible = False
            object cbx_cod_tipodependente: TDCComboBox
              Tag = 1
              Left = 98
              Top = 5
              Width = 146
              Height = 21
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ReadOnly = True
              Items.Strings = (
                '')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_grauparent: TDCComboBox
              Tag = 1
              Left = 380
              Top = 5
              Width = 165
              Height = 21
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ReadOnly = True
              Items.Strings = (
                '')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel6: TPanel
            Tag = -1
            Left = 5
            Top = 269
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Situa��o                                                     ' +
              '                    Local Desconto'
            TabOrder = 3
            Visible = False
            object cbx_cod_sitcontribPFGB: TDCComboBox
              Tag = 1
              Left = 98
              Top = 5
              Width = 146
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cb2_cod_mes: TDCComboBox
              Tag = 1
              Left = 452
              Top = 4
              Width = 111
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object edt_anoretro: TDCEdit
              Tag = 1
              Left = 567
              Top = 4
              Width = 47
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 7
              ParentFont = False
              TabOrder = 2
              EditMask = '9999'
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 5
            Top = 333
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Usu�rio                                                      ' +
              '                     Dt. Altera��o'
            TabOrder = 5
            Visible = False
            object cbx_cod_usuario: TDCComboBox
              Tag = 1
              Left = 98
              Top = 5
              Width = 146
              Height = 21
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ReadOnly = True
              Items.Strings = (
                '')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object edt_dtsistema_cpb: TDCDateEdit
              Tag = 1
              Left = 380
              Top = 5
              Width = 165
              Height = 21
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ReadOnly = True
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_dtretroativo_cpb: TDCDateEdit
              Tag = 1
              Left = 550
              Top = 5
              Width = 0
              Height = 21
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_cod_contribpfgb: TDCEdit
              Left = 596
              Top = 4
              Width = 0
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 7
              ParentFont = False
              TabOrder = 3
              EditMask = '999999'
            end
            object edt_dtreferencia_cpb: TDCDateEdit
              Tag = 1
              Left = 566
              Top = 3
              Width = 0
              Height = 21
              TabOrder = 4
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel9: TPanel
            Tag = -1
            Left = 5
            Top = 301
            Width = 625
            Height = 32
            Alignment = taLeftJustify
            Caption = '   Observa��es'
            TabOrder = 4
            Visible = False
            object edt_observacao: TDCEdit
              Tag = 1
              Left = 98
              Top = 5
              Width = 519
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 50
              ParentFont = False
              TabOrder = 0
            end
          end
          object dbg_contribPFGB: TDBGrid
            Left = 1
            Top = 136
            Width = 788
            Height = 241
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = dbg_contribPFGBDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'inscricao_ben'
                Title.Caption = 'Inscri�.'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'titulacartei_ben'
                Title.Caption = 'Tit.'
                Width = 21
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'matriculadebito_seg'
                Title.Caption = 'Matr�cula'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'digitomatdeb_seg'
                Title.Caption = 'Dig.'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_ben'
                Title.Caption = 'Nome do Benefici�rio'
                Width = 269
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tdp'
                Title.Caption = 'Tipo Benef.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_scp'
                Title.Caption = 'Situa��o'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_sie'
                Title.Caption = 'Situa��o na Empresa'
                Width = 125
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_gra'
                Title.Caption = 'Grau Parent.'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtretroativo_cpb'
                Title.Caption = 'Dt.Retroativo'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'observacao_cpb'
                Title.Caption = 'Observa��es'
                Width = 353
                Visible = True
              end>
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 417
            Width = 788
            Height = 41
            Caption = 'Gerar Desconto Boleto'
            TabOrder = 7
            object Panel11: TPanel
              Tag = -1
              Left = 3
              Top = 11
              Width = 756
              Height = 23
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 
                '    M�s / Ano de Refer�ncia                                     ' +
                '                                                                ' +
                '                         Data do Desconto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cb3_cod_mes: TDCComboBox
                Tag = -1
                Left = 150
                Top = 1
                Width = 130
                Height = 21
                Enabled = False
                TabOrder = 0
                Items.Strings = (
                  '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                  '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
                ValueItem = ''
                ItemHeight = 0
                Style = csOwnerDrawFixed
                ShowCheckBox = True
              end
              object ed3_ano: TDCEdit
                Left = 283
                Top = 1
                Width = 60
                Height = 21
                Enabled = False
                MaxLength = 4
                TabOrder = 1
                EditMask = '9999'
              end
              object edt_dtdesconto_flh: TDCDateEdit
                Tag = -10
                Left = 623
                Top = 1
                Width = 130
                Height = 21
                Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
          end
          object pgb_registros: TProgressBar
            Left = 1
            Top = 390
            Width = 788
            Height = 25
            Min = 0
            Max = 100
            TabOrder = 8
            Visible = False
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 34
            Width = 788
            Height = 42
            Caption = 'Campos Opcionais para Pesquisa '
            TabOrder = 9
            object pnl_benefi: TPanel
              Tag = -2
              Left = 2
              Top = 13
              Width = 783
              Height = 26
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '    Inscri��o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object btn_pesquisar: TSpeedButton
                Left = 629
                Top = 0
                Width = 99
                Height = 25
                Hint = 'Localizar conforme o texto digitado'
                Caption = '&Pesquisar'
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
                OnClick = btn_pesquisarClick
              end
              object edt_cod_beneficiario: TDCChoiceEdit
                Tag = -3
                Left = 70
                Top = 5
                Width = 93
                Height = 21
                Hint = 
                  'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                  'squisar'
                MaxLength = 10
                TabOrder = 2
                Alignment = taRightJustify
                EditMask = '9999999'
              end
              object edt_inscricao_ben: TDCChoiceEdit
                Tag = -1
                Left = 70
                Top = 3
                Width = 93
                Height = 21
                Hint = 
                  'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                  'squisar'
                MaxLength = 10
                TabOrder = 0
                OnKeyDown = edt_inscricao_benKeyDown
                Alignment = taRightJustify
                OnButtonClick = edt_inscricao_benButtonClick
                EditMask = '9999999'
              end
              object rdb_benefi: TRadioButton
                Left = 257
                Top = 6
                Width = 103
                Height = 17
                Caption = 'Inscri��o'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                TabStop = True
                OnClick = rdb_benefiClick
              end
              object RadioButton3: TRadioButton
                Left = 373
                Top = 7
                Width = 99
                Height = 17
                Caption = 'Matr�cula'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnClick = RadioButton3Click
              end
              object edt_digito: TBEdit
                Tag = -1
                Left = 166
                Top = 3
                Width = 25
                Height = 21
                MaxLength = 250
                TabOrder = 1
                Visible = False
                NumbersOnly = False
              end
              object btn_limpar: TPDJButton
                Left = 734
                Top = 0
                Width = 41
                Height = 25
                Hint = 'Limpa Situa��o para nova pesquisa'
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
                OnClick = btn_limparClick
                ShowHint = True
                TabOrder = 5
              end
            end
          end
          object RgB_Indice: TRadioGroup
            Left = 1
            Top = 94
            Width = 339
            Height = 33
            Hint = 'ORDEM EM QUE APARECER� NA TELA AS INFORMA��ES SOLICITADAS'
            Caption = 'Indice de Pesquisa '
            Columns = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              'Inscri��o                                      '
              'Nome')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
          end
          object pnl_referencia: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            TabOrder = 11
            object Label1: TLabel
              Left = 424
              Top = 8
              Width = 90
              Height = 13
              Caption = 'Local de Desconto'
            end
            object Label2: TLabel
              Left = 8
              Top = 8
              Width = 120
              Height = 13
              Caption = 'M�s / Ano de Refer�ncia'
            end
            object cbx_cod_mes: TDCComboBox
              Tag = -1
              Left = 140
              Top = 3
              Width = 193
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
              Left = 340
              Top = 3
              Width = 61
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 4
              ParentFont = False
              TabOrder = 1
              EditMask = '9999'
            end
            object cbx_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 528
              Top = 3
              Width = 253
              Height = 24
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Hist.Opera��es'
          ImageIndex = 1
          OnShow = TabSheet2Show
          object stg_audi: TStringGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 785
            Height = 453
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
  end
  inherited StB_Principal: TStatusBar
    Top = 563
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
    Left = 560
    Top = 225
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_contribPFGB
    Left = 537
    Top = 224
  end
end
