inherited Frm_Rel_3033: TFrm_Rel_3033
  Caption = 'Frm_Rel_3033'
  OldCreateOrder = True
  OnClose = FormClose
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
      Caption = '    Inscri��o'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 96
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 96
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 206
        Top = 5
        Width = 107
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_nome: TDCEdit
        Tag = -10
        Left = 322
        Top = 5
        Width = 341
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 3
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object PageControl1: TPageControl
      Left = 5
      Top = 46
      Width = 794
      Height = 446
      ActivePage = TabSheet1
      TabOrder = 1
      Visible = False
      object TabSheet1: TTabSheet
        Caption = 'M�s Atual'
        OnShow = TabSheet1Show
        object lbl_TotalRegistro1: TLabel
          Left = 21
          Top = 380
          Width = 127
          Height = 13
          Caption = 'Total de Registros = 0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 456
          Top = 380
          Width = 67
          Height = 13
          Caption = 'Pre�o Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbg_itemservico: TDBGrid
          Left = 6
          Top = 45
          Width = 770
          Height = 320
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
              FieldName = 'data_vmf'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_medicamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIP1'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_vmf'
              Width = 290
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtde_vmf'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'precoUnitario_vmf'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'precoTotal'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'comanda_vmf'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOJ'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VEN'
              Width = 45
              Visible = True
            end>
        end
        object edt_precototal1: TDCEdit
          Tag = -1
          Left = 536
          Top = 376
          Width = 100
          Height = 21
          TabOrder = 1
          Alignment = taRightJustify
          EditMask = '999999'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Relat�rio'
        ImageIndex = 1
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 786
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Periodo de Refer�ncia       de                              ' +
            '                               at�'
          TabOrder = 0
          object edt_dataInicial: TDCDateEdit
            Left = 170
            Top = 5
            Width = 140
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_datafinal: TDCDateEdit
            Left = 378
            Top = 5
            Width = 140
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object PDJButton1: TPDJButton
          Left = 145
          Top = 148
          Width = 368
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = ' Vizualizar e Imprimir'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 1
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 786
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    M�s / Ano de Refer�ncia                       '
          TabOrder = 2
          object edt_ano: TBEdit
            Left = 314
            Top = 5
            Width = 60
            Height = 21
            TabOrder = 0
            NumbersOnly = False
            EditMask = '9999'
          end
          object cbx_cod_mes: TBComboBox
            Left = 170
            Top = 5
            Width = 140
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 1
          end
        end
        object Panel4: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 786
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Ordem por Data da Venda                                     ' +
            '            '
          TabOrder = 3
          object rdb_crescente: TRadioButton
            Left = 170
            Top = 8
            Width = 113
            Height = 17
            Caption = 'Crescente'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object rdb_decrescente: TRadioButton
            Left = 325
            Top = 8
            Width = 113
            Height = 17
            Caption = 'Decrescente'
            TabOrder = 1
          end
        end
        object Btn_LimpaCampos: TPDJButton
          Left = 12
          Top = 380
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
          TabOrder = 4
        end
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
    DataSet = fdt_principal5.spc_cons_med_vendaMedicamentoFarmacia
    Left = 756
    Top = 218
  end
end
