inherited Frm_Rel_3046: TFrm_Rel_3046
  Caption = 'Frm_Rel_3046'
  ClientHeight = 574
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 522
  end
  inherited Panel3: TPanel
    Height = 481
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Mês / Ano de Referencia '
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 164
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
        Left = 412
        Top = 5
        Width = 75
        Height = 21
        TabOrder = 1
      end
    end
    object PDJButton3: TPDJButton
      Left = 170
      Top = 132
      Width = 371
      Height = 27
      Hint = 'Relação de Beneficiários Ativos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relação de Beneficiários Ativos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 1
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 33
      Alignment = taLeftJustify
      Caption = 
        '    Plano                                                       ' +
        '                                                  '
      TabOrder = 2
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 164
        Top = 5
        Width = 131
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
    end
    object PDJButton1: TPDJButton
      Left = 170
      Top = 163
      Width = 371
      Height = 27
      Hint = 'Relação de Beneficiários Aposentados'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relação de Beneficiários Aposentados'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 3
    end
    object PDJButton2: TPDJButton
      Left = 169
      Top = 194
      Width = 371
      Height = 27
      Hint = 'Relação de Beneficiários Pensionistas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relação de Beneficiários Pensionistas'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 4
    end
    object PDJButton4: TPDJButton
      Left = 169
      Top = 256
      Width = 371
      Height = 27
      Hint = 'Contribuição de Segurados por Plano'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Contribuição de Segurados por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 5
    end
    object PDJButton5: TPDJButton
      Left = 169
      Top = 287
      Width = 371
      Height = 27
      Hint = 'Contribuição de Dependentes por Plano'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Contribuição de Dependentes por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton5Click
      TabOrder = 6
    end
    object PDJButton6: TPDJButton
      Left = 169
      Top = 318
      Width = 371
      Height = 27
      Hint = 'Contribuição de Assistido por Plano'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Contribuição de Assistido por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton6Click
      TabOrder = 7
    end
    object PDJButton7: TPDJButton
      Left = 169
      Top = 225
      Width = 371
      Height = 27
      Hint = 'Relação de Beneficiários Ex-Servidors'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Relação de Beneficiários Ex-Servidors'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton7Click
      TabOrder = 8
    end
    object PDJButton8: TPDJButton
      Left = 169
      Top = 349
      Width = 371
      Height = 27
      Hint = 'Total de Contribuição por Plano'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Total de Contribuição por Plano'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton8Click
      TabOrder = 9
    end
    object Button1: TButton
      Left = 24
      Top = 432
      Width = 41
      Height = 25
      Caption = 'Button1'
      TabOrder = 10
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 440
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 11
      Visible = False
      OnClick = Button2Click
    end
    object Panel4: TPanel
      Left = 24
      Top = 80
      Width = 745
      Height = 41
      Caption = 
        'ATENÇÃO : ESTE RELATÓRIO SERÁ DESATIVADO. UTILIZE O RELATÓRIO DA' +
        ' TELA 3074'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 555
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
