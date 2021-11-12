inherited Frm_Mov_2025: TFrm_Mov_2025
  Caption = 'Frm_Mov_2025'
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
        '    Protocolo                                                   ' +
        '                   Dt. Protocolo   '
      TabOrder = 0
      object edt_cod_Requerimento: TDCChoiceEdit
        Tag = -1
        Left = 545
        Top = 5
        Width = 88
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        TabStop = False
        MaxLength = 10
        TabOrder = 2
        Visible = False
        OnKeyDown = edt_cod_RequerimentoKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_RequerimentoButtonClick
        EditMask = '9999999'
      end
      object edt_dtprotocolo_rem: TDCDateEdit
        Tag = -1
        Left = 346
        Top = 5
        Width = 139
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_cod_Requerimento2: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 78
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
    object btn_requerimento: TPDJButton
      Left = 126
      Top = 128
      Width = 310
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = ' Autorização de Pagamento de Reembolso'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_requerimentoClick
      TabOrder = 1
    end
    object pnl_favorecido: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Favorecido'
      TabOrder = 2
      object cbx_cod_beneficiario: TBComboBox
        Left = 140
        Top = 5
        Width = 349
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbx_cod_beneficiarioChange
      end
      object edt_cod_beneficiario: TEdit
        Left = 544
        Top = 8
        Width = 49
        Height = 21
        TabOrder = 1
        Visible = False
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
  inherited Tmr_Close: TTimer
    Left = 16
    Top = 473
  end
end
