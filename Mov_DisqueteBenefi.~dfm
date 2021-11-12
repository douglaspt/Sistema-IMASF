inherited Frm_Mov_DisqueteBenefi: TFrm_Mov_DisqueteBenefi
  Caption = 'Frm_Mov_DisqueteBenefi'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 486
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados '
        object lbl_linha: TLabel
          Left = 1
          Top = 442
          Width = 3
          Height = 13
          Caption = '.'
        end
        object btn_carregarArquivo: TPDJButton
          Left = 24
          Top = 169
          Width = 533
          Height = 25
          Hint = 'Visualiza e Imprime Autorização de Pagamento'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Carregar Arquivo'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_carregarArquivoClick
          TabOrder = 4
        end
        object btn_atualizaCadastro: TPDJButton
          Left = 24
          Top = 205
          Width = 533
          Height = 25
          Hint = 'Visualiza e Imprime Autorização de Pagamento'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Atualizar Salário'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_atualizaCadastroClick
          TabOrder = 5
        end
        object btn_atualizaCadServidores: TPDJButton
          Left = 24
          Top = 241
          Width = 533
          Height = 25
          Hint = 'Visualiza e Imprime Autorização de Pagamento'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Atualizar Cadastro de Servidores'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_atualizaCadServidoresClick
          TabOrder = 6
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 3
          object edt_ano: TBEdit
            Left = 380
            Top = 5
            Width = 75
            Height = 21
            MaxLength = 4
            TabOrder = 0
            NumbersOnly = False
            EditMask = '9999'
          end
          object cbx_cod_mes: TBComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
          end
        end
        object ProgressBar1: TProgressBar
          Left = 1
          Top = 417
          Width = 783
          Height = 24
          Min = 0
          Max = 100
          TabOrder = 7
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Empresa'
          TabOrder = 0
          object cbx_cod_empresafolha: TBComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = cbx_cod_empresafolhaChange
          end
        end
        object Panel4: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Ultima Refer. Mês/Ano                                       ' +
            '                                                                ' +
            '                      Data do ultimo Arquivo'
          TabOrder = 1
          object ed2_ano: TBEdit
            Left = 380
            Top = 5
            Width = 75
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 4
            TabOrder = 0
            NumbersOnly = False
            EditMask = '9999'
          end
          object cb2_cod_mes: TBComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            Style = csDropDownList
            Color = clInfoBk
            Enabled = False
            ItemHeight = 13
            TabOrder = 1
          end
          object edt_dtsistema_abe: TBEdit
            Left = 622
            Top = 5
            Width = 146
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 4
            TabOrder = 2
            NumbersOnly = False
            EditMask = '9999'
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Ultima Seq. PMSBC                                           ' +
            '    Ultima Seq. SBCPREV                                         ' +
            '      (Tabela de Parametros)'
          TabOrder = 2
          object btn_atualizar: TSpeedButton
            Left = 624
            Top = 3
            Width = 93
            Height = 25
            Hint = 'Atualizar para sequência do Arquivo'
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
          object edt_seqAsecoPMSBC: TBEdit
            Left = 140
            Top = 5
            Width = 75
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 4
            TabOrder = 0
            NumbersOnly = False
            EditMask = '9999'
          end
          object edt_seqAsecoSBCPREV: TBEdit
            Left = 380
            Top = 5
            Width = 75
            Height = 21
            Color = clInfoBk
            Enabled = False
            MaxLength = 4
            TabOrder = 1
            NumbersOnly = False
            EditMask = '9999'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Operações'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 785
          Height = 458
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
    Left = 632
    Top = 193
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    InitialDir = 'W:\ASECO'
    Title = 'IMASF - Selecão de movimento para leitura'
    Left = 668
    Top = 196
  end
end
