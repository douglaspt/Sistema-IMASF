inherited Frm_Mov_2074: TFrm_Mov_2074
  Caption = 'Frm_Mov_2074'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object pgc_processamento: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 485
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Gerar Arquivos Consignum'
        object GroupBox3: TGroupBox
          Left = 10
          Top = 52
          Width = 465
          Height = 93
          Caption = ' Gerar os Arquivos da Consignum (1002 e 1003) '
          TabOrder = 0
          object btn_geraConsignum: TPDJButton
            Left = 17
            Top = 34
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Enabled = False
            Caption = 'Gerar Arquivos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_geraConsignumClick
            TabOrder = 0
          end
        end
        object pgb_registros: TProgressBar
          Left = 12
          Top = 431
          Width = 772
          Height = 20
          Min = 0
          Max = 100
          TabOrder = 1
          Visible = False
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Gerar Arquivos de Folha'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object GroupBox1: TGroupBox
          Left = 10
          Top = 52
          Width = 460
          Height = 85
          Caption = ' Gerar os Arquivos de Folha (FAEE) '
          TabOrder = 0
          object btn_geraFolha: TPDJButton
            Left = 17
            Top = 34
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Arquivos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_geraFolhaClick
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    M�s / Ano da Ultima Folha'
          TabOrder = 1
          object cbx_cod_mes: TDCComboBox
            Left = 148
            Top = 5
            Width = 149
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
              '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_ano: TDCEdit
            Left = 302
            Top = 5
            Width = 75
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 1
            EditMask = '9999'
          end
        end
        object pgb_folha: TProgressBar
          Left = 10
          Top = 431
          Width = 753
          Height = 20
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
        object GroupBox2: TGroupBox
          Left = 10
          Top = 144
          Width = 754
          Height = 280
          Caption = ' Hist�rico de andamento '
          TabOrder = 3
          object lsb_historico: TListBox
            Left = 8
            Top = 19
            Width = 737
            Height = 254
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object Button1: TButton
          Left = 680
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Teste COP'
          TabOrder = 4
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 680
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Teste CONT'
          TabOrder = 5
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 544
          Top = 120
          Width = 75
          Height = 25
          Caption = 'Button3'
          TabOrder = 6
          OnClick = Button3Click
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Processar Odonto'
        ImageIndex = 3
        object GroupBox4: TGroupBox
          Left = 10
          Top = 20
          Width = 655
          Height = 301
          Caption = 'Processar Odonto'
          TabOrder = 0
          object btn_carregarOdonto: TPDJButton
            Left = 81
            Top = 82
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Carregar Arquivo do Odontologico'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_carregarOdontoClick
            TabOrder = 0
          end
          object btn_baixaOdonto: TPDJButton
            Left = 81
            Top = 198
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Arquivo de Baixa'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_baixaOdontoClick
            TabOrder = 1
          end
          object Panel1: TPanel
            Tag = -1
            Left = 13
            Top = 24
            Width = 615
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Data de Refer�ncia'
            TabOrder = 2
            object cb2_cod_mes: TDCComboBox
              Left = 121
              Top = 5
              Width = 160
              Height = 21
              TabOrder = 0
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object ed2_ano: TDCEdit
              Left = 283
              Top = 5
              Width = 75
              Height = 21
              TabOrder = 1
              EditMask = '9999'
            end
          end
          object btn_gerarDescontoOdonto: TPDJButton
            Left = 81
            Top = 130
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar descontos do Odontologico'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_gerarDescontoOdontoClick
            TabOrder = 3
          end
          object btn_fechamentoOdonto: TPDJButton
            Left = 83
            Top = 245
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Imprimir Fechamento Odonto'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_fechamentoOdontoClick
            TabOrder = 4
          end
        end
        object pgb_odonto: TProgressBar
          Left = 12
          Top = 431
          Width = 772
          Height = 20
          Min = 0
          Max = 100
          TabOrder = 1
          Visible = False
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Gerar Arquivos para o Portal'
        ImageIndex = 4
        OnShow = TabSheet5Show
        object GroupBox5: TGroupBox
          Left = 10
          Top = 20
          Width = 580
          Height = 113
          Caption = ' Gerar Arquivo com valores de Coparticipa��o'
          TabOrder = 0
          object btn_gerarRedeNormal: TPDJButton
            Left = 17
            Top = 22
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Arquivo da Rede Normal'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_gerarRedeNormalClick
            TabOrder = 0
          end
          object btn_gerarRedeReferencia: TPDJButton
            Left = 17
            Top = 69
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Arquivo da Rede Refer�nciada'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_gerarRedeReferenciaClick
            TabOrder = 1
          end
        end
        object pgb_portal: TProgressBar
          Left = 12
          Top = 431
          Width = 772
          Height = 20
          Min = 0
          Max = 100
          TabOrder = 1
          Visible = False
        end
        object GroupBox6: TGroupBox
          Left = 10
          Top = 149
          Width = 580
          Height = 80
          Caption = 'Gerar Arquivo de Atualiza��o dos Benefici�rios'
          TabOrder = 2
          object PDJButton1: TPDJButton
            Left = 17
            Top = 37
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Arquivo de Benefici�rio'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton1Click
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 10
          Top = 245
          Width = 580
          Height = 168
          Caption = 'Coparticipa��o'
          TabOrder = 3
          object btn_coparticipacao: TPDJButton
            Left = 17
            Top = 111
            Width = 430
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Gerar Coparticipa��o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_coparticipacaoClick
            TabOrder = 0
          end
          object Panel4: TPanel
            Tag = -1
            Left = 13
            Top = 20
            Width = 558
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Data de Refer�ncia                                          ' +
              '                                              (Contas M�dicas)'
            TabOrder = 1
            object ed3_ano: TDCEdit
              Left = 283
              Top = 5
              Width = 75
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              EditMask = '9999'
            end
            object cb3_cod_mes: TDCComboBox
              Left = 121
              Top = 5
              Width = 160
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 0
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel5: TPanel
            Tag = -1
            Left = 13
            Top = 52
            Width = 558
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Data de Refer�ncia                                          ' +
              '                                              (Descontos)'
            TabOrder = 2
            object ed4_ano: TDCEdit
              Left = 283
              Top = 5
              Width = 75
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              EditMask = '9999'
            end
            object cb4_cod_mes: TDCComboBox
              Left = 121
              Top = 5
              Width = 160
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 0
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
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
          Height = 444
          Color = clInfoBk
          ColCount = 1
          DefaultRowHeight = 17
          FixedCols = 0
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
    Left = 696
    Top = 217
  end
  object SaveDialog: TSaveDialog
    Left = 616
    Top = 76
  end
  object Qry_Web: TADOQuery
    Connection = ADOPortal
    Parameters = <>
    Left = 720
    Top = 113
  end
  object ADOPortal: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=porta' +
      'lImasf;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 685
    Top = 112
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selec�o de movimento para leitura'
    Left = 653
    Top = 76
  end
end
