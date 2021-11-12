inherited Frm_Mov_2051: TFrm_Mov_2051
  Caption = 'Frm_Mov_2051'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Image2: TImage [1]
      Left = 1
      Top = 1
      Width = 798
      Height = 31
      Align = alClient
    end
  end
  inherited Panel3: TPanel
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 488
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 796
        Height = 486
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados'
          object Panel4: TPanel
            Tag = -2
            Left = 12
            Top = 25
            Width = 645
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Conveniado'
            TabOrder = 0
            object edt_cod_conveniado: TDCChoiceEdit
              Tag = -2
              Left = 100
              Top = 5
              Width = 90
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
            object edt_nome_con: TDCEdit
              Tag = -10
              Left = 196
              Top = 5
              Width = 410
              Height = 21
              Color = clInfoBk
              MaxLength = 80
              ReadOnly = True
              TabOrder = 1
            end
          end
          object Panel7: TPanel
            Tag = -1
            Left = 12
            Top = 57
            Width = 645
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '   Criticas                         Conveniado                  ' +
              '          Beneficiario                               CRM        ' +
              '              Procedimento'
            TabOrder = 1
            object edt_criticaBeneficiario: TDCEdit
              Left = 339
              Top = 4
              Width = 27
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 1
              TabOrder = 1
            end
            object edt_criticaCRM: TDCEdit
              Left = 451
              Top = 5
              Width = 27
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 1
              TabOrder = 2
            end
            object edt_criticaConveniado: TDCEdit
              Left = 196
              Top = 3
              Width = 27
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 1
              TabOrder = 0
            end
            object edt_criticaItem: TDCEdit
              Left = 578
              Top = 3
              Width = 27
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 1
              TabOrder = 3
            end
          end
          object dbg_conveniado: TDBGrid
            Left = 5
            Top = 5
            Width = 770
            Height = 400
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_conveniado'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_con'
                Width = 370
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'criticaConveniado'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'criticaBeneficiario'
                Title.Caption = 'Beneficiário'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'criticaCRM'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'criticaItem'
                Width = 87
                Visible = True
              end>
          end
          object btn_novo_med: TPDJButton
            Left = 49
            Top = 426
            Width = 109
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Adicionar '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_novo_medClick
            TabStop = True
            TabOrder = 3
          end
          object btn_alterar_med: TPDJButton
            Left = 162
            Top = 426
            Width = 109
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = 'A&lterar '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_alterar_medClick
            TabStop = True
            TabOrder = 4
          end
          object btn_Salvar_med: TPDJButton
            Left = 274
            Top = 426
            Width = 109
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Salvar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_Salvar_medClick
            TabStop = True
            TabOrder = 5
          end
          object btn_cancelar_med: TPDJButton
            Left = 387
            Top = 426
            Width = 109
            Height = 25
            Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Enabled = False
            Caption = '&Cancelar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_cancelar_medClick
            TabStop = True
            TabOrder = 6
          end
          object btn_Remover_med: TPDJButton
            Left = 500
            Top = 426
            Width = 109
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Caption = '&Excluir'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_Remover_medClick
            TabStop = True
            TabOrder = 7
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
            Width = 785
            Height = 184
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
    Left = 640
    Top = 529
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_med_criticaAutorizacaoItem
    Left = 609
    Top = 533
  end
end
