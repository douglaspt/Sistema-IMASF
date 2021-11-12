inherited Frm_Mov_2045: TFrm_Mov_2045
  Caption = 'Frm_Mov_2045'
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
      Hint = 'Acesso a Tela de Emiss�o de Carteirinha'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Emiss�o de Carteirinha'
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
    object lbl_motivo: TLabel
      Left = 550
      Top = 402
      Width = 32
      Height = 13
      Caption = 'Motivo'
      Visible = False
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscri��o'
      TabOrder = 0
      object edt_carteirinha: TDCEdit
        Left = 591
        Top = 5
        Width = 65
        Height = 21
        TabOrder = 1
        OnKeyDown = edt_nossonumero_flhKeyDown
      end
      object edt_nome_ben: TDCEdit
        Left = 206
        Top = 5
        Width = 459
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 60
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edt_inscricao: TDCEdit
        Left = 90
        Top = 5
        Width = 110
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
    end
    object btn_alterar: TPDJButton
      Left = 70
      Top = 292
      Width = 379
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
      TabOrder = 1
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Plano'
      TabOrder = 2
      object edt_plano: TDCEdit
        Left = 90
        Top = 5
        Width = 247
        Height = 21
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object PDJButton2: TPDJButton
        Left = 372
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
        OnClick = PDJButton2Click
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 69
      Top = 344
      Width = 379
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
      TabOrder = 3
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 184
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Car�ncias'
      TabOrder = 4
      object ScrollBox1: TScrollBox
        Left = 90
        Top = 5
        Width = 676
        Height = 101
        TabOrder = 0
        object LsB_Carencia: TListBox
          Left = -1
          Top = -1
          Width = 752
          Height = 81
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnl_alerta: TPanel
        Left = 90
        Top = 108
        Width = 675
        Height = 25
        BevelOuter = bvLowered
        Caption = 'BENEFICI�RIO SUSPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object pnl_alerta2: TPanel
        Left = 90
        Top = 133
        Width = 675
        Height = 25
        BevelOuter = bvLowered
        Caption = 'PLANO DIVERGENTE'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
    object PDJButton4: TPDJButton
      Left = 69
      Top = 395
      Width = 379
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
      TabOrder = 5
    end
    object cbx_cod_emissaocarteira: TDCComboBox
      Tag = -1
      Left = 550
      Top = 420
      Width = 225
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      ValueItem = ''
      ItemHeight = 0
      Style = csDropDownList
      ShowCheckBox = True
    end
    object btn_salvarProc: TPDJButton
      Tag = 5
      Left = 550
      Top = 447
      Width = 95
      Height = 22
      Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
      TabOrder = 7
    end
    object PDJButton5: TPDJButton
      Left = 69
      Top = 447
      Width = 379
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
      TabOrder = 8
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
end
