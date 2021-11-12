inherited Frm_Rel_ExtratoCrm001: TFrm_Rel_ExtratoCrm001
  Caption = 'Frm_Rel_ExtratoCrm001'
  ClientHeight = 577
  ClientWidth = 794
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 794
    inherited Image1: TImage
      Width = 792
    end
  end
  inherited Panel2: TPanel
    Top = 525
    Width = 794
    inherited Image3: TImage
      Width = 792
    end
  end
  inherited Panel3: TPanel
    Width = 794
    Height = 484
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Conveniado'
      TabOrder = 1
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 180
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
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
      Top = 97
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    M�s / Ano de Referencia Inicial'
      TabOrder = 3
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
          '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
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
      Left = 20
      Top = 284
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato do &Item de Servi�o por CRM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 7
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    M�s / Ano de Referencia Final'
      TabOrder = 4
      object cb2_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
          '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
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
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data de Realiza��o             de                           ' +
        '                              at�'
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
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 65
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Item de Servi�o'
      TabOrder = 2
      object edt_cod_itemservico: TDCChoiceEdit
        Tag = -2
        Left = 180
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_itemservicoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_itemservicoButtonClick
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
      Top = 1
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    CRM do M�dico'
      TabOrder = 0
      object edt_cod_crm: TDCChoiceEdit
        Tag = -2
        Left = 180
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_crmExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_crmButtonClick
      end
      object edt_medico_crm: TDCEdit
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
      Width = 792
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
        Caption = 'Interna��o'
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
    object PDJButton1: TPDJButton
      Left = 20
      Top = 340
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Extrato de Atendimentos por CRM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 8
    end
    object btn_exportaitemservico: TPDJButton
      Left = 477
      Top = 284
      Width = 21
      Height = 25
      Hint = 'Exportar Extrato do Item de Servi�o por CRM para Excel'
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
      OnClick = btn_exportaitemservicoClick
      ShowHint = True
      TabOrder = 9
    end
    object btn_extratoitemservico: TPDJButton
      Left = 452
      Top = 284
      Width = 0
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_extratoitemservicoClick
      TabOrder = 10
    end
    object pgb_registros: TProgressBar
      Left = 1
      Top = 464
      Width = 788
      Height = 19
      Min = 0
      Max = 100
      TabOrder = 11
      Visible = False
    end
    object btn_exportaatendimento: TPDJButton
      Left = 477
      Top = 340
      Width = 21
      Height = 25
      Hint = 'Exportar Extrato de Atendimentos por CRM para Excel'
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
      OnClick = btn_exportaatendimentoClick
      ShowHint = True
      TabOrder = 12
    end
    object btn_extratoatendimento: TPDJButton
      Left = 452
      Top = 340
      Width = 0
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_extratoatendimentoClick
      TabOrder = 13
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 558
    Width = 794
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
    Left = 600
    Top = 281
  end
  object SaveDialog: TSaveDialog
    Left = 761
    Top = 43
  end
end
