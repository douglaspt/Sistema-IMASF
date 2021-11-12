inherited Frm_Rel_DespConvPlano001: TFrm_Rel_DespConvPlano001
  Caption = 'Frm_Rel_DespConvPlano001'
  OldCreateOrder = True
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
      Caption = '    Código do Conveniado'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 174
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
        Left = 268
        Top = 5
        Width = 381
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
        '             Sequencia Inicial'
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 174
        Top = 5
        Width = 200
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
        Top = 5
        Width = 70
        Height = 21
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequenciaIni: TDCEdit
        Tag = -10
        Left = 574
        Top = 5
        Width = 75
        Height = 21
        Color = clWhite
        MaxLength = 3
        TabOrder = 2
        EditMask = '999'
      end
    end
    object PDJButton4: TPDJButton
      Left = 20
      Top = 168
      Width = 473
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relatórios de Despesas de Conveniados por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 2
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
        '              Sequencia Final'
      TabOrder = 3
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 174
        Top = 5
        Width = 200
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
        Top = 5
        Width = 70
        Height = 21
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequenciaFin: TDCEdit
        Tag = -10
        Left = 574
        Top = 5
        Width = 75
        Height = 21
        Color = clWhite
        MaxLength = 3
        TabOrder = 2
        EditMask = '999'
      end
    end
    object btn_excel: TPDJButton
      Left = 503
      Top = 170
      Width = 20
      Height = 21
      Hint = 'Exportar para Excel'
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
      OnClick = btn_excelClick
      ShowHint = True
      TabOrder = 4
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Tipo de Conveniado'
      TabOrder = 5
      object cbx_cod_classificacaoConveniado: TDCComboBox
        Tag = -1
        Left = 174
        Top = 5
        Width = 200
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
    object btn_saldoEmpenho: TPDJButton
      Left = 20
      Top = 235
      Width = 473
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Saldo de Empenhos por Conveniados'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_saldoEmpenhoClick
      TabOrder = 6
    end
    object btn_excel02: TPDJButton
      Left = 503
      Top = 237
      Width = 20
      Height = 21
      Hint = 'Exportar para Excel'
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
      OnClick = btn_excel02Click
      ShowHint = True
      TabOrder = 7
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
    Left = 532
    Top = 190
  end
end
