inherited Frm_Mov_2047: TFrm_Mov_2047
  Caption = 'Frm_Mov_2047'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object btn_requerimento: TPDJButton
      Left = 126
      Top = 128
      Width = 310
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Salvar altera��o no nome das Chefias'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_requerimentoClick
      TabOrder = 2
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Chefe da Se��o M�dica'
      TabOrder = 0
      object edt_chefeSM: TDCEdit
        Tag = -10
        Left = 170
        Top = 4
        Width = 245
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 35
        TabOrder = 0
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
      Caption = '    Chefe da Se��o Administrativa'
      TabOrder = 1
      object edt_chefeDA: TDCEdit
        Tag = -10
        Left = 170
        Top = 4
        Width = 245
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 35
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Chefe da Revis�o de Contas'
      TabOrder = 3
      object edt_revcontas: TDCEdit
        Tag = -10
        Left = 170
        Top = 4
        Width = 245
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 35
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
  inherited Tmr_Close: TTimer
    Left = 16
    Top = 473
  end
end
