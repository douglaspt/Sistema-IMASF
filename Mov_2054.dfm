inherited Frm_Mov_2054: TFrm_Mov_2054
  Caption = 'Frm_Mov_2054'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Image2: TImage [1]
      Left = 1
      Top = 1
      Width = 798
      Height = 31
      Align = alClient
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
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 488
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 0
      object Panel5: TPanel
        Tag = -1
        Left = 38
        Top = 209
        Width = 645
        Height = 32
        Alignment = taLeftJustify
        Caption = 
          '    Dt. Sistema                                                 ' +
          '                    Usuário'
        TabOrder = 10
        object cbx_cod_usuario: TBComboBox
          Tag = -1
          Left = 344
          Top = 5
          Width = 289
          Height = 21
          Color = clInfoBk
          Enabled = False
          ItemHeight = 13
          TabOrder = 0
        end
        object edt_dtsistema_bth: TBDateEdit
          Tag = -1
          Left = 100
          Top = 5
          Width = 125
          Height = 21
          Color = clInfoBk
          Enabled = False
          MaxLength = 10
          TabOrder = 1
        end
      end
      object Panel8: TPanel
        Tag = -1
        Left = 38
        Top = 113
        Width = 645
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Conveniado'
        TabOrder = 7
        object edt_cod_conveniado: TDCChoiceEdit
          Tag = -1
          Left = 100
          Top = 5
          Width = 93
          Height = 21
          MaxLength = 10
          TabOrder = 0
          OnExit = edt_cod_conveniadoExit
          Alignment = taRightJustify
          OnButtonClick = edt_cod_conveniadoButtonClick
          EditMask = '99999-9'
        end
        object edt_razao_con: TDCEdit
          Tag = -5
          Left = 200
          Top = 5
          Width = 435
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Tag = -2
        Left = 38
        Top = 81
        Width = 645
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Inscrição'
        TabOrder = 6
        object edt_cod_beneficiario: TDCChoiceEdit
          Tag = -3
          Left = 100
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
          Tag = -1
          Left = 100
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
        object edt_carteira: TDCEdit
          Tag = -10
          Left = 200
          Top = 5
          Width = 112
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 2
          Text = 'ABCDEFGHIJLMN'
        end
        object edt_nome: TDCEdit
          Tag = -10
          Left = 318
          Top = 5
          Width = 317
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 3
          Text = 'ABCDEFGHIJLMN'
        end
      end
      object Panel1: TPanel
        Tag = -1
        Left = 38
        Top = 177
        Width = 645
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Observação'
        TabOrder = 9
        object edt_obs_bth: TDCEdit
          Tag = -1
          Left = 100
          Top = 4
          Width = 533
          Height = 21
          MaxLength = 50
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Tag = -1
        Left = 38
        Top = 145
        Width = 645
        Height = 32
        Alignment = taLeftJustify
        Caption = 
          '    Data Inicial                                                ' +
          '                      Data Final           '
        TabOrder = 8
        object edt_dtinicio_bht: TDCDateEdit
          Tag = -1
          Left = 100
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtfim_bth: TDCDateEdit
          Tag = -1
          Left = 344
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object btn_novo: TPDJButton
        Left = 5
        Top = 460
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&Adicionar '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_novoClick
        TabStop = True
        TabOrder = 0
      end
      object btn_alterar: TPDJButton
        Left = 135
        Top = 460
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = 'A&lterar '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_alterarClick
        TabStop = True
        TabOrder = 1
      end
      object btn_Remover: TPDJButton
        Left = 524
        Top = 460
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&Remover'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_RemoverClick
        TabStop = True
        TabOrder = 4
      end
      object btn_Salvar: TPDJButton
        Left = 265
        Top = 460
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = '&Salvar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_SalvarClick
        TabStop = True
        TabOrder = 2
      end
      object btn_cancelar: TPDJButton
        Left = 394
        Top = 460
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = '&Cancelar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_cancelarClick
        TabStop = True
        TabOrder = 3
      end
      object dbg_conveniado: TDBGrid
        Left = 5
        Top = 71
        Width = 788
        Height = 300
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'inscricao_ben'
            Title.Caption = 'Inscrição'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_ben'
            Title.Caption = 'Nome'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtinicio_bht'
            Title.Caption = 'Dt. Início'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtfim_bth'
            Title.Caption = 'Dt. Final'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_sit'
            Title.Caption = 'Sit.Inscrição'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_sie'
            Title.Caption = 'Sit.Beneficiário'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_conveniado'
            Title.Caption = 'Cód.'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_con'
            Title.Caption = 'Nome do Conveniado'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs_bth'
            Title.Caption = 'Observação'
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtsistema_bth'
            Title.Caption = 'Dt. Sistema'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_usu'
            Title.Caption = 'Usuário'
            Width = 63
            Visible = True
          end>
      end
      object pnl_filtro: TPanel
        Tag = -1
        Left = 1
        Top = 1
        Width = 796
        Height = 72
        Align = alTop
        Alignment = taLeftJustify
        TabOrder = 11
        object Label1: TLabel
          Left = 5
          Top = 9
          Width = 248
          Height = 13
          Caption = 
            'Período de                                                      ' +
            '      até'
        end
        object edt_dtinicial: TDCDateEdit
          Tag = -5
          Left = 84
          Top = 5
          Width = 141
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtfinal: TDCDateEdit
          Tag = -5
          Left = 261
          Top = 5
          Width = 141
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object rdg_indfiltro: TRadioGroup
          Left = 5
          Top = 31
          Width = 396
          Height = 34
          Caption = 'Índice de filtro'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Dt. Início'
            'Dt. Final')
          TabOrder = 2
        end
        object btn_localizar: TPDJButton
          Left = 634
          Top = 27
          Width = 117
          Height = 37
          Hint = 'LOCALIZAR'
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
        object btn_limpar: TPDJButton
          Left = 753
          Top = 27
          Width = 41
          Height = 37
          Hint = 'Limpa Situação para nova pesquisa'
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
          TabOrder = 4
        end
        object dbe_cod_beneficiario: TDBEdit
          Left = 432
          Top = 48
          Width = 25
          Height = 21
          DataField = 'cod_beneficiario'
          DataSource = DataSource1
          TabOrder = 5
          Visible = False
        end
        object dbe_titulacarteiben: TDBEdit
          Left = 456
          Top = 49
          Width = 25
          Height = 21
          DataField = 'titulacartei_ben'
          DataSource = DataSource1
          TabOrder = 6
          Visible = False
        end
      end
      object pnl_indices: TPanel
        Left = 1
        Top = 372
        Width = 1436
        Height = 81
        TabOrder = 12
        object Label11: TLabel
          Left = 5
          Top = 60
          Width = 52
          Height = 13
          Caption = 'Localizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton6: TSpeedButton
          Left = 341
          Top = 55
          Width = 26
          Height = 22
          Hint = 'Localizar conforme o texto digitado'
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
        object lbl_total: TLabel
          Left = 5
          Top = 2
          Width = 5
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rdg_indice: TRadioGroup
          Left = 5
          Top = 18
          Width = 775
          Height = 35
          Caption = 'Índice de Pesquisa '
          Columns = 5
          ItemIndex = 0
          Items.Strings = (
            'Inscrição'
            'Nome'
            'Dt. Início'
            'Dt. Final'
            'Conveniado')
          TabOrder = 0
          OnClick = rdg_indiceClick
        end
        object edt_localizar: TEdit
          Left = 78
          Top = 55
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object pgb_registros: TProgressBar
          Left = 530
          Top = 57
          Width = 264
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
      end
      object btn_imprimir: TPDJButton
        Left = 654
        Top = 460
        Width = 109
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
        OnClick = btn_imprimirClick
        TabOrder = 13
      end
      object btn_exportaexcel: TPDJButton
        Left = 773
        Top = 460
        Width = 21
        Height = 25
        Hint = 'Exportar Registros p/Excel'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
          2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
          722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
          FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
          7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
        GlyphHot.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          180000000000000300000000000000000000000000000000000039724B39724B
          39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
          301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
          966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
          EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
          D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
          EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
          EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
          2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
          512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
          F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
          8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
          BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
          F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
          E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
          AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
          FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
          03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
          F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
          FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
          EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
          FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
          AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
          8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
          966A548E664C87614C876146805C407A56407A5639724B39724B}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_exportaexcelClick
        ShowHint = True
        TabOrder = 14
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
    Left = 368
    Top = 465
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_med_benefTratamentoHospReferencia
    Left = 393
    Top = 465
  end
  object SaveDialog: TSaveDialog
    Left = 424
    Top = 465
  end
end
