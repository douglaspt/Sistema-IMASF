inherited Frm_Mov_2048: TFrm_Mov_2048
  Caption = 'Frm_Mov_2048'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object btn_atualizar: TSpeedButton
      Left = 38
      Top = 77
      Width = 165
      Height = 25
      Caption = '&Carregar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
        7FF330BFBFBF03307333703337F3FFFF7F37733377F330F0000B033333333033
        37F777737F333333F7F33011111103333330703337F333337F33333777FF301F
        FFF103333330000337F333337F33333777733011111103333330003337F3FF3F
        7F333337773330F00B0003333330033337F7737773333337733330BFBF003333
        3330333337FFFF7733333337333330000003333333333333377777733333FFFF
        FFFF3333333333300000000333333F3333377777777F333303333330BFBFBF03
        33337F333337F3FFFF7F333003333330F0000B0333377F333337F777737F3300
        03333330BFBFBF0333777F333337F3FFFF7F300003333330F0000B0337777F33
        3337F777737F330703333330BFBFBF03337773333337F3FF3F7F330333333330
        F00B0003337FF333FF37F7737773330733370330BFBF00333377FFF77337FFFF
        7733333000003330000003333337777733377777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btn_atualizarClick
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Matrícula de Origem'
      TabOrder = 0
      object edt_matriculaorigem: TDCEdit
        Tag = -10
        Left = 138
        Top = 5
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 35
        TabOrder = 0
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 224
        Top = 5
        Width = 164
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = cbx_cod_empresafolhaExit
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_nomeorigem: TDCEdit
        Tag = -5
        Left = 399
        Top = 5
        Width = 351
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
      object edt_digitoorigem: TBEdit
        Tag = -1
        Left = 756
        Top = 5
        Width = 30
        Height = 21
        MaxLength = 250
        TabOrder = 3
        NumbersOnly = False
        EditMask = '99'
      end
      object edt_cod_beneficiario: TBEdit
        Tag = -1
        Left = 102
        Top = 5
        Width = 30
        Height = 21
        MaxLength = 250
        TabOrder = 4
        Visible = False
        NumbersOnly = False
        EditMask = '99'
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
      Caption = '    Matrícula de Destino'
      TabOrder = 1
      object edt_matriculadestino: TDCEdit
        Tag = -10
        Left = 138
        Top = 5
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 35
        TabOrder = 0
      end
      object cb2_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 224
        Top = 5
        Width = 164
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = cb2_cod_empresafolhaExit
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_nomedestino: TDCEdit
        Tag = -5
        Left = 399
        Top = 5
        Width = 351
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 2
      end
      object edt_digitodestino: TBEdit
        Tag = -1
        Left = 756
        Top = 5
        Width = 30
        Height = 21
        MaxLength = 250
        TabOrder = 3
        NumbersOnly = False
        EditMask = '99'
      end
    end
    object PDJButton3: TPDJButton
      Left = 73
      Top = 335
      Width = 298
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Confirmar Transferência de Matrícula'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton3Click
      TabOrder = 2
    end
    object dbg_odonto: TDBGrid
      Left = 3
      Top = 117
      Width = 785
      Height = 202
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = dbg_odontoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_afo'
          Title.Caption = 'Nome'
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao_tco'
          Title.Caption = 'Tipo Cobert.'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtadesaoodonto_afo'
          Title.Caption = 'Dt.Situação'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'carencia'
          Title.Caption = 'Carência'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtCarencia'
          Title.Caption = 'Fim da Carência'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_mae'
          Title.Caption = 'Nome da Mãe'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rg_afo'
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_afo'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtnascim_afo'
          Title.Caption = 'Dt.Nascimento'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs_afo'
          Title.Caption = 'Observação'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtsistema_afo'
          Title.Caption = 'Dt.Sistema'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_usuario'
          Title.Caption = 'Cód.Usuário'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_afiliadoOdonto'
          Visible = True
        end>
    end
    object dbg_uti: TDBGrid
      Left = 3
      Top = 364
      Width = 777
      Height = 108
      Color = clWhite
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao_tco'
          Title.Caption = 'Tipo de Cobertura'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtadesao_hpo'
          Title.Caption = 'Data da Situação'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_empresafolha'
          Title.Caption = 'Empresa Folha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'matricula_mte'
          Title.Caption = 'Matricula'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtsistema_hpo'
          Title.Caption = 'Data do Sistema'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_usu'
          Title.Caption = 'Usuário'
          Width = 152
          Visible = True
        end>
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
  object DataSource1: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_afiliadoodonto
    Left = 692
    Top = 274
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_histplanoOdonto
    Left = 723
    Top = 436
  end
end
