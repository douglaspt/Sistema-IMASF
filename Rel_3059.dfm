inherited Frm_Rel_3059: TFrm_Rel_3059
  Caption = 'Frm_Rel_3059'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object GroupBox1: TGroupBox
      Left = 35
      Top = 120
      Width = 370
      Height = 126
      Caption = 'Relação de Beneficiários Ativos Diário '
      TabOrder = 2
      object Panel6: TPanel
        Tag = -1
        Left = 2
        Top = 20
        Width = 330
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Data de Referência'
        TabOrder = 0
        object cbx_referenciaFechamentos: TDCComboBox
          Tag = -1
          Left = 135
          Top = 3
          Width = 177
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object PDJButton2: TPDJButton
        Left = 144
        Top = 80
        Width = 161
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
        OnClick = PDJButton2Click
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 35
      Top = 5
      Width = 614
      Height = 109
      Caption = 'Relação de Beneficiários Ativos no Mês '
      TabOrder = 0
      object Panel7: TPanel
        Tag = -1
        Left = 2
        Top = 28
        Width = 461
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Data de Referência'
        TabOrder = 0
        object cbx_cod_mes: TDCComboBox
          Tag = -1
          Left = 135
          Top = 5
          Width = 177
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_ano: TDCEdit
          Left = 315
          Top = 5
          Width = 48
          Height = 21
          TabOrder = 1
        end
      end
      object PDJButton1: TPDJButton
        Left = 144
        Top = 70
        Width = 161
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
        OnClick = PDJButton1Click
        TabOrder = 1
      end
      object PDJButton3: TPDJButton
        Left = 406
        Top = 70
        Width = 195
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Imprimir somente Tesouraria'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton3Click
        Visible = False
        TabOrder = 2
      end
      object rdb_beneficios: TRadioButton
        Left = 464
        Top = 27
        Width = 121
        Height = 17
        Caption = 'Plano de Benefícios'
        TabOrder = 3
      end
      object RadioButton2: TRadioButton
        Left = 464
        Top = 59
        Width = 121
        Height = 17
        Caption = 'Plano de Pagamento'
        Checked = True
        TabOrder = 4
        TabStop = True
      end
    end
    object GroupBox3: TGroupBox
      Left = 661
      Top = 5
      Width = 121
      Height = 109
      Caption = 'Faixa Etária '
      TabOrder = 1
      object rdb_grupo2: TRadioButton
        Left = 24
        Top = 59
        Width = 57
        Height = 17
        Caption = 'Grupo 2'
        TabOrder = 0
      end
      object rdb_grupo1: TRadioButton
        Left = 24
        Top = 27
        Width = 57
        Height = 17
        Caption = 'Grupo 1'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 35
      Top = 356
      Width = 748
      Height = 124
      Caption = 'Totais de Vidas por Plano - Evolução '
      TabOrder = 5
      object PDJButton4: TPDJButton
        Left = 184
        Top = 88
        Width = 153
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
        OnClick = PDJButton4Click
        TabOrder = 0
      end
      object Panel1: TPanel
        Tag = -1
        Left = 2
        Top = 17
        Width = 400
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Data de Referência Inicial'
        TabOrder = 1
        object cb2_cod_mes: TDCComboBox
          Tag = -1
          Left = 164
          Top = 5
          Width = 177
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object ed2_ano: TDCEdit
          Left = 344
          Top = 5
          Width = 48
          Height = 21
          TabOrder = 1
        end
        object ckb_totais: TCheckBox
          Left = 445
          Top = 8
          Width = 115
          Height = 17
          Caption = 'Agrupado por plano'
          TabOrder = 2
        end
        object rbg_opcao: TGroupBox
          Left = 618
          Top = -64
          Width = 121
          Height = 109
          Caption = 'Opção'
          TabOrder = 3
          object RadioButton1: TRadioButton
            Left = 24
            Top = 59
            Width = 57
            Height = 17
            Caption = 'Grupo 2'
            TabOrder = 0
          end
          object RadioButton3: TRadioButton
            Left = 24
            Top = 27
            Width = 57
            Height = 17
            Caption = 'Grupo 1'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
      end
      object Panel4: TPanel
        Tag = -1
        Left = 2
        Top = 50
        Width = 400
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data de Referência Final                                    ' +
          '                                                             '
        TabOrder = 2
        object cb3_cod_mes: TDCComboBox
          Tag = -1
          Left = 164
          Top = 5
          Width = 177
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object ed3_ano: TDCEdit
          Left = 344
          Top = 5
          Width = 48
          Height = 21
          TabOrder = 1
        end
      end
      object rdg_opcoes: TRadioGroup
        Left = 432
        Top = 0
        Width = 177
        Height = 124
        Caption = 'Opções '
        Items.Strings = (
          'Não agrupado'
          'Agrupa por plano'
          'Agrupa por tipo de dependente')
        TabOrder = 3
      end
      object PDJButton7: TPDJButton
        Left = 372
        Top = 91
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
        OnClick = PDJButton7Click
        TabOrder = 4
      end
    end
    object GroupBox5: TGroupBox
      Left = 412
      Top = 120
      Width = 370
      Height = 126
      Caption = 'Relação de Beneficiários Ativos por Região '
      TabOrder = 3
      object Panel5: TPanel
        Tag = -1
        Left = 2
        Top = 20
        Width = 330
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Região'
        TabOrder = 0
        object cbx_cod_regiao: TDCComboBox
          Tag = -1
          Left = 79
          Top = 3
          Width = 226
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object PDJButton5: TPDJButton
        Left = 104
        Top = 90
        Width = 161
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
        OnClick = PDJButton5Click
        TabOrder = 2
      end
      object Panel8: TPanel
        Tag = -1
        Left = 2
        Top = 53
        Width = 330
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Sexo'
        TabOrder = 1
        object cbx_sexo_ben: TDCComboBox
          Tag = -1
          Left = 79
          Top = 3
          Width = 226
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 35
      Top = 251
      Width = 747
      Height = 97
      Caption = 'Relação Analitica de Beneficiários Ativos'
      TabOrder = 4
      object Panel9: TPanel
        Tag = -1
        Left = 2
        Top = 20
        Width = 735
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Classificação do Plano                                      ' +
          '                                 Região                         ' +
          '                                     Sexo'
        TabOrder = 0
        object cbx_cod_classificacaoPlano: TDCComboBox
          Tag = -1
          Left = 135
          Top = 3
          Width = 177
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object cb2_cod_regiao: TDCComboBox
          Tag = -1
          Left = 383
          Top = 3
          Width = 141
          Height = 21
          TabOrder = 1
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object cb2_sexo_ben: TDCComboBox
          Tag = -1
          Left = 599
          Top = 3
          Width = 117
          Height = 21
          TabOrder = 2
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object PDJButton6: TPDJButton
        Left = 299
        Top = 63
        Width = 161
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
        OnClick = PDJButton6Click
        TabOrder = 1
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
end
