inherited Frm_Rel_3042: TFrm_Rel_3042
  Caption = 'Frm_Rel_3042'
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
      Caption = '    M�s / Ano de Referencia Inicial'
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
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
      object edt_ano: TDCEdit
        Left = 420
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 312
      Top = 140
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
      TabOrder = 2
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    M�s / Ano de Referencia Final'
      TabOrder = 1
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
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
      object edt_ano2: TDCEdit
        Left = 420
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Situa��o do Desconto'
      TabOrder = 3
      object cbx_cod_sitdesconto: TDCComboBox
        Tag = -1
        Left = 180
        Top = 3
        Width = 233
        Height = 21
        TabOrder = 0
        Text = #12
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
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
