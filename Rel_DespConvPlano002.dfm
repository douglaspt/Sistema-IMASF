inherited Frm_Rel_DespConvPlano002: TFrm_Rel_DespConvPlano002
  Caption = 'Frm_Rel_DespConvPlano002'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Conveniado'
      TabOrder = 0
      object edt_conveniados: TDCEdit
        Tag = -10
        Left = 180
        Top = 5
        Width = 317
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 50
        TabOrder = 0
      end
    end
    object PDJButton4: TPDJButton
      Left = 4
      Top = 180
      Width = 533
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relat�rios de Despesas de Conveniados por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 3
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Referencia Final                               ' +
        '                                                                ' +
        '                                             Sequencia Final'
      TabOrder = 2
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
      object edt_sequenciaFinal: TDCEdit
        Left = 660
        Top = 5
        Width = 75
        Height = 21
        TabOrder = 2
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Referencia Inicial                             ' +
        '                                                                ' +
        '                                            Sequencia Inicial'
      TabOrder = 1
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
      object edt_sequenciaInicial: TDCEdit
        Left = 660
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Status da Conta'
      TabOrder = 4
      object cbx_status: TDCComboBox
        Left = 180
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        Items.Strings = (
          '0 - Repassadas'
          '1 - N�o Repassadas'
          '2 - Todas Contas')
        ValItems.Strings = (
          '0'
          '1'
          '2')
        ValueItem = '1'
        ItemHeight = 0
        Style = csOwnerDrawFixed
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
