inherited Frm_Mov_ExcluiDescontoAutom: TFrm_Mov_ExcluiDescontoAutom
  Caption = 'Frm_Mov_ExcluiDescontoAutom'
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
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Referencia                                     ' +
        '                                                                ' +
        '                         '
      TabOrder = 0
      object cbx_cod_mes: TBComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
          '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
      end
      object edt_ano: TBEdit
        Left = 380
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
        NumbersOnly = False
      end
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 408
      Width = 765
      Height = 24
      Min = 0
      Max = 100
      TabOrder = 1
      Visible = False
    end
    object btn_excluiDesconto: TPDJButton
      Left = 8
      Top = 40
      Width = 533
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Exclui Descontos Autom�ticos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_excluiDescontoClick
      TabOrder = 2
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
