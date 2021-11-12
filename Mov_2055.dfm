inherited Frm_Mov_2055: TFrm_Mov_2055
  Caption = 'Frm_Mov_2055'
  ClientWidth = 798
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 798
    inherited Image1: TImage
      Width = 796
    end
  end
  inherited Panel2: TPanel
    Width = 798
    inherited Image3: TImage
      Width = 796
    end
    object Image2: TImage [1]
      Left = 1
      Top = 1
      Width = 796
      Height = 31
      Align = alClient
    end
    object btn_gerardesconto: TPDJButton
      Left = 10
      Top = 4
      Width = 205
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Gerar descontos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_gerardescontoClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 488
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 0
      object lbl_total: TLabel
        Left = 15
        Top = 385
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
      object dbg_conveniado: TDBGrid
        Left = 15
        Top = 41
        Width = 760
        Height = 334
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_conveniado'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_con'
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sequencia_cta'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'carteirainform_ctm'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomebenefi_ctm'
            Width = 239
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtentrada_ctm'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlParticipacao_ihp'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Tag = -1
        Left = 1
        Top = 1
        Width = 794
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '    Mês / Ano de Referência                                     ' +
          '                                                                ' +
          '                         '
        TabOrder = 1
        object SpeedButton6: TSpeedButton
          Left = 453
          Top = 4
          Width = 99
          Height = 22
          Hint = 'Localizar conforme o texto digitado'
          Caption = '&Pesquisar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
            07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
            70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
            FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
          ParentFont = False
          OnClick = SpeedButton6Click
        end
        object cbx_cod_mes: TDCComboBox
          Tag = -1
          Left = 144
          Top = 5
          Width = 205
          Height = 21
          TabOrder = 0
          OnEnter = cbx_cod_mesEnter
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_ano: TDCEdit
          Left = 352
          Top = 5
          Width = 75
          Height = 21
          TabOrder = 1
          OnEnter = cbx_cod_mesEnter
        end
        object PDJButton8: TPDJButton
          Left = 573
          Top = 4
          Width = 21
          Height = 25
          Hint = 'Exportar Desconto de Fator Moderador para Excel'
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
          OnClick = PDJButton8Click
          ShowHint = True
          TabOrder = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 401
        Width = 362
        Height = 81
        Caption = 'Gerar Desconto Folha'
        TabOrder = 2
        object Panel13: TPanel
          Tag = -1
          Left = 6
          Top = 45
          Width = 352
          Height = 32
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '    Data do Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_dtdesconto_flh: TDCDateEdit
            Tag = -10
            Left = 150
            Top = 5
            Width = 130
            Height = 21
            Hint = 'DIA EM QUE É LANÇADO O DESCONTO/DESPESA'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 6
          Top = 12
          Width = 349
          Height = 32
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '    Mês / Ano de Referência'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cb2_cod_mes: TDCComboBox
            Tag = -1
            Left = 150
            Top = 5
            Width = 130
            Height = 21
            Enabled = False
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
            Left = 283
            Top = 5
            Width = 60
            Height = 21
            Enabled = False
            MaxLength = 4
            TabOrder = 1
            EditMask = '9999'
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 397
        Top = 401
        Width = 362
        Height = 81
        Caption = 'Gerar Desconto Boleto'
        TabOrder = 3
        object Panel5: TPanel
          Tag = -1
          Left = 6
          Top = 45
          Width = 352
          Height = 32
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '    Data do Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object ed2_dtdesconto_flh: TDCDateEdit
            Tag = -10
            Left = 150
            Top = 5
            Width = 130
            Height = 21
            Hint = 'DIA EM QUE É LANÇADO O DESCONTO/DESPESA'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 6
          Top = 12
          Width = 349
          Height = 32
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '    Mês / Ano de Referência'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cb3_cod_mes: TDCComboBox
            Tag = -1
            Left = 150
            Top = 5
            Width = 130
            Height = 21
            Enabled = False
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object ed3_ano: TDCEdit
            Left = 283
            Top = 5
            Width = 60
            Height = 21
            Enabled = False
            MaxLength = 4
            TabOrder = 1
            EditMask = '9999'
          end
        end
      end
      object pgb_registros: TProgressBar
        Left = 605
        Top = 8
        Width = 180
        Height = 19
        Min = 0
        Max = 100
        TabOrder = 4
        Visible = False
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
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
    Top = 329
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento
    Left = 25
    Top = 373
  end
  object SaveDialog: TSaveDialog
    Left = 432
    Top = 41
  end
end
