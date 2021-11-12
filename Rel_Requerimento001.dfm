inherited Frm_Rel_Requerimento001: TFrm_Rel_Requerimento001
  Caption = 'Frm_Rel_Requerimento001'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_imprimereq: TSpeedButton [1]
      Left = 511
      Top = 4
      Width = 147
      Height = 25
      Hint = 'Imprimir Requerimento'
      Caption = '&Imprimir Requerimento'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = btn_imprimereqClick
    end
    object Edit1: TEdit
      Left = 424
      Top = 7
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
    end
    object edt_pricaracter: TEdit
      Left = 408
      Top = 7
      Width = 17
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Visible = False
    end
  end
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Inscrição                                                   ' +
        '                       Cartão'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 136
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnEnter = edt_inscricao_benEnter
        OnExit = edt_inscricao_benExit
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object edt_carteirinha: TDCEdit
        Left = 324
        Top = 3
        Width = 73
        Height = 21
        TabOrder = 2
        OnExit = edt_carteirinhaExit
        OnKeyDown = edt_carteirinhaKeyDown
      end
      object edt_entrada: TDCEdit
        Left = 324
        Top = 3
        Width = 93
        Height = 21
        TabOrder = 3
        OnEnter = edt_entradaEnter
      end
      object PDJButton1: TPDJButton
        Left = 572
        Top = 8
        Width = 26
        Height = 19
        Hint = 'Limpar os Campos'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'X'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnClick = PDJButton1Click
        TabOrder = 4
      end
      object edt_dtendereco_ben: TDCDateEdit
        Tag = -1
        Left = 644
        Top = 3
        Width = 141
        Height = 21
        TabOrder = 5
        Visible = False
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_cod_contacorrente: TDCEdit
        Left = 452
        Top = 3
        Width = 13
        Height = 21
        TabOrder = 6
        Visible = False
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Beneficiário'
      TabOrder = 1
      object edt_nome: TDCEdit
        Tag = -10
        Left = 324
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 136
        Top = 5
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object pnl_alerta: TPanel
      Left = 1
      Top = 97
      Width = 798
      Height = 25
      BevelOuter = bvLowered
      Caption = 'BENEFICIÁRIO SUSPENSO'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 122
      Width = 800
      Height = 367
      ActivePage = TabSheet1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object TabSheet1: TTabSheet
        Caption = 'Setor Administrativo'
        OnEnter = TabSheet1Enter
        object Label2: TLabel
          Left = 296
          Top = 322
          Width = 96
          Height = 13
          Caption = 'Grau Parentesco'
          Visible = False
        end
        object Label1: TLabel
          Left = 1
          Top = 322
          Width = 84
          Height = 13
          Caption = 'Tipo Segurado'
          Visible = False
        end
        object Rdg_Administrativo: TRadioGroup
          Left = 1
          Top = 0
          Width = 792
          Height = 311
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Imprimir Requerimento Padrão'
            'Imprimir Somente Linhas do Requerimento Padrão'
            
              'Declaração do Segurado de Dependência Econômica do Filho(a) Invá' +
              'lido'
            
              'Declaração do Segurado de Dependência Econômica do Menor sob Gua' +
              'rda'
            'Declaração do Segurado do Menor sob Guarda'
            'Requerimento Avulso'
            'Check List - Documentos para Ingresso'
            
              'Termo de Responsabilidade - Não devolução de Cartão de Identific' +
              'ação')
          ParentFont = False
          TabOrder = 0
          OnClick = Rdg_AdministrativoClick
        end
        object cbx_cod_textoRequerimento: TDCComboBox
          Tag = -1
          Left = 2
          Top = 316
          Width = 400
          Height = 21
          TabOrder = 1
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object btn_limpar: TPDJButton
          Left = 662
          Top = 319
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
          TabOrder = 2
        end
        object cbx_cod_tipodependente: TDCComboBox
          Tag = -1
          Left = 93
          Top = 315
          Width = 153
          Height = 21
          TabOrder = 3
          Visible = False
          OnChange = cbx_cod_TipoDependenteChange
          Items.Strings = (
            '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
            '1 - Conta não recebida por meio Magnético e deverá ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object cbx_cod_grauparent: TDCComboBox
          Tag = -1
          Left = 401
          Top = 315
          Width = 153
          Height = 21
          TabOrder = 4
          Visible = False
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
          Top = 322
          Width = 97
          Height = 17
          Caption = 'Pensionista'
          TabOrder = 5
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Setor Médico'
        ImageIndex = 1
        OnEnter = TabSheet2Enter
        object Label3: TLabel
          Left = 1
          Top = 322
          Width = 75
          Height = 13
          Caption = 'No.Protocolo'
          Visible = False
        end
        object Rdg_Medico: TRadioGroup
          Left = 0
          Top = 0
          Width = 265
          Height = 265
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Imprimir Requerimento Padrão'
            'Requerimento de Reembolso'
            'Check list Reembolso')
          ParentFont = False
          TabOrder = 0
          OnClick = Rdg_MedicoClick
        end
        object edt_cod_Requerimento: TEdit
          Left = 96
          Top = 315
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Visible = False
        end
        object pnl_pacientes: TPanel
          Left = 392
          Top = 8
          Width = 384
          Height = 256
          TabOrder = 2
          object Label4: TLabel
            Left = 15
            Top = 239
            Width = 312
            Height = 13
            Caption = 'Manter a tecla CTRL pressionada para mais pacientes.'
          end
          object DBG_Itens: TDBGrid
            Left = 0
            Top = 0
            Width = 382
            Height = 234
            DataSource = DSItens
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'nome_ben'
                Title.Caption = 'Nome do Paciente'
                Visible = True
              end>
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Farmácia'
        ImageIndex = 2
        OnEnter = TabSheet3Enter
        object Rdg_Farmacia: TRadioGroup
          Left = 0
          Top = 0
          Width = 792
          Height = 339
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Imprimir Requerimento Padrão'
            'Imprimir Requerimento Bloqueio de Compras na Farmácia')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pnl_contacorrente: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Paciente'
      TabOrder = 4
      Visible = False
      object cbx_cod_beneficiario: TDCComboBox
        Tag = -1
        Left = 136
        Top = 4
        Width = 281
        Height = 21
        TabOrder = 0
        OnChange = cbx_cod_beneficiarioChange
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_contacorrente: TDCComboBox
        Tag = -5
        Left = 424
        Top = 4
        Width = 348
        Height = 21
        TabOrder = 1
        Visible = False
        Items.Strings = (
          '0 - Disquete / Arquivo Magnético enviado pelo Conveniado'
          '1 - Conta não recebida por meio Magnético e deverá ser digitada')
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object btn_adicionar: TPDJButton
        Left = 770
        Top = 4
        Width = 26
        Height = 21
        Hint = 'Incluir nova conta corrente'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC08020C08020C08020C08020C080
          20C08020FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC080
          20C08020C08020C08020C08020C08020FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFC08020C08020C08020C08020C08020C08020FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC08020C08020C08020C0
          8020C08020C08020FFFFFFFFFFFFFFFFFFFFFFFF0000C08020C08020C08020C0
          8020C08020C08020C08020C08020C08020C08020C08020C08020C08020C08020
          0000C08020C08020C08020C08020C08020C08020C08020C08020C08020C08020
          C08020C08020C08020C080200000C08020C08020C08020C08020C08020C08020
          C08020C08020C08020C08020C08020C08020C08020C080200000C08020C08020
          C08020C08020C08020C08020C08020C08020C08020C08020C08020C08020C080
          20C080200000C08020C08020C08020C08020C08020C08020C08020C08020C080
          20C08020C08020C08020C08020C080200000FFFFFFFFFFFFFFFFFFFFFFFFC080
          20C08020C08020C08020C08020C08020FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFC08020C08020C08020C08020C08020C08020FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC08020C08020C08020C0
          8020C08020C08020FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFC08020C08020C08020C08020C08020C08020FFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        GlyphHot.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        OnClick = btn_adicionarClick
        ShowHint = True
        Visible = False
        TabOrder = 2
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
    Left = 72
    Top = 497
  end
  object DSItens: TDataSource
    DataSet = fdt_principal6.spc_cons_dependenteTrocaEndereco
    Left = 250
    Top = 491
  end
end
