inherited Frm_Rel_ExtratoConven002: TFrm_Rel_ExtratoConven002
  Caption = 'Frm_Rel_ExtratoConven002'
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
      Caption = '    Código(s) do(s) Conveniado(s)'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 728
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
      object edt_conveniados: TDCEdit
        Tag = -10
        Left = 180
        Top = 5
        Width = 317
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 50
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
      Top = 236
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do Convêniado por &Item de Serviço'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 9
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
    object PDJButton1: TPDJButton
      Left = 4
      Top = 272
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do Convêniado por &Sub Grupo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 7
    end
    object PDJButton2: TPDJButton
      Left = 4
      Top = 308
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do Convêniado por &Grupo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 8
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
      object edt_cod_itemservicoFin: TDCChoiceEdit
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
        OnExit = edt_cod_itemservicoFinExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoFinButtonClick
      end
      object edt_descricao_itc: TDCEdit
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
    object Panel8: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Item de Serviço Inicial'
      TabOrder = 1
      object edt_cod_itemservicoIni: TDCChoiceEdit
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
        OnExit = edt_cod_itemservicoIniExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoIniButtonClick
      end
      object DCEdit1: TDCEdit
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
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Tipo de Atendimento'
      TabOrder = 6
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
        Caption = 'Internação'
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
