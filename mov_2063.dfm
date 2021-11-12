inherited Frm_Mov_2063: TFrm_Mov_2063
  Caption = 'Frm_Mov_2063'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_salvarReq: TPDJButton
      Tag = 4
      Left = 211
      Top = 4
      Width = 123
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Salvar'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_salvarReqClick
      TabStop = True
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Tag = 4
    object PageControl1: TPageControl
      Left = 1
      Top = 2
      Width = 793
      Height = 486
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Label6: TLabel
          Left = 1
          Top = 461
          Width = 635
          Height = 13
          Caption = 
            'Para alterar um ou mais dependentes, clique na linha do nome do ' +
            'inscrito, mantendo a tecla CTRL pressionada.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 1
          Top = 445
          Width = 615
          Height = 13
          Caption = 
            'Para selecionar mais de um dependente, mantenha pressionada a te' +
            'cla Ctrl + click do mouse ou tecla Shift + seta acima ou abaixo'
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 8
          Width = 793
          Height = 48
          Caption = 'Pesquisa '
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 22
            Width = 43
            Height = 13
            Caption = 'Inscri��o'
          end
          object Label2: TLabel
            Left = 203
            Top = 22
            Width = 75
            Height = 13
            Caption = 'Nome Completo'
          end
          object edt_cod_beneficiario: TDCChoiceEdit
            Tag = -3
            Left = 85
            Top = 18
            Width = 93
            Height = 21
            Hint = 
              'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 1
            Alignment = taRightJustify
            EditMask = '9999999'
          end
          object edt_inscricao_ben: TDCChoiceEdit
            Tag = -1
            Left = 85
            Top = 18
            Width = 93
            Height = 21
            Hint = 
              'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnKeyDown = edt_inscricao_benKeyDown
            Alignment = taRightJustify
            OnButtonClick = edt_inscricao_benButtonClick
            EditMask = '9999999'
          end
          object edt_nome: TDCEdit
            Tag = -1
            Left = 286
            Top = 18
            Width = 467
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
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
            Text = 'EDT_NOME'
            OnChange = edt_nomeChange
          end
        end
        object Panel16: TPanel
          Tag = -1
          Left = 1
          Top = 55
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  CEP                                                           ' +
            '      Logradouro                                                ' +
            '                                                                ' +
            '                     N�'
          TabOrder = 1
          object SpeedButton6: TSpeedButton
            Left = 751
            Top = 3
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
            Left = 286
            Top = 5
            Width = 372
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
            Left = 85
            Top = 5
            Width = 70
            Height = 21
            EditMask = '99999\-999;1;_'
            MaxLength = 9
            TabOrder = 0
            Text = '     -   '
            OnExit = edt_cep_benExit
          end
          object btn_buscarcep: TPDJButton
            Left = 189
            Top = 8
            Width = 22
            Height = 19
            Hint = 
              'Pesquisa de CEP e divide Antigo campo de Endere�o em Logradouro,' +
              ' N�mero e Complemento'
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
            ShowHint = True
            TabOrder = 1
          end
          object edt_numero_ben: TDCEdit
            Tag = -1
            Left = 699
            Top = 4
            Width = 50
            Height = 21
            MaxLength = 5
            TabOrder = 3
            EditMask = '99999'
          end
        end
        object Panel18: TPanel
          Tag = -1
          Left = 1
          Top = 87
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Complemento                                                   ' +
            '                                                 Bairro'
          TabOrder = 2
          object edt_complemento_ben: TDCEdit
            Tag = -1
            Left = 85
            Top = 5
            Width = 250
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 25
            TabOrder = 0
          end
          object edt_bairro_ben: TDCEdit
            Tag = -1
            Left = 408
            Top = 5
            Width = 250
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clInfoBk
            MaxLength = 30
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel17: TPanel
          Tag = -1
          Left = 1
          Top = 119
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Cidade                                                        ' +
            '                                                      U.F.'
          TabOrder = 3
          object cbx_cod_cidadeCep: TDCComboBox
            Tag = -1
            Left = 85
            Top = 5
            Width = 250
            Height = 21
            TabStop = False
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            ReadOnly = True
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object cbx_cod_uf: TDCComboBox
            Tag = -1
            Left = 408
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
          object btn_atualizarEndereco: TPDJButton
            Left = 527
            Top = 3
            Width = 258
            Height = 25
            Hint = 'Altera a Situa��o do Benefici�rio'
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
            Caption = '&Atualizar Endere�o de Correspond�ncia'
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
        object Panel1: TPanel
          Tag = -1
          Left = 1
          Top = 151
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Celular                                                       ' +
            '                                                                ' +
            '                              Fone Residencial'
          TabOrder = 4
          object edt_fonecel_ben: TDCEdit
            Tag = -1
            Left = 85
            Top = 5
            Width = 250
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 30
            TabOrder = 0
          end
          object edt_foneresi_ben: TDCEdit
            Tag = -1
            Left = 582
            Top = 5
            Width = 200
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 30
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 219
          Width = 793
          Height = 42
          Caption = 'Endere�o para Correspond�ncia '
          TabOrder = 5
          object Label3: TLabel
            Left = 8
            Top = 20
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object Label4: TLabel
            Left = 223
            Top = 20
            Width = 54
            Height = 13
            Caption = 'Logradouro'
          end
          object Label5: TLabel
            Left = 672
            Top = 20
            Width = 12
            Height = 13
            Caption = 'N�'
          end
          object edt_cepcor_ben: TMaskEdit
            Tag = -1
            Left = 85
            Top = 16
            Width = 70
            Height = 21
            EditMask = '99999\-999;1;_'
            MaxLength = 9
            TabOrder = 0
            Text = '     -   '
            OnExit = edt_cepcor_benExit
          end
          object edt_enderecocor_ben: TDCEdit
            Tag = -1
            Left = 286
            Top = 16
            Width = 372
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clInfoBk
            MaxLength = 50
            ReadOnly = True
            TabOrder = 1
          end
          object edt_numerocor_ben: TDCEdit
            Tag = -1
            Left = 699
            Top = 15
            Width = 50
            Height = 21
            MaxLength = 5
            TabOrder = 2
            EditMask = '99999'
          end
          object btn_buscarcep2: TPDJButton
            Left = 192
            Top = 15
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
            TabOrder = 3
          end
          object btn_chamacadcep: TPDJButton
            Left = 764
            Top = 10
            Width = 0
            Height = 22
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
            OnClick = btn_chamacadcepClick
            TabOrder = 4
          end
        end
        object Panel44: TPanel
          Tag = -1
          Left = 1
          Top = 260
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Complemento                                                   ' +
            '                                                 Bairro'
          TabOrder = 6
          object edt_complementocor_ben: TDCEdit
            Tag = -1
            Left = 85
            Top = 5
            Width = 250
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 25
            TabOrder = 0
          end
          object edt_bairrocor_ben: TDCEdit
            Tag = -1
            Left = 408
            Top = 3
            Width = 250
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clInfoBk
            MaxLength = 30
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel45: TPanel
          Tag = -1
          Left = 1
          Top = 292
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  Cidade                                                        ' +
            '                                                      U.F.'
          TabOrder = 7
          object cbx_cod_cidadecorCEP: TDCComboBox
            Tag = -1
            Left = 85
            Top = 5
            Width = 250
            Height = 21
            TabStop = False
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            ReadOnly = True
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object cbx_cd2_uf: TDCComboBox
            Tag = -1
            Left = 408
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
        end
        object DBG_Itens: TDBGrid
          Left = 1
          Top = 331
          Width = 793
          Height = 113
          DataSource = DSOutros
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nome_emp'
              Title.Caption = 'Empresa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_beneficiario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 0
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_ben'
              Title.Caption = 'Nome Completo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_gra'
              Title.Caption = 'Grau Parent.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 0
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'endereco_ben'
              Title.Caption = 'Logradouro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero_ben'
              Title.Caption = 'N�'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'complemento_ben'
              Title.Caption = 'Complemento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'enderecocor_ben'
              Title.Caption = 'Logradouro de Correspond�ncia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numerocor_ben'
              Title.Caption = 'N�'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'complementocor_ben'
              Title.Caption = 'Complemento Correspond�ncia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_tdp'
              Title.Caption = 'Tipo Dependente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fonecel_ben'
              Title.Caption = 'Celular'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'foneresi_ben'
              Title.Caption = 'Telefone Residencial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email_ben'
              Title.Caption = 'E-Mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 258
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fonecome_seg'
              Title.Caption = 'Telefone Comercial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end>
        end
        object Panel4: TPanel
          Tag = -1
          Left = 1
          Top = 183
          Width = 793
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '  E-Mail                                                        ' +
            '                                                                ' +
            '                              Fone Comercial'
          TabOrder = 9
          object edt_email_ben: TDCEdit
            Tag = -1
            Left = 85
            Top = 5
            Width = 252
            Height = 21
            TabStop = False
            CharCase = ecLowerCase
            MaxLength = 30
            TabOrder = 0
          end
          object edt_fonecome_seg: TDCEdit
            Tag = -1
            Left = 582
            Top = 5
            Width = 200
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 30
            TabOrder = 1
          end
          object chb_mailing_ben: TCheckBox
            Tag = -1
            Left = 372
            Top = 7
            Width = 79
            Height = 17
            Caption = 'Aut. Mailing'
            TabOrder = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Opera��es'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 456
          Color = clInfoBk
          ColCount = 1
          DefaultRowHeight = 17
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 0
          OnDrawCell = stg_audiDrawCell
        end
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
    Left = 720
    Top = 310
  end
  object DSOutros: TDataSource
    DataSet = fdt_principal6.spc_cons_dependenteTrocaEndereco
    Left = 690
    Top = 310
  end
end
