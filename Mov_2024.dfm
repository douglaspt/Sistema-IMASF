inherited Frm_Mov_2024: TFrm_Mov_2024
  Caption = 'Frm_Mov_2024'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_excluir: TPDJButton
      Left = 12
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Excluir'
      OnClick = btn_excluirClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 785
      Height = 348
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 777
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Cod. Descontos        '
          TabOrder = 0
          object SpeedButton6: TSpeedButton
            Left = 281
            Top = 4
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
            Tag = -1
            Left = 120
            Top = 5
            Width = 93
            Height = 21
            TabOrder = 0
            EditMask = '999999999'
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 800
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Benefici�rio'
          TabOrder = 1
          object edt_nome_ben: TDCEdit
            Tag = -10
            Left = 281
            Top = 5
            Width = 480
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
          Left = 0
          Top = 64
          Width = 800
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Matr�cula                                                   ' +
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
          Left = 0
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
            Left = 461
            Top = 5
            Width = 300
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
          object edt_cod_tarifa: TDCEdit
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
            TabOrder = 2
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Data de Refer�ncia                                          ' +
            '                Data do Desconto                                ' +
            '                                                                ' +
            '         '
          TabOrder = 4
          object edt_dtdesconto_flh: TDCDateEdit
            Tag = -10
            Left = 372
            Top = 5
            Width = 154
            Height = 21
            Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
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
          object edt_dtreferencia_flh: TDCDateEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 154
            Height = 21
            Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
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
            TabOrder = 1
            ReadOnly = True
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Valor                                                       ' +
            '                                           '
          TabOrder = 5
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
          object edt_cod_beneficiario: TDCEdit
            Tag = -10
            Left = 296
            Top = 5
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
            TabOrder = 1
            Visible = False
          end
          object edt_inscricao_ben: TDCEdit
            Tag = -10
            Left = 336
            Top = 5
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
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Opera��es'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 316
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
