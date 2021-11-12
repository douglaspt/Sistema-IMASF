inherited Frm_Mov_2057: TFrm_Mov_2057
  Caption = 'Frm_Mov_2057'
  ClientHeight = 582
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    object PDJButton3: TPDJButton
      Left = 17
      Top = 4
      Width = 208
      Height = 25
      Hint = 'Acesso a Tela de Emissão de Carteirinha'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Emissão de Carteirinha'
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
  inherited Panel3: TPanel
    Height = 489
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 34
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 0
      object Label9: TLabel
        Left = 623
        Top = 3
        Width = 95
        Height = 30
        Caption = 'UNIMED'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -21
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_carteirinha: TDCEdit
        Left = 100
        Top = 5
        Width = 45
        Height = 21
        TabOrder = 1
        OnKeyDown = edt_nossonumero_flhKeyDown
      end
      object edt_inscricao: TDCEdit
        Left = 90
        Top = 5
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edt_inscricaoKeyDown
      end
      object btn_limpar: TPDJButton
        Left = 220
        Top = 8
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
        OnClick = btn_limparClick
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 35
      Width = 798
      Height = 478
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 1
      object Label1: TLabel
        Left = 541
        Top = 322
        Width = 125
        Height = 13
        Caption = 'Total de Beneficiários'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_total: TLabel
        Left = 680
        Top = 322
        Width = 8
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_motivo: TLabel
        Left = 540
        Top = 380
        Width = 32
        Height = 13
        Caption = 'Motivo'
        Visible = False
      end
      object dbg_conveniado: TDBGrid
        Left = 17
        Top = 9
        Width = 749
        Height = 302
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
            FieldName = 'inscricao_ben'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulacartei_ben'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_ben'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_pla'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_sit'
            Visible = True
          end>
      end
      object ckb_confirmarTodos: TCheckBox
        Left = 56
        Top = 322
        Width = 185
        Height = 17
        Caption = 'Confirmar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edt_cod_beneficiario: TDBEdit
        Left = 358
        Top = 316
        Width = 80
        Height = 21
        DataField = 'cod_beneficiario'
        DataSource = DataSource1
        TabOrder = 2
        Visible = False
        OnChange = edt_cod_beneficiarioChange
      end
      object pnl_alerta: TPanel
        Left = 64
        Top = 348
        Width = 665
        Height = 25
        BevelOuter = bvLowered
        Caption = 'BENEFICIÁRIO SUSPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object btn_alterar: TPDJButton
        Left = 17
        Top = 384
        Width = 200
        Height = 25
        Hint = 'Alterar Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&Confirmar Recebimento'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_alterarClick
        TabStop = True
        TabOrder = 4
      end
      object PDJButton1: TPDJButton
        Left = 313
        Top = 384
        Width = 200
        Height = 25
        Hint = 'Alterar Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = 'C&onfirmar Entrega'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton1Click
        TabStop = True
        TabOrder = 5
      end
      object PDJButton4: TPDJButton
        Left = 17
        Top = 425
        Width = 200
        Height = 25
        Hint = 'Alterar Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&Recolhimento de CI'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton4Click
        TabStop = True
        TabOrder = 6
      end
      object PDJButton5: TPDJButton
        Left = 313
        Top = 425
        Width = 200
        Height = 25
        Hint = 'Alterar Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = '&Expirado Prazo'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton5Click
        TabStop = True
        TabOrder = 7
      end
      object cbx_cod_emissaocarteira: TDCComboBox
        Tag = -1
        Left = 540
        Top = 398
        Width = 225
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Visible = False
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object btn_salvarProc: TPDJButton
        Tag = 5
        Left = 540
        Top = 426
        Width = 95
        Height = 22
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
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
        OnClick = btn_salvarProcClick
        Visible = False
        TabStop = True
        TabOrder = 9
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 563
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
    DataSet = fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02
    Left = 25
    Top = 373
  end
end
