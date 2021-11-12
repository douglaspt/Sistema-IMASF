inherited Frm_Mov_2072: TFrm_Mov_2072
  Caption = 'Frm_Mov_2072'
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
      object lbl_total: TLabel
        Left = 2
        Top = 430
        Width = 5
        Height = 13
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn_novo: TPDJButton
        Left = 2
        Top = 456
        Width = 109
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = '&Adicionar '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_novoClick
        TabStop = True
        TabOrder = 0
      end
      object btn_Remover: TPDJButton
        Left = 682
        Top = 456
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = '&Remover'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_RemoverClick
        TabStop = True
        TabOrder = 2
      end
      object btn_Salvar: TPDJButton
        Left = 342
        Top = 456
        Width = 109
        Height = 25
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
        OnClick = btn_SalvarClick
        TabStop = True
        TabOrder = 1
      end
      object Panel1: TPanel
        Tag = -1
        Left = 1
        Top = 1
        Width = 796
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = '    Tipo de Beneficiário'
        TabOrder = 3
        object btn_atualizar: TSpeedButton
          Left = 676
          Top = 3
          Width = 110
          Height = 25
          Caption = '&Carregar'
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
        object cbx_cod_tipodependente: TDCComboBox
          Tag = -1
          Left = 117
          Top = 3
          Width = 153
          Height = 21
          TabOrder = 0
          OnExit = cbx_cod_tipodependenteExit
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object ckb_pensionista: TCheckBox
          Left = 280
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Pensionista'
          TabOrder = 1
          Visible = False
        end
        object cbx_cod_grauparent: TDCComboBox
          Tag = -1
          Left = 470
          Top = 3
          Width = 153
          Height = 21
          TabOrder = 2
          Visible = False
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object btn_limpar: TPDJButton
          Left = 642
          Top = 5
          Width = 25
          Height = 19
          Hint = 'Limpa o campo'
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
          TabOrder = 3
        end
      end
      object Panel4: TPanel
        Tag = -2
        Left = 2
        Top = 81
        Width = 790
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Doc.Ingresso'
        TabOrder = 4
        object cbx_cod_docingresso: TDCComboBox
          Tag = -1
          Left = 101
          Top = 3
          Width = 684
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
      end
      object dbg_docingresso: TDBGrid
        Left = 2
        Top = 64
        Width = 790
        Height = 361
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = dbg_docingressoDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nome_din'
            Title.Caption = 'Descrição do Documento para Ingresso'
            Width = 691
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 62
            Visible = True
          end>
      end
      object btn_alterar: TPDJButton
        Left = 172
        Top = 456
        Width = 109
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Enabled = False
        Caption = 'A&lterar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_alterarClick
        TabStop = True
        TabOrder = 6
      end
      object dbe_cod_docingresso: TDBEdit
        Left = 384
        Top = 40
        Width = 0
        Height = 21
        DataField = 'cod_docingresso'
        DataSource = DataSource1
        TabOrder = 7
      end
      object btn_cancelar: TPDJButton
        Tag = 5
        Left = 512
        Top = 456
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
        OnClick = btn_cancelarClick
        TabOrder = 8
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
    Left = 608
    Top = 76
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_verdocingresso
    Left = 689
    Top = 469
  end
end
