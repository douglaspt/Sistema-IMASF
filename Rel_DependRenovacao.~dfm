inherited Frm_Rel_DependRenovacao: TFrm_Rel_DependRenovacao
  Caption = 'Frm_Rel_DependRenovacao'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
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
  object PageControl1: TPageControl [4]
    Left = 0
    Top = 43
    Width = 801
    Height = 487
    ActivePage = TabSheet1
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Dados'
      object lbl_total: TLabel
        Left = 0
        Top = 310
        Width = 8
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 385
        Width = 793
        Height = 44
        Caption = 'Gerar Agendamentos'
        TabOrder = 0
        object Panel6: TPanel
          Tag = -1
          Left = 3
          Top = 13
          Width = 784
          Height = 28
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 
            '  Mês/Ano do Agendamento                                        ' +
            '          '
          TabOrder = 0
          object PDJButton4: TPDJButton
            Left = 481
            Top = 1
            Width = 302
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Agendamentos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton4Click
            TabOrder = 0
          end
          object cbx_cod_mes: TDCComboBox
            Tag = -1
            Left = 145
            Top = 1
            Width = 156
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_ano: TDCEdit
            Left = 308
            Top = 1
            Width = 61
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 4
            ParentFont = False
            TabOrder = 2
            EditMask = '9999'
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 326
        Width = 793
        Height = 61
        Caption = 'Emissão de Carta'
        TabOrder = 1
        object Label1: TLabel
          Left = 324
          Top = 17
          Width = 59
          Height = 13
          Caption = 'No do Oficio'
        end
        object PDJButton1: TPDJButton
          Left = 549
          Top = 7
          Width = 237
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
            07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
            70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
            FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
          GlyphHot.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
            4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
            E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
            FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
          Caption = 'Carta'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 0
        end
        object RdB_TodasCartas: TRadioButton
          Left = 12
          Top = 17
          Width = 245
          Height = 17
          Caption = 'Imprimir Todos os Dependentes'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object RadioButton6: TRadioButton
          Left = 12
          Top = 36
          Width = 261
          Height = 17
          Caption = 'Imprimir somente os Dependentes Selecionados'
          TabOrder = 2
        end
        object PDJButton2: TPDJButton
          Left = 549
          Top = 33
          Width = 237
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
            07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
            70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
            FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
          GlyphHot.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
            4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
            E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
            FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
          Caption = 'Etiquetas'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 3
        end
        object edt_carta: TEdit
          Left = 388
          Top = 10
          Width = 137
          Height = 21
          TabOrder = 4
          Text = 'Of. IMA 011 nº 270/2002'
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 95
        Width = 793
        Height = 212
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'inscricao_ben'
            Title.Caption = 'Inscrição'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulacartei_ben'
            Title.Caption = 'Tit.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_ben'
            Title.Caption = 'Nome do Dependente'
            Width = 285
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_pla'
            Title.Caption = 'Plano Atual'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nometit_pla'
            Title.Caption = 'Plano Titular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtnascim_ben'
            Title.Caption = 'Dt. Nasc.'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtlimite_dep'
            Title.Caption = 'Dt. Limite'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtrenovacao_dep'
            Title.Caption = 'Dt. Renovação'
            Width = 90
            Visible = True
          end>
      end
      object Panel4: TPanel
        Tag = -1
        Left = 0
        Top = 64
        Width = 793
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '                                                                ' +
          '                                                         Ordenar' +
          ' por'
        TabOrder = 3
        object RdB_Inscricao: TRadioButton
          Left = 629
          Top = 8
          Width = 81
          Height = 17
          Caption = 'Inscrição'
          TabOrder = 0
        end
        object RdB_Nome: TRadioButton
          Left = 722
          Top = 8
          Width = 67
          Height = 17
          Caption = 'Nome'
          TabOrder = 1
        end
        object RdB_Data: TRadioButton
          Left = 546
          Top = 8
          Width = 61
          Height = 17
          Caption = 'Data'
          TabOrder = 2
        end
        object btn_localizar: TPDJButton
          Left = 4
          Top = 3
          Width = 333
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphsHot = 1
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          Caption = '&Localizar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_localizarClick
          TabOrder = 3
        end
        object rdb_plano: TRadioButton
          Left = 460
          Top = 8
          Width = 69
          Height = 17
          Caption = 'Plano'
          Checked = True
          TabOrder = 4
          TabStop = True
        end
      end
      object Panel5: TPanel
        Tag = -1
        Left = 0
        Top = 32
        Width = 793
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '    Data             de                                         ' +
          '                até'
        TabOrder = 4
        object edt_dtinicial: TDCDateEdit
          Tag = -5
          Left = 96
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
          Left = 280
          Top = 5
          Width = 141
          Height = 21
          TabOrder = 1
          OnEnter = edt_dtfinalEnter
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object RadioButton3: TRadioButton
          Left = 460
          Top = 8
          Width = 89
          Height = 17
          Caption = 'Data Digitada'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RadioButton3Click
        end
        object RadioButton4: TRadioButton
          Left = 560
          Top = 8
          Width = 89
          Height = 17
          Caption = 'Data de Hoje'
          TabOrder = 3
          OnClick = RadioButton4Click
        end
        object RadioButton5: TRadioButton
          Left = 656
          Top = 8
          Width = 129
          Height = 17
          Caption = 'Data no mês seguinte'
          TabOrder = 4
          OnClick = RadioButton5Click
        end
      end
      object Panel1: TPanel
        Tag = -1
        Left = 0
        Top = 0
        Width = 793
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = '    Selecione por qual data deseja pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object RdB_DtRenovacao: TRadioButton
          Left = 460
          Top = 8
          Width = 165
          Height = 17
          Caption = 'DATA DE RENOVAÇÃO'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object rdb_dtLimite: TRadioButton
          Left = 656
          Top = 8
          Width = 121
          Height = 17
          Caption = 'DATA LIMITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object rdb_dtnasc: TRadioButton
          Left = 342
          Top = 8
          Width = 104
          Height = 17
          Caption = 'DATA NASC.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object PDJButton3: TPDJButton
        Left = 0
        Top = 433
        Width = 302
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
          07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
          70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
          FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
        GlyphHot.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
          4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
          E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
          FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
        Caption = 'Relação de Dependentes'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton3Click
        TabOrder = 6
      end
      object PDJButton5: TPDJButton
        Left = 308
        Top = 433
        Width = 21
        Height = 25
        Hint = 'Exportar dados para o Excel'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
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
        OnClick = PDJButton5Click
        ShowHint = True
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Hist.Operações'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object stg_audi: TStringGrid
        Tag = 1
        Left = 1
        Top = 1
        Width = 785
        Height = 456
        Color = clInfoBk
        ColCount = 1
        DefaultRowHeight = 17
        FixedCols = 0
        TabOrder = 0
        OnDrawCell = stg_audiDrawCell
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_dependrenovacao
    Left = 36
    Top = 514
  end
end
