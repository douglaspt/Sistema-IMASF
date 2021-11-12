inherited Frm_Mov_2043: TFrm_Mov_2043
  Caption = 'Frm_Mov_2043'
  ClientHeight = 582
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
  end
  inherited Panel3: TPanel
    Height = 489
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 487
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object lbl_total: TLabel
          Left = 470
          Top = 318
          Width = 8
          Height = 13
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_linha: TLabel
          Left = 4
          Top = 414
          Width = 24
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object SpeedButton1: TSpeedButton
          Left = 640
          Top = 312
          Width = 23
          Height = 22
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8008888888888888888888888888888808808888888888888888888888800880
            F878088888888888888888888808800708780888888888888888888887788800
            78780888888888888888888887F8787F88780888888888887008888887F87807
            F878088888888887B33088888808780F0878088888888700BB70888880787800
            787808888888733BB70088887F88787F8878088888887BBB7030888887F8787F
            8878088888700BB70308888888087807F87808888733BB703088888880787807
            F87708887BBBB703088888887F88787F88F708887BBB7030888888887F8877F8
            8F887080BBB703088888888887F87F88F000000BBB7030888888888887F7F880
            0777777BB7030888888888887F7F88077BBBBBBB7030888888888887F87F807B
            BBBBBBB8B30888888888887F887F80BBBB8B8B8B83088888888887F88F7F0BBB
            B0B0B8B8B308888888887F88F87F7BBBBB0B0B8B8308888888887F888F877BBB
            BBB0B0B8B308888888887F88F8007BBB770B0B0B8308888888887F88807F7BB0
            F880B0B83088888888887F88F0787BB00F80BBB830888888888887F8807707B0
            07F0BB83088888888888887F88000877000BB3308888888888888887FFF07870
            8888300888888888888888887770777F77770888888888888888888888807FFF
            7088888888888888888888888888000008888888888888888888}
          Visible = False
          OnClick = SpeedButton1Click
        end
        object PDJButton3: TPDJButton
          Left = 80
          Top = 53
          Width = 320
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Carregar Arquivo de Baixa'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton3Click
          TabOrder = 0
        end
        object PDJButton1: TPDJButton
          Left = 80
          Top = 86
          Width = 320
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Efetuar Baixas'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 1
        end
        object dbg_itemservico: TDBGrid
          Left = 22
          Top = 124
          Width = 475
          Height = 184
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbg_itemservicoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_empresafolha'
              Title.Caption = 'Emp.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'matriculadebito_seg'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'digitomatdeb_seg'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'inscricao_ben'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_tarifa'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vldesconto'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_statusbaixa'
              Title.Caption = 'Status'
              Width = 40
              Visible = True
            end>
        end
        object btn_pesquisar: TPDJButton
          Left = 80
          Top = 335
          Width = 320
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Consultar descontos com problemas na baixa'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_pesquisarClick
          TabOrder = 3
        end
        object ProgressBar1: TProgressBar
          Left = 4
          Top = 433
          Width = 764
          Height = 24
          Min = 0
          Max = 100
          TabOrder = 4
          Visible = False
        end
        object edt_aleatorio: TEdit
          Left = 520
          Top = 291
          Width = 115
          Height = 45
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
        object edt_ver: TEdit
          Left = 520
          Top = 347
          Width = 115
          Height = 21
          MaxLength = 4
          TabOrder = 6
          Visible = False
          OnEnter = edt_verEnter
        end
        object btn_cont: TPDJButton
          Left = 643
          Top = 257
          Width = 50
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          ButtonKind = skOK
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000808080008080800000000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000808080008080
            8000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080008080
            8000808080008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            80008080800080808000C0C0C000808080008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C00080808000808080000000000080808000C0C0C000808080008080
            8000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00080808000808080000000000080808000FF00
            FF00C0C0C0008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C000808080000000
            0000FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C000C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            800080808000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0C0C0008080800080808000000000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080000000
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
            C000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          GlyphHot.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF0000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF0000000080000000800000FF000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000008000000080
            0000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000008000000080
            0000008000000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            0000008000000080000000FF0000008000000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF00000080000000800000FF0000008080800000FF0000008000000080
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF00000080000000800000FF00000080808000FF00
            FF0000FF00000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000FF00
            0000FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF000000FF0000FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            000000800000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FF00000080000000800000FF0000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF00
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF0000FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          Default = True
          Caption = 'Cont'
          OnClick = btn_contClick
          Visible = False
          TabOrder = 7
        end
        object Button1: TButton
          Left = 568
          Top = 112
          Width = 113
          Height = 25
          Caption = 'Ajustar Baixas'
          TabOrder = 8
          Visible = False
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 656
          Top = 152
          Width = 75
          Height = 25
          Caption = 'Commit'
          TabOrder = 9
          Visible = False
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 656
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Rollback'
          TabOrder = 10
          Visible = False
          OnClick = Button3Click
        end
        object btn_exportar: TPDJButton
          Left = 407
          Top = 335
          Width = 22
          Height = 25
          Hint = 'Exportar descontos com problema na baixa'
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
          OnClick = btn_exportarClick
          ShowHint = True
          TabOrder = 11
        end
        object btn_ajustar: TPDJButton
          Left = 80
          Top = 379
          Width = 320
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Ajustar descontos com problemas na baixa'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_ajustarClick
          Visible = False
          TabOrder = 12
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                             Sit' +
            'uação'
          TabOrder = 13
          object cbx_cod_mes: TDCComboBox
            Tag = -1
            Left = 158
            Top = 5
            Width = 157
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
          object edt_ano: TDCEdit
            Left = 317
            Top = 5
            Width = 45
            Height = 21
            TabOrder = 1
          end
          object cbx_cod_statusAtivo: TDCComboBox
            Left = 484
            Top = 5
            Width = 125
            Height = 21
            Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
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
  object Query1: TQuery
    DatabaseName = 'bd_imasf'
    Left = 560
    Top = 448
  end
  object Query2: TQuery
    DatabaseName = 'bd_imasf'
    Left = 600
    Top = 448
  end
  object Query3: TQuery
    DatabaseName = 'bd_imasf'
    SQL.Strings = (
      
        'select cod_empresafolha, matriculadebito_seg, digitomatdeb_seg, ' +
        'inscricao_ben, cod_tarifa, vldesconto, cod_statusbaixa'
      
        'from dbo.tbl_baixadesconto where dtreferencia_flh = '#39'01/01/2000'#39 +
        ' and cod_tarifa <> 575 '
      
        'and cod_statusbaixa in (0,2) order by cod_empresafolha, cod_tari' +
        'fa, matriculadebito_seg')
    Left = 640
    Top = 445
    object Query3cod_empresafolha: TIntegerField
      DisplayLabel = 'Cod. Emp.'
      FieldName = 'cod_empresafolha'
      Origin = 'BD_IMASF.tbl_baixadesconto.cod_empresafolha'
    end
    object Query3matriculadebito_seg: TIntegerField
      DisplayLabel = 'Matrícula'
      FieldName = 'matriculadebito_seg'
      Origin = 'BD_IMASF.tbl_baixadesconto.matriculadebito_seg'
    end
    object Query3digitomatdeb_seg: TIntegerField
      DisplayLabel = 'Dig.'
      FieldName = 'digitomatdeb_seg'
      Origin = 'BD_IMASF.tbl_baixadesconto.digitomatdeb_seg'
    end
    object Query3inscricao_ben: TIntegerField
      DisplayLabel = 'Inscrição'
      FieldName = 'inscricao_ben'
      Origin = 'BD_IMASF.tbl_baixadesconto.inscricao_ben'
    end
    object Query3cod_tarifa: TIntegerField
      DisplayLabel = 'Cod. Tarifa'
      FieldName = 'cod_tarifa'
      Origin = 'BD_IMASF.tbl_baixadesconto.cod_tarifa'
    end
    object Query3vldesconto: TFloatField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'vldesconto'
      Origin = 'BD_IMASF.tbl_baixadesconto.vldesconto'
      DisplayFormat = '###,###,##0.00'
    end
    object Query3cod_statusbaixa: TStringField
      FieldName = 'cod_statusbaixa'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query3
    Left = 724
    Top = 391
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selecão de movimento para leitura'
    Left = 717
    Top = 364
  end
  object SaveDialog: TSaveDialog
    Left = 761
    Top = 43
  end
end
