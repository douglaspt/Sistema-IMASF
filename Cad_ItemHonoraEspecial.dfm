inherited Frm_Cad_ItemHonoraEspecial: TFrm_Cad_ItemHonoraEspecial
  Caption = 'Frm_Cad_ItemHonoraEspecial'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_novo: TPDJButton
      Left = 4
      Top = 4
      Width = 162
      Height = 25
      Hint = 'Adicionar Novo Registro'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888777777777777777778888880000000000000000078888
        880FFFFFFFFFFFFFFF078888880F000FF000FF000F078888880FFFFFFFFFFFFF
        FF078888880F000FF000FF000F078888880FFFFFFFFFFFFFFF078888880F000F
        F000FF000F07888887BFFFFFFFFFFFFFFF07BF8887FBF0BFF000FF000F078788
        87BFFF7BFFFFFFFFFF0788B887FFF7B4444444444447888FB7BB7FF44FFF44FF
        F44777777BFBB44444444444444888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      GlyphHot.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888777777777777777778888884444444444444444478888
        884FFFFFFFFFFFFFFF478888884F444FF444FF444F478888884FFFFFFFFFFFFF
        FF478888884F444FF444FF444F478888884FFFFFFFFFFFFFFF478888884F444F
        F444FF444F47888887BFFFFFFFFFFFFFFF47BF8887FBF4BFF444FF444F478788
        87BFFF7BFFFFFFFFFF4788B887FFF7BCCCCCCCCCCCC7888FB7BB7FFCCFFFCCFF
        FCC777777BFBBCCCCCCCCCCCCCC888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      Caption = '&Incluir / Alterar'
      OnClick = btn_novoClick
      TabOrder = 1
    end
  end
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
        OnShow = TabSheet1Show
        object Panel4: TPanel
          Tag = -1
          Left = 0
          Top = 132
          Width = 790
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            '    Fator Multiplicador                                         ' +
            '                           Dt. Validade'
          TabOrder = 4
          object edt_FatorMult_ihe: TDCEdit
            Left = 120
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 250
            TabOrder = 0
          end
          object edt_dtvalidade_ihe: TDCDateEdit
            Left = 375
            Top = 5
            Width = 138
            Height = 21
            TabOrder = 1
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 99
          Width = 790
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            '    Nº Auxiliares                                               ' +
            '                                    Vl. Filme'
          TabOrder = 3
          object edt_NumAuxiliares_ihe: TDCEdit
            Left = 120
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 250
            TabOrder = 0
          end
          object edt_vlFilme_ihe: TDCEdit
            Left = 375
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 250
            TabOrder = 1
          end
        end
        object Panel32: TPanel
          Tag = -1
          Left = 0
          Top = 66
          Width = 790
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            '    Cod. Plano                                                  ' +
            '                             Vl. Honorário                      ' +
            '                           Porte Anestésico    '
          TabOrder = 2
          object edt_vlHonorario_ihe: TDCEdit
            Left = 375
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 250
            TabOrder = 1
          end
          object cbx_cod_plano: TDCComboBox
            Left = 119
            Top = 5
            Width = 110
            Height = 21
            TabOrder = 0
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object edt_PorteAnestesico_ihe: TDCEdit
            Left = 603
            Top = 5
            Width = 110
            Height = 21
            MaxLength = 250
            TabOrder = 2
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 0
          Top = 33
          Width = 790
          Height = 33
          Alignment = taLeftJustify
          Caption = '    Item de Serviço'
          TabOrder = 1
          object edt_cod_itemservico: TDCChoiceEdit
            Tag = -10
            Left = 120
            Top = 5
            Width = 110
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnExit = edt_cod_itemservicoExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_itemservicoButtonClick
          end
          object edt_descricao_itc: TDCEdit
            Left = 236
            Top = 5
            Width = 426
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 80
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel9: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 790
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Cod. Conveniado'
          TabOrder = 0
          object edt_nome_con: TDCEdit
            Left = 236
            Top = 5
            Width = 426
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 80
            ReadOnly = True
            TabOrder = 1
          end
          object edt_cod_conveniado: TDCChoiceEdit
            Left = 120
            Top = 5
            Width = 110
            Height = 21
            Hint = 
              'Digite o código que se deseja alterar ou clique no botão para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            OnExit = edt_cod_conveniadoExit
            Alignment = taRightJustify
            OnButtonClick = edt_cod_conveniadoButtonClick
          end
        end
        object Panel38: TPanel
          Tag = -1
          Left = 0
          Top = 426
          Width = 790
          Height = 32
          Align = alBottom
          Alignment = taLeftJustify
          Caption = 
            '    Data de Alteração                                           ' +
            '                       Alterado por'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object edt_dtalteracao_ihe: TDCDateEdit
            Tag = -1
            Left = 124
            Top = 5
            Width = 217
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ReadOnly = True
            Checked = True
            ButtonExist = False
            Kind = dkDate
            ShowWeekDay = True
          end
          object cbx_cod_usuario: TDCComboBox
            Tag = -1
            Left = 468
            Top = 5
            Width = 306
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDown
            ShowCheckBox = True
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Histórico'
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
end
