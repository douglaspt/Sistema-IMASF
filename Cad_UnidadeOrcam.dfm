inherited Frm_Cad_UnidadeOrcam: TFrm_Cad_UnidadeOrcam
  Caption = 'Frm_Cad_UnidadeOrcam'
  ClientWidth = 798
  Scaled = False
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
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Cod. Unidade '
      TabOrder = 0
      object edt_cod_unidadeOrcam: TEditButton
        Tag = -2
        Left = 120
        Top = 5
        Width = 93
        Height = 22
        NumbersOnly = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnButtonClick = edt_cod_unidadeOrcamButtonClick
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
      Alignment = taLeftJustify
      Caption = '    Descrição'
      TabOrder = 1
      object edt_descUnidade_uno: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 401
        Height = 21
        MaxLength = 50
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Ano Exercício'
      TabOrder = 2
      object edt_exercicio_uno: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 65
        Height = 21
        MaxLength = 20
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 399
      Alignment = taLeftJustify
      TabOrder = 3
      object lbl_tlcontas: TLabel
        Left = 518
        Top = 244
        Width = 114
        Height = 13
        Caption = 'Valor Total Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn_adicionar_dtc: TPDJButton
        Left = 15
        Top = 299
        Width = 109
        Height = 25
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
        OnClick = btn_adicionar_dtcClick
        TabOrder = 1
      end
      object btn_alterar_dtc: TPDJButton
        Left = 128
        Top = 299
        Width = 109
        Height = 25
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
        OnClick = btn_alterar_dtcClick
        TabOrder = 2
      end
      object btn_remover_dtc: TPDJButton
        Left = 466
        Top = 299
        Width = 109
        Height = 25
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
        OnClick = btn_remover_dtcClick
        TabOrder = 3
      end
      object btn_salvar_dtc: TPDJButton
        Left = 240
        Top = 299
        Width = 109
        Height = 25
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
        OnClick = btn_salvar_dtcClick
        TabOrder = 4
      end
      object btn_cancelar_dtc: TPDJButton
        Left = 353
        Top = 299
        Width = 109
        Height = 25
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
        OnClick = btn_cancelar_dtcClick
        TabOrder = 5
      end
      object Panel7: TPanel
        Tag = -1
        Left = 12
        Top = 21
        Width = 767
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Cod. Dotacao'
        TabOrder = 6
        object cbx_cod_dotacaoBase: TBComboBox
          Left = 108
          Top = 5
          Width = 229
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Tag = -1
        Left = 12
        Top = 53
        Width = 767
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Valor'
        TabOrder = 7
        object edt_valor_dtc: TBEdit
          Left = 108
          Top = 5
          Width = 128
          Height = 21
          MaxLength = 20
          TabOrder = 0
          NumbersOnly = False
        end
      end
      object dbg_dotacao: TDBGrid
        Left = 8
        Top = 10
        Width = 774
        Height = 222
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'dotacao'
            Title.Caption = 'Cod. Dotação'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Proj_Ativ_OpEsp'
            Width = 490
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_dtc'
            Width = 95
            Visible = True
          end>
      end
      object edt_vlTotal: TBEdit
        Left = 650
        Top = 238
        Width = 129
        Height = 21
        MaxLength = 20
        TabOrder = 8
        NumbersOnly = False
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_dotacao
    Left = 625
    Top = 181
  end
end
