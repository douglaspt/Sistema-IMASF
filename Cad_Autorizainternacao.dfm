inherited Frm_Cad_Autorizainternacao: TFrm_Cad_Autorizainternacao
  Caption = 'Frm_Cad_Autorizainternacao'
  ClientHeight = 575
  ClientWidth = 793
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 793
    inherited Image1: TImage
      Width = 791
    end
  end
  inherited Panel2: TPanel
    Top = 523
    Width = 793
    inherited Image3: TImage
      Width = 791
    end
  end
  inherited Panel3: TPanel
    Tag = -5
    Width = 793
    Height = 482
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 791
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Código '
      TabOrder = 0
      object edt_cod_autorizainternacao: TDCChoiceEdit
        Tag = -2
        Left = 120
        Top = 5
        Width = 94
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_autorizainternacaoKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_autorizainternacaoButtonClick
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 2
      Top = 33
      Width = 789
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Cod.Conveniado'
      TabOrder = 1
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnEnter = edt_cod_conveniadoEnter
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -5
        Left = 236
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
    object Panel5: TPanel
      Tag = -1
      Left = 2
      Top = 65
      Width = 789
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '              Carteirinha'
      TabOrder = 2
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_carteira: TDCEdit
        Tag = -5
        Left = 319
        Top = 5
        Width = 189
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -5
        Left = 119
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 2
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 2
      Top = 97
      Width = 789
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Beneficiario                                                ' +
        '                                                                ' +
        '                                          Idade'
      TabOrder = 3
      object edt_nome: TDCEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 386
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_idade: TDCEdit
        Tag = -5
        Left = 574
        Top = 5
        Width = 74
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 2
      Top = 129
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Plano                                                       ' +
        '                                                                ' +
        '    Dt. Internação'
      TabOrder = 4
      object edt_cod_statusAutorizaInternacao: TDCEdit
        Tag = -1
        Left = 602
        Top = 6
        Width = 23
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 1
        TabOrder = 2
      end
      object edt_nome_pla: TDCEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 167
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_dtprevisao_ain: TDCDateEdit
        Tag = -1
        Left = 503
        Top = 5
        Width = 148
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 2
      Top = 161
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    AMB                                                         ' +
        '                  Nome'
      TabOrder = 5
      object edt_cod_padrao: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 15
        TabOrder = 0
        OnExit = edt_cod_padraoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_padraoButtonClick
        EditMask = '99999999'
      end
      object edt_nome_its: TDCEdit
        Tag = -5
        Left = 308
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
    object Panel8: TPanel
      Tag = -1
      Left = 2
      Top = 193
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    CRM do Médico                                               ' +
        '          Nome'
      TabOrder = 6
      object edt_cod_crm: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 15
        TabOrder = 0
        OnExit = edt_cod_crmExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_crmButtonClick
      end
      object edt_medico_crm: TDCEdit
        Tag = -5
        Left = 308
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
    object Panel10: TPanel
      Tag = -1
      Left = 2
      Top = 225
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    CID                                                         ' +
        '                    Nome'
      TabOrder = 7
      object edt_nome_cid: TDCEdit
        Tag = -5
        Left = 308
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
      object edt_cod_cid: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        MaxLength = 10
        TabOrder = 1
        OnExit = edt_cod_cidExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_cidButtonClick
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 2
      Top = 257
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Acomodação                                                  ' +
        '                                              RN                ' +
        '          Exceção'
      TabOrder = 8
      object cbx_cod_acomodacao: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_rn_ain: TDCEdit
        Tag = -1
        Left = 388
        Top = 5
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 1
        TabOrder = 1
      end
      object edt_excecao_ain: TDCEdit
        Tag = -1
        Left = 513
        Top = 4
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 1
        TabOrder = 2
      end
    end
    object Panel12: TPanel
      Tag = -1
      Left = 2
      Top = 289
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = '    OBS'
      TabOrder = 9
      object edt_obs_ain: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 601
        Height = 21
        MaxLength = 250
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Tag = -1
      Left = 2
      Top = 321
      Width = 790
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data da Alteração                                           ' +
        '                             Código do Usuário                  ' +
        '                                     '
      TabOrder = 10
      object edt_dtalteracao_ain: TDCDateEdit
        Tag = -1
        Left = 121
        Top = 5
        Width = 184
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 0
        Checked = True
        ButtonExist = False
        Kind = dkDateTime
        ShowWeekDay = True
      end
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 408
        Top = 5
        Width = 313
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
    object Panel14: TPanel
      Tag = -1
      Left = 2
      Top = 353
      Width = 790
      Height = 182
      Alignment = taLeftJustify
      TabOrder = 11
      object pnl_alerta: TPanel
        Left = 16
        Top = 55
        Width = 749
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
        TabOrder = 0
        Visible = False
      end
      object pnl_carencia: TPanel
        Left = 16
        Top = 31
        Width = 749
        Height = 21
        BevelOuter = bvLowered
        Caption = '*** BENEFICIÁRIO EM CARÊNCIA ***'
        Color = 33023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object btn_imprimirAutorizacao: TPDJButton
        Left = 690
        Top = 95
        Width = 73
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Caption = 'Imprimir'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_imprimirAutorizacaoClick
        TabOrder = 2
      end
      object Mem_autorizacao: TMemo
        Left = 16
        Top = 85
        Width = 393
        Height = 39
        TabStop = False
        Lines.Strings = (
          '')
        TabOrder = 3
        Visible = False
      end
      object pnl_procedimento: TPanel
        Left = 17
        Top = 7
        Width = 749
        Height = 21
        BevelOuter = bvLowered
        Caption = '*** PROCEDIMENTO NÃO AUTORIZADO PARA O CONVENIADO ***'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object btn_pdf: TPDJButton
        Left = 622
        Top = 95
        Width = 62
        Height = 25
        Hint = 'Exclui Registro Corrente'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E400000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888000000888888888888888888000000800000000000000888000000800B
          FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
          00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
          BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
          B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
          000088880EEE08778888880000008880EEE0888788888800000088880E088888
          888888000000888880888888888888000000888888888888888888000000}
        GlyphHot.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E400000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888000000888888888888888888000000844444444444444888000000844E
          FEFEFEFEFE48880000008474EFEFEFEFEFE48800000084E4FEFEFEFEFEF48800
          00008474EFEFEFEFEFE48800000084E77EFEFEFEFEFE78000000847E7FEFEFEF
          EFEF7800000084E777777777777778000000847E7E7CCCC77E78880000008444
          E7E4CCC77778880000008888444CCCC7888888000000888884CCC4C788888800
          000088884CCC48778888880000008884CCC4888788888800000088884C488888
          888888000000888884888888888888000000888888888888888888000000}
        Caption = 'PDF'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_pdfClick
        TabOrder = 5
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 556
    Width = 793
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal3.spc_cons_med_concessaointernacao
    Left = 105
    Top = 485
  end
end
