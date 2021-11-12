inherited Frm_Mov_2040: TFrm_Mov_2040
  Caption = 'Frm_Mov_2040'
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
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object btn_avancar: TPDJButton
          Left = 666
          Top = 396
          Width = 102
          Height = 25
          Hint = 'Voltar para a tela principal'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Avançar  >>'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_avancarClick
          TabOrder = 0
        end
        object rdb_alteracao: TRadioGroup
          Left = 16
          Top = 16
          Width = 529
          Height = 321
          Caption = 'Tipo de Alteração'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            '1)Emissão de Ofício Amigável'
            '2)Imprimir Etiqueta de Endereçamento'
            '3)Emissão de Notificação'
            '4)Emissão de Certidão de Dívida Ativa'
            
              '5)Arquivo de Envio Cartório - Geração de Arquivo Lay Out Cartóri' +
              'o'
            '6)Baixa de Cartório - Upload de Arquivo'
            '7)Liquidação de Protestados - Certidão Negativa'
            '8)Baixa de Protestos - Geração de Arquivo Lay Out Cartório')
          ParentFont = False
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Oficio'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object btn_voltar: TPDJButton
          Left = 20
          Top = 431
          Width = 102
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '<<  &Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_voltarClick
          TabOrder = 3
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
            '                                                                ' +
            '      Local de Desconto'
          TabOrder = 0
          object cbx_cod_mes: TDCComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
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
            Left = 380
            Top = 5
            Width = 63
            Height = 21
            MaxLength = 4
            TabOrder = 1
            EditMask = '9999'
          end
          object cbx_cod_empresafolha: TDCComboBox
            Tag = -1
            Left = 552
            Top = 5
            Width = 220
            Height = 21
            TabOrder = 2
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel6: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Situação do Desconto                                        ' +
            '                                                                ' +
            'Matricula                                             Inscrição ' +
            '     '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object cbx_cod_sitdesconto: TDCComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object edt_inscricao: TDCEdit
            Left = 666
            Top = 5
            Width = 105
            Height = 21
            MaxLength = 6
            TabOrder = 1
          end
          object edt_matricula: TDCEdit
            Left = 490
            Top = 5
            Width = 105
            Height = 21
            MaxLength = 6
            TabOrder = 2
          end
        end
        object PageControl2: TPageControl
          Left = 0
          Top = 64
          Width = 785
          Height = 360
          ActivePage = TabSheet7
          TabOrder = 2
          object TabSheet6: TTabSheet
            Caption = 'Descontos por Matricula'
            object lbl_total: TLabel
              Left = 8
              Top = 252
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
            object btn_atualizar: TSpeedButton
              Left = 601
              Top = 2
              Width = 139
              Height = 25
              Caption = '&Atualizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                06020000424D0602000000000000760000002800000028000000140000000100
                0400000000009001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
                7FF330BFBFBF03307333703337F3FFFF7F37733377F330F0000B033333333033
                37F777737F333333F7F33011111103333330703337F333337F33333777FF301F
                FFF103333330000337F333337F33333777733011111103333330003337F3FF3F
                7F333337773330F00B0003333330033337F7737773333337733330BFBF003333
                3330333337FFFF7733333337333330000003333333333333377777733333FFFF
                FFFF3333333333300000000333333F3333377777777F333303333330BFBFBF03
                33337F333337F3FFFF7F333003333330F0000B0333377F333337F777737F3300
                03333330BFBFBF0333777F333337F3FFFF7F300003333330F0000B0337777F33
                3337F777737F330703333330BFBFBF03337773333337F3FF3F7F330333333330
                F00B0003337FF333FF37F7737773330733370330BFBF00333377FFF77337FFFF
                7733333000003330000003333337777733377777733333333333333333333333
                33333333333333333333}
              NumGlyphs = 2
              ParentFont = False
              OnClick = btn_atualizarClick
            end
            object dbg_descontos: TDBGrid
              Left = 5
              Top = 31
              Width = 763
              Height = 218
              DataSource = DataSource1
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
                  FieldName = 'inscricao_ben'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_empresafolha'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'matriculadebito_seg'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'digitomatdeb_seg'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomeTit_ben'
                  Width = 271
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vldesconto_adf'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'numOficio_hda'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ano_hda'
                  Width = 32
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtEmissao_hda'
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tldesc'
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dias'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtMenorDesc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cpfTit_ben'
                  Width = 97
                  Visible = True
                end>
            end
            object GroupBox1: TGroupBox
              Left = 5
              Top = 269
              Width = 764
              Height = 62
              Caption = 'Emissão de Carta'
              TabOrder = 1
              object Label2: TLabel
                Left = 342
                Top = 43
                Width = 42
                Height = 13
                Caption = 'Nº Oficio'
              end
              object btn_oficioamigavel: TPDJButton
                Left = 341
                Top = 8
                Width = 188
                Height = 24
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
                Enabled = False
                Caption = 'Gerar Ofício Amigável'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_oficioamigavelClick
                TabOrder = 0
              end
              object RdB_TodasCartas: TRadioButton
                Left = 12
                Top = 17
                Width = 245
                Height = 17
                Caption = 'Imprimir Todos os Devedores'
                Checked = True
                TabOrder = 1
                TabStop = True
                OnClick = RdB_TodasCartasClick
              end
              object rdb_selecionados: TRadioButton
                Left = 12
                Top = 36
                Width = 261
                Height = 17
                Caption = 'Imprimir somente os Devederes Selecionados'
                TabOrder = 2
                OnClick = rdb_selecionadosClick
              end
              object btn_etiquetas: TPDJButton
                Left = 564
                Top = 34
                Width = 187
                Height = 24
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
                Caption = 'Envelope'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_etiquetasClick
                TabOrder = 3
              end
              object btn_notificacao: TPDJButton
                Left = 566
                Top = 8
                Width = 188
                Height = 24
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
                Enabled = False
                Caption = 'Emitir Notificação'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_notificacaoClick
                TabOrder = 4
              end
              object edt_matriculaseq: TDBEdit
                Left = 216
                Top = 9
                Width = 82
                Height = 21
                DataField = 'matriculadebito_seg'
                DataSource = DataSource1
                TabOrder = 5
                Visible = False
              end
              object edt_numoficio: TEdit
                Left = 392
                Top = 36
                Width = 81
                Height = 21
                TabOrder = 6
                Text = '01/2015'
              end
            end
            object rdg_tipooficio: TRadioGroup
              Left = 8
              Top = -2
              Width = 479
              Height = 29
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Todos'
                'Ofício Amigavel'
                'Emissão de Notificação')
              TabOrder = 2
              OnClick = rdg_tipooficioClick
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Descontos Detalhado'
            ImageIndex = 1
            OnShow = TabSheet7Show
            object lbl_qtdedescontos: TLabel
              Left = 18
              Top = 280
              Width = 129
              Height = 13
              Caption = 'Qtde. de Descontos: 0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_vltotal: TLabel
              Left = 546
              Top = 280
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'R$ 0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbg_descanalitico: TDBGrid
              Left = 5
              Top = 7
              Width = 763
              Height = 261
              DataSource = DataSource2
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
                  FieldName = 'inscricao_ben'
                  Width = 56
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_empresafolha'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'matriculadebito_seg'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'digitomatdeb_seg'
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_ben'
                  Width = 279
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_tarifa'
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vldesconto_adf'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtrefatraso_flh'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_descontofolha'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_sds'
                  Visible = True
                end>
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Divida Ativa'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object SpeedButton1: TSpeedButton
          Left = 620
          Top = 432
          Width = 93
          Height = 25
          Caption = '&Atualizar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            06020000424D0602000000000000760000002800000028000000140000000100
            0400000000009001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
            7FF330BFBFBF03307333703337F3FFFF7F37733377F330F0000B033333333033
            37F777737F333333F7F33011111103333330703337F333337F33333777FF301F
            FFF103333330000337F333337F33333777733011111103333330003337F3FF3F
            7F333337773330F00B0003333330033337F7737773333337733330BFBF003333
            3330333337FFFF7733333337333330000003333333333333377777733333FFFF
            FFFF3333333333300000000333333F3333377777777F333303333330BFBFBF03
            33337F333337F3FFFF7F333003333330F0000B0333377F333337F777737F3300
            03333330BFBFBF0333777F333337F3FFFF7F300003333330F0000B0337777F33
            3337F777737F330703333330BFBFBF03337773333337F3FF3F7F330333333330
            F00B0003337FF333FF37F7737773330733370330BFBF00333377FFF77337FFFF
            7733333000003330000003333337777733377777733333333333333333333333
            33333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = btn_atualizarClick
        end
        object PDJButton1: TPDJButton
          Left = 20
          Top = 420
          Width = 102
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '<<  &Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_voltarClick
          TabOrder = 0
        end
        object PageControl3: TPageControl
          Left = 0
          Top = 44
          Width = 785
          Height = 360
          ActivePage = TabSheet4
          TabOrder = 1
          object TabSheet4: TTabSheet
            Caption = 'Descontos por Matricula'
            object Label1: TLabel
              Left = 8
              Top = 252
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
            object DBGrid2: TDBGrid
              Left = 5
              Top = 6
              Width = 763
              Height = 240
              DataSource = DataSource1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
                  FieldName = 'inscricao_ben'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_empresafolha'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'matriculadebito_seg'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'digitomatdeb_seg'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomeTit_ben'
                  Width = 271
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vldesconto_adf'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'numOficio_hda'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ano_hda'
                  Width = 32
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtEmissao_hda'
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tldesc'
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dias'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtMenorDesc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cpfTit_ben'
                  Width = 97
                  Visible = True
                end>
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Descontos Detalhado'
            ImageIndex = 1
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
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_totalDividaBenefi
    Left = 697
    Top = 455
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_descontos
    Left = 747
    Top = 455
  end
end
