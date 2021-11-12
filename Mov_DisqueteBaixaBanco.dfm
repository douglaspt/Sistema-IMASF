inherited Frm_Mov_DisqueteBaixaBanco: TFrm_Mov_DisqueteBaixaBanco
  Caption = 'Frm_Mov_DisqueteBaixaBanco'
  ClientHeight = 578
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 526
  end
  inherited Panel3: TPanel
    Height = 485
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 483
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Principal'
        object lbl_linha: TLabel
          Left = 1
          Top = 438
          Width = 24
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object btn_carregarArquivo: TPDJButton
          Left = 8
          Top = 84
          Width = 533
          Height = 25
          Hint = 'Visualiza e Imprime Autorização de Pagamento'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Carregar Arquivo Magnético'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_carregarArquivoClick
          TabOrder = 0
        end
        object btn_atualizaCadastro: TPDJButton
          Left = 8
          Top = 140
          Width = 533
          Height = 25
          Hint = 'Visualiza e Imprime Autorização de Pagamento'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Atualizar Cadastro'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_atualizaCadastroClick
          TabOrder = 1
        end
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 409
          Width = 790
          Height = 24
          Min = 0
          Max = 100
          TabOrder = 2
          Visible = False
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                         '
          TabOrder = 3
          object cbx_cod_mes: TBComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          end
          object edt_ano: TBEdit
            Left = 380
            Top = 5
            Width = 75
            Height = 21
            TabOrder = 1
            NumbersOnly = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist.Operações'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 787
          Height = 452
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
    Top = 559
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
    Left = 208
    Top = 377
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selecão de movimento para leitura'
    Left = 180
    Top = 372
  end
end
