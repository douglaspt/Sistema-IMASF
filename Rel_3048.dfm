inherited Frm_Rel_3048: TFrm_Rel_3048
  Caption = 'Frm_Rel_3048'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    inherited Btn_Fechar: TPDJButton
      Left = 664
      Width = 129
    end
    object btn_beneficiario: TPDJButton
      Left = 8
      Top = 4
      Width = 129
      Height = 25
      Hint = 'CONSULTA O CADASTRO DE BENEFICIÁRIOS'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888880808080888888888888888008888888888888800088888888888880B7
        08888000000080B80888880FF008880B7088880FFFF0880B8088800FFF008880
        B708000FFFF08880B00800FFF0FF08880110000FF07088880008000FFF088888
        888800000000888888888000000888888888}
      GlyphHot.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888884848484888888888888888448888888888888844488888888888884B7
        48888444444484B84888884EE448884B7488884EEEE4884B8488844EEE448884
        B748444EEEE48884B44844EEE4EE48884114444EE47488884448444EEE488888
        888844444444888888888444444888888888}
      Caption = 'Cadastro'
      OnClick = btn_beneficiarioClick
      ShowHint = True
      TabOrder = 1
    end
    object btn_descontos: TPDJButton
      Left = 227
      Top = 4
      Width = 129
      Height = 25
      Hint = 'CONSULTA A TELA DE DESCONTOS'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = 'Descontos'
      OnClick = btn_descontosClick
      ShowHint = True
      TabOrder = 2
    end
    object PDJButton1: TPDJButton
      Left = 429
      Top = 4
      Width = 129
      Height = 25
      Hint = 'CONSULTA A TELA DE DESCONTOS'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = 'Agendamento'
      OnClick = PDJButton1Click
      ShowHint = True
      TabOrder = 3
    end
  end
  inherited Pnl_Titulo2: TPanel [1]
  end
  inherited Panel3: TPanel
    Height = 505
    Align = alNone
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
        '                 '
      TabOrder = 0
      object edt_inscricao_ben: TDCEdit
        Tag = -1
        Left = 150
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Tag = -2
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Matrícula'
      TabOrder = 1
      object edt_matricula_mte: TDCEdit
        Tag = -1
        Left = 150
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Tag = -2
      Left = 2
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Cod. Interno (Impsat)                                       ' +
        '                                        CPF                     ' +
        '                                                                ' +
        '      RG'
      TabOrder = 2
      object edt_cod_beneficiario: TDCEdit
        Tag = -1
        Left = 150
        Top = 5
        Width = 75
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object edt_cpf: TDCEdit
        Tag = -1
        Left = 376
        Top = 5
        Width = 137
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
      object edt_rg: TDCEdit
        Tag = -1
        Left = 665
        Top = 5
        Width = 121
        Height = 21
        MaxLength = 30
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Tag = -2
      Left = 2
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome                                                        ' +
        '                                                                ' +
        '                                                             Dt.' +
        ' Nascimento'
      TabOrder = 3
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 150
        Top = 5
        Width = 363
        Height = 21
        MaxLength = 30
        TabOrder = 0
        OnKeyUp = edt_nome_benKeyUp
      end
      object edt_dtnascim_ben: TBDateEdit
        Left = 665
        Top = 5
        Width = 121
        Height = 21
        MaxLength = 10
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -2
      Left = 2
      Top = 129
      Width = 798
      Height = 376
      Alignment = taLeftJustify
      TabOrder = 4
      object btn_localizar: TSpeedButton
        Left = 11
        Top = 6
        Width = 222
        Height = 24
        Hint = 'Localizar conforme o texto digitado'
        BiDiMode = bdLeftToRight
        Caption = '&LOCALIZAR'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
          07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
          70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
          FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = btn_localizarClick
      end
      object Label10: TLabel
        Left = 274
        Top = 13
        Width = 126
        Height = 13
        Caption = 'Índice de Localização'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_totalreg: TLabel
        Left = 624
        Top = 353
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 332
        Width = 443
        Height = 13
        Caption = 
          'Clique duas vezes no Registro desejado para acessar ser respecti' +
          'vo Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbg_consultabenefi: TDBGrid
        Left = 8
        Top = 34
        Width = 783
        Height = 290
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_consultabenefiDrawColumnCell
        OnDblClick = dbg_consultabenefiDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_beneficiario'
            Title.Caption = 'Cod.Interno'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inscricao_ben'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'matricula_mte'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulacartei_ben'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_ben'
            Width = 289
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_tdp'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_plano'
            Title.Caption = 'Cod. Pla.'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_emp'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_sit'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtnascim_ben'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg_ben'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf_ben'
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 9
        Top = 348
        Width = 284
        Height = 22
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = 'Registros em preto, Cadastro de Beneficiários'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 298
        Top = 348
        Width = 303
        Height = 22
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = 'Registros em azul, Cadastro de Não Beneficiários'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object rdb_matricula: TRadioButton
        Left = 519
        Top = 12
        Width = 88
        Height = 17
        Caption = 'Matrícula'
        TabOrder = 3
      end
      object rdb_inscricao: TRadioButton
        Left = 414
        Top = 12
        Width = 87
        Height = 17
        Caption = 'Inscrição'
        Checked = True
        TabOrder = 4
        TabStop = True
      end
      object rdb_nome: TRadioButton
        Left = 627
        Top = 12
        Width = 88
        Height = 17
        Caption = 'Nome'
        TabOrder = 5
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
    Left = 32
    Top = 409
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal4.spc_cons_adm_consultaGeralBen
    Left = 737
    Top = 485
  end
end
