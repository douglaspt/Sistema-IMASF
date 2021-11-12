inherited Frm_Mov_2050: TFrm_Mov_2050
  Caption = 'Frm_Mov_2050'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object PDJButton1: TPDJButton
      Left = 16
      Top = 4
      Width = 201
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Processamento de Contas'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 1
    end
    object PDJButton10: TPDJButton
      Left = 239
      Top = 4
      Width = 226
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = ' Emitir &Autorização de Pagamento'
      OnClick = PDJButton10Click
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    object Label4: TLabel
      Left = 220
      Top = 363
      Width = 70
      Height = 13
      Caption = 'Vl. Total Pagar'
      Visible = False
    end
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
    object btn_carregaContrato: TPDJButton
      Left = 56
      Top = 410
      Width = 353
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Processamento e Repasse de Contratos Especiais'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_carregaContratoClick
      TabOrder = 8
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Contrato                                                    ' +
        '                                                                ' +
        '                    '
      TabOrder = 4
      object cbx_cod_contratoServicoEspecial: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 317
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
      Top = 193
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Valor do Repasse'
      TabOrder = 6
      object edt_vlRepasse: TDCEdit
        Tag = -10
        Left = 140
        Top = 4
        Width = 133
        Height = 21
        Color = clWhite
        MaxLength = 12
        TabOrder = 0
      end
      object btn_atulaizar: TPDJButton
        Left = 279
        Top = 4
        Width = 82
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Atualizar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_atulaizarClick
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Data de Vencimento'
      TabOrder = 5
      object edt_dtvencimento_cta: TDCDateEdit
        Tag = -5
        Left = 140
        Top = 5
        Width = 133
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object chb_Iss: TCheckBox
        Left = 595
        Top = 5
        Width = 81
        Height = 17
        Caption = 'ISS - SBC'
        TabOrder = 1
      end
    end
    object ProgressBar: TProgressBar
      Left = 8
      Top = 437
      Width = 785
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 7
      Visible = False
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 455
      Width = 798
      Height = 32
      Align = alBottom
      Alignment = taLeftJustify
      Caption = '    Valor a Pagar'
      TabOrder = 9
      object edt_vlPagar: TDCEdit
        Tag = -10
        Left = 140
        Top = 4
        Width = 133
        Height = 21
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnl_empenho2: TPanel
      Tag = -1
      Left = 2
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '                                                                ' +
        '                                                          Empenh' +
        'o                                                           Sald' +
        'o'
      TabOrder = 3
      Visible = False
      object edt_numEmpenho2: TDCEdit
        Tag = 5
        Left = 428
        Top = 5
        Width = 75
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 10
        ReadOnly = True
        TabOrder = 0
      end
      object edt_anoEmpenho2: TDCEdit
        Tag = 5
        Left = 508
        Top = 5
        Width = 61
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 4
        ReadOnly = True
        TabOrder = 1
      end
      object edt_saldo2: TDCEdit
        Tag = 5
        Left = 635
        Top = 5
        Width = 140
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 2
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    CNPJ                                                        ' +
        '                                                     Empenho    ' +
        '                                                       Saldo'
      TabOrder = 2
      object cbx_cnpj_emc: TDCComboBox
        Tag = -10
        Left = 137
        Top = 5
        Width = 209
        Height = 21
        Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = cbx_cnpj_emcChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_numEmpenho_emc: TDCEdit
        Tag = 5
        Left = 428
        Top = 5
        Width = 75
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 10
        ReadOnly = True
        TabOrder = 1
      end
      object edt_anoEmpenho_emc: TDCEdit
        Tag = 5
        Left = 508
        Top = 5
        Width = 61
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 4
        ReadOnly = True
        TabOrder = 2
      end
      object edt_saldo: TDCEdit
        Tag = 5
        Left = 635
        Top = 5
        Width = 140
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 3
      end
    end
    object lsv_empenho: TListView
      Left = 9
      Top = 231
      Width = 697
      Height = 128
      Columns = <
        item
          Caption = 'Numero PA'
          Width = 100
        end
        item
          Caption = 'Empenho'
          Width = 60
        end
        item
          Caption = 'Ano'
        end
        item
          Caption = 'Valor a Pagar'
          Width = 100
        end
        item
          Caption = 'Saldo Empenho'
          Width = 100
        end
        item
          Caption = 'cod_empenhoConveniado'
          Width = 60
        end>
      TabOrder = 10
      ViewStyle = vsReport
      Visible = False
    end
    object edt_vlTotalRepassado: TDCEdit
      Left = 220
      Top = 379
      Width = 117
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Visible = False
      Alignment = taRightJustify
    end
    object pnl_alertaEmpenho: TPanel
      Left = 399
      Top = 378
      Width = 306
      Height = 21
      BevelOuter = bvLowered
      Caption = 'VERIFICAR SALDO DOS EMPENHOS'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Visible = False
    end
    object btn_empenho: TPDJButton
      Left = 424
      Top = 410
      Width = 233
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Empenho'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_empenhoClick
      Visible = False
      TabOrder = 13
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
    Top = 497
  end
end
