inherited Frm_Rel_3064: TFrm_Rel_3064
  Caption = 'Frm_Rel_3064'
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
        '    C�digo do Pedido de Compra                                  ' +
        '                       '
      TabOrder = 0
      object edt_cod_pedidoCompraFarmacia: TDCEdit
        Tag = 2
        Left = 184
        Top = 5
        Width = 89
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object PDJButton3: TPDJButton
      Left = 62
      Top = 92
      Width = 310
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir'
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
  inherited Tmr_Close: TTimer
    Left = 16
    Top = 473
  end
end
