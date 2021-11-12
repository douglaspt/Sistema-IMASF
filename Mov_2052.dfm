inherited Frm_Mov_2052: TFrm_Mov_2052
  Caption = 'Frm_Mov_2052'
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
    object btn_novo_med: TPDJButton
      Left = 49
      Top = 4
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
      TabOrder = 1
    end
    object btn_Salvar_med: TPDJButton
      Left = 162
      Top = 4
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
      TabOrder = 2
    end
    object btn_cancelar_med: TPDJButton
      Left = 275
      Top = 4
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
      TabOrder = 3
    end
    object btn_Remover_med: TPDJButton
      Left = 388
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Remover'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_Remover_medClick
      TabStop = True
      TabOrder = 4
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
            Left = 38
            Top = 37
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
              MaxLength = 12
              TabOrder = 1
            end
          end
          object dbg_conveniado: TDBGrid
            Left = 1
            Top = 3
            Width = 784
            Height = 454
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 1
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
                Width = 643
                Visible = True
              end>
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
    Left = 568
    Top = 497
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_med_criticaCRM
    Left = 17
    Top = 373
  end
end
