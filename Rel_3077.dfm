inherited Frm_Rel_3077: TFrm_Rel_3077
  Caption = 'Frm_Rel_3077'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
    TabOrder = 2
  end
  inherited Panel3: TPanel
    Top = 73
    Height = 455
    TabOrder = 1
    object PDJButton3: TPDJButton
      Left = 80
      Top = 108
      Width = 409
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir Contas de Pacientes em Tratamento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 0
    end
    object PDJButton1: TPDJButton
      Left = 80
      Top = 166
      Width = 409
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir Contas de Pacientes que n�o est�o em Tratamento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 1
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
  object Panel7: TPanel [4]
    Tag = -1
    Left = 0
    Top = 41
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    M�s / Ano de Refer�ncia '
    TabOrder = 4
    object cbx_cod_mes: TDCComboBox
      Tag = -1
      Left = 164
      Top = 5
      Width = 213
      Height = 21
      TabOrder = 0
      Items.Strings = (
        '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
        '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
      ValueItem = ''
      ItemHeight = 0
      Style = csOwnerDrawFixed
      ShowCheckBox = True
    end
    object edt_ano: TDCEdit
      Tag = -1
      Left = 382
      Top = 5
      Width = 75
      Height = 21
      TabOrder = 1
    end
  end
end
