inherited Frm_Rel_ExtratoConven001: TFrm_Rel_ExtratoConven001
  Caption = 'Frm_Rel_ExtratoConven001'
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
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referencia Inicial                             ' +
        '                                                                ' +
        '                        Sequencia Inicial'
      TabOrder = 1
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
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequenciaInicial: TDCEdit
        Left = 607
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 3
        TabOrder = 2
        EditMask = '999'
      end
    end
    object PDJButton3: TPDJButton
      Left = 4
      Top = 144
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
      Caption = 
        '    Mês / Ano de Referencia Final                               ' +
        '                                                                ' +
        '                        Sequencia Final'
      TabOrder = 2
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
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequenciaFinal: TDCEdit
        Left = 607
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 3
        TabOrder = 2
        EditMask = '999'
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
      Caption = 
        '    Data de Realização             de                           ' +
        '                              até'
      TabOrder = 3
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
      Top = 180
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
      TabOrder = 5
    end
    object PDJButton2: TPDJButton
      Left = 4
      Top = 216
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
      TabOrder = 6
    end
    object pgb_registros: TProgressBar
      Left = 6
      Top = 460
      Width = 787
      Height = 19
      Min = 0
      Max = 100
      TabOrder = 7
      Visible = False
    end
    object btn_estratoMensal: TPDJButton
      Left = 5
      Top = 280
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do Convêniado por &Item de Serviço Mês a Mês (CSV)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_estratoMensalClick
      TabOrder = 8
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
  object SaveDialog: TSaveDialog
    Left = 712
    Top = 177
  end
end
