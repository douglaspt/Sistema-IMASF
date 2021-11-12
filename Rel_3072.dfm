inherited Frm_Rel_3072: TFrm_Rel_3072
  Caption = 'Frm_Rel_3072'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PDJButton4: TPDJButton
      Left = 40
      Top = 86
      Width = 409
      Height = 25
      Hint = 'Imprime Ficha Cadastral do Segurado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 1
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Cod. Autorização'
      TabOrder = 0
      object edt_cod_autorizacao: TDCEdit
        Tag = -10
        Left = 135
        Top = 5
        Width = 114
        Height = 21
        Color = clWhite
        MaxLength = 20
        TabOrder = 0
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
