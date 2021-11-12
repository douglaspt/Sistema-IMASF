inherited Frm_Rel_3040: TFrm_Rel_3040
  Caption = ''
  ClientHeight = 572
  ClientWidth = 794
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 794
    inherited Image1: TImage
      Width = 792
    end
  end
  inherited Panel2: TPanel
    Top = 520
    Width = 794
    inherited Image3: TImage
      Width = 792
    end
  end
  inherited Panel3: TPanel
    Width = 794
    Height = 479
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Mês / Ano de Referência '
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = 5
        Left = 180
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
        Tag = -1
        Left = 420
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 35
      Top = 75
      Width = 350
      Height = 27
      Hint = 'Relação de Contribuição não Gerada'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Contribuição não Gerada'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 1
    end
    object PDJButton1: TPDJButton
      Left = 35
      Top = 110
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos Zerado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Desconto Zerado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 2
    end
    object PDJButton2: TPDJButton
      Left = 35
      Top = 145
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos com Valores Grandes'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos com Valores Grandes'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 3
    end
    object PDJButton4: TPDJButton
      Left = 35
      Top = 180
      Width = 350
      Height = 27
      Hint = 'Relação de Divergencias de Valores(595/518)'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Divergencias de Valores(595/518)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 4
    end
    object PDJButton5: TPDJButton
      Left = 35
      Top = 215
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos Gerados para Empresa diferente do Segurado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Desc. Gerados para Emp. diferente do Segurado'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton5Click
      TabOrder = 5
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 792
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Empresa                                                     ' +
        '                                                                ' +
        '         Sit.Desconto'
      TabOrder = 6
      object cbx_cod_empresafolha: TDCComboBox
        Tag = 5
        Left = 180
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
      object PDJButton16: TPDJButton
        Left = 747
        Top = 2
        Width = 41
        Height = 29
        Hint = 'LIMPA PARÂMETROS PARA EFETUAR UMA NOVA PESQUISA'
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
        OnClick = PDJButton16Click
        ShowHint = True
        TabOrder = 1
      end
      object cbx_cod_sitdesconto: TDCComboBox
        Tag = 5
        Left = 509
        Top = 3
        Width = 227
        Height = 21
        Hint = 'Usado somente no Botão Descontos em Matrícula Antiga'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
    end
    object PDJButton6: TPDJButton
      Left = 35
      Top = 250
      Width = 350
      Height = 27
      Hint = 'Relação de Cancelados e Falecidos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = ' Cancelados e Falecidos'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton6Click
      TabOrder = 7
    end
    object PDJButton7: TPDJButton
      Left = 35
      Top = 285
      Width = 350
      Height = 27
      Hint = 'Relação de Inscritos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relação de Inscritos'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton7Click
      TabOrder = 8
    end
    object PDJButton8: TPDJButton
      Left = 405
      Top = 250
      Width = 350
      Height = 27
      Hint = 'Relação de Beneficiários que mudaram de Plano'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Beneficiários que mudaram de Plano'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton8Click
      TabOrder = 9
    end
    object PDJButton9: TPDJButton
      Left = 405
      Top = 285
      Width = 350
      Height = 27
      Hint = 'Relação de Beneficiários que fizeram 18 anos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Beneficiários que fizeram 18 anos'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton9Click
      TabOrder = 10
    end
    object btn_Descontosegurado: TPDJButton
      Left = 405
      Top = 75
      Width = 350
      Height = 27
      Hint = 'Relação de descontos de Segurado do mês anterior (Contabilidade)'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Desc. de Segurado do mês anterior (Contabi.)'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_DescontoseguradoClick
      TabOrder = 11
    end
    object PDJButton10: TPDJButton
      Left = 405
      Top = 110
      Width = 350
      Height = 27
      Hint = 
        'Relação de Beneficiários que não estavam na folha do mês Anterio' +
        'r'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Benef. que não estavam na folha do mês Anterior'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton10Click
      TabOrder = 12
    end
    object PDJButton11: TPDJButton
      Left = 405
      Top = 145
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos com Matrícula Errada'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos com Matrícula Errada'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton11Click
      TabOrder = 13
    end
    object PDJButton12: TPDJButton
      Left = 405
      Top = 180
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos Duplicados'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos Duplicados no Mês'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton12Click
      TabOrder = 14
    end
    object PDJButton13: TPDJButton
      Left = 405
      Top = 215
      Width = 350
      Height = 27
      Hint = 'Relação de Descontos Duplicados'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Desc. Duplicados com o Mês Anterior'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton13Click
      TabOrder = 15
    end
    object PDJButton14: TPDJButton
      Left = 35
      Top = 320
      Width = 350
      Height = 27
      Hint = 'Relação de Inscritos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Dígito Errado no Desconto / Não localizado no FPM'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton14Click
      TabOrder = 16
    end
    object edt_dtenvio_flh: TDCDateEdit
      Tag = 5
      Left = 510
      Top = 5
      Width = 130
      Height = 21
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      Visible = False
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
    object ed2_dtenvio_flh: TDCDateEdit
      Tag = 5
      Left = 646
      Top = 5
      Width = 130
      Height = 21
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      Visible = False
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
    object PDJButton15: TPDJButton
      Left = 405
      Top = 320
      Width = 350
      Height = 27
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Dependentes para Verificação de Tabelas'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton15Click
      TabOrder = 19
    end
    object PDJButton17: TPDJButton
      Left = 35
      Top = 355
      Width = 350
      Height = 27
      Hint = 'Preencher somente a Sit.Desconto.'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos em Matrícula Antiga'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton17Click
      ShowHint = True
      TabOrder = 20
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 553
    Width = 794
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
