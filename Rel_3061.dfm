inherited Frm_Rel_3061: TFrm_Rel_3061
  Caption = 'Frm_Rel_3061'
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
      Left = 216
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
    Caption = '    M�s/Ano de Refer�ncia                  '
    TabOrder = 4
    object cbx_cod_mes: TDCComboBox
      Tag = -1
      Left = 143
      Top = 5
      Width = 177
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
      Left = 324
      Top = 5
      Width = 52
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      EditMask = '9999'
    end
    object CheckBox1: TCheckBox
      Left = 400
      Top = 8
      Width = 393
      Height = 17
      Caption = 'Visualizar somente os provenientes do Arquivo TXT da Farm�cia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
end
