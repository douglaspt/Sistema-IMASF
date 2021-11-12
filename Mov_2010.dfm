inherited Frm_Mov_2010: TFrm_Mov_2010
  Caption = 'Frm_Mov_2010'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_cancelar: TPDJButton
      Left = 12
      Top = 4
      Width = 292
      Height = 25
      Hint = '&Cancelar Parcelamentos em Aberto'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Cancelar Parcelamentos em Aberto'
      OnClick = btn_cancelarClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 8
      Top = 1
      Width = 760
      Height = 449
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 752
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
          Left = 1
          Top = 32
          Width = 800
          Height = 32
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
          object edt_cod_beneficiario: TDCEdit
            Tag = -10
            Left = 296
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
            TabOrder = 1
            Visible = False
          end
          object edt_inscricao_ben: TDCEdit
            Tag = -10
            Left = 336
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
        end
        object Panel5: TPanel
          Tag = -1
          Left = 1
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
          Width = 750
          Height = 418
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
