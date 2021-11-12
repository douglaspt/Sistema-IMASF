inherited Frm_Rel_3014: TFrm_Rel_3014
  Caption = 'Frm_Rel_3014'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
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
  inherited Panel3: TPanel
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    M�s / Ano de Referencia Inicial'
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 210
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
        Tag = -1
        Left = 399
        Top = 4
        Width = 73
        Height = 21
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 363
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 5
      object lbl_TotalRegistro: TLabel
        Left = 21
        Top = 304
        Width = 105
        Height = 13
        Caption = 'Total de Registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbg_itemservico: TDBGrid
        Left = 7
        Top = 9
        Width = 783
        Height = 286
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
            FieldName = 'dtreferencia_flh'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_empresafolha'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'matriculadebito_seg'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'digitomatdeb_seg'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inscricao_ben'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_tarifa'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vldesconto'
            Width = 136
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Matr�cula                                                   ' +
        '                                Digito'
      TabOrder = 3
      object edt_matriculadebito_seg: TDCEdit
        Tag = -1
        Left = 180
        Top = 4
        Width = 82
        Height = 21
        TabOrder = 0
        EditMask = '999999'
      end
      object edt_digitomatdeb_seg: TDCEdit
        Tag = -1
        Left = 350
        Top = 4
        Width = 39
        Height = 21
        TabOrder = 1
        EditMask = '99'
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Cod. Tarifa '
      TabOrder = 2
      object cbx_cod_tarifa: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 210
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
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Empresa '
      TabOrder = 1
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 180
        Top = 5
        Width = 210
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
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Inscri��o                                                   ' +
        '                            '
      TabOrder = 4
      object edt_inscricao_ben: TDCEdit
        Tag = -1
        Left = 180
        Top = 4
        Width = 82
        Height = 21
        TabOrder = 0
        EditMask = '999999'
      end
      object PDJButton3: TPDJButton
        Left = 464
        Top = 4
        Width = 116
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = ' Atualizar'
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
  object DataSource1: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_baixadesconto
    Left = 756
    Top = 218
  end
end
