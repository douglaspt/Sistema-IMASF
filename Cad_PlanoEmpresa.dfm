inherited Frm_Cad_PlanoEmpresa: TFrm_Cad_PlanoEmpresa
  Caption = 'Frm_Cad_PlanoEmpresa'
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
    object btn_relatorio: TPDJButton
      Left = 576
      Top = 4
      Width = 101
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
      OnClick = btn_relatorioClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Nome Completo'
      TabOrder = 2
      object edt_descricao_emp: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 429
        Height = 21
        MaxLength = 60
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código da Empresa'
      TabOrder = 0
      object edt_cod_empresa: TEditButton
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
        OnButtonClick = edt_cod_empresaButtonClick
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
      Caption = '    Nome da Empresa'
      TabOrder = 1
      object edt_nome_emp: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        MaxLength = 12
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 136
      Width = 796
      Height = 351
      Align = alBottom
      Alignment = taLeftJustify
      TabOrder = 3
      object Label5: TLabel
        Left = 4
        Top = 12
        Width = 234
        Height = 13
        Caption = 'TABELA DE PREÇOS PARA OS PLANOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn_adicionarPreco: TPDJButton
        Left = 9
        Top = 320
        Width = 132
        Height = 25
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
        TabOrder = 1
      end
      object btn_excluirPreco: TPDJButton
        Left = 425
        Top = 320
        Width = 132
        Height = 25
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
        TabOrder = 2
      end
      object btn_salvarPreco: TPDJButton
        Left = 149
        Top = 320
        Width = 132
        Height = 25
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
        TabOrder = 3
      end
      object btn_cancelarPreco: TPDJButton
        Left = 285
        Top = 320
        Width = 132
        Height = 25
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
        TabOrder = 4
      end
      object Panel33: TPanel
        Tag = -1
        Left = 8
        Top = 36
        Width = 773
        Height = 32
        Alignment = taLeftJustify
        Caption = '  Descrição'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object edt_descricao_ple: TBEdit
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
      object Panel7: TPanel
        Tag = -1
        Left = 8
        Top = 68
        Width = 773
        Height = 32
        Alignment = taLeftJustify
        Caption = '  Tipo de Dependente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object cbx_cod_tipodependente: TBComboBox
          Tag = -5
          Left = 116
          Top = 5
          Width = 285
          Height = 21
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Tag = -1
        Left = 8
        Top = 100
        Width = 773
        Height = 32
        Alignment = taLeftJustify
        Caption = '  Plano de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object cbx_cod_planopagto: TBComboBox
          Tag = -5
          Left = 116
          Top = 5
          Width = 285
          Height = 21
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object DBG_matricula: TDBGrid
        Left = 4
        Top = 28
        Width = 785
        Height = 289
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
            FieldName = 'descricao_ple'
            Width = 348
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_tdp'
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_plp'
            Width = 248
            Visible = True
          end>
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
  object DataSource2: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_planoempresa
    Left = 121
    Top = 361
  end
end
