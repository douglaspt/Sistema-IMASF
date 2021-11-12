inherited Frm_Mov_ExcluirConta: TFrm_Mov_ExcluirConta
  Caption = 'Frm_Mov_ExcluirConta'
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
        Caption = 'Dados'
        object Panel4: TPanel
          Tag = -2
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Código do Conveniado'
          TabOrder = 0
          object edt_cod_conveniado: TDCChoiceEdit
            Tag = -2
            Left = 140
            Top = 5
            Width = 89
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnExit = edt_cod_conveniadoExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_conveniadoButtonClick
            EditMask = '99999-9'
          end
          object edt_razao_con: TDCEdit
            Tag = -10
            Left = 236
            Top = 5
            Width = 413
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel7: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 790
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = 
            '    Mês / Ano de Referência                                     ' +
            '                                                                ' +
            '                           Sequência'
          TabOrder = 1
          object cbx_cod_mes: TDCComboBox
            Tag = -1
            Left = 140
            Top = 5
            Width = 233
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
              '1 - Conta não recebida por meio Magnético e deverá ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_ano: TDCEdit
            Left = 380
            Top = 4
            Width = 75
            Height = 21
            TabOrder = 1
          end
          object edt_sequencia_con: TDCEdit
            Tag = -10
            Left = 574
            Top = 4
            Width = 75
            Height = 21
            Color = clWhite
            MaxLength = 12
            TabOrder = 2
          end
        end
        object btn_excluiconta: TPDJButton
          Left = 250
          Top = 104
          Width = 289
          Height = 25
          Hint = 'Voltar para a tela principal'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Excluir Conta'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_excluicontaClick
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Histórico'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object stg_audi: TStringGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 785
          Height = 455
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
end
