inherited Frm_Rel_3034: TFrm_Rel_3034
  Caption = 'Frm_Rel_3034'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Limpar todos os campos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = Btn_LimpaCamposClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object Label1: TLabel
      Left = 72
      Top = 418
      Width = 32
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object Label2: TLabel
      Left = 72
      Top = 450
      Width = 48
      Height = 16
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object PDJButton4: TPDJButton
      Left = 72
      Top = 242
      Width = 350
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir Incid�ncia de CID por Per�odo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 7
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    CID'
      TabOrder = 0
      object edt_cod_cid: TDCChoiceEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_cidButtonClick
        EditMask = '9999999'
      end
      object edt_cid: TDCEdit
        Tag = -5
        Left = 130
        Top = 5
        Width = 489
        Height = 21
        Color = clInfoBk
        MaxLength = 200
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Per�odo          de                                         ' +
        '                        at�'
      TabOrder = 1
      object edt_dtinicial: TDCDateEdit
        Tag = -5
        Left = 130
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtfinal: TDCDateEdit
        Tag = -5
        Left = 322
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 194
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Ordem                                                  '
      TabOrder = 6
      object rdb_crescente: TRadioButton
        Left = 136
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Crescente'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_decrescente: TRadioButton
        Left = 325
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Decrescente'
        TabOrder = 1
      end
    end
    object PDJButton1: TPDJButton
      Left = 72
      Top = 294
      Width = 350
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Rela��o de CID'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 8
    end
    object Button2: TButton
      Left = 152
      Top = 424
      Width = 297
      Height = 25
      Caption = 'Ajusta tbl_reembolso'
      TabOrder = 9
      Visible = False
      OnClick = Button2Click
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 33
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Plano                                                       ' +
        '                                                  '
      TabOrder = 4
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 130
        Top = 5
        Width = 176
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
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
      Caption = '    Cod.Conveniado'
      TabOrder = 2
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -1
        Left = 130
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -5
        Left = 229
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
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscri��o'
      TabOrder = 3
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 130
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        TabStop = False
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 130
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_nome: TDCEdit
        Tag = -10
        Left = 229
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 162
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Idade             de                                       a' +
        't�             '
      TabOrder = 5
      object edt_idadeIni: TDCEdit
        Tag = -1
        Left = 130
        Top = 5
        Width = 58
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edt_idadeFin: TDCEdit
        Tag = -1
        Left = 246
        Top = 5
        Width = 58
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object PDJButton2: TPDJButton
      Left = 72
      Top = 342
      Width = 350
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Pesquisar por CRM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton2Click
      TabOrder = 10
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
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selec�o de movimento para leitura'
    Left = 13
    Top = 444
  end
end
