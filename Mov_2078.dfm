inherited Frm_Mov_2078: TFrm_Mov_2078
  Caption = 'Frm_Mov_2078'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object lbl_linha: TLabel
      Left = 8
      Top = 469
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
        '                         '
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        TabOrder = 0
        OnChange = cbx_cod_mesChange
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
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object pgb_gam: TProgressBar
      Left = 8
      Top = 437
      Width = 765
      Height = 24
      Min = 0
      Max = 100
      TabOrder = 1
      Visible = False
    end
    object Panel12: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '  Data de Vencimento                                            ' +
        '                                Data de Envio'
      TabOrder = 2
      object edt_dtvencim: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtenvio: TDCDateEdit
        Tag = -1
        Left = 417
        Top = 5
        Width = 153
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object btn_gerarGam: TPDJButton
      Left = 56
      Top = 72
      Width = 518
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Gerar GAM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_gerarGamClick
      TabOrder = 3
    end
    object btn_baixa: TPDJButton
      Left = 56
      Top = 112
      Width = 518
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Efetuar Baixas GAM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_baixaClick
      TabOrder = 4
    end
    object mem_log: TMemo
      Left = 16
      Top = 152
      Width = 753
      Height = 265
      TabOrder = 5
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
    Top = 531
  end
  object SaveDialog: TSaveDialog
    Left = 718
    Top = 182
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selecão de movimento para leitura'
    Left = 749
    Top = 180
  end
end
