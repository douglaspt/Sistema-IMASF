inherited Frm_Mov_2032: TFrm_Mov_2032
  Caption = 'Frm_Mov_2032'
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
      Left = -1
      Top = 5
      Width = 800
      Height = 485
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 792
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Código     '
          TabOrder = 0
          object edt_cod_autorizainternacao: TDCEdit
            Tag = -1
            Left = 90
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 12
            TabOrder = 0
            OnKeyDown = edt_cod_autorizainternacaoKeyDown
            EditMask = '999999999999'
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 792
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Inscrição'
          TabOrder = 1
          object edt_nome_ben: TDCEdit
            Tag = -10
            Left = 206
            Top = 5
            Width = 373
            Height = 21
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 60
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_inscricao: TDCEdit
            Tag = -10
            Left = 90
            Top = 5
            Width = 110
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
          object edt_cod_beneficiario: TDCEdit
            Tag = -10
            Left = 594
            Top = 5
            Width = 47
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
        Caption = 'Hist.Operações'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 455
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
    Left = 696
    Top = 217
  end
end
