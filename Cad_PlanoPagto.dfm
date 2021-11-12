inherited Frm_Cad_PlanoPagto: TFrm_Cad_PlanoPagto
  Caption = 'Frm_Cad_PlanoPagto'
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 798
    inherited Image1: TImage
      Width = 796
    end
  end
  inherited Panel2: TPanel
    Width = 798
    inherited Image3: TImage
      Width = 796
    end
    object btn_imprimir: TPDJButton
      Left = 572
      Top = 4
      Width = 104
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
      Visible = False
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Plano'
      TabOrder = 0
      object edt_cod_planopagto: TEditButton
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
        OnButtonClick = edt_cod_planopagtoButtonClick
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
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Nome do Plano'
      TabOrder = 1
      object edt_nome_plp: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 353
        Height = 21
        MaxLength = 50
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 365
      Alignment = taLeftJustify
      TabOrder = 2
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 794
        Height = 378
        ActivePage = TabSheet1
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Tabela de valores para os planos'
          object Panel12: TPanel
            Tag = -1
            Left = 12
            Top = 119
            Width = 750
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Observação'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object edt_obs_hpi: TBEdit
              Tag = -5
              Left = 116
              Top = 5
              Width = 421
              Height = 21
              MaxLength = 50
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 12
            Top = 23
            Width = 750
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  De                                                   à        ' +
              '              anos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_faixaIni_piv: TBEdit
              Tag = -5
              Left = 116
              Top = 5
              Width = 45
              Height = 21
              MaxLength = 50
              TabOrder = 0
              NumbersOnly = False
            end
            object edt_faixaFin_piv: TBEdit
              Tag = -5
              Left = 196
              Top = 5
              Width = 45
              Height = 21
              MaxLength = 50
              TabOrder = 1
              NumbersOnly = False
            end
          end
          object Panel33: TPanel
            Tag = -1
            Left = 12
            Top = 55
            Width = 750
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Descrição'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_descricao_piv: TBEdit
              Tag = -5
              Left = 116
              Top = 5
              Width = 421
              Height = 21
              MaxLength = 50
              TabOrder = 0
              NumbersOnly = False
            end
          end
          object Panel9: TPanel
            Tag = -1
            Left = 12
            Top = 87
            Width = 750
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Valor                                                       ' +
              '                  Mês/Ano de Inicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_vlfixo_piv: TBEdit
              Tag = -5
              Left = 116
              Top = 5
              Width = 125
              Height = 21
              MaxLength = 50
              TabOrder = 0
              NumbersOnly = False
            end
            object edt_ano: TBEdit
              Tag = -6
              Left = 483
              Top = 5
              Width = 54
              Height = 21
              MaxLength = 50
              TabOrder = 1
              NumbersOnly = False
            end
            object cbx_cod_mes: TBComboBox
              Tag = -6
              Left = 352
              Top = 5
              Width = 128
              Height = 21
              ItemHeight = 13
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
          end
          object Panel10: TPanel
            Tag = -1
            Left = 12
            Top = 151
            Width = 750
            Height = 51
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Label3: TLabel
              Left = 8
              Top = 6
              Width = 280
              Height = 13
              Caption = 'VALOR SOBRE A BASE DE CONTRIBUIÇÃO ( SALÁRIO )'
            end
            object Label4: TLabel
              Left = 8
              Top = 26
              Width = 101
              Height = 13
              Caption = 'Valor do Dependente'
            end
            object Label6: TLabel
              Left = 252
              Top = 26
              Width = 99
              Height = 13
              Caption = '% sobre Contribuição'
            end
            object edt_vldependente_piv: TBEdit
              Tag = -5
              Left = 116
              Top = 23
              Width = 125
              Height = 21
              MaxLength = 50
              TabOrder = 0
              NumbersOnly = False
            end
            object edt_percentual_piv: TBEdit
              Tag = -5
              Left = 360
              Top = 23
              Width = 45
              Height = 21
              MaxLength = 50
              TabOrder = 1
              NumbersOnly = False
            end
          end
          object Panel11: TPanel
            Tag = -1
            Left = 12
            Top = 202
            Width = 750
            Height = 35
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label7: TLabel
              Left = 8
              Top = 8
              Width = 118
              Height = 13
              Caption = 'FORMA DE COBRANÇA'
            end
            object rdB_maior: TRadioButton
              Left = 148
              Top = 10
              Width = 113
              Height = 17
              Caption = 'Cobrar Valor Maior'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object RdB_fixado: TRadioButton
              Left = 332
              Top = 10
              Width = 113
              Height = 17
              Caption = 'Cobrar Valor Fixado'
              TabOrder = 1
            end
            object Rdb_Contribuicao: TRadioButton
              Left = 524
              Top = 10
              Width = 193
              Height = 17
              Caption = 'Cobrar sobre Base de Contribuição'
              TabOrder = 2
            end
          end
          object DBG_matricula: TDBGrid
            Left = 1
            Top = 1
            Width = 769
            Height = 263
            Hint = 'Clique duas vezes '
            DataSource = DataSource1
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
                FieldName = 'descricao_piv'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Width = 413
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlfixo_piv'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vldependente_piv'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'percentual_piv'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Visible = True
              end>
          end
          object btn_adicionarPreco: TPDJButton
            Left = 9
            Top = 288
            Width = 132
            Height = 25
            Hint = 'Adicionar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Adicionar Preço'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_adicionarPrecoClick
            TabOrder = 7
          end
          object btn_alterarPreco: TPDJButton
            Left = 145
            Top = 288
            Width = 132
            Height = 25
            Hint = 'Alterar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Alterar &Preço'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_alterarPrecoClick
            TabOrder = 8
          end
          object btn_salvarPreco: TPDJButton
            Left = 285
            Top = 288
            Width = 132
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Salvar Preço'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_salvarPrecoClick
            TabOrder = 9
          end
          object btn_cancelarPreco: TPDJButton
            Left = 421
            Top = 288
            Width = 132
            Height = 25
            Hint = 'Cancelar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Cancelar Preço'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_cancelarPrecoClick
            TabOrder = 10
          end
          object btn_excluirPreco: TPDJButton
            Left = 561
            Top = 288
            Width = 132
            Height = 25
            Hint = 'Excluir'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Excluir Preço'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_excluirPrecoClick
            TabOrder = 11
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Histórico de valores'
          ImageIndex = 1
          object stg_historico: TStringGrid
            Left = 1
            Top = 1
            Width = 779
            Height = 296
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColCount = 1
            DefaultColWidth = 70
            DefaultRowHeight = 16
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnDrawCell = stg_historicoDrawCell
          end
          object PDJButton1: TPDJButton
            Left = 564
            Top = 305
            Width = 104
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
            OnClick = PDJButton1Click
            TabOrder = 1
          end
        end
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Plano de Benefícios'
      TabOrder = 3
      object cbx_cod_plano: TBComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 155
        Height = 21
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Situação'
      TabOrder = 4
      object cbx_cod_statusAtivo: TBComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 155
        Height = 21
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
  object DataSource1: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_planoitemvalor
    Left = 69
    Top = 489
  end
  object DataSource2: TDataSource
    Left = 105
    Top = 489
  end
end
