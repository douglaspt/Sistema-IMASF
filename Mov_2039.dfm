inherited Frm_Mov_2039: TFrm_Mov_2039
  Caption = 'Frm_Mov_2039'
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
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 233
      Width = 798
      Height = 304
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 796
        Height = 333
        ActivePage = TabSheet1
        Align = alTop
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Horarios'
          object btn_alterar_age: TPDJButton
            Left = 152
            Top = 198
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
            OnClick = btn_alterar_ageClick
            TabOrder = 0
          end
          object btn_Remover_age: TPDJButton
            Left = 490
            Top = 198
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
            OnClick = btn_Remover_ageClick
            TabOrder = 1
          end
          object btn_Salvar_age: TPDJButton
            Left = 264
            Top = 198
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
            OnClick = btn_Salvar_ageClick
            TabOrder = 2
          end
          object btn_cancelar_age: TPDJButton
            Left = 377
            Top = 198
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
            OnClick = btn_cancelar_ageClick
            TabOrder = 3
          end
          object pnl_crm: TPanel
            Tag = -1
            Left = 29
            Top = 21
            Width = 570
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Dia da Semana'
            TabOrder = 4
            object cbx_diaDaSemana_ccl: TBComboBox
              Tag = 1
              Left = 129
              Top = 5
              Width = 160
              Height = 22
              Style = csOwnerDrawFixed
              ItemHeight = 16
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Tag = -1
            Left = 29
            Top = 53
            Width = 570
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Inicio Atend. Manhã                                         ' +
              '                 Fim Atend. Manhã                               ' +
              '                                              '
            TabOrder = 5
            object edt_inicioatendimentomanha_ccl: TDCEdit
              Tag = 1
              Left = 128
              Top = 6
              Width = 93
              Height = 21
              TabOrder = 0
            end
            object edt_fimatendimentomanha_ccl: TDCEdit
              Tag = 1
              Left = 390
              Top = 6
              Width = 93
              Height = 21
              TabOrder = 1
            end
          end
          object Panel4: TPanel
            Tag = -1
            Left = 29
            Top = 85
            Width = 570
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '    Inicio Atend. Tarde                                         ' +
              '                 Fim Atend. Tarde                               ' +
              '                                              '
            TabOrder = 6
            object edt_inicioatendimentotarde_ccl: TDCEdit
              Tag = 1
              Left = 128
              Top = 6
              Width = 93
              Height = 21
              TabOrder = 0
            end
            object edt_fimatendimentotarde_ccl: TDCEdit
              Tag = 1
              Left = 390
              Top = 6
              Width = 93
              Height = 21
              TabOrder = 1
            end
          end
          object Panel5: TPanel
            Tag = -1
            Left = 29
            Top = 117
            Width = 570
            Height = 32
            Alignment = taLeftJustify
            Caption = '    Intervalo                                   '
            TabOrder = 7
            object edt_intervalo_ccl: TDCEdit
              Tag = 1
              Left = 128
              Top = 6
              Width = 93
              Height = 21
              TabOrder = 0
            end
          end
          object btn_novo_age: TPDJButton
            Left = 40
            Top = 198
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
            OnClick = btn_novo_ageClick
            TabOrder = 8
          end
          object dbg_horario: TDBGrid
            Left = 10
            Top = 17
            Width = 745
            Height = 169
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 9
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'inicioatendimentomanha_ccl'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fimatendimentomanha_ccl'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'inicioatendimentotarde_ccl'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fimatendimentotarde_ccl'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'intervalo_ccl'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descDiaSemana'
                Width = 129
                Visible = True
              end>
          end
        end
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 232
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 1
      object Panel7: TPanel
        Tag = -1
        Left = 39
        Top = 66
        Width = 627
        Height = 32
        Alignment = taLeftJustify
        Caption = 
          '   Cod. Conv.                                                   ' +
          '      Celular                                                  C' +
          'od. Especialidade'
        TabOrder = 1
        object edt_cod_conveniado: TDCEdit
          Left = 99
          Top = 4
          Width = 93
          Height = 21
          TabOrder = 0
          EditMask = '99999'
        end
        object edt_celular_ccl: TDCEdit
          Left = 283
          Top = 4
          Width = 99
          Height = 21
          TabOrder = 1
        end
        object edt_cod_espmedamb: TDCEdit
          Left = 526
          Top = 4
          Width = 93
          Height = 21
          TabOrder = 2
          EditMask = '99999'
        end
      end
      object Medico: TPanel
        Tag = -2
        Left = 39
        Top = 34
        Width = 627
        Height = 32
        Alignment = taLeftJustify
        Caption = 
          '    Código                                                      ' +
          '         Nome'
        TabOrder = 0
        object edt_medico_ccl: TDCEdit
          Left = 283
          Top = 4
          Width = 336
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object edt_cod_crm: TDCEdit
          Left = 99
          Top = 4
          Width = 93
          Height = 21
          TabOrder = 0
          EditMask = '99999999'
        end
      end
      object btn_novo_med: TPDJButton
        Left = 49
        Top = 186
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
        TabOrder = 2
      end
      object btn_alterar_med: TPDJButton
        Left = 162
        Top = 186
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
        TabOrder = 3
      end
      object btn_Remover_med: TPDJButton
        Left = 500
        Top = 186
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
        TabOrder = 6
      end
      object btn_Salvar_med: TPDJButton
        Left = 274
        Top = 186
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
        TabOrder = 4
      end
      object btn_cancelar_med: TPDJButton
        Left = 387
        Top = 186
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
        TabOrder = 5
      end
      object dbg_medico: TDBGrid
        Left = 16
        Top = 14
        Width = 745
        Height = 155
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_crm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_conveniado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'medico_ccl'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'celular_ccl'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_esp'
            Width = 200
            Visible = True
          end>
      end
      object edt_cod_medico: TDBEdit
        Left = 704
        Top = 186
        Width = 64
        Height = 21
        TabStop = False
        DataField = 'cod_crm'
        DataSource = DataSource1
        TabOrder = 8
        Visible = False
        OnChange = edt_cod_medicoChange
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
    Left = 16
    Top = 473
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio
    Left = 17
    Top = 373
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario
    Left = 17
    Top = 427
  end
end
