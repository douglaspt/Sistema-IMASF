inherited Frm_Mov_RemesTramite: TFrm_Mov_RemesTramite
  Caption = 'Frm_Mov_RemesTramite'
  ClientHeight = 573
  ClientWidth = 792
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 792
    inherited Image1: TImage
      Width = 790
    end
  end
  inherited Panel2: TPanel
    Top = 521
    Width = 792
    inherited Image3: TImage
      Width = 790
    end
    inherited Btn_Fechar: TPDJButton
      Left = 640
      Width = 153
    end
    object btn_imprimir: TPDJButton
      Left = 12
      Top = 4
      Width = 181
      Height = 25
      Hint = 'Voltar para a tela principal'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Imprimir'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_imprimirClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Width = 792
    Height = 480
    object Label1: TLabel
      Left = 8
      Top = 213
      Width = 251
      Height = 16
      Caption = 'Rela��o de Remessa de Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object LsB_Remessa: TListBox
      Left = 8
      Top = 232
      Width = 481
      Height = 249
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
    object GrB_Andamento: TGroupBox
      Left = 8
      Top = 0
      Width = 781
      Height = 209
      Caption = 'Novo Andamento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Bevel1: TBevel
        Left = 16
        Top = 120
        Width = 753
        Height = 81
      end
      object Label2: TLabel
        Left = 152
        Top = 147
        Width = 44
        Height = 13
        Caption = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 214
        Top = 147
        Width = 165
        Height = 13
        Caption = 'Ano (com 4 d�gitos)    Cor da Pasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 32
        Top = 147
        Width = 43
        Height = 13
        Caption = 'Inscri��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 112
        Top = 168
        Width = 15
        Height = 13
        Caption = 'ou'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 125
        Width = 179
        Height = 13
        Caption = 'Insira os dados para Remessa :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 72
        Top = 184
        Width = 688
        Height = 13
        Caption = 
          '**Para maior agilidade, Utilize o "Enter" para passar de um camp' +
          'o para o outro e pra salvar, n�o precisa clicar no bot�o adicion' +
          'ar, s� aperte Enter.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel7: TPanel
        Left = 4
        Top = 21
        Width = 773
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '     Setor de Origem                                            ' +
          '                                                                ' +
          '                Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object edt_remetente_tmt: TDCEdit
          Left = 576
          Top = 5
          Width = 189
          Height = 21
          Hint = 
            'Digite o nome ou descri��o do remetente ou clique no bot�o ao la' +
            'do se o remetente for um usu�rio do sistema IMASF'
          MaxLength = 100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object cbx_cod_setorOrigem: TDCComboBox
          Left = 129
          Top = 5
          Width = 316
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
        object edt_cod_usuario: TDCChoiceEdit
          Left = 520
          Top = 5
          Width = 49
          Height = 21
          Hint = 
            'Digite o c�digo do usu�rio para ele preencre automaticamente o r' +
            'emetente, ou se n�o sabe o c�digo clique no bot�o ao lado'
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = edt_cod_usuarioChange
          OnKeyDown = edt_cod_usuarioKeyDown
          Alignment = taRightJustify
          OnButtonClick = edt_cod_usuarioButtonClick
          EditMask = '9999999'
        end
      end
      object Panel15: TPanel
        Left = 4
        Top = 52
        Width = 773
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Setor de Destino                                            ' +
          '                                                                ' +
          '               Destinat�rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object edt_destinatario_tmt: TDCEdit
          Left = 576
          Top = 5
          Width = 189
          Height = 21
          Hint = 
            'Digite o nome ou descri��o do destinat�rio ou clique no bot�o ao' +
            ' lado se o remetente for um usu�rio do sistema IMASF'
          MaxLength = 100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object cbx_cod_setorDestino: TDCComboBox
          Left = 129
          Top = 5
          Width = 316
          Height = 21
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
        object ed2_cod_usuario: TDCChoiceEdit
          Left = 520
          Top = 5
          Width = 49
          Height = 21
          Hint = 
            'Digite o c�digo do usu�rio para ele preencre automaticamente o d' +
            'estinat�rio, ou se n�o sabe o c�digo clique no bot�o ao lado'
          MaxLength = 10
          TabOrder = 1
          OnChange = ed2_cod_usuarioChange
          OnKeyDown = ed2_cod_usuarioKeyDown
          Alignment = taRightJustify
          MultiLine = True
          OnButtonClick = ed2_cod_usuarioButtonClick
          EditMask = '9999999'
        end
      end
      object Panel16: TPanel
        Left = 4
        Top = 85
        Width = 453
        Height = 32
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Data de Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object edt_dtdestino_tmt: TDCDateEdit
          Left = 128
          Top = 5
          Width = 129
          Height = 21
          Enabled = False
          TabOrder = 0
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object btn_adicionar: TPDJButton
        Left = 532
        Top = 157
        Width = 93
        Height = 25
        Hint = 'Adicionar Novo Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Adicionar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_adicionarClick
        TabStop = True
        TabOrder = 7
      end
      object btn_remover: TPDJButton
        Left = 633
        Top = 157
        Width = 93
        Height = 25
        Hint = 'Adicionar Novo Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Remover'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_removerClick
        TabOrder = 8
      end
      object edt_ano: TDCEdit
        Left = 222
        Top = 161
        Width = 51
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        TabOrder = 5
      end
      object edt_processo: TDCEdit
        Left = 150
        Top = 161
        Width = 67
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        TabOrder = 4
      end
      object cbx_cod_corprocesso: TDCComboBox
        Left = 321
        Top = 161
        Width = 172
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object edt_inscricao: TDCEdit
        Left = 30
        Top = 161
        Width = 67
        Height = 21
        Hint = 'Digite a inscri��o (somente o miolo) do benefici�rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        TabOrder = 3
      end
      object PDJButton2: TPDJButton
        Left = 524
        Top = 85
        Width = 246
        Height = 25
        Hint = 'Adicionar Novo Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = '&Tramita��o para o mesmo setor'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = PDJButton2Click
        TabStop = True
        TabOrder = 9
      end
    end
    object btn_limpaTela: TPDJButton
      Left = 496
      Top = 444
      Width = 297
      Height = 29
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
        8888888888888888877777777777777777788880000000000000000000788880
        FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FF7777FFFFF7777F
        F0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880000778FF
        FFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880
        FF7777FF8FF7777FF0788880FFFFFFFF7FFFFFFFF0788880FFFFFFFF7FFFFFFF
        F0788880444444444778FFFFF0788880FFFFFFFF4FFFFFFFF0788880FFFFFFFF
        4FFFFFFFF0788880FF7777FF4FF7777FF0788880FFFFFFFF4FFFFFFFF0788880
        FFFFFFFF4FFFFFFFF08888800000000000000000008888888888888888888888
        8888888888888888888888888888}
      GlyphHot.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888877777777777777777788880000000000000000000788880
        FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FF7777FFFFF7777F
        F0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880000778FF
        FFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880FFFFFFFFFFFFFFFFF0788880
        FF7777FF8FF7777FF0788880FFFFFFFF7FFFFFFFF0788880FFFFFFFF7FFFFFFF
        F0788880444444444778FFFFF0788880FFFFFFFF4FFFFFFFF0788880FFFFFFFF
        4FFFFFFFF0788880FF7777FF4FF7777FF0788880FFFFFFFF4FFFFFFFF0788880
        FFFFFFFF4FFFFFFFF08888800000000000000000008888888888888888888888
        8888888888888888888888888888}
      Caption = '&Limpar Tela ( Nova Remessa )'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_limpaTelaClick
      TabOrder = 2
    end
    object pnl_alerta: TPanel
      Left = 92
      Top = 296
      Width = 297
      Height = 41
      Caption = 'PROCESSOS ENVIADOS'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object PDJButton1: TPDJButton
      Left = 496
      Top = 240
      Width = 297
      Height = 25
      Hint = 'Adicionar Novo Registro'
      RepeatInterval = 50
      RepeatStartInterval = 50
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
      GlyphHot.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF33344444444333CCCCC333377777777F337777
        7FF334EFEFEF433C73337C3337F3FFFF7F37733377F334F4444E433333333C33
        37F777737F333333F7F3349999994333333C7C3337F333337F33333777FF349F
        FFF94333333CCCC337F333337F3333377773349999994333333CCC3337F3FF3F
        7F333337773334F44E444333333CC33337F7737773333337733334EFEF443333
        333C333337FFFF7733333337333334444443333333333333377777733333FFFF
        FFFF3333333333344444444333333F3333377777777F3333C3333334EFEFEF43
        33337F333337F3FFFF7F333CC3333334F4444E4333377F333337F777737F33CC
        C3333334EFEFEF4333777F333337F3FFFF7F3CCCC3333334F4444E4337777F33
        3337F777737F33C7C3333334EFEFEF43337773333337F3FF3F7F33C333333334
        F44E4443337FF333FF37F773777333C73337C334EFEF44333377FFF77337FFFF
        7733333CCCCC3334444443333337777733377777733333333333333333333333
        33333333333333333333}
      Caption = '&Acessar tela para Consulta de Processos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton1Click
      TabOrder = 4
    end
    object btn_beneficiario: TPDJButton
      Left = 496
      Top = 276
      Width = 297
      Height = 25
      Hint = 'CONSULTA O CADASTRO DE BENEFICI�RIOS'
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
      Caption = 'Acessar tela de Benefici�rios'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_beneficiarioClick
      ShowHint = True
      TabOrder = 5
    end
    object pnl_AlertaConfirmacao: TPanel
      Left = 504
      Top = 312
      Width = 285
      Height = 121
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Label8: TLabel
        Left = 16
        Top = 8
        Width = 262
        Height = 16
        Caption = 'O ENVIO AINDA N�O FOI EFETUADO'
      end
      object Label9: TLabel
        Left = 8
        Top = 32
        Width = 273
        Height = 33
        AutoSize = False
        Caption = 'Para confirmar o envio clique no bot�o abaixo.'
        WordWrap = True
      end
      object btn_confirmaAndamento: TPDJButton
        Left = 8
        Top = 84
        Width = 265
        Height = 29
        Hint = 'Adicionar Novo Registro'
        RepeatInterval = 50
        RepeatStartInterval = 50
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
        GlyphHot.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFFFFF333FFFFF33344444444333CCCCC333377777777F337777
          7FF334EFEFEF433C73337C3337F3FFFF7F37733377F334F4444E433333333C33
          37F777737F333333F7F3349999994333333C7C3337F333337F33333777FF349F
          FFF94333333CCCC337F333337F3333377773349999994333333CCC3337F3FF3F
          7F333337773334F44E444333333CC33337F7737773333337733334EFEF443333
          333C333337FFFF7733333337333334444443333333333333377777733333FFFF
          FFFF3333333333344444444333333F3333377777777F3333C3333334EFEFEF43
          33337F333337F3FFFF7F333CC3333334F4444E4333377F333337F777737F33CC
          C3333334EFEFEF4333777F333337F3FFFF7F3CCCC3333334F4444E4337777F33
          3337F777737F33C7C3333334EFEFEF43337773333337F3FF3F7F33C333333334
          F44E4443337FF333FF37F773777333C73337C334EFEF44333377FFF77337FFFF
          7733333CCCCC3334444443333337777733377777733333333333333333333333
          33333333333333333333}
        Caption = '&Confirmar Andamento da Remessa'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_confirmaAndamentoClick
        ParentColor = False
        Color = clBtnFace
        TabOrder = 0
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 554
    Width = 792
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
