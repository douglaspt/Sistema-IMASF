inherited Frm_Rel_3078: TFrm_Rel_3078
  Caption = 'Frm_Rel_3078'
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
      Caption = '    Inscrição'
      TabOrder = 0
      object rdb_benefi: TRadioButton
        Left = 384
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Inscrição'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rdb_benefiClick
      end
      object rdb_matricula: TRadioButton
        Left = 246
        Top = 9
        Width = 139
        Height = 17
        Caption = 'Matrícula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rdb_matriculaClick
      end
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 78
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 2
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -5
        Left = 78
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 3
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
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
        MaxLength = 4
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 608
        Top = 8
        Width = 185
        Height = 16
        Caption = 'Desconto em Todas as Datas'
        TabOrder = 2
        OnClick = CheckBox1Click
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
        MaxLength = 4
        TabOrder = 1
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Matricula'
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
      Top = 33
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
      object edt_cpf_ben: TDCEdit
        Tag = -5
        Left = 662
        Top = 3
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 17
        TabOrder = 1
        Visible = False
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
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 193
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
      TabOrder = 6
      object edt_cod_tarifa: TDCEdit
        Left = 140
        Top = 5
        Width = 57
        Height = 21
        TabOrder = 0
      end
    end
    object Panel10: TPanel
      Left = 12
      Top = 264
      Width = 557
      Height = 105
      BevelOuter = bvLowered
      TabOrder = 7
      object PDJButton2: TPDJButton
        Left = 12
        Top = 11
        Width = 530
        Height = 25
        Hint = 'Relação de Descontos ( Nosso Número Banco do Brasil )'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Relação Débitos Gerais por Pessoa'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton2Click
        TabOrder = 0
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
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_descontos2
    Left = 33
    Top = 512
  end
end
