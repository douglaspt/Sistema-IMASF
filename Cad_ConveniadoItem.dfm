inherited Frm_Cad_ConveniadoItem: TFrm_Cad_ConveniadoItem
  Caption = 'Frm_Cad_ConveniadoItem'
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 798
    inherited Image1: TImage
      Width = 796
    end
  end
  inherited Panel2: TPanel
    Width = 798
    inherited Image3: TImage
      Width = 796
    end
    inherited btn_novo: TPDJButton
      Left = 7
      Visible = False
    end
    inherited btn_alterar: TPDJButton
      Visible = False
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código do Conveniado'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 140
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Reduzido                                               ' +
        '                                  Nome Fantasia'
      TabOrder = 1
      object edt_nome_con: TDCEdit
        Tag = -1
        Left = 408
        Top = 5
        Width = 381
        Height = 21
        MaxLength = 60
        TabOrder = 1
        Text = 'edt_nome_con'
      end
      object edt_nomereduzido_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 20
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    C.N.P.J.                                                    ' +
        '                                                                ' +
        '  Processo'
      TabOrder = 3
      object edt_cnpj_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 60
        TabOrder = 0
      end
      object edt_processo_con: TDCEdit
        Tag = -1
        Left = 464
        Top = 5
        Width = 105
        Height = 21
        MaxLength = 60
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Razão Social'
      TabOrder = 2
      object edt_razao_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 429
        Height = 21
        MaxLength = 60
        TabOrder = 0
        Text = 'edt_razao_con'
      end
    end
    object PageControl: TPageControl
      Tag = -1
      Left = 2
      Top = 130
      Width = 795
      Height = 353
      ActivePage = TbS_Principal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      object TbS_Principal: TTabSheet
        Caption = 'TbS_Principal'
        ImageIndex = 5
        TabVisible = False
        object GroupBox2: TGroupBox
          Left = 5
          Top = 0
          Width = 777
          Height = 57
          Caption = 'CONSULTAR '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object PDJButton5: TPDJButton
            Left = 11
            Top = 20
            Width = 754
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Itens de Serviços / Procedimentos Contratados'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton5Click
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 67
          Width = 776
          Height = 99
          Caption = 'INCLUIR / ALTERAR '
          TabOrder = 1
          object PDJButton6: TPDJButton
            Left = 11
            Top = 20
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Inclusão de Itens de Serviço por Faixa de Códigos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton6Click
            TabOrder = 0
          end
          object PDJButton7: TPDJButton
            Left = 11
            Top = 60
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Inclusão de Itens de Serviço a Partir de Uma Lista'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton7Click
            TabOrder = 1
          end
          object PDJButton8: TPDJButton
            Left = 395
            Top = 20
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = ' Alteração de Itens de Serviço por Faixa de Códigos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton8Click
            TabOrder = 2
          end
          object PDJButton9: TPDJButton
            Left = 395
            Top = 60
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = ' Alteração de Itens de Serviço a Partir de Uma Lista'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton9Click
            TabOrder = 3
          end
        end
        object GroupBox4: TGroupBox
          Left = 5
          Top = 278
          Width = 776
          Height = 59
          Caption = 'CONSULTA / INCLUIR / ALTERAR  ( HONORÁRIO ESPECIAL )'
          TabOrder = 2
          object PDJButton10: TPDJButton
            Left = 11
            Top = 24
            Width = 754
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Incluir / Alterar Itens de Honorário Especial'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton10Click
            Visible = False
            TabOrder = 0
          end
        end
        object GroupBox8: TGroupBox
          Left = 5
          Top = 172
          Width = 777
          Height = 99
          Caption = 'INCLUIR / ALTERAR TUSS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object PDJButton20: TPDJButton
            Left = 395
            Top = 20
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = ' Alteração de Itens de Serviço por Faixa de Códigos (TUSS)'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton20Click
            TabOrder = 0
          end
          object PDJButton16: TPDJButton
            Left = 11
            Top = 20
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Inclusão de Itens de Serviço por Faixa de Códigos (TUSS)'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton16Click
            TabOrder = 1
          end
          object PDJButton23: TPDJButton
            Left = 11
            Top = 60
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Inclusão de Itens de Serviço a Partir de Uma Lista (TUSS)'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton23Click
            TabOrder = 2
          end
          object PDJButton24: TPDJButton
            Left = 395
            Top = 60
            Width = 370
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = ' Alteração de Itens de Serviço a Partir de Uma Lista (TUSS)'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton24Click
            TabOrder = 3
          end
        end
      end
      object TBS_IncluiManual: TTabSheet
        Caption = 'Incluir Novos Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        TabVisible = False
        OnShow = TBS_IncluiManualShow
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Data de Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_dtvalidade_hit: TDCDateEdit
            Tag = -5
            Left = 120
            Top = 5
            Width = 169
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel9: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Caption = 'Inclusão Manual de Itens de Serviço por Faixa de Códigos'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '                                        Grande Grupo          Gr' +
            'upo                     SubGrupo              Item Inicial      ' +
            '        Item Final'
          TabOrder = 2
        end
        object Panel14: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 1'
          TabOrder = 3
          object edt_ggr1: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 0
            EditMask = '9'
          end
          object edt_gru1: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_sgr1: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_iti1: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_itf1: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 2'
          TabOrder = 4
          object edt_ggr2: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_gru2: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_sgr2: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_iti2: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_itf2: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel12: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 3'
          TabOrder = 5
          object edt_ggr3: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_gru3: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_sgr3: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_iti3: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_itf3: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 4'
          TabOrder = 6
          object edt_ggr4: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_gru4: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_sgr4: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_iti4: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_itf4: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel10: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 5'
          TabOrder = 7
          object edt_ggr5: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_gru5: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_sgr5: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_iti5: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_itf5: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object PDJButton1: TPDJButton
          Left = 1
          Top = 276
          Width = 784
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Incluir Intens de Serviço conforme a(s) Faixa(s) preenchida(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 8
        end
        object PDJButton13: TPDJButton
          Left = 0
          Top = 311
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 9
        end
      end
      object TbS_Itens: TTabSheet
        Caption = 'Itens de Serviço Contratados'
        ImageIndex = 1
        TabVisible = False
        OnShow = TbS_ItensShow
        object Label5: TLabel
          Left = 220
          Top = 0
          Width = 312
          Height = 16
          Caption = 'Itens de Serviços/Procedimentos Contradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object pnl_especial: TPanel
          Left = 0
          Top = 326
          Width = 787
          Height = 17
          Align = alBottom
          BevelOuter = bvLowered
          Caption = 'Possui Honorário Especial'
          Color = 65408
          TabOrder = 1
          Visible = False
        end
        object PageControl2: TPageControl
          Left = 8
          Top = 16
          Width = 765
          Height = 281
          ActivePage = TabSheet1
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'Visualizar em Grade'
            OnShow = TabSheet7Show
            object btn_cancelarAtivarItem: TPDJButton
              Left = 294
              Top = 107
              Width = 109
              Height = 25
              Hint = 'Cancelar'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Cancelar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_cancelarAtivarItemClick
              TabOrder = 5
            end
            object btn_SalvarAtivarItem: TPDJButton
              Left = 165
              Top = 107
              Width = 109
              Height = 25
              Hint = 'Salvar'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Salvar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_SalvarAtivarItemClick
              TabOrder = 4
            end
            object Panel51: TPanel
              Tag = -1
              Left = 29
              Top = 60
              Width = 605
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Situação '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              object cbx_cod_statusAtivo: TDCComboBox
                Left = 135
                Top = 5
                Width = 125
                Height = 21
                Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Text = #12
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
            end
            object Panel41: TPanel
              Tag = -1
              Left = 29
              Top = 28
              Width = 605
              Height = 32
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 
                '    Itens de Serviço     de                                     ' +
                '                 até'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 6
              object edt_cod_itemAtivoIni: TDCEdit
                Left = 135
                Top = 5
                Width = 125
                Height = 21
                TabOrder = 0
                EditMask = '99999999'
              end
              object edt_cod_itemAtivoFin: TDCEdit
                Left = 317
                Top = 5
                Width = 125
                Height = 21
                TabOrder = 1
                EditMask = '99999999'
              end
            end
            object dbg_conveniadoItens: TDBGrid
              Left = 8
              Top = 2
              Width = 749
              Height = 204
              DataSource = dts_Lista
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = dbg_conveniadoItensDrawColumnCell
              OnDblClick = dbg_conveniadoItensDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_itemservico'
                  Title.Caption = 'Código'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_its'
                  Title.Caption = 'Descrição'
                  Width = 635
                  Visible = True
                end>
            end
            object btn_excluiItem: TPDJButton
              Left = 688
              Top = 154
              Width = 65
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
              Caption = '&Excluir'
              OnClick = btn_excluiItemClick
              Visible = False
              TabOrder = 1
            end
            object GroupBox9: TGroupBox
              Left = 4
              Top = 209
              Width = 434
              Height = 41
              Caption = 'Localizar'
              TabOrder = 2
              object SpeedButton6: TSpeedButton
                Left = 389
                Top = 13
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
                OnClick = SpeedButton6Click
              end
              object rdb_codigo: TRadioButton
                Left = 221
                Top = 19
                Width = 62
                Height = 17
                Caption = 'Código'
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = rdb_codigoClick
              end
              object rdb_nome: TRadioButton
                Left = 308
                Top = 19
                Width = 53
                Height = 17
                Caption = 'Nome'
                TabOrder = 1
                OnClick = rdb_nomeClick
              end
            end
            object GroupBox10: TGroupBox
              Left = 448
              Top = 209
              Width = 307
              Height = 43
              Caption = 'Ativar / Desativar Itens'
              TabOrder = 3
              object btn_desativar: TPDJButton
                Left = 7
                Top = 15
                Width = 132
                Height = 25
                Hint = 'Ativar e Desativar item Selecionado'
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
                Caption = '&Ativar / Desativar'
                OnClick = btn_desativarClick
                TabOrder = 0
              end
              object rdb_itemAtivo: TRadioButton
                Left = 169
                Top = 18
                Width = 56
                Height = 17
                Caption = 'Ativos'
                Checked = True
                TabOrder = 1
                TabStop = True
                OnClick = rdb_itemAtivoClick
              end
              object rdb_itemTodos: TRadioButton
                Left = 243
                Top = 18
                Width = 56
                Height = 17
                Caption = 'Todos'
                TabOrder = 2
                OnClick = rdb_itemTodosClick
              end
            end
            object edt_localizar: TBEdit
              Left = 10
              Top = 224
              Width = 195
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 8
              OnEnter = edt_localizarEnter
              NumbersOnly = False
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Detalhes do Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            OnShow = TabSheet8Show
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 56
              Height = 13
              Caption = 'Código Item'
            end
            object Label2: TLabel
              Left = 108
              Top = 4
              Width = 254
              Height = 13
              Caption = 'Descrição do Item de Serviço / Procedimento Médico'
            end
            object Label3: TLabel
              Left = 4
              Top = 52
              Width = 126
              Height = 13
              Caption = 'Honorários / Histórico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edt_cod_itemservico: TDBEdit
              Left = 4
              Top = 20
              Width = 97
              Height = 21
              DataField = 'cod_itemservico'
              DataSource = dts_Lista
              TabOrder = 0
              OnChange = edt_cod_itemservicoChange
            end
            object DBEdit2: TDBEdit
              Left = 108
              Top = 20
              Width = 373
              Height = 21
              DataField = 'nome_its'
              DataSource = dts_Lista
              TabOrder = 1
            end
            object DBNavigator1: TDBNavigator
              Left = 92
              Top = 226
              Width = 572
              Height = 25
              DataSource = dts_Lista
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 2
            end
            object DBGrid2: TDBGrid
              Left = 4
              Top = 68
              Width = 745
              Height = 153
              DataSource = DataSource2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'dtvalidade_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlhonorario_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PorteAnestesico_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NumAuxiliares_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlFilme_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlOperacao_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fatormult_hit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlTotal_hit'
                  Width = 92
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'retorno_hit'
                  Visible = True
                end>
            end
            object PDJButton25: TPDJButton
              Left = 487
              Top = 18
              Width = 266
              Height = 25
              RepeatInterval = 50
              RepeatStartInterval = 50
              Caption = 'Cadastrar Honorário Especial para os Planos'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = PDJButton25Click
              TabOrder = 4
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Honorário Especial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 2
            ParentFont = False
            OnShow = TabSheet9Show
            object Label4: TLabel
              Left = 4
              Top = 4
              Width = 56
              Height = 13
              Caption = 'Código Item'
            end
            object Label6: TLabel
              Left = 108
              Top = 4
              Width = 254
              Height = 13
              Caption = 'Descrição do Item de Serviço / Procedimento Médico'
            end
            object Label7: TLabel
              Left = 4
              Top = 52
              Width = 126
              Height = 13
              Caption = 'Honorários / Histórico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 4
              Top = 20
              Width = 97
              Height = 21
              DataField = 'cod_itemservico'
              DataSource = dts_Lista
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 108
              Top = 20
              Width = 373
              Height = 21
              DataField = 'nome_its'
              DataSource = dts_Lista
              TabOrder = 1
            end
            object DBNavigator2: TDBNavigator
              Left = 92
              Top = 226
              Width = 572
              Height = 25
              DataSource = dts_Lista
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 2
            end
            object dbg_honorarioEspecial: TDBGrid
              Left = 8
              Top = 68
              Width = 745
              Height = 153
              DataSource = DataSource3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = dbg_honorarioEspecialDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'nome_pla'
                  Width = 143
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlHonorario_ihe'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PorteAnestesico_ihe'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NumAuxiliares_ihe'
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlFilme_ihe'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FatorMult_ihe'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtvalidade_ihe'
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlTotal_hit'
                  Width = 75
                  Visible = True
                end>
            end
            object PDJButton26: TPDJButton
              Left = 620
              Top = 39
              Width = 132
              Height = 25
              Hint = 'Ativar e Desativar item Selecionado'
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
              Caption = '&Ativar / Desativar'
              OnClick = PDJButton26Click
              TabOrder = 4
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Honorário por CRM'
            ImageIndex = 4
            OnShow = TabSheet2Show
            object DBGrid4: TDBGrid
              Left = 8
              Top = 8
              Width = 745
              Height = 209
              DataSource = DataSource1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                  FieldName = 'dtvalidade_ihc'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlHonorario_ihc'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_itemservico'
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_its'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_crm'
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'medico_crm'
                  Width = 273
                  Visible = True
                end>
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'Relatórios'
            ImageIndex = 3
            OnShow = TabSheet1Show
            object GroupBox6: TGroupBox
              Left = 13
              Top = 4
              Width = 736
              Height = 105
              Caption = 'Item Honorário'
              TabOrder = 0
              object Panel28: TPanel
                Tag = -1
                Left = 8
                Top = 19
                Width = 657
                Height = 32
                Alignment = taLeftJustify
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Caption = 
                  '    Itens de Serviço     de                                     ' +
                  '              até'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                object edt_itemservicoIni: TDCEdit
                  Left = 135
                  Top = 5
                  Width = 115
                  Height = 21
                  TabOrder = 0
                  EditMask = '99999999'
                end
                object edt_itemservicoFin: TDCEdit
                  Left = 309
                  Top = 5
                  Width = 115
                  Height = 21
                  TabOrder = 1
                  EditMask = '99999999'
                end
              end
              object PDJButton4: TPDJButton
                Left = 96
                Top = 72
                Width = 361
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
                TabOrder = 1
              end
              object btn_itemhonorario: TPDJButton
                Left = 461
                Top = 74
                Width = 20
                Height = 21
                Hint = 'Exportar Item Honorário p/Excel'
                RepeatInterval = 50
                RepeatStartInterval = 50
                NumGlyphs = 1
                NumGlyphsHot = 1
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  04000000000080000000C40E0000C40E00001000000010000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
                  2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
                  722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
                  FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
                  7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
                GlyphHot.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  180000000000000300000000000000000000000000000000000039724B39724B
                  39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
                  301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
                  966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
                  EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
                  D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
                  EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
                  EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
                  2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
                  512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
                  F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
                  8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
                  BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
                  F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
                  E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
                  AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
                  FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
                  03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
                  F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
                  FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
                  EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
                  FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
                  AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
                  8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
                  966A548E664C87614C876146805C407A56407A5639724B39724B}
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_itemhonorarioClick
                ShowHint = True
                TabOrder = 2
              end
            end
            object GroupBox7: TGroupBox
              Left = 13
              Top = 124
              Width = 736
              Height = 105
              Caption = 'Item Honorário Especial'
              TabOrder = 1
              object PDJButton11: TPDJButton
                Left = 96
                Top = 72
                Width = 361
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
                OnClick = PDJButton11Click
                TabOrder = 0
              end
              object Panel29: TPanel
                Tag = -1
                Left = 8
                Top = 19
                Width = 657
                Height = 32
                Alignment = taLeftJustify
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Caption = 
                  '    Itens de Serviço     de                                     ' +
                  '              até'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                object edt_itemservicoIni2: TDCEdit
                  Left = 135
                  Top = 5
                  Width = 115
                  Height = 21
                  TabOrder = 0
                  EditMask = '99999999'
                end
                object edt_itemservicoFin2: TDCEdit
                  Left = 309
                  Top = 5
                  Width = 115
                  Height = 21
                  TabOrder = 1
                  EditMask = '99999999'
                end
              end
              object btn_exportaIHE: TPDJButton
                Left = 461
                Top = 74
                Width = 20
                Height = 21
                Hint = 'Exportar Item Honorário p/Excel'
                RepeatInterval = 50
                RepeatStartInterval = 50
                NumGlyphs = 1
                NumGlyphsHot = 1
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  04000000000080000000C40E0000C40E00001000000010000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
                  2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
                  722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
                  FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
                  7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
                GlyphHot.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  180000000000000300000000000000000000000000000000000039724B39724B
                  39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
                  301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
                  966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
                  EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
                  D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
                  EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
                  EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
                  2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
                  512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
                  F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
                  8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
                  BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
                  F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
                  E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
                  AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
                  FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
                  03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
                  F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
                  FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
                  EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
                  FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
                  AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
                  8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
                  966A548E664C87614C876146805C407A56407A5639724B39724B}
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_exportaIHEClick
                ShowHint = True
                TabOrder = 2
              end
            end
            object pgb_registros: TProgressBar
              Left = 13
              Top = 234
              Width = 736
              Height = 19
              Min = 0
              Max = 100
              TabOrder = 2
              Visible = False
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Obs.'
            ImageIndex = 5
            OnShow = TabSheet3Show
            object Label9: TLabel
              Left = 6
              Top = 207
              Width = 230
              Height = 13
              Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object mem_obs_hit: TMemo
              Left = 0
              Top = 0
              Width = 757
              Height = 201
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2000
              ParentFont = False
              TabOrder = 0
            end
            object PDJButton3: TPDJButton
              Left = 257
              Top = 218
              Width = 321
              Height = 25
              RepeatInterval = 50
              RepeatStartInterval = 50
              Caption = 'Salvar Observação'
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
        object PDJButton12: TPDJButton
          Left = 0
          Top = 299
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 2
        end
      end
      object TBS_AlteraManual: TTabSheet
        Caption = 'Alterar Itens Contratados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        TabVisible = False
        OnShow = TBS_AlteraManualShow
        object Panel22: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Data de Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_dtvalidade2: TDCDateEdit
            Tag = -5
            Left = 134
            Top = 5
            Width = 173
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel25: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Caption = 'Alteração Manual de Itens de Serviço por Faixa de Códigos'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel15: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '                                        Grande Grupo          Gr' +
            'upo                     SubGrupo              Item Inicial      ' +
            '        Item Final'
          TabOrder = 2
        end
        object Panel21: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 1'
          TabOrder = 3
          object edt_aggr1: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 0
            EditMask = '9'
          end
          object edt_agru1: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_asgr1: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_aiti1: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_aitf1: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel20: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 2'
          TabOrder = 4
          object edt_aggr2: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_agru2: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_asgr2: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_aiti2: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_aitf2: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel19: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 3'
          TabOrder = 5
          object edt_aggr3: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_agru3: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_asgr3: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_aiti3: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_aitf3: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel18: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 4'
          TabOrder = 6
          object edt_aggr4: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_agru4: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_asgr4: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_aiti4: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_aitf4: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object Panel17: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 5'
          TabOrder = 7
          object edt_aggr5: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 0
            EditMask = '9'
          end
          object edt_agru5: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '99'
          end
          object edt_asgr5: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_aiti5: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '999'
          end
          object edt_aitf5: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '999'
          end
        end
        object PDJButton2: TPDJButton
          Left = 0
          Top = 276
          Width = 785
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Alterar Itens de Serviço conforme a(s) Faixa(s) preenchida(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 8
        end
        object PDJButton14: TPDJButton
          Left = 0
          Top = 311
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 9
        end
      end
      object TBS_AlteraLista: TTabSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        TabVisible = False
        OnShow = TBS_AlteraListaShow
        object GroupBox1: TGroupBox
          Tag = -5
          Left = 8
          Top = 65
          Width = 769
          Height = 78
          Caption = 'Seleção do Grande Grupo '
          TabOrder = 0
          object cbx_cod_grandegrupo: TDCComboBox
            Tag = -5
            Left = 160
            Top = 13
            Width = 569
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
            OnCloseUp = cbx_cod_grandegrupoCloseUp
          end
          object RdB_alteragdegrupo: TRadioButton
            Left = 12
            Top = 38
            Width = 513
            Height = 17
            Caption = 'Selecionar Todos os Itens de Serviço deste Grande Grupo'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RdB_alteragdegrupoClick
          end
          object Rdb_G: TRadioButton
            Left = 12
            Top = 57
            Width = 385
            Height = 17
            Caption = 'Selecionar um Grupo de Grande Grupo'
            TabOrder = 2
            OnClick = Rdb_GClick
          end
        end
        object GrB_Grupo: TGroupBox
          Tag = -5
          Left = 8
          Top = 149
          Width = 769
          Height = 78
          Caption = 'Seleção do Grupo de Serviço'
          TabOrder = 1
          Visible = False
          object cbx_cod_grupo: TDCComboBox
            Tag = -5
            Left = 152
            Top = 13
            Width = 569
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
            OnCloseUp = cbx_cod_grupoCloseUp
          end
          object RdB_ItemGTodos: TRadioButton
            Left = 12
            Top = 38
            Width = 513
            Height = 17
            Caption = 'Selecionar Todos os Itens de Serviço deste Grupo'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RdB_ItemGTodosClick
          end
          object Rdb_SG: TRadioButton
            Left = 12
            Top = 57
            Width = 385
            Height = 17
            Caption = 'Selecionar um Sub Grupo de Grupo'
            TabOrder = 2
            OnClick = Rdb_SGClick
          end
        end
        object GrB_SubGrupo: TGroupBox
          Tag = -5
          Left = 8
          Top = 233
          Width = 769
          Height = 78
          Caption = 'Seleção do Sub Grupo '
          TabOrder = 2
          Visible = False
          object cbx_cod_subgrupo: TDCComboBox
            Tag = -5
            Left = 152
            Top = 13
            Width = 569
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object RdB_ItemSGTodos: TRadioButton
            Left = 12
            Top = 38
            Width = 513
            Height = 17
            Caption = 'Selecionar Todos os Itens de Serviço deste Sub Grupo'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RdB_ItemSG: TRadioButton
            Left = 12
            Top = 57
            Width = 385
            Height = 17
            Caption = 'Selecionar um Item do Sub Grupo'
            TabOrder = 2
          end
        end
        object btn_lista: TPDJButton
          Left = 1
          Top = 316
          Width = 392
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_listaClick
          TabOrder = 3
        end
        object Panel26: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Data de Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object edt_dtvalidade3: TDCDateEdit
            Tag = -5
            Left = 134
            Top = 5
            Width = 173
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Pnl_TitLista: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Align = alTop
          Caption = 'Alteração de Itens de Serviço a Partir de Uma Lista'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object PDJButton15: TPDJButton
          Left = 393
          Top = 316
          Width = 392
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton15Click
          TabOrder = 6
        end
      end
      object TBS_Valores: TTabSheet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        TabVisible = False
        object Panel16: TPanel
          Tag = -5
          Left = 0
          Top = 2
          Width = 777
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Valor do Serviço'
          TabOrder = 0
          object edt_vlhonorario_hit: TDCEdit
            Tag = -5
            Left = 132
            Top = 5
            Width = 113
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
        object Panel23: TPanel
          Tag = -5
          Left = 0
          Top = 34
          Width = 777
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Fator Multiplicador'
          TabOrder = 1
          object edt_fatormult_hit: TDCEdit
            Tag = -5
            Left = 132
            Top = 5
            Width = 113
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
          object ckb_alteraFator1: TCheckBox
            Left = 280
            Top = 8
            Width = 185
            Height = 17
            Caption = 'Alterar Fator Multiplicador'
            TabOrder = 1
            Visible = False
          end
        end
        object Panel24: TPanel
          Tag = -5
          Left = 0
          Top = 66
          Width = 777
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anetésico                                             ' +
            '                   N. de Auxiliares                             ' +
            '                   Valor do m2 do Filme'
          TabOrder = 2
          object edt_PorteAnestesico_hit: TDCEdit
            Tag = -5
            Left = 132
            Top = 5
            Width = 113
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
          object edt_NumAuxiliares_hit: TDCEdit
            Tag = -5
            Left = 372
            Top = 5
            Width = 105
            Height = 21
            MaxLength = 60
            TabOrder = 1
          end
          object edt_vlFilme_hit: TDCEdit
            Tag = -5
            Left = 600
            Top = 5
            Width = 105
            Height = 21
            MaxLength = 60
            TabOrder = 2
          end
        end
        object btn_alteraItemServico: TPDJButton
          Left = 1
          Top = 268
          Width = 784
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Alterar Itens de Serviço conforme a(s) Faixa(s) preenchida(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_alteraItemServicoClick
          TabOrder = 3
        end
        object btn_voltar: TPDJButton
          Left = 0
          Top = 311
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 4
        end
        object Panel27: TPanel
          Tag = -5
          Left = 0
          Top = 98
          Width = 777
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Retorno'
          TabOrder = 5
          object edt_retorno_hit: TDCEdit
            Tag = -5
            Left = 132
            Top = 5
            Width = 113
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
      end
      object TbS_ItemSG: TTabSheet
        Caption = 'TbS_ItemSG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        TabVisible = False
        object pnl_Itemlista: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Align = alTop
          Caption = 'Alteração de Itens de Serviço a Partir de Uma Lista'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel30: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Sub Grupo'
          TabOrder = 1
          object edt_cod_subgrupo: TDCEdit
            Tag = -5
            Left = 136
            Top = 5
            Width = 429
            Height = 21
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            Text = 'edt_razao_con'
          end
        end
        object Panel31: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Grupo'
          TabOrder = 2
          object edt_cod_grupo: TDCEdit
            Tag = -5
            Left = 136
            Top = 5
            Width = 429
            Height = 21
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            Text = 'edt_razao_con'
          end
        end
        object Panel32: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Grande Grupo'
          TabOrder = 3
          object edt_cod_grandegrupo: TDCEdit
            Tag = -5
            Left = 136
            Top = 5
            Width = 429
            Height = 21
            Enabled = False
            MaxLength = 60
            TabOrder = 0
            Text = 'edt_razao_con'
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 128
          Width = 788
          Height = 185
          Caption = 'Relação de Itens de Serviço '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object DBG_Itens: TDBGrid
            Left = 4
            Top = 14
            Width = 777
            Height = 147
            DataSource = dts_Lista
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
                FieldName = 'cod_itemservico'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_its'
                Width = 635
                Visible = True
              end>
          end
          object ChB_SelecionaTodos: TCheckBox
            Left = 320
            Top = 164
            Width = 233
            Height = 17
            Caption = 'Selecionar Todos os Itens'
            TabOrder = 1
            OnClick = ChB_SelecionaTodosClick
          end
        end
        object btn_AlteraItemLista: TPDJButton
          Left = 1
          Top = 316
          Width = 392
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Alterar Itens de Serviço conforme Lista(s) Selecionada(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_AlteraItemListaClick
          TabOrder = 5
        end
        object PDJButton18: TPDJButton
          Left = 393
          Top = 316
          Width = 392
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 6
        end
      end
      object TBS_IncluiManualTUSS: TTabSheet
        Caption = 'TBS_IncluiManualTUSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        TabVisible = False
        OnShow = TBS_IncluiManualTUSSShow
        object Panel33: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Data de Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_dtvalidadetuss: TDCDateEdit
            Tag = -5
            Left = 120
            Top = 5
            Width = 169
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel34: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '                                        Grande Grupo          Gr' +
            'upo                     SubGrupo              Item Inicial      ' +
            '        Item Final'
          TabOrder = 1
        end
        object Panel35: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 1'
          TabOrder = 2
          object edt_tussggr1: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 1
            ParentFont = False
            TabOrder = 0
            EditMask = '9'
          end
          object edt_tussgru1: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '9'
          end
          object edt_tusssgr1: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_tussiti1: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '9999'
          end
          object edt_tussitf1: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '9999'
          end
        end
        object PDJButton17: TPDJButton
          Left = 1
          Top = 156
          Width = 784
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Incluir Intens de Serviço conforme a(s) Faixa(s) preenchida(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton17Click
          TabOrder = 3
        end
        object PDJButton19: TPDJButton
          Left = 0
          Top = 212
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 4
        end
        object Panel36: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Caption = 'Inclusão Manual de Itens de Serviço por Faixa de Códigos (TUSS)'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object TBS_AlteraManualTUSS: TTabSheet
        Caption = 'TBS_AlteraManualTUSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 8
        ParentFont = False
        TabVisible = False
        object Panel37: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Caption = 'Alteração de Itens de Serviço por Faixa de Códigos (TUSS)'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel38: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Data de Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object edt_dtvalidadealteratuss: TDCDateEdit
            Tag = -5
            Left = 120
            Top = 5
            Width = 169
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel39: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '                                        Grande Grupo          Gr' +
            'upo                     SubGrupo              Item Inicial      ' +
            '        Item Final'
          TabOrder = 2
        end
        object Panel40: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Faixa 1'
          TabOrder = 3
          object edt_tussggr2: TDCEdit
            Left = 120
            Top = 5
            Width = 77
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 1
            ParentFont = False
            TabOrder = 0
            EditMask = '9'
          end
          object edt_tussgru2: TDCEdit
            Left = 212
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 1
            EditMask = '9'
          end
          object edt_tusssgr2: TDCEdit
            Left = 304
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 2
            TabOrder = 2
            EditMask = '99'
          end
          object edt_tussiti2: TDCEdit
            Left = 396
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 3
            EditMask = '9999'
          end
          object edt_tussitf2: TDCEdit
            Left = 488
            Top = 5
            Width = 77
            Height = 21
            MaxLength = 3
            TabOrder = 4
            EditMask = '9999'
          end
        end
        object PDJButton21: TPDJButton
          Left = 0
          Top = 156
          Width = 785
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Alterar Itens de Serviço conforme a(s) Faixa(s) preenchida(s)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton21Click
          TabOrder = 4
        end
        object PDJButton22: TPDJButton
          Left = 0
          Top = 212
          Width = 786
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 4
          NumGlyphsHot = 4
          Glyph.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00331111133333
            333333FFFFF33333333333222223332222233333333333444443333199933333
            333333388883333333333332AAA333AAA2333333333333CCC433333199933333
            1133333888833333FF333332AAA333AAA2333334433333CCC433339919933333
            99133388F883333388F333AA2AA333AA2A2333CC433333CC4C43339133933333
            3913338F33833333388F33A233A333A33A2333C4333333C33CC4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4391333333333
            339138F333333333338F3A233333333333A23C433333333333C4339133333333
            3991338F33333333388F33A2333333333AA233C4333333333CC4339913333333
            99133388F333333388F333AA23333333AA2333CC43333333CC43333991333339
            913333388F3333388F33333AA233333AA233333CC433333CC433333399111119
            1333333388FFFFF8F3333333AA22222A23333333CC44444C4333333333999993
            33333333338888833333333333AAAAA33333333333CCCCC33333333333333333
            3333333333333333333333333333333333333333333333333333}
          GlyphHot.Data = {
            76020000424D7602000000000000760000002800000040000000100000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333344
            444333FFFFF333333333332222233322222333333333333333333333333333CC
            C43333377773333333333332AAA333AAA23333333333333333333334433333CC
            C433333777733333FF333332AAA333AAA233333333333333333333CC433333CC
            4C433377F773333377F333AA2AA333AA2A23333333333333333333C4333333C3
            3CC4337F33733333377F33A233A333A33A2333333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A233333333333333333C4333333333
            33C437F333333333337F3A233333333333A2333333333333333333C433333333
            3CC4337F33333333377F33A2333333333AA2333333333333333333CC43333333
            CC433377F333333377F333AA23333333AA233333333333333333333CC433333C
            C43333377F3333377F33333AA233333AA23333333333333333333333CC44444C
            4333333377FFFFF7F3333333AA22222A23333333333333333333333333CCCCC3
            33333333337777733333333333AAAAA333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Caption = ' Voltar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 5
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
  object dts_Lista: TDataSource
    DataSet = Fdt_principal.spc_cons_med_conveniadoItens
    Left = 36
    Top = 449
  end
  object DataSource2: TDataSource
    DataSet = Fdt_principal.spc_cons_med_conveniadoItemdetalhe
    Left = 68
    Top = 445
  end
  object DataSource3: TDataSource
    DataSet = Fdt_principal.spc_cons_med_conveniadoItemEspecial
    Left = 104
    Top = 445
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal6.spc_cons_med_conveniadoItemCrm
    Left = 152
    Top = 445
  end
  object SaveDialog: TSaveDialog
    Left = 512
    Top = 292
  end
end
