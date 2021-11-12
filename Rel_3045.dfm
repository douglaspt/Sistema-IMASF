inherited Frm_Rel_3045: TFrm_Rel_3045
  Caption = 'Frm_Rel_3045'
  ClientHeight = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 528
  end
  inherited Panel3: TPanel
    Height = 487
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Empresa '
      TabOrder = 0
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -5
        Left = 180
        Top = 5
        Width = 210
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
      object PDJButton2: TPDJButton
        Left = 572
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
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Matrícula'
      TabOrder = 1
      object edt_matricula_mte: TDCEdit
        Tag = -1
        Left = 180
        Top = 4
        Width = 82
        Height = 21
        TabOrder = 0
        EditMask = '999999'
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    CPF'
      TabOrder = 2
      object edt_cpf_fpm: TDCEdit
        Tag = -1
        Left = 180
        Top = 4
        Width = 109
        Height = 21
        MaxLength = 11
        TabOrder = 0
        EditMask = '99999999999'
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Data de Admissão maior que'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object edt_dtadmissao_fpm: TDCDateEdit
        Tag = -1
        Left = 180
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object PDJButton7: TPDJButton
      Left = 16
      Top = 224
      Width = 533
      Height = 25
      Hint = 'Relação de Descontos pelo Beneficiário Selecionado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Relação de Estatutários sem plano de saúde '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton7Click
      TabOrder = 4
    end
    object PDJButton1: TPDJButton
      Left = 16
      Top = 256
      Width = 533
      Height = 25
      Hint = 'Relação de Descontos pelo Beneficiário Selecionado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Relação de Funcionários com várias Matrículas ativas '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 5
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 561
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
