inherited Frm_Rel_3029: TFrm_Rel_3029
  Caption = 'Frm_Rel_3029'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel [0]
    Height = 496
    Align = alNone
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Referência                                              ' +
        '                      '
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 175
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object edt_ano: TDCEdit
        Tag = -1
        Left = 317
        Top = 5
        Width = 59
        Height = 21
        MaxLength = 30
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Local de Desconto                                           ' +
        '                                                       Situação ' +
        '     '
      TabOrder = 1
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 137
        Top = 5
        Width = 175
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object cbx_cod_statusAtivo: TDCComboBox
        Tag = -5
        Left = 463
        Top = 5
        Width = 125
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
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object ckb_decimo: TCheckBox
        Left = 654
        Top = 8
        Width = 107
        Height = 17
        Caption = 'Decimo Terceiro'
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 2
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Valor do Salário        de                                  ' +
        '       até'
      TabOrder = 2
      object edt_vlsalarioIni: TDCEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object edt_vlsalarioFin: TDCEdit
        Tag = -1
        Left = 294
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 2
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Nome'
      TabOrder = 4
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 363
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Tag = -2
      Left = 2
      Top = 161
      Width = 798
      Height = 333
      Alignment = taLeftJustify
      TabOrder = 5
      object btn_localizar: TSpeedButton
        Left = 11
        Top = 6
        Width = 222
        Height = 24
        Hint = 'Localizar conforme o texto digitado'
        BiDiMode = bdLeftToRight
        Caption = '&Pesquisar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        ParentBiDiMode = False
        OnClick = btn_localizarClick
      end
      object Label10: TLabel
        Left = 308
        Top = 13
        Width = 126
        Height = 13
        Caption = 'Índice de Localização'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_totalreg: TLabel
        Left = 16
        Top = 308
        Width = 127
        Height = 13
        Caption = 'Total de Registros = 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbg_consultabenefi: TDBGrid
        Left = 8
        Top = 37
        Width = 775
        Height = 266
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_empresafolha'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtreferencia_pat'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'matriculaDebito_seg'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'digitoMatDeb_seg'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_ben'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlsalario_pat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlcontribuicao_pat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlpatronal_pat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cargo_pat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao_pat'
            Visible = True
          end>
      end
      object rdb_matricula: TRadioButton
        Left = 614
        Top = 12
        Width = 88
        Height = 17
        Caption = 'Matrícula'
        TabOrder = 1
      end
      object rdb_nome: TRadioButton
        Left = 714
        Top = 12
        Width = 76
        Height = 17
        Caption = 'Nome'
        TabOrder = 2
      end
      object rdb_localdesconto: TRadioButton
        Left = 473
        Top = 12
        Width = 119
        Height = 17
        Caption = 'Local de Desconto'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
    end
    object Panel8: TPanel
      Tag = -2
      Left = 2
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '         Matrícula'
      TabOrder = 3
      object edt_matriculaDebito_seg: TDCEdit
        Tag = -1
        Left = 294
        Top = 5
        Width = 90
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 137
        Top = 5
        Width = 90
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 2
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
    end
  end
  inherited Panel2: TPanel
    inherited Btn_Fechar: TPDJButton
      Left = 664
      Width = 129
    end
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Voltar para a tela principal'
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
      OnClick = Btn_LimpaCamposClick
      TabOrder = 1
    end
  end
  inherited Pnl_Titulo2: TPanel [2]
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
    Left = 32
    Top = 409
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_consultapatronal
    Left = 737
    Top = 485
  end
end
