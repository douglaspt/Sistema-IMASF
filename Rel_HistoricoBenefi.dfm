inherited Frm_Rel_HistoricoBenefi: TFrm_Rel_HistoricoBenefi
  Caption = 'Frm_Rel_HistoricoBenefi'
  ClientHeight = 571
  ClientWidth = 790
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 790
    inherited Image1: TImage
      Width = 788
    end
  end
  inherited Panel2: TPanel
    Top = 519
    Width = 790
    inherited Image3: TImage
      Width = 788
    end
  end
  inherited Panel3: TPanel
    Width = 790
    Height = 478
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 788
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 788
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Beneficiário'
      TabOrder = 1
      object edt_nome: TDCEdit
        Tag = -10
        Left = 324
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object PageControl: TPageControl
      Left = 4
      Top = 100
      Width = 789
      Height = 374
      ActivePage = TabSheet1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      object TabSheet1: TTabSheet
        Caption = 'Planos'
        OnShow = TabSheet1Show
        object Label1: TLabel
          Left = 4
          Top = 8
          Width = 473
          Height = 16
          Caption = 
            'Histórico de Planos Utilizados ( Plano / Data da Mudança de Plan' +
            'o )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 4
          Top = 24
          Width = 771
          Height = 174
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
              FieldName = 'nome_pla'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtinicial_hlp'
              Title.Caption = 'Desde'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfinal_hpl'
              Title.Caption = 'até o dia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsistema_hpl'
              Visible = True
            end>
        end
        object btn_excluir: TPDJButton
          Left = 660
          Top = 318
          Width = 109
          Height = 25
          Hint = 'Exclui Registro Corrente'
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
          Enabled = False
          Caption = '&Excluir'
          OnClick = btn_excluirClick
          TabOrder = 1
        end
        object lsv_historico: TListView
          Left = 4
          Top = 204
          Width = 770
          Height = 108
          Columns = <
            item
              Caption = 'Data'
              Width = 80
            end
            item
              Caption = 'Usuário'
              Width = 100
            end
            item
              Caption = 'Descrição'
              Width = 420
            end
            item
              Caption = 'Computador'
              Width = 140
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          TabOrder = 2
          ViewStyle = vsReport
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Tipo de Segurado'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object Label2: TLabel
          Left = 4
          Top = 8
          Width = 591
          Height = 16
          Caption = 
            'Histórico de Mudança de Tipo de Segurado ( Tipo de Segurado / Da' +
            'ta da Alteração )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 4
          Top = 24
          Width = 773
          Height = 309
          DataSource = DataSource2
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
              FieldName = 'nome_tse'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfinal_hsg'
              Title.Caption = 'até o dia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsistema_hsg'
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Tipo de Dependência'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object Label3: TLabel
          Left = 4
          Top = 8
          Width = 641
          Height = 16
          Caption = 
            'Histórico de Mudança de Tipo de Dependência ( Tipo de Dependênci' +
            'a / Data da Alteração )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = 4
          Top = 24
          Width = 773
          Height = 309
          DataSource = DataSource33
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
              FieldName = 'nome_tdp'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfinal_hdp'
              Title.Caption = 'até o dia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsistema_hdp'
              Visible = True
            end>
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Situação no Instituto'
        ImageIndex = 5
        OnShow = TabSheet6Show
        object Label4: TLabel
          Left = 4
          Top = 8
          Width = 478
          Height = 16
          Caption = 
            'Histórico de Situações no Institulo ( Normal / Suspenso / Cancel' +
            'ado )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid6: TDBGrid
          Left = 4
          Top = 24
          Width = 773
          Height = 309
          DataSource = DataSource5
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
              FieldName = 'nome_sit'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfinal_hsb'
              Title.Caption = 'até o dia'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsistema_hsb'
              Visible = True
            end>
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        object mem_obs_ben: TMemo
          Tag = -1
          Left = 4
          Top = 4
          Width = 769
          Height = 325
          Lines.Strings = (
            'Memo1')
          MaxLength = 2000
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Contribuição / Descontos'
        ImageIndex = 4
        object Label6: TLabel
          Left = 4
          Top = 0
          Width = 409
          Height = 16
          Caption = 'HISTÓRICO DE DESCONTOS EM FOLHA DE PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PageControl1: TPageControl
          Left = 4
          Top = 20
          Width = 773
          Height = 313
          ActivePage = TabSheet12
          TabOrder = 0
          object TabSheet12: TTabSheet
            Caption = 'Total Detalhado de Descontos por Beneficiário'
            ImageIndex = 1
            object DBGrid5: TDBGrid
              Left = 0
              Top = 38
              Width = 765
              Height = 245
              DataSource = DataSource3
              DefaultDrawing = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGrid5DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COLUMN7'
                  Width = 140
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_tarifa'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_tar'
                  Width = 212
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vldesconto_adf'
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_ben'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_sds'
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Tag = -1
              Left = 0
              Top = 0
              Width = 765
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '    Mês de Referencia Inicial                                   ' +
                '                                                       Final    ' +
                '                          '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object btn_atualizar: TSpeedButton
                Left = 662
                Top = 4
                Width = 86
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
              object cb3_cod_mes: TDCComboBox
                Tag = -1
                Left = 145
                Top = 5
                Width = 150
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
              object ed3_ano: TDCEdit
                Left = 298
                Top = 5
                Width = 50
                Height = 21
                TabOrder = 1
              end
              object cb4_cod_mes: TDCComboBox
                Tag = -1
                Left = 441
                Top = 5
                Width = 150
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
              object ed4_ano: TDCEdit
                Left = 594
                Top = 5
                Width = 50
                Height = 21
                TabOrder = 3
              end
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Relatórios'
        ImageIndex = 3
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 769
          Height = 145
          Caption = 'Descontos'
          TabOrder = 0
          object btn_relatorio: TPDJButton
            Left = 48
            Top = 100
            Width = 681
            Height = 25
            Hint = 'Relação Detalhada de Descontos '
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
              07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
              70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
              FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
              4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
              E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
              FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
            Caption = 'Relação Detalhada de Descontos '
            OnClick = btn_relatorioClick
            TabOrder = 0
          end
          object Panel7: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 765
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '    Mês / Ano de Referencia                                     ' +
              '                                                                ' +
              '                         Periodo Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
              TabOrder = 1
            end
          end
          object Panel1: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 765
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '    Mês / Ano de Referencia                                     ' +
              '                                                                ' +
              '                         Periodo Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
              TabOrder = 1
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 12
          Top = 200
          Width = 769
          Height = 105
          Caption = 'Atendimentos Médicos'
          TabOrder = 1
          object PDJButton1: TPDJButton
            Left = 40
            Top = 72
            Width = 689
            Height = 25
            Hint = 'Extrato Simplificado de Atendimentos Médico/Hospitalares'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Extrato Simplificado de Atendimentos Médico/Hospitalares'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton1Click
            TabOrder = 0
          end
        end
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 788
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Plano Atual'
      TabOrder = 3
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
        Color = clInfoBk
        Enabled = False
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
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 552
    Width = 790
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
    DataSet = Fdt_principal.spc_cons_adm_histplano
    Left = 25
    Top = 357
  end
  object DataSource2: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_histtipsegurado
    Left = 65
    Top = 357
  end
  object DataSource33: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_histtipdepend
    Left = 175
    Top = 357
  end
  object DataSource3: TDataSource
    DataSet = Fdt_principal.spc_cons_adm_descontofolha02
    Left = 101
    Top = 357
  end
  object DataSource5: TDataSource
    DataSet = fdt_principal2.spc_cons_adm_histsitbeneficiario
    Left = 139
    Top = 357
  end
end
