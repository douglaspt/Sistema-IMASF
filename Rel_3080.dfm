inherited Frm_Rel_3080: TFrm_Rel_3080
  Caption = 'Frm_Rel_3080'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
    object PDJButton3: TPDJButton
      Left = 536
      Top = 4
      Width = 121
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
  inherited Panel3: TPanel
    Height = 487
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Data Desde'
      TabOrder = 0
      object PDJButton2: TPDJButton
        Left = 588
        Top = 8
        Width = 26
        Height = 19
        Hint = 'Limpar os Campos'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'X'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnClick = PDJButton2Click
        ShowHint = True
        TabOrder = 0
      end
      object edt_dtsistema_tmt: TDCDateEdit
        Tag = -1
        Left = 156
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Tipo de Processo'
      TabOrder = 1
      object cbx_cod_corprocesso: TDCComboBox
        Tag = -1
        Left = 156
        Top = 5
        Width = 153
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 68
      Width = 799
      Height = 111
      Caption = 'Ordem'
      ItemIndex = 0
      Items.Strings = (
        'Setor Destino / Ano / Processo'
        'Ano/Processo'
        'Setor Origem / Ano / Processo'
        'Cor /  Ano / Processo')
      TabOrder = 2
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
