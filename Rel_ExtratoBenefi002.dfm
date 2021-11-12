inherited Frm_Rel_ExtratoBenefi002: TFrm_Rel_ExtratoBenefi002
  Caption = 'Frm_Rel_ExtratoBenefi002'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 16
    Top = 418
    Width = 238
    Height = 16
    Caption = 'Total de Beneficiários com e-mail:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 261
    Top = 418
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel3: TPanel
    object lbl_nome: TLabel
      Left = 24
      Top = 440
      Width = 6
      Height = 13
      Caption = '0'
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Por Beneficiário'
        object Panel4: TPanel
          Tag = -2
          Left = 0
          Top = 0
          Width = 790
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
            TabOrder = 0
            OnKeyDown = edt_cod_beneficiarioKeyDown
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
            TabOrder = 1
            OnKeyDown = edt_inscricao_benKeyDown
            Alignment = taRightJustify
            OnButtonClick = edt_inscricao_benButtonClick
            EditMask = '9999999'
          end
        end
        object Panel24: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Beneficiário'
          TabOrder = 1
          object edt_nome: TDCEdit
            Tag = -10
            Left = 258
            Top = 5
            Width = 295
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
            Width = 119
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 0
            Text = 'ABCDEFGHIJLMN'
          end
          object edt_email_ben: TDCEdit
            Tag = -10
            Left = 558
            Top = 5
            Width = 154
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 2
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Cod.Conveniado'
          TabOrder = 2
          object edt_cod_conveniado: TDCChoiceEdit
            Tag = -1
            Left = 136
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
            Left = 236
            Top = 5
            Width = 477
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
          Left = 0
          Top = 96
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Data de Atendimento de                                      ' +
            '                   até'
          TabOrder = 3
          object edt_dtinicial: TDCDateEdit
            Tag = -5
            Left = 136
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtfinal: TDCDateEdit
            Tag = -5
            Left = 324
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object PDJButton4: TPDJButton
          Left = 30
          Top = 165
          Width = 500
          Height = 25
          Hint = 'Imprimir Detalhado'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Imprimir Detalhado'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton4Click
          TabOrder = 4
        end
        object PDJButton1: TPDJButton
          Left = 30
          Top = 201
          Width = 500
          Height = 25
          Hint = 'Imprimir Simplificado'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Imprimir Simplificado'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 5
        end
        object PDJButton2: TPDJButton
          Left = 30
          Top = 236
          Width = 500
          Height = 25
          Hint = 'Imprimir Simplificado'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Imprimir Agrupado por Procedimento'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 6
        end
        object btn_enviarEmail: TPDJButton
          Left = 536
          Top = 164
          Width = 25
          Height = 25
          Hint = 'Enviar Extrato por e-mail'
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
          OnClick = btn_enviarEmailClick
          ShowHint = True
          TabOrder = 7
        end
        object pgb_registros: TProgressBar
          Left = 13
          Top = 433
          Width = 736
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 8
          Visible = False
        end
        object Button1: TButton
          Left = 634
          Top = 398
          Width = 75
          Height = 25
          Caption = 'Exportar'
          TabOrder = 9
          Visible = False
          OnClick = Button1Click
        end
        object btn_email: TButton
          Left = 709
          Top = 400
          Width = 75
          Height = 25
          Caption = 'E-mail Antigo'
          TabOrder = 10
          Visible = False
          OnClick = btn_emailClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Por Lote'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object lbl_totalbenefiDesc: TLabel
          Left = 20
          Top = 433
          Width = 238
          Height = 16
          Caption = 'Total de Beneficiários com e-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_totalbenefi: TLabel
          Left = 266
          Top = 433
          Width = 9
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 20
          Top = 408
          Width = 206
          Height = 16
          Caption = 'Total sem Extrato no Periodo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_semExtrato: TLabel
          Left = 231
          Top = 408
          Width = 9
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 20
          Top = 383
          Width = 110
          Height = 16
          Caption = 'Total Enviados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_enviados: TLabel
          Left = 139
          Top = 383
          Width = 9
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_enviarEmailLote: TPDJButton
          Left = 48
          Top = 64
          Width = 401
          Height = 25
          Hint = '   Enviar Extrato para todos beneficiários'
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
          Enabled = False
          Caption = '   Enviar Extrato para todos beneficiários'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_enviarEmailLoteClick
          TabOrder = 0
        end
        object Panel6: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Data de Atendimento de                                      ' +
            '                   até'
          TabOrder = 1
          object edt_dtinicialLote: TDCDateEdit
            Tag = -5
            Left = 136
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtfinalLote: TDCDateEdit
            Tag = -5
            Left = 324
            Top = 5
            Width = 153
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object pgb_lote: TProgressBar
          Left = 18
          Top = 352
          Width = 731
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
        object lsb_historico: TListBox
          Left = 18
          Top = 113
          Width = 737
          Height = 229
          ItemHeight = 13
          TabOrder = 3
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
  object NMSMTP1: TNMSMTP
    Port = 25
    ReportLevel = 0
    EncodeType = uuMime
    ClearParams = True
    SubType = mtPlain
    Charset = 'us-ascii'
    Left = 712
    Top = 425
  end
  object NMPOP3: TNMPOP3
    Port = 110
    ReportLevel = 0
    Parse = False
    DeleteOnRead = False
    Left = 744
    Top = 425
  end
end
