inherited Frm_Rel_3086: TFrm_Rel_3086
  Caption = 'Frm_Rel_3086'
  OldCreateOrder = True
  Scaled = False
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
      Caption = '    Local de Desconto'
      TabOrder = 0
      object cbx_cod_empresafolha: TDCComboBox
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
    end
    object GroupBox1: TGroupBox
      Left = 21
      Top = 42
      Width = 752
      Height = 61
      Caption = 'Beneficiários Inscritos'
      TabOrder = 1
      object Panel5: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Inscrição  de                                       ' +
          '           até                                                  ' +
          ' '
        TabOrder = 0
        object edt_dtinscricaoIni: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtinscricaoFin: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object btn_inscritos: TPDJButton
          Left = 457
          Top = 5
          Width = 136
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
          OnClick = btn_inscritosClick
          TabOrder = 2
        end
        object btn_inscritosCSV: TPDJButton
          Left = 597
          Top = 5
          Width = 25
          Height = 25
          Hint = 'Exportar Glosas para o Conveniado p/Excel'
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
          OnClick = btn_inscritosCSVClick
          ShowHint = True
          TabOrder = 3
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 21
      Top = 106
      Width = 752
      Height = 88
      Caption = 'Transferência IMASF para PFGB'
      TabOrder = 2
      object Panel1: TPanel
        Tag = -1
        Left = 2
        Top = 49
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Plano       de                                      ' +
          '            até                                                 ' +
          '  '
        TabOrder = 0
        object edt_dtplanoIni: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtplanoFin: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object btn_transfPlano: TPDJButton
          Left = 457
          Top = 5
          Width = 136
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
          OnClick = btn_transfPlanoClick
          TabOrder = 2
        end
        object btn_transfPlanoCSV: TPDJButton
          Left = 597
          Top = 5
          Width = 25
          Height = 25
          Hint = 'Exportar Glosas para o Conveniado p/Excel'
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
          OnClick = btn_transfPlanoCSVClick
          ShowHint = True
          TabOrder = 3
        end
      end
      object Panel4: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Inscrição  de                                       ' +
          '           até                                                  ' +
          ' '
        TabOrder = 1
        object edt_dtinscricaoIni02: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtinscricaoFin02: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 21
      Top = 290
      Width = 752
      Height = 167
      Caption = 'Cancelados'
      TabOrder = 3
      object Panel6: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Situação  de                                        ' +
          '          até                                                   '
        TabOrder = 0
        object edt_dtsituacaoIni: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtsituacaoFin: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object btn_falecimento: TPDJButton
        Left = 129
        Top = 61
        Width = 294
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Cancelados por Falecimento'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_falecimentoClick
        TabOrder = 1
      end
      object btn_definitivo: TPDJButton
        Left = 129
        Top = 93
        Width = 294
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Cancelados Definitivo'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_definitivoClick
        TabOrder = 2
      end
      object btn_cancelados: TPDJButton
        Left = 129
        Top = 125
        Width = 294
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Cancelados'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_canceladosClick
        TabOrder = 3
      end
      object btn_canceladosCSV: TPDJButton
        Left = 431
        Top = 61
        Width = 25
        Height = 25
        Hint = 'Exportar Glosas para o Conveniado p/Excel'
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
        OnClick = btn_canceladosCSVClick
        ShowHint = True
        TabOrder = 4
      end
    end
    object GroupBox4: TGroupBox
      Left = 21
      Top = 198
      Width = 752
      Height = 88
      Caption = 'Transferência PFGB para IMASF'
      TabOrder = 4
      object Panel8: TPanel
        Tag = -1
        Left = 2
        Top = 49
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Plano       de                                      ' +
          '            até                                                 ' +
          '  '
        TabOrder = 0
        object edt_dtplanoIni02: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtplanoFin02: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object btn_PFGBIMASF: TPDJButton
          Left = 457
          Top = 5
          Width = 136
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
          OnClick = btn_PFGBIMASFClick
          TabOrder = 2
        end
        object btn_PFGBIMASFCSV: TPDJButton
          Left = 597
          Top = 5
          Width = 25
          Height = 25
          Hint = 'Exportar Glosas para o Conveniado p/Excel'
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
          OnClick = btn_PFGBIMASFCSVClick
          ShowHint = True
          TabOrder = 3
        end
      end
      object Panel9: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 748
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Inscrição  de                                       ' +
          '           até                                                  ' +
          ' '
        TabOrder = 1
        object edt_dtinscricaoIni03: TDCDateEdit
          Tag = -1
          Left = 127
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtinscricaoFin03: TDCDateEdit
          Tag = -1
          Left = 297
          Top = 5
          Width = 125
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
    end
    object pgb_portal: TProgressBar
      Left = 12
      Top = 460
      Width = 772
      Height = 20
      Min = 0
      Max = 100
      TabOrder = 5
      Visible = False
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
    Left = 742
    Top = 102
  end
end
