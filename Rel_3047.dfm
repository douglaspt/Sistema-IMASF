inherited Frm_Rel_3047: TFrm_Rel_3047
  Caption = 'Frm_Rel_3047'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PDJButton3: TPDJButton
      Left = 288
      Top = 108
      Width = 97
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 0
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '                         Matricula                              ' +
        '                   Empresa   '
      TabOrder = 1
      object edt_inscricao_ben: TDCEdit
        Tag = -1
        Left = 155
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object edt_matricula_mte: TDCEdit
        Tag = -1
        Left = 347
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 535
        Top = 5
        Width = 160
        Height = 21
        TabOrder = 2
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
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
  object Panel5: TPanel [4]
    Tag = -1
    Left = 1
    Top = 74
    Width = 800
    Height = 32
    Alignment = taLeftJustify
    Caption = 
      '    Data de Referência      de                                  ' +
      '                         até'
    TabOrder = 4
    object edt_dtreferencia_abeIni: TDCDateEdit
      Tag = -5
      Left = 155
      Top = 5
      Width = 141
      Height = 21
      TabOrder = 0
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
    object edt_dtreferencia_abeFin: TDCDateEdit
      Tag = -5
      Left = 347
      Top = 5
      Width = 141
      Height = 21
      TabOrder = 1
      Checked = True
      Kind = dkDate
      ShowWeekDay = True
    end
  end
end
