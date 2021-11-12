inherited Frm_Cad_CotacaoIndice: TFrm_Cad_CotacaoIndice
  Caption = 'Frm_Cad_CotacaoIndice'
  ClientHeight = 694
  ClientWidth = 1156
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 1156
    inherited Image1: TImage
      Width = 1154
    end
  end
  inherited Panel2: TPanel
    Top = 642
    Width = 1156
    inherited Image3: TImage
      Width = 1154
    end
    object btn_relatorio: TPDJButton
      Left = 576
      Top = 4
      Width = 101
      Height = 25
      Hint = 'Exclui Registro Corrente'
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
      OnClick = btn_relatorioClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 1156
    Height = 601
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 1154
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Índice'
      TabOrder = 0
      object edt_cod_indice: TEditButton
        Tag = -2
        Left = 120
        Top = 5
        Width = 93
        Height = 22
        NumbersOnly = False
        EditMask = '9999999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnButtonClick = edt_cod_indiceButtonClick
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
    end
    object PageControl1: TPageControl
      Left = 6
      Top = 40
      Width = 775
      Height = 528
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 767
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Sigla do Índice'
          TabOrder = 0
          object edt_sigla_ind: TBEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 93
            Height = 21
            MaxLength = 4
            TabOrder = 0
            NumbersOnly = False
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 767
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Nome do Índice'
          TabOrder = 1
          object edt_nome_ind: TBEdit
            Tag = -1
            Left = 120
            Top = 5
            Width = 185
            Height = 21
            MaxLength = 4
            TabOrder = 0
            NumbersOnly = False
          end
        end
        object Panel6: TPanel
          Tag = -1
          Left = 1
          Top = 97
          Width = 796
          Height = 404
          Alignment = taLeftJustify
          TabOrder = 2
          object Label5: TLabel
            Left = 14
            Top = 12
            Width = 63
            Height = 13
            Caption = 'COTAÇÃO '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel8: TPanel
            Tag = -1
            Left = 28
            Top = 147
            Width = 720
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Valor do Indice                                             ' +
              '                             do mês '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            object edt_vlCotaAtual: TBEdit
              Left = 140
              Top = 5
              Width = 152
              Height = 21
              Color = clInfoBk
              MaxLength = 6
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel7: TPanel
            Tag = -1
            Left = 28
            Top = 83
            Width = 720
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Percentual IGPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object btn_calcular: TSpeedButton
              Left = 311
              Top = 6
              Width = 24
              Height = 22
              Hint = 'Calcular Valores'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                88888CCCCCCCCCCCCCCC8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8
                EC8C8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8EC8C8C8888888888
                888C8C8CCCCCCCCC888C8C8CEEEEEEEC888C8C8CCCCCCCCC888C8C8888888888
                888C88CCCCCCCCCCCCC888888888888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              OnClick = btn_calcularClick
            end
            object edt_percentualigpm: TBEdit
              Left = 140
              Top = 5
              Width = 152
              Height = 21
              MaxLength = 6
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object btn_alterarCotacao: TPDJButton
            Left = 9
            Top = 339
            Width = 132
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Alterar Cotação'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_alterarCotacaoClick
            TabOrder = 1
          end
          object btn_salvarCotacao: TPDJButton
            Left = 149
            Top = 339
            Width = 132
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Salvar Cotação'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_salvarCotacaoClick
            TabOrder = 2
          end
          object btn_cancelarCotacao: TPDJButton
            Left = 285
            Top = 339
            Width = 132
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Cancelar Cotação'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_cancelarCotacaoClick
            TabOrder = 3
          end
          object Panel16: TPanel
            Tag = -1
            Left = 28
            Top = 115
            Width = 720
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Valor do Indice                                             ' +
              '                             mês anterior'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object edt_vlcota_cti: TBEdit
              Left = 140
              Top = 5
              Width = 152
              Height = 21
              Color = clInfoBk
              MaxLength = 4
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel13: TPanel
            Tag = -1
            Left = 28
            Top = 51
            Width = 720
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Data da Cotação'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object edt_dtcota_cti: TDCDateEdit
              Left = 140
              Top = 5
              Width = 152
              Height = 21
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object DBG_matricula: TDBGrid
            Left = 12
            Top = 32
            Width = 743
            Height = 284
            Hint = 'Clique duas vezes '
            DataSource = DataSource2
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
                FieldName = 'dtcota_cti'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlcota_cti'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtalteracao_cti'
                Width = 139
                Visible = True
              end>
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
          Width = 760
          Height = 485
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
    Top = 675
    Width = 1156
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal2.spc_cons_cotacaoindice
    Left = 121
    Top = 385
  end
end
