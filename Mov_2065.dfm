inherited Frm_Mov_2065: TFrm_Mov_2065
  Caption = 'Frm_Mov_2065'
  ClientHeight = 582
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    object btn_imprimir: TPDJButton
      Left = 566
      Top = 4
      Width = 109
      Height = 25
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
      Caption = 'Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      TabOrder = 1
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
        Top = 31
        Width = 796
        Height = 428
        ActivePage = TabSheet1
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'TabSheet1'
          TabVisible = False
          object lbl_total: TLabel
            Left = 2
            Top = 291
            Width = 167
            Height = 24
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label6: TLabel
            Left = 1
            Top = 245
            Width = 523
            Height = 13
            Caption = 
              'Para selecionar um ou mais descontos, clique na linha mantendo a' +
              ' tecla CTRL pressionada.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 1
            Top = 268
            Width = 73
            Height = 13
            Caption = 'Observa��o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_dtatualizacao: TLabel
            Left = 5
            Top = 2
            Width = 420
            Height = 13
            AutoSize = False
            Caption = 'Data da Atualiza��o: 0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object DBMemo1: TDBMemo
            Left = 79
            Top = 266
            Width = 492
            Height = 21
            DataField = 'obs_flh'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object btn_localizar: TPDJButton
            Left = 622
            Top = 1
            Width = 117
            Height = 37
            Hint = 'LOCALIZA DESCONTOS N�O QUITADOS PELO CPF'
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
            TabOrder = 1
          end
          object btn_limpa: TPDJButton
            Left = 744
            Top = 1
            Width = 40
            Height = 37
            Hint = 'LIMPA PAR�METROS PARA EFETUAR UMA NOVA PESQUISA'
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
            OnClick = btn_limpaClick
            ShowHint = True
            TabOrder = 2
          end
          object dbg_descontos: TDBGrid
            Left = 2
            Top = 41
            Width = 783
            Height = 204
            DataSource = DataSource3
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
            OnCellClick = dbg_descontosCellClick
            OnDrawColumnCell = dbg_descontosDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'inscricao_ben'
                Title.Caption = 'Inscri��o'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'titulacartei_ben'
                Title.Caption = 'Tit.'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_empresafolha'
                Title.Caption = 'Emp'
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'matriculadebito_seg'
                Title.Caption = 'Matric.'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'digitomatdeb_seg'
                Title.Caption = 'Dig.'
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_fpm'
                Title.Caption = 'Nome do Benefici�rio'
                Width = 207
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_sit'
                Title.Caption = 'Sit.Benef.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tse'
                Title.Caption = 'Sit. FPM'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tdp'
                Title.Caption = 'Tipo Benef.'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_tarifa'
                Title.Caption = 'Tar.'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vldesconto_adf'
                Title.Caption = 'Vlr.Desc.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_sds'
                Title.Caption = 'Sit.Desc.'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtsitdesconto_flh'
                Title.Caption = 'Dt.Sit.Desconto'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtreferencia_flh'
                Title.Caption = 'Dt.Refer�ncia'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'parcelan_par'
                Title.Caption = 'Parc.'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nparcela_par'
                Title.Caption = 'N.Parc.'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlparcelado'
                Title.Caption = 'Vlr.Parcelado'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtdesconto_flh'
                Title.Caption = 'Dt.Desconto'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tar'
                Title.Caption = 'Nome da Tarifa'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nossonumero_flh'
                Title.Caption = 'Nosso Numero'
                Width = 155
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_descontofolha'
                Title.Caption = 'Cod. Desc. Interno'
                Visible = True
              end>
          end
          object pnl_matDebito: TPanel
            Tag = -1
            Left = 0
            Top = 321
            Width = 787
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Local                                                         ' +
              '   Matr�cula Destino                                    Dig.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
            object edt_matriculadebito_seg: TDCEdit
              Tag = -5
              Left = 305
              Top = 5
              Width = 92
              Height = 21
              Hint = 'MATR�CULA DO BENEFIC�RIO'
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnEnter = edt_matriculadebito_segEnter
              OnExit = edt_matriculadebito_segExit
              OnKeyUp = edt_matriculadebito_segKeyUp
              EditMask = '999999'
            end
            object edt_digitomatdeb_seg: TDCEdit
              Tag = -5
              Left = 432
              Top = 5
              Width = 24
              Height = 21
              Color = clInfoBk
              MaxLength = 1
              ReadOnly = True
              TabOrder = 2
              EditMask = '9'
            end
            object cb2_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 43
              Top = 5
              Width = 164
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnEnter = cb2_cod_empresafolhaEnter
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object pnl_alerta: TPanel
              Left = 480
              Top = 6
              Width = 306
              Height = 21
              BevelOuter = bvLowered
              Caption = 'BENEFICI�RIO CANCELADO'
              Color = clRed
              Font.Charset = ANSI_CHARSET
              Font.Color = clYellow
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              Visible = False
            end
          end
          object pnl_cpf: TPanel
            Tag = -1
            Left = 0
            Top = 353
            Width = 787
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome                                                          ' +
              '  Matr�cula                                                 CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
            object edt_cpfdestino: TDCEdit
              Tag = -5
              Left = 432
              Top = 5
              Width = 153
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 1
            end
            object edt_nomedestino: TDCEdit
              Tag = -5
              Left = 43
              Top = 3
              Width = 353
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              ReadOnly = True
              TabOrder = 0
              OnChange = edt_nomedestinoChange
            end
            object edt_cod_descontofolha: TDCEdit
              Tag = -5
              Left = 601
              Top = 5
              Width = 16
              Height = 21
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Visible = False
              OnKeyUp = edt_matriculadebito_segKeyUp
            end
            object edt_cod_sitbeneficiario: TDCEdit
              Tag = -5
              Left = 625
              Top = 3
              Width = 16
              Height = 21
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              Visible = False
              OnKeyUp = edt_matriculadebito_segKeyUp
            end
            object edt_cod_situacao_fpm: TDCEdit
              Tag = -5
              Left = 641
              Top = 3
              Width = 16
              Height = 21
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Visible = False
              OnKeyUp = edt_matriculadebito_segKeyUp
            end
          end
          object ckb_todos: TCheckBox
            Left = 2
            Top = 21
            Width = 167
            Height = 17
            Caption = 'Selecionar todos os Registros'
            TabOrder = 7
            OnClick = ckb_todosClick
          end
          object pnl_motivo: TPanel
            Tag = -1
            Left = 1
            Top = 385
            Width = 787
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Motivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object edt_htm_motivo: TDCEdit
              Tag = -5
              Left = 43
              Top = 5
              Width = 454
              Height = 21
              Hint = 'MATR�CULA DO BENEFIC�RIO'
              MaxLength = 60
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object btn_transfer: TPDJButton
            Left = 699
            Top = 262
            Width = 85
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Transferir'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_transferClick
            ShowHint = True
            TabOrder = 8
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
          TabVisible = False
          object lbl_tothist: TLabel
            Left = 2
            Top = 397
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
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 786
            Height = 393
            DataSource = DataSource1
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
                FieldName = 'cod_telasistema'
                Title.Caption = 'Tela'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtreferencia_flh'
                Title.Caption = 'Dt.Refer�ncia'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtalteracao_htm'
                Title.Caption = 'Dt.Altera��o'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_usu'
                Title.Caption = 'Usu�rio'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_empresafolha'
                Title.Caption = 'Emp.Orig.'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'matriculadebito_seg'
                Title.Caption = 'Matric.Orig.'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_empresafolha_dest'
                Title.Caption = 'Emp.Dest.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'matriculadebito_seg_dest'
                Title.Caption = 'Matric.Dest.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_descontofolha'
                Title.Caption = 'Cod.Desc.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vldesconto_adf'
                Title.Caption = 'Vlr.Desconto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_tarifa'
                Title.Caption = 'Tarifa'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs_flh'
                Title.Caption = 'Observa��o'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'htm_motivo'
                Title.Caption = 'Motivo'
                Width = 360
                Visible = True
              end>
          end
        end
      end
      object Panel5: TPanel
        Tag = -1
        Left = 1
        Top = 1
        Width = 796
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '                                                                ' +
          '                                                                ' +
          '                  Local de Desconto'
        TabOrder = 1
        object cbx_cod_empresafolha: TDCComboBox
          Tag = -5
          Left = 542
          Top = 3
          Width = 253
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = cbx_cod_empresafolhaExit
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
        object edt_inscricao_ben: TDCChoiceEdit
          Tag = -5
          Left = 3
          Top = 3
          Width = 93
          Height = 21
          Hint = 
            'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
            'squisar'
          Color = clWhite
          MaxLength = 10
          TabOrder = 1
          OnEnter = edt_inscricao_benEnter
          OnKeyDown = edt_inscricao_benKeyDown
          OnKeyPress = edt_cpf_benKeyPress
          Alignment = taRightJustify
          OnButtonClick = edt_inscricao_benButtonClick
          EditMask = '9999999'
        end
        object rdb_matricula: TRadioButton
          Left = 110
          Top = 7
          Width = 85
          Height = 17
          Caption = 'Matr�cula'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
          OnClick = rdb_matriculaClick
        end
        object rdb_benefi: TRadioButton
          Left = 203
          Top = 7
          Width = 85
          Height = 17
          Caption = 'Inscri��o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = rdb_benefiClick
        end
        object rdb_cpf: TRadioButton
          Left = 296
          Top = 7
          Width = 53
          Height = 17
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = rdb_cpfClick
        end
        object edt_cod_beneficiario: TDCChoiceEdit
          Tag = -3
          Left = 3
          Top = 3
          Width = 93
          Height = 21
          Hint = 
            'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
            'squisar'
          Color = clWhite
          MaxLength = 10
          TabOrder = 5
          OnEnter = edt_cod_beneficiarioEnter
          OnExit = edt_cod_beneficiarioExit
          OnKeyPress = edt_cpf_benKeyPress
          Alignment = taRightJustify
          EditMask = '9999999'
        end
        object edt_cpf_ben: TDCEdit
          Tag = -5
          Left = 3
          Top = 3
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 11
          TabOrder = 6
          Visible = False
          OnEnter = edt_cpf_benEnter
          OnExit = edt_cpf_benExit
          OnKeyPress = edt_cpf_benKeyPress
          EditMask = '99999999999'
        end
      end
      object btn_transferematricula: TPDJButton
        Left = 0
        Top = 460
        Width = 425
        Height = 25
        Hint = 'Rela��o de Descontos pelo Benefici�rio Selecionado'
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
        Enabled = False
        Caption = '&Confirmar Transfer�ncia de Descontos para Matr�cula Selecionada'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_transferematriculaClick
        Visible = False
        TabOrder = 2
      end
      object btn_histopera: TPDJButton
        Left = 706
        Top = 459
        Width = 90
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = 'Hist.Opera��es'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_histoperaClick
        TabOrder = 3
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
    Left = 528
    Top = 537
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_descontos2
    Left = 497
    Top = 536
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_histTransfMatDesconto
    Left = 465
    Top = 536
  end
end
