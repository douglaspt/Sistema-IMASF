inherited Frm_Mov_2027: TFrm_Mov_2027
  Caption = 'Frm_Mov_2027'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_reagendar: TPDJButton
      Left = 4
      Top = 4
      Width = 221
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Reagendar'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_reagendarClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 792
      Height = 376
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 784
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Cod. Descontos                                              ' +
            '                                     Parcela'
          TabOrder = 0
          object edt_cod_descontofolha: TDCEdit
            Left = 108
            Top = 4
            Width = 93
            Height = 21
            TabOrder = 0
          end
          object edt_parcelan_par: TDCEdit
            Left = 391
            Top = 4
            Width = 93
            Height = 21
            TabOrder = 1
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 784
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Nº de Meses'
          TabOrder = 1
          object edt_meses: TDCEdit
            Left = 108
            Top = 4
            Width = 93
            Height = 21
            TabOrder = 0
            Text = '1'
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
          Width = 778
          Height = 346
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
