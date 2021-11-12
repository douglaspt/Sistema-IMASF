inherited Frm_Mov_2071: TFrm_Mov_2071
  Caption = 'Frm_Mov_2071'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 40
    Height = 490
    Align = alNone
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 488
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Simpro'
        OnShow = TabSheet1Show
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 790
          Height = 460
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = 'Ítens'
            TabVisible = False
            object lbl_simpro: TLabel
              Left = 2
              Top = 435
              Width = 5
              Height = 13
              Caption = '.'
            end
            object GroupBox9: TGroupBox
              Left = 260
              Top = 2
              Width = 521
              Height = 41
              Caption = 'Localizar '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object btn_pesquisa: TSpeedButton
                Left = 456
                Top = 14
                Width = 26
                Height = 22
                Hint = 
                  'Localizar conforme o texto digitado, se campo em branco, exibe t' +
                  'odos os registros.'
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
                ParentShowHint = False
                ShowHint = True
                OnClick = btn_pesquisaClick
              end
              object Label1: TLabel
                Left = 16
                Top = 19
                Width = 33
                Height = 13
                Caption = 'Código'
              end
              object Label2: TLabel
                Left = 160
                Top = 19
                Width = 48
                Height = 13
                Caption = 'Descrição'
              end
              object edt_codigo: TBEdit
                Left = 60
                Top = 13
                Width = 73
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = edt_codigoExit
                OnKeyPress = edt_codigoKeyPress
                NumbersOnly = False
              end
              object edt_descricao: TBEdit
                Left = 219
                Top = 13
                Width = 193
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnExit = edt_codigoExit
                NumbersOnly = False
              end
              object btn_limpar: TPDJButton
                Left = 488
                Top = 14
                Width = 26
                Height = 22
                Hint = 'Limpa Filtros'
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
                TabOrder = 2
              end
            end
            object dbg_simpro: TDBGrid
              Left = 1
              Top = 50
              Width = 778
              Height = 371
              DataSource = dts_Simpro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = dbg_simproDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_simpro'
                  Title.Caption = 'Código'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Title.Caption = 'Descrição'
                  Width = 468
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fabrica'
                  Title.Caption = 'Empresa'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtvigenciainic'
                  Title.Caption = 'Dt.Vigência'
                  Width = 75
                  Visible = True
                end>
            end
            object RadioGroup1: TRadioGroup
              Left = 2
              Top = 2
              Width = 257
              Height = 41
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'índices de Pesquisa '
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Código'
                'Descrição')
              ParentFont = False
              TabOrder = 2
              OnClick = RadioGroup1Click
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Detalhes'
            ImageIndex = 1
            TabVisible = False
            OnEnter = TabSheet5Enter
            object Label3: TLabel
              Left = 2
              Top = 4
              Width = 40
              Height = 13
              Caption = 'Código'
            end
            object Label4: TLabel
              Left = 162
              Top = 4
              Width = 58
              Height = 13
              Caption = 'Descrição'
            end
            object btn_voltar: TSpeedButton
              Left = 672
              Top = 424
              Width = 104
              Height = 26
              Caption = '&Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarClick
            end
            object lbl_simproh: TLabel
              Left = 2
              Top = 436
              Width = 5
              Height = 13
              Caption = '.'
            end
            object Label5: TLabel
              Left = 2
              Top = 25
              Width = 60
              Height = 13
              Caption = 'Qtde.Emb.'
            end
            object Label8: TLabel
              Left = 363
              Top = 25
              Width = 48
              Height = 13
              Caption = 'Unidade'
            end
            object Label9: TLabel
              Left = 162
              Top = 25
              Width = 94
              Height = 13
              Caption = 'Tipo Embalagem'
            end
            object Label11: TLabel
              Left = 523
              Top = 25
              Width = 76
              Height = 13
              Caption = 'Classificação'
            end
            object dbe_cod_simpro: TDBEdit
              Left = 65
              Top = 2
              Width = 90
              Height = 21
              Color = clInfoBk
              DataField = 'cod_simpro'
              DataSource = dts_Simpro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object edt_descricao1: TDBEdit
              Left = 265
              Top = 2
              Width = 511
              Height = 21
              Color = clInfoBk
              DataField = 'descricao'
              DataSource = dts_Simpro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object dbg_simprohistorico: TDBGrid
              Left = 2
              Top = 51
              Width = 777
              Height = 366
              DataSource = dts_simprohistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'dtvigenciainic'
                  Title.Caption = 'Data'
                  Width = 65
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'pc_em_fab'
                  Title.Caption = 'Preço'
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'pc_fr_fab'
                  Title.Caption = 'Preço Frac.'
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'pc_em_ven'
                  Title.Caption = 'Preço Máx.'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'identif'
                  Title.Caption = 'Identificação'
                  Width = 123
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tip_alt'
                  Title.Caption = 'Tipo'
                  Width = 123
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cd_merc'
                  Title.Caption = 'Mercado'
                  Width = 117
                  Visible = True
                end>
            end
            object dbe_qtde_embal: TDBEdit
              Left = 65
              Top = 23
              Width = 90
              Height = 21
              Color = clInfoBk
              DataField = 'qtde_embal'
              DataSource = dts_simprohistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edt_tp_embal: TDBEdit
              Left = 265
              Top = 23
              Width = 90
              Height = 21
              Color = clInfoBk
              DataField = 'tp_embal'
              DataSource = dts_simprohistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edt_tp_fracao: TDBEdit
              Left = 422
              Top = 23
              Width = 90
              Height = 21
              Color = clInfoBk
              DataField = 'tp_fracao'
              DataSource = dts_simprohistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edt_cd_classif: TDBEdit
              Left = 603
              Top = 23
              Width = 174
              Height = 21
              Color = clInfoBk
              DataField = 'cd_classif'
              DataSource = dts_simprohistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Brasíndice'
        ImageIndex = 1
        OnEnter = TabSheet2Enter
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 790
          Height = 460
          ActivePage = TabSheet3
          Align = alClient
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'Ítens'
            TabVisible = False
            object lbl_brasindice: TLabel
              Left = 2
              Top = 435
              Width = 5
              Height = 13
              Caption = '.'
            end
            object GroupBox1: TGroupBox
              Left = 260
              Top = 2
              Width = 521
              Height = 41
              Caption = 'Localizar '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object btn_pesquisabrasindice: TSpeedButton
                Left = 456
                Top = 14
                Width = 26
                Height = 22
                Hint = 
                  'Localizar conforme o texto digitado, se campo em branco, exibe t' +
                  'odos os registros.'
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
                ParentShowHint = False
                ShowHint = True
                OnClick = btn_pesquisabrasindiceClick
              end
              object Label6: TLabel
                Left = 16
                Top = 19
                Width = 33
                Height = 13
                Caption = 'Código'
              end
              object Label7: TLabel
                Left = 160
                Top = 19
                Width = 48
                Height = 13
                Caption = 'Descrição'
              end
              object edt_codigobras: TBEdit
                Left = 60
                Top = 13
                Width = 73
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = edt_codigobrasExit
                OnKeyPress = edt_codigobrasKeyPress
                NumbersOnly = False
              end
              object edt_descricaobras: TBEdit
                Left = 219
                Top = 13
                Width = 193
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnExit = edt_descricaobrasExit
                NumbersOnly = False
              end
              object btn_limparbrasindice: TPDJButton
                Left = 488
                Top = 14
                Width = 26
                Height = 22
                Hint = 'Limpa Filtros'
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
                OnClick = btn_limparbrasindiceClick
                ShowHint = True
                TabOrder = 2
              end
            end
            object dbg_brasindice: TDBGrid
              Left = 1
              Top = 50
              Width = 778
              Height = 375
              DataSource = dts_brasindice
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = dbg_brasindiceDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_brasindice'
                  Title.Caption = 'Código'
                  Width = 56
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_medicamento'
                  Title.Caption = 'Descrição'
                  Width = 488
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_laboratorio'
                  Title.Caption = 'Empresa'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtvigencia_bic'
                  Title.Caption = 'Dt.Vigência'
                  Width = 75
                  Visible = True
                end>
            end
            object RadioGroup2: TRadioGroup
              Left = 2
              Top = 2
              Width = 257
              Height = 41
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'índices de Pesquisa '
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Código'
                'Descrição')
              ParentFont = False
              TabOrder = 2
              OnClick = RadioGroup2Click
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Detalhes'
            ImageIndex = 1
            TabVisible = False
            OnEnter = TabSheet7Enter
            object btn_voltarbrasindice: TSpeedButton
              Left = 672
              Top = 423
              Width = 104
              Height = 26
              Caption = '&Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarbrasindiceClick
            end
            object lbl_brasindiceh: TLabel
              Left = 2
              Top = 430
              Width = 5
              Height = 13
              Caption = '.'
            end
            object dbg_brasindicehistorico: TDBGrid
              Left = 1
              Top = 127
              Width = 778
              Height = 291
              DataSource = dts_brasindicehistorico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                  FieldName = 'dtvigencia_bic'
                  Title.Caption = 'Dt.Vigência'
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde_fracionamento'
                  Title.Caption = 'Qt.Frac.'
                  Width = 48
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'preco_pfb_medicamento'
                  Title.Caption = 'PF'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'preco_pfb_medicamentofrac'
                  Title.Caption = 'PF Frac.'
                  Width = 51
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'preco_pmc_medicamento'
                  Title.Caption = 'PMC'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'preco_pmc_medicamentofrac'
                  Title.Caption = 'PMC Frac.'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'edicao_ultimaalteracao'
                  Title.Caption = 'U.Edic.'
                  Width = 46
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ipi'
                  Title.Caption = '%IPI'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'flag_portaria_pis_cofins'
                  Title.Caption = 'Pis/Cof.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_barras'
                  Title.Caption = 'Cód.Barras'
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'medicamento_generico'
                  Title.Caption = 'Gen.'
                  Width = 32
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_tuss'
                  Title.Caption = 'Cód.TUSS'
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_tipocondcomerc'
                  Title.Caption = 'Tipo Medicamento'
                  Width = 136
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Tag = -1
              Left = 0
              Top = 0
              Width = 782
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 
                '  Código Brasíndice                                            D' +
                'escrição'
              ParentBiDiMode = False
              TabOrder = 1
              object edt_cod_brasindice: TDBEdit
                Left = 143
                Top = 6
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'cod_brasindice'
                DataSource = dts_brasindice
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object edt_nome_medicamento: TDBEdit
                Left = 362
                Top = 6
                Width = 412
                Height = 21
                Color = clInfoBk
                DataField = 'nome_medicamento'
                DataSource = dts_brasindice
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object Panel1: TPanel
              Tag = -1
              Left = 0
              Top = 32
              Width = 782
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 
                '  Cód.Laboratório                                               ' +
                ' Descrição'
              ParentBiDiMode = False
              TabOrder = 2
              object dbe_cod_laboratorio: TDBEdit
                Left = 143
                Top = 6
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'cod_laboratorio'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbe_nome_laboratorio: TDBEdit
                Left = 362
                Top = 6
                Width = 412
                Height = 21
                Color = clInfoBk
                DataField = 'nome_laboratorio'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object Panel4: TPanel
              Tag = -1
              Left = 0
              Top = 64
              Width = 782
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 
                '  Cód.Medicamento                                             De' +
                'scrição'
              ParentBiDiMode = False
              TabOrder = 3
              object dbe_cod_medicamento: TDBEdit
                Left = 143
                Top = 6
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'cod_medicamento'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbe_tuss: TDBEdit
                Left = 362
                Top = 6
                Width = 412
                Height = 21
                Color = clInfoBk
                DataField = 'nome_medicamento'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object Panel6: TPanel
              Tag = -1
              Left = 0
              Top = 96
              Width = 782
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 
                '  Cód.Apresentação                                            De' +
                'scrição'
              ParentBiDiMode = False
              TabOrder = 4
              object dbe_cod_apresentacao: TDBEdit
                Left = 143
                Top = 6
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'cod_apresentacao'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbe_nome_apresentacao: TDBEdit
                Left = 362
                Top = 6
                Width = 412
                Height = 21
                Color = clInfoBk
                DataField = 'nome_apresentacao'
                DataSource = dts_brasindicehistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Carga de Tabelas'
        ImageIndex = 2
        OnEnter = TabSheet10Enter
        object lbl_linha: TLabel
          Left = 2
          Top = 440
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 2
          Top = 192
          Width = 73
          Height = 13
          Caption = 'Log de Erros'
        end
        object pgb_tabelas: TProgressBar
          Left = 2
          Top = 420
          Width = 776
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
        object mem_log: TMemo
          Left = 2
          Top = 206
          Width = 776
          Height = 209
          ReadOnly = True
          TabOrder = 3
        end
        object GroupBox2: TGroupBox
          Left = 433
          Top = 16
          Width = 350
          Height = 170
          Caption = 'Brasíndice (Medicamentos) '
          TabOrder = 5
          object Label10: TLabel
            Left = 141
            Top = 15
            Width = 60
            Height = 13
            Caption = 'A partir de'
          end
          object edt_dtinicial: TDCDateEdit
            Tag = -5
            Left = 108
            Top = 29
            Width = 141
            Height = 21
            TabOrder = 0
            OnExit = edt_dtinicialExit
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object btn_cargabrasindice: TPDJButton
          Left = 518
          Top = 153
          Width = 184
          Height = 24
          Hint = 'Carrega arquivos da Brasíndice após analisados.'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Enabled = False
          Caption = 'C&arga'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cargabrasindiceClick
          ShowHint = True
          TabOrder = 0
        end
        object btn_usocomum_pmc: TPDJButton
          Left = 622
          Top = 73
          Width = 155
          Height = 24
          Hint = 
            'Analisa arquivos da Brasíndice medicamentos (Exclusivamente de u' +
            'so comum) PMC'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Enabled = False
          Caption = '&Analisa Uso Comum PMC'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_usocomum_pmcClick
          ShowHint = True
          TabOrder = 4
        end
        object btn_restritohospital: TPDJButton
          Left = 518
          Top = 100
          Width = 184
          Height = 24
          Hint = 
            'Analisa arquivos da Brasíndice medicamentos (Exclusivamente de u' +
            'so restrito hospital)'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Enabled = False
          Caption = '&Analisa Uso Restrito Hospital'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_restritohospitalClick
          ShowHint = True
          TabOrder = 6
        end
        object btn_oncologico: TPDJButton
          Left = 518
          Top = 126
          Width = 184
          Height = 24
          Hint = 
            'Analisa arquivos da Brasíndice medicamentos (Exclusivamente onco' +
            'lógico)'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Enabled = False
          Caption = '&Analisa Oncológico'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_oncologicoClick
          ShowHint = True
          TabOrder = 7
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 16
          Width = 350
          Height = 170
          Caption = 'Simpro (Materiais) '
          TabOrder = 8
        end
        object btn_cargasimpro: TPDJButton
          Left = 60
          Top = 89
          Width = 224
          Height = 24
          Hint = 'Carrega arquivos da Simpro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'C&arga'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cargasimproClick
          ShowHint = True
          TabOrder = 1
        end
        object btn_usocomum_pfb: TPDJButton
          Left = 438
          Top = 73
          Width = 155
          Height = 24
          Hint = 
            'Analisa arquivos da Brasíndice medicamentos (Exclusivamente de u' +
            'so comum) PFB'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Enabled = False
          Caption = '&Analisa Uso Comum PFB'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_usocomum_pfbClick
          ShowHint = True
          TabOrder = 9
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Históricos'
        ImageIndex = 3
        OnShow = TabSheet9Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 421
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
    Left = 544
    Top = 531
  end
  object dlg_leitura: TOpenDialog
    Filter = 'csv|*.csv'
    Title = 'IMASF - Selecão de movimento para leitura'
    Left = 620
    Top = 533
  end
  object dts_Simpro: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_simpro
    Left = 516
    Top = 531
  end
  object dts_simprohistorico: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_simprohistorico
    Left = 492
    Top = 531
  end
  object dts_brasindice: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_brasindice
    Left = 468
    Top = 531
  end
  object dts_brasindicehistorico: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_brasindicehistorico
    Left = 444
    Top = 531
  end
  object salva_arquivo: TSaveDialog
    DefaultExt = 'txt'
    Left = 592
    Top = 529
  end
end
