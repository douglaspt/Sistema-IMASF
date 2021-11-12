inherited Frm_Cad_Conveniado: TFrm_Cad_Conveniado
  Caption = 'Frm_Cad_Conveniado'
  ClientHeight = 575
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 792
    inherited Image1: TImage
      Width = 790
    end
  end
  inherited Panel2: TPanel
    Top = 523
    Width = 792
    inherited Image3: TImage
      Width = 790
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
    object btn_situacao: TPDJButton
      Left = 577
      Top = 4
      Width = 101
      Height = 25
      Hint = 'Altera a Situa��o do Conveniado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Situa��o'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_situacaoClick
      TabOrder = 6
    end
    object PDJButton5: TPDJButton
      Left = 459
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Imprimir'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      TabOrder = 7
    end
  end
  inherited Panel3: TPanel
    Width = 792
    Height = 482
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 790
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Conveniado'
      TabOrder = 0
      object pnl_alerta: TPanel
        Left = 397
        Top = 5
        Width = 388
        Height = 21
        BevelOuter = bvLowered
        Caption = 'CONVENIADO SUPENSO'
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
      object edt_cod_conveniado: TEditButton
        Tag = -2
        Left = 140
        Top = 5
        Width = 89
        Height = 22
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        NumbersOnly = False
        EditMask = '99999-9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnButtonClick = edt_cod_conveniadoButtonClick
        Glyph.Data = {
          BA040000424DBA0400000000000036040000280000000C0000000B0000000100
          08000000000084000000C40E0000C40E00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
          0707070707070707A4A4A4A4A4A4A4A4A40707000000000000000000A4070700
          FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00
          A4070700FFFFFFFFFFFFFF00A4070700A4A4A4A4A4A4A400A407070004040404
          04070700A407070000000000000000000707070707070707070707070707}
      end
      object rdb_ativos: TRadioButton
        Left = 247
        Top = 9
        Width = 56
        Height = 17
        Caption = 'Ativos'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rdb_todos: TRadioButton
        Left = 319
        Top = 9
        Width = 56
        Height = 17
        Caption = 'Todos'
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Reduzido                                               ' +
        '                                  Nome Fantasia'
      TabOrder = 1
      object edt_nome_con: TBEdit
        Tag = -1
        Left = 408
        Top = 5
        Width = 381
        Height = 21
        MaxLength = 60
        TabOrder = 1
        Text = 'edt_nome_con'
        NumbersOnly = False
      end
      object edt_nomereduzido_con: TBEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 20
        TabOrder = 0
        OnEnter = edt_nomereduzido_conEnter
        NumbersOnly = False
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    C.N.P.J.                                                    ' +
        '                                                                ' +
        '                                             Tipo de Conv.'
      TabOrder = 3
      object edt_cnpj_con: TBEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 60
        TabOrder = 0
        OnExit = edt_cnpj_conExit
        NumbersOnly = False
      end
      object edt_processo_con: TBEdit
        Tag = -1
        Left = 407
        Top = 5
        Width = 105
        Height = 21
        MaxLength = 60
        TabOrder = 1
        Visible = False
        NumbersOnly = False
      end
      object cbx_cod_classificacaoConveniado: TBComboBox
        Tag = -1
        Left = 615
        Top = 5
        Width = 175
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Raz�o Social                                                ' +
        '                                                                ' +
        '                                                         Dt. Sit' +
        'ua��o'
      TabOrder = 2
      object edt_razao_con: TBEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 429
        Height = 21
        MaxLength = 60
        TabOrder = 0
        Text = 'edt_razao_con'
        NumbersOnly = False
      end
      object edt_dtsituacao_con: TBDateEdit
        Tag = -1
        Left = 648
        Top = 5
        Width = 141
        Height = 21
        Enabled = False
        MaxLength = 10
        TabOrder = 1
      end
    end
    object PageControl: TPageControl
      Tag = -1
      Left = 1
      Top = 131
      Width = 793
      Height = 319
      ActivePage = TabSheet2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      object TabSheet2: TTabSheet
        Caption = 'Dire��o / Contato'
        ImageIndex = 1
        object Label5: TLabel
          Left = 24
          Top = 268
          Width = 128
          Height = 16
          Cursor = crHandPoint
          Caption = 'Dados no Conexia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = Label5Click
        end
        object GroupBox1: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Dire��o Cl�nica '
          TabOrder = 0
          object Panel7: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Nome '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_nomedirecao_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Telefone para Contato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_fonedirecao_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel9: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Registro em Org�o de Classe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_dtcadastro_con: TBDateEdit
              Tag = -1
              Left = 416
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 10
              TabOrder = 1
            end
            object edt_registrodirecao_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_cnpj_con'
              NumbersOnly = False
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 136
          Width = 773
          Height = 113
          Caption = 'Contato '
          TabOrder = 1
          object Panel10: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Nome '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_nomecontato_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_nome_con'
              NumbersOnly = False
            end
          end
          object Panel11: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Telefone para Contato                                       ' +
              '                                              Fone 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_fonecont1_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
              NumbersOnly = False
            end
            object edt_fonecont2_con: TBEdit
              Tag = -1
              Left = 416
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_razao_con'
              NumbersOnly = False
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    N�mero do FAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_cod_sitconveniado: TBEdit
              Tag = -1
              Left = 248
              Top = 5
              Width = 49
              Height = 21
              MaxLength = 60
              TabOrder = 1
              NumbersOnly = False
            end
            object edt_faxcont_con: TBEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_cnpj_con'
              NumbersOnly = False
            end
          end
        end
      end
      object tbs_processo: TTabSheet
        Caption = 'Processo'
        ImageIndex = 10
        OnShow = tbs_processoShow
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 785
          Height = 291
          ActivePage = TabSheet14
          Align = alClient
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'Processo'
            object Panel53: TPanel
              Tag = -1
              Left = 9
              Top = 8
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Processo / Ano                                              ' +
                '                    Conv�nio / Ano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object edt_processo_cpr: TBEdit
                Tag = 5
                Left = 132
                Top = 5
                Width = 70
                Height = 21
                MaxLength = 6
                TabOrder = 0
                NumbersOnly = True
                EditMask = '999999'
              end
              object edt_anoProcesso_cpr: TBEdit
                Tag = 5
                Left = 207
                Top = 5
                Width = 50
                Height = 21
                MaxLength = 4
                TabOrder = 1
                NumbersOnly = True
                EditMask = '9999'
              end
              object edt_numConvenio_cpr: TBEdit
                Tag = 5
                Left = 385
                Top = 5
                Width = 70
                Height = 21
                MaxLength = 6
                TabOrder = 2
                NumbersOnly = True
                EditMask = '999999'
              end
              object edt_anoConvenio_cpr: TBEdit
                Tag = 5
                Left = 460
                Top = 5
                Width = 50
                Height = 21
                MaxLength = 4
                TabOrder = 3
                NumbersOnly = True
                EditMask = '9999'
              end
            end
            object Panel50: TPanel
              Tag = -1
              Left = 9
              Top = 40
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Data de Assinatura                                          ' +
                '                   Dt. Renova��o                                ' +
                '                           Dt. Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object edt_dataAssinatura_cpr: TBDateEdit
                Tag = 5
                Left = 132
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 10
                TabOrder = 0
              end
              object edt_dataRenovacao_cpr: TBDateEdit
                Tag = 5
                Left = 385
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 10
                TabOrder = 1
              end
              object edt_dataVencimento_cpr: TBDateEdit
                Tag = 5
                Left = 623
                Top = 6
                Width = 125
                Height = 21
                MaxLength = 10
                TabOrder = 2
              end
            end
            object Panel51: TPanel
              Tag = -1
              Left = 9
              Top = 72
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Situa��o                                                    ' +
                '                         Usu�rio                                ' +
                '                                       Dt. Altera��o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object cbx_cod_statusAtivo: TDCComboBox
                Left = 132
                Top = 5
                Width = 125
                Height = 21
                Hint = 'INSTITUI��O EM QUE ESTEVE OU EST� LOTADO O SEGURADO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
              object edt_dataSistema_cpr: TBDateEdit
                Left = 623
                Top = 6
                Width = 125
                Height = 21
                TabStop = False
                Color = clInfoBk
                Enabled = False
                MaxLength = 10
                TabOrder = 2
              end
              object cb2_cod_usuario: TDCComboBox
                Left = 385
                Top = 5
                Width = 125
                Height = 21
                TabStop = False
                Color = clInfoBk
                Enabled = False
                TabOrder = 1
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDown
                ShowCheckBox = True
              end
            end
            object Panel52: TPanel
              Left = 9
              Top = 104
              Width = 759
              Height = 121
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object GroupBox9: TGroupBox
                Left = 6
                Top = 4
                Width = 747
                Height = 110
                Caption = 
                  'Observa��es   -   Pressione Ctrl + Enter para inserir uma nova l' +
                  'inha   '
                TabOrder = 0
                object mem_obs_cpr: TMemo
                  Tag = 5
                  Left = 10
                  Top = 15
                  Width = 729
                  Height = 89
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 2000
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = mem_obs_cprKeyDown
                end
              end
            end
            object btn_adicionarProcesso: TPDJButton
              Left = 41
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Adicionar'
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
              OnClick = btn_adicionarProcessoClick
              TabOrder = 4
            end
            object btn_alterarProcesso: TPDJButton
              Left = 154
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Alterar'
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
              OnClick = btn_alterarProcessoClick
              TabOrder = 5
            end
            object btn_salvarProcesso: TPDJButton
              Left = 267
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Salvar'
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
              OnClick = btn_salvarProcessoClick
              TabOrder = 6
            end
            object btn_cancelarProcesso: TPDJButton
              Left = 380
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Cancelar'
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
              OnClick = btn_cancelarProcessoClick
              TabOrder = 7
            end
            object btn_removerProcesso: TPDJButton
              Left = 493
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Remover'
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
              OnClick = btn_removerProcessoClick
              Visible = False
              TabOrder = 8
            end
            object dbg_processoConveniado: TDBGrid
              Tag = 5
              Left = 4
              Top = 6
              Width = 771
              Height = 222
              DataSource = dts_conveniadoProcesso
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              TabOrder = 9
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = dbg_processoConveniadoDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'processo_cpr'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'anoProcesso_cpr'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'numConvenio_cpr'
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'anoConvenio_cpr'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dataAssinatura_cpr'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dataRenovacao_cpr'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dataVencimento_cpr'
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dataSistema_cpr'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sta'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_usu'
                  Title.Caption = 'Usu�rio'
                  Visible = True
                end>
            end
          end
          object TabSheet12: TTabSheet
            Caption = 'Empenho'
            ImageIndex = 1
            object lbl_saldo: TLabel
              Left = 720
              Top = 236
              Width = 29
              Height = 16
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Panel55: TPanel
              Tag = -1
              Left = 9
              Top = 1
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Processo / Ano                                              ' +
                '                    Convenio / Ano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object edt_processo2: TDBEdit
                Left = 132
                Top = 5
                Width = 70
                Height = 21
                Color = clInfoBk
                DataField = 'processo_cpr'
                DataSource = dts_conveniadoProcesso
                Enabled = False
                TabOrder = 0
              end
              object edt_anoProcesso2: TDBEdit
                Left = 207
                Top = 5
                Width = 50
                Height = 21
                Color = clInfoBk
                DataField = 'anoProcesso_cpr'
                DataSource = dts_conveniadoProcesso
                Enabled = False
                TabOrder = 1
              end
              object edt_numConvenio2: TDBEdit
                Left = 385
                Top = 5
                Width = 70
                Height = 21
                Color = clInfoBk
                DataField = 'numConvenio_cpr'
                DataSource = dts_conveniadoProcesso
                Enabled = False
                TabOrder = 2
              end
              object edt_anoConvenio2: TDBEdit
                Left = 460
                Top = 5
                Width = 50
                Height = 21
                Color = clInfoBk
                DataField = 'anoConvenio_cpr'
                DataSource = dts_conveniadoProcesso
                Enabled = False
                TabOrder = 3
              end
              object edt_cod_conveniadoProcesso: TDBEdit
                Left = 615
                Top = 5
                Width = 70
                Height = 21
                Color = clInfoBk
                DataField = 'cod_conveniadoProcesso'
                DataSource = dts_conveniadoProcesso
                Enabled = False
                TabOrder = 4
                Visible = False
                OnChange = edt_cod_conveniadoProcessoChange
              end
            end
            object btn_adicionarEmpenho: TPDJButton
              Left = 41
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Adicionar'
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
              OnClick = btn_adicionarEmpenhoClick
              TabOrder = 5
            end
            object btn_alterarEmpenho: TPDJButton
              Left = 154
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Alterar'
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
              OnClick = btn_alterarEmpenhoClick
              TabOrder = 6
            end
            object btn_salvarEmpenho: TPDJButton
              Left = 267
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Salvar'
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
              OnClick = btn_salvarEmpenhoClick
              TabOrder = 7
            end
            object btn_cancelarEmpenho: TPDJButton
              Left = 380
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Cancelar'
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
              OnClick = btn_cancelarEmpenhoClick
              TabOrder = 8
            end
            object Panel56: TPanel
              Tag = -1
              Left = 9
              Top = 64
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Empenho / Ano                                               ' +
                '                            CNPJ              '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object edt_numEmpenho_emc: TBEdit
                Tag = 6
                Left = 132
                Top = 5
                Width = 70
                Height = 21
                MaxLength = 6
                TabOrder = 0
                NumbersOnly = True
                EditMask = '999999'
              end
              object edt_anoEmpenho_emc: TBEdit
                Tag = 6
                Left = 207
                Top = 5
                Width = 50
                Height = 21
                MaxLength = 4
                TabOrder = 1
                NumbersOnly = True
                EditMask = '9999'
              end
              object cbx_cnpj_emc: TDCComboBox
                Left = 361
                Top = 5
                Width = 190
                Height = 21
                Hint = 'INSTITUI��O EM QUE ESTEVE OU EST� LOTADO O SEGURADO'
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
            object Panel57: TPanel
              Tag = -1
              Left = 9
              Top = 128
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Situa��o                                                    ' +
                '                       Dt. Altera��o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object cb3_cod_statusAtivo: TDCComboBox
                Left = 132
                Top = 5
                Width = 125
                Height = 21
                Hint = 'INSTITUI��O EM QUE ESTEVE OU EST� LOTADO O SEGURADO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnKeyDown = cb3_cod_statusAtivoKeyDown
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
              object edt_dtsistema_emc: TBDateEdit
                Left = 361
                Top = 5
                Width = 125
                Height = 21
                TabStop = False
                Color = clInfoBk
                Enabled = False
                MaxLength = 10
                TabOrder = 1
              end
            end
            object Panel58: TPanel
              Tag = -1
              Left = 9
              Top = 96
              Width = 759
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Valor                                                       ' +
                '                             Numero PA                  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object edt_vlEmpenho_emc: TBEdit
                Tag = 6
                Left = 132
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 12
                TabOrder = 0
                NumbersOnly = False
              end
              object edt_numeroPA_emc: TBEdit
                Tag = 6
                Left = 361
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 12
                TabOrder = 1
                NumbersOnly = False
              end
            end
            object dbg_empenho: TDBGrid
              Tag = 5
              Left = 4
              Top = 1
              Width = 767
              Height = 219
              DataSource = dts_empenhoConveniado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'numEmpenho_emc'
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'anoEmpenho_emc'
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlEmpenho_emc'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtsistema_emc'
                  Width = 118
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sta'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cnpj_emc'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'numeroPA_emc'
                  Visible = True
                end>
            end
          end
          object TabSheet13: TTabSheet
            Caption = 'Hist�rico de Pagamentos'
            ImageIndex = 2
            object lbl_saldo2: TLabel
              Left = 720
              Top = 236
              Width = 29
              Height = 16
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edt_cod_empenhoConveniado: TDBEdit
              Left = 527
              Top = 5
              Width = 70
              Height = 21
              Color = clInfoBk
              DataField = 'cod_empenhoConveniado'
              DataSource = dts_empenhoConveniado
              Enabled = False
              TabOrder = 1
              Visible = False
              OnChange = edt_cod_empenhoConveniadoChange
            end
            object dbg_historicoPagamento: TDBGrid
              Tag = 5
              Left = 4
              Top = 2
              Width = 767
              Height = 220
              DataSource = dts_histempenhoConveniado
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
                  FieldName = 'dtreferencia_cta'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sequencia_cta'
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlpago_cta'
                  Width = 134
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_usu'
                  Width = 296
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtsistema_hec'
                  Width = 113
                  Visible = True
                end>
            end
          end
          object TabSheet14: TTabSheet
            Caption = 'Condi��es Comerciais'
            ImageIndex = 3
            OnShow = TabSheet14Show
            object Panel14: TPanel
              Tag = -1
              Left = 1
              Top = 1
              Width = 775
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Cond.Com.                                                   ' +
                '                                                                ' +
                '      %Negocia��o                                               ' +
                '                '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cbx_tipocondcomerc: TDCComboBox
                Left = 85
                Top = 5
                Width = 261
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
              object edt_percentual_cco: TEdit
                Tag = 6
                Left = 510
                Top = 3
                Width = 41
                Height = 21
                MaxLength = 7
                TabOrder = 1
                OnKeyPress = edt_percsimpro_hrcKeyPress
              end
              object edt_cod_condcomerc: TDBEdit
                Tag = 6
                Left = 488
                Top = 3
                Width = 0
                Height = 21
                DataField = 'cod_condcomerc'
                DataSource = dts_histcondcomerciais
                TabOrder = 2
                OnChange = edt_cod_condcomercChange
              end
            end
            object Panel15: TPanel
              Tag = -1
              Left = 1
              Top = 33
              Width = 775
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Data Inicial                                                ' +
                '                                                                ' +
                '         Data Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object edt_datainicial_cco: TBDateEdit
                Tag = 6
                Left = 85
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 10
                TabOrder = 0
              end
              object edt_datafinal_cco: TBDateEdit
                Tag = 6
                Left = 510
                Top = 5
                Width = 125
                Height = 21
                MaxLength = 10
                TabOrder = 1
              end
            end
            object btn_adicionarrenovproc: TPDJButton
              Left = 41
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Adicionar'
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
              OnClick = btn_adicionarrenovprocClick
              TabOrder = 2
            end
            object btn_alterarrenovproc: TPDJButton
              Left = 154
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Alterar'
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
              OnClick = btn_alterarrenovprocClick
              TabOrder = 3
            end
            object btn_salvarrenovproc: TPDJButton
              Left = 267
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Salvar'
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
              OnClick = btn_salvarrenovprocClick
              TabOrder = 4
            end
            object btn_cancelarrenovproc: TPDJButton
              Left = 380
              Top = 233
              Width = 109
              Height = 25
              Hint = 'Cancelar'
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
              OnClick = btn_cancelarrenovprocClick
              TabOrder = 5
            end
            object dbg_histcondcomerciais: TDBGrid
              Left = 1
              Top = 2
              Width = 775
              Height = 225
              DataSource = dts_histcondcomerciais
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
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_tipocondcomerc'
                  Title.Caption = 'C�d.'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_tcc'
                  Title.Caption = 'Descri��o'
                  Width = 360
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_agr'
                  Title.Caption = '�rg�o'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'percentual_cco'
                  Title.Caption = '%Negoc.'
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'datainicial_cco'
                  Title.Caption = 'Data Inicial'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'datafinal_cco'
                  Title.Caption = 'Data Final'
                  Width = 70
                  Visible = True
                end>
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Endere�os'
        ImageIndex = 4
        object GroupBox5: TGroupBox
          Left = 4
          Top = 6
          Width = 773
          Height = 117
          Caption = 'Endere�o Jur�dico '
          TabOrder = 0
          object Panel16: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Endere�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_enderecojur_con: TBEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Bairro                                                      ' +
              '                                                                ' +
              '                   Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_bairrojur_con: TBEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
              NumbersOnly = False
            end
            object edt_cidadejur_con: TBEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 1
              NumbersOnly = False
            end
          end
          object Panel18: TPanel
            Tag = -1
            Left = -6
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Estado                                                      ' +
              '                CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_cepjur_con: TBEdit
              Tag = -1
              Left = 288
              Top = 5
              Width = 109
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_cnpj_con'
              NumbersOnly = False
            end
            object cbx_cod_ufjur_con: TBComboBox
              Tag = -1
              Left = 128
              Top = 5
              Width = 69
              Height = 22
              Style = csOwnerDrawFixed
              ItemHeight = 16
              TabOrder = 0
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 4
          Top = 128
          Width = 773
          Height = 148
          Caption = 'Endere�o Correspond�ncia'
          TabOrder = 1
          object Panel19: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Endere�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_enderecocor_con: TBEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel20: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Bairro                                                      ' +
              '                                                                ' +
              '                   Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_bairrocor_con: TBEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
              NumbersOnly = False
            end
            object edt_cidadecor_con: TBEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_razao_con'
              NumbersOnly = False
            end
          end
          object Panel21: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Estado                                                      ' +
              '                CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_cepcor_con: TBEdit
              Tag = -1
              Left = 288
              Top = 5
              Width = 109
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_cnpj_con'
              NumbersOnly = False
            end
            object cbx_cod_ufcor_con: TBComboBox
              Tag = -1
              Left = 128
              Top = 5
              Width = 69
              Height = 22
              Style = csOwnerDrawFixed
              ItemHeight = 16
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 2
            Top = 111
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    E-Mail                                                      ' +
              '                                                                ' +
              '            Web Site'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object edt_email_con: TBEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_nome_con'
              NumbersOnly = False
            end
            object edt_site_con: TBEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_nome_con'
              NumbersOnly = False
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Dados Gerais '
        ImageIndex = 5
        object GroupBox7: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Dados Gerais'
          TabOrder = 0
          object Panel32: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object chb_constamanual_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 369
              Height = 17
              Caption = 'Conveniado n�o consta do Manual do Benefici�rio'
              TabOrder = 0
            end
          end
          object Panel33: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object chb_autormatmed_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 353
              Height = 17
              Caption = 'Requer Autoriza��o para Administra��o de Medicamentos'
              TabOrder = 0
            end
          end
          object Panel34: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object chb_autormedicamento_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 337
              Height = 17
              Caption = 'Requer Autoriza��o para Utiliza��o de Material M�dico'
              TabOrder = 0
            end
          end
        end
        object GroupBox8: TGroupBox
          Left = 4
          Top = 140
          Width = 773
          Height = 123
          Caption = 'Empenho'
          TabOrder = 1
          object Panel35: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Empenho N� 1                                                ' +
              '      Planos PFGB                                               ' +
              '                              '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_empenho1_con: TBEdit
              Tag = -1
              Left = 96
              Top = 5
              Width = 140
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel43: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Empenho N� 2                                                ' +
              '      Planos IMASF            Valor                             ' +
              '                             Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_empenho2_con: TBEdit
              Tag = -1
              Left = 96
              Top = 5
              Width = 140
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
            object edt_vlempenho2_con: TBEdit
              Tag = -1
              Left = 384
              Top = 5
              Width = 140
              Height = 21
              MaxLength = 60
              TabOrder = 1
              NumbersOnly = False
              EditMask = '###,###,##0.00'
            end
            object edt_saldoempenho2_con: TBEdit
              Tag = -1
              Left = 585
              Top = 5
              Width = 140
              Height = 21
              Color = clInfoBk
              MaxLength = 60
              ReadOnly = True
              TabOrder = 2
              NumbersOnly = False
              EditMask = '###,###,##0.00'
            end
            object btn_calcularsaldo: TButton
              Left = 734
              Top = 5
              Width = 23
              Height = 22
              Hint = 'Calcular Saldo'
              Caption = 'C'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btn_calcularsaldoClick
            end
          end
          object Panel44: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Empenho N� 3                                                ' +
              '      1 - Apoio Diagn�stico e Terapeutico  Consultas e Procedime' +
              'ntos Ambulatoriais   3- Interna��o Hospitalar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
            object edt_empenho3_con: TBEdit
              Tag = -1
              Left = 96
              Top = 5
              Width = 140
              Height = 21
              MaxLength = 60
              TabOrder = 0
              NumbersOnly = False
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Especialidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 192
          Height = 16
          Caption = 'Especialidades Contradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 263
          Width = 71
          Height = 13
          Caption = 'Especialidades'
        end
        object LsB_Especialidade: TListBox
          Left = 8
          Top = 20
          Width = 761
          Height = 225
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
        end
        object cbx_cod_espmedamb: TBComboBox
          Left = 84
          Top = 256
          Width = 413
          Height = 21
          ItemHeight = 0
          TabOrder = 1
        end
        object btn_adicionarEspecialidade: TPDJButton
          Left = 580
          Top = 255
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Adcionar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_adicionarEspecialidadeClick
          TabOrder = 2
        end
        object btn_removerEspecialidade: TPDJButton
          Left = 673
          Top = 255
          Width = 93
          Height = 25
          Hint = 'Remover Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Remover'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_removerEspecialidadeClick
          TabOrder = 3
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Planos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        object Label4: TLabel
          Left = 8
          Top = 256
          Width = 96
          Height = 13
          Caption = 'Plano de Benef�cios'
        end
        object LsB_Plano: TListBox
          Left = 8
          Top = 25
          Width = 761
          Height = 90
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
        end
        object cbx_cod_plano: TBComboBox
          Left = 116
          Top = 249
          Width = 381
          Height = 21
          ItemHeight = 0
          TabOrder = 1
        end
        object btn_adicionarPlano: TPDJButton
          Left = 580
          Top = 248
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Adcionar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_adicionarPlanoClick
          TabOrder = 2
        end
        object btn_RemoverPlano: TPDJButton
          Left = 673
          Top = 248
          Width = 93
          Height = 25
          Hint = 'Remover Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Remover'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_RemoverPlanoClick
          TabOrder = 3
        end
        object LsB_Plano2: TListBox
          Left = 9
          Top = 147
          Width = 761
          Height = 93
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
        end
        object ckb_plano2: TCheckBox
          Left = 17
          Top = 126
          Width = 648
          Height = 17
          Caption = 'Planos em que o Conveniado n�o pode emitir Autoriza��o M�dica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 5
          OnClick = ckb_plano2Click
        end
        object ckb_plano: TCheckBox
          Left = 17
          Top = 3
          Width = 712
          Height = 17
          Caption = 
            'Planos em que o Conveniado necessita de Autoriza��o para Atendim' +
            'ento'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          State = cbChecked
          TabOrder = 6
          OnClick = ckb_planoClick
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Porte Anest�sico'
        ImageIndex = 8
        object Panel24: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 1                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_porte1_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel25: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 2                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object edt_porte2_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel26: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 3                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object edt_porte3_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel27: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 4                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object edt_porte4_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel28: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 5                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object edt_porte5_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel29: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 6                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object edt_porte6_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel30: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 7                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object edt_porte7_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
        object Panel31: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 8                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object edt_porte8_pan: TBEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '###,##0.00'
          end
        end
      end
      object tbs_corpoclinico: TTabSheet
        Caption = 'Corpo Cl�nico'
        ImageIndex = 7
        OnShow = tbs_corpoclinicoShow
        object Panel54: TPanel
          Tag = -1
          Left = 9
          Top = 139
          Width = 745
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Situa��o                                                    ' +
            '                       Data de Cadastro'
          TabOrder = 4
          object cb2_cod_statusAtivo: TDCComboBox
            Left = 180
            Top = 5
            Width = 140
            Height = 21
            Hint = 'INSTITUI��O EM QUE ESTEVE OU EST� LOTADO O SEGURADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object edt_dtcadastro_cln: TBDateEdit
            Left = 484
            Top = 6
            Width = 125
            Height = 21
            TabStop = False
            Color = clInfoBk
            Enabled = False
            MaxLength = 10
            TabOrder = 1
          end
        end
        object btn_novocln: TPDJButton
          Left = 35
          Top = 232
          Width = 109
          Height = 25
          Hint = 'Adicionar'
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
          OnClick = btn_novoclnClick
          TabOrder = 5
        end
        object btn_alterarcln: TPDJButton
          Left = 148
          Top = 232
          Width = 109
          Height = 25
          Hint = 'Alterar'
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
          OnClick = btn_alterarclnClick
          TabOrder = 6
        end
        object btn_Remover_cln: TPDJButton
          Left = 487
          Top = 232
          Width = 109
          Height = 25
          Hint = 'Remover'
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
          OnClick = btn_Remover_clnClick
          Visible = False
          TabOrder = 9
        end
        object btn_Salvarcln: TPDJButton
          Left = 261
          Top = 232
          Width = 109
          Height = 25
          Hint = 'Salvar'
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
          OnClick = btn_SalvarclnClick
          TabOrder = 7
        end
        object btn_cancelar_cln: TPDJButton
          Left = 374
          Top = 232
          Width = 109
          Height = 25
          Hint = 'Cancelar'
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
          OnClick = btn_cancelar_clnClick
          TabOrder = 8
        end
        object Panel37: TPanel
          Tag = -1
          Left = 9
          Top = 43
          Width = 745
          Height = 32
          Alignment = taLeftJustify
          Caption = '    C.P.F.'
          TabOrder = 1
          object edt_cpf_cln: TMaskEdit
            Tag = 6
            Left = 180
            Top = 5
            Width = 140
            Height = 21
            EditMask = '999\.999\.999\-99;_'
            MaxLength = 14
            TabOrder = 0
            Text = '   .   .   -  '
            OnExit = edt_cpf_clnExit
          end
        end
        object Panel38: TPanel
          Tag = -1
          Left = 9
          Top = 75
          Width = 745
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Cod.Especialidades'
          TabOrder = 2
          object cb2_cod_espmedamb: TBComboBox
            Tag = 6
            Left = 180
            Top = 5
            Width = 429
            Height = 21
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object Panel39: TPanel
          Tag = -1
          Left = 9
          Top = 107
          Width = 745
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Nome'
          TabOrder = 3
          object edt_nome_cln: TBEdit
            Tag = 6
            Left = 180
            Top = 5
            Width = 429
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 0
            NumbersOnly = False
          end
        end
        object pnl_crm: TPanel
          Tag = -1
          Left = 9
          Top = 11
          Width = 745
          Height = 32
          Alignment = taLeftJustify
          Caption = '    CRM'
          TabOrder = 0
          object edt_cod_crm: TBEdit
            Tag = 6
            Left = 180
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 60
            TabOrder = 0
            OnExit = edt_cod_crmExit
            NumbersOnly = False
          end
        end
        object dbg_corpoClinico: TDBGrid
          Left = 3
          Top = 5
          Width = 774
          Height = 212
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbg_corpoClinicoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_crm'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_cln'
              Width = 290
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf_cln'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_espmedamb'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_esp'
              Width = 187
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_sta'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtcadastro_cln'
              Visible = True
            end>
        end
        object rdb_corpoClinicoAtivo: TRadioButton
          Left = 632
          Top = 236
          Width = 56
          Height = 17
          Caption = 'Ativos'
          Checked = True
          TabOrder = 11
          TabStop = True
          OnClick = rdb_corpoClinicoAtivoClick
        end
        object rdb_corpoClinicoTodos: TRadioButton
          Left = 704
          Top = 236
          Width = 56
          Height = 17
          Caption = 'Todos'
          TabOrder = 12
          OnClick = rdb_corpoClinicoTodosClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'OBS'
        ImageIndex = 3
        object Label6: TLabel
          Left = 9
          Top = 270
          Width = 230
          Height = 13
          Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox3: TGroupBox
          Left = 4
          Top = 1
          Width = 776
          Height = 54
          Caption = 'Datas do Conv�nio '
          Enabled = False
          TabOrder = 0
          object Panel13: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Dt. Assinatura                                              ' +
              '           Dt. Renova��o                                        ' +
              '                  N� do Contrato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_dtassinatura_con: TBDateEdit
              Tag = -1
              Left = 99
              Top = 5
              Width = 130
              Height = 21
              MaxLength = 10
              TabOrder = 0
            end
            object edt_dtrenovacao_con: TBDateEdit
              Tag = -1
              Left = 341
              Top = 5
              Width = 130
              Height = 21
              MaxLength = 10
              TabOrder = 1
            end
            object edt_contrato_con: TBEdit
              Tag = -1
              Left = 602
              Top = 5
              Width = 130
              Height = 21
              MaxLength = 60
              TabOrder = 2
              NumbersOnly = False
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 60
          Width = 773
          Height = 206
          Caption = 'Observa��es '
          TabOrder = 1
          object mem_obs_con: TMemo
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 189
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Lines.Strings = (
              'Memo1')
            MaxLength = 2000
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Filiais'
        ImageIndex = 8
        OnShow = TabSheet3Show
        object btn_novoF: TPDJButton
          Left = 35
          Top = 235
          Width = 109
          Height = 25
          Hint = 'Adicionar'
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
          OnClick = btn_novoFClick
          TabOrder = 4
        end
        object btn_alterarF: TPDJButton
          Left = 148
          Top = 235
          Width = 109
          Height = 25
          Hint = 'Alterar'
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
          OnClick = btn_alterarFClick
          TabOrder = 5
        end
        object btn_removerF: TPDJButton
          Left = 487
          Top = 235
          Width = 109
          Height = 25
          Hint = 'Remover'
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
          OnClick = btn_removerFClick
          TabOrder = 8
        end
        object btn_SalvarF: TPDJButton
          Left = 261
          Top = 235
          Width = 109
          Height = 25
          Hint = 'Salvar'
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
          OnClick = btn_SalvarFClick
          TabOrder = 6
        end
        object btn_cancelarF: TPDJButton
          Left = 374
          Top = 235
          Width = 109
          Height = 25
          Hint = 'Cancelar'
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
          OnClick = btn_cancelarFClick
          TabOrder = 7
        end
        object Panel36: TPanel
          Tag = -1
          Left = 5
          Top = 9
          Width = 769
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Seq�encia                                                   ' +
            '                 Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_sequencia_cne: TBEdit
            Tag = 5
            Left = 81
            Top = 5
            Width = 65
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            NumbersOnly = False
          end
          object edt_razao_cne: TBEdit
            Tag = 5
            Left = 312
            Top = 5
            Width = 449
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 1
            NumbersOnly = False
          end
        end
        object Panel40: TPanel
          Tag = -1
          Left = 5
          Top = 41
          Width = 769
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    CEP                                                End.     ' +
            '                                                                ' +
            '                            Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object edt_endereco_cne: TBEdit
            Tag = 5
            Left = 206
            Top = 5
            Width = 276
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 2
            NumbersOnly = False
          end
          object edt_bairro_cne: TBEdit
            Tag = 5
            Left = 528
            Top = 5
            Width = 233
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 3
            NumbersOnly = False
          end
          object edt_cep_cne: TMaskEdit
            Tag = 5
            Left = 81
            Top = 5
            Width = 65
            Height = 21
            Hint = 'C�DIGO DE ENDERA�AMENTO POSTAL '
            EditMask = '99999\-999;1;_'
            MaxLength = 9
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = '     -   '
            OnExit = edt_cep_cneExit
          end
          object btn_buscarcep: TPDJButton
            Left = 151
            Top = 7
            Width = 22
            Height = 21
            Hint = 'Preenchimento autom�tico da descri��o'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000C30E0000C30E000000010000000100005A423900634A
              3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
              5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
              84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
              9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
              9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
              A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
              AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
              B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
              BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
              C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
              D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
              DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
              F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
              FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
              070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
              211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
              4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
              3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
              6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
              706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
              565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
              1D575C521D143A6565656565656565653A2F2F383A6565656565}
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_buscarcepClick
            TabOrder = 1
          end
        end
        object Panel41: TPanel
          Tag = -1
          Left = 5
          Top = 73
          Width = 769
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Estado                                            Cidade    ' +
            '                                                                ' +
            '                                               Fone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object cbx_cod_uf: TBComboBox
            Tag = 5
            Left = 80
            Top = 5
            Width = 65
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 0
            OnExit = cbx_cod_ufExit
          end
          object cbx_cod_cidadeCep: TDCComboBox
            Tag = 5
            Left = 234
            Top = 5
            Width = 250
            Height = 21
            TabOrder = 1
            ReadOnly = True
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_fone_cne: TBEdit
            Tag = 5
            Left = 634
            Top = 5
            Width = 126
            Height = 21
            MaxLength = 30
            TabOrder = 2
            NumbersOnly = False
          end
        end
        object Panel42: TPanel
          Tag = -1
          Left = 5
          Top = 105
          Width = 769
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    CNPJ                                                        ' +
            '                                                                ' +
            '                              Cod. Fornecedor ORCOM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object edt_cnpj_cne: TBEdit
            Tag = 5
            Left = 80
            Top = 5
            Width = 152
            Height = 21
            MaxLength = 20
            TabOrder = 0
            OnExit = edt_cnpj_cneExit
            NumbersOnly = False
          end
          object chb_recolheISS: TCheckBox
            Tag = 5
            Left = 297
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Recolhe ISS'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edt_cod_fornecedorOrcom: TBEdit
            Tag = 5
            Left = 634
            Top = 5
            Width = 126
            Height = 21
            MaxLength = 30
            TabOrder = 2
            NumbersOnly = False
          end
        end
        object DBG_Filial: TDBGrid
          Left = 2
          Top = 4
          Width = 774
          Height = 213
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'sequencia_cne'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'razao_cne'
              Width = 303
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cnpj_cne'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fone_cne'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uf_cne'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_fornecedorOrcom'
              Visible = True
            end>
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Contrato'
        ImageIndex = 9
        OnShow = TabSheet10Show
        object edt_cod_contratoServicoEspecial: TDBEdit
          Left = 616
          Top = 50
          Width = 64
          Height = 21
          DataField = 'cod_contratoServicoEspecial'
          DataSource = DataSource3
          TabOrder = 17
          OnChange = edt_cod_contratoServicoEspecialChange
        end
        object btn_novocto: TPDJButton
          Left = 35
          Top = 120
          Width = 109
          Height = 25
          Hint = 'Adicionar'
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
          OnClick = btn_novoctoClick
          TabOrder = 4
        end
        object btn_alterarcto: TPDJButton
          Left = 148
          Top = 120
          Width = 109
          Height = 25
          Hint = 'Alterar'
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
          OnClick = btn_alterarctoClick
          TabOrder = 5
        end
        object btn_removercto: TPDJButton
          Left = 487
          Top = 120
          Width = 109
          Height = 25
          Hint = 'Remover'
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
          OnClick = btn_removerctoClick
          TabOrder = 8
        end
        object btn_salvarcto: TPDJButton
          Left = 261
          Top = 120
          Width = 109
          Height = 25
          Hint = 'Salvar'
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
          OnClick = btn_salvarctoClick
          TabOrder = 6
        end
        object btn_cancelarcto: TPDJButton
          Left = 374
          Top = 120
          Width = 109
          Height = 25
          Hint = 'Cancelar'
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
          OnClick = btn_cancelarctoClick
          TabOrder = 7
        end
        object Panel46: TPanel
          Tag = -1
          Left = 15
          Top = 79
          Width = 727
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Valor                                                       ' +
            '                       Situa��o'
          TabOrder = 2
          object edt_valor_cse: TBEdit
            Tag = 4
            Left = 110
            Top = 5
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 0
            NumbersOnly = False
          end
          object cbx_situacao_cse: TDCComboBox
            Left = 441
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 1
            Items.Strings = (
              'Masculino'
              'Feminino')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel47: TPanel
          Tag = -1
          Left = 15
          Top = 15
          Width = 727
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Descri��o'
          TabOrder = 0
          object edt_descricao_cse: TBEdit
            Tag = 4
            Left = 110
            Top = 5
            Width = 483
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 0
            NumbersOnly = False
          end
        end
        object Panel45: TPanel
          Tag = -1
          Left = 23
          Top = 167
          Width = 727
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Plano                                                       ' +
            '                   Item de Servi�o'
          TabOrder = 10
          object edt_cod_itemServico: TBEdit
            Tag = 4
            Left = 456
            Top = 5
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 1
            NumbersOnly = False
          end
          object cb2_cod_plano: TDCComboBox
            Left = 110
            Top = 5
            Width = 179
            Height = 21
            TabOrder = 0
            Items.Strings = (
              'Masculino'
              'Feminino')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel48: TPanel
          Left = 23
          Top = 199
          Width = 727
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Dota��o'
          TabOrder = 11
          Visible = False
          object edt_dotacao_ise: TBEdit
            Left = 110
            Top = 5
            Width = 307
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 0
            Text = '000'
            NumbersOnly = False
          end
        end
        object btn_novoise: TPDJButton
          Left = 43
          Top = 263
          Width = 109
          Height = 25
          Hint = 'Adicionar'
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
          OnClick = btn_novoiseClick
          TabOrder = 12
        end
        object btn_alterarise: TPDJButton
          Left = 156
          Top = 263
          Width = 109
          Height = 25
          Hint = 'Alterar'
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
          OnClick = btn_alterariseClick
          TabOrder = 13
        end
        object btn_salvarise: TPDJButton
          Left = 269
          Top = 263
          Width = 109
          Height = 25
          Hint = 'Salvar'
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
          OnClick = btn_salvariseClick
          TabOrder = 14
        end
        object btn_cancelarise: TPDJButton
          Left = 382
          Top = 263
          Width = 109
          Height = 25
          Hint = 'Cancelar'
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
          OnClick = btn_cancelariseClick
          TabOrder = 15
        end
        object btn_removerise: TPDJButton
          Left = 495
          Top = 263
          Width = 109
          Height = 25
          Hint = 'Remover'
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
          OnClick = btn_removeriseClick
          TabOrder = 16
        end
        object dbg_itemservEsp: TDBGrid
          Left = 2
          Top = 151
          Width = 783
          Height = 105
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'nome_pla'
              Width = 185
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_itemServico'
              Width = 119
              Visible = True
            end>
        end
        object Panel49: TPanel
          Tag = -1
          Left = 15
          Top = 47
          Width = 727
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Dota��o                                                     ' +
            '                    Empenho'
          TabOrder = 1
          object edt_dotacao_cse: TBEdit
            Tag = 4
            Left = 110
            Top = 5
            Width = 211
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 0
            NumbersOnly = False
          end
          object edt_empenho_cse: TBEdit
            Tag = 4
            Left = 440
            Top = 3
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 80
            TabOrder = 1
            NumbersOnly = False
          end
        end
        object dbg_contrato: TDBGrid
          Left = 2
          Top = 5
          Width = 783
          Height = 109
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
          Columns = <
            item
              Expanded = False
              FieldName = 'descricao_cse'
              Width = 320
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_cse'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descsituacao'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dotacao_cse'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'empenho_cse'
              Width = 101
              Visible = True
            end>
        end
      end
    end
    object Panel22: TPanel
      Tag = -1
      Left = 1
      Top = 449
      Width = 790
      Height = 32
      Align = alBottom
      Alignment = taLeftJustify
      Caption = 
        '    Data de Altera��o                                           ' +
        '                       Alterado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object edt_dtsistema_con: TDCDateEdit
        Tag = -1
        Left = 132
        Top = 5
        Width = 217
        Height = 21
        Hint = 
          'DATA DE ALTERA��O DE DADOS DO CADASTRO(INSERIDA PELO PR�PRIO SIS' +
          'TEMA)'
        Color = clInfoBk
        Enabled = False
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
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 468
        Top = 5
        Width = 306
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 556
    Width = 792
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal3.spc_cons_adm_corpoclinico
    Left = 49
    Top = 487
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal3.spc_cons_adm_conveniadoendereco
    Left = 96
    Top = 487
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal3.spc_cons_adm_contratoServicoEspecial
    Left = 149
    Top = 487
  end
  object DataSource4: TDataSource
    DataSet = fdt_principal3.spc_cons_adm_itemServicoEspecial
    Left = 210
    Top = 487
  end
  object dts_conveniadoProcesso: TDataSource
    DataSet = fdt_principal3.spc_cons_med_conveniadoProcesso
    Left = 275
    Top = 487
  end
  object dts_empenhoConveniado: TDataSource
    DataSet = fdt_principal3.spc_cons_med_empenhoConveniado
    Left = 339
    Top = 487
  end
  object dts_histempenhoConveniado: TDataSource
    DataSet = fdt_principal5.spc_cons_med_histempenhoConveniado
    Left = 409
    Top = 487
  end
  object dts_histcondcomerciais: TDataSource
    DataSet = fdt_principal3.spc_cons_med_histcondcomerciais
    Left = 457
    Top = 487
  end
end
