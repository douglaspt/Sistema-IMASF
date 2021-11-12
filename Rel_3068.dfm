inherited Frm_Rel_3068: TFrm_Rel_3068
  Caption = 'Frm_Rel_3068'
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
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 158
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -10
        Left = 255
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Refer. Final                                   ' +
        '                                                                ' +
        '                      '
      TabOrder = 2
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 158
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
      object ed2_ano: TDCEdit
        Left = 398
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 40
      Top = 191
      Width = 449
      Height = 25
      Hint = 'Imprimir '
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Visualiza e Imprime Totais de Medicamentos por Periodo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 5
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Refer. Inicial                                 ' +
        '                                                                ' +
        '                               '
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 158
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
        Left = 398
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton2: TPDJButton
      Left = 40
      Top = 143
      Width = 449
      Height = 25
      Hint = 'Imprimir '
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Visualiza e Imprime Totais de Materiais por Periodo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 4
    end
    object Panel14: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Tipo de Atendimento'
      TabOrder = 3
      object rdb_abulatorial: TRadioButton
        Left = 180
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Ambulatorial'
        TabOrder = 0
      end
      object rdb_internacao: TRadioButton
        Left = 284
        Top = 8
        Width = 77
        Height = 17
        Caption = 'Interna��o'
        TabOrder = 1
      end
      object rdb_todos: TRadioButton
        Left = 384
        Top = 8
        Width = 65
        Height = 17
        Caption = 'Todos'
        Checked = True
        TabOrder = 2
        TabStop = True
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
