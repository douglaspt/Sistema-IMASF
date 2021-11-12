inherited Frm_Rel_ExtratoItem003: TFrm_Rel_ExtratoItem003
  Caption = 'Frm_Rel_ExtratoItem003'
  ClientHeight = 557
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 505
  end
  inherited Panel3: TPanel
    Height = 464
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
        Left = 180
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
        Left = 276
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
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Mês / Ano de Referencia Inicial'
      TabOrder = 3
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
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
        Left = 420
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 4
      Top = 296
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do &Item de Serviço por Beneficiários'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 8
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Mês / Ano de Referencia Final'
      TabOrder = 4
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
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
      object edt_ano2: TDCEdit
        Left = 420
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data de Realização             de                           ' +
        '                              até'
      TabOrder = 5
      object edt_dtinicial: TDCDateEdit
        Tag = -5
        Left = 180
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
        Left = 356
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Item de Serviço Final'
      TabOrder = 2
      object edt_descricaoFinal_itc: TDCEdit
        Tag = -10
        Left = 276
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
      object edt_cod_itemservicoFinal: TDCChoiceEdit
        Tag = -2
        Left = 180
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnExit = edt_cod_itemservicoFinalExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoFinalButtonClick
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Idade do Beneficiário                                       ' +
        '    até'
      TabOrder = 6
      object edt_idade_ini: TDCEdit
        Tag = -1
        Left = 180
        Top = 5
        Width = 53
        Height = 21
        MaxLength = 3
        TabOrder = 0
      end
      object edt_idade_fin: TDCEdit
        Tag = -1
        Left = 264
        Top = 5
        Width = 53
        Height = 21
        MaxLength = 3
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Plano de Benefícios'
      TabOrder = 7
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 137
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 257
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Empresa de Origem'
      TabOrder = 9
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 137
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel11: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Item de Serviço Inicial'
      TabOrder = 1
      object edt_descricaoInicial_itc: TDCEdit
        Tag = -10
        Left = 276
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
      object edt_cod_itemservicoInicial: TDCChoiceEdit
        Tag = -2
        Left = 180
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnExit = edt_cod_itemservicoInicialExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoInicialButtonClick
      end
    end
    object PDJButton1: TPDJButton
      Left = 4
      Top = 336
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do &Item de Serviço por Beneficiários II'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 10
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 538
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
