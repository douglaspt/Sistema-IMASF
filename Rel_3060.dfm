inherited Frm_Rel_3060: TFrm_Rel_3060
  Caption = 'Frm_Rel_3060'
  ClientHeight = 576
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 524
  end
  inherited Panel3: TPanel
    Height = 483
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 796
      Height = 538
      ActivePage = TabSheet2
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Movimentação ASECO'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object pnl_dtsituacao: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '   Data Alteração DPD         de                                ' +
            '                         até'
          TabOrder = 0
          object edt_dtOcorrenciaInicial1: TDCDateEdit
            Tag = -5
            Left = 160
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtOcorrenciaFinal1: TDCDateEdit
            Tag = -5
            Left = 340
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object pnl_situacaodpd: TPanel
          Tag = -1
          Left = 0
          Top = 128
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Situação DPD'
          TabOrder = 4
          object cbx_cod_situacaodpd: TDCComboBox
            Tag = -1
            Left = 160
            Top = 5
            Width = 350
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object btn_limpar: TPDJButton
            Left = 618
            Top = 8
            Width = 26
            Height = 19
            Hint = 'Limpa Filtros, exceto as datas'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'X'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            OnClick = btn_limparClick
            ShowHint = True
            TabOrder = 1
          end
        end
        object btn_movaseco: TPDJButton
          Left = 122
          Top = 209
          Width = 335
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Imprimir Movimentação ASECO (Atualização)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_movasecoClick
          TabOrder = 5
        end
        object pnl_situacaoimasf: TPanel
          Left = 0
          Top = 64
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Status IMASF'
          TabOrder = 2
          object cbx_cod_situacao_fpm: TDCComboBox
            Tag = -1
            Left = 160
            Top = 5
            Width = 173
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object pnl_classificacaodpd: TPanel
          Left = 0
          Top = 96
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Classificação Situação DPD'
          TabOrder = 3
          object cbx_classificacaositdpd: TDCComboBox
            Tag = -1
            Left = 160
            Top = 5
            Width = 173
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '   Local de Desconto'
          TabOrder = 1
          object cbx_cod_empresafolha: TDCComboBox
            Tag = -1
            Left = 160
            Top = 5
            Width = 173
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
      object TabSheet3: TTabSheet
        Caption = 'Movimentação Cadastro de Beneficiários'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object pnl_ocorrencia: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Data de Ocorrência        de                                ' +
            '                         até'
          TabOrder = 0
          object edt_dtOcorrenciaInicial: TDCDateEdit
            Tag = -5
            Left = 160
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtOcorrenciaFinal: TDCDateEdit
            Tag = -5
            Left = 340
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object pnl_referencia: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Mês e Ano de Referência'
          TabOrder = 1
          Visible = False
          object cbx_cod_mes: TDCComboBox
            Tag = -1
            Left = 160
            Top = 5
            Width = 175
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Items.Strings = (
              '')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_ano: TDCEdit
            Left = 340
            Top = 5
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            EditMask = '9999'
          end
        end
        object pnl_dtsistema: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 788
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Data do Sistema            de                               ' +
            '                          até'
          TabOrder = 2
          Visible = False
          object edt_dtsistemaInicial: TDCDateEdit
            Tag = -5
            Left = 160
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
          object edt_dtsistemaFinal: TDCDateEdit
            Tag = -5
            Left = 340
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object PDJButton3: TPDJButton
          Left = 122
          Top = 140
          Width = 335
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Imprimir Movimentação Cadastral (Simplificado)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton3Click
          TabOrder = 3
        end
        object PDJButton2: TPDJButton
          Left = 122
          Top = 209
          Width = 335
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Imprimir Movimentação Cadastral (Detalhado)'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton2Click
          TabOrder = 4
        end
        object PDJButton1: TPDJButton
          Left = 122
          Top = 277
          Width = 335
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Imprimir Edital'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton1Click
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 122
          Top = 382
          Width = 640
          Height = 61
          TabOrder = 6
          object PDJButton4: TPDJButton
            Left = 8
            Top = 20
            Width = 335
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Imprimir Relação de Motivos'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton4Click
            TabOrder = 0
          end
          object ckb_InscCanc: TCheckBox
            Left = 372
            Top = 27
            Width = 223
            Height = 17
            Caption = 'Imprimir apenas Inscrição e Cancelamento'
            TabOrder = 1
          end
        end
        object rdg_buscar: TRadioGroup
          Left = 575
          Top = 140
          Width = 185
          Height = 162
          Caption = 'Buscar por Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'de Ocorrência'
            'de Referência'
            'do Sistema')
          ParentFont = False
          TabOrder = 7
          OnClick = rdg_buscarClick
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 557
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
end
