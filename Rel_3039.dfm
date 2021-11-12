inherited Frm_Rel_3039: TFrm_Rel_3039
  Caption = 'Frm_Rel_3039'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Limpar todos os campos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = Btn_LimpaCamposClick
      TabOrder = 1
    end
    object PDJButton1: TPDJButton
      Left = 406
      Top = 4
      Width = 256
      Height = 25
      Hint = 'Imprime Ficha Cadastral do Segurado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Benefici�rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Panel9: TPanel
          Tag = -1
          Left = 0
          Top = 193
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Situa��o                                            '
          TabOrder = 7
          object cbx_cod_sitbeneficiario: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            OnChange = cbx_cod_sitbeneficiarioChange
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object rdb_normal: TRadioButton
            Left = 441
            Top = 9
            Width = 59
            Height = 17
            Caption = 'Normal'
            TabOrder = 1
            OnClick = rdb_normalClick
          end
          object rdb_cancelado: TRadioButton
            Left = 521
            Top = 9
            Width = 73
            Height = 17
            Caption = 'Cancelado'
            TabOrder = 2
            OnClick = rdb_normalClick
          end
          object rdb_suspenso: TRadioButton
            Left = 611
            Top = 9
            Width = 73
            Height = 17
            Caption = 'Suspenso'
            TabOrder = 3
            OnClick = rdb_normalClick
          end
        end
        object Panel8: TPanel
          Tag = -1
          Left = 0
          Top = 161
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Tipo de Segurado                                            '
          TabOrder = 6
          object cbx_cod_tiposegurado: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 129
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Cod.Empresa                                            '
          TabOrder = 5
          object cbx_cod_empresa: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 790
          Height = 33
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Plano                                            '
          TabOrder = 4
          object cbx_cod_plano: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 353
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Titularidade                                            '
          TabOrder = 2
          Visible = False
          object edt_titulacartei_ben: TDCEdit
            Tag = -1
            Left = 125
            Top = 5
            Width = 70
            Height = 21
            MaxLength = 30
            TabOrder = 0
            EditMask = '999999'
          end
        end
        object Panel4: TPanel
          Tag = -2
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Inscri��o                                              '
          TabOrder = 1
          object edt_inscricao_ben: TDCEdit
            Tag = -1
            Left = 125
            Top = 5
            Width = 70
            Height = 21
            MaxLength = 30
            TabOrder = 0
            EditMask = '999999'
          end
        end
        object Panel6: TPanel
          Tag = -2
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '   Cod.Benefici�rio                                             ' +
            ' '
          TabOrder = 0
          object edt_cod_beneficiario: TDCEdit
            Tag = -1
            Left = 125
            Top = 5
            Width = 70
            Height = 21
            MaxLength = 30
            TabOrder = 0
            EditMask = '999999'
          end
        end
        object Panel29: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Matricula                                            '
          TabOrder = 3
          object edt_matriculaprinc_seg: TDCEdit
            Tag = -1
            Left = 125
            Top = 5
            Width = 70
            Height = 21
            MaxLength = 30
            TabOrder = 0
            EditMask = '999999'
          end
        end
        object Panel34: TPanel
          Tag = -1
          Left = 0
          Top = 225
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Local de Desconto'
          TabOrder = 8
          object cbx_cod_empresafolha: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel32: TPanel
          Tag = -1
          Left = 0
          Top = 257
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Tipo de Dependente'
          TabOrder = 9
          object cbx_cod_tipodependente: TDCComboBox
            Tag = -1
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel37: TPanel
          Tag = -1
          Left = 0
          Top = 289
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Classifica��o do Plano'
          TabOrder = 10
          object cbx_cod_classificacaoPlano: TDCComboBox
            Tag = -5
            Left = 125
            Top = 5
            Width = 300
            Height = 21
            Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel40: TPanel
          Tag = -1
          Left = 0
          Top = 321
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   N�vel de Car�ncia'
          TabOrder = 11
          object cbx_cod_nivelcar: TDCComboBox
            Tag = -5
            Left = 125
            Top = 5
            Width = 0
            Height = 21
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = #12
            OnChange = cbx_cod_nivelcarChange
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
          object rdb_nenhuma: TRadioButton
            Left = 125
            Top = 7
            Width = 72
            Height = 17
            Caption = 'Nenhuma'
            TabOrder = 1
            OnClick = rdb_nenhumaClick
          end
          object rdb_todas: TRadioButton
            Left = 300
            Top = 7
            Width = 73
            Height = 17
            Caption = 'Todas'
            Checked = True
            TabOrder = 2
            TabStop = True
            OnClick = rdb_todasClick
          end
          object rdb_Individual: TRadioButton
            Left = 205
            Top = 7
            Width = 72
            Height = 17
            Caption = 'Individual'
            TabOrder = 3
            OnClick = rdb_IndividualClick
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Segurado'
        ImageIndex = 5
        object Panel35: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Forma Admiss�o                                            '
          TabOrder = 0
          object cbx_cod_formaadm: TDCComboBox
            Tag = -5
            Left = 118
            Top = 5
            Width = 300
            Height = 21
            Hint = 'SE O SEGURADO � CONCURSADO, CONTRATADO,...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel36: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Situa��o na Empresa'
          TabOrder = 1
          object cbx_cod_situacempr: TDCComboBox
            Tag = -5
            Left = 118
            Top = 5
            Width = 300
            Height = 21
            Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
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
      object TabSheet4: TTabSheet
        Caption = 'Dependentes'
        ImageIndex = 3
        object Panel31: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Grau de Parentesco'
          TabOrder = 0
          object cbx_cod_grauparent: TDCComboBox
            Tag = -1
            Left = 118
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel33: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Estado F�sico'
          TabOrder = 1
          object cbx_cod_estfisico: TDCComboBox
            Tag = -1
            Left = 118
            Top = 5
            Width = 300
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Por Data'
        ImageIndex = 1
        object Panel11: TPanel
          Tag = -1
          Left = 0
          Top = 2
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Nascimento             de                            ' +
            '                             at�'
          TabOrder = 0
          object edt_dtnascimIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtnascimFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 66
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Situa��o                 de                          ' +
            '                               at�'
          TabOrder = 2
          object edt_dtsituacaoIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtsituacaoFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel14: TPanel
          Tag = -1
          Left = 0
          Top = 98
          Width = 798
          Height = 31
          Alignment = taLeftJustify
          Caption = 
            '   Data de Car�ncia                 de                          ' +
            '                               at�'
          TabOrder = 3
          object edt_dtcarenciaIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtcarenciaFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel15: TPanel
          Tag = -1
          Left = 0
          Top = 129
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Dt. Altera��o do Plano         de                            ' +
            '                             at�'
          TabOrder = 4
          object edt_dtplanoIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtplanoFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel12: TPanel
          Tag = -1
          Left = 0
          Top = 34
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Inscri��o                 de                         ' +
            '                                at�'
          TabOrder = 1
          object edt_dtinscricaoIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtinscricaoFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel27: TPanel
          Tag = -1
          Left = 0
          Top = 193
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Renova��o            de                              ' +
            '                           at�'
          TabOrder = 6
          object edt_dtrenovacaoIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtrenovacaoFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel28: TPanel
          Tag = -1
          Left = 0
          Top = 161
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Admiss�o                de                           ' +
            '                              at�'
          TabOrder = 5
          object edt_dtadmissIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtadmissFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel30: TPanel
          Tag = -1
          Left = 0
          Top = 225
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data Limite                           de                     ' +
            '                                    at�'
          TabOrder = 7
          object edt_dtlimiteIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtlimiteFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel41: TPanel
          Tag = -1
          Left = 0
          Top = 257
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data do Sistema                   de                         ' +
            '                                at�'
          TabOrder = 8
          object edt_dtcadastroIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtcadastroFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel42: TPanel
          Tag = -1
          Left = 0
          Top = 289
          Width = 798
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Data de Altera��o                de                          ' +
            '                               at�'
          TabOrder = 9
          object edt_dtalteracaoIni: TDCDateEdit
            Tag = -5
            Left = 180
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtalteracaoFin: TDCDateEdit
            Tag = -5
            Left = 356
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Por Dados Pessoais'
        ImageIndex = 2
        object Panel10: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Estado                                            '
          TabOrder = 7
          object cbx_cod_uf: TDCComboBox
            Tag = -1
            Left = 118
            Top = 5
            Width = 140
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel18: TPanel
          Tag = -2
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Nome                                              '
          TabOrder = 0
          object edt_nome_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 355
            Height = 21
            MaxLength = 50
            TabOrder = 0
          end
        end
        object Panel19: TPanel
          Tag = -2
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Nome do Pai                                              '
          TabOrder = 1
          object edt_nomepai_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 355
            Height = 21
            MaxLength = 50
            TabOrder = 0
          end
        end
        object Panel20: TPanel
          Tag = -2
          Left = 0
          Top = 64
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Nome da M�e                                              '
          TabOrder = 2
          object edt_nomemae_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 355
            Height = 21
            MaxLength = 50
            TabOrder = 0
          end
        end
        object Panel21: TPanel
          Tag = -2
          Left = 0
          Top = 96
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Endere�o                                             '
          TabOrder = 3
          object edt_endereco_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 355
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
        end
        object Panel22: TPanel
          Tag = -2
          Left = 0
          Top = 128
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Bairro                                              '
          TabOrder = 4
          object edt_bairro_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 355
            Height = 21
            MaxLength = 30
            TabOrder = 0
          end
        end
        object Panel23: TPanel
          Tag = -2
          Left = 0
          Top = 160
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Cidade                                              '
          TabOrder = 5
          object edt_cidade_ben: TDCEdit
            Tag = -1
            Left = 582
            Top = 5
            Width = 59
            Height = 21
            MaxLength = 60
            TabOrder = 0
            Visible = False
          end
          object cbx_cod_cidadeCep: TDCComboBox
            Tag = -1
            Left = 118
            Top = 5
            Width = 213
            Height = 21
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel24: TPanel
          Tag = -2
          Left = 0
          Top = 288
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   RG                                             '
          TabOrder = 9
          object edt_rg_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 140
            Height = 21
            MaxLength = 20
            TabOrder = 0
          end
        end
        object Panel25: TPanel
          Tag = -2
          Left = 0
          Top = 320
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   CPF                                             '
          TabOrder = 10
          object edt_cpf_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 140
            Height = 21
            MaxLength = 20
            TabOrder = 0
          end
        end
        object Panel26: TPanel
          Tag = -2
          Left = 0
          Top = 352
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Fone  Residencial                                            '
          TabOrder = 11
          object edt_foneresi_ben: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 140
            Height = 21
            MaxLength = 40
            TabOrder = 0
          end
        end
        object Panel17: TPanel
          Tag = -1
          Left = 0
          Top = 384
          Width = 790
          Height = 31
          Alignment = taLeftJustify
          Caption = 
            '   Idade               de                                     at' +
            '�                                            '
          TabOrder = 12
          object edt_idadeIni: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 58
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
          object edt_idadeFin: TDCEdit
            Tag = -1
            Left = 255
            Top = 5
            Width = 58
            Height = 21
            MaxLength = 60
            TabOrder = 1
          end
        end
        object Panel16: TPanel
          Tag = -1
          Left = 0
          Top = 415
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '   Cep                  de                                     a' +
            't�                                            '
          TabOrder = 13
          object edt_cepIni: TDCEdit
            Tag = -1
            Left = 118
            Top = 5
            Width = 58
            Height = 21
            MaxLength = 60
            TabOrder = 0
          end
          object edt_cepFin: TDCEdit
            Tag = -1
            Left = 255
            Top = 5
            Width = 58
            Height = 21
            MaxLength = 60
            TabOrder = 1
          end
        end
        object Panel38: TPanel
          Tag = -2
          Left = 0
          Top = 192
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Regi�o                                              '
          TabOrder = 6
          object cbx_cod_regiao: TDCComboBox
            Tag = -1
            Left = 118
            Top = 3
            Width = 213
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel39: TPanel
          Tag = -2
          Left = 0
          Top = 256
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '   Sexo'
          TabOrder = 8
          object cbx_sexo_ben: TDCComboBox
            Tag = -1
            Left = 118
            Top = 5
            Width = 140
            Height = 21
            TabOrder = 0
            Items.Strings = (
              'Masculino'
              'Feminino')
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Visualizar'
        ImageIndex = 4
        object btn_atualizar: TSpeedButton
          Left = 30
          Top = 5
          Width = 221
          Height = 25
          Caption = '&Atualizar'
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
        object DBGrid1: TDBGrid
          Left = 0
          Top = 36
          Width = 773
          Height = 370
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'inscricao_ben'
              Title.Caption = 'Inscri��o'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'titulacartei_ben'
              Title.Caption = 'Tit.'
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_ben'
              Title.Caption = 'Nome'
              Width = 269
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_plano'
              Title.Caption = 'Plano'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_empresa'
              Title.Caption = 'Emp.'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsituacao_ben'
              Title.Caption = 'Dt.Situa��o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idade_ben'
              Title.Caption = 'Idade'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sit'
              Title.Caption = 'Situa��o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtrenovacao_dep'
              Title.Caption = 'Dt.Renova��o'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtnascim_ben'
              Title.Caption = 'Dt.Nascimento'
              Width = 83
              Visible = True
            end>
        end
        object PDJButton2: TPDJButton
          Left = 398
          Top = 425
          Width = 323
          Height = 25
          Hint = 'Imprime Ficha Cadastral do Segurado'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Enviar Inscri��es para Emiss�o de Etiquetas'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          Visible = False
          TabOrder = 1
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
    Left = 65531
    Top = 501
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal3.spc_cons_adm_listabeneficiario
    Left = 588
    Top = 69
  end
end
