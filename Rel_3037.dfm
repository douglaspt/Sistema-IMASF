inherited Frm_Rel_3037: TFrm_Rel_3037
  Caption = 'Frm_Rel_3037'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '                                   C�digo Inicial               ' +
        '                    C�digo Final'
      TabOrder = 0
      object edt_codini: TDCEdit
        Left = 180
        Top = 4
        Width = 61
        Height = 21
        MaxLength = 4
        TabOrder = 0
      end
      object edt_codfinal: TDCEdit
        Left = 342
        Top = 4
        Width = 61
        Height = 21
        MaxLength = 4
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 244
      Top = 44
      Width = 97
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 1
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
