inherited Frm_Cad_PedidoCompra: TFrm_Cad_PedidoCompra
  Caption = 'Frm_Cad_PedidoCompra'
  ClientHeight = 573
  ClientWidth = 792
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 792
    inherited Image1: TImage
      Width = 790
    end
  end
  inherited Panel2: TPanel
    Top = 521
    Width = 792
    inherited Image3: TImage
      Width = 790
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
    object btn_imprimir: TPDJButton
      Left = 573
      Top = 4
      Width = 108
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
      OnClick = btn_imprimirClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 792
    Height = 480
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Ano                                                Unidade  ' +
        '                                                                ' +
        '                  Cod. Pedido                                   ' +
        '          '
      TabOrder = 0
      object lbl_npedido: TLabel
        Left = 634
        Top = 9
        Width = 3
        Height = 13
      end
      object edt_cod_PedidoCompra: TDCChoiceEdit
        Tag = -2
        Left = 538
        Top = 6
        Width = 84
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 12
        TabOrder = 2
        OnKeyDown = edt_cod_PedidoCompraKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_PedidoCompraButtonClick
      end
      object cbx_cod_unidadeOrcam: TDCComboBox
        Tag = -1
        Left = 225
        Top = 5
        Width = 225
        Height = 21
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
      object edt_numPedido_pcs: TDCEdit
        Tag = -1
        Left = 706
        Top = 6
        Width = 75
        Height = 21
        MaxLength = 255
        TabOrder = 3
      end
      object edt_ano: TDCEdit
        Tag = -10
        Left = 115
        Top = 6
        Width = 45
        Height = 21
        MaxLength = 255
        TabOrder = 0
        OnKeyDown = edt_anoKeyDown
        EditMask = '9999'
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Setor                                                       ' +
        '                                                                ' +
        '          Responsável                  '
      TabOrder = 2
      object cbx_cod_setorImasf: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 286
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = cbx_cod_setorImasfExit
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 520
        Top = 5
        Width = 225
        Height = 21
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
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = '     Justificativa '
      TabOrder = 4
      object edt_justificativa_pcs: TDCEdit
        Tag = -1
        Left = 115
        Top = 5
        Width = 629
        Height = 21
        MaxLength = 255
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Cod. Dotação                                                ' +
        '                                                                ' +
        '   Data de Entrada'
      TabOrder = 1
      object cbx_cod_dotacaoContabil: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 287
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_dtSolicitacao_pcs: TDCDateEdit
        Tag = -1
        Left = 520
        Top = 5
        Width = 138
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 799
      Height = 382
      TabOrder = 5
      object Panel6: TPanel
        Tag = -1
        Left = 14
        Top = 73
        Width = 647
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Discriminação '
        TabOrder = 1
        object edt_discriminacao_ipc: TDCEdit
          Left = 119
          Top = 5
          Width = 518
          Height = 21
          MaxLength = 120
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Tag = -1
        Left = 14
        Top = 41
        Width = 647
        Height = 32
        Alignment = taLeftJustify
        Caption = 
          '    Seq. do Item                                                ' +
          '   Qtde.'
        TabOrder = 0
        object edt_sequencia_ipc: TDCEdit
          Left = 119
          Top = 5
          Width = 58
          Height = 21
          MaxLength = 85
          TabOrder = 0
          EditMask = '9999'
        end
        object edt_qtde_ipc: TDCEdit
          Left = 273
          Top = 5
          Width = 58
          Height = 21
          MaxLength = 5
          TabOrder = 1
          EditMask = '9999'
        end
      end
      object dbg_itemPedidoCompra: TDBGrid
        Left = 8
        Top = 14
        Width = 777
        Height = 247
        DataSource = DataSource2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'sequencia_ipc'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde_ipc'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'discriminacao_ipc'
            Width = 645
            Visible = True
          end>
      end
      object pnl_alerta: TPanel
        Left = 12
        Top = 270
        Width = 753
        Height = 36
        BevelOuter = bvLowered
        Caption = 
          '"ATENÇÃO"   Se você fez alguma alteração nas informações da tela' +
          ' não esqueça de Salvar'
        Color = clLime
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 800
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '     Chefe de Divisão                                           ' +
        '                                                                ' +
        '   Diretor'
      TabOrder = 3
      object cbx_cod_usuarioChefe: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 286
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_usuarioDiretor: TDCComboBox
        Tag = -1
        Left = 520
        Top = 5
        Width = 225
        Height = 21
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
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 554
    Width = 792
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 721
    Top = 426
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update dbo.tbl_itemPedidoCompra'
      'set'
      '  cod_PedidoCompra = :cod_PedidoCompra,'
      '  numOrdem_ipc = :numOrdem_ipc,'
      '  discriminacao_ipc = :discriminacao_ipc,'
      '  qtde_ipc = :qtde_ipc,'
      '  sequencia_ipc = :sequencia_ipc'
      'where'
      '  cod_PedidoCompra = :OLD_cod_PedidoCompra and'
      '  numOrdem_ipc = :OLD_numOrdem_ipc and'
      '  discriminacao_ipc = :OLD_discriminacao_ipc and'
      '  qtde_ipc = :OLD_qtde_ipc and'
      '  sequencia_ipc = :OLD_sequencia_ipc')
    InsertSQL.Strings = (
      'insert into dbo.tbl_itemPedidoCompra'
      
        '  (cod_PedidoCompra, numOrdem_ipc, discriminacao_ipc, qtde_ipc, ' +
        'sequencia_ipc)'
      'values'
      
        '  (:cod_PedidoCompra, :numOrdem_ipc, :discriminacao_ipc, :qtde_i' +
        'pc, :sequencia_ipc)')
    DeleteSQL.Strings = (
      'delete from dbo.tbl_itemPedidoCompra'
      'where'
      '  cod_PedidoCompra = :OLD_cod_PedidoCompra and'
      '  numOrdem_ipc = :OLD_numOrdem_ipc')
    Left = 681
    Top = 386
  end
  object Query1: TQuery
    CachedUpdates = True
    AfterInsert = Query1AfterInsert
    OnEditError = Query1EditError
    DatabaseName = 'bd_imasf'
    SessionName = 'Default'
    SQL.Strings = (
      
        'select * from dbo.tbl_itemPedidoCompra where cod_PedidoCompra = ' +
        ':p0 order by numOrdem_ipc')
    UpdateObject = UpdateSQL1
    Left = 721
    Top = 386
    ParamData = <
      item
        DataType = ftString
        Name = 'p0'
        ParamType = ptInput
        Value = '0'
      end>
    object Query1cod_PedidoCompra: TIntegerField
      FieldName = 'cod_PedidoCompra'
      Origin = 'BD_IMASF.tbl_itemPedidoCompra.cod_PedidoCompra'
    end
    object Query1numOrdem_ipc: TIntegerField
      FieldName = 'numOrdem_ipc'
      Origin = 'BD_IMASF.tbl_itemPedidoCompra.numOrdem_ipc'
    end
    object Query1discriminacao_ipc: TStringField
      FieldName = 'discriminacao_ipc'
      Origin = 'BD_IMASF.tbl_itemPedidoCompra.discriminacao_ipc'
      FixedChar = True
      Size = 120
    end
    object Query1qtde_ipc: TIntegerField
      FieldName = 'qtde_ipc'
      Origin = 'BD_IMASF.tbl_itemPedidoCompra.qtde_ipc'
    end
    object Query1sequencia_ipc: TIntegerField
      FieldName = 'sequencia_ipc'
      Origin = 'BD_IMASF.tbl_itemPedidoCompra.sequencia_ipc'
    end
  end
end
