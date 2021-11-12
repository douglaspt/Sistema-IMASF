inherited Frm_Rel_3050: TFrm_Rel_3050
  Caption = 'Frm_Rel_3050'
  ClientWidth = 804
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 804
    inherited Image1: TImage
      Width = 802
    end
  end
  inherited Panel2: TPanel
    Width = 804
    inherited Image3: TImage
      Width = 802
    end
  end
  inherited Panel3: TPanel
    Width = 804
    object GroupBox1: TGroupBox
      Left = 25
      Top = 216
      Width = 721
      Height = 153
      Caption = 'Relat�rio de Pacientes Internados'
      TabOrder = 0
      object Panel6: TPanel
        Tag = -1
        Left = 10
        Top = 45
        Width = 704
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Data de Refer�ncia'
        TabOrder = 0
        object edt_dtreferencia: TDCDateEdit
          Tag = -5
          Left = 142
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object PDJButton1: TPDJButton
        Left = 17
        Top = 82
        Width = 344
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Relat�rio de Pacientes Internados'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton1Click
        TabOrder = 1
      end
      object PDJButton2: TPDJButton
        Left = 17
        Top = 115
        Width = 344
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Classifica��o de Pacientes Internados no Dia'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton2Click
        TabOrder = 2
      end
      object PDJButton5: TPDJButton
        Left = 369
        Top = 115
        Width = 344
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Classifica��o de Pacientes Internados por Plano'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton5Click
        TabOrder = 3
      end
      object Panel10: TPanel
        Tag = -2
        Left = 2
        Top = 15
        Width = 717
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    C�digo do Conveniado'
        TabOrder = 4
        object ed2_cod_conveniado: TDCChoiceEdit
          Tag = -2
          Left = 150
          Top = 5
          Width = 90
          Height = 21
          Hint = 
            'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
            'squisar'
          MaxLength = 10
          TabOrder = 0
          OnExit = ed2_cod_conveniadoExit
          Alignment = taRightJustify
          OnButtonClick = ed2_cod_conveniadoButtonClick
          EditMask = '99999-9'
        end
        object ed2_razao_con: TDCEdit
          Tag = -10
          Left = 245
          Top = 5
          Width = 413
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 25
      Top = 9
      Width = 721
      Height = 200
      Caption = 'Relat�rio das Interna��es'
      TabOrder = 1
      object PDJButton3: TPDJButton
        Left = 17
        Top = 171
        Width = 300
        Height = 24
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Relat�rio das Interna��es'
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
        Left = 2
        Top = 15
        Width = 717
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    C�digo do Conveniado'
        TabOrder = 1
        object edt_cod_conveniado: TDCChoiceEdit
          Tag = -2
          Left = 150
          Top = 5
          Width = 90
          Height = 21
          Hint = 
            'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
            'squisar'
          MaxLength = 10
          TabOrder = 0
          OnExit = edt_cod_conveniadoExit
          Alignment = taRightJustify
          OnButtonClick = edt_cod_conveniadoButtonClick
          EditMask = '99999-9'
        end
        object edt_razao_con: TDCEdit
          Tag = -10
          Left = 245
          Top = 5
          Width = 413
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
        Left = 2
        Top = 46
        Width = 717
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Inscri��o'
        TabOrder = 2
        object edt_inscricao_ben: TDCEdit
          Tag = -1
          Left = 150
          Top = 4
          Width = 90
          Height = 21
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Tag = -1
        Left = 2
        Top = 75
        Width = 717
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Interna��o   de                                     ' +
          '                             at�'
        TabOrder = 3
        object edt_dtentrada_ain_Ini: TDCDateEdit
          Tag = -5
          Left = 150
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtentrada_ain_Fin: TDCDateEdit
          Tag = -5
          Left = 368
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object Panel1: TPanel
        Tag = -1
        Left = 2
        Top = 107
        Width = 716
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data da Alta              de                                ' +
          '                                  at�'
        TabOrder = 4
        object edt_dtalta_alt_Ini: TDCDateEdit
          Tag = -5
          Left = 150
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
        object edt_dtalta_alt_Fin: TDCDateEdit
          Tag = -5
          Left = 368
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 1
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object Panel9: TPanel
        Tag = -1
        Left = 2
        Top = 137
        Width = 716
        Height = 33
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Tipo de Interna��o                                          ' +
          '                                Plano                           ' +
          '                 '
        TabOrder = 5
        object cbx_cod_plano: TDCComboBox
          Tag = -1
          Left = 368
          Top = 5
          Width = 152
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object cbx_cod_tipointernacao: TDCComboBox
          Tag = -1
          Left = 150
          Top = 5
          Width = 152
          Height = 21
          TabOrder = 1
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object pgb_criar: TProgressBar
          Left = 560
          Top = 12
          Width = 150
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
      end
      object btn_exportacsv: TPDJButton
        Left = 369
        Top = 171
        Width = 344
        Height = 25
        Hint = 
          'Cria arquivos de benefici�rios somente coms situa��o "em aberto"' +
          ' para desconto'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
          2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
          722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
          FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
          7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
        GlyphHot.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
          2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
          722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
          FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
          7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
        Caption = '&Relat�rio das Interna��es em CSV'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_exportacsvClick
        ShowHint = True
        TabOrder = 6
      end
    end
    object GroupBox3: TGroupBox
      Left = 25
      Top = 381
      Width = 721
      Height = 100
      Caption = 'Relat�rio de Pacientes Internados'
      TabOrder = 2
      object Panel8: TPanel
        Tag = -1
        Left = 2
        Top = 17
        Width = 704
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    M�s / Ano de Refer�ncia'
        TabOrder = 0
        object cbx_cod_mes: TDCComboBox
          Tag = -1
          Left = 150
          Top = 5
          Width = 153
          Height = 21
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_ano: TDCEdit
          Tag = -1
          Left = 308
          Top = 5
          Width = 65
          Height = 21
          MaxLength = 10
          TabOrder = 1
          EditMask = '9999'
        end
      end
      object PDJButton4: TPDJButton
        Left = 9
        Top = 61
        Width = 337
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Classifica��o de Di�rias de Internados no M�s'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton4Click
        TabOrder = 1
      end
      object PDJButton6: TPDJButton
        Left = 360
        Top = 62
        Width = 345
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Classifica��o de Di�rias de Internados por Plano no M�s'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton6Click
        TabOrder = 2
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 804
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
    DefaultExt = 'CSV'
    Filter = 'Csv|*.csv'
    Left = 768
    Top = 41
  end
end
