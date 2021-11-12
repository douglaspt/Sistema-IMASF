inherited Frm_Rel_3012: TFrm_Rel_3012
  Caption = 'Frm_Rel_3012'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PDJButton3: TPDJButton
      Left = 136
      Top = 116
      Width = 257
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir por Categoria de SADT'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 2
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Especialidade '
      TabOrder = 0
      object edt_cod_espmedamb: TDCChoiceEdit
        Tag = -1
        Left = 150
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_espmedambExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_espmedambButtonClick
      end
      object edt_nome_esp: TDCEdit
        Tag = -5
        Left = 250
        Top = 5
        Width = 310
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Mês / Ano de Referencia'
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 150
        Top = 5
        Width = 186
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
        Left = 340
        Top = 5
        Width = 67
        Height = 21
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object PDJButton1: TPDJButton
      Left = 136
      Top = 162
      Width = 257
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir por Médico'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
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
