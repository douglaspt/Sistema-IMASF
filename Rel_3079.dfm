inherited Frm_Rel_3079: TFrm_Rel_3079
  Caption = 'Frm_Rel_3079'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
    object PDJButton3: TPDJButton
      Left = 536
      Top = 4
      Width = 121
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
      OnClick = PDJButton3Click
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Height = 487
    object lbl_total: TLabel
      Left = 11
      Top = 471
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
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Motivo Isenção                                              ' +
        '                                                                ' +
        '       Cobrado'
      TabOrder = 2
      object cbx_cobrado_hph: TDCComboBox
        Tag = -1
        Left = 488
        Top = 3
        Width = 120
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
      object cbx_obs_hph: TComboBox
        Left = 127
        Top = 6
        Width = 294
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          'Gestante'
          'Mulheres até 45 dias pós parto '
          'Pacientes imunodeprimidos e com doenças crônicas'
          'Crianças a partir de 9 anos com doença crônica'
          'Trabalhador da área de saúde'
          'Funcionário IMASF')
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Campanha'
      TabOrder = 0
      object cbx_cod_campanha: TDCComboBox
        Tag = -1
        Left = 127
        Top = 6
        Width = 370
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object PDJButton2: TPDJButton
        Left = 631
        Top = 8
        Width = 26
        Height = 19
        Hint = 'Limpar os Campos'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'X'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnClick = PDJButton2Click
        ShowHint = True
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data da Aplicação de                                        ' +
        '          até                                                   ' +
        'Situação                                               Atendimen' +
        'to'
      TabOrder = 1
      object edt_dtinicial: TDCDateEdit
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
      object edt_dtfinal: TDCDateEdit
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
      object cbx_cancela_hph: TDCComboBox
        Tag = -1
        Left = 488
        Top = 5
        Width = 120
        Height = 21
        TabOrder = 2
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object cbx_tipoatend_hph: TDCComboBox
        Tag = -1
        Left = 687
        Top = 5
        Width = 99
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Opção'
      TabOrder = 4
      object rdb_isento: TRadioButton
        Left = 156
        Top = 8
        Width = 103
        Height = 17
        Caption = 'Isentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rdb_naoisento: TRadioButton
        Left = 268
        Top = 8
        Width = 99
        Height = 17
        Caption = 'Não Isentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rdb_todos: TRadioButton
        Left = 380
        Top = 8
        Width = 99
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
    end
    object DBG_Itens: TDBGrid
      Left = 6
      Top = 197
      Width = 786
      Height = 271
      DataSource = DSOutros
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'protocolo_hph'
          Title.Caption = 'Protocolo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inscricao_ben'
          Title.Caption = 'Inscrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_empresafolha'
          Title.Caption = 'Emp'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'matriculadebito_seg'
          Title.Caption = 'Matrícula'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'digitomatdeb_seg'
          Title.Caption = 'Dig.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_ben'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 293
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'isencao_hph'
          Title.Caption = 'Isento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtaplicacao_hph'
          Title.Caption = 'Dt.Aplicacao'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idadeAplicacao'
          Title.Caption = 'Idade Aplic.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cancela_hph'
          Title.Caption = 'Situação'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cobrado_hph'
          Title.Caption = 'Cobrado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_cph'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 5
      object btn_localizar: TPDJButton
        Left = 673
        Top = 0
        Width = 117
        Height = 31
        Hint = 
          'LOCALIZA OS DESCONTOS CONFORME O MÊS DE REFERÊNCIA E LOCAL DE DE' +
          'SCONTO. SE PREENCHIDO O CAMPO DE MATRÍCULA OU INSCRIÇÃO, A PESQU' +
          'ISA TAMBÉM EXIBIRÁ TODOS DESCONTOS DE MESMO BENEFICIÁRIO, COM OU' +
          'TRAS MATRÍCULAS OU DE TODAS AS EMPRESAS.'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777700000000000000000000777777777778888
          8884CEECC0888888077777777777FFFFFF4CEECC0FFFFFFF077777777777FFFF
          F7CEECC0FFFFFFFF077777777777FFFF78FECC0FFFFFFFFF0777777770000007
          8F87C088888888FF077777700666666008770FFFFFFFFFFF07777778EF8FEFE6
          60708888888888FF0777778EFE8EFE77660FFFFFFFFFFFFF077777EFEF8FEFEF
          E6088888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
          EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
          EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF077777EFEF8FEFEF
          EF088888888888FF077777FEFE8EFE77760FFFFFFFFFFFFF0777777FEF8FEFEF
          60888888888888FF077777777F8EFEF00FFFFFFFFFFFFFFF077777777777770F
          FFFFFFFFFFFFFFFF077777777777FFFFFFFFFFFFFFFFFFFF077777777777FFF8
          888888888FFFFFFF077777777777FFFFFFFFFFFFFFFF7000077777777777FFFF
          FFFFFFFFFFFF7FFF077777777777FFFFFFFFFFFFFFFF7FF8077777777777FFFF
          FFFFFFFFFFFF7F87077777777777FFFFFFFFFFFFFFFF7870777777777777FFFF
          FFFFFFFFFFFF7707777777777777FFFFFFFFFFFFFFFF70777777777777777777
          7777777777777777777777777777777777777777777777777777}
        GlyphHot.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777744444444444444444444777777777778888
          8884CEECC4888888477777777777FFFFFF4CEECC4FFFFFFF477777777777FFFF
          F7CEECC4FFFFFFFF477777777777FFFF78FECC4FFFFFFFFF4777777774444447
          8F87C4CCCCCCCCFF477777744666666448774FFFFFFFFFFF47777778EF8FEFE6
          6474CCCCCCCCCCFF4777778EFE8EFE77664FFFFFFFFFFFFF477777EFEF8FEFEF
          E64CCCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
          EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
          EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF477777EFEF8FEFEF
          EF4CCCCCCCCCCCFF477777FEFE8EFE77764FFFFFFFFFFFFF4777777FEF8FEFEF
          64CCCCCCCCCCCCFF477777777F8EFEF44FFFFFFFFFFFFFFF477777777777774F
          FFFFFFFFFFFFFFFF477777777777FFFFFFFFFFFFFFFFFFFF477777777777FFFC
          CCCCCCCCCFFFFFFF477777777777FFFFFFFFFFFFFFFF7444477777777777FFFF
          FFFFFFFFFFFF7FFF477777777777FFFFFFFFFFFFFFFF7FF8477777777777FFFF
          FFFFFFFFFFFF7F87477777777777FFFFFFFFFFFFFFFF7874777777777777FFFF
          FFFFFFFFFFFF7747777777777777FFFFFFFFFFFFFFFF74777777777777777777
          7777777777777777777777777777777777777777777777777777}
        Caption = '&Localizar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_localizarClick
        ShowHint = True
        TabOrder = 0
      end
      object rdg_indice: TRadioGroup
        Left = 156
        Top = 0
        Width = 469
        Height = 31
        Caption = 'Índice'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Protocolo'
          'Inscrição'
          'Matricula'
          'Nome')
        TabOrder = 1
        OnClick = rdg_indiceClick
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 3
      object RadioButton1: TRadioButton
        Left = 591
        Top = 9
        Width = 84
        Height = 17
        Caption = 'Matrícula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = RadioButton1Click
      end
      object rdb_benefi: TRadioButton
        Left = 697
        Top = 8
        Width = 82
        Height = 18
        Caption = 'Inscrição'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = rdb_benefiClick
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -5
        Left = 127
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_matriculadebito: TDCEdit
        Tag = -10
        Left = 127
        Top = 5
        Width = 125
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 297
        Top = 5
        Width = 125
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 561
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
    Left = 48
  end
  object DSOutros: TDataSource
    DataSet = fdt_principal6.spc_adm_histcampanha
    Left = 754
    Top = 491
  end
end
