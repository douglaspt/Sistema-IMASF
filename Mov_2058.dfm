inherited Frm_Mov_2058: TFrm_Mov_2058
  Caption = 'Frm_Mov_2058'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object PDJButton1: TPDJButton
      Left = 3
      Top = 5
      Width = 254
      Height = 25
      Hint = 'Atualizar Parametros'
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
      Caption = '&Atualizar Par�metros'
      OnClick = PDJButton1Click
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Tipo de Segurado                                            ' +
        '                 Empr. de Origem                                ' +
        '                                            Plano'
      TabOrder = 0
      object cbx_cod_TipoSegurado: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'SEGURADO ATIVO, INATIVO, APOSENTADO, FALECIDO,...'
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
        Style = csDropDown
        ShowCheckBox = True
      end
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 370
        Top = 5
        Width = 150
        Height = 21
        Hint = 'INSTITUI��O EM QUE ESTEVE OU EST� LOTADO O SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 638
        Top = 5
        Width = 150
        Height = 21
        Hint = 'INSCRI��O NO B�SICO, INTERMEDI�RIO OU ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data do Plano                                               ' +
        '                  Data de Inscri��o                             ' +
        '                              Data de Situa��o            '
      TabOrder = 1
      object edt_dtinscricao_ben: TDCDateEdit
        Tag = -1
        Left = 370
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DA EFETIVA INSCRI��O DO SEGURADO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtsituacao_ben: TDCDateEdit
        Tag = -1
        Left = 638
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DA SITUA��O DO SEGURADO NO IMASF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtplano_ben: TDCDateEdit
        Tag = -1
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DA EM QUE FOI FEITA  A OP��O PELO SEGURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 289
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Dt. Situa��o Empr.                                          ' +
        '                      Forma Admiss�o                            ' +
        '                                          Data Limite'
      TabOrder = 9
      object edt_dtsituempr_seg: TDCDateEdit
        Tag = -5
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DA ATUAL SITUA��O NA EMPRESA'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object cbx_cod_formaadm: TDCComboBox
        Tag = -5
        Left = 383
        Top = 5
        Width = 150
        Height = 21
        Hint = 'SE O SEGURADO � CONCURSADO, CONTRATADO,...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_dtlimite_seg: TDCDateEdit
        Tag = -5
        Left = 641
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DE ADMISS�O NA EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    R.G.                                                        ' +
        '                                           C.P.F'
      TabOrder = 6
      object edt_rg_ben: TDCEdit
        Tag = -1
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        MaxLength = 14
        TabOrder = 0
      end
      object edt_cpf_ben: TMaskEdit
        Tag = -1
        Left = 383
        Top = 5
        Width = 150
        Height = 21
        EditMask = '999\.999\.999\-99;_'
        MaxLength = 14
        TabOrder = 1
        Text = '   .   .   -  '
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    UF                                                          ' +
        '       Cidade                                                   ' +
        '                                                                ' +
        '      CEP'
      TabOrder = 5
      object cbx_cod_uf: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 69
        Height = 21
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object cbx_cod_cidadeCep: TDCComboBox
        Tag = -1
        Left = 273
        Top = 5
        Width = 261
        Height = 21
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csOwnerDrawFixed
        ShowCheckBox = True
      end
      object edt_cep_ben: TMaskEdit
        Tag = -1
        Left = 667
        Top = 5
        Width = 121
        Height = 21
        EditMask = '99999\-999;1;_'
        MaxLength = 9
        TabOrder = 2
        Text = '     -   '
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Endere�o                                                    ' +
        '                                                                ' +
        '               Bairro'
      TabOrder = 4
      object edt_endereco_ben: TDCEdit
        Tag = -1
        Left = 115
        Top = 5
        Width = 280
        Height = 21
        MaxLength = 80
        TabOrder = 0
      end
      object edt_bairro_ben: TDCEdit
        Tag = -1
        Left = 508
        Top = 5
        Width = 280
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Tipo Cober. Unimed                                          ' +
        '                                                      Tipo Cober' +
        '. Odon.     '
      TabOrder = 3
      object cbx_cod_tipocoberturaunimed: TDCComboBox
        Tag = -1
        Left = 115
        Top = 6
        Width = 215
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
      object cbx_cod_tipocoberturaodonto: TDCComboBox
        Tag = -1
        Left = 508
        Top = 5
        Width = 215
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Nome do Pai                                                 ' +
        '                                                                ' +
        'Nome da M�e                            '
      TabOrder = 2
      object edt_nomepai_ben: TDCEdit
        Tag = -1
        Left = 115
        Top = 5
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 0
      end
      object edt_nomemae_ben: TDCEdit
        Tag = -1
        Left = 508
        Top = 5
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 1
      end
    end
    object Panel12: TPanel
      Tag = -1
      Left = 1
      Top = 257
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Fone Comercial                                              ' +
        '                   Data de Admiss�o                             ' +
        '                              Situa��o na Empr.'
      TabOrder = 8
      object edt_fonecome_seg: TDCEdit
        Tag = -5
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'TELEFONE DO LOCAL DE TRABALHO DO SEGURADO'
        MaxLength = 30
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object edt_dtadmiss_seg: TDCDateEdit
        Tag = -5
        Left = 383
        Top = 5
        Width = 150
        Height = 21
        Hint = 'DATA DE ADMISS�O NA EMPRESA'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object cbx_cod_situacempr: TDCComboBox
        Tag = -5
        Left = 641
        Top = 5
        Width = 150
        Height = 21
        Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel13: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Local de Desconto                                           ' +
        '                                 Setor                          ' +
        '                                     Fun��o / Cargo'
      TabOrder = 7
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'FOLHA DE PAGAMENTO DA INSTITUI��O ONDE EST� LOTADO O SEGURADO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_setoremp: TDCComboBox
        Tag = -5
        Left = 383
        Top = 5
        Width = 150
        Height = 21
        Hint = 'SETOR DO DEPARTAMENTO ONDE TRABALHA O SEGURADO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_funcaoemp_seg: TDCEdit
        Tag = -5
        Left = 628
        Top = 5
        Width = 161
        Height = 21
        Hint = 'FUN��O/CARGO ATUAL DO SEGURADO'
        MaxLength = 40
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 1
      Top = 321
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Situa��o                                                    ' +
        '                     Tipo de Dependente                         ' +
        '                                       Estado F�sico'
      TabOrder = 10
      object cbx_cod_sitbeneficiario: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 150
        Height = 21
        Hint = 'SEGURADO ATIVO, INATIVO, APOSENTADO, FALECIDO,...'
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
      object cbx_cod_tipodependente: TDCComboBox
        Tag = -1
        Left = 383
        Top = 5
        Width = 150
        Height = 21
        Hint = 'NORMAL OU ASSISTIDO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object cbx_cod_estfisico: TDCComboBox
        Tag = -5
        Left = 641
        Top = 5
        Width = 150
        Height = 21
        Hint = 'ESTADO F�SICO NORMAL OU INV�LIDO'
        TabOrder = 2
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel14: TPanel
      Tag = -1
      Left = 1
      Top = 353
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Ocorr�ncia'
      TabOrder = 11
      object cbx_cod_ocorrenciaEdital: TDCComboBox
        Tag = -1
        Left = 115
        Top = 5
        Width = 676
        Height = 21
        Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
    Left = 16
    Top = 473
  end
end
