inherited Frm_Mov_2062: TFrm_Mov_2062
  Caption = 'Frm_Mov_2062'
  ClientHeight = 582
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    object btn_cancelar: TPDJButton
      Left = 344
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Cancelar a Edição Atual'
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
      Left = 232
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
      Left = 116
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
      Left = 4
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
      Caption = '&Novo'
      OnClick = btn_novoClick
      TabOrder = 4
    end
    object btn_excluir: TPDJButton
      Left = 460
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
      Visible = False
      TabOrder = 5
    end
    object btn_beneficiario: TPDJButton
      Left = 574
      Top = 4
      Width = 105
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
      Caption = 'Beneficiários'
      OnClick = btn_beneficiarioClick
      ShowHint = True
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
          object lbl_aviso: TLabel
            Left = 4
            Top = 437
            Width = 336
            Height = 13
            Caption = 'Clique duas vezes no lançamento para consultar detalhado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_total: TLabel
            Left = 1
            Top = 404
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
          object GroupBox1: TGroupBox
            Left = 1
            Top = 33
            Width = 788
            Height = 81
            Caption = 'Campo Opcionais para Pesquisa '
            TabOrder = 0
            object pnl_benefi: TPanel
              Tag = -2
              Left = 1
              Top = 15
              Width = 783
              Height = 32
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 
                '    Inscrição                                                   ' +
                '                                                                ' +
                '                                                     Nosso Númer' +
                'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object edt_cod_beneficiario: TDCChoiceEdit
                Tag = -3
                Left = 122
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
              object edt_inscricao_ben: TDCChoiceEdit
                Tag = -5
                Left = 122
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
              object edt_nossonumero_flh: TDCEdit
                Tag = -5
                Left = 640
                Top = 5
                Width = 136
                Height = 21
                CharCase = ecUpperCase
                MaxLength = 12
                TabOrder = 2
              end
              object rdb_matricula: TRadioButton
                Left = 233
                Top = 9
                Width = 139
                Height = 17
                Caption = 'Matrícula'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                TabStop = True
                OnClick = rdb_matriculaClick
              end
              object rdb_benefi: TRadioButton
                Left = 339
                Top = 8
                Width = 113
                Height = 17
                Caption = 'Inscrição'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnClick = rdb_benefiClick
              end
            end
            object Panel4: TPanel
              Tag = -1
              Left = 1
              Top = 47
              Width = 783
              Height = 32
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 
                '    Situação do Desconto                                        ' +
                '                                                                ' +
                'Cód. da Tarifa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object cbx_cod_tarifa: TDCComboBox
                Tag = -5
                Left = 507
                Top = 3
                Width = 270
                Height = 21
                TabOrder = 0
                Items.Strings = (
                  '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
                  '1 - Conta não recebida por meio Magnético e deverá ser digitada')
                ValueItem = ''
                ItemHeight = 0
                Style = csOwnerDrawFixed
                ShowCheckBox = True
              end
              object cb2_cod_sitdesconto: TDCComboBox
                Tag = -5
                Left = 122
                Top = 3
                Width = 271
                Height = 21
                TabOrder = 1
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
            end
          end
          object RgB_Indice: TRadioGroup
            Left = 1
            Top = 117
            Width = 437
            Height = 33
            Hint = 'ORDEM EM QUE APARECERÁ NA TELA AS INFORMAÇÕES SOLICITADAS'
            Caption = 'Indice de Pesquisa '
            Columns = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              'Inscrição'
              'Nome'
              'Nosso Núm.'
              'Data Desc.')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 184
            Top = 404
            Width = 596
            Height = 21
            DataField = 'obs_flh'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object btn_localizar: TPDJButton
            Left = 625
            Top = 115
            Width = 117
            Height = 37
            Hint = 
              'LOCALIZA OS DESCONTOS CONFORME O MÊS DE REFERÊNCIA E LOCAL DE DE' +
              'SCONTO'
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
            TabOrder = 3
          end
          object PDJButton11: TPDJButton
            Left = 711
            Top = 430
            Width = 74
            Height = 25
            Hint = 'Acesso ao Cadastro de Processo'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Processo'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton11Click
            TabOrder = 4
          end
          object dbg_descontos: TDBGrid
            Left = 1
            Top = 154
            Width = 788
            Height = 248
            DataSource = DataSource3
            DefaultDrawing = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = dbg_descontosDrawColumnCell
            OnDblClick = dbg_descontosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'inscricao_ben'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'titulacartei_ben'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_ben'
                Width = 207
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tse'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vldesconto_adf'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlpago_flh'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'parcelan_par'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nparcela_par'
                Width = 46
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
                FieldName = 'cod_tarifa'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_sds'
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
                FieldName = 'dtsitdesconto_flh'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtpagto_flh'
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
                FieldName = 'nossonumero_flh'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_descontofolha'
                Visible = True
              end>
          end
          object PDJButton2: TPDJButton
            Left = 746
            Top = 115
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
            TabOrder = 6
          end
          object chb_parcelamento: TCheckBox
            Left = 496
            Top = 130
            Width = 97
            Height = 17
            Caption = 'Parcelamento'
            TabOrder = 7
            OnClick = chb_parcelamentoClick
          end
          object btn_parcelamento: TPDJButton
            Left = 457
            Top = 430
            Width = 85
            Height = 25
            Hint = 'Acesso ao Cadastro de Processo'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Parcelamento'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_parcelamentoClick
            Visible = False
            TabOrder = 8
          end
          object btn_cancelaParcelamento: TPDJButton
            Left = 546
            Top = 430
            Width = 160
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
            Caption = 'Cancelar &Parcelamento'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_cancelaParcelamentoClick
            TabOrder = 9
          end
          object pnl_referencia: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '    Mês / Ano de Referência                                     ' +
              '                                                               L' +
              'ocal de Desconto'
            TabOrder = 10
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
                '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
                '1 - Conta não recebida por meio Magnético e deverá ser digitada')
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
              ParentFont = False
              TabOrder = 1
            end
            object cb2_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 528
              Top = 3
              Width = 253
              Height = 24
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
          Caption = 'TabSheet2'
          ImageIndex = 1
          TabVisible = False
          object Panel: TPanel
            Tag = -2
            Left = 0
            Top = 0
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '    Inscrição'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object ed2_cod_beneficiario: TDCChoiceEdit
              Tag = -3
              Left = 134
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
              Tag = -10
              Left = 134
              Top = 5
              Width = 93
              Height = 21
              Hint = 'INSCRIÇÃO DO SEGURADO NO IMASF'
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
              Left = 134
              Top = 5
              Width = 153
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
              OnExit = edt_matriculadebitoExit
            end
            object rdb_beneficiario: TRadioButton
              Left = 456
              Top = 8
              Width = 113
              Height = 17
              Caption = 'Inscrição'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              TabStop = True
              OnClick = rdb_beneficiarioClick
            end
            object rdg_naobenefi: TRadioButton
              Left = 588
              Top = 9
              Width = 137
              Height = 17
              Caption = 'Matrícula'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = rdg_naobenefiClick
            end
          end
          object Panel9: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '   Beneficiário'
            TabOrder = 1
            object edt_nome: TDCEdit
              Tag = -10
              Left = 296
              Top = 5
              Width = 449
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
          object Panel24: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '   Matrícula de Débito                                          ' +
              '                                    Digito'
            TabOrder = 2
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
              Left = 373
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
          object Panel8: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '   Local de Desconto'
            TabOrder = 3
            object cbx_cod_empresafolha: TDCComboBox
              Tag = -10
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
            Left = 0
            Top = 128
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '    Cod. Tarifa                                                 ' +
              '                                                                ' +
              '                        Data Ref. Desconto Atrasado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object cb2_cod_tarifa: TDCComboBox
              Tag = -10
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
              Tag = -10
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
            object edt_dtrefatraso_flh: TDCDateEdit
              Tag = -10
              Left = 622
              Top = 3
              Width = 154
              Height = 21
              Hint = 
                'MÊS E ANO EM QUE O DESCONTO FOI COBRADO PELA PRIMEIRA VEZ E NÃO ' +
                'FOI PAGO'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              ReadOnly = True
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel11: TPanel
            Tag = -1
            Left = 0
            Top = 160
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '    Data do Desconto                                            ' +
              '                   Vl. Desc.                                    ' +
              'Juros                              Multa                        ' +
              '        Corr.'
            TabOrder = 5
            object edt_vldesconto_adf: TDCEdit
              Tag = -10
              Left = 344
              Top = 5
              Width = 82
              Height = 21
              MaxLength = 12
              TabOrder = 1
            end
            object edt_dtdesconto_flh: TDCDateEdit
              Tag = -10
              Left = 134
              Top = 5
              Width = 132
              Height = 21
              Hint = 'DIA EM QUE É LANÇADO O DESCONTO/DESPESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_vlcorrecao_flh: TDCEdit
              Tag = -10
              Left = 705
              Top = 5
              Width = 70
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 4
            end
            object edt_vljuros_flh: TDCEdit
              Tag = -10
              Left = 472
              Top = 5
              Width = 70
              Height = 21
              MaxLength = 12
              TabOrder = 2
            end
            object edt_vlmulta_flh: TDCEdit
              Tag = -10
              Left = 590
              Top = 5
              Width = 70
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 3
            end
          end
          object pnl_parcelamento: TPanel
            Tag = -1
            Left = 0
            Top = 192
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '   Valor Original do Parc.                                      ' +
              ' Valor do Parcelamento                                      Parc' +
              'ela                   de'
            Color = 14278369
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Visible = False
            object edt_parcelan_par: TDCEdit
              Tag = -10
              Left = 634
              Top = 5
              Width = 38
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 1
              Text = 'edt_parcelan_par'
            end
            object edt_nparcela_par: TDCEdit
              Tag = -10
              Left = 734
              Top = 5
              Width = 38
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 2
              Text = 'DCEdit1'
            end
            object edt_vlparcelamento: TDCEdit
              Tag = -10
              Left = 442
              Top = 5
              Width = 114
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 0
            end
            object edt_vloriginal: TDCEdit
              Tag = -10
              Left = 160
              Top = 5
              Width = 114
              Height = 21
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 3
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 0
            Top = 224
            Width = 788
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '    Observação'
            TabOrder = 7
            object edt_obs_flh: TDCEdit
              Tag = -10
              Left = 134
              Top = 5
              Width = 639
              Height = 21
              MaxLength = 80
              TabOrder = 0
              Text = 'edt_obs_flh'
              OnKeyDown = edt_obs_flhKeyDown
            end
          end
          object GrB_Status: TGroupBox
            Left = 4
            Top = 284
            Width = 773
            Height = 113
            Caption = 'Status do Desconto   (em Aberto \ Baixa \ Cancelamento )'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object Panel7: TPanel
              Tag = -1
              Left = 2
              Top = 15
              Width = 769
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '   Situação do Desconto                                         ' +
                '                                                                ' +
                '                                 Nosso Número'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cbx_cod_sitdesconto: TDCComboBox
                Tag = -10
                Left = 134
                Top = 4
                Width = 315
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
              object edt_nossonumero: TDCEdit
                Tag = -10
                Left = 610
                Top = 5
                Width = 152
                Height = 21
                Hint = 'NÚMERO DO BOLETO BANCÁRIO'
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                MaxLength = 12
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = 'DCEdit1'
                Alignment = taRightJustify
              end
            end
            object Panel13: TPanel
              Tag = -1
              Left = 2
              Top = 47
              Width = 769
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '    Data da Situação                                            ' +
                '                                                                ' +
                '                             Data do Pagamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object edt_dtsitdesconto_flh: TDCDateEdit
                Tag = -10
                Left = 134
                Top = 5
                Width = 154
                Height = 21
                Hint = 'DIA EM QUE FOI PAGO, CANCELADO, ETC.'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
              object edt_dtpagto_flh: TDCDateEdit
                Tag = -10
                Left = 610
                Top = 5
                Width = 154
                Height = 21
                TabOrder = 1
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
            object Panel16: TPanel
              Tag = -1
              Left = 2
              Top = 79
              Width = 769
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '    Valor Pago                                                  ' +
                '                                                                ' +
                '                                Num. da Guia se pago na Tesourar' +
                'ia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object edt_vlpago_flh: TDCEdit
                Tag = -10
                Left = 134
                Top = 5
                Width = 152
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                MaxLength = 12
                ParentFont = False
                TabOrder = 0
                Text = 'edt_vlpago_flh'
              end
              object edt_nguia_flh: TDCEdit
                Tag = -10
                Left = 684
                Top = 5
                Width = 77
                Height = 21
                MaxLength = 12
                TabOrder = 1
              end
            end
          end
          object Panel38: TPanel
            Tag = -1
            Left = 0
            Top = 425
            Width = 788
            Height = 32
            Align = alBottom
            Alignment = taLeftJustify
            Caption = 
              '    Data de Alteração                                           ' +
              '                       Alterado por'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            object edt_dtsistema_flh: TDCDateEdit
              Tag = -10
              Left = 124
              Top = 5
              Width = 217
              Height = 21
              Hint = 
                'DATA DE ALTERAÇÃO DE DADOS DO CADASTRO(INSERIDA PELO PRÓPRIO SIS' +
                'TEMA)'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ReadOnly = True
              Checked = True
              ButtonExist = False
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_nome_usu: TDCEdit
              Tag = -10
              Left = 460
              Top = 5
              Width = 285
              Height = 21
              Hint = 
                'FUNCIONÁRIO QUE EXECUTOU A ALTERAÇÃO(INSERIDO PELO PRÓPRIO SISTE' +
                'MA)'
              TabStop = False
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 12
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Text = 'ABCDEFGHIJLMN'
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Hist.Operações'
          ImageIndex = 3
          OnShow = TabSheet4Show
          object stg_audi: TStringGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 785
            Height = 424
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
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_descontos
    Left = 33
    Top = 512
  end
end
