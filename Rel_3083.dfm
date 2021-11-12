inherited Frm_Rel_3083: TFrm_Rel_3083
  Caption = 'Frm_Rel_3083'
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object btn_relacao01: TPDJButton
      Left = 86
      Top = 92
      Width = 499
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 
        '&Gerar Relação de beneficiários do Plano PFGB maior ou igual a 1' +
        '6 anos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_relacao01Click
      TabOrder = 0
    end
    object pgb_registros: TProgressBar
      Left = 12
      Top = 459
      Width = 772
      Height = 20
      Min = 0
      Max = 100
      TabOrder = 1
      Visible = False
    end
    object btn_relacao02: TPDJButton
      Left = 86
      Top = 140
      Width = 499
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Gerar Relação de beneficiários PFGB'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_relacao02Click
      TabOrder = 2
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referencia                                     ' +
        '                                                                ' +
        '             '
      TabOrder = 3
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
        EditMask = '9999'
      end
    end
    object PDJButton1: TPDJButton
      Left = 86
      Top = 188
      Width = 499
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Demostrativo IMASF'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 4
    end
    object Button1: TButton
      Left = 520
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Teste'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
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
  object SaveDialog: TSaveDialog
    Left = 584
    Top = 76
  end
end
