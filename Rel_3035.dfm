inherited Frm_Rel_3035: TFrm_Rel_3035
  Caption = 'Frm_Rel_3035'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
  end
  inherited Panel3: TPanel
    Top = 73
    Height = 455
    object PDJButton3: TPDJButton
      Left = 304
      Top = 20
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
      TabOrder = 0
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
  object Panel5: TPanel [4]
    Tag = -1
    Left = 0
    Top = 41
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = 
      '    Data de Realização             de                           ' +
      '                              até'
    TabOrder = 4
    object edt_dtinicial: TDCDateEdit
      Tag = -5
      Left = 180
      Top = 5
      Width = 141
      Height = 21
      TabOrder = 0
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
    object edt_dtfinal: TDCDateEdit
      Tag = -5
      Left = 356
      Top = 5
      Width = 141
      Height = 21
      TabOrder = 1
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
  end
end
