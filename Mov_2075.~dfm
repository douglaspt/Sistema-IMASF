inherited Frm_Mov_2075: TFrm_Mov_2075
  Caption = 'Frm_Mov_2075'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object PDJButton10: TPDJButton
      Left = 264
      Top = 4
      Width = 230
      Height = 25
      Hint = ' Emitir &Autorização de Pagamento'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = ' Emitir &Autorização de Pagamento'
      OnClick = PDJButton10Click
      TabOrder = 1
    end
    object btn_repassarConta: TPDJButton
      Left = 7
      Top = 3
      Width = 230
      Height = 25
      Hint = 'Repassar Conta à Contabilidade'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Repassar Conta à Contabilidade'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_repassarContaClick
      TabOrder = 2
    end
    object btn_statusconta: TPDJButton
      Left = 526
      Top = 4
      Width = 140
      Height = 25
      Hint = 'Status da Conta'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Status da Conta'
      OnClick = btn_statuscontaClick
      TabOrder = 3
    end
  end
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
        Tag = -12
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
        Tag = -12
        Left = 236
        Top = 5
        Width = 365
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
      end
      object pnl_alerta: TPanel
        Left = 608
        Top = 5
        Width = 183
        Height = 21
        BevelOuter = bvLowered
        Caption = 'CONTA REPASSADA'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
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
        '    Mês / Ano de Referência                                     ' +
        '                                                                ' +
        '         Sequência'
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -12
        Left = 140
        Top = 5
        Width = 227
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
        Tag = -12
        Left = 376
        Top = 5
        Width = 75
        Height = 21
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequencia_con: TDCEdit
        Tag = -12
        Left = 525
        Top = 5
        Width = 75
        Height = 21
        Color = clWhite
        MaxLength = 12
        TabOrder = 2
        OnExit = edt_sequencia_conExit
      end
    end
    object pnl_jurosISS: TPanel
      Tag = -2
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Juros/Multa                                                 ' +
        '                        Dt. Recolhimento'
      TabOrder = 6
      Visible = False
      object edt_vljurosMulta_cta: TDCEdit
        Tag = 6
        Left = 140
        Top = 5
        Width = 140
        Height = 21
        Color = clWhite
        MaxLength = 14
        TabOrder = 0
      end
      object edt_dtrecolhimento_cta: TDCDateEdit
        Tag = 6
        Left = 380
        Top = 5
        Width = 140
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object btn_registrarconta: TPDJButton
      Left = 80
      Top = 231
      Width = 289
      Height = 25
      Hint = 'Registrar Conta à Contabilidade'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Registrar Conta à Contabilidade'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_registrarcontaClick
      TabOrder = 7
    end
    object Panel10: TPanel
      Tag = -2
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Protocolo                                                   ' +
        '                             Dt. Protocolo                      ' +
        '                                     Nota Fiscal                ' +
        '                                             '
      TabOrder = 4
      object edt_protocolo_cta: TDCEdit
        Tag = 6
        Left = 140
        Top = 5
        Width = 140
        Height = 21
        Color = clWhite
        MaxLength = 12
        TabOrder = 0
        EditMask = '999999999999'
      end
      object edt_nf_cta: TDCEdit
        Tag = 6
        Left = 600
        Top = 5
        Width = 140
        Height = 21
        Color = clWhite
        MaxLength = 20
        TabOrder = 2
      end
      object edt_dtrecebimentoNF_cta: TDCDateEdit
        Tag = 6
        Left = 380
        Top = 5
        Width = 140
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 2
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    CNPJ                        '
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
    end
    object pnl_camposISS: TPanel
      Tag = -1
      Left = 2
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data Emissão NF                                             ' +
        '                      Competência'
      TabOrder = 3
      object edt_dtemissaoNF_cta: TDCDateEdit
        Tag = 6
        Left = 140
        Top = 5
        Width = 140
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object cb2_cod_mes: TDCComboBox
        Tag = -10
        Left = 380
        Top = 5
        Width = 140
        Height = 21
        TabOrder = 1
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object edt_ano2: TDCEdit
        Tag = 6
        Left = 524
        Top = 5
        Width = 60
        Height = 21
        TabOrder = 2
        EditMask = '9999'
      end
    end
    object btn_imprimir: TPDJButton
      Left = 439
      Top = 230
      Width = 257
      Height = 25
      Hint = 'Imprimir Guia de Recolhimento de ISS'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir Guia de Recolhimento de ISS'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      TabOrder = 8
    end
    object Panel13: TPanel
      Tag = -2
      Left = 2
      Top = 161
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Valor NF                                                    ' +
        '                                    Valor ISS'
      TabOrder = 5
      object edt_vlISS_cta: TDCEdit
        Tag = 6
        Left = 380
        Top = 5
        Width = 140
        Height = 21
        Color = clWhite
        MaxLength = 14
        TabOrder = 1
      end
      object edt_vlnf_cta: TDCEdit
        Tag = 6
        Left = 140
        Top = 5
        Width = 140
        Height = 21
        Color = clWhite
        MaxLength = 14
        TabOrder = 0
        OnExit = edt_vlnf_ctaExit
      end
      object Panel12: TPanel
        Left = 568
        Top = 3
        Width = 185
        Height = 26
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 2
        object chb_Iss: TCheckBox
          Left = 56
          Top = 5
          Width = 81
          Height = 17
          Caption = 'ISS - SBC'
          TabOrder = 0
        end
      end
    end
    object pgc_pagamento: TPageControl
      Left = 1
      Top = 262
      Width = 798
      Height = 226
      ActivePage = TabSheet1
      TabOrder = 9
      object TabSheet1: TTabSheet
        Caption = 'Totais'
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Forma de Pagamento'
          TabOrder = 0
          object rdb_vlrepassar: TRadioButton
            Left = 140
            Top = 10
            Width = 113
            Height = 17
            Caption = ' Valor a Repassar'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rdb_vlrepassarClick
          end
          object rdb_vlapresentado: TRadioButton
            Left = 285
            Top = 10
            Width = 113
            Height = 17
            Caption = ' Valor Apresentado'
            TabOrder = 1
            OnClick = rdb_vlapresentadoClick
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Data de Vencimento                                          ' +
            '                         '
          TabOrder = 1
          object btn_alterarvencimento: TfrSpeedButton
            Left = 292
            Top = 4
            Width = 24
            Height = 24
            Hint = 'Alterar Data de Vencimento e Observação'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
              2222220000000000000220330000007703022033000000770302203300000077
              0302203300000000030220333333333333022033000000003302203077777777
              0302203077777777030220307777777703022030777777770302203077777777
              0002203077777777070220000000000000022222222222222222}
            GrayedInactive = False
            OnClick = btn_alterarvencimentoClick
          end
          object edt_dtvencimento_cta: TDCDateEdit
            Tag = 6
            Left = 140
            Top = 5
            Width = 140
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object chb_ISSrequerido: TCheckBox
            Left = 635
            Top = 8
            Width = 147
            Height = 17
            Caption = 'Apresentar Comprovante'
            TabOrder = 1
          end
        end
        object Panel6: TPanel
          Tag = -2
          Left = 0
          Top = 64
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Valor a Repassar                                            ' +
            '                                      Valor Apresentado'
          TabOrder = 2
          object edt_vlrepassar: TDCEdit
            Tag = 6
            Left = 140
            Top = 5
            Width = 140
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 0
          end
          object edt_vlapresentado: TDCEdit
            Tag = 6
            Left = 440
            Top = 5
            Width = 140
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
          object pnl_ISSrecebido: TPanel
            Left = 592
            Top = 4
            Width = 193
            Height = 25
            BevelOuter = bvNone
            TabOrder = 2
            object chb_ISSrecebido: TCheckBox
              Left = 43
              Top = 3
              Width = 149
              Height = 18
              Caption = 'Apresentou Comprovante'
              TabOrder = 0
              OnClick = chb_ISSrecebidoClick
            end
          end
        end
        object Panel1: TPanel
          Tag = -2
          Left = 0
          Top = 96
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Valor Recuperado                                            ' +
            '                                           Valor a Pagar        ' +
            '                                                                ' +
            '                       '
          TabOrder = 3
          object btn_calcular: TSpeedButton
            Left = 294
            Top = 4
            Width = 24
            Height = 22
            Hint = 'Calcular Valores'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              88888CCCCCCCCCCCCCCC8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8
              EC8C8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8EC8C8C8888888888
              888C8C8CCCCCCCCC888C8C8CEEEEEEEC888C8C8CCCCCCCCC888C8C8888888888
              888C88CCCCCCCCCCCCC888888888888888888888888888888888}
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_calcularClick
          end
          object edt_vlrecuperado: TDCEdit
            Tag = 6
            Left = 140
            Top = 5
            Width = 140
            Height = 21
            Color = clWhite
            MaxLength = 12
            TabOrder = 0
          end
          object edt_vlpagar: TDCEdit
            Tag = 6
            Left = 440
            Top = 5
            Width = 140
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
          object ckb_valorzerado: TCheckBox
            Left = 635
            Top = 9
            Width = 154
            Height = 17
            Caption = 'Repassar com Valor zerado'
            TabOrder = 2
          end
        end
        object Panel9: TPanel
          Tag = -2
          Left = 0
          Top = 128
          Width = 790
          Height = 70
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Observação'
          TabOrder = 4
          object Label2: TLabel
            Left = 11
            Top = 53
            Width = 230
            Height = 13
            Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object mem_obs_cta: TMemo
            Left = 140
            Top = 4
            Width = 637
            Height = 47
            TabOrder = 0
          end
        end
      end
      object tbs_empenho: TTabSheet
        Caption = 'Empenhos'
        ImageIndex = 1
        TabVisible = False
        OnShow = tbs_empenhoShow
        object Label4: TLabel
          Left = 220
          Top = 151
          Width = 70
          Height = 13
          Caption = 'Vl. Total Pagar'
        end
        object edt_vlTotalRepassado: TDCEdit
          Left = 220
          Top = 167
          Width = 117
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Alignment = taRightJustify
        end
        object lsv_empenho: TListView
          Left = 8
          Top = 4
          Width = 697
          Height = 142
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
          TabOrder = 1
          ViewStyle = vsReport
        end
        object pnl_alertaEmpenho: TPanel
          Left = 399
          Top = 166
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
          TabOrder = 2
          Visible = False
        end
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
    Left = 24
    Top = 401
  end
end
