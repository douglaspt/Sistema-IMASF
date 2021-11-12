inherited Frm_Cad_PreCadastro: TFrm_Cad_PreCadastro
  Caption = 'Frm_Cad_PreCadastro'
  ClientHeight = 582
  ClientWidth = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 796
    inherited Image1: TImage
      Width = 794
    end
  end
  inherited Panel2: TPanel
    Top = 530
    Width = 796
    inherited Image3: TImage
      Width = 794
    end
    inherited Btn_Fechar: TPDJButton
      Left = 702
      Width = 93
    end
    inherited btn_novo: TPDJButton
      Width = 93
    end
    inherited btn_alterar: TPDJButton
      Left = 97
      Width = 93
    end
    inherited btn_salvar: TPDJButton
      Left = 196
      Width = 93
    end
    inherited btn_cancelar: TPDJButton
      Left = 289
      Width = 93
    end
    inherited btn_excluir: TPDJButton
      Left = 564
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 796
    Height = 489
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        OnKeyPress = edt_cod_beneficiarioKeyPress
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
      object pnl_carteira: TPanel
        Tag = -1
        Left = 540
        Top = 6
        Width = 249
        Height = 21
        BevelOuter = bvLowered
        Caption = 'N° Carteirinha : 1.1.00011.01-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object pnl_situacao: TPanel
        Tag = -1
        Left = 380
        Top = 6
        Width = 153
        Height = 21
        BevelOuter = bvLowered
        Caption = 'Situação : Cancelado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 'NÚMERO DE INSCRIÇÃO DO DO DEPENDENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = edt_inscricao_benExit
        Alignment = taRightJustify
        EditMask = '9999999'
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Tipo de Segurado                                            ' +
        '                 Tipo de Dependente                             ' +
        '                          '
      TabOrder = 3
      object lbl_processo: TLabel
        Left = 543
        Top = 10
        Width = 86
        Height = 13
        Caption = 'Processo  Nº/Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lbl_processoClick
      end
      object edt_processo_ben: TDCEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 153
        Height = 21
        Hint = 'PROCESSO EM QUE ESTÁ INSERIDO O DEPENDENTE (SEGURADO TITULAR)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'ABCDEFGHIJLMN'
      end
      object cbx_cod_TipoSegurado: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'ATIVO, APOSENTADO, PENSIONISTA, EX-SERVIDOR'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = cbx_cod_TipoSeguradoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object cbx_cod_tipodependente: TDCComboBox
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'NORMAL OU ASSISTIDO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnChange = cbx_cod_tipodependenteExit
        OnExit = cbx_cod_tipodependenteExit
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
        OnCloseUp = cbx_cod_tipodependenteExit
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Empresa de Origem                                           ' +
        '                Plano de Benefícios                             ' +
        '                          Local de Desconto'
      TabOrder = 4
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 
          'EMPRESA DE ORIGEM DO SEGURADO TITULAR(PREFEITURA, CÂMARA, IMASF,' +
          ' FACULDADE, TESOURARIA)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = #12
        OnChange = cbx_cod_empresaChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'PLANO BÁSICO, INTERMEDIÁRIO, ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = #12
        OnChange = cbx_cod_TipoSeguradoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 637
        Top = 5
        Width = 152
        Height = 21
        Hint = 'PREFEITURA, CÂMARA, FACULDADE, IMASF, TESOURARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = #12
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Inscrição                                           ' +
        '                   Data de Situação                             ' +
        '                               Data do Plano'
      TabOrder = 5
      object edt_dtinscricao_ben: TDCDateEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DE INSCRIÇÃO DO DEPENDENTE'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtsituacao_ben: TDCDateEdit
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DA SITUAÇÃO EM QUE SE ENCONTRA O DEPENDENTE'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtplano_ben: TDCDateEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DO PLANO OPTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 796
      Height = 243
      Alignment = taLeftJustify
      TabOrder = 7
      object PageControl: TPageControl
        Left = 4
        Top = 4
        Width = 785
        Height = 233
        ActivePage = tbs_tabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados Pessoais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Panel11: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Estado Civil                                                  ' +
              '                    Grau de Parent.                             ' +
              '                                                 Sexo'
            TabOrder = 0
            object cbx_cod_estadociv: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO CIVIL ATUAL DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_cod_grauparent: TDCComboBox
              Tag = -5
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              Hint = 'GRAU DE PARENTESCO COM O SEGURADO TITULAR'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_sexo_ben: TDCComboBox
              Tag = -1
              Left = 620
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 2
              Text = #12
              Items.Strings = (
                'Masculino'
                'Feminino')
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Data de Nascimento                                            ' +
              '                        Idade                                   ' +
              '                                 Estado Físico'
            TabOrder = 1
            object edt_idade: TDCEdit
              Tag = -10
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              Hint = 'IDADE INCLUINDO MESES'
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              Text = 'ABCDEFGHIJLMN'
            end
            object edt_dtnascim_ben: TDCDateEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_estfisico: TDCComboBox
              Tag = -5
              Left = 620
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO FÍSICO NORMAL OU INVÁLIDO'
              TabOrder = 2
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel13: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome do Pai                                                   ' +
              '                                                               N' +
              'ome da Mãe                  '
            TabOrder = 2
            object edt_nomepai_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 280
              Height = 21
              Hint = 'NOME DO PAI DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_nomemae_ben: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 280
              Height = 21
              Hint = 'NOME DA MÃE DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object Panel14: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tipo Cober. Unimed                                            ' +
              '                                 Tipo Cober. Odon.              ' +
              '                                 Dt. Adesão Odon.'
            TabOrder = 3
            OnExit = Panel14Exit
            object cbx_cod_tipocoberturaodonto: TDCComboBox
              Tag = -1
              Left = 423
              Top = 5
              Width = 129
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_cod_tipocoberturaunimed: TDCComboBox
              Tag = -1
              Left = 112
              Top = 3
              Width = 212
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_dtadesaoodonto_ben: TDCDateEdit
              Tag = -1
              Left = 649
              Top = 5
              Width = 124
              Height = 21
              Hint = 'DATA DA SITUAÇÃO EM QUE SE ENCONTRA O DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel15: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '                                                                ' +
              '                                                                ' +
              '                                                         '
            TabOrder = 4
            object lbl_cod_beneficiario: TLabel
              Left = 656
              Top = 12
              Width = 3
              Height = 13
            end
          end
          object Panel30: TPanel
            Left = 1
            Top = 173
            Width = 796
            Height = 32
            Alignment = taLeftJustify
            Caption = 'Não Visível'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object edt_digito_ben: TDCEdit
              Tag = -1
              Left = 120
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 0
              Text = '0'
            end
            object edt_cod_sitbeneficiario: TDCEdit
              Tag = -1
              Left = 224
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 1
              Text = '1'
            end
            object edt_titularidade_ben: TDCEdit
              Left = 68
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 2
              Text = '01'
            end
            object edt_titulacartei_ben: TDCEdit
              Tag = -1
              Left = 291
              Top = 6
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 3
              Text = '0'
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endereço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Panel16: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP                                                           ' +
              '      Lograd.                                                   ' +
              '                                                                ' +
              '                Nº'
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 738
              Top = 5
              Width = 26
              Height = 22
              Hint = 'Localizar Endereço'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
                07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
                70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
                FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
              ParentFont = False
              OnClick = SpeedButton6Click
            end
            object edt_cep_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              TabOrder = 0
              Text = '     -   '
            end
            object edt_endereco_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 50
              ReadOnly = True
              TabOrder = 1
            end
            object edt_numero_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 2
              EditMask = '99999'
            end
            object btn_buscarcep: TPDJButton
              Left = 189
              Top = 6
              Width = 22
              Height = 21
              Hint = 'Preenchimento automático da descrição'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcepClick
              TabOrder = 3
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro                                                        ' +
              '                                         Tel. Res.              ' +
              '                                         Email '
            TabOrder = 2
            object edt_foneresi_ben: TDCEdit
              Tag = -1
              Left = 371
              Top = 5
              Width = 155
              Height = 21
              Hint = 'TELEFONE RESIDENCIAL DO DEPENDENTE'
              MaxLength = 40
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = edt_foneresi_benKeyDown
            end
            object edt_email_ben: TDCEdit
              Tag = -1
              Left = 565
              Top = 4
              Width = 193
              Height = 21
              Hint = 'TELEFONE RESIDENCIAL DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnKeyDown = edt_foneresi_benKeyDown
            end
            object edt_bairro_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 30
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel18: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                                 U.F.           ' +
              '                  Cidade'
            TabOrder = 1
            object edt_complemento_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
            end
            object cbx_cod_uf: TDCComboBox
              Tag = -1
              Left = 399
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              OnExit = cbx_cod_ufExit
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadeCep: TDCComboBox
              Tag = -1
              Left = 565
              Top = 5
              Width = 200
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel45: TPanel
            Tag = -1
            Left = 0
            Top = 160
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro p/ Correspond.                                         ' +
              '                                   Dt. Ult. Alt.'
            TabOrder = 5
            object edt_bairrocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 30
              ReadOnly = True
              TabOrder = 0
            end
            object edt_dtendereco_ben: TDCDateEdit
              Tag = -1
              Left = 399
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERAÇÃO NO ENDEREÇO'
              TabOrder = 1
              OnChange = edt_dtnascim_benChange
              OnKeyPress = edt_dtendereco_benKeyPress
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object btn_atualizarEndereco: TPDJButton
              Left = 564
              Top = 4
              Width = 198
              Height = 25
              Hint = 'Atualizar Endereço de Correspondência'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                42010000424D4201000000000000760000002800000011000000110000000100
                040000000000CC00000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                777770000000777777770000000770000000777777770FFFFF07700000007777
                77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
                0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
                FF077000000070607CCC00000007700000007060777770777777700000007060
                7CCC707777747000000070607777707777444000000070600000007777747000
                0000706666607774777470000000700000007777444770000000777777777777
                777770000000}
              Caption = '&Atualizar End. Corresp.'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_atualizarEnderecoClick
              TabOrder = 2
            end
          end
          object Panel44: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                                U.F.            ' +
              '                              Cidade'
            TabOrder = 4
            object edt_complementocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
            end
            object cbx_cd2_uf: TDCComboBox
              Tag = -1
              Left = 399
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadecorCEP: TDCComboBox
              Tag = -1
              Left = 567
              Top = 5
              Width = 200
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel43: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP p/ Correspond.                                        Logr' +
              'ad.                                                             ' +
              '                                                                ' +
              '      Nº'
            TabOrder = 3
            object btn_buscarcep2: TPDJButton
              Left = 192
              Top = 6
              Width = 19
              Height = 21
              Hint = 'Preenchimento automático da descrição'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcep2Click
              TabOrder = 1
            end
            object edt_enderecocor_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 50
              ReadOnly = True
              TabOrder = 2
            end
            object edt_numerocor_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
            object edt_cepcor_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              TabOrder = 0
              Text = '     -   '
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Documentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 2
          ParentFont = False
          object Panel20: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  C.P.F.'
            TabOrder = 1
            object edt_cpf_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NÚMERO DE CADASTRO DE PESSOA FÍSICA DO DEPENDENTE'
              EditMask = '999\.999\.999\-99;1;_'
              MaxLength = 14
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = '   .   .   -  '
            end
          end
          object Panel21: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  R.G.                                                          ' +
              '                         Data de Emissão                        ' +
              '                                            Org. Emissor'
            TabOrder = 0
            object edt_rg_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DOCUMENTO DE IDENTIDADE DO DEPENDENTE'
              MaxLength = 14
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_orgemissorrg_ben: TDCEdit
              Tag = -1
              Left = 628
              Top = 5
              Width = 143
              Height = 21
              Hint = 
                'SECRETARIA DE SEGURANÇA E O RESPECTIVO ESTADO DA FEDERAÇÃO QUE E' +
                'MITIU O DOCUMENTO DO DEPENDENTE'
              CharCase = ecUpperCase
              MaxLength = 10
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edt_dtemissaorg_ben: TDCDateEdit
              Tag = -1
              Left = 372
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA EM QUE FOI EMITIDO O DOCUMENTO DE IDENTIDADE DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel22: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tit. de Eleitor'
            TabOrder = 3
            object edt_titeleitor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NÚMERO DO TÍTULO DE ELEITOR DO DEPENDENTE'
              MaxLength = 18
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Outros Documentos                                             ' +
              '              Tipo'
            TabOrder = 4
            object edt_outrosdocume_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'OUTRO(S) DOCUMENTO(S) QUE IDENTIFIQUEM O DEPENDENTE'
              MaxLength = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_tipodocume_ben: TDCEdit
              Tag = -1
              Left = 308
              Top = 5
              Width = 69
              Height = 21
              Hint = 'CORRESPONDÊNCIA DO(S) DOCUMENTO(S)'
              CharCase = ecUpperCase
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = edt_tipodocume_benKeyDown
            end
          end
          object Panel6: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            TabOrder = 2
            object chB_rgproprio_dep: TCheckBox
              Tag = -5
              Left = 8
              Top = 8
              Width = 97
              Height = 17
              Hint = 'DOCUMENTO DE IDENTIDADE DO PRÓPRIO DEPENDENTE'
              Caption = 'R.G. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object chB_cpfproprio_dep: TCheckBox
              Tag = -5
              Left = 112
              Top = 8
              Width = 97
              Height = 17
              Hint = 'NÚMERO DE CADASTRO DE PESSOA FÍSICA DO PRÓPRIO DEPENDENTE'
              Caption = 'C.P.F. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
        end
        object tbs_obs: TTabSheet
          Caption = 'Observações'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          object Label1: TLabel
            Left = 4
            Top = 158
            Width = 230
            Height = 13
            Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
          end
          object lbl_ocorrencia: TLabel
            Left = 24
            Top = 183
            Width = 63
            Height = 13
            Caption = 'Ocorrencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object mem_obs_ben: TMemo
            Tag = -1
            Left = 4
            Top = 4
            Width = 769
            Height = 149
            Hint = 
              'TODA E QUALQUER INFORMAÇÃO QUE CONTRIBUA PARA A IDENTIFICAÇÃO DO' +
              ' DEPENDENTE'
            Lines.Strings = (
              'Memo1')
            MaxLength = 2000
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object cbx_cod_ocorrenciaEdital: TDCComboBox
            Tag = -5
            Left = 104
            Top = 179
            Width = 498
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
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object tbs_tabela: TTabSheet
          Caption = 'Tabela'
          ImageIndex = 8
          OnShow = tbs_tabelaShow
          object Panel19: TPanel
            Tag = -1
            Left = 0
            Top = 3
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tabela de Plano de Pagamento Especial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cbx_cod_planoPagto: TDCComboBox
              Tag = -5
              Left = 208
              Top = 5
              Width = 425
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
              Style = csDropDown
              ShowCheckBox = True
            end
          end
        end
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Renovação                                           ' +
        '               Data Limite                                      ' +
        '                                Data do Sistema'
      TabOrder = 6
      object edt_dtrenovacao_dep: TDCDateEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA PARA NOVA OPÇÃO DO PLANO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtlimite_dep: TDCDateEdit
        Tag = -5
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA MÁXIMA PARA RENOVAÇÃO DO PLANO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object PDJButton4: TPDJButton
        Left = 765
        Top = 4
        Width = 24
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
          87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
          FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
          0E070F757770000000E070FFF707777777007700007777777777}
        GlyphHot.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888844444444444444884888CFF8FF8FF4884888CCF8CF8CF4884CCCCC88C88
          C84884888C448CF8CF4884888C4E4FF8CF4884CCCC84E4888848844444FF4E48
          FF4884EEEE4F84E4FF484EEEEEE48F4E4F484FECCCE48FF4E4484FECEEE44444
          4E484FECEEE4444444E484FFFE48888888448844448888888888}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton4Click
        TabOrder = 3
      end
      object edt_dtcadastro_ben: TDCDateEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 125
        Height = 21
        Hint = 'DATA INSERIDA PELO PRÓPRIO SISTEMA'
        TabStop = False
        Color = clInfoBk
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ReadOnly = True
        Checked = True
        ButtonExist = False
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '   Nome do Segurado'
      TabOrder = 1
      object edt_nome_seg: TDCEdit
        Tag = -10
        Left = 120
        Top = 5
        Width = 370
        Height = 21
        Hint = 'NOME DO SEGURADO TITULAR'
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object chb_recibomes_dep: TCheckBox
        Tag = -5
        Left = 636
        Top = 8
        Width = 97
        Height = 17
        Caption = 'RECIBO MÊS'
        TabOrder = 1
      end
    end
    object pnl_alerta: TPanel
      Left = 24
      Top = 444
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
      TabOrder = 8
    end
    object Panel38: TPanel
      Tag = -1
      Left = 1
      Top = 456
      Width = 794
      Height = 32
      Align = alBottom
      Alignment = taLeftJustify
      Caption = 
        '    Data de Alteração                                           ' +
        '                       Alterado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object edt_dtalteracao_hsb: TDCDateEdit
        Left = 124
        Top = 5
        Width = 217
        Height = 21
        Hint = 
          'DATA DE ALTERAÇÃO DE DADOS DO CADASTRO(INSERIDA PELO PRÓPRIO SIS' +
          'TEMA)'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ReadOnly = True
        Checked = True
        ButtonExist = False
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_nome_usu: TDCEdit
        Tag = -10
        Left = 460
        Top = 5
        Width = 329
        Height = 21
        Hint = 
          'FUNCIONÁRIO QUE EXECUTOU A ALTERAÇÃO(INSERIDO PELO PRÓPRIO SISTE' +
          'MA)'
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Completo                                               ' +
        '                                                                ' +
        '                          Carteirinha'
      TabOrder = 2
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 370
        Height = 21
        Hint = 'NOME COMPLETO DO DEPENDENTE'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'EDT_NOME_BEN'
        OnExit = edt_nome_benExit
        OnKeyUp = edt_nome_benKeyUp
      end
      object edt_nomecarteira_ben: TDCEdit
        Tag = -1
        Left = 559
        Top = 5
        Width = 230
        Height = 21
        Hint = 'NOME DO DEPENDENTE A SER IMPRESSO NA CARTEIRINHA'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 30
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 563
    Width = 796
  end
end
