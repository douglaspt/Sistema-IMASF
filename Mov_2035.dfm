inherited Frm_Mov_2035: TFrm_Mov_2035
  Caption = 'Frm_Mov_2035'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_recuperarItem: TSpeedButton [1]
      Left = 11
      Top = 4
      Width = 148
      Height = 25
      Caption = 'Recuperar Item'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = btn_recuperarItemClick
    end
    object btn_recuperarConta: TSpeedButton [2]
      Left = 186
      Top = 4
      Width = 148
      Height = 25
      Caption = 'Recuperar Todos Itens'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = btn_recuperarContaClick
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
      Caption = '    Cod. Conveniado     '
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 149
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -1
        Left = 248
        Top = 5
        Width = 400
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        MaxLength = 80
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 0
      Top = 65
      Width = 800
      Height = 450
      Alignment = taLeftJustify
      TabOrder = 2
      object btn_atualizar: TSpeedButton
        Left = 366
        Top = 30
        Width = 93
        Height = 25
        Caption = '&Atualizar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
          7FF330BFBFBF03307333703337F3FFFF7F37733377F330F0000B033333333033
          37F777737F333333F7F33011111103333330703337F333337F33333777FF301F
          FFF103333330000337F333337F33333777733011111103333330003337F3FF3F
          7F333337773330F00B0003333330033337F7737773333337733330BFBF003333
          3330333337FFFF7733333337333330000003333333333333377777733333FFFF
          FFFF3333333333300000000333333F3333377777777F333303333330BFBFBF03
          33337F333337F3FFFF7F333003333330F0000B0333377F333337F777737F3300
          03333330BFBFBF0333777F333337F3FFFF7F300003333330F0000B0337777F33
          3337F777737F330703333330BFBFBF03337773333337F3FF3F7F330333333330
          F00B0003337FF333FF37F7737773330733370330BFBF00333377FFF77337FFFF
          7733333000003330000003333337777733377777733333333333333333333333
          33333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = btn_atualizarClick
      end
      object Label10: TLabel
        Left = 17
        Top = 9
        Width = 90
        Height = 13
        Caption = 'Índice de Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_tlitem: TLabel
        Left = 8
        Top = 346
        Width = 284
        Height = 13
        AutoSize = False
        Caption = 'Total de Itens da Conta Selecionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 292
        Top = 324
        Width = 89
        Height = 13
        Caption = 'Vl. Total Informado'
      end
      object Label4: TLabel
        Left = 392
        Top = 324
        Width = 70
        Height = 13
        Caption = 'Vl. Total Pagar'
      end
      object Label7: TLabel
        Left = 492
        Top = 324
        Width = 46
        Height = 13
        Caption = 'Diferença'
      end
      object lbl_tlcontas: TLabel
        Left = 8
        Top = 328
        Width = 142
        Height = 13
        Caption = 'Total de Contas Médicas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 7
        Top = 59
        Width = 785
        Height = 124
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
            FieldName = 'sequenciaconta_ctm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'carteirainform_ctm'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomebenefi_ctm'
            Width = 342
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtentrada_ctm'
            Width = 101
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 7
        Top = 188
        Width = 785
        Height = 133
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_itemservico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_padrao'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_itc'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde_itc'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlinformado_itc'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlpagar_itc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_sts'
            Width = 128
            Visible = True
          end>
      end
      object Panel17: TPanel
        Left = 478
        Top = 30
        Width = 313
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 2
        object rdb_internacoes: TRadioButton
          Left = 4
          Top = 4
          Width = 109
          Height = 17
          Caption = 'INTERNAÇÕES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object rdb_ambulatorio: TRadioButton
          Left = 116
          Top = 4
          Width = 113
          Height = 17
          Caption = 'AMBULATÓRIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object rdb_todos: TRadioButton
          Left = 232
          Top = 4
          Width = 64
          Height = 17
          Caption = 'TODOS'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
      end
      object rdb_sequencia: TRadioButton
        Left = 137
        Top = 7
        Width = 77
        Height = 17
        Caption = 'Sequência'
        TabOrder = 3
      end
      object rdb_carteira: TRadioButton
        Left = 225
        Top = 7
        Width = 109
        Height = 17
        Caption = 'Carteira'
        TabOrder = 4
      end
      object rdb_nome: TRadioButton
        Left = 301
        Top = 7
        Width = 109
        Height = 17
        Caption = 'Nome'
        Checked = True
        TabOrder = 5
        TabStop = True
      end
      object rdb_data: TRadioButton
        Left = 369
        Top = 7
        Width = 109
        Height = 17
        Caption = 'Dt. Atendimento'
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 710
        Top = 4
        Width = 64
        Height = 21
        DataField = 'sequenciaconta_ctm'
        DataSource = DataSource1
        TabOrder = 7
        Visible = False
        OnChange = DBEdit1Change
      end
      object edt_vlInformado: TDCEdit
        Left = 292
        Top = 338
        Width = 95
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object edt_vlPagar: TDCEdit
        Left = 392
        Top = 338
        Width = 95
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object edt_diferenca: TDCEdit
        Left = 492
        Top = 338
        Width = 95
        Height = 21
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 363
        Width = 779
        Height = 57
        Caption = 'Recuperar Glosa'
        TabOrder = 11
        object Label1: TLabel
          Left = 13
          Top = 25
          Width = 120
          Height = 13
          Caption = 'Mês / Ano de Referência'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 423
          Top = 25
          Width = 51
          Height = 13
          Caption = 'Sequencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ed2_ano: TDCEdit
          Left = 314
          Top = 21
          Width = 56
          Height = 21
          MaxLength = 12
          TabOrder = 1
          EditMask = '9999'
        end
        object cb2_cod_mes: TDCComboBox
          Left = 146
          Top = 21
          Width = 165
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object ed2_sequencia_cta: TDCEdit
          Left = 492
          Top = 21
          Width = 49
          Height = 21
          MaxLength = 12
          TabOrder = 2
          EditMask = '9999'
        end
      end
      object DBEdit2: TDBEdit
        Left = 707
        Top = 337
        Width = 64
        Height = 21
        DataField = 'sequenciaitem_itc'
        DataSource = DataSource2
        TabOrder = 12
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 0
      Top = 33
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Mes / Ano de Referência                                     ' +
        '                                                             Seq' +
        'uencia'
      TabOrder = 1
      object edt_ano: TDCEdit
        Left = 319
        Top = 5
        Width = 56
        Height = 21
        MaxLength = 12
        TabOrder = 1
        EditMask = '9999'
      end
      object edt_sequencia_cta: TDCEdit
        Left = 498
        Top = 5
        Width = 49
        Height = 21
        MaxLength = 12
        TabOrder = 2
        EditMask = '9999'
      end
      object cbx_cod_mes: TDCComboBox
        Left = 150
        Top = 5
        Width = 165
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
    Left = 16
    Top = 473
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal5.spc_cons_glosa02
    Left = 748
    Top = 77
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal5.spc_cons_itemglosa2
    Left = 708
    Top = 77
  end
end
