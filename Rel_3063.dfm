inherited Frm_Rel_3063: TFrm_Rel_3063
  Caption = 'Frm_Rel_3063'
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
        '    Cod. Requerimento                                           ' +
        '             Dt. Protocolo   '
      TabOrder = 0
      object edt_dtprotocolo_rem: TDCDateEdit
        Tag = -1
        Left = 346
        Top = 5
        Width = 139
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_cod_Requerimento2: TDCEdit
        Tag = 2
        Left = 120
        Top = 5
        Width = 78
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 126
      Top = 124
      Width = 310
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato de Reembolso'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 1
    end
    object Panel5: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 2
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_nome: TDCEdit
        Tag = -10
        Left = 222
        Top = 5
        Width = 396
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Periodo       de                                            ' +
        '                    até'
      TabOrder = 3
      object edt_dtprotocoloIni: TDCDateEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 139
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtprotocoloFin: TDCDateEdit
        Tag = -1
        Left = 308
        Top = 5
        Width = 139
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object PDJButton1: TPDJButton
      Left = 126
      Top = 173
      Width = 310
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Extrato de Reembolso por Período'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 4
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
