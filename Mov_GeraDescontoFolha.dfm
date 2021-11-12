inherited Frm_Mov_GeraDescontoFolha: TFrm_Mov_GeraDescontoFolha
  Caption = 'Frm_Mov_GeraDescontoFolha'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object lbl_linha: TLabel
      Left = 24
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
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 408
      Width = 765
      Height = 24
      Min = 0
      Max = 100
      TabOrder = 0
      Visible = False
    end
    object btn_fechamento: TPDJButton
      Left = 8
      Top = 121
      Width = 429
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Fechamento de Descontos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_fechamentoClick
      TabOrder = 1
    end
    object rdb_prefeitura: TRadioButton
      Left = 65
      Top = 28
      Width = 221
      Height = 17
      Caption = '  Gera Desconto para Prefeitura'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object rdb_tesouraria: TRadioButton
      Left = 65
      Top = 68
      Width = 250
      Height = 17
      Caption = '  Gera Descontos para a Tesouraria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
