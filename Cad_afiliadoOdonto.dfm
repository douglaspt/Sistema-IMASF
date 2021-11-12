inherited Frm_Cad_afiliadoOdonto: TFrm_Cad_afiliadoOdonto
  Caption = 'Frm_Cad_afiliadoOdonto'
  ClientWidth = 790
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 790
    inherited Image1: TImage
      Width = 788
    end
  end
  inherited Panel2: TPanel
    Width = 790
    inherited Image3: TImage
      Width = 788
    end
  end
  inherited Panel3: TPanel
    Width = 790
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Matrícula '
      TabOrder = 0
      object edt_cod_afiliadoOdonto: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_afiliadoOdontoKeyDown
        OnKeyPress = edt_cod_afiliadoOdontoKeyPress
        Alignment = taRightJustify
        OnButtonClick = edt_cod_afiliadoOdontoButtonClick
        EditMask = '9999999'
      end
      object edt_matricula_mte: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnExit = edt_matricula_mteExit
        Alignment = taRightJustify
        EditMask = '9999999'
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Local de Desconto'
      Enabled = False
      TabOrder = 1
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 164
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = cbx_cod_empresafolhaExit
        ReadOnly = True
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Digito                 '
      Enabled = False
      TabOrder = 2
      object edt_digito_mte: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 30
        Height = 21
        MaxLength = 250
        ReadOnly = True
        TabOrder = 0
        NumbersOnly = False
        EditMask = '99'
      end
      object edt_nome_fpm: TDCEdit
        Tag = -5
        Left = 160
        Top = 5
        Width = 351
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Nome'
      TabOrder = 3
      object edt_nome_afo: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 400
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 250
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    RG                                                          ' +
        '                                                 CPF            ' +
        '                                               Dt. Nascimento'
      TabOrder = 5
      object edt_cpf_afo: TMaskEdit
        Tag = -1
        Left = 384
        Top = 5
        Width = 135
        Height = 21
        EditMask = '999\.999\.999\-99;_'
        MaxLength = 14
        TabOrder = 1
        Text = '   .   .   -  '
      end
      object edt_rg_afo: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 150
        Height = 21
        MaxLength = 14
        TabOrder = 0
      end
      object edt_dtnascim_afo: TDCDateEdit
        Tag = -1
        Left = 632
        Top = 5
        Width = 136
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Tipo Cober. Odon.                                           ' +
        '                     Dt. Situação Odon.'
      TabOrder = 4
      object cbx_cod_tipocoberturaodonto: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 150
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_dtadesaoodonto_afo: TDCDateEdit
        Tag = -1
        Left = 384
        Top = 5
        Width = 136
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Obs.'
      TabOrder = 6
      object edt_obs_afo: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 649
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 250
        TabOrder = 0
        NumbersOnly = False
      end
    end
    object Panel39: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data da Alteração                                           ' +
        '                                            Código do Usuário   ' +
        '                                                    '
      TabOrder = 7
      object edt_dtsistema_afo: TDCDateEdit
        Tag = -1
        Left = 120
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
        Left = 456
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
  end
  inherited StB_Principal: TStatusBar
    Width = 790
  end
end
