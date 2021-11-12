inherited Frm_Mov_2068: TFrm_Mov_2068
  Width = 916
  Height = 870
  AutoScroll = True
  Caption = 'Frm_Mov_2068'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 900
    inherited Image1: TImage
      Width = 898
    end
  end
  inherited Panel2: TPanel
    Top = 779
    Width = 900
    inherited Image3: TImage
      Width = 898
    end
  end
  inherited Panel3: TPanel
    Width = 900
    Height = 738
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 898
      Height = 736
      VertScrollBar.Position = 164
      Align = alClient
      TabOrder = 0
      OnMouseWheelDown = ScrollBox1MouseWheelDown
      OnMouseWheelUp = ScrollBox1MouseWheelUp
      object gbx_cabecalho: TGroupBox
        Left = 0
        Top = -164
        Width = 877
        Height = 48
        Align = alTop
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object lsv_dependente: TListView
          Left = 15
          Top = 18
          Width = 759
          Height = 25
          Columns = <
            item
              Caption = 'Nome'
              Width = 330
            end
            item
              Caption = 'cod_tipodependente'
              Width = 30
            end
            item
              Caption = 'tipoCadastro'
              Width = 25
            end
            item
              Caption = 'cod_grauparent'
            end>
          ReadOnly = True
          RowSelect = True
          TabOrder = 1
          ViewStyle = vsReport
          Visible = False
        end
        object Panel7: TPanel
          Tag = -1
          Left = 3
          Top = 12
          Width = 761
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Titular                   '
          TabOrder = 0
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
          object edt_nome_seg: TDCEdit
            Tag = -10
            Left = 203
            Top = 5
            Width = 370
            Height = 21
            Hint = 'NOME DO SEGURADO TITULAR'
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
            TabOrder = 1
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_dtadmiss_seg: TDCDateEdit
            Tag = -10
            Left = 632
            Top = 5
            Width = 89
            Height = 21
            TabOrder = 2
            Visible = False
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_cod_formaadm: TDCEdit
            Tag = -10
            Left = 586
            Top = 4
            Width = 35
            Height = 21
            MaxLength = 5
            TabOrder = 3
            Visible = False
            EditMask = '99999'
          end
          object edt_cod_sitbeneficiario: TDCEdit
            Tag = -10
            Left = 722
            Top = 5
            Width = 35
            Height = 21
            MaxLength = 5
            TabOrder = 4
            EditMask = '99999'
          end
        end
      end
      object pnl_todos: TPanel
        Left = 0
        Top = -116
        Width = 877
        Height = 853
        Align = alTop
        TabOrder = 1
        object gbx_dadospessoais: TGroupBox
          Left = 1
          Top = 1
          Width = 875
          Height = 188
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
              '                                                                ' +
              'CPF'
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
              Left = 648
              Top = 5
              Width = 108
              Height = 21
              EditMask = '999\.999\.999\-99;_'
              MaxLength = 14
              TabOrder = 2
              Text = '   .   .   -  '
              OnExit = edt_cpf_benExit
              OnKeyPress = edt_cpf_benKeyPress
            end
            object chB_cpfproprio_dep: TCheckBox
              Tag = -5
              Left = 484
              Top = 8
              Width = 97
              Height = 17
              Hint = 'NÚMERO DE CADASTRO DE PESSOA FÍSICA DO PRÓPRIO DEPENDENTE'
              Alignment = taLeftJustify
              Caption = 'C.P.F. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = chB_cpfproprio_depClick
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
              '                                Sexo                            ' +
              '                                   Grau de Parent.'
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
              Left = 349
              Top = 5
              Width = 153
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
            object cbx_cod_grauparent: TBComboBox
              Tag = -5
              Left = 603
              Top = 5
              Width = 153
              Height = 21
              ItemHeight = 13
              TabOrder = 2
              OnChange = cbx_cod_grauparentChange
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
              '                       Idade                                    ' +
              '                             Estado Físico'
            TabOrder = 2
            object edt_idade: TDCEdit
              Tag = -10
              Left = 349
              Top = 5
              Width = 153
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
            object cbx_cod_estfisico: TDCComboBox
              Tag = -5
              Left = 603
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
            Left = 3
            Top = 116
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome do Pai                                                   ' +
              '                                                            Nome' +
              ' da Mãe                            '
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
          object Panel5: TPanel
            Tag = -1
            Left = 3
            Top = 148
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Data de Renovação                                             ' +
              '             Data Limite                                        ' +
              '                                  Dependencia                   ' +
              '      '
            TabOrder = 4
            object edt_dtrenovacao_dep: TDCDateEdit
              Tag = -5
              Left = 112
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
              Left = 349
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
            object btn_preencheDtRenovacao: TPDJButton
              Left = 517
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
              OnClick = btn_preencheDtRenovacaoClick
              TabOrder = 2
            end
            object cbx_cod_tipodependente: TDCComboBox
              Tag = -1
              Left = 632
              Top = 5
              Width = 124
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
              TabOrder = 3
              OnChange = cbx_cod_tipodependenteChange
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
          end
        end
        object gbx_documentos: TGroupBox
          Left = 1
          Top = 189
          Width = 875
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
              '                                           R.G.                 ' +
              '                           Data Emissão                         ' +
              '                                 Org. Emissor'
            TabOrder = 0
            object edt_rg_ben: TDCEdit
              Tag = -1
              Left = 157
              Top = 5
              Width = 114
              Height = 21
              MaxLength = 14
              TabOrder = 1
            end
            object edt_orgemissorrg_ben: TDCEdit
              Tag = -1
              Left = 595
              Top = 5
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 3
            end
            object edt_dtemissaorg_ben: TDCDateEdit
              Tag = -1
              Left = 360
              Top = 5
              Width = 150
              Height = 21
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object chB_rgproprio_dep: TCheckBox
              Tag = -5
              Left = 33
              Top = 8
              Width = 92
              Height = 17
              Hint = 'DOCUMENTO DE IDENTIDADE DO PRÓPRIO DEPENDENTE'
              Alignment = taLeftJustify
              Caption = 'R.G. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = chB_rgproprio_depClick
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
              '                   Folha/Livro/Nº'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_tipodocumento: TBComboBox
              Tag = -5
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
          Top = 311
          Width = 875
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
              '              Nº'
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 728
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
              TabOrder = 1
            end
            object edt_numero_ben: TDCEdit
              Tag = -1
              Left = 669
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
              '                                          U.F.                  ' +
              '                 Cidade'
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
              Left = 522
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
              '                                              Tel. Cel.'
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
              Top = 5
              Width = 150
              Height = 21
              MaxLength = 40
              TabOrder = 1
            end
            object edt_fonecel_ben: TDCEdit
              Tag = -1
              Left = 592
              Top = 5
              Width = 150
              Height = 21
              MaxLength = 40
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
              '                                                                ' +
              '                                                  Email'
            TabOrder = 3
            object edt_email_ben: TDCEdit
              Tag = -1
              Left = 380
              Top = 5
              Width = 341
              Height = 21
              MaxLength = 50
              TabOrder = 1
            end
            object chb_mailing_ben: TCheckBox
              Tag = -1
              Left = 113
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Autoriza Mailing'
              TabOrder = 0
            end
            object btn_atualizarEndereco: TPDJButton
              Left = 728
              Top = 4
              Width = 28
              Height = 24
              Hint = 'Atualiza endereço de correspondência'
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
              TabOrder = 2
            end
          end
        end
        object gbx_enderecocor: TGroupBox
          Left = 1
          Top = 462
          Width = 875
          Height = 121
          Align = alTop
          Caption = 'Endereço de Correspondência - '
          TabOrder = 3
          OnDblClick = gbx_enderecocorDblClick
          object Panel43: TPanel
            Left = 3
            Top = 20
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP p/ Correspond.                                        Logr' +
              'ad.                                                             ' +
              '                                                                ' +
              '      Nº'
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
              Left = 675
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
          end
          object Panel44: TPanel
            Left = 3
            Top = 52
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                             U.F.               ' +
              '                 Cidade'
            TabOrder = 1
            object cbx_cd2_uf: TDCComboBox
              Tag = -1
              Left = 390
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
              Left = 527
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
          object Panel45: TPanel
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
        object gbx_informacao: TGroupBox
          Left = 1
          Top = 583
          Width = 875
          Height = 215
          Align = alTop
          Caption = 'Informações Automaticas - '
          TabOrder = 4
          Visible = False
          object Panel1: TPanel
            Left = 3
            Top = 16
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Dt. Inscr.                                                  ' +
              '                                                                ' +
              '                 Cod. Ben'
            TabOrder = 0
            object Label8: TLabel
              Left = 668
              Top = 10
              Width = 27
              Height = 13
              Caption = 'Idade'
            end
            object edt_cod_beneficiario: TBEdit
              Tag = -3
              Left = 503
              Top = 5
              Width = 85
              Height = 21
              TabStop = False
              Color = clInfoBk
              MaxLength = 7
              TabOrder = 0
              NumbersOnly = False
              EditMask = '6666666'
            end
            object pnl_carteira: TPanel
              Tag = -1
              Left = 216
              Top = 6
              Width = 225
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
            object edt_dtinscricao_ben: TDCDateEdit
              Tag = -1
              Left = 64
              Top = 5
              Width = 145
              Height = 21
              Hint = 'DATA DA EFETIVA INSCRIÇÃO DO SEGURADO'
              TabStop = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_idade_ben: TDCEdit
              Tag = -1
              Left = 708
              Top = 5
              Width = 29
              Height = 21
              TabStop = False
              Color = 16777088
              MaxLength = 12
              TabOrder = 3
              Text = '0'
            end
          end
          object pnl_plano: TPanel
            Left = 2
            Top = 48
            Width = 762
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Plano de Benefícios                                         ' +
              '                              Data do Plano                     ' +
              '                                        Tipo Unimed'
            TabOrder = 1
            object cbx_cod_plano: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 185
              Height = 21
              Hint = 'INSCRIÇÃO NO BÁSICO, INTERMEDIÁRIO OU ESPECIAL'
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
            object edt_dtplano_ben: TDCDateEdit
              Tag = -1
              Left = 405
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA EM QUE FOI FEITA  A OPÇÃO PELO SEGURADO'
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
            object cbx_cod_tipocoberturaunimed: TDCComboBox
              Tag = -1
              Left = 648
              Top = 3
              Width = 105
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 3
            Top = 112
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = '   Situação'
            TabOrder = 2
            object Label4: TLabel
              Left = 610
              Top = 10
              Width = 25
              Height = 13
              Caption = 'Proc.'
            end
            object Label5: TLabel
              Left = 482
              Top = 10
              Width = 19
              Height = 13
              Caption = 'Dig.'
            end
            object Label6: TLabel
              Left = 541
              Top = 10
              Width = 15
              Height = 13
              Caption = 'Tit.'
            end
            object Label7: TLabel
              Left = 320
              Top = 10
              Width = 36
              Height = 13
              Caption = 'Dt. Car.'
            end
            object edt_processo_ben: TDCEdit
              Tag = -1
              Left = 644
              Top = 5
              Width = 109
              Height = 21
              Hint = 'NÚMERO E ANO EM QUE FOI ABERTO O PROCESSO'
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 12
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
            end
            object edt_titulacartei_ben: TDCEdit
              Tag = -1
              Left = 564
              Top = 5
              Width = 29
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 3
              Text = '0'
            end
            object edt_digito_ben: TDCEdit
              Tag = -1
              Left = 512
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
              Left = 360
              Top = 5
              Width = 113
              Height = 21
              Hint = 'DATA DO INÍCIO DA CARÊNCIA DO NOVO INSCRITO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_sitbeneficiario: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
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
          end
          object Panel6: TPanel
            Tag = -1
            Left = 3
            Top = 80
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            TabOrder = 3
            object Label1: TLabel
              Left = 563
              Top = 10
              Width = 32
              Height = 13
              Caption = 'Dt. Sit.'
            end
            object Label2: TLabel
              Left = 379
              Top = 10
              Width = 39
              Height = 13
              Caption = 'Dt. Cad.'
            end
            object Label3: TLabel
              Left = 190
              Top = 10
              Width = 42
              Height = 13
              Caption = 'tipo Seg.'
            end
            object cbx_cod_TipoSegurado: TDCComboBox
              Tag = -1
              Left = 245
              Top = 5
              Width = 124
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
              Left = 424
              Top = 5
              Width = 129
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
              Left = 604
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA SITUAÇÃO DO SEGURADO NO IMASF'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object chb_recibomes_dep: TCheckBox
              Tag = -5
              Left = 12
              Top = 8
              Width = 97
              Height = 17
              Caption = 'RECIBO MÊS'
              TabOrder = 3
            end
          end
          object Panel9: TPanel
            Left = 3
            Top = 144
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Empresa Orig.                                                 ' +
              '                    Local Desc.'
            TabOrder = 4
            object Label11: TLabel
              Left = 512
              Top = 10
              Width = 67
              Height = 13
              Caption = 'Nome Carteira'
            end
            object cbx_cod_empresa: TDCComboBox
              Tag = -1
              Left = 115
              Top = 5
              Width = 153
              Height = 21
              Hint = 'INSTITUIÇÃO EM QUE ESTEVE OU ESTÁ LOTADO O SEGURADO'
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
            object cbx_cod_empresafolha: TDCComboBox
              Tag = -1
              Left = 347
              Top = 5
              Width = 153
              Height = 21
              Hint = 'FOLHA DE PAGAMENTO DA INSTITUIÇÃO ONDE ESTÁ LOTADO O SEGURADO'
              TabStop = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_nomecarteira_ben: TDCEdit
              Tag = -1
              Left = 590
              Top = 5
              Width = 156
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
          end
          object Panel10: TPanel
            Left = 3
            Top = 176
            Width = 761
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Ocorrencia                                                    ' +
              '                                                                ' +
              '                                   Dt. Ult. Alt. End.'
            TabOrder = 5
            object Label9: TLabel
              Left = 264
              Top = 10
              Width = 58
              Height = 13
              Caption = 'Plano Pagto'
            end
            object cbx_cod_ocorrenciaEdital: TDCComboBox
              Tag = -5
              Left = 114
              Top = 4
              Width = 103
              Height = 21
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
            object edt_dtendereco_ben: TDCDateEdit
              Tag = -1
              Left = 598
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERAÇÃO NO ENDEREÇO'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_planoPagto: TDCComboBox
              Tag = -5
              Left = 328
              Top = 5
              Width = 161
              Height = 21
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
              Style = csDropDown
              ShowCheckBox = True
            end
          end
        end
        object gbx_confirmar: TGroupBox
          Left = 1
          Top = 798
          Width = 875
          Height = 51
          Align = alTop
          Caption = 'Confirmar Cadastro'
          TabOrder = 5
          object btn_confirmar: TPDJButton
            Left = 19
            Top = 18
            Width = 286
            Height = 25
            Hint = 'Salvar'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'Confirmar cadastro do Dependente'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_confirmarClick
            TabOrder = 0
          end
          object btn_regra: TPDJButton
            Left = 667
            Top = 18
            Width = 46
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
            TabOrder = 1
          end
          object btn_etiqueta: TPDJButton
            Left = 455
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
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 812
    Width = 900
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
    Top = 561
  end
end
