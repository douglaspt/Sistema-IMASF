inherited Frm_Mov_ProcessarConta: TFrm_Mov_ProcessarConta
  Caption = 'Frm_Mov_ProcessarConta'
  ClientHeight = 621
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 569
    inherited Btn_Fechar: TPDJButton
      Left = 699
      Width = 92
    end
    object btn_beneficiario: TPDJButton
      Left = 576
      Top = 4
      Width = 110
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
      Caption = 'Benefici�rios'
      OnClick = btn_beneficiarioClick
      ShowHint = True
      TabOrder = 1
    end
    object PDJButton1: TPDJButton
      Left = 291
      Top = 4
      Width = 141
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Itens do Conveniado'
      OnClick = PDJButton1Click
      TabOrder = 2
    end
    object PDJButton7: TPDJButton
      Left = 148
      Top = 4
      Width = 125
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Excluir Conta'
      OnClick = PDJButton7Click
      TabOrder = 3
    end
    object PDJButton10: TPDJButton
      Left = 7
      Top = 4
      Width = 125
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Repasse de Conta'
      OnClick = PDJButton10Click
      TabOrder = 4
    end
    object btn_conveniado: TPDJButton
      Left = 451
      Top = 4
      Width = 110
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Conveniado'
      OnClick = btn_conveniadoClick
      TabOrder = 5
    end
  end
  inherited Panel3: TPanel
    Height = 528
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    C�digo do Conveniado'
      TabOrder = 0
      object edt_cod_conveniado: TDCChoiceEdit
        Tag = -2
        Left = 140
        Top = 3
        Width = 89
        Height = 24
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnExit = edt_cod_conveniadoExit
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoButtonClick
        EditMask = '99999-9'
      end
      object edt_razao_con: TDCEdit
        Tag = -10
        Left = 236
        Top = 3
        Width = 413
        Height = 24
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    M�s / Ano de Refer�ncia                                     ' +
        '                                                                ' +
        '                                  Mov.'
      TabOrder = 1
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
          '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edt_sequencia_con: TDCEdit
        Tag = -10
        Left = 574
        Top = 4
        Width = 75
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 2
      end
    end
    object PageControl: TPageControl
      Left = 4
      Top = 72
      Width = 795
      Height = 455
      ActivePage = TabSheet2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = PageControlChange
      object TabSheet5: TTabSheet
        Caption = 'Recebimento de Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        object Label14: TLabel
          Left = 8
          Top = 248
          Width = 516
          Height = 16
          Caption = 
            'Planos em que o Conveniado necessita de Autoriza��o para Atendim' +
            'ento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Panel16: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Data de Recebimento'
          TabOrder = 0
          object edt_dtrecebimento_con: TDCDateEdit
            Tag = -1
            Left = 132
            Top = 5
            Width = 141
            Height = 21
            TabOrder = 0
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
        object Panel18: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Tipo de M�dia'
          TabOrder = 1
          object cbx_cod_Midia: TDCComboBox
            Left = 132
            Top = 5
            Width = 361
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
              '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
        end
        object Panel19: TPanel
          Tag = -1
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          TabOrder = 2
          object btn_receber: TPDJButton
            Left = 4
            Top = 4
            Width = 289
            Height = 25
            Hint = 'Voltar para a tela principal'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Efetuar Recebimento'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_receberClick
            TabOrder = 0
          end
        end
        object PDJButton14: TPDJButton
          Left = 4
          Top = 154
          Width = 289
          Height = 25
          Hint = 'Voltar para a tela principal'
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Repassar conta do Acqua'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton14Click
          TabOrder = 3
        end
        object LsB_Plano: TListBox
          Left = 8
          Top = 264
          Width = 521
          Height = 110
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Leitura de Arquivo'
        ImageIndex = 2
        object lbl_tlcontaslidas: TLabel
          Left = 1
          Top = 329
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
        object lbl_tlitenslidos: TLabel
          Left = 1
          Top = 346
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
        object lbl_linha: TLabel
          Left = 1
          Top = 363
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
        object Label26: TLabel
          Left = 272
          Top = 272
          Width = 5
          Height = 13
          Caption = '.'
        end
        object ProgressBar1: TProgressBar
          Left = 1
          Top = 301
          Width = 782
          Height = 24
          Min = 0
          Max = 100
          TabOrder = 0
          Visible = False
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 0
          Width = 782
          Height = 123
          Caption = 'Abramge'
          TabOrder = 1
          object Memo1: TMemo
            Left = 584
            Top = 8
            Width = 185
            Height = 41
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
            Visible = False
          end
          object btn_carregarArqMagnetico: TPDJButton
            Left = 246
            Top = 20
            Width = 289
            Height = 25
            Hint = 'Carregar Todos os arquivos, exceto arquivos XML e Unimed.'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Ler / Carregar Arquivo Magn�tico'
            OnClick = btn_carregarArqMagneticoClick
            TabOrder = 1
          end
          object lbl_lermatmed: TCheckBox
            Left = 12
            Top = 48
            Width = 410
            Height = 17
            Caption = 'Habilitar leitura detalhada de materiais e medicamentos'
            TabOrder = 2
          end
          object ckb_carteirinha: TCheckBox
            Left = 12
            Top = 72
            Width = 410
            Height = 17
            Caption = 
              'Carregar arquivos com numero de carteirinha maior que 10 posi��e' +
              's'
            TabOrder = 3
          end
          object PDJButton13: TPDJButton
            Left = 12
            Top = 92
            Width = 289
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Ajustar arquivos com problemas'
            OnClick = PDJButton13Click
            TabOrder = 4
          end
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 132
          Width = 782
          Height = 80
          Caption = 'TISS'
          TabOrder = 2
          object btn_carregarArqMagneticoTISS: TPDJButton
            Left = 246
            Top = 27
            Width = 289
            Height = 25
            Hint = 'Link para selecionar arquivos padr�o XML.'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Ler / Carregar Arquivo Magn�tico'
            OnClick = btn_carregarArqMagneticoTISSClick
            ShowHint = True
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 222
          Width = 782
          Height = 80
          Caption = 'Exclusivo UNIMED'
          TabOrder = 3
          object btn_carregarArqMagneticoUNIMED: TPDJButton
            Left = 246
            Top = 27
            Width = 289
            Height = 25
            Hint = 'Carregar somente arquivo texto da Unimed.'
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Ler / Carregar Arquivo Magn�tico'
            OnClick = btn_carregarArqMagneticoUNIMEDClick
            ShowHint = True
            TabOrder = 0
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cr�tica da Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Label27: TLabel
          Left = 8
          Top = 360
          Width = 9
          Height = 13
          Caption = '...'
        end
        object Panel1: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          TabOrder = 0
          object cbx_criticatudo: TCheckBox
            Left = 8
            Top = 8
            Width = 337
            Height = 17
            Caption = 'Efetuar Cr�tica Incondicional de Todo o Movimento'
            TabOrder = 0
          end
        end
        object btn_efetuarProcesCritica: TPDJButton
          Left = 0
          Top = 48
          Width = 289
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = '&Efetuar Processamento de Cr�tica'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_efetuarProcesCriticaClick
          TabOrder = 1
        end
        object Animate: TAnimate
          Left = 296
          Top = 52
          Width = 272
          Height = 60
          Active = False
          CommonAVI = aviFindComputer
          StopFrame = 1
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Verifica��o / Acerto da Conta'
        ImageIndex = 1
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 781
          Height = 426
          ActivePage = tbs_conta
          TabOrder = 0
          object tbs_conta: TTabSheet
            Caption = 'Contas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabVisible = False
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 76
              Height = 13
              Caption = 'Status da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object btn_acerto: TSpeedButton
              Left = 600
              Top = 186
              Width = 170
              Height = 24
              Caption = 'Glosas / Acerto da Conta'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_acertoClick
            end
            object btn_acertoItem: TSpeedButton
              Left = 601
              Top = 356
              Width = 170
              Height = 26
              Caption = 'Glosas / Acerto do Item'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_acertoItemClick
            end
            object lbl_tlitem: TLabel
              Left = 0
              Top = 368
              Width = 284
              Height = 13
              AutoSize = False
              Caption = 'Total de Itens da Conta Selecionada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 302
              Top = 346
              Width = 89
              Height = 13
              Caption = 'Vl. Total Informado'
            end
            object Label4: TLabel
              Left = 402
              Top = 346
              Width = 70
              Height = 13
              Caption = 'Vl. Total Pagar'
            end
            object Label7: TLabel
              Left = 502
              Top = 346
              Width = 46
              Height = 13
              Caption = 'Diferen�a'
            end
            object btn_atualizar: TSpeedButton
              Left = 364
              Top = 0
              Width = 93
              Height = 25
              Caption = '&Atualizar'
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
            object Label10: TLabel
              Left = 8
              Top = 32
              Width = 90
              Height = 13
              Caption = '�ndice de Pesquisa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_tlcontas: TLabel
              Left = 0
              Top = 350
              Width = 142
              Height = 13
              Caption = 'Total de Contas M�dicas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton6: TSpeedButton
              Left = 339
              Top = 188
              Width = 26
              Height = 22
              Hint = 'Localizar conforme o texto digitado'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
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
              OnClick = SpeedButton6Click
            end
            object Label11: TLabel
              Left = 9
              Top = 194
              Width = 52
              Height = 13
              Caption = 'Localizar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 258
              Top = 349
              Width = 39
              Height = 34
              Hint = 'Visualizar Detalhadamente Materiais e Medicamentos'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                36080000424D3608000000000000360400002800000020000000200000000100
                08000000000000040000C40E0000C40E00000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF49494949494949494A4A4A49499BFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF5208BFBFBFBFBFBFBFBFBFBF0852FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF49BFBFBFBFBFBFBFBFBFBFBFBF49FF9B5A525252
                525252515200495AF7FFFFFF5208BFBFBFBFBFBFBFBFBFBFBF49FF5AF708F6FF
                F608F6F6085BA49B49A3FFFF52BFBFBFBFBFBFBFBFBFBFBFBF49FF5207FF08F6
                08F6F6F607520707A3519AFF49BFBFBFBFBFBFBFBF0808BFBF49FF5207F608F6
                F6F6F6F60852070707A352FF51FF000000000000000000BFBF49FF5207F6F6F6
                F6F6F6F6085B070708079AFF51BFBFBFBFBFBFBFBFBFBFBFBF49FF510708F6F6
                F6F6F6F6085B0708070752FF5208BFBFBFBFBFBFBFBFBFBF0852FF5208F6F6F6
                F6F6F6F6085B0708070952FF0A534B0A0B0B0B0B0B0B4B4B5200FF5208F6F6F6
                F6FFF6F6085B0708080851FF0A4B4C4C4C4C4C4C4C4C4C4C4B4AFF5208000000
                F60000F6085B0708080751FF4B4C4D010D0E0E0E0D0D0D4C530AFF5208F6F6F6
                F6F6F6F6085B0708080952FF4B01014D0D0D0D0D0D0D0D0C0B0AFF5208000000
                000000F608530708F60851FF0A4C4C0C4D0D0D0D0D0D4C4C544AFF5208F6F6F6
                F6F6F6F6085307F6F60852FF0A4B0B0B0B0B0B0B0B0B0B0B0A00FF5208F6F6F6
                08F6F6F6085307F6F6F652FF53BFBFBFBFBFBFBFBFBFBFBFBF52FF4A08F6F6F6
                F6F6F6F6F65307FFF6F652FF4ABF08FFBFBFBFBFBFBFBFBFBF49FF5207070707
                F6F6F6F6EFA507F6F60852FF52BFBF08BFBFBFBFBFBFBFBFBF52FF4A53534B4B
                4C0B0B0B0A0A0A4A52524AFF5252525252525252525252525B52FF524A4B544C
                014D0C01014C4B4B534A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4B4C4D01
                464646454501014C4C4B4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4B014C0D
                4E0D454D4D014C4C4B4B4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49530A4B0B
                0B0C0C0B0B0B4B0B4B4A49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5208080807
                AE5C5C530A0A4A53A50752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5208F6F6F6
                F608F6F60753EEEFF69C52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5353539BF7
                07F6F6F6085207074A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA49B
                52495BA3F7A35252A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6F7A35A499BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object Label28: TLabel
              Left = 9
              Top = 396
              Width = 52
              Height = 13
              Caption = 'Localizar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_pesquisaItem: TSpeedButton
              Left = 339
              Top = 390
              Width = 26
              Height = 22
              Hint = 'Localizar conforme o texto digitado'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
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
              OnClick = btn_pesquisaItemClick
            end
            object lbl_indice: TLabel
              Left = 376
              Top = 395
              Width = 117
              Height = 13
              Caption = 'Indice de Pesquisa: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 48
              Width = 772
              Height = 135
              DataSource = DataSource1
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'sequenciaconta_ctm'
                  Title.Caption = 'Seq.'
                  Width = 46
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'carteirainform_ctm'
                  Title.Caption = 'Carteira Informada'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomebenefi_ctm'
                  Title.Caption = 'Nome do Benefici�rio'
                  Width = 250
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dtentrada_ctm'
                  Title.Caption = 'Dt. Atendimento'
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sts'
                  Title.Caption = 'Status'
                  Width = 169
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_autorizacao'
                  Title.Caption = 'Autoriza��o'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_acomodacao'
                  Title.Caption = 'Ac.'
                  Width = 30
                  Visible = True
                end>
            end
            object dbg_itemConta: TDBGrid
              Left = 0
              Top = 212
              Width = 773
              Height = 131
              DataSource = DataSource2
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = ppm_item
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbg_itemContaDrawColumnCell
              OnDblClick = dbg_itemContaDblClick
              OnTitleClick = dbg_itemContaTitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_itemservico'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_padrao'
                  Width = 66
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_itc'
                  Width = 274
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde_itc'
                  Width = 32
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlinformado_itc'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlpagar_itc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'diferenca'
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sts'
                  Width = 128
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sequenciaitem_itc'
                  Title.Caption = 'Seq'
                  Width = 20
                  Visible = True
                end>
            end
            object edt_sequenciaconta_ctm: TDBEdit
              Left = 736
              Top = 8
              Width = 88
              Height = 21
              DataField = 'sequenciaconta_ctm'
              DataSource = DataSource1
              TabOrder = 2
              Visible = False
              OnChange = edt_sequenciaconta_ctmChange
            end
            object cbx_status: TDCComboBox
              Tag = -1
              Left = 128
              Top = 1
              Width = 233
              Height = 21
              TabOrder = 3
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
              OnCloseUp = cbx_statusCloseUp
            end
            object edt_vlInformado: TDCEdit
              Left = 302
              Top = 360
              Width = 95
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Alignment = taRightJustify
            end
            object edt_vlPagar: TDCEdit
              Left = 402
              Top = 360
              Width = 95
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              Alignment = taRightJustify
            end
            object edt_diferenca: TDCEdit
              Left = 502
              Top = 360
              Width = 95
              Height = 21
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
              Alignment = taRightJustify
            end
            object rdb_sequencia: TRadioButton
              Left = 128
              Top = 30
              Width = 77
              Height = 17
              Caption = 'Sequ�ncia'
              TabOrder = 7
            end
            object rdb_carteira: TRadioButton
              Left = 216
              Top = 30
              Width = 109
              Height = 17
              Caption = 'Carteira'
              TabOrder = 8
            end
            object rdb_nome: TRadioButton
              Left = 292
              Top = 30
              Width = 109
              Height = 17
              Caption = 'Nome'
              Checked = True
              TabOrder = 9
              TabStop = True
            end
            object rdb_data: TRadioButton
              Left = 360
              Top = 30
              Width = 109
              Height = 17
              Caption = 'Dt. Atendimento'
              TabOrder = 10
            end
            object rdb_statuscarteira: TRadioButton
              Left = 464
              Top = 30
              Width = 101
              Height = 17
              Caption = 'Status + Carteira'
              TabOrder = 11
            end
            object rdb_statusnome: TRadioButton
              Left = 572
              Top = 30
              Width = 109
              Height = 17
              Caption = 'Status + Nome'
              TabOrder = 12
            end
            object rdb_statusdata: TRadioButton
              Left = 685
              Top = 30
              Width = 109
              Height = 17
              Caption = 'Status + Data'
              TabOrder = 13
            end
            object Panel17: TPanel
              Left = 460
              Top = 0
              Width = 313
              Height = 25
              BevelOuter = bvLowered
              TabOrder = 14
              object rdb_internacoes: TRadioButton
                Left = 4
                Top = 4
                Width = 109
                Height = 17
                Caption = 'INTERNA��ES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object rdb_ambulatorio: TRadioButton
                Left = 116
                Top = 4
                Width = 113
                Height = 17
                Caption = 'AMBULAT�RIO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object rdb_todos: TRadioButton
                Left = 232
                Top = 4
                Width = 64
                Height = 17
                Caption = 'TODOS'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                TabStop = True
              end
            end
            object ckb_itemservico: TCheckBox
              Left = 389
              Top = 191
              Width = 177
              Height = 17
              Caption = 'Localizar Item de Servi�o'
              TabOrder = 15
            end
            object edt_localizar: TEdit
              Left = 76
              Top = 189
              Width = 258
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 16
            end
            object edt_localizarItem: TEdit
              Left = 76
              Top = 391
              Width = 258
              Height = 21
              TabOrder = 17
            end
          end
          object tbs_glosaconta: TTabSheet
            Caption = 'Glosas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            TabVisible = False
            object Label2: TLabel
              Left = 4
              Top = 164
              Width = 94
              Height = 13
              Caption = 'Glosas da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_tlglosa: TLabel
              Left = 4
              Top = 398
              Width = 429
              Height = 13
              AutoSize = False
              Caption = 'Total de Glosas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_voltar: TSpeedButton
              Left = 584
              Top = 132
              Width = 189
              Height = 26
              Caption = 'Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarClick
            end
            object btn_gravaralteracaoconta: TSpeedButton
              Left = 372
              Top = 132
              Width = 209
              Height = 26
              Caption = 'Gravar Altera��es'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_gravaralteracaocontaClick
            end
            object Label8: TLabel
              Left = 6
              Top = 345
              Width = 74
              Height = 29
              AutoSize = False
              Caption = 'Observa��o Glosa Manual'
              WordWrap = True
            end
            object Label12: TLabel
              Left = 607
              Top = 346
              Width = 37
              Height = 29
              AutoSize = False
              Caption = 'Classe Glosa'
              WordWrap = True
            end
            object btn_addglosa: TSpeedButton
              Left = 541
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Adicionar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_addglosaClick
            end
            object btn_glosamanualconta: TSpeedButton
              Left = 698
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Finalizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_glosamanualcontaClick
            end
            object btn_removerGlosa: TSpeedButton
              Left = 620
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Remover'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_removerGlosaClick
            end
            object DBGrid2: TDBGrid
              Left = 4
              Top = 176
              Width = 765
              Height = 163
              DataSource = DataSource3
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_descricaoGlosa'
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_erg'
                  Width = 381
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_glo'
                  Width = 400
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_dgl'
                  Width = 500
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descricao_cgl'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_erroglosa'
                  Visible = True
                end>
            end
            object Panel6: TPanel
              Tag = -1
              Left = 0
              Top = 96
              Width = 773
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '  C�digo da Especialidade                                       ' +
                '          CRM                                                   ' +
                '               CID'
              TabOrder = 3
              object Label16: TLabel
                Left = 272
                Top = 9
                Width = 24
                Height = 13
                Cursor = crHandPoint
                Hint = 'Consultar Cadastro de CRM'
                Caption = 'CRM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = Label16Click
              end
              object Label17: TLabel
                Left = 494
                Top = 9
                Width = 18
                Height = 13
                Cursor = crHandPoint
                Hint = 'Consultar Cadastro de CID'
                Caption = 'CID'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = Label17Click
              end
              object Label18: TLabel
                Left = 7
                Top = 9
                Width = 117
                Height = 13
                Cursor = crHandPoint
                Hint = 'Consultar Cadastro de Especialidade'
                Caption = 'C�digo da Especialidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = Label18Click
              end
              object edt_cod_especialidade: TDCEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                MaxLength = 8
                TabOrder = 0
              end
              object edt_crm: TDCEdit
                Tag = -10
                Left = 352
                Top = 4
                Width = 119
                Height = 21
                Color = clWhite
                MaxLength = 6
                TabOrder = 1
              end
              object edt_cid: TDCEdit
                Tag = -10
                Left = 526
                Top = 4
                Width = 119
                Height = 21
                Color = clWhite
                MaxLength = 6
                TabOrder = 2
              end
            end
            object Panel8: TPanel
              Tag = -1
              Left = 0
              Top = 64
              Width = 773
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '  Data de Entrada                                               ' +
                '               Data de Sa�da'
              TabOrder = 2
              object edt_dtentrada: TDCDateEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                TabOrder = 0
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
              object edt_dtsaida: TDCDateEdit
                Left = 352
                Top = 4
                Width = 119
                Height = 21
                TabOrder = 1
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
            object Panel9: TPanel
              Tag = -1
              Left = 0
              Top = 32
              Width = 773
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '  C�digo da Autoriza��o                                         ' +
                '           C�digo da Acomoda��o                     C�digo do Ti' +
                'po de Atendimento'
              TabOrder = 1
              object Label15: TLabel
                Left = 8
                Top = 9
                Width = 107
                Height = 13
                Cursor = crHandPoint
                Hint = 'Consultar Cadastro de Autoriza��o'
                Caption = 'C�digo da Autoriza��o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = Label15Click
              end
              object edt_cod_autorizacao: TDCEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                MaxLength = 10
                TabOrder = 0
              end
              object edt_cod_acomodacao: TDCEdit
                Tag = -10
                Left = 394
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 1
              end
              object edt_cod_tipatendimento: TDCEdit
                Tag = -10
                Left = 606
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 2
              end
            end
            object Panel10: TPanel
              Tag = -1
              Left = 0
              Top = 0
              Width = 773
              Height = 32
              Align = alTop
              Alignment = taLeftJustify
              Caption = 
                '  Carteira do Benefici�rio                                      ' +
                '             Nome'
              TabOrder = 0
              object SpeedButton5: TSpeedButton
                Left = 682
                Top = 6
                Width = 32
                Height = 22
                Hint = 'Atualizar C�digo da Autoriza��o'
                Caption = 'A'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton5Click
              end
              object SpeedButton8: TSpeedButton
                Left = 727
                Top = 6
                Width = 32
                Height = 22
                Hint = 'Atualizar CRM '
                Caption = 'C'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton8Click
              end
              object edt_carteira: TDCEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                MaxLength = 10
                TabOrder = 0
                Text = '-'
                OnExit = edt_carteiraExit
              end
              object edt_nomedigitado: TDCEdit
                Tag = -10
                Left = 302
                Top = 4
                Width = 343
                Height = 21
                Color = clWhite
                MaxLength = 50
                TabOrder = 1
              end
            end
            object chb_pagtoconta: TCheckBox
              Left = 4
              Top = 138
              Width = 273
              Height = 17
              Caption = 'Efetuar o Pagamento Incondicional da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object edt_obs_glosaconta: TDCEdit
              Left = 147
              Top = 349
              Width = 450
              Height = 21
              MaxLength = 100
              TabOrder = 7
            end
            object ed2_cod_descricaoglosa: TDCChoiceEdit
              Tag = -2
              Left = 84
              Top = 349
              Width = 59
              Height = 21
              Hint = 
                'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                'squisar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 6
              OnExit = ed2_cod_descricaoglosaExit
              Alignment = taRightJustify
              OnButtonClick = ed2_cod_descricaoglosaButtonClick
              EditMask = '9999'
            end
            object cbx_cod_classeGlosa: TDCComboBox
              Tag = -1
              Left = 644
              Top = 349
              Width = 125
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object tbs_glosaitem: TTabSheet
            Caption = 'tbs_glosaitem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 2
            ParentFont = False
            TabVisible = False
            OnShow = tbs_glosaitemShow
            object Label5: TLabel
              Left = 4
              Top = 216
              Width = 140
              Height = 13
              Caption = 'Glosas do Item da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 4
              Top = 398
              Width = 429
              Height = 13
              AutoSize = False
              Caption = 'Total de Glosas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton3: TSpeedButton
              Left = 588
              Top = 196
              Width = 189
              Height = 26
              Caption = 'Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarClick
            end
            object btn_gravarAlteracaoItem: TSpeedButton
              Left = 616
              Top = 6
              Width = 148
              Height = 26
              Caption = 'Gravar Altera��es'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_gravarAlteracaoItemClick
            end
            object Label9: TLabel
              Left = 7
              Top = 348
              Width = 74
              Height = 29
              AutoSize = False
              Caption = 'Observa��o Glosa Manual'
              WordWrap = True
            end
            object btn_glosaManualItem: TSpeedButton
              Left = 698
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Finalizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_glosaManualItemClick
            end
            object Label13: TLabel
              Left = 606
              Top = 348
              Width = 37
              Height = 29
              AutoSize = False
              Caption = 'Classe Glosa'
              WordWrap = True
            end
            object SpeedButton1: TSpeedButton
              Left = 616
              Top = 52
              Width = 148
              Height = 26
              Caption = 'Limpar / Editar Glosas'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object btn_addglosa02: TSpeedButton
              Left = 541
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Adicionar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_addglosa02Click
            end
            object btn_removerGlosa02: TSpeedButton
              Left = 621
              Top = 380
              Width = 70
              Height = 26
              Caption = 'Remover'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_removerGlosa02Click
            end
            object DBGrid4: TDBGrid
              Left = 4
              Top = 229
              Width = 765
              Height = 113
              DataSource = DataSource3
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 7
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_descricaoGlosa'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_erg'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_glo'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_dgl'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descricao_cgl'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_erroglosa'
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Tag = -1
              Left = 0
              Top = 32
              Width = 600
              Height = 32
              Alignment = taLeftJustify
              Caption = '   Descri��o do Servi�o'
              TabOrder = 1
              object edt_descricao_itc: TDCEdit
                Left = 128
                Top = 4
                Width = 425
                Height = 21
                MaxLength = 50
                TabOrder = 0
              end
            end
            object Panel11: TPanel
              Tag = -1
              Left = 0
              Top = 96
              Width = 773
              Height = 32
              Alignment = taLeftJustify
              Caption = '   Data de Realiza��o'
              TabOrder = 3
              object edt_dtrealizacao_itc: TDCDateEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                TabOrder = 0
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
            object Panel12: TPanel
              Tag = -1
              Left = 0
              Top = 64
              Width = 600
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '   Emergencia                                                  D' +
                'HE                                    Posi��o                   ' +
                '         Retorno'
              TabOrder = 2
              object edt_emergencia_itc: TDCEdit
                Tag = -10
                Left = 128
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 0
              end
              object edt_dhe_itc: TDCEdit
                Tag = -10
                Left = 246
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 1
              end
              object edt_cod_posicao: TDCEdit
                Tag = -10
                Left = 394
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 2
              end
              object edt_retorno_itc: TDCEdit
                Tag = -10
                Left = 514
                Top = 4
                Width = 39
                Height = 21
                Color = clWhite
                MaxLength = 1
                TabOrder = 3
              end
            end
            object Panel13: TPanel
              Tag = -1
              Left = 0
              Top = 0
              Width = 600
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '  Cod. do Item de Servi�o                                       ' +
                '                                       C�digo Padr�o'
              TabOrder = 0
              object edt_cod_itemservico: TDCEdit
                Left = 128
                Top = 4
                Width = 121
                Height = 21
                MaxLength = 10
                TabOrder = 0
                Text = '-'
                OnExit = edt_cod_itemservicoExit
              end
              object edt_cod_padrao: TDCEdit
                Left = 432
                Top = 4
                Width = 121
                Height = 21
                MaxLength = 8
                TabOrder = 1
                Text = '-'
              end
            end
            object Panel14: TPanel
              Tag = -1
              Left = 0
              Top = 128
              Width = 773
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '   Quantidade                                     Vl. Inf.      ' +
                '                               Vl. Glosa                        ' +
                '                  Vl.Pagar                                     R' +
                'edu�./Acr�sc.'
              TabOrder = 4
              object SpeedButton7: TSpeedButton
                Left = 442
                Top = 4
                Width = 24
                Height = 22
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  0400000000008000000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                  88888CCCCCCCCCCCCCCC8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8
                  EC8C8C8888888888888C8C87C87C87C87C8C8C8EC8EC8EC8EC8C8C8888888888
                  888C8C8CCCCCCCCC888C8C8CEEEEEEEC888C8C8CCCCCCCCC888C8C8888888888
                  888C88CCCCCCCCCCCCC888888888888888888888888888888888}
                OnClick = SpeedButton7Click
              end
              object edt_qtde_itc: TDCEdit
                Tag = -10
                Left = 128
                Top = 4
                Width = 41
                Height = 21
                Color = clWhite
                MaxLength = 5
                TabOrder = 0
              end
              object edt_vlinformado_itc: TDCEdit
                Tag = -10
                Left = 217
                Top = 4
                Width = 88
                Height = 21
                Color = clWhite
                Enabled = False
                MaxLength = 12
                TabOrder = 1
              end
              object edt_reducacresc_itc: TDCEdit
                Tag = -10
                Left = 720
                Top = 4
                Width = 49
                Height = 21
                Color = clWhite
                MaxLength = 10
                TabOrder = 3
              end
              object edt_vlpagar_itc: TDCEdit
                Tag = -10
                Left = 534
                Top = 4
                Width = 88
                Height = 21
                Color = clWhite
                MaxLength = 12
                TabOrder = 2
              end
              object edt_vlglosa: TDCEdit
                Tag = -10
                Left = 368
                Top = 4
                Width = 65
                Height = 21
                Color = clWhite
                Enabled = False
                MaxLength = 12
                TabOrder = 4
              end
            end
            object chb_pagtoitem: TCheckBox
              Left = 0
              Top = 194
              Width = 341
              Height = 17
              Caption = 'Efetuar Pagamento Incondicional do Item da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object edt_obs_glosaitem: TDCEdit
              Left = 151
              Top = 349
              Width = 450
              Height = 21
              MaxLength = 100
              TabOrder = 9
            end
            object Panel15: TPanel
              Tag = -1
              Left = 0
              Top = 160
              Width = 773
              Height = 31
              Alignment = taLeftJustify
              Caption = '   Observa��es'
              TabOrder = 5
              object edt_obs_itc: TDCEdit
                Tag = -10
                Left = 128
                Top = 4
                Width = 641
                Height = 21
                Color = clWhite
                MaxLength = 200
                TabOrder = 0
              end
            end
            object edt_cod_descricaoglosa: TDCChoiceEdit
              Tag = -2
              Left = 87
              Top = 349
              Width = 59
              Height = 21
              Hint = 
                'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                'squisar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 8
              OnExit = edt_cod_descricaoglosaExit
              Alignment = taRightJustify
              OnButtonClick = edt_cod_descricaoglosaButtonClick
              EditMask = '9999'
            end
            object cb2_cod_classeGlosa: TDCComboBox
              Tag = -1
              Left = 644
              Top = 349
              Width = 125
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              Items.Strings = (
                '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
                '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object tbs_material: TTabSheet
            Caption = 'tbs_material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            TabVisible = False
            object btn_confirmarmat: TSpeedButton
              Left = 573
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Confirmar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_confirmarmatClick
            end
            object lbl_totalmaterial: TLabel
              Left = 5
              Top = 317
              Width = 103
              Height = 13
              Caption = 'Total de Materiais'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_titulomatmad: TLabel
              Left = 5
              Top = 6
              Width = 68
              Height = 13
              Caption = 'MATERIAIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_imprimirmat: TSpeedButton
              Left = 473
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_imprimirmatClick
            end
            object Label20: TLabel
              Left = 470
              Top = 296
              Width = 89
              Height = 13
              Caption = 'Vl. Total Informado'
            end
            object Label21: TLabel
              Left = 570
              Top = 296
              Width = 70
              Height = 13
              Caption = 'Vl. Total Pagar'
            end
            object Label22: TLabel
              Left = 670
              Top = 296
              Width = 46
              Height = 13
              Caption = 'Diferen�a'
            end
            object btn_voltarmat: TSpeedButton
              Left = 676
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarmatClick
            end
            object chb_pagtomaterial: TCheckBox
              Left = 28
              Top = 48
              Width = 325
              Height = 17
              Caption = 'Efetuar Pagamento Incondicional do Item do Material'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnClick = chb_pagtomaterialClick
            end
            object Panel26: TPanel
              Left = 28
              Top = 161
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Pesquisa'
              TabOrder = 13
              object btn_cod_simpro: TSpeedButton
                Left = 528
                Top = 7
                Width = 26
                Height = 22
                Hint = 'Localizar material na Simpro pela Descri��o'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
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
                ParentShowHint = False
                ShowHint = True
                OnClick = btn_cod_simproClick
              end
              object edt_descricao: TEdit
                Tag = 3
                Left = 116
                Top = 6
                Width = 405
                Height = 21
                TabOrder = 0
              end
            end
            object Panel22: TPanel
              Tag = -1
              Left = 28
              Top = 130
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Qtde. a Pagar                                               ' +
                '     Valor a Pagar'
              TabOrder = 2
              object edt_qtdepagar_mtc: TDCEdit
                Tag = 3
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
              end
              object edt_vlpagar_mtc: TDCEdit
                Tag = 3
                Left = 321
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
            end
            object Panel21: TPanel
              Tag = -1
              Left = 28
              Top = 98
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Qtde. Informada                                             ' +
                'Valor Informado'
              TabOrder = 1
              object edt_qtde_mtc: TDCEdit
                Tag = 3
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
                EditMask = '0000'
              end
              object edt_vlinformado_mtc: TDCEdit
                Tag = 3
                Left = 321
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
              object edt_status_mtc: TDCEdit
                Tag = 3
                Left = 441
                Top = 3
                Width = 0
                Height = 21
                MaxLength = 60
                TabOrder = 2
              end
            end
            object pnl_crm: TPanel
              Tag = -1
              Left = 28
              Top = 66
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Cod. Padr�o                                                 ' +
                '         Descri��o'
              TabOrder = 0
              object edt_cod_padraomat: TDCEdit
                Tag = 3
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
                EditMask = '0000000000'
              end
              object edt_descricao_mtc: TDCEdit
                Tag = 3
                Left = 321
                Top = 5
                Width = 371
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
            end
            object btn_adicionarmat: TPDJButton
              Left = 8
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_adicionarmatClick
              TabOrder = 3
            end
            object btn_alterarmat: TPDJButton
              Left = 94
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_alterarmatClick
              TabOrder = 4
            end
            object btn_salvarmat: TPDJButton
              Left = 179
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_salvarmatClick
              TabOrder = 5
            end
            object btn_cancelarmat: TPDJButton
              Left = 264
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_cancelarmatClick
              TabOrder = 6
            end
            object btn_removermat: TPDJButton
              Left = 350
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_removermatClick
              TabOrder = 7
            end
            object edt_TlinformadoMat: TDCEdit
              Left = 470
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
              Alignment = taRightJustify
            end
            object edt_TlPagarMat: TDCEdit
              Left = 570
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              Alignment = taRightJustify
            end
            object edt_TlDiferencaMat: TDCEdit
              Left = 670
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
              Alignment = taRightJustify
            end
            object dbg_gimtcm: TDBGrid
              Left = 5
              Top = 213
              Width = 765
              Height = 78
              DataSource = dts_gimtcm
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 11
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Visible = False
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_erroglosa'
                  Title.Caption = 'Cod.Erro'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_erg'
                  Title.Caption = 'Tipo de Glosa'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_glo'
                  Title.Caption = 'Erro'
                  Width = 64
                  Visible = True
                end>
            end
            object dbg_material: TDBGrid
              Left = 5
              Top = 24
              Width = 765
              Height = 185
              DataSource = dts_material
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 12
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbg_materialDrawColumnCell
              OnDblClick = dbg_materialDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_itemmaterial'
                  Title.Caption = 'Cod.Interno'
                  Width = 2
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_padraomat'
                  Title.Caption = 'C�d.Padr�o'
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_mtc'
                  Title.Caption = 'Descri��o'
                  Width = 290
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde_mtc'
                  Title.Caption = 'Qtd.Inf.'
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtdepagar_mtc'
                  Title.Caption = 'Qtd.Pag.'
                  Width = 48
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlinformado_mtc'
                  Title.Caption = 'Vlr.Inform.'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlpagar_mtc'
                  Title.Caption = 'Vlr.Pagar'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'diferenca'
                  Title.Caption = 'Glosa'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sts'
                  Title.Caption = 'Status'
                  Width = 200
                  Visible = True
                end>
            end
            object dbe_cod_padraomat: TDBEdit
              Left = 112
              Top = 0
              Width = 0
              Height = 21
              DataField = 'cod_padraomat'
              DataSource = dts_material
              TabOrder = 15
              OnChange = dbe_cod_padraomatChange
            end
          end
          object tbs_medicamento: TTabSheet
            Caption = 'tbs_medicamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 4
            ParentFont = False
            TabVisible = False
            object Label19: TLabel
              Left = 5
              Top = 6
              Width = 100
              Height = 13
              Caption = 'MEDICAMENTOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_totalmedicamento: TLabel
              Left = 5
              Top = 317
              Width = 133
              Height = 13
              Caption = 'Total de Medicamentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton4: TSpeedButton
              Left = 473
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_imprimirmatClick
            end
            object btn_confirmarMed: TSpeedButton
              Left = 573
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Confirmar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_confirmarmatClick
            end
            object Label23: TLabel
              Left = 470
              Top = 296
              Width = 89
              Height = 13
              Caption = 'Vl. Total Informado'
            end
            object Label24: TLabel
              Left = 570
              Top = 296
              Width = 70
              Height = 13
              Caption = 'Vl. Total Pagar'
            end
            object Label25: TLabel
              Left = 670
              Top = 296
              Width = 46
              Height = 13
              Caption = 'Diferen�a'
            end
            object btn_voltarmed: TSpeedButton
              Left = 676
              Top = 336
              Width = 80
              Height = 26
              Caption = 'Voltar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_voltarmedClick
            end
            object chb_pagtomedicamento: TCheckBox
              Left = 28
              Top = 48
              Width = 355
              Height = 14
              Caption = 'Efetuar Pagamento Incondicional do Item do Medicamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnClick = chb_pagtomedicamentoClick
            end
            object Panel27: TPanel
              Left = 28
              Top = 162
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = '    Pesquisa'
              TabOrder = 13
              object btn_cod_brasindice: TSpeedButton
                Left = 528
                Top = 7
                Width = 26
                Height = 22
                Hint = 'Localizar medicamento na Brasindice pela Descri��o'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
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
                ParentShowHint = False
                ShowHint = True
                OnClick = btn_cod_brasindiceClick
              end
              object edt_descricao_med: TEdit
                Tag = 3
                Left = 116
                Top = 6
                Width = 405
                Height = 21
                TabOrder = 0
              end
            end
            object Panel23: TPanel
              Tag = -1
              Left = 28
              Top = 130
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Qtde. a Pagar                                               ' +
                '     Valor a Pagar'
              TabOrder = 5
              object edt_qtdepagar_mdc: TDCEdit
                Tag = 4
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
              end
              object edt_vlpagar_mdc: TDCEdit
                Tag = 4
                Left = 321
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
              object Edit1: TEdit
                Tag = 4
                Left = 440
                Top = 8
                Width = 0
                Height = 21
                TabOrder = 2
                Text = 'edt_status_mdc'
              end
            end
            object Panel24: TPanel
              Tag = -1
              Left = 28
              Top = 98
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Qtde. Informada                                             ' +
                'Valor Informado'
              TabOrder = 6
              object edt_qtde_mdc: TDCEdit
                Tag = 4
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
                EditMask = '0000'
              end
              object edt_vlinformado_mdc: TDCEdit
                Tag = 4
                Left = 321
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
            end
            object Panel25: TPanel
              Tag = -1
              Left = 28
              Top = 66
              Width = 700
              Height = 32
              Alignment = taLeftJustify
              Caption = 
                '    Cod. Padr�o                                                 ' +
                '         Descri��o'
              TabOrder = 7
              object edt_cod_padraomed: TDCEdit
                Tag = 4
                Left = 116
                Top = 5
                Width = 90
                Height = 21
                MaxLength = 60
                TabOrder = 0
                EditMask = '0000000000'
              end
              object edt_descricao_mdc: TDCEdit
                Tag = 4
                Left = 321
                Top = 5
                Width = 371
                Height = 21
                MaxLength = 60
                TabOrder = 1
              end
            end
            object btn_adicionarMed: TPDJButton
              Left = 8
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_adicionarMedClick
              TabOrder = 0
            end
            object btn_alterarMed: TPDJButton
              Left = 94
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_alterarMedClick
              TabOrder = 1
            end
            object btn_salvarMed: TPDJButton
              Left = 179
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_salvarMedClick
              TabOrder = 2
            end
            object btn_cancelarMed: TPDJButton
              Left = 264
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_cancelarMedClick
              TabOrder = 3
            end
            object btn_removerMed: TPDJButton
              Left = 350
              Top = 336
              Width = 80
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
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
              OnClick = btn_removerMedClick
              TabOrder = 4
            end
            object edt_TlinformadoMed: TDCEdit
              Left = 470
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object edt_TlPagarMed: TDCEdit
              Left = 570
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
            end
            object edt_TlDiferencaMed: TDCEdit
              Left = 670
              Top = 310
              Width = 95
              Height = 21
              TabStop = False
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object dbg_gimdcm: TDBGrid
              Left = 5
              Top = 213
              Width = 764
              Height = 78
              DataSource = dts_gimdcm
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 11
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_erroglosa'
                  Title.Caption = 'Cod.Erro'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_erg'
                  Title.Caption = 'Tipo de Glosa'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_glo'
                  Title.Caption = 'Erro'
                  Width = 64
                  Visible = True
                end>
            end
            object dbg_medicamento: TDBGrid
              Left = 5
              Top = 24
              Width = 765
              Height = 185
              DataSource = dts_medicamento
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 12
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbg_medicamentoDrawColumnCell
              OnDblClick = dbg_medicamentoDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_padraomed'
                  Title.Caption = 'C�d.Padr�o'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_mdc'
                  Title.Caption = 'Descri��o'
                  Width = 290
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde_mdc'
                  Title.Caption = 'Qtd.Inf'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtdepagar_mdc'
                  Title.Caption = 'Qtd.Pag.'
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlinformado_mdc'
                  Title.Caption = 'Vlr.Inform.'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlpagar_mdc'
                  Title.Caption = 'Vlr.Pagar'
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'diferenca'
                  Title.Caption = 'Glosa'
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao_sts'
                  Title.Caption = 'Status'
                  Width = 200
                  Visible = True
                end>
            end
            object DBEdit1: TDBEdit
              Left = 112
              Top = 0
              Width = 0
              Height = 21
              DataField = 'cod_padraomed'
              DataSource = dts_medicamento
              TabOrder = 15
              OnChange = DBEdit1Change
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Resumo / Relat�rios'
        ImageIndex = 3
        object PDJButton3: TPDJButton
          Left = 2
          Top = 40
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio Sint�tico de Valores para Repasse por Benefici�rio'
          OnClick = PDJButton3Click
          TabOrder = 0
        end
        object PDJButton4: TPDJButton
          Left = 2
          Top = 154
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio de Glosas por Benefici�rio'
          OnClick = PDJButton4Click
          TabOrder = 1
        end
        object PDJButton5: TPDJButton
          Left = 2
          Top = 97
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio de Valores para Repasse por Data de Atendimento'
          OnClick = PDJButton5Click
          TabOrder = 2
        end
        object PDJButton6: TPDJButton
          Left = 2
          Top = 126
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio de Valores para Repasse por N�mero Sequencial'
          OnClick = PDJButton6Click
          TabOrder = 3
        end
        object PDJButton8: TPDJButton
          Left = 2
          Top = 183
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio de Glosas para o Conveniado'
          OnClick = PDJButton8Click
          TabOrder = 4
        end
        object Panel20: TPanel
          Tag = -1
          Left = 2
          Top = 1
          Width = 779
          Height = 32
          Alignment = taLeftJustify
          Caption = '    Tipo de Atendimento'
          TabOrder = 5
          object rdb_ambulatorial: TRadioButton
            Left = 180
            Top = 8
            Width = 89
            Height = 17
            Caption = 'Ambulatorial'
            TabOrder = 0
          end
          object rdb_internacao: TRadioButton
            Left = 284
            Top = 8
            Width = 85
            Height = 17
            Caption = 'Interna��o'
            TabOrder = 1
          end
          object rdb_tds: TRadioButton
            Left = 384
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Todos'
            Checked = True
            TabOrder = 2
            TabStop = True
          end
        end
        object PDJButton2: TPDJButton
          Left = 19
          Top = 331
          Width = 354
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000CCD2D7C7CCD0
            ADA6A88571727D6C6C837070827070827070826F6F826F6F8270708270708270
            70806C6C7C71717E7F7F96999BBFC6C86976B6CBCF6DABAD396667335251355B
            5B345959335959315C5C326262315B5B335959345959355B5B2D5B5B4349497D
            636388878792969769763AAEB000D9D900D8D800D3D300D7D700D7D700D6D605
            E7E701F0F004E5E500D7D700D7D700D7D700E2E229C6C64855556C5A5A7D7D7D
            697600A7A500FFFF00FFFF00FFFF00FFFF00FFFF09FFFF2FD6D61B91912ADDDD
            03FFFF00FFFF00FFFF02FFFF08FFFF099090593F3FA29C9E697633AFAF00ECEC
            00FFFF00FFFF00FFFF00FFFF07FFFF234A4A14000021636304FFFF00FFFF00FF
            FF00FFFF08F6F63162627D6262C7CCCF6976A4BBBF14C1C100FFFF00FFFF00FF
            FF00FFFF08FFFF1EAEAE0C5B5B21B3B304FFFF00FFFF00FFFF02FFFF21A4A45D
            2A2AAEA2A4CDD8DC6976CCCBD060AFB100E5E500FFFF00FFFF00FFFF04FFFF2E
            D9D930B1B114FFFF01FFFF00FFFF00FFFF0BF0F0364847825757C7CFD3CBD5D9
            6976CED1D5A4B9BC19BABB00FEFE00FFFF00FFFF01FFFF2384842E4E4E0AF6F6
            00FFFF00FFFF01FFFF1DA3A3592F2EAFA5A8CED9DDC8D0D46976CBD2D6C8C6CA
            59A7A800DFDE00FFFF00FFFF25FEFE204C4C130C0C2FD0D003FFFF00FFFF08E9
            E93A4D4C896161C9D3D7CCD5D9C8D0D46976C9D1D5D1D2D69DB1B315B7B600FD
            FD00FFFF12D3D31027270B000018909001FFFF01FFFF23A4A45D3434B0A8AACF
            DCE0C9D1D5C8D0D46976C8D0D4CED3D7CAC1C656A0A200DDDD00FFFF00B0B000
            111100000000696900FFFF12E9E9404E4E866666C8D4D8CDD6DAC8D0D4C8D0D4
            6976C8D0D4C9D2D6D8D4D9A3AAAE12B8B700FFFF0BBDBD0908080600000B6E6E
            06FFFF2DA5A55F3231B0B1B3D1DEE2C9D0D4C8D0D4C8D0D46976C8D0D4C7D0D4
            D0D4D9D6C3C85AA5A600EEED24F0F0256363173D3D2CC4C414F2F23E4C4C8563
            63CFDDE2CED6DBC8CFD3C8D0D4C8D0D46976C8D0D4C7D0D4C9D1D6E2D8DBACAF
            B30CBABB0AFFFF0EF6F608EEEE0FFFFF26AAAA572525B5B6B8D4E1E7C8D1D5C8
            CFD3C8D0D4C8D0D46976C8D0D4C8D0D4C6D0D4D0D5D9DEC8CD61A6A800E4E300
            FFFF00FFFF09F1F1394A4A846162D1E1E5CED6DBC6CFD3C8D0D4C8D0D4C8D0D4
            6976C8D0D4C8D0D4C8D0D4C6D0D4E2D9DEB4B5B81ABFBF00FAF900FFFF25B0AF
            5D3131B5B9BBD2DEE3C8D0D3C8D0D4C8D0D4C8D0D4C8D0D46976C8D0D4C8D0D4
            C8D0D4C7D0D4CED6DAD8C9CD67A8AB01E7E72CE5E55D6E70A39497CEDADEC9D1
            D5C8D0D4C8D0D4C8D0D4C8D0D4C8D0D46976C8D0D4C8D0D4C8D0D4C8D0D4C7D0
            D4D3D3D7C1C7CA31B1B2299A9AA4A6A9CAD2D6CAD2D6C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D46976}
          GlyphHot.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000CCD2D7C7CCD0
            ADA6A88571727D6C6C837070827070827070826F6F826F6F8270708270708270
            70806C6C7C71717E7F7F96999BBFC6C86976B6CBCF6DABAD396667335251355B
            5B345959335959315C5C326262315B5B335959345959355B5B2D5B5B4349497D
            636388878792969769763AAEB000D9D900D8D800D3D300D7D700D7D700D6D605
            E7E701F0F004E5E500D7D700D7D700D7D700E2E229C6C64855556C5A5A7D7D7D
            697600A7A500FFFF00FFFF00FFFF00FFFF00FFFF09FFFF2FD6D61B91912ADDDD
            03FFFF00FFFF00FFFF02FFFF08FFFF099090593F3FA29C9E697633AFAF00ECEC
            00FFFF00FFFF00FFFF00FFFF07FFFF234A4A14000021636304FFFF00FFFF00FF
            FF00FFFF08F6F63162627D6262C7CCCF6976A4BBBF14C1C100FFFF00FFFF00FF
            FF00FFFF08FFFF1EAEAE0C5B5B21B3B304FFFF00FFFF00FFFF02FFFF21A4A45D
            2A2AAEA2A4CDD8DC6976CCCBD060AFB100E5E500FFFF00FFFF00FFFF04FFFF2E
            D9D930B1B114FFFF01FFFF00FFFF00FFFF0BF0F0364847825757C7CFD3CBD5D9
            6976CED1D5A4B9BC19BABB00FEFE00FFFF00FFFF01FFFF2384842E4E4E0AF6F6
            00FFFF00FFFF01FFFF1DA3A3592F2EAFA5A8CED9DDC8D0D46976CBD2D6C8C6CA
            59A7A800DFDE00FFFF00FFFF25FEFE204C4C130C0C2FD0D003FFFF00FFFF08E9
            E93A4D4C896161C9D3D7CCD5D9C8D0D46976C9D1D5D1D2D69DB1B315B7B600FD
            FD00FFFF12D3D31027270B000018909001FFFF01FFFF23A4A45D3434B0A8AACF
            DCE0C9D1D5C8D0D46976C8D0D4CED3D7CAC1C656A0A200DDDD00FFFF00B0B000
            111100000000696900FFFF12E9E9404E4E866666C8D4D8CDD6DAC8D0D4C8D0D4
            6976C8D0D4C9D2D6D8D4D9A3AAAE12B8B700FFFF0BBDBD0908080600000B6E6E
            06FFFF2DA5A55F3231B0B1B3D1DEE2C9D0D4C8D0D4C8D0D46976C8D0D4C7D0D4
            D0D4D9D6C3C85AA5A600EEED24F0F0256363173D3D2CC4C414F2F23E4C4C8563
            63CFDDE2CED6DBC8CFD3C8D0D4C8D0D46976C8D0D4C7D0D4C9D1D6E2D8DBACAF
            B30CBABB0AFFFF0EF6F608EEEE0FFFFF26AAAA572525B5B6B8D4E1E7C8D1D5C8
            CFD3C8D0D4C8D0D46976C8D0D4C8D0D4C6D0D4D0D5D9DEC8CD61A6A800E4E300
            FFFF00FFFF09F1F1394A4A846162D1E1E5CED6DBC6CFD3C8D0D4C8D0D4C8D0D4
            6976C8D0D4C8D0D4C8D0D4C6D0D4E2D9DEB4B5B81ABFBF00FAF900FFFF25B0AF
            5D3131B5B9BBD2DEE3C8D0D3C8D0D4C8D0D4C8D0D4C8D0D46976C8D0D4C8D0D4
            C8D0D4C7D0D4CED6DAD8C9CD67A8AB01E7E72CE5E55D6E70A39497CEDADEC9D1
            D5C8D0D4C8D0D4C8D0D4C8D0D4C8D0D46976C8D0D4C8D0D4C8D0D4C8D0D4C7D0
            D4D3D3D7C1C7CA31B1B2299A9AA4A6A9CAD2D6CAD2D6C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D46976}
          Caption = ' Rela��o de Contas / Itens n�o Carregados na leitura'
          OnClick = PDJButton2Click
          TabOrder = 6
        end
        object PDJButton11: TPDJButton
          Left = 2
          Top = 211
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Planilha de Glosas para o Conveniado'
          OnClick = PDJButton11Click
          TabOrder = 7
        end
        object PDJButton12: TPDJButton
          Left = 2
          Top = 240
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rios de Despesas de Conveniados por Plano'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton12Click
          TabOrder = 8
        end
        object btn_repbenanal: TPDJButton
          Left = 2
          Top = 69
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Relat�rio Anal�tico de Valores para Repasse por Benefici�rio'
          OnClick = btn_repbenanalClick
          TabOrder = 9
        end
        object btn_glosasparaconveniado: TPDJButton
          Left = 557
          Top = 184
          Width = 20
          Height = 21
          Hint = 'Exportar Glosas para o Conveniado p/Excel'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000C40E0000C40E00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00272727272727
            2727727272727272727227FFFFFFFFFFFF2772FFFFFFF727277227F2727272F2
            722772F727272F272F7227F27272F2727F2772FF272F27272F7227FFF2F2727F
            FF2772FF2F272727FF7227F2F27272727F2772F72727F7272F7227F2727FFF72
            7F2772FFFFFFFFFFFF7227272727272727277272727272727272}
          GlyphHot.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            180000000000000300000000000000000000000000000000000039724B39724B
            39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
            301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
            966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
            EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
            D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
            EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
            EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
            2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
            512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
            F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
            8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
            BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
            F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
            E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
            AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
            FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
            03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
            F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
            FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
            EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
            FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
            AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
            8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
            966A548E664C87614C876146805C407A56407A5639724B39724B}
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_glosasparaconveniadoClick
          ShowHint = True
          TabOrder = 10
        end
        object pgb_registros: TProgressBar
          Left = 1
          Top = 361
          Width = 783
          Height = 19
          Min = 0
          Max = 100
          TabOrder = 11
          Visible = False
        end
        object PDJButton15: TPDJButton
          Left = 2
          Top = 272
          Width = 533
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Extrato do Conv�niado por &Item de Servi�o'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = PDJButton15Click
          TabOrder = 12
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Pesquisar'
        ImageIndex = 5
        object Label29: TLabel
          Left = 16
          Top = 397
          Width = 216
          Height = 13
          Caption = '* Clique duas vezes para navegar ate a conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbg_Pendencia: TDBGrid
          Left = 8
          Top = 135
          Width = 773
          Height = 260
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = dbg_PendenciaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_conveniado'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtreferencia_cta'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sequencia_cta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sequenciaconta_ctm'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtentrada_ctm'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_autorizacao'
              Width = 116
              Visible = True
            end>
        end
        object btn_pesquisar: TPDJButton
          Left = 602
          Top = 399
          Width = 170
          Height = 25
          RepeatInterval = 50
          RepeatStartInterval = 50
          Caption = 'Pesquisar'
          OnClick = btn_pesquisarClick
          TabOrder = 5
        end
        object Panel28: TPanel
          Tag = -1
          Left = 0
          Top = 32
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    M�s/Ano Final'
          TabOrder = 1
          object cb3_cod_mes: TDCComboBox
            Tag = -1
            Left = 123
            Top = 5
            Width = 210
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
              '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object ed3_ano: TDCEdit
            Tag = -1
            Left = 336
            Top = 5
            Width = 73
            Height = 21
            TabOrder = 1
            EditMask = '9999'
          end
        end
        object Panel29: TPanel
          Tag = -1
          Left = 0
          Top = 0
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    M�s/Ano Inicial'
          TabOrder = 0
          object cb2_cod_mes: TDCComboBox
            Tag = -1
            Left = 123
            Top = 5
            Width = 210
            Height = 21
            TabOrder = 0
            Items.Strings = (
              '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
              '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
            ValueItem = ''
            ItemHeight = 0
            Style = csOwnerDrawFixed
            ShowCheckBox = True
          end
          object ed2_ano: TDCEdit
            Tag = -1
            Left = 336
            Top = 5
            Width = 73
            Height = 21
            TabOrder = 1
            EditMask = '9999'
          end
        end
        object Panel30: TPanel
          Tag = -1
          Left = 0
          Top = 96
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Cod.Conveniado'
          TabOrder = 3
          object ed2_cod_conveniado: TDCChoiceEdit
            Tag = -1
            Left = 123
            Top = 5
            Width = 93
            Height = 21
            MaxLength = 10
            TabOrder = 0
            OnExit = ed2_cod_conveniadoExit
            Alignment = taRightJustify
            OnButtonClick = ed2_cod_conveniadoButtonClick
            EditMask = '99999-9'
          end
          object ed2_razao_con: TDCEdit
            Tag = -5
            Left = 220
            Top = 5
            Width = 445
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 1
          end
          object btn_limpaConveniado: TPDJButton
            Left = 674
            Top = 3
            Width = 29
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = ' X'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_limpaConveniadoClick
            TabOrder = 2
          end
        end
        object Panel31: TPanel
          Tag = -2
          Left = 0
          Top = 64
          Width = 787
          Height = 32
          Align = alTop
          Alignment = taLeftJustify
          Caption = '    Inscri��o'
          TabOrder = 2
          object edt_cod_beneficiario: TDCChoiceEdit
            Tag = -3
            Left = 123
            Top = 5
            Width = 93
            Height = 21
            Hint = 
              'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 0
            Alignment = taRightJustify
            EditMask = '9999999'
          end
          object edt_inscricao_ben: TDCChoiceEdit
            Tag = -1
            Left = 123
            Top = 5
            Width = 93
            Height = 21
            Hint = 
              'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
              'squisar'
            MaxLength = 10
            TabOrder = 1
            OnKeyDown = edt_inscricao_benKeyDown
            Alignment = taRightJustify
            OnButtonClick = edt_inscricao_benButtonClick
            EditMask = '9999999'
          end
          object edt_nome: TDCEdit
            Tag = -10
            Left = 220
            Top = 5
            Width = 445
            Height = 21
            TabStop = False
            Color = clInfoBk
            MaxLength = 12
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Top = 602
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
    Left = 704
    Top = 44
  end
  object dlg_leitura: TOpenDialog
    DefaultExt = 'txt'
    Title = 'IMASF - Selec�o de movimento para leitura'
    Left = 677
    Top = 44
  end
  object DataSource1: TDataSource
    DataSet = Fdt_principal.spc_cons_contamedica
    Left = 580
    Top = 93
  end
  object DataSource2: TDataSource
    DataSet = Fdt_principal.spc_cons_itemconta
    Left = 612
    Top = 93
  end
  object DataSource3: TDataSource
    DataSet = Fdt_principal.spc_cons_glosa
    Left = 644
    Top = 93
  end
  object DataSource4: TDataSource
    DataSet = fdt_principal5.spc_cons_contamedicaBenefi
    Left = 681
    Top = 93
  end
  object dts_medicamento: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_medicamentocontamedica
    Left = 715
    Top = 93
  end
  object dts_material: TDataSource
    DataSet = fdt_principal5.spc_cons_adm_materialcontamedica
    Left = 750
    Top = 93
  end
  object PopupMenu1: TPopupMenu
    Left = 732
    Top = 44
    object ImprimirProcedi1: TMenuItem
      Caption = 'Imprimir Procedimentos Realizados'
      OnClick = ImprimirProcedi1Click
    end
    object PesquisarContas1: TMenuItem
      Caption = 'Pesquisar Contas'
      OnClick = PesquisarContas1Click
    end
  end
  object dts_gimtcm: TDataSource
    DataSet = fdt_principal2.spc_exibir_critica_materialcontamedica_codsimpro
    Left = 548
    Top = 93
  end
  object dts_gimdcm: TDataSource
    DataSet = fdt_principal5.spc_exibir_critica_medicamentocontamedica_codbrasindice
    Left = 524
    Top = 93
  end
  object SaveDialog: TSaveDialog
    Left = 592
    Top = 316
  end
  object ppm_item: TPopupMenu
    Left = 762
    Top = 44
    object MenuItem1: TMenuItem
      Caption = 'Imprimir Hist�rico de Procedimentos'
      OnClick = MenuItem1Click
    end
  end
end
