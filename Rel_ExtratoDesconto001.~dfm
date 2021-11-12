inherited Frm_Rel_ExtratoDesconto001: TFrm_Rel_ExtratoDesconto001
  Caption = 'Frm_Rel_ExtratoDesconto001'
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object PDJButton5: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = '&Limpar todos os campos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Limpar todos os campos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton5Click
      TabOrder = 1
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
      Caption = '    Inscrição'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 140
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        OnKeyUp = edt_inscricao_benKeyUp
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object ckb_mostrarTodos: TCheckBox
        Left = 264
        Top = 8
        Width = 185
        Height = 16
        Caption = 'Imprimir Segurado e Dependentes'
        TabOrder = 2
      end
      object ckb_naosegurado: TCheckBox
        Left = 502
        Top = 8
        Width = 168
        Height = 16
        Caption = 'Imprimir Não Segurados'
        TabOrder = 3
        OnClick = ckb_naoseguradoClick
      end
      object edt_matricula: TDCEdit
        Left = 140
        Top = 5
        Width = 95
        Height = 21
        TabOrder = 4
        Visible = False
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
      Caption = 
        '    Mês / Ano de Referência                                     ' +
        '                                                                ' +
        '                         Periodo Inicial'
      TabOrder = 3
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
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referência                                     ' +
        '                                                                ' +
        '                         Periodo Final'
      TabOrder = 4
      object cb2_cod_mes: TDCComboBox
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
      object ed2_ano: TDCEdit
        Left = 380
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Beneficiário'
      TabOrder = 1
      object edt_nome: TDCEdit
        Tag = -10
        Left = 300
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Empresa para Desconto'
      TabOrder = 2
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        OnExit = cbx_cod_empresafolhaExit
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
      Caption = 
        '    Situação do Desconto                                        ' +
        '                                                                ' +
        '              '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object cbx_cod_sitdesconto: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        Text = #12
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object btn_Incsituacao: TPDJButton
        Left = 380
        Top = 4
        Width = 29
        Height = 25
        Hint = 'Seleciona mais de uma situação'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          C00000C0000000C0C000C0000000C000C000C0C00000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
          00FFFFFFFFFFFF0BB0FFFFFFFFFF000BB000FFFFFFFF0BBBBBB0FFFFFFFF0BBB
          BBB0FFFFFFFF000BB000FFFFFFFFFF0BB0FF000000000F0000FF0FFFFFFF0FFF
          FFFF0F00F00F0FFFFFFF0FFFFFFF0FFFFFFF0F00F00F0FFFFFFF0FFFFFFF0FFF
          FFFF444444444FFFFFFF444444444FFFFFFF}
        GlyphHot.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF44
          44FFFFFFFFFFFF4EE4FFFFFFFFFF444EE444FFFFFFFF4EEEEEE4FFFFFFFF4EEE
          EEE4FFFFFFFF444EE444FFFFFFFFFF4EE4FF444444444F4444FF4FFFFFFF4FFF
          FFFF4F44F44F4FFFFFFF4FFFFFFF4FFFFFFF4F44F44F4FFFFFFF4FFFFFFF4FFF
          FFFFCCCCCCCCCFFFFFFFCCCCCCCCCFFFFFFF}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_IncsituacaoClick
        ShowHint = True
        TabOrder = 1
      end
      object btn_delsituacao: TPDJButton
        Left = 410
        Top = 4
        Width = 29
        Height = 25
        Hint = 'Limpa situações selecionadas'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&X'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_delsituacaoClick
        ShowHint = True
        TabOrder = 2
      end
      object edt_selsituacao: TDCEdit
        Left = 444
        Top = 3
        Width = 345
        Height = 21
        TabOrder = 3
        Visible = False
      end
    end
    object RdG_OrdemImpressao: TRadioGroup
      Left = 592
      Top = 260
      Width = 185
      Height = 205
      Caption = 'Ordem de Impressão '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Inscrição'
        'Nome'
        'Nosso Número'
        'Mês Referência'
        'Data de Pagamento'
        'Tarifa'
        'Mês Referência/Empresa'
        'Empresa / Matrícula')
      ParentFont = False
      TabOrder = 8
    end
    object PDJButton3: TPDJButton
      Left = 24
      Top = 407
      Width = 533
      Height = 25
      Hint = 'Relação de Descontos pelo Beneficiário Selecionado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Relação de Descontos pelo Beneficiário Selecionado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 9
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
        '    Data de Pagamento                                           ' +
        '                               Data de Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object edt_dtpagto_flh: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtdesconto_flh: TDCDateEdit
        Tag = -1
        Left = 448
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
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
      Caption = '    Cod. Tarifa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object edt_cod_tarifa: TDCEdit
        Left = 140
        Top = 5
        Width = 57
        Height = 21
        TabOrder = 0
        EditMask = '999999'
      end
      object edt_seltarifa: TDCEdit
        Left = 380
        Top = 4
        Width = 405
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object btn_Inctarifa: TPDJButton
        Left = 212
        Top = 4
        Width = 29
        Height = 25
        Hint = 'Seleciona mais de uma tarifa'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          C00000C0000000C0C000C0000000C000C000C0C00000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
          00FFFFFFFFFFFF0BB0FFFFFFFFFF000BB000FFFFFFFF0BBBBBB0FFFFFFFF0BBB
          BBB0FFFFFFFF000BB000FFFFFFFFFF0BB0FF000000000F0000FF0FFFFFFF0FFF
          FFFF0F00F00F0FFFFFFF0FFFFFFF0FFFFFFF0F00F00F0FFFFFFF0FFFFFFF0FFF
          FFFF444444444FFFFFFF444444444FFFFFFF}
        GlyphHot.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF44
          44FFFFFFFFFFFF4EE4FFFFFFFFFF444EE444FFFFFFFF4EEEEEE4FFFFFFFF4EEE
          EEE4FFFFFFFF444EE444FFFFFFFFFF4EE4FF444444444F4444FF4FFFFFFF4FFF
          FFFF4F44F44F4FFFFFFF4FFFFFFF4FFFFFFF4F44F44F4FFFFFFF4FFFFFFF4FFF
          FFFFCCCCCCCCCFFFFFFFCCCCCCCCCFFFFFFF}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_InctarifaClick
        ShowHint = True
        TabOrder = 2
      end
      object btn_deltarifa: TPDJButton
        Left = 243
        Top = 4
        Width = 29
        Height = 25
        Hint = 'Limpa tarifas selecionadas'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&X'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_deltarifaClick
        ShowHint = True
        TabOrder = 3
      end
    end
    object Panel10: TPanel
      Left = 12
      Top = 264
      Width = 557
      Height = 105
      BevelOuter = bvLowered
      TabOrder = 10
      object lbl_alerta: TLabel
        Left = 19
        Top = 75
        Width = 330
        Height = 13
        Caption = 
          'Estes relatórios acima, imprimem todos os beneficiários desta in' +
          'scrição'
        Color = clInfoBk
        ParentColor = False
        Visible = False
      end
      object PDJButton2: TPDJButton
        Left = 12
        Top = 11
        Width = 530
        Height = 25
        Hint = 'Relação de Descontos ( Nosso Número Banco do Brasil )'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Relação de Descontos ( Nosso Número Banco do Brasil )'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton2Click
        TabOrder = 0
      end
      object PDJButton6: TPDJButton
        Left = 12
        Top = 43
        Width = 507
        Height = 25
        Hint = 'Relação Analítica de Descontos ( Todos os Descontos )'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Relação Analítica de Descontos ( Todos os Descontos )'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton6Click
        TabOrder = 1
      end
      object PDJButton4: TPDJButton
        Left = 12
        Top = 74
        Width = 368
        Height = 25
        Hint = 'Relação de Descontos por Tarifa'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '             Relação de Descontos por Tarifa'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton4Click
        TabOrder = 2
      end
      object ckb_mostrarIten: TCheckBox
        Left = 384
        Top = 80
        Width = 152
        Height = 16
        Caption = ' Visualizar apenas os Totais'
        TabOrder = 3
      end
    end
    object PDJButton1: TPDJButton
      Left = 664
      Top = 458
      Width = 129
      Height = 25
      Hint = 'Relação de Descontos ( Agrupado Beneficiário, Cod de Desconto )'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 
        'DESATIVADO   &Relação de Descontos ( Agrupado Beneficiário, Cod ' +
        'de Desconto )'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      ParentColor = False
      Visible = False
      Color = clRed
      TabOrder = 11
    end
    object PDJButton7: TPDJButton
      Left = 24
      Top = 376
      Width = 533
      Height = 25
      Hint = 'Relação de Descontos pelo Beneficiário Selecionado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Relação de Descontos de Não Segurado Selecionado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton7Click
      TabOrder = 12
    end
    object btn_cobranca: TPDJButton
      Left = 24
      Top = 437
      Width = 507
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Relação para Cobrança'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_cobrancaClick
      TabOrder = 13
    end
    object pgb_registros: TProgressBar
      Left = 24
      Top = 464
      Width = 505
      Height = 19
      Min = 0
      Max = 100
      TabOrder = 14
      Visible = False
    end
    object btn_relacaocobranca: TPDJButton
      Left = 533
      Top = 437
      Width = 21
      Height = 25
      Hint = 'Exportar Relação para Cobrança para Excel'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
        2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
        722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
        FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
        7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
      GlyphHot.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        180000000000000300000000000000000000000000000000000039724B39724B
        39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
        301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
        966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
        EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
        D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
        EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
        EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
        2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
        512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
        F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
        8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
        BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
        F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
        E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
        AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
        FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
        03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
        F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
        FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
        EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
        FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
        AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
        8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
        966A548E664C87614C876146805C407A56407A5639724B39724B}
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_relacaocobrancaClick
      ShowHint = True
      TabOrder = 15
    end
    object btn_relacaoanaliticadescontos: TPDJButton
      Left = 533
      Top = 307
      Width = 21
      Height = 25
      Hint = 
        'Exportar Relação Analítica de Descontos (Todos os Descontos) par' +
        'a Excel'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
        2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
        722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
        FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
        7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
      GlyphHot.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        180000000000000300000000000000000000000000000000000039724B39724B
        39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
        301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
        966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
        EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
        D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
        EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
        EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
        2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
        512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
        F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
        8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
        BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
        F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
        E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
        AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
        FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
        03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
        F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
        FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
        EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
        FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
        AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
        8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
        966A548E664C87614C876146805C407A56407A5639724B39724B}
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_relacaoanaliticadescontosClick
      ShowHint = True
      TabOrder = 16
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
    Left = 624
    Top = 497
  end
end
