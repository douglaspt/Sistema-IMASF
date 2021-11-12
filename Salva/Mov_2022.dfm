inherited Frm_Mov_2022: TFrm_Mov_2022
  Caption = 'Frm_Mov_2022'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Transferência'
        object lbl_linha: TLabel
          Left = 0
          Top = 440
          Width = 24
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object SpeedButton1: TSpeedButton
          Left = 640
          Top = 312
          Width = 23
          Height = 22
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8008888888888888888888888888888808808888888888888888888888800880
            F878088888888888888888888808800708780888888888888888888887788800
            78780888888888888888888887F8787F88780888888888887008888887F87807
            F878088888888887B33088888808780F0878088888888700BB70888880787800
            787808888888733BB70088887F88787F8878088888887BBB7030888887F8787F
            8878088888700BB70308888888087807F87808888733BB703088888880787807
            F87708887BBBB703088888887F88787F88F708887BBB7030888888887F8877F8
            8F887080BBB703088888888887F87F88F000000BBB7030888888888887F7F880
            0777777BB7030888888888887F7F88077BBBBBBB7030888888888887F87F807B
            BBBBBBB8B30888888888887F887F80BBBB8B8B8B83088888888887F88F7F0BBB
            B0B0B8B8B308888888887F88F87F7BBBBB0B0B8B8308888888887F888F877BBB
            BBB0B0B8B308888888887F88F8007BBB770B0B0B8308888888887F88807F7BB0
            F880B0B83088888888887F88F0787BB00F80BBB830888888888887F8807707B0
            07F0BB83088888888888887F88000877000BB3308888888888888887FFF07870
            8888300888888888888888887770777F77770888888888888888888888807FFF
            7088888888888888888888888888000008888888888888888888}
          Visible = False
          OnClick = SpeedButton1Click
        end
        object Panel4: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 0
          object cb1_cod_mes: TDCComboBox
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
          object ed1_ano: TDCEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = ed1_anoExit
            EditMask = '9999'
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Tranferir para Mês / Ano'
          TabOrder = 1
          object cb2_cod_mes: TDCComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            Enabled = False
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
            Enabled = False
            TabOrder = 1
            OnExit = ed2_anoExit
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 790
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
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object ckb_todos: TCheckBox
            Left = 380
            Top = 7
            Width = 150
            Height = 17
            Hint = 'Transfere todas as Empresas exceto a Tesouraria'
            Caption = 'Todas as Empresas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = ckb_todosClick
          end
        end
        object Panel10: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Índice de Reajuste'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object cbx_cod_indice: TDCComboBox
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
        end
        object Panel6: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Percentual de Multa                                         ' +
            '  %'
          TabOrder = 4
          object edt_multa: TDCEdit
            Left = 140
            Top = 4
            Width = 80
            Height = 21
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Percentual de Juros                                         ' +
            '  %'
          TabOrder = 5
          object edt_juros: TDCEdit
            Left = 140
            Top = 4
            Width = 80
            Height = 21
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    BTN Atual                                                   ' +
            '                       BTN Proxima'
          TabOrder = 6
          object edt_btnProxima: TDCDateEdit
            Tag = -1
            Left = 377
            Top = 5
            Width = 80
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            Checked = True
            ButtonExist = False
            Kind = dkDateTime
            ShowWeekDay = True
          end
          object edt_btnAtual: TDCDateEdit
            Tag = -1
            Left = 140
            Top = 5
            Width = 80
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 1
            Checked = True
            ButtonExist = False
            Kind = dkDateTime
            ShowWeekDay = True
          end
        end
        object btn_InicioTran: TPDJButton
          Left = 16
          Top = 252
          Width = 129
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Iniciar Transação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_InicioTranClick
          TabOrder = 7
        end
        object PDJButton1: TPDJButton
          Left = 164
          Top = 252
          Width = 129
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Cancelar Transação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 8
        end
        object PDJButton2: TPDJButton
          Left = 312
          Top = 252
          Width = 129
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Confirmar Transação'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 9
        end
        object btn_efetuartranferencia: TPDJButton
          Left = 16
          Top = 286
          Width = 429
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Efetuar transferência e reajuste de valores'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_efetuartranferenciaClick
          TabOrder = 10
        end
        object pnl_transacao: TPanel
          Left = 16
          Top = 321
          Width = 433
          Height = 73
          Caption = 'TRANSAÇÃO EM ABERTO'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
          object Label1: TLabel
            Left = 0
            Top = 24
            Width = 408
            Height = 26
            Alignment = taCenter
            Caption = 
              'Antes de Finalizar a transação verifique se a transferência foi ' +
              'efetuada sem problemas!'
            WordWrap = True
          end
          object Label2: TLabel
            Left = 144
            Top = 8
            Width = 152
            Height = 13
            Caption = 'TRANSAÇÃO EM ABERTO'
          end
        end
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 408
          Width = 765
          Height = 24
          Min = 0
          Max = 100
          TabOrder = 12
          Visible = False
        end
        object edt_aleatorio: TEdit
          Left = 520
          Top = 256
          Width = 115
          Height = 45
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          TabOrder = 13
          Visible = False
        end
        object edt_ver: TEdit
          Left = 520
          Top = 312
          Width = 115
          Height = 21
          MaxLength = 4
          TabOrder = 14
          Visible = False
        end
        object PDJButton3: TPDJButton
          Left = 467
          Top = 378
          Width = 52
          Height = 23
          RepeatInterval = 50
          RepeatStartInterval = 50
          ButtonKind = skOK
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000808080008080800000000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000808080008080
            8000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080008080
            8000808080008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            80008080800080808000C0C0C000808080008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C00080808000808080000000000080808000C0C0C000808080008080
            8000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00080808000808080000000000080808000FF00
            FF00C0C0C0008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C000808080000000
            0000FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C000C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            800080808000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0C0C0008080800080808000000000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080000000
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
            C000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          GlyphHot.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF0000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF0000000080000000800000FF000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000008000000080
            0000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000008000000080
            0000008000000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            0000008000000080000000FF0000008000000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF00000080000000800000FF0000008080800000FF0000008000000080
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF00000080000000800000FF00000080808000FF00
            FF0000FF00000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000FF00
            0000FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF000000FF0000FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            000000800000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FF00000080000000800000FF0000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF00
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF0000FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          Default = True
          Caption = 'Rodar'
          OnClick = PDJButton3Click
          Visible = False
          TabOrder = 15
        end
        object Mm_mensag: TMemo
          Left = 0
          Top = 232
          Width = 777
          Height = 18
          TabOrder = 16
          Visible = False
        end
        object btn_cont: TPDJButton
          Left = 531
          Top = 377
          Width = 73
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          ButtonKind = skOK
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000808080008080800000000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000808080008080
            8000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080008080
            8000808080008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            80008080800080808000C0C0C000808080008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C00080808000808080000000000080808000C0C0C000808080008080
            8000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00080808000808080000000000080808000FF00
            FF00C0C0C0008080800080808000000000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C000808080000000
            0000FF00FF00FF00FF00FF00FF00C0C0C0008080800080808000000000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C0C0C000C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0008080
            800080808000000000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0C0C0008080800080808000000000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C00080808000808080000000
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
            C000808080000000000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          GlyphHot.Data = {
            46050000424D4605000000000000360000002800000012000000120000000100
            2000000000001005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF0000008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF0000000080000000800000FF000000808080008080
            8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000008000000080
            0000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000008000000080
            0000008000000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            0000008000000080000000FF0000008000000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF00000080000000800000FF0000008080800000FF0000008000000080
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF00000080000000800000FF00000080808000FF00
            FF0000FF00000080000000800000FF0000008080800080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000800000FF00
            0000FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF0000008080
            800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF000000FF0000FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080
            000000800000FF0000008080800080808000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FF00000080000000800000FF0000008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000080000000800000FF00
            000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
            000000800000FF00000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF0000FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00}
          Default = True
          Caption = 'Cont'
          OnClick = btn_contClick
          Visible = False
          TabOrder = 17
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Bloqueios'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object Panel9: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 0
          object cb3_cod_mes: TDCComboBox
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
          object ed3_ano: TDCEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = ed1_anoExit
            EditMask = '9999'
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Empresa para Desconto'
          TabOrder = 1
          object cb2_cod_empresafolha: TDCComboBox
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
        end
        object btn_suspender: TPDJButton
          Left = 24
          Top = 190
          Width = 429
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Suspender Beneficiários com descontos em aberto'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_suspenderClick
          TabOrder = 2
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Transferência Odonto'
        ImageIndex = 3
        OnShow = TabSheet4Show
        object Panel12: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 0
          object cb4_cod_mes: TDCComboBox
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
          object ed4_ano: TDCEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = ed1_anoExit
            EditMask = '9999'
          end
        end
        object GroupBox1: TGroupBox
          Left = 17
          Top = 52
          Width = 460
          Height = 85
          Caption = ' Rodar após as baixas '
          TabOrder = 1
          object btn_tranfereGestorOdonto: TPDJButton
            Left = 25
            Top = 34
            Width = 400
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Enabled = False
            Caption = '&Transferir Descontos Odontologicos em Aberto para o Gestor'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_tranfereGestorOdontoClick
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 17
          Top = 262
          Width = 460
          Height = 85
          Caption = '  Rodar após a carga no portal Odonto  '
          TabOrder = 2
          object btn_TransfDescOdonto: TPDJButton
            Left = 25
            Top = 34
            Width = 400
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Enabled = False
            Caption = '&Transferir Descontos Odontologicos para o Sistema IMASF'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_TransfDescOdontoClick
            TabOrder = 0
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Fechamento Farmácia'
        ImageIndex = 4
        OnShow = TabSheet5Show
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 0
          object cb5_cod_mes: TDCComboBox
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
          object ed5_ano: TDCEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = ed1_anoExit
            EditMask = '9999'
          end
        end
        object GroupBox3: TGroupBox
          Left = 17
          Top = 114
          Width = 460
          Height = 85
          Caption = ' Rodar antes de Gerar os Arquivos de Folha (FAEE)'
          TabOrder = 1
          object btn_farmacia: TPDJButton
            Left = 17
            Top = 34
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Enabled = False
            Caption = 
              'Transferir Descontos de Farmacia da Prefeitura para o Sistema IM' +
              'ASF'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_farmaciaClick
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Periodo de                                                  ' +
            '                        até'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object edt_dtinicial: TDCDateEdit
            Tag = -1
            Left = 140
            Top = 5
            Width = 125
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtfinal: TDCDateEdit
            Tag = -1
            Left = 331
            Top = 5
            Width = 125
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Operações'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 779
          Height = 448
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
    Left = 688
    Top = 337
  end
  object ado_odonto: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Key@stO09;Persist Security Info=Tru' +
      'e;User ID=stOdonto;Initial Catalog=imasf_odontologico;Data Sourc' +
      'e=db-imasf-01;Use Procedure for Prepare=1;Auto Translate=True;Pa' +
      'cket Size=4096;Workstation ID=SPD-ALK-23351;Use Encryption for D' +
      'ata=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 621
    Top = 162
  end
  object Qry_Odonto: TADOQuery
    Connection = ado_odonto
    CursorType = ctStatic
    Parameters = <>
    Left = 656
    Top = 164
  end
  object Qry_OpenOdonto: TADOQuery
    Connection = ado_odonto
    Parameters = <>
    Left = 693
    Top = 164
  end
  object ado_farmacia: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=HSl_stF@08;Persist Security Info=Tr' +
      'ue;User ID=stfarma;Initial Catalog=imasf_farmacia;Data Source=db' +
      '-imasf-01;Use Procedure for Prepare=1;Auto Translate=True;Packet' +
      ' Size=4096;Workstation ID=SPD-ALK-23351;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 621
    Top = 213
  end
  object Qry_Farmacia: TADOQuery
    Connection = ado_farmacia
    CursorType = ctStatic
    Parameters = <>
    Left = 656
    Top = 215
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ado_farmacia
    ProcedureName = 'spc_proc_enviaDescontosFolhaConsignum;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@cod_empresafolha'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dtReferencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@tipoPagto_ven'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 701
    Top = 218
  end
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 557
    Top = 346
  end
end
