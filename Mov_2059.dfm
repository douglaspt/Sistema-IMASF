inherited Frm_Mov_2059: TFrm_Mov_2059
  Caption = 'Frm_Mov_2059'
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
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 796
        Height = 486
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados'
          object Label11: TLabel
            Left = 19
            Top = 404
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
            Top = 395
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
            Left = 0
            Top = 345
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
          object edt_digitomatdeb_seg: TBEdit
            Tag = 1
            Left = 258
            Top = 213
            Width = 25
            Height = 21
            Color = clInfoBk
            MaxLength = 250
            ReadOnly = True
            TabOrder = 5
            Visible = False
            NumbersOnly = False
          end
          object edt_matriculadebito_seg: TDCEdit
            Tag = 1
            Left = 137
            Top = 213
            Width = 90
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 4
            Visible = False
            EditMask = '99999'
          end
          object Panel4: TPanel
            Tag = -2
            Left = 38
            Top = 108
            Width = 645
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Inscrição'
            TabOrder = 0
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
          object Panel7: TPanel
            Tag = -1
            Left = 38
            Top = 140
            Width = 645
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Data Adesão                                                  ' +
              '                    Data Final           '
            TabOrder = 1
            object edt_dtAdesaoBEM_adb: TDCDateEdit
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
            object edt_dtFinalBEM_adb: TDCDateEdit
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
          object Panel5: TPanel
            Tag = -1
            Left = 38
            Top = 172
            Width = 645
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Dt. Sistema                                                 ' +
              '                    Usuário'
            TabOrder = 2
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
            object edt_dtsistema_adb: TBDateEdit
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
          object dbg_conveniado: TDBGrid
            Left = 0
            Top = 84
            Width = 783
            Height = 258
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = dbg_conveniadoDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'inscricao_ben'
                Title.Caption = 'Inscr.'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'titulacartei_ben'
                Title.Caption = 'Tit.'
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_ben'
                Title.Caption = 'Nome'
                Width = 276
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtAdesaoBEM_adb'
                Title.Caption = 'Dt. Inicio'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtfinalBEM_adb'
                Title.Caption = 'Dt. Final'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_usu'
                Title.Caption = 'Usuário'
                Visible = True
              end>
          end
          object rdg_indice: TRadioGroup
            Left = 0
            Top = 358
            Width = 786
            Height = 35
            Caption = 'Índice de Pesquisa '
            Columns = 4
            ItemIndex = 0
            Items.Strings = (
              'Inscrição'
              'Nome'
              'Dt. Início'
              'Dt. Final')
            TabOrder = 6
            OnClick = rdg_indiceClick
          end
          object edt_localizar: TEdit
            Left = 78
            Top = 396
            Width = 257
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object btn_novo: TPDJButton
            Left = 1
            Top = 432
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
            TabOrder = 8
          end
          object btn_alterar: TPDJButton
            Left = 134
            Top = 432
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
            TabOrder = 9
          end
          object btn_Salvar: TPDJButton
            Left = 268
            Top = 432
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
            TabOrder = 10
          end
          object btn_cancelar: TPDJButton
            Left = 401
            Top = 432
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
            TabOrder = 11
          end
          object btn_Remover: TPDJButton
            Left = 535
            Top = 432
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
            Visible = False
            TabStop = True
            TabOrder = 12
          end
          object btn_imprimir: TPDJButton
            Left = 668
            Top = 432
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
          object Panel1: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 788
            Height = 72
            Align = alTop
            Alignment = taLeftJustify
            TabOrder = 14
            object Label1: TLabel
              Left = 5
              Top = 9
              Width = 230
              Height = 13
              Caption = 
                'Período de:                                                     ' +
                'até'
            end
            object edt_dtinicial: TDCDateEdit
              Tag = -5
              Left = 69
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
              Left = 246
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
              Width = 379
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
              Left = 659
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
              ShowHint = True
              TabOrder = 3
            end
            object rgd_ativo: TRadioGroup
              Left = 397
              Top = 31
              Width = 245
              Height = 34
              Caption = 'Beneficiário '
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Ativo'
                'Inativo')
              TabOrder = 4
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
    Left = 664
    Top = 473
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_adesaoBEM
    Left = 633
    Top = 469
  end
end
