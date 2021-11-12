inherited Frm_Rel_3044: TFrm_Rel_3044
  Caption = 'Frm_Rel_3044'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
  end
  inherited Panel3: TPanel
    Height = 487
    object PDJButton3: TPDJButton
      Left = 216
      Top = 148
      Width = 153
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
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Cod. Item de Serviço'
      TabOrder = 0
      object edt_cod_itemservico: TDCChoiceEdit
        Tag = -1
        Left = 139
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_itemservicoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoButtonClick
        EditMask = '9999999999'
      end
      object edt_nome_its: TDCEdit
        Tag = -5
        Left = 258
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
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Referencia   de                                     ' +
        '                       até'
      TabOrder = 2
      object edt_dtinicial: TDCDateEdit
        Tag = -5
        Left = 139
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
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Cod.Conveniado'
      TabOrder = 1
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -1
        Left = 139
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -5
        Left = 259
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
end
