inherited Frm_Mov_2067: TFrm_Mov_2067
  Width = 864
  Height = 870
  AutoScroll = True
  Caption = 'Frm_Mov_2067'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 848
    inherited Image1: TImage
      Width = 846
    end
  end
  inherited Panel2: TPanel
    Top = 779
    Width = 848
    inherited Image3: TImage
      Width = 846
    end
  end
  inherited Panel3: TPanel
    Width = 848
    Height = 738
    object scb_fundo: TScrollBox
      Left = 1
      Top = 1
      Width = 846
      Height = 736
      VertScrollBar.Position = 375
      Align = alClient
      TabOrder = 0
      OnMouseWheelDown = scb_fundoMouseWheelDown
      OnMouseWheelUp = scb_fundoMouseWheelUp
      object gbx_cabecalho: TGroupBox
        Left = 0
        Top = -375
        Width = 825
        Height = 81
        Align = alTop
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object Panel5: TPanel
          Tag = -1
          Left = 3
          Top = 8
          Width = 761
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Matr�cula (F1)                                         Dig. ' +
            '                   '
          TabOrder = 0
          object edt_matriculadebito_seg: TDCEdit
            Tag = -5
            Left = 115
            Top = 5
            Width = 80
            Height = 21
            Hint = 'MATR�CULA DO BENEFIC�RIO'
            MaxLength = 6
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = edt_matriculadebito_segExit
            EditMask = '999999'
          end
          object edt_digitomatdeb_seg: TDCEdit
            Tag = -5
            Left = 224
            Top = 5
            Width = 33
            Height = 21
            TabStop = False
            Color = clInfoBk
            Enabled = False
            MaxLength = 1
            TabOrder = 1
            EditMask = '9'
          end
          object pnl_carteira: TPanel
            Tag = -1
            Left = 542
            Top = 6
            Width = 214
            Height = 21
            BevelOuter = bvLowered
            Caption = 'N� Carteirinha : 1.1.00011.01-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object cb2_cod_empresafolha: TBComboBox
            Tag = 10
            Left = 288
            Top = 5
            Width = 160
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Visible = False
            OnExit = cb2_cod_empresafolhaExit
          end
          object ckb_cadastroRapido: TCheckBox
            Left = 453
            Top = 8
            Width = 84
            Height = 17
            Caption = 'Cad. Rapido'
            Checked = True
            State = cbChecked
            TabOrder = 4
            Visible = False
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 3
          Top = 40
          Width = 761
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Inscri��o (F2)                                              ' +
            '                                                                ' +
            '                                                                ' +
            '   Cod. Ben.                      '
          TabOrder = 1
          object edt_inscricao_ben: TBEdit
            Tag = -1
            Left = 115
            Top = 5
            Width = 80
            Height = 21
            MaxLength = 7
            TabOrder = 0
            OnExit = edt_inscricao_benExit
            NumbersOnly = False
            EditMask = '9999999'
          end
          object edt_cod_beneficiario: TBEdit
            Tag = -3
            Left = 671
            Top = 5
            Width = 85
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 7
            TabOrder = 1
            NumbersOnly = False
            EditMask = '6666666'
          end
          object pnl_alerta: TPanel
            Left = 203
            Top = 5
            Width = 394
            Height = 21
            BevelOuter = bvLowered
            Caption = 'BENEFICI�RIO SUPENSO'
            Color = clRed
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
        end
      end
      object pnl_todos: TPanel
        Left = 0
        Top = -294
        Width = 825
        Height = 1031
        Align = alTop
        TabOrder = 1
        object gbx_dadospessoais: TGroupBox
          Left = 1
          Top = 1
          Width = 823
          Height = 154
          Align = alTop
          Caption = 'Dados Pessoais  -  '
          TabOrder = 0
          OnDblClick = gbx_dadospessoaisDblClick
          object Panel4: TPanel
            Tag = -1
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Nome Completo                                               ' +
              '                                                                ' +
              '                                             CPF'
            TabOrder = 0
            object edt_nome_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 360
              Height = 21
              Hint = 'NOME COMPLETO DO SEGURADO'
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
              OnExit = edt_nome_benExit
            end
            object edt_cpf_ben: TMaskEdit
              Tag = -1
              Left = 603
              Top = 5
              Width = 153
              Height = 21
              EditMask = '999\.999\.999\-99;_'
              MaxLength = 14
              TabOrder = 1
              Text = '   .   .   -  '
              OnExit = edt_cpf_benExit
            end
          end
          object Panel11: TPanel
            Tag = -1
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Estado Civil                                                  ' +
              '                             Sexo                               ' +
              '                            Empresa de Origem'
            TabOrder = 1
            object cbx_cod_estadociv: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO CIVIL EM QUE SE ENCONTRA O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_sexo_ben: TDCComboBox
              Tag = -1
              Left = 337
              Top = 5
              Width = 150
              Height = 21
              TabOrder = 1
              Text = #12
              Items.Strings = (
                'Masculino'
                'Feminino')
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_cod_empresa: TDCComboBox
              Tag = -1
              Left = 603
              Top = 5
              Width = 153
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
              TabOrder = 2
              Text = #12
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 3
            Top = 84
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Data de Nascimento                                            ' +
              '                    Idade                                       ' +
              '                     Local de Desconto'
            TabOrder = 2
            object edt_idade: TDCEdit
              Tag = -10
              Left = 337
              Top = 5
              Width = 150
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
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
              OnExit = edt_dtnascim_benExit
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 603
              Top = 5
              Width = 153
              Height = 21
              Hint = 'FOLHA DE PAGAMENTO DA INSTITUI��O ONDE EST� LOTADO O SEGURADO'
              TabStop = False
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
          object Panel13: TPanel
            Tag = -1
            Left = 3
            Top = 116
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome do Pai                                                   ' +
              '                                                            Nome' +
              ' da M�e                            '
            TabOrder = 3
            object edt_nomepai_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 275
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object edt_nomemae_ben: TDCEdit
              Tag = -1
              Left = 481
              Top = 5
              Width = 275
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
          end
        end
        object gbx_documentos: TGroupBox
          Left = 1
          Top = 155
          Width = 823
          Height = 122
          Align = alTop
          Caption = 'Documentos - '
          TabOrder = 1
          OnDblClick = gbx_documentosDblClick
          object Panel21: TPanel
            Tag = -1
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  R.G.                                                          ' +
              '                           Data Emiss�o                         ' +
              '                                                 Org. Emissor'
            TabOrder = 0
            object edt_rg_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 160
              Height = 21
              MaxLength = 14
              TabOrder = 0
            end
            object edt_orgemissorrg_ben: TDCEdit
              Tag = -1
              Left = 650
              Top = 5
              Width = 105
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 2
            end
            object edt_dtemissaorg_ben: TDCDateEdit
              Tag = -1
              Left = 360
              Top = 5
              Width = 150
              Height = 21
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel20: TPanel
            Tag = -1
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Decl. Nascido Vivo                                            ' +
              '                 Tit. de Eleitor'
            TabOrder = 1
            object lbl_processo: TLabel
              Left = 550
              Top = 9
              Width = 86
              Height = 13
              Cursor = crHandPoint
              Caption = 'Processo  N�/Ano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbl_processoClick
            end
            object edt_certidaonascvivo_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 160
              Height = 21
              MaxLength = 20
              TabOrder = 0
            end
            object edt_titeleitor_ben: TDCEdit
              Tag = -1
              Left = 360
              Top = 5
              Width = 150
              Height = 21
              MaxLength = 18
              TabOrder = 1
            end
            object edt_processo_ben: TDCEdit
              Tag = -1
              Left = 650
              Top = 5
              Width = 105
              Height = 21
              Hint = 'N�MERO E ANO EM QUE FOI ABERTO O PROCESSO'
              TabStop = False
              Color = clInfoBk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 12
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 2
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 3
            Top = 84
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tipo de Documento                                             ' +
              '              Data do Evento                                    ' +
              '                   Folha/Livro/N�'
            TabOrder = 2
            object edt_outrosdocume_ben: TDCEdit
              Tag = -1
              Left = 595
              Top = 5
              Width = 160
              Height = 21
              MaxLength = 20
              TabOrder = 2
            end
            object edt_dtdocumento_ben: TDCDateEdit
              Tag = -1
              Left = 360
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERA��O NO ENDERE�O'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_tipodocumento: TBComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 160
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnKeyDown = cbx_cod_tipodocumentoKeyDown
            end
          end
        end
        object gbx_endereco: TGroupBox
          Left = 1
          Top = 277
          Width = 823
          Height = 151
          Align = alTop
          Caption = 'Meios de Contato - '
          TabOrder = 2
          OnDblClick = gbx_enderecoDblClick
          object Panel16: TPanel
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP                                                           ' +
              '      Lograd.                                                   ' +
              '                                                                ' +
              '              N�'
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 728
              Top = 5
              Width = 26
              Height = 22
              Hint = 'Localizar Endere�o'
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
              TabOrder = 2
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
              OnKeyDown = edt_cep_benKeyDown
            end
            object btn_buscarcep: TPDJButton
              Left = 189
              Top = 8
              Width = 22
              Height = 19
              Hint = 'Preenchimento autom�tico da descri��o'
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
              TabOrder = 1
            end
            object edt_numero_ben: TDCEdit
              Tag = -1
              Left = 670
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
          end
          object Panel18: TPanel
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                       U.F.                     ' +
              '                Cidade'
            TabOrder = 1
            object cbx_cod_uf: TDCComboBox
              Tag = -1
              Left = 380
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
            object cbx_cod_cidadeCep: TDCComboBox
              Tag = -1
              Left = 523
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
          end
          object Panel17: TPanel
            Left = 3
            Top = 84
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro                                                        ' +
              '                                           Tel. Res.            ' +
              '                                              Tel. Com.'
            TabOrder = 2
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
            object edt_foneresi_ben: TDCEdit
              Tag = -1
              Left = 380
              Top = 3
              Width = 150
              Height = 21
              MaxLength = 40
              TabOrder = 1
            end
            object edt_fonecome_seg: TDCEdit
              Tag = -5
              Left = 603
              Top = 3
              Width = 150
              Height = 21
              Hint = 'TELEFONE DO LOCAL DE TRABALHO DO SEGURADO'
              MaxLength = 30
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
          end
          object Panel19: TPanel
            Left = 3
            Top = 116
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tel. Celular                                                  ' +
              '                                                         Email'
            TabOrder = 3
            object edt_email_ben: TDCEdit
              Tag = -1
              Left = 415
              Top = 5
              Width = 307
              Height = 21
              MaxLength = 50
              TabOrder = 2
            end
            object chb_mailing_ben: TCheckBox
              Tag = -1
              Left = 271
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Autoriza Mailing'
              TabOrder = 1
            end
            object edt_fonecel_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 3
              Width = 150
              Height = 21
              MaxLength = 40
              TabOrder = 0
            end
            object btn_atualizarEndereco: TPDJButton
              Left = 728
              Top = 4
              Width = 28
              Height = 24
              Hint = 'Atualiza endere�o de correspond�ncia'
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
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_atualizarEnderecoClick
              TabOrder = 3
            end
          end
        end
        object gbx_enderecocor: TGroupBox
          Left = 1
          Top = 428
          Width = 823
          Height = 121
          Align = alTop
          Caption = 'Endere�o de Correspond�ncia - '
          TabOrder = 3
          OnDblClick = gbx_enderecocorDblClick
          object pnl_enderecocor: TPanel
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP p/ Correspond.                                        Logr' +
              'ad.                                                             ' +
              '                                                                ' +
              '      N�'
            TabOrder = 0
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
            object edt_numerocor_ben: TDCEdit
              Tag = -1
              Left = 670
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
            object btn_buscarcep2: TPDJButton
              Left = 192
              Top = 6
              Width = 19
              Height = 21
              Hint = 'Preenchimento autom�tico da descri��o'
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
          end
          object pnl_enderecocor2: TPanel
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                        U.F.                    ' +
              '                 Cidade'
            TabOrder = 1
            object cbx_cd2_uf: TDCComboBox
              Tag = -1
              Left = 380
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
              Left = 523
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
          end
          object pnl_enderecocor3: TPanel
            Left = 3
            Top = 84
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro p/ Correspond.                                         ' +
              '                                                           '
            TabOrder = 2
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
          end
        end
        object gbx_simulacao: TGroupBox
          Left = 1
          Top = 639
          Width = 823
          Height = 182
          Align = alTop
          Caption = 'Simula��o de Contribui��o - '
          TabOrder = 5
          OnEnter = gbx_simulacaoEnter
          object pnl_simulacao: TPanel
            Left = 3
            Top = 20
            Width = 761
            Height = 158
            TabOrder = 0
            object pnl_plano: TPanel
              Left = 1
              Top = 1
              Width = 759
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '    Plano de Benef�cios                                         ' +
                '                              Data do Plano'
              TabOrder = 0
              object cbx_cod_plano: TDCComboBox
                Tag = -1
                Left = 112
                Top = 5
                Width = 185
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
                TabOrder = 0
                OnChange = cbx_cod_planoChange
                ValueItem = ''
                ItemHeight = 0
                Style = csDropDownList
                ShowCheckBox = True
              end
              object edt_dtplano_ben: TDCDateEdit
                Tag = -1
                Left = 405
                Top = 5
                Width = 153
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
                TabOrder = 1
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
            object pnl_gridsimulacao: TPanel
              Left = 1
              Top = 33
              Width = 759
              Height = 40
              Align = alTop
              Alignment = taLeftJustify
              TabOrder = 1
              object lsv_simulacao: TListView
                Left = 1
                Top = 1
                Width = 757
                Height = 38
                Align = alClient
                Columns = <
                  item
                    Caption = 'Nome'
                    Width = 330
                  end
                  item
                    Caption = 'Idade'
                    Width = 45
                  end
                  item
                    Caption = 'Tipo Depend.'
                    Width = 90
                  end
                  item
                    Caption = 'Valor'
                    Width = 100
                  end
                  item
                    Caption = 'tipoCadastro'
                    Width = 0
                  end
                  item
                    Caption = 'cod_tipodependente'
                    Width = 0
                  end
                  item
                    Caption = 'cod_grauparent'
                    Width = 0
                  end
                  item
                    Caption = 'Situa��o'
                    Width = 160
                  end>
                ReadOnly = True
                RowSelect = True
                TabOrder = 0
                ViewStyle = vsReport
                OnCustomDrawItem = lsv_simulacaoCustomDrawItem
              end
            end
            object Panel10: TPanel
              Left = 1
              Top = 73
              Width = 759
              Height = 83
              Align = alTop
              Alignment = taLeftJustify
              TabOrder = 2
              object lbl_totalsimulacao: TLabel
                Left = 472
                Top = 3
                Width = 8
                Height = 13
                Caption = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 7
                Top = 3
                Width = 96
                Height = 13
                Caption = 'F3 = Selecionar item'
              end
              object Label13: TLabel
                Left = 132
                Top = 4
                Width = 96
                Height = 13
                Caption = 'Delete = Excluir item'
              end
              object Panel14: TPanel
                Tag = 10
                Left = -1
                Top = 19
                Width = 761
                Height = 32
                Alignment = taLeftJustify
                Caption = 
                  '   Nome                                                         ' +
                  '                                                                ' +
                  '                                      Idade'
                TabOrder = 0
                object edt_nomesimulacao: TDCEdit
                  Tag = 10
                  Left = 112
                  Top = 5
                  Width = 377
                  Height = 21
                  CharCase = ecUpperCase
                  MaxLength = 50
                  TabOrder = 0
                end
                object edt_idadesimulacao: TDCEdit
                  Tag = 10
                  Left = 555
                  Top = 5
                  Width = 41
                  Height = 21
                  CharCase = ecUpperCase
                  MaxLength = 3
                  TabOrder = 1
                  EditMask = '999'
                end
              end
              object Panel15: TPanel
                Tag = 10
                Left = -1
                Top = 51
                Width = 761
                Height = 32
                Alignment = taLeftJustify
                Caption = 
                  '   Depend�ncia                                                  ' +
                  '                    Grau de Parentesco'
                TabOrder = 1
                object btn_adicionar: TPDJButton
                  Left = 642
                  Top = 4
                  Width = 84
                  Height = 25
                  Hint = 'Salvar'
                  RepeatInterval = 50
                  RepeatStartInterval = 50
                  NumGlyphs = 1
                  NumGlyphsHot = 1
                  Caption = '&Adicionar'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  OnClick = btn_adicionarClick
                  TabOrder = 2
                end
                object cbx_cod_grauparent: TBComboBox
                  Tag = 10
                  Left = 394
                  Top = 5
                  Width = 205
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 1
                  OnKeyDown = cbx_cod_grauparentKeyDown
                end
                object cb2_cod_tipodependente: TBComboBox
                  Tag = 10
                  Left = 112
                  Top = 5
                  Width = 153
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                end
              end
            end
          end
        end
        object gbx_empresa: TGroupBox
          Left = 1
          Top = 549
          Width = 823
          Height = 90
          Align = alTop
          Caption = 'Empresa - '
          TabOrder = 4
          OnDblClick = gbx_empresaDblClick
          object Panel24: TPanel
            Tag = -1
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Setor                                                        ' +
              '                                    Fun��o/Cargo                ' +
              '                                                                ' +
              '                                           '
            TabOrder = 0
            object edt_funcaoemp_seg: TDCEdit
              Tag = -5
              Left = 389
              Top = 5
              Width = 286
              Height = 21
              Hint = 'FUN��O/CARGO ATUAL DO SEGURADO'
              MaxLength = 40
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object chb_educacao: TCheckBox
              Tag = -5
              Left = 683
              Top = 7
              Width = 72
              Height = 17
              Caption = 'Educa��o'
              TabOrder = 2
            end
            object cbx_cod_setoremp: TBComboBox
              Tag = -5
              Left = 112
              Top = 5
              Width = 190
              Height = 21
              ItemHeight = 13
              TabOrder = 0
            end
          end
          object Panel26: TPanel
            Tag = -1
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Forma Admiss�o                                                ' +
              '                           Data Admiss�o                        ' +
              '                            Valor Base'
            TabOrder = 1
            object edt_dtadmiss_seg: TDCDateEdit
              Tag = -5
              Left = 389
              Top = 5
              Width = 137
              Height = 21
              Hint = 'DATA DE ADMISS�O NA EMPRESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_vlbase_mte: TDCEdit
              Tag = -5
              Left = 619
              Top = 5
              Width = 133
              Height = 21
              Hint = 'NOME DA FUN��O'
              MaxLength = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnExit = edt_vlbase_mteExit
            end
            object cbx_cod_formaadm: TBComboBox
              Tag = -5
              Left = 112
              Top = 5
              Width = 190
              Height = 21
              ItemHeight = 13
              TabOrder = 0
            end
          end
        end
        object gbx_confirmar: TGroupBox
          Left = 1
          Top = 973
          Width = 823
          Height = 55
          Align = alTop
          Caption = 'Confirmar Cadastro'
          TabOrder = 7
          object btn_configArgox: TfrSpeedButton
            Left = 630
            Top = 19
            Width = 24
            Height = 24
            Hint = 'Configurar Avan�o Impressora Argox'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              77777700000000000777707777777770707700000000000007070777777BBB77
              0007077777788877070700000000000007700777777777707070700000000007
              0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
              077777770FFFFFFFF07777777000000000777777777777777777}
            GrayedInactive = False
            OnClick = btn_configArgoxClick
          end
          object btn_confirmar: TPDJButton
            Left = 102
            Top = 18
            Width = 163
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Confirmar Cadastro'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_confirmarClick
            TabOrder = 0
          end
          object btn_voltar: TPDJButton
            Left = 11
            Top = 18
            Width = 73
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '<< Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 1
          end
          object btn_imprimiradesao: TPDJButton
            Left = 345
            Top = 18
            Width = 113
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Imprimir Ades�o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_imprimiradesaoClick
            TabOrder = 2
          end
          object btn_etiqueta: TPDJButton
            Left = 485
            Top = 18
            Width = 142
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Etiqueta de Processo'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_etiquetaClick
            TabOrder = 3
          end
          object btn_gerarCI: TPDJButton
            Left = 664
            Top = 18
            Width = 56
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Gerar CI'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = False
            TabOrder = 4
          end
          object btn_regra: TPDJButton
            Left = 731
            Top = 18
            Width = 32
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '?'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_regraClick
            Visible = False
            TabOrder = 5
          end
          object Button1: TButton
            Left = 312
            Top = 18
            Width = 17
            Height = 25
            Caption = 'I'
            TabOrder = 6
            Visible = False
            OnClick = Button1Click
          end
        end
        object gbx_informacao: TGroupBox
          Left = 1
          Top = 821
          Width = 823
          Height = 152
          Align = alTop
          Caption = 'Informa��es Automaticas - '
          TabOrder = 6
          Visible = False
          object Panel8: TPanel
            Tag = -1
            Left = 3
            Top = 48
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = '   Situa��o'
            TabOrder = 0
            object Label5: TLabel
              Left = 550
              Top = 10
              Width = 19
              Height = 13
              Caption = 'Dig.'
            end
            object Label6: TLabel
              Left = 598
              Top = 10
              Width = 15
              Height = 13
              Caption = 'Tit.'
            end
            object Label7: TLabel
              Left = 383
              Top = 10
              Width = 36
              Height = 13
              Caption = 'Dt. Car.'
            end
            object Label16: TLabel
              Left = 281
              Top = 10
              Width = 50
              Height = 13
              Caption = 'Tipo. Dep.'
            end
            object Label4: TLabel
              Left = 643
              Top = 10
              Width = 25
              Height = 13
              Caption = 'Proc.'
            end
            object edt_titulacartei_ben: TDCEdit
              Tag = -1
              Left = 620
              Top = 5
              Width = 21
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 3
              Text = '0'
            end
            object edt_digito_ben: TDCEdit
              Tag = -1
              Left = 575
              Top = 5
              Width = 20
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 2
              Text = '0'
            end
            object edt_dtcarencia_ben: TDCDateEdit
              Tag = -1
              Left = 432
              Top = 5
              Width = 113
              Height = 21
              Hint = 'DATA DO IN�CIO DA CAR�NCIA DO NOVO INSCRITO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_sitbeneficiario: TDCComboBox
              Tag = -1
              Left = 64
              Top = 5
              Width = 209
              Height = 21
              Hint = 'ESTADO CIVIL EM QUE SE ENCONTRA O SEGURADO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_cod_tipodependente: TDCEdit
              Tag = -1
              Left = 340
              Top = 5
              Width = 30
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 4
            end
          end
          object Panel6: TPanel
            Tag = -1
            Left = 3
            Top = 16
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = '                  '
            TabOrder = 1
            object Label1: TLabel
              Left = 595
              Top = 10
              Width = 32
              Height = 13
              Caption = 'Dt. Sit.'
            end
            object Label2: TLabel
              Left = 426
              Top = 10
              Width = 39
              Height = 13
              Caption = 'Dt. Cad.'
            end
            object Label3: TLabel
              Left = 14
              Top = 10
              Width = 42
              Height = 13
              Caption = 'tipo Seg.'
            end
            object Label18: TLabel
              Left = 170
              Top = 10
              Width = 59
              Height = 13
              Caption = 'Dt. Sti. Emp.'
            end
            object cbx_cod_TipoSegurado: TDCComboBox
              Tag = -1
              Left = 67
              Top = 5
              Width = 86
              Height = 21
              Hint = 'SEGURADO ATIVO, INATIVO, APOSENTADO, FALECIDO,...'
              Color = clScrollBar
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
            object edt_dtcadastro_ben: TDCDateEdit
              Tag = -1
              Left = 473
              Top = 5
              Width = 117
              Height = 21
              Hint = 'DATA INSERIDA PELO COMPUTADOR'
              Color = clInfoBk
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ReadOnly = True
              Checked = True
              ButtonExist = False
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_dtsituacao_ben: TDCDateEdit
              Tag = -1
              Left = 634
              Top = 5
              Width = 117
              Height = 21
              Hint = 'DATA DA SITUA��O DO SEGURADO NO IMASF'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_dtsituempr_seg: TDCDateEdit
              Tag = -5
              Left = 231
              Top = 5
              Width = 106
              Height = 21
              Hint = 'DATA DA ATUAL SITUA��O NA EMPRESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel1: TPanel
            Left = 3
            Top = 80
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Dt. Inscr.                                                   ' +
              '              Idade                 Nome Cart.                  ' +
              '                                '
            TabOrder = 2
            object Label14: TLabel
              Left = 616
              Top = 10
              Width = 42
              Height = 13
              Caption = 'Sit. Emp.'
            end
            object Label15: TLabel
              Left = 475
              Top = 11
              Width = 44
              Height = 13
              Caption = 'Dt. Limite'
            end
            object edt_dtinscricao_ben: TDCDateEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 129
              Height = 21
              Hint = 'DATA DA EFETIVA INSCRI��O DO SEGURADO'
              TabStop = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_idade_ben: TDCEdit
              Tag = -1
              Left = 284
              Top = 5
              Width = 29
              Height = 21
              TabStop = False
              Color = 16777088
              MaxLength = 12
              TabOrder = 1
              Text = '0'
            end
            object edt_nomecarteira_ben: TDCEdit
              Tag = -1
              Left = 384
              Top = 5
              Width = 65
              Height = 21
              Hint = 'NOME DO DEPENDENTE A SER IMPRESSO NA CARTEIRINHA'
              TabStop = False
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
              TabOrder = 2
            end
            object cbx_cod_situacempr: TDCComboBox
              Tag = -5
              Left = 664
              Top = 3
              Width = 89
              Height = 21
              Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_dtlimite_seg: TDCDateEdit
              Tag = -5
              Left = 531
              Top = 5
              Width = 78
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
              TabOrder = 4
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel9: TPanel
            Left = 3
            Top = 112
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tipo Cobert.                                                  ' +
              '           Ocorrencia                                           ' +
              '                                          Mat/Dig Princ.        ' +
              ' '
            TabOrder = 3
            object Label11: TLabel
              Left = 392
              Top = 10
              Width = 39
              Height = 13
              Caption = 'Dt. End.'
            end
            object cbx_cod_tipocoberturaunimed: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 129
              Height = 21
              TabStop = False
              Color = clAqua
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_cod_ocorrenciaEdital: TDCComboBox
              Tag = -5
              Left = 316
              Top = 5
              Width = 61
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
            object edt_matriculaprinc_seg: TDCEdit
              Tag = -5
              Left = 631
              Top = 5
              Width = 73
              Height = 21
              Hint = 'MATR�CULA USADA PARA DESCONTO EM FOLHA DE PAGAMENTO'
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              EditMask = '999999'
            end
            object edt_digitomatpri_seg: TDCEdit
              Tag = -5
              Left = 711
              Top = 5
              Width = 41
              Height = 21
              MaxLength = 1
              TabOrder = 3
              EditMask = '9'
            end
            object edt_dtendereco_ben: TDCDateEdit
              Tag = -1
              Left = 438
              Top = 5
              Width = 99
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERA��O NO ENDERE�O'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 812
    Width = 848
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
    Left = 768
    Top = 425
  end
end
