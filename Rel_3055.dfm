inherited Frm_Rel_3055: TFrm_Rel_3055
  Caption = 'Frm_Rel_3055'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
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
      Width = 798
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
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 155
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object PDJButton1: TPDJButton
      Left = 100
      Top = 240
      Width = 330
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Segurados Inscritos '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 2
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Edital Nº'
      TabOrder = 3
      object edt_edital: TDCEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 155
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Assinatura 1                Cargo                           ' +
        '                                                        Nome'
      TabOrder = 4
      object edt_cargo1: TDCEdit
        Tag = -1
        Left = 158
        Top = 5
        Width = 220
        Height = 21
        MaxLength = 80
        TabOrder = 0
      end
      object edt_nomeass1: TDCEdit
        Tag = -1
        Left = 441
        Top = 5
        Width = 296
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 150
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Assinatura 2                Cargo                           ' +
        '                                                        Nome'
      TabOrder = 5
      object edt_cargo2: TDCEdit
        Tag = -1
        Left = 158
        Top = 5
        Width = 220
        Height = 21
        MaxLength = 80
        TabOrder = 0
      end
      object edt_nomeass2: TDCEdit
        Tag = -1
        Left = 441
        Top = 5
        Width = 296
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 150
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -2
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Assinatura 3                Cargo                           ' +
        '                                                        Nome'
      TabOrder = 6
      object edt_cargo3: TDCEdit
        Tag = -1
        Left = 158
        Top = 5
        Width = 220
        Height = 21
        MaxLength = 80
        TabOrder = 0
      end
      object edt_nomeass3: TDCEdit
        Tag = -1
        Left = 441
        Top = 5
        Width = 296
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 150
        TabOrder = 1
      end
    end
    object PDJButton2: TPDJButton
      Left = 100
      Top = 275
      Width = 330
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Segurado inscrito que veio da Intermedica'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 7
    end
    object PDJButton3: TPDJButton
      Left = 100
      Top = 309
      Width = 330
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Cancelamento de Segurado Exonerado'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 8
    end
    object Button1: TButton
      Left = 560
      Top = 240
      Width = 66
      Height = 39
      Caption = 'TESTE'
      TabOrder = 9
      OnClick = Button1Click
    end
    object PDJButton4: TPDJButton
      Left = 100
      Top = 345
      Width = 330
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Cancelamento de Pensionista'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 10
    end
    object PDJButton5: TPDJButton
      Left = 100
      Top = 381
      Width = 330
      Height = 25
      Hint = 'Imprimir Somente Linhas'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Inscrição de Dependentes c/ carência'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton5Click
      TabOrder = 11
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
end
