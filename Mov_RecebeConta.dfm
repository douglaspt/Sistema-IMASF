inherited Frm_Mov_RecebeConta: TFrm_Mov_RecebeConta
  Caption = 'Frm_Mov_RecebeConta'
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
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Data de Recebimento'
      TabOrder = 1
      object edt_dtrecebimento_con: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        OnExit = edt_dtrecebimento_conExit
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 4
      Visible = False
      object CheckBox1: TCheckBox
        Left = 12
        Top = 8
        Width = 337
        Height = 17
        Caption = 'Emitir Protocolo de Recebimento da Conta'
        TabOrder = 0
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
      Caption = '    Tipo de Mídia'
      TabOrder = 3
      object cbx_cod_Midia: TDCComboBox
        Left = 140
        Top = 5
        Width = 361
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
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 5
      object btn_receber: TPDJButton
        Left = 4
        Top = 4
        Width = 289
        Height = 25
        Hint = 'Voltar para a tela principal'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Efetuar Recebimento'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_receberClick
        TabOrder = 0
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
        '    Mês / Ano de Referencia                                     ' +
        '                                                                ' +
        '                            Sequencia'
      TabOrder = 2
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
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'edt_ano'
        OnExit = edt_anoExit
      end
      object edt_sequencia_con: TDCEdit
        Tag = -10
        Left = 576
        Top = 4
        Width = 75
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
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
