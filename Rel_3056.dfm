inherited Frm_Rel_3056: TFrm_Rel_3056
  Caption = 'Frm_Rel_3056'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
  end
  inherited Panel3: TPanel
    Height = 487
    object PDJButton3: TPDJButton
      Left = 56
      Top = 89
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Informativo (Filho(a) inválido(a) - Dependente)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 0
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 33
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Modo da operação'
      TabOrder = 1
      object rdb_visualizar: TRadioButton
        Left = 150
        Top = 10
        Width = 77
        Height = 17
        Caption = 'Visualizar'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_imprimir: TRadioButton
        Left = 266
        Top = 10
        Width = 72
        Height = 17
        Caption = 'Imprimir'
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 56
      Top = 127
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Informativo  (Inscrição de Assistido)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 2
    end
    object PDJButton2: TPDJButton
      Left = 56
      Top = 165
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Informativo (Menor Sob Guarda - Dependente)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 3
    end
    object PDJButton4: TPDJButton
      Left = 57
      Top = 206
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Informativo (Enteado ou Filho do Companheiro(a))'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 4
    end
    object PDJButton5: TPDJButton
      Left = 57
      Top = 248
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Informativo (Pai ou Mãe - Dependente)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton5Click
      TabOrder = 5
    end
    object PDJButton6: TPDJButton
      Left = 57
      Top = 288
      Width = 330
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '(Transf. de Plano de Menor Contrib. p/ um de Maior)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton6Click
      TabOrder = 6
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 561
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
