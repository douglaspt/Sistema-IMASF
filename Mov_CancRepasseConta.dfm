inherited Frm_Mov_CancRepasseConta: TFrm_Mov_CancRepasseConta
  Caption = 'Frm_Mov_CancRepasseConta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel4: TPanel
          Tag = -2
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    C�digo do Conveniado'
          TabOrder = 0
          object edt_razao_con: TBEdit
            Tag = -1
            Left = 236
            Top = 5
            Width = 367
            Height = 21
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 0
            NumbersOnly = False
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
            OnExit = edt_cod_conveniadoExit
          end
          object pnl_alerta: TPanel
            Left = 605
            Top = 5
            Width = 183
            Height = 21
            BevelOuter = bvLowered
            Caption = 'CONTA REPASSADA'
            Color = clRed
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    M�s / Ano de Refer�ncia                                     ' +
            '                                                                ' +
            '                           Sequ�ncia'
          TabOrder = 1
          object edt_sequencia_con: TBEdit
            Tag = -10
            Left = 574
            Top = 4
            Width = 75
            Height = 21
            CharCase = ecLowerCase
            MaxLength = 12
            TabOrder = 2
            OnExit = edt_sequencia_conExit
            NumbersOnly = False
          end
          object edt_ano: TBEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            CharCase = ecLowerCase
            TabOrder = 1
            OnExit = edt_anoExit
            NumbersOnly = False
          end
          object cbx_cod_mes: TBComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = cbx_cod_mesChange
          end
        end
        object btn_cancelarrepasse: TPDJButton
          Left = 240
          Top = 120
          Width = 309
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Cancelar Repasse de Conta � Contabilidade'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cancelarrepasseClick
          TabOrder = 2
        end
        object btn_cancelaregistro: TPDJButton
          Left = 240
          Top = 180
          Width = 309
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Cancelar Registro de Conta � Contabilidade'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_cancelaregistroClick
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist�rico'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 456
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
end
