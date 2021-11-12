inherited Frm_Mov_2030: TFrm_Mov_2030
  Caption = 'Frm_Mov_2030'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 797
      Height = 348
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 789
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Cod. Descontos                                              ' +
            '             Parcela'
          TabOrder = 0
          object SpeedButton6: TSpeedButton
            Left = 408
            Top = 5
            Width = 96
            Height = 22
            Hint = 'Localizar conforme o texto digitado'
            Caption = '&Verificar'
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
          object edt_cod_descontofolha: TDCEdit
            Left = 120
            Top = 5
            Width = 97
            Height = 21
            TabOrder = 0
          end
          object edt_parcelan_par: TDCEdit
            Left = 321
            Top = 5
            Width = 78
            Height = 21
            TabOrder = 1
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 789
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Beneficiário'
          TabOrder = 1
          object edt_nome_ben: TDCEdit
            Tag = -10
            Left = 281
            Top = 5
            Width = 413
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_carteira: TDCEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 153
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = 'ABCDEFGHIJLMN'
          end
        end
        object Panel24: TPanel
          Tag = -1
          Left = 1
          Top = 64
          Width = 800
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Matrícula                                                   ' +
            '                                         Digito'
          TabOrder = 2
          object edt_matricula: TDCEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 153
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_digito: TDCEdit
            Tag = -10
            Left = 372
            Top = 5
            Width = 75
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel8: TPanel
          Tag = -1
          Left = 1
          Top = 96
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Local de Desconto                                           ' +
            '                                  Tarifa'
          TabOrder = 3
          object edt_nome_emp: TDCEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 153
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_nome_tar: TDCEdit
            Tag = -10
            Left = 373
            Top = 5
            Width = 295
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = 'ABCDEFGHIJLMN'
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 1
          Top = 128
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Data do Desconto                                            ' +
            '                                                                ' +
            '                                 '
          TabOrder = 4
          object edt_dtdesconto_flh: TDCDateEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 154
            Height = 21
            Hint = 'DIA EM QUE É LANÇADO O DESCONTO/DESPESA'
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ReadOnly = True
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel4: TPanel
          Tag = -1
          Left = 1
          Top = 160
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Parcela                                               de    ' +
            '                                                                ' +
            '                                                         '
          TabOrder = 5
          object edt_nparcela_par: TDCEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 50
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_parcelan_par2: TDCEdit
            Tag = -10
            Left = 224
            Top = 5
            Width = 50
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 1
          Top = 192
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Valor                                                       ' +
            '                                           Valor da Parcela'
          TabOrder = 6
          object edt_vldesconto_adf: TDCEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 154
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_valorpagar_par: TDCEdit
            Tag = -10
            Left = 429
            Top = 5
            Width = 154
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel6: TPanel
          Tag = -1
          Left = 1
          Top = 224
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Nosso Número                                                ' +
            '                                                                ' +
            '                                                                ' +
            '    '
          TabOrder = 7
          object btn_alterar: TPDJButton
            Left = 286
            Top = 3
            Width = 82
            Height = 22
            Hint = 'Alterar Registro'
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
            Caption = '&Alterar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_alterarClick
            TabOrder = 0
          end
          object edt_nossonumero_flh: TDCEdit
            Left = 120
            Top = 5
            Width = 154
            Height = 21
            TabOrder = 1
          end
          object edt_cod_beneficiario: TDCEdit
            Tag = -10
            Left = 376
            Top = 3
            Width = 33
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Visible = False
          end
          object edt_inscricao_ben: TDCEdit
            Tag = -10
            Left = 416
            Top = 3
            Width = 33
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Visible = False
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
          Height = 318
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
    Left = 16
    Top = 473
  end
end
