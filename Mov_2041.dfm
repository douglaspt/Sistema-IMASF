inherited Frm_Mov_2041: TFrm_Mov_2041
  Caption = 'Frm_Mov_2041'
  ClientHeight = 582
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    object PDJButton1: TPDJButton
      Left = 3
      Top = 5
      Width = 254
      Height = 25
      Hint = 'Atualizar dados do Odonto para o Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555500005577777777777777777500005000000000000000007500005088
        80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
        0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
        0F44F0750000508880FF0078088880750000508180F400007844807500005088
        80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
        0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
        00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
        55555555550BFFBB0000}
      GlyphHot.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555500005577777777777777777500005444444444444444447500005488
        84FFFFFF4FFFF4750000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF475
        0000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF4750000548184FCCCCF
        4FCCF4750000548884FF0078488884750000548184FC000078CC847500005488
        84FF7008007884750000548184FCC08FF84484750000548884FFF74FFF844475
        0000544444444448FF843447000054CCCCCCCC74880E43440000544444444444
        44FEE43400005555555555554EFFEE43000055555555555550EFFEE400005555
        55555555550EFFEE0000}
      Caption = '&Atualizar Plano Odontológico'
      OnClick = PDJButton1Click
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Height = 489
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Tipo Cober. Odon.                                           ' +
        '                                Dt. Adesão Odon.'
      TabOrder = 2
      object cbx_cod_tipocoberturaodonto: TDCComboBox
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object edt_dtadesaoodonto_ben: TDCDateEdit
        Tag = -10
        Left = 441
        Top = 5
        Width = 144
        Height = 21
        Hint = 'DATA DA SITUAÇÃO EM QUE SE ENCONTRA O DEPENDENTE'
        TabStop = False
        Color = clInfoBk
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
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
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
    end
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
        TabOrder = 1
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
        TabOrder = 0
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object pnl_alerta: TPanel
        Left = 270
        Top = 5
        Width = 515
        Height = 21
        BevelOuter = bvLowered
        Caption = 'BENEFICIÁRIO SUPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 1
      Top = 97
      Width = 798
      Height = 264
      Align = alTop
      Alignment = taLeftJustify
      Caption = '                                    '
      TabOrder = 3
      object dbg_uti: TDBGrid
        Left = 25
        Top = 29
        Width = 668
        Height = 218
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao_tco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtadesao_hpo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtsaida_hpo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtsistema_hpo'
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 361
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Tipo Cober. Odon.                                           ' +
        '                                Dt. Adesão Odon.'
      TabOrder = 4
      object cb2_cod_tipocoberturaodonto: TDCComboBox
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object ed2_dtadesaoodonto_ben: TDCDateEdit
        Tag = -10
        Left = 441
        Top = 5
        Width = 144
        Height = 21
        Hint = 'DATA DA SITUAÇÃO EM QUE SE ENCONTRA O DEPENDENTE'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 563
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
  object DataSource1: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_histplanoOdonto
    Left = 680
    Top = 473
  end
end
