inherited Frm_Rel_ContaRepassada: TFrm_Rel_ContaRepassada
  Caption = 'Frm_Rel_ContaRepassada'
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
      Caption = '    Código do Conveniado'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 140
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
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
        Left = 236
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
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referencia                                     ' +
        '                                                                ' +
        '                           Sequencia'
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object edt_ano: TDCEdit
        Left = 380
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
      object edt_sequencia_con: TDCEdit
        Tag = -10
        Left = 574
        Top = 4
        Width = 75
        Height = 21
        Color = clWhite
        MaxLength = 12
        TabOrder = 2
      end
    end
    object PDJButton1: TPDJButton
      Left = 15
      Top = 142
      Width = 533
      Height = 25
      Hint = 'Visualiza e Imprime Autorização de Pagamento'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Visualiza e Imprime Autorização de Pagamento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 3
    end
    object PDJButton2: TPDJButton
      Left = 15
      Top = 193
      Width = 533
      Height = 25
      Hint = 'Visualiza e Imprime Autorização de Pagamento'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Visualiza e Imprime Autorização de Pagamento  (Novas Dotações)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 4
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    '
      TabOrder = 2
      object rdb_vencimento1: TRadioButton
        Left = 140
        Top = 10
        Width = 113
        Height = 17
        Caption = '1º Vencimento'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_vencimento2: TRadioButton
        Left = 285
        Top = 10
        Width = 113
        Height = 17
        Caption = '2º Vencimento'
        TabOrder = 1
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
