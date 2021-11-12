inherited Frm_Mov_Tramite: TFrm_Mov_Tramite
  Caption = 'Frm_Mov_Tramite'
  ClientHeight = 574
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 793
    inherited Image1: TImage
      Width = 791
    end
  end
  inherited Panel2: TPanel
    Top = 522
    Width = 793
    inherited Image3: TImage
      Width = 791
    end
    inherited Btn_Fechar: TPDJButton
      Left = 668
      Width = 125
    end
    inherited btn_novo: TPDJButton
      Width = 132
      Caption = '&Novo Processo'
    end
    inherited btn_alterar: TPDJButton
      Left = 136
      Width = 189
      Caption = '&Consultar / Alterar Trâmite'
    end
    inherited btn_salvar: TPDJButton
      Left = 328
      Width = 129
      Caption = '&Salvar Operação'
    end
    inherited btn_cancelar: TPDJButton
      Left = 457
      Width = 144
      Caption = '&Cancelar Operação'
    end
    inherited btn_excluir: TPDJButton
      Left = 542
      Width = 125
      Caption = '&Excluir Processo'
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 793
    Height = 481
    object lbl_ast0: TLabel
      Left = 689
      Top = 457
      Width = 8
      Height = 20
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 698
      Top = 457
      Width = 87
      Height = 13
      Caption = 'Campo Obrigatório'
    end
    object pnl_pesquisa: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 791
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Processo                                                    ' +
        '                     Ano                   Tipo de Processo'
      TabOrder = 0
      object lbl_ast4: TLabel
        Left = 293
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_cod_tramite: TDCChoiceEdit
        Tag = -3
        Left = 143
        Top = 5
        Width = 55
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 3
        Alignment = taRightJustify
      end
      object edt_ano_tmt: TDCEdit
        Tag = -1
        Left = 301
        Top = 5
        Width = 53
        Height = 21
        Color = clInfoBk
        MaxLength = 4
        ReadOnly = True
        TabOrder = 1
        OnExit = edt_ano_tmtExit
        EditMask = '9999'
      end
      object cbx_cod_setor: TDCComboBox
        Left = 709
        Top = 5
        Width = 172
        Height = 21
        TabOrder = 4
        Visible = False
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object rdb_processo: TRadioButton
        Left = 608
        Top = 8
        Width = 69
        Height = 17
        Caption = 'Processo'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = rdb_processoClick
      end
      object rdb_inscricao: TRadioButton
        Left = 676
        Top = 8
        Width = 63
        Height = 17
        Caption = 'Inscrição'
        TabOrder = 6
        OnClick = rdb_inscricaoClick
      end
      object edt_inscricao: TDCChoiceEdit
        Left = 141
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 7
        Visible = False
        OnExit = edt_inscricaoExit
        Alignment = taRightJustify
        OnButtonClick = edt_inscricaoButtonClick
      end
      object rdb_nome: TRadioButton
        Left = 741
        Top = 8
        Width = 101
        Height = 17
        Caption = 'Nome'
        TabOrder = 8
        OnClick = rdb_nomeClick
      end
      object edt_nome: TDCEdit
        Left = 107
        Top = 5
        Width = 225
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 100
        ParentFont = False
        TabOrder = 9
        Visible = False
        OnKeyDown = edt_inscricaoKeyDown
      end
      object edt_processo_tmt: TDCChoiceEdit
        Tag = -1
        Left = 141
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        Color = clInfoBk
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        ReadOnly = True
        OnButtonClick = edt_processo_tmtButtonClick
      end
      object cbx_cod_corprocesso: TDCComboBox
        Tag = -1
        Left = 452
        Top = 5
        Width = 153
        Height = 21
        Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = cbx_cod_corprocessoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object ckb_anoanterior: TCheckBox
        Left = 703
        Top = 6
        Width = 82
        Height = 17
        Caption = 'Ano Anterior'
        TabOrder = 10
        OnClick = ckb_anoanteriorClick
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Interessado                                                 ' +
        '                                                                ' +
        '                                           Matrícula            ' +
        '                               Digito'
      TabOrder = 3
      object lbl_ast1: TLabel
        Left = 131
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_interessado_tmt: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 389
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 150
        TabOrder = 0
      end
      object edt_matricula_tmt: TDCEdit
        Tag = -1
        Left = 596
        Top = 5
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 1
        EditMask = '99999'
      end
      object edt_digito_tmt: TDCEdit
        Tag = -1
        Left = 748
        Top = 5
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 2
        EditMask = '99'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Criação do Proc.                                    ' +
        '                                                Setor Origem'
      TabOrder = 2
      object lbl_ast3: TLabel
        Left = 131
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_ast5: TLabel
        Left = 453
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_dtprocesso_tmt: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object cbx_cod_setorImasf: TDCComboBox
        Tag = -1
        Left = 472
        Top = 5
        Width = 317
        Height = 21
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object PageControl: TPageControl
      Tag = -1
      Left = 4
      Top = 197
      Width = 793
      Height = 249
      ActivePage = tbs_andamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      object tbs_andamento: TTabSheet
        Caption = 'Andamento'
        ImageIndex = 4
        OnShow = tbs_andamentoShow
        object GroupBox1: TGroupBox
          Left = 0
          Top = 4
          Width = 781
          Height = 125
          Caption = 'Último Andamento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel8: TPanel
            Left = 4
            Top = 21
            Width = 773
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 
              '    Setor de Origem                                             ' +
              '                                                                ' +
              '               Remetente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_origem: TDCEdit
              Left = 128
              Top = 5
              Width = 317
              Height = 21
              MaxLength = 100
              ReadOnly = True
              TabOrder = 0
              Text = 'edt_nome_fpm'
            end
            object edt_remetente: TDCEdit
              Left = 520
              Top = 5
              Width = 249
              Height = 21
              MaxLength = 100
              ReadOnly = True
              TabOrder = 1
            end
          end
          object Panel11: TPanel
            Left = 4
            Top = 53
            Width = 773
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 
              '    Setor de Destino                                            ' +
              '                                                                ' +
              '               Destinatário'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_destino: TDCEdit
              Left = 128
              Top = 5
              Width = 317
              Height = 21
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 100
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = 'edt_nome_fpm'
            end
            object edt_destinatario: TDCEdit
              Left = 520
              Top = 5
              Width = 249
              Height = 21
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 100
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
          object Panel12: TPanel
            Left = 4
            Top = 85
            Width = 453
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '    Data de Destino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_dtdestino: TDCDateEdit
              Left = 128
              Top = 5
              Width = 129
              Height = 21
              TabOrder = 0
              ReadOnly = True
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
        end
        object PDJButton4: TPDJButton
          Left = 8
          Top = 172
          Width = 317
          Height = 25
          Hint = 'Adicionar Novo Registro'
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
          Caption = '&Imprimir Histórico do Andamento'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton4Click
          TabOrder = 1
        end
      end
      object Tbs_NovoAndamento: TTabSheet
        ImageIndex = 1
        TabVisible = False
        object GroupBox2: TGroupBox
          Left = 0
          Top = 16
          Width = 781
          Height = 125
          Caption = 'Novo Andamento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel7: TPanel
            Left = 4
            Top = 21
            Width = 773
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 
              '     Setor de Origem                                            ' +
              '                                                                ' +
              '                Remetente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_setorOrigem: TDCEdit
              Left = 128
              Top = 5
              Width = 317
              Height = 21
              MaxLength = 100
              TabOrder = 0
            end
            object edt_remetente_tmt: TDCEdit
              Left = 520
              Top = 5
              Width = 249
              Height = 21
              MaxLength = 100
              TabOrder = 1
            end
          end
          object Panel15: TPanel
            Left = 4
            Top = 53
            Width = 773
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 
              '    Setor de Destino                                            ' +
              '                                                                ' +
              '               Destinatário'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_destinatario_tmt: TDCEdit
              Left = 520
              Top = 5
              Width = 249
              Height = 21
              MaxLength = 100
              TabOrder = 0
            end
            object cbx_cod_setorDestino: TDCComboBox
              Left = 129
              Top = 5
              Width = 316
              Height = 21
              TabOrder = 1
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel16: TPanel
            Left = 4
            Top = 85
            Width = 453
            Height = 32
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '    Data de Destino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_dtdestino_tmt: TDCDateEdit
              Left = 128
              Top = 5
              Width = 129
              Height = 21
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
        end
        object PDJButton2: TPDJButton
          Left = 204
          Top = 172
          Width = 180
          Height = 25
          Hint = 'Salvar/Gravar o Registro Atual'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            5A010000424D5A01000000000000760000002800000012000000130000000100
            040000000000E400000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888000000888888888888888888000000800000000000000888000000800B
            FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
            00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
            BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
            B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
            000088880EEE08778888880000008880EEE0888788888800000088880E088888
            888888000000888880888888888888000000888888888888888888000000}
          GlyphHot.Data = {
            5A010000424D5A01000000000000760000002800000012000000130000000100
            040000000000E400000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888000000888888888888888888000000844444444444444888000000844E
            FEFEFEFEFE48880000008474EFEFEFEFEFE48800000084E4FEFEFEFEFEF48800
            00008474EFEFEFEFEFE48800000084E77EFEFEFEFEFE78000000847E7FEFEFEF
            EFEF7800000084E777777777777778000000847E7E7CCCC77E78880000008444
            E7E4CCC77778880000008888444CCCC7888888000000888884CCC4C788888800
            000088884CCC48778888880000008884CCC4888788888800000088884C488888
            888888000000888884888888888888000000888888888888888888000000}
          Caption = '&Salvar Andamento'
          OnClick = PDJButton2Click
          TabOrder = 1
        end
        object btn_cancelarand: TPDJButton
          Left = 389
          Top = 172
          Width = 180
          Height = 25
          Hint = 'Cancelar a Edição Atual'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777770000000000000777033333333333077703333333333
            3077703333333333307770333333333330777033333333333077703333333333
            307770333333333330777800000000000877770FFF0777777774777000777777
            7774777777777777474777777777777744777777777777774447}
          GlyphHot.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888888888888888888844444444444448884EEEEEEEEEEE48884EEEEEEEEEE
            E48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEE
            E48884EEEEEEEEEEE4888744444444444788884FFF4888888884888444888888
            8884888888888888484888888888888844888888888888884448}
          Caption = '&Cancelar Andamento'
          OnClick = btn_cancelarandClick
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Histórico do Andamento'
        ImageIndex = 2
        object DBG_matricula: TDBGrid
          Left = 4
          Top = 4
          Width = 773
          Height = 213
          Hint = 'Clique duas vezes '
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
              FieldName = 'sigla_sti_1'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sti_1'
              Width = 148
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'remetente_tmt'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sigla_sti'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sti'
              Width = 158
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'destinatario_tmt'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtDestino_tmt'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_usu'
              Visible = True
            end>
        end
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Assunto'
      TabOrder = 4
      object lbl_ast2: TLabel
        Left = 131
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbx_assunto_tmt: TDCComboBox
        Left = 139
        Top = 5
        Width = 420
        Height = 21
        HideSelection = False
        MaxLength = 100
        TabOrder = 1
        Visible = False
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object edt_assunto_tmt: TDCEdit
        Tag = -1
        Left = 139
        Top = 5
        Width = 497
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 255
        TabOrder = 0
        Visible = False
        OnEnter = edt_assunto_tmtEnter
      end
      object btn_digita: TPDJButton
        Left = 645
        Top = 3
        Width = 144
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007700000000000007700000007033
          3333333333307000000070FF3F3F3F3F3F307000000070F00000000000307000
          000070FF3F3F3F3F3F307000000070F00000000000307000000070FF3F3F3F3F
          3F70700000007700000000000007700000007777077777777777700000007777
          0707070707777000000077777070707070777000000077777777777777077000
          0000777777777777770770000000777777777777770770000000777777777777
          777770000000}
        GlyphHot.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888000000088888888888888888000000088000000000000088000000080EE
          EEEEEEEEEEE08000000080FFEFEFEFEFEFE08000000080F00000000000E08000
          000080FFEFEFEFEFEFE08000000080F00000000000E08000000080FFEFEFEFEF
          EF80800000008800000000000008800000008888088888888888800000008888
          0808080808888000000088888080808080888000000088888888888888088000
          0000888888888888880880000000888888888888880880000000888888888888
          888880000000}
        Caption = '&Selecionar Assunto'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_digitaClick
        TabOrder = 2
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 2
      Top = 161
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Observação'
      TabOrder = 5
      object edt_cod_usuario: TDCEdit
        Tag = -1
        Left = 376
        Top = 5
        Width = 29
        Height = 21
        MaxLength = 250
        TabOrder = 1
      end
      object edt_dtalteracao_tmt: TDCEdit
        Tag = -1
        Left = 412
        Top = 5
        Width = 37
        Height = 21
        MaxLength = 250
        TabOrder = 2
      end
      object edt_obs_tmt: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 649
        Height = 21
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 250
        ParentFont = False
        TabOrder = 0
      end
      object btn_SalvarObs: TPDJButton
        Left = 112
        Top = 4
        Width = 25
        Height = 25
        Hint = 'Salvar/Gravar a Observação'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E400000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888000000888888888888888888000000800000000000000888000000800B
          FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
          00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
          BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
          B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
          000088880EEE08778888880000008880EEE0888788888800000088880E088888
          888888000000888880888888888888000000888888888888888888000000}
        GlyphHot.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E400000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888000000888888888888888888000000844444444444444888000000844E
          FEFEFEFEFE48880000008474EFEFEFEFEFE48800000084E4FEFEFEFEFEF48800
          00008474EFEFEFEFEFE48800000084E77EFEFEFEFEFE78000000847E7FEFEFEF
          EFEF7800000084E777777777777778000000847E7E7CCCC77E78880000008444
          E7E4CCC77778880000008888444CCCC7888888000000888884CCC4C788888800
          000088884CCC48778888880000008884CCC4888788888800000088884C488888
          888888000000888884888888888888000000888888888888888888000000}
        OnClick = btn_salvarClick
        ShowHint = True
        TabOrder = 3
      end
    end
    object Panel13: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '           Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lbl_ast6: TLabel
        Left = 131
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_ast7: TLabel
        Left = 272
        Top = 11
        Width = 8
        Height = 20
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_inscricao_ben: TDCEdit
        Tag = -1
        Left = 141
        Top = 5
        Width = 94
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 250
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnExit = edt_inscricao_benExit
      end
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 280
        Top = 5
        Width = 413
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 250
        ParentFont = False
        TabOrder = 1
        OnExit = edt_nome_benExit
      end
      object btn_beneficiario: TPDJButton
        Left = 700
        Top = 4
        Width = 93
        Height = 25
        Hint = 'CONSULTA O CADASTRO DE BENEFICIÁRIOS'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888880808080888888888888888008888888888888800088888888888880B7
          08888000000080B80888880FF008880B7088880FFFF0880B8088800FFF008880
          B708000FFFF08880B00800FFF0FF08880110000FF07088880008000FFF088888
          888800000000888888888000000888888888}
        GlyphHot.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          0400000000007800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888884848484888888888888888448888888888888844488888888888884B7
          48888444444484B84888884EE448884B7488884EEEE4884B8488844EEE448884
          B748444EEEE48884B44844EEE4EE48884114444EE47488884448444EEE488888
          888844444444888888888444444888888888}
        Caption = 'Beneficiários'
        OnClick = btn_beneficiarioClick
        ShowHint = True
        TabOrder = 2
      end
    end
    object PDJButton1: TPDJButton
      Left = 4
      Top = 452
      Width = 275
      Height = 25
      Hint = 'Adicionar Novo Registro'
      RepeatInterval = 50
      RepeatStartInterval = 50
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
      GlyphHot.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF33344444444333CCCCC333377777777F337777
        7FF334EFEFEF433C73337C3337F3FFFF7F37733377F334F4444E433333333C33
        37F777737F333333F7F3349999994333333C7C3337F333337F33333777FF349F
        FFF94333333CCCC337F333337F3333377773349999994333333CCC3337F3FF3F
        7F333337773334F44E444333333CC33337F7737773333337733334EFEF443333
        333C333337FFFF7733333337333334444443333333333333377777733333FFFF
        FFFF3333333333344444444333333F3333377777777F3333C3333334EFEFEF43
        33337F333337F3FFFF7F333CC3333334F4444E4333377F333337F777737F33CC
        C3333334EFEFEF4333777F333337F3FFFF7F3CCCC3333334F4444E4337777F33
        3337F777737F33C7C3333334EFEFEF43337773333337F3FF3F7F33C333333334
        F44E4443337FF333FF37F773777333C73337C334EFEF44333377FFF77337FFFF
        7733333CCCCC3334444443333337777733377777733333333333333333333333
        33333333333333333333}
      Caption = '&Acessar tela para Remessa de Processos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 7
    end
    object btn_receber: TPDJButton
      Left = 304
      Top = 452
      Width = 153
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Etiquetas'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_receberClick
      TabOrder = 8
    end
    object btn_imprimeprocesso: TPDJButton
      Left = 496
      Top = 452
      Width = 153
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'I&mprimir Processos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimeprocessoClick
      TabOrder = 9
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 555
    Width = 793
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal2.spc_cons_tramitacao
    Left = 49
    Top = 429
  end
end
