inherited Frm_Rel_3076: TFrm_Rel_3076
  Caption = 'Frm_Rel_3076'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
    TabOrder = 4
  end
  inherited Panel3: TPanel
    Top = 105
    Height = 423
    TabOrder = 3
    object PDJButton3: TPDJButton
      Left = 200
      Top = 68
      Width = 233
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
      '    Data de Refer�ncia        de                                ' +
      '                       at�'
    TabOrder = 1
    object edt_dtinicial: TDCDateEdit
      Tag = -5
      Left = 156
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
      Left = 334
      Top = 5
      Width = 141
      Height = 21
      TabOrder = 1
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
  end
  object Panel1: TPanel [5]
    Tag = -1
    Left = 0
    Top = 73
    Width = 800
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Local de Desconto '
    TabOrder = 2
    object cbx_cod_empresafolha: TDCComboBox
      Tag = -1
      Left = 156
      Top = 5
      Width = 233
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
  end
end
