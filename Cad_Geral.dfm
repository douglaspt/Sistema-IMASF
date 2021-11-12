inherited Frm_Cad_Geral: TFrm_Cad_Geral
  Left = 2
  Top = 2
  Caption = 'Frm_Cad_Geral'
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 798
    inherited Image1: TImage
      Width = 796
    end
  end
  inherited Panel2: TPanel
    Width = 798
    inherited Image3: TImage
      Width = 796
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
    object btn_situacao: TPDJButton
      Left = 508
      Top = 4
      Width = 101
      Height = 25
      Hint = 'Altera a Situa��o do Conveniado'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Situa��o'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_situacaoClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Conveniado'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 140
        Top = 5
        Width = 89
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object pnl_alerta: TPanel
        Left = 232
        Top = 5
        Width = 557
        Height = 21
        BevelOuter = bvLowered
        Caption = 'CONVENIADO SUPENSO'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Reduzido                                               ' +
        '                                  Nome Fantasia'
      TabOrder = 1
      object edt_nome_con: TDCEdit
        Tag = -1
        Left = 408
        Top = 5
        Width = 381
        Height = 21
        MaxLength = 60
        TabOrder = 1
        Text = 'edt_nome_con'
      end
      object edt_nomereduzido_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 20
        TabOrder = 0
        OnEnter = edt_nomereduzido_conEnter
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    C.N.P.J.                                                    ' +
        '                                                                ' +
        '  Processo'
      TabOrder = 3
      object edt_cnpj_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 173
        Height = 21
        MaxLength = 60
        TabOrder = 0
      end
      object edt_processo_con: TDCEdit
        Tag = -1
        Left = 464
        Top = 5
        Width = 105
        Height = 21
        MaxLength = 60
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Raz�o Social                                                ' +
        '                                                                ' +
        '                                                         Dt. Sit' +
        'ua��o'
      TabOrder = 2
      object edt_razao_con: TDCEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 429
        Height = 21
        MaxLength = 60
        TabOrder = 0
        Text = 'edt_razao_con'
      end
      object edt_dtsituacao_con: TDCDateEdit
        Tag = -1
        Left = 648
        Top = 5
        Width = 141
        Height = 21
        Enabled = False
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object PageControl: TPageControl
      Tag = -1
      Left = 4
      Top = 132
      Width = 793
      Height = 353
      ActivePage = TabSheet2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      object TabSheet2: TTabSheet
        Caption = 'Dire��o / Contato'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Dire��o Cl�nica '
          TabOrder = 0
          object Panel7: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Nome '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_nomedirecao_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Telefone para Contato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_fonedirecao_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Registro em Org�o de Classe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_dtcadastro_con: TDCDateEdit
              Tag = -1
              Left = 416
              Top = 5
              Width = 173
              Height = 21
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_registrodirecao_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_cnpj_con'
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 136
          Width = 773
          Height = 113
          Caption = 'Contato '
          TabOrder = 1
          object Panel10: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Nome '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_nomecontato_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_nome_con'
            end
          end
          object Panel11: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Telefone para Contato                                       ' +
              '                                              Fone 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_fonecont1_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
            end
            object edt_fonecont2_con: TDCEdit
              Tag = -1
              Left = 416
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_razao_con'
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    N�mero do FAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_cod_sitconveniado: TDCEdit
              Tag = -1
              Left = 248
              Top = 5
              Width = 49
              Height = 21
              MaxLength = 60
              TabOrder = 1
            end
            object edt_faxcont_con: TDCEdit
              Tag = -1
              Left = 160
              Top = 5
              Width = 173
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_cnpj_con'
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'OBS'
        ImageIndex = 3
        object GroupBox3: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Datas do Con�nio '
          TabOrder = 0
          object Panel13: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Data de Assinatura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_dtassinatura_con: TDCDateEdit
              Tag = -1
              Left = 144
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel14: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Data de Renova��o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_dtrenovacao_con: TDCDateEdit
              Tag = -1
              Left = 144
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel15: TPanel
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Prazo para Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
            object DCEdit11: TDCEdit
              Left = 144
              Top = 5
              Width = 153
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_cnpj_con'
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 124
          Width = 773
          Height = 193
          Caption = 'Observa��es '
          TabOrder = 1
          object mem_obs_con: TMemo
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 176
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Lines.Strings = (
              'Memo1')
            MaxLength = 2000
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Endere�os'
        ImageIndex = 4
        object GroupBox5: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Endere�o Jur�dico '
          TabOrder = 0
          object Panel16: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Endere�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_enderecojur_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Bairro                                                      ' +
              '                                                                ' +
              '                   Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_bairrojur_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
            end
            object edt_cidadejur_con: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 1
            end
          end
          object Panel18: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Estado                                                      ' +
              '                CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_cepjur_con: TDCEdit
              Tag = -1
              Left = 288
              Top = 5
              Width = 109
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_cnpj_con'
            end
            object cbx_cod_ufjur_con: TDCComboBox
              Tag = -1
              Left = 128
              Top = 5
              Width = 69
              Height = 21
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 4
          Top = 128
          Width = 773
          Height = 177
          Caption = 'Endere�o Correspond�ncia'
          TabOrder = 1
          object Panel19: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Endere�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_enderecocor_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Bairro                                                      ' +
              '                                                                ' +
              '                   Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_bairrocor_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_razao_con'
            end
            object edt_cidadecor_con: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 269
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_razao_con'
            end
          end
          object Panel21: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Estado                                                      ' +
              '                CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_cepcor_con: TDCEdit
              Tag = -1
              Left = 288
              Top = 5
              Width = 109
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = 'edt_cnpj_con'
            end
            object cbx_cod_ufcor_con: TDCComboBox
              Tag = -1
              Left = 128
              Top = 5
              Width = 69
              Height = 21
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel22: TPanel
            Tag = -1
            Left = 2
            Top = 143
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Web Site'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object edt_site_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_nome_con'
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 2
            Top = 111
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Caption = '    E-Mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object edt_email_con: TDCEdit
              Tag = -1
              Left = 128
              Top = 5
              Width = 429
              Height = 21
              MaxLength = 60
              TabOrder = 0
              Text = 'edt_nome_con'
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Dados Gerais / Tabela de Honor�rios'
        ImageIndex = 5
        object GroupBox7: TGroupBox
          Left = 4
          Top = 4
          Width = 773
          Height = 113
          Caption = 'Dados Gerais'
          TabOrder = 0
          object Panel32: TPanel
            Tag = -1
            Left = 2
            Top = 79
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object chb_constamanual_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 369
              Height = 17
              Caption = 'Conveniado n�o consta do Manual do Benefici�rio'
              TabOrder = 0
            end
          end
          object Panel33: TPanel
            Tag = -1
            Left = 2
            Top = 47
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object chb_autormatmed_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 353
              Height = 17
              Caption = 'Requer Autoriza��o para Administra��o de Medicamentos'
              TabOrder = 0
            end
          end
          object Panel34: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object chb_autormedicamento_con: TCheckBox
              Tag = -1
              Left = 12
              Top = 8
              Width = 337
              Height = 17
              Caption = 'Requer Autoriza��o para Utiliza��o de Material M�dico'
              TabOrder = 0
            end
          end
        end
        object GroupBox8: TGroupBox
          Left = 4
          Top = 140
          Width = 773
          Height = 113
          Caption = 'Honor�rios '
          TabOrder = 1
          object Panel35: TPanel
            Tag = -1
            Left = 2
            Top = 15
            Width = 769
            Height = 32
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Especialidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 192
          Height = 16
          Caption = 'Especialidades Contradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 300
          Width = 71
          Height = 13
          Caption = 'Especialidades'
        end
        object LsB_Especialidade: TListBox
          Left = 8
          Top = 20
          Width = 761
          Height = 257
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
        end
        object cbx_cod_espmedamb: TDCComboBox
          Left = 84
          Top = 293
          Width = 413
          Height = 21
          TabOrder = 1
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDown
          ShowCheckBox = True
        end
        object PDJButton1: TPDJButton
          Left = 580
          Top = 292
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Adcionar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 2
        end
        object PDJButton2: TPDJButton
          Left = 673
          Top = 292
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Remover'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 3
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Planos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        object Label3: TLabel
          Left = 8
          Top = 4
          Width = 516
          Height = 16
          Caption = 
            'Planos em que o Conveniado necessita de Autoriza��o para Atendim' +
            'ento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 300
          Width = 96
          Height = 13
          Caption = 'Plano de Benef�cios'
        end
        object LsB_Plano: TListBox
          Left = 8
          Top = 20
          Width = 761
          Height = 257
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
        end
        object cbx_cod_plano: TDCComboBox
          Left = 116
          Top = 293
          Width = 381
          Height = 21
          TabOrder = 1
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDown
          ShowCheckBox = True
        end
        object PDJButton3: TPDJButton
          Left = 580
          Top = 292
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Adcionar'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton3Click
          TabOrder = 2
        end
        object PDJButton4: TPDJButton
          Left = 673
          Top = 292
          Width = 93
          Height = 25
          Hint = 'Adicionar Novo Registro'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Remover'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton4Click
          TabOrder = 3
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Porte Anest�sico'
        ImageIndex = 8
        object Panel24: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 1                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edt_porte1_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel25: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 2                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object edt_porte2_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel26: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 3                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object edt_porte3_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel27: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 4                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object edt_porte4_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel28: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 5                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object edt_porte5_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel29: TPanel
          Tag = -1
          Left = 0
          Top = 160
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 6                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object edt_porte6_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel30: TPanel
          Tag = -1
          Left = 0
          Top = 192
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 7                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object edt_porte7_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
        object Panel31: TPanel
          Tag = -1
          Left = 0
          Top = 224
          Width = 785
          Height = 32
          Alignment = taLeftJustify
          Caption = 
            '    Porte Anest�sico 8                                          ' +
            '       Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object edt_porte8_pan: TDCFloatEdit
            Left = 280
            Top = 5
            Width = 101
            Height = 21
            TabOrder = 0
            Alignment = taRightJustify
            Masked = False
            ButtonExist = False
            DataType.Kind = deFloat
            DataType.Precision = -1
            DataType.Digits = -1
          end
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
end
