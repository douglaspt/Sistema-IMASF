inherited Frm_Mov_2077: TFrm_Mov_2077
  Caption = 'Frm_Mov_2077'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 40
    Height = 490
    Align = alNone
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 488
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Simpro'
        OnShow = TabSheet1Show
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 790
          Height = 460
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = '�tens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabVisible = False
            object Label6: TLabel
              Left = 116
              Top = 392
              Width = 61
              Height = 13
              Caption = 'Identifica��o'
            end
            object lbl_simpro: TLabel
              Left = 2
              Top = 435
              Width = 3
              Height = 13
              Caption = '.'
            end
            object Label7: TLabel
              Left = 216
              Top = 392
              Width = 41
              Height = 13
              Caption = 'Vig�ncia'
            end
            object Label10: TLabel
              Left = 298
              Top = 392
              Width = 66
              Height = 13
              Caption = 'Pre�o Fabrica'
            end
            object Label13: TLabel
              Left = 378
              Top = 392
              Width = 62
              Height = 13
              Caption = 'Pre�o Venda'
            end
            object Label14: TLabel
              Left = 599
              Top = 392
              Width = 74
              Height = 13
              Caption = 'Regsitro Anvisa'
            end
            object Label15: TLabel
              Left = 693
              Top = 392
              Width = 76
              Height = 13
              Caption = 'Validade Anvisa'
            end
            object Label16: TLabel
              Left = 8
              Top = 392
              Width = 42
              Height = 13
              Caption = 'Mercado'
            end
            object Label3: TLabel
              Left = 456
              Top = 392
              Width = 21
              Height = 13
              Caption = 'Tipo'
            end
            object Label4: TLabel
              Left = 489
              Top = 392
              Width = 26
              Height = 13
              Caption = 'Qtde.'
            end
            object Label5: TLabel
              Left = 542
              Top = 392
              Width = 40
              Height = 13
              Caption = 'Unidade'
            end
            object GroupBox9: TGroupBox
              Left = 197
              Top = 2
              Width = 583
              Height = 41
              Caption = 'Localizar '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object btn_pesquisa: TSpeedButton
                Left = 515
                Top = 12
                Width = 26
                Height = 22
                Hint = 
                  'Localizar conforme o texto digitado, se campo em branco, exibe t' +
                  'odos os registros.'
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
                ParentShowHint = False
                ShowHint = True
                OnClick = btn_pesquisaClick
              end
              object Label1: TLabel
                Left = 16
                Top = 19
                Width = 33
                Height = 13
                Caption = 'C�digo'
              end
              object Label2: TLabel
                Left = 142
                Top = 19
                Width = 48
                Height = 13
                Caption = 'Descri��o'
              end
              object edt_codigo: TBEdit
                Left = 60
                Top = 13
                Width = 73
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = edt_codigoExit
                OnKeyPress = edt_codigoKeyPress
                NumbersOnly = False
              end
              object edt_descricao: TBEdit
                Left = 199
                Top = 13
                Width = 307
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnExit = edt_codigoExit
                NumbersOnly = False
              end
              object btn_limpar: TPDJButton
                Left = 547
                Top = 12
                Width = 26
                Height = 22
                Hint = 'Limpa Filtros'
                RepeatInterval = 50
                RepeatStartInterval = 50
                NumGlyphs = 1
                NumGlyphsHot = 1
                Caption = '&X'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_limparClick
                ShowHint = True
                TabOrder = 2
              end
            end
            object dbg_simpro: TDBGrid
              Left = 1
              Top = 50
              Width = 778
              Height = 338
              DataSource = dts_Simpro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_simpro'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_TUSS'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Width = 373
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fabricante'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtAtualizacao'
                  Width = 98
                  Visible = True
                end>
            end
            object RadioGroup1: TRadioGroup
              Left = 2
              Top = 2
              Width = 192
              Height = 41
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = '�ndices de Pesquisa '
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'C�digo'
                'Descri��o')
              ParentFont = False
              TabOrder = 2
              OnClick = RadioGroup1Click
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 407
              Width = 104
              Height = 21
              DataField = 'cod_mercado'
              DataSource = dts_Simpro
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 115
              Top = 407
              Width = 96
              Height = 21
              DataField = 'identificacao'
              DataSource = dts_Simpro
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 214
              Top = 407
              Width = 80
              Height = 21
              DataField = 'dtvigencia'
              DataSource = dts_Simpro
              TabOrder = 5
            end
            object DBEdit4: TDBEdit
              Left = 297
              Top = 407
              Width = 75
              Height = 21
              DataField = 'prFabrica'
              DataSource = dts_Simpro
              TabOrder = 6
            end
            object DBEdit5: TDBEdit
              Left = 376
              Top = 407
              Width = 75
              Height = 21
              DataField = 'prVenda'
              DataSource = dts_Simpro
              TabOrder = 7
            end
            object DBEdit6: TDBEdit
              Left = 598
              Top = 407
              Width = 89
              Height = 21
              DataField = 'numAnvisa'
              DataSource = dts_Simpro
              TabOrder = 8
            end
            object DBEdit7: TDBEdit
              Left = 691
              Top = 407
              Width = 80
              Height = 21
              DataField = 'dtvalidade'
              DataSource = dts_Simpro
              TabOrder = 9
            end
            object DBEdit8: TDBEdit
              Left = 455
              Top = 407
              Width = 28
              Height = 21
              DataField = 'tipoEmbalagem'
              DataSource = dts_Simpro
              TabOrder = 10
            end
            object DBEdit9: TDBEdit
              Left = 487
              Top = 407
              Width = 49
              Height = 21
              DataField = 'qtde'
              DataSource = dts_Simpro
              TabOrder = 11
            end
            object DBEdit10: TDBEdit
              Left = 541
              Top = 407
              Width = 52
              Height = 21
              DataField = 'tipoFracao'
              DataSource = dts_Simpro
              TabOrder = 12
            end
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Importar Arquivo'
        ImageIndex = 2
        OnEnter = TabSheet10Enter
        object lbl_linha: TLabel
          Left = 2
          Top = 440
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 2
          Top = 123
          Width = 73
          Height = 13
          Caption = 'Log de Erros'
        end
        object pgb_tabelas: TProgressBar
          Left = 2
          Top = 420
          Width = 776
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 0
          Visible = False
        end
        object mem_log: TMemo
          Left = 2
          Top = 144
          Width = 776
          Height = 271
          ReadOnly = True
          TabOrder = 1
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 16
          Width = 768
          Height = 97
          Caption = 'Simpro (Materiais) '
          TabOrder = 2
          object btn_carregar: TPDJButton
            Left = 60
            Top = 33
            Width = 533
            Height = 24
            Hint = 'Carrega arquivos da Simpro'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Carregar Arquivo'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_carregarClick
            ShowHint = True
            TabOrder = 0
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Hist�ricos'
        ImageIndex = 3
        OnShow = TabSheet9Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 421
          Color = clInfoBk
          ColCount = 1
          DefaultRowHeight = 17
          FixedCols = 0
          TabOrder = 0
          OnDrawCell = stg_audiDrawCell
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
  inherited Tmr_Close: TTimer
    Left = 544
    Top = 531
  end
  object dlg_leitura: TOpenDialog
    Filter = 'csv|*.csv'
    Title = 'IMASF - Selec�o de movimento para leitura'
    Left = 620
    Top = 533
  end
  object dts_Simpro: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_simpro
    Left = 516
    Top = 531
  end
  object dts_simprohistorico: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_simprohistorico
    Left = 492
    Top = 531
  end
  object dts_brasindice: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_brasindice
    Left = 468
    Top = 531
  end
  object dts_brasindicehistorico: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_brasindicehistorico
    Left = 444
    Top = 531
  end
  object salva_arquivo: TSaveDialog
    DefaultExt = 'txt'
    Left = 592
    Top = 529
  end
end
