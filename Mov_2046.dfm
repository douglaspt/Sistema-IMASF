inherited Frm_Mov_2046: TFrm_Mov_2046
  Caption = 'Frm_Mov_2046'
  ClientWidth = 799
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 799
    inherited Image1: TImage
      Width = 797
    end
  end
  inherited Panel2: TPanel
    Width = 799
    inherited Image3: TImage
      Width = 797
    end
    object btn_beneficiario: TPDJButton
      Left = 544
      Top = 4
      Width = 127
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
  end
  inherited Panel3: TPanel
    Width = 799
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 797
      Height = 486
      Align = alClient
      Alignment = taLeftJustify
      TabOrder = 0
      object lbl_nome_ben: TLabel
        Left = 10
        Top = 16
        Width = 108
        Height = 24
        Caption = 'Benefici�rio: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object PageControl: TPageControl
        Left = 2
        Top = 48
        Width = 793
        Height = 435
        ActivePage = tbs_principal
        TabOrder = 0
        object tbs_principal: TTabSheet
          Caption = 'tbs_principal'
          TabVisible = False
          object btn_atualizar: TSpeedButton
            Left = 293
            Top = 3
            Width = 165
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
          object Label11: TLabel
            Left = 8
            Top = 14
            Width = 103
            Height = 13
            Caption = 'Status do Benefici�rio'
          end
          object lsv_agenda: TListView
            Left = 1
            Top = 33
            Width = 781
            Height = 297
            Columns = <
              item
                Caption = 'Carteirinha'
                Width = 120
              end
              item
                Caption = 'Nome'
                Width = 215
              end
              item
                Caption = 'Status'
                Width = 120
              end
              item
                Caption = 'Dt. Aprova��o'
                Width = 85
              end
              item
                Caption = 'Dt. Per�cia'
                Width = 80
              end
              item
                Caption = 'Dt. Contrib.'
                Width = 80
              end
              item
                Caption = 'Dt. Cancelado'
                Width = 80
              end
              item
                Caption = 'C�digo'
                Width = 1
              end
              item
                Caption = 'Inscri��o'
                Width = 0
              end
              item
                Caption = 'Cod_tipoDependente'
                Width = 0
              end
              item
                Caption = 'Sexo'
                Width = 0
              end
              item
                Caption = 'Dt. Inscricao'
                Width = 0
              end>
            LargeImages = ImageList1
            ReadOnly = True
            RowSelect = True
            SmallImages = ImageList1
            StateImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            OnClick = lsv_agendaClick
            OnColumnClick = lsv_agendaColumnClick
            OnKeyUp = lsv_agendaKeyUp
          end
          object PDJButton3: TPDJButton
            Left = 457
            Top = 335
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Reemiss�o de Autoriza��o para Per�cia'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton3Click
            TabOrder = 1
          end
          object PDJButton5: TPDJButton
            Left = 81
            Top = 399
            Width = 168
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Aprova��o Administrativa'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton5Click
            Visible = False
            TabOrder = 2
          end
          object PDJButton6: TPDJButton
            Left = 9
            Top = 335
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = 'Aprova��o da Per�cia M�dica'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton6Click
            TabOrder = 3
          end
          object PDJButton7: TPDJButton
            Left = 9
            Top = 367
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Aprova��o de Inscri��o (1� Contribui��o)'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton7Click
            TabOrder = 4
          end
          object PDJButton8: TPDJButton
            Left = 457
            Top = 398
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Recusar Inscri��o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton8Click
            TabOrder = 5
          end
          object PDJButton1: TPDJButton
            Left = 457
            Top = 367
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Reemiss�o de Formulario de Ades�o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton1Click
            TabOrder = 6
          end
          object cbx_status: TComboBox
            Left = 120
            Top = 6
            Width = 162
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 7
            OnChange = cbx_statusChange
            Items.Strings = (
              'aguardando per�cia'
              'aprovado pela per�cia'
              'cadastrado com sucesso'
              'cancelados')
          end
        end
        object tbs_aprovacao: TTabSheet
          Caption = 'tbs_aprovacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          TabVisible = False
          object Label4: TLabel
            Left = 16
            Top = 40
            Width = 346
            Height = 16
            Caption = 'Confirma��o para Aprova��o da Inscri��o de Benefici�rio'
          end
          object chb_aprov2: TCheckBox
            Left = 56
            Top = 120
            Width = 473
            Height = 17
            Caption = 'Confirmo que o Benefici�rio acima possui a devida documenta��o'
            TabOrder = 0
            OnClick = chb_aprov1Click
          end
          object chb_aprov1: TCheckBox
            Left = 56
            Top = 88
            Width = 473
            Height = 17
            Caption = 
              'Confirmo que o Benefici�rio acima preenche todos requisitos para' +
              ' inscri��o'
            TabOrder = 1
            OnClick = chb_aprov1Click
          end
          object btn_imprimirauto: TPDJButton
            Left = 449
            Top = 300
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Imprimir Autoriza��o para Per�cia'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_imprimirautoClick
            TabOrder = 2
          end
          object btn_aprovarpericia: TPDJButton
            Left = 49
            Top = 300
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Aprovar para Per�cia M�dica'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_aprovarpericiaClick
            Visible = False
            TabOrder = 3
          end
          object btn_voltar: TPDJButton
            Left = 41
            Top = 383
            Width = 104
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '<<  Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 4
          end
          object btn_imprimiradesao: TPDJButton
            Left = 449
            Top = 340
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Imprimir Formulario de Ades�o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_imprimiradesaoClick
            TabOrder = 5
          end
        end
        object tbs_pericia: TTabSheet
          Caption = 'tbs_pericia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 2
          ParentFont = False
          TabVisible = False
          OnShow = tbs_periciaShow
          object Label5: TLabel
            Left = 16
            Top = 288
            Width = 334
            Height = 16
            Caption = 'Confirma��o para Aprova��o da Per�cia de Benefici�rio'
          end
          object btn_pericia: TPDJButton
            Left = 25
            Top = 391
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Salvar Pericia'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_periciaClick
            Visible = False
            TabOrder = 0
          end
          object chb_pericia3: TCheckBox
            Left = 56
            Top = 347
            Width = 531
            Height = 17
            Caption = 
              'Confirmo que todas as doen�as pr� existentes encontram-se cadast' +
              'radas'
            TabOrder = 1
            OnClick = chb_pericia3Click
          end
          object chb_pericia2: TCheckBox
            Left = 56
            Top = 317
            Width = 531
            Height = 17
            Caption = 
              'Confirmo que o benefici�rio n�o possui doen�as pre existentes - ' +
              'Car�ncia N�vel IV'
            TabOrder = 2
            OnClick = chb_pericia2Click
          end
          object PDJButton10: TPDJButton
            Left = 633
            Top = 383
            Width = 104
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '<<  Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 3
          end
          object PageControl1: TPageControl
            Left = 8
            Top = 2
            Width = 761
            Height = 267
            ActivePage = TabSheet2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object TabSheet1: TTabSheet
              Caption = 'N�veis de Car�ncias'
              TabVisible = False
              object GroupBox5: TGroupBox
                Left = 3
                Top = 2
                Width = 750
                Height = 228
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label8: TLabel
                  Left = 16
                  Top = 169
                  Width = 86
                  Height = 13
                  Caption = 'N�vel de Car�ncia'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 186
                  Top = 169
                  Width = 109
                  Height = 13
                  Caption = 'Informa��es Adicionais'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object btn_removerCarencia: TPDJButton
                  Left = 657
                  Top = 182
                  Width = 80
                  Height = 25
                  Hint = 'Adicionar Novo Registro'
                  RepeatInterval = 50
                  RepeatStartInterval = 50
                  Caption = '&Remover'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  OnClick = btn_removerCarenciaClick
                  TabOrder = 0
                end
                object btn_adicionarCarencia: TPDJButton
                  Left = 571
                  Top = 182
                  Width = 81
                  Height = 25
                  Hint = 'Adicionar Novo Registro'
                  RepeatInterval = 50
                  RepeatStartInterval = 50
                  Caption = '&Adicionar'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  OnClick = btn_adicionarCarenciaClick
                  TabOrder = 1
                end
                object edt_informacao_car: TDCEdit
                  Left = 180
                  Top = 185
                  Width = 382
                  Height = 21
                  Hint = 'OBSERVA��ES SOBRE A CAR�NCIA'
                  MaxLength = 200
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object cbx_cod_nivelcar: TDCComboBox
                  Left = 12
                  Top = 185
                  Width = 137
                  Height = 21
                  Hint = 'N�VEL DE CAR�NCIA EM QUE FOI CLASSIFICADO O NOVO SEGURADO'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnChange = cbx_cod_nivelcarChange
                  ValueItem = ''
                  ItemHeight = 0
                  Style = csDropDown
                  ShowCheckBox = True
                end
                object PDJButton13: TPDJButton
                  Left = 152
                  Top = 185
                  Width = 22
                  Height = 21
                  Hint = 'Preenchimento autom�tico da descri��o'
                  RepeatInterval = 50
                  RepeatStartInterval = 50
                  NumGlyphs = 1
                  Glyph.Data = {
                    EE000000424DEE000000000000007600000028000000100000000F0000000100
                    0400000000007800000000000000000000001000000000000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                    FFFFFFFF000000000000FFFF0FEFEFEFEFE0F00F0E000E0000F0FB000FEFEF0F
                    F0E0F7B00E000E0000F0F7FB00EFEFEFEFE0FF7FB0000E0000F00000FB00FF0F
                    F0E07FBBBBB00E0000F0F7FB00EFEFEFEFE0FF7BB00000000000FF7FBB00FFFF
                    FFFFFFF7FBB00FFFFFFFFFFF7FBB00FFFFFF}
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  OnClick = PDJButton13Click
                  Visible = False
                  TabOrder = 4
                end
                object ScrollBox1: TScrollBox
                  Left = 13
                  Top = 22
                  Width = 721
                  Height = 135
                  TabOrder = 5
                  object LsB_Carencia: TListBox
                    Left = 0
                    Top = 0
                    Width = 717
                    Height = 131
                    Align = alClient
                    Color = clInfoBk
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clRed
                    Font.Height = -13
                    Font.Name = 'Courier New'
                    Font.Style = [fsBold]
                    ItemHeight = 16
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object edt_dtcarencia_ben2: TDCDateEdit
                  Tag = -1
                  Left = 249
                  Top = 9
                  Width = 80
                  Height = 13
                  Hint = 'DATA DO IN�CIO DA CAR�NCIA DO NOVO INSCRITO'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                  Visible = False
                  Checked = True
                  Kind = dkDate
                  ShowWeekDay = True
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Doen�as Pr� Existentes'
              ImageIndex = 1
              object Label10: TLabel
                Left = 608
                Top = 77
                Width = 22
                Height = 13
                Caption = 'CID'
              end
              object Label17: TLabel
                Left = 24
                Top = 14
                Width = 136
                Height = 13
                Caption = 'Data da Per�cia M�dica'
              end
              object DBGrid1: TDBGrid
                Left = 5
                Top = 38
                Width = 559
                Height = 195
                Color = 14811105
                DataSource = DataSource6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'cod_cid'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nome_cid'
                    Visible = True
                  end>
              end
              object edt_cod_cid: TEditButton
                Tag = -5
                Left = 632
                Top = 69
                Width = 89
                Height = 22
                Hint = 
                  'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
                  'squisar'
                NumbersOnly = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                OnButtonClick = edt_cod_cidButtonClick
                Glyph.Data = {
                  BA040000424DBA0400000000000036040000280000000C0000000B0000000100
                  08000000000084000000C40E0000C40E00000001000000000000000000000000
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                  0707070707070707A4A4A4A4A4A4A4A4A40707000000000000000000A4070700
                  FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00A4070700FFFFFFFFFFFFFF00
                  A4070700FFFFFFFFFFFFFF00A4070700A4A4A4A4A4A4A400A407070004040404
                  04070700A407070000000000000000000707070707070707070707070707}
              end
              object btn_adicionarCID: TPDJButton
                Left = 584
                Top = 118
                Width = 81
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Adicionar'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_adicionarCIDClick
                TabOrder = 2
              end
              object btn_removerCID: TPDJButton
                Left = 671
                Top = 118
                Width = 80
                Height = 25
                Hint = 'Adicionar Novo Registro'
                RepeatInterval = 50
                RepeatStartInterval = 50
                Caption = '&Remover'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = btn_removerCIDClick
                TabOrder = 3
              end
              object edt_dtpericia: TDCDateEdit
                Tag = -1
                Left = 172
                Top = 9
                Width = 153
                Height = 21
                Hint = 'DATA DO IN�CIO DA CAR�NCIA DO NOVO INSCRITO'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                Checked = True
                Kind = dkDate
                ShowWeekDay = True
              end
            end
          end
        end
        object tbs_contribuicao: TTabSheet
          Caption = 'tbs_contribuicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 3
          ParentFont = False
          TabVisible = False
          OnShow = tbs_contribuicaoShow
          object Label6: TLabel
            Left = 16
            Top = 40
            Width = 313
            Height = 16
            Caption = 'Confirma��o para Primeira contribui��o do Assistido'
          end
          object GroupBox1: TGroupBox
            Left = 354
            Top = 228
            Width = 417
            Height = 177
            Caption = 'Registrar 1� Contribui��o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object btn_calcular: TSpeedButton
              Left = 161
              Top = 49
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
              OnClick = btn_calcularClick
            end
            object Label1: TLabel
              Left = 24
              Top = 32
              Width = 87
              Height = 13
              Caption = 'Data do Desconto'
            end
            object Label2: TLabel
              Left = 200
              Top = 32
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label3: TLabel
              Left = 308
              Top = 32
              Width = 37
              Height = 13
              Caption = 'N� Guia'
            end
            object Label14: TLabel
              Left = 200
              Top = 76
              Width = 24
              Height = 13
              Caption = 'Valor'
              Visible = False
            end
            object Label15: TLabel
              Left = 308
              Top = 76
              Width = 37
              Height = 13
              Caption = 'N� Guia'
              Visible = False
            end
            object Label16: TLabel
              Left = 81
              Top = 96
              Width = 101
              Height = 13
              Caption = 'Valor da Consulta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object btn_contribuicao: TPDJButton
              Left = 55
              Top = 140
              Width = 298
              Height = 25
              RepeatInterval = 50
              RepeatStartInterval = 50
              Caption = '&Registrar 1� Contribui��o'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_contribuicaoClick
              Visible = False
              TabOrder = 3
            end
            object edt_vldesconto_adf: TDCEdit
              Tag = -1
              Left = 195
              Top = 49
              Width = 100
              Height = 21
              MaxLength = 12
              TabOrder = 1
              OnExit = edt_vldesconto_adfExit
            end
            object edt_dtdesconto_flh: TDCDateEdit
              Tag = -1
              Left = 20
              Top = 49
              Width = 133
              Height = 21
              Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_nguia_flh: TDCEdit
              Tag = -1
              Left = 304
              Top = 49
              Width = 90
              Height = 21
              MaxLength = 12
              TabOrder = 2
            end
            object edt_valorConsulta: TDCEdit
              Tag = -1
              Left = 195
              Top = 92
              Width = 100
              Height = 21
              MaxLength = 12
              ReadOnly = True
              TabOrder = 4
              Visible = False
              OnExit = edt_valorConsultaExit
            end
            object edt_nguia2: TDCEdit
              Tag = -1
              Left = 304
              Top = 92
              Width = 90
              Height = 21
              MaxLength = 12
              TabOrder = 5
              Visible = False
            end
          end
          object chb_contrib1: TCheckBox
            Left = 56
            Top = 88
            Width = 625
            Height = 17
            Caption = 
              'Confirmo que o Assistido acima pagou o valor calculado abaixo re' +
              'ferente � primeira inscri��o'
            TabOrder = 1
            OnClick = chb_contrib1Click
          end
          object chb_contrib2: TCheckBox
            Left = 56
            Top = 120
            Width = 625
            Height = 17
            Caption = 
              'Confirmo que ao registrar o pagamento o Assistido estar� desbloq' +
              'ueado para uso do Plano'
            TabOrder = 2
            OnClick = chb_contrib1Click
          end
          object PDJButton11: TPDJButton
            Left = 41
            Top = 383
            Width = 104
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '<<  Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 3
          end
        end
        object tbs_reprovacao: TTabSheet
          Caption = 'tbs_reprovacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          TabVisible = False
          object Label7: TLabel
            Left = 16
            Top = 40
            Width = 355
            Height = 16
            Caption = 'Confirma��o para Reprova��o da Inscri��o de Benefici�rio'
          end
          object btn_recusar: TPDJButton
            Left = 457
            Top = 373
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Recusar Inscri��o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_recusarClick
            Visible = False
            TabOrder = 0
          end
          object chb_recusar: TCheckBox
            Left = 56
            Top = 88
            Width = 713
            Height = 17
            Caption = 
              'Confirmo que o Benefici�rio acima ser� permanentemente exclu�do ' +
              'do cadastro e suas informa��es ser�o perdidas'
            TabOrder = 1
            OnClick = chb_recusarClick
          end
          object PDJButton12: TPDJButton
            Left = 41
            Top = 383
            Width = 104
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '<<  Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 2
          end
        end
        object tbs_aprovacaoben: TTabSheet
          Caption = 'tbs_aprovacaoben'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 5
          ParentFont = False
          TabVisible = False
          OnShow = tbs_aprovacaobenShow
          object Label12: TLabel
            Left = 16
            Top = 78
            Width = 253
            Height = 16
            Caption = 'Confirma��o para Inclus�o do Benefici�rio'
          end
          object Label13: TLabel
            Left = 478
            Top = 327
            Width = 84
            Height = 13
            Caption = 'Data da Inscri��o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_pericia: TLabel
            Left = 32
            Top = 24
            Width = 196
            Height = 20
            Caption = 'Data da Per�cia M�dica: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chb_confirmaInscricao: TCheckBox
            Left = 56
            Top = 140
            Width = 625
            Height = 17
            Caption = 
              'Confirmo que o Benefici�rio acima estar� desbloqueado para uso d' +
              'o Plano'
            TabOrder = 0
            OnClick = chb_confirmaInscricaoClick
          end
          object PDJButton2: TPDJButton
            Left = 41
            Top = 383
            Width = 104
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '<<  Voltar'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_voltarClick
            TabOrder = 1
          end
          object btn_confirmaInscricao: TPDJButton
            Left = 471
            Top = 382
            Width = 298
            Height = 25
            RepeatInterval = 50
            RepeatStartInterval = 50
            Caption = '&Registrar Inscri��o'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = btn_confirmaInscricaoClick
            Visible = False
            TabOrder = 2
          end
          object edt_dtsituacao: TDCDateEdit
            Tag = -1
            Left = 477
            Top = 345
            Width = 148
            Height = 21
            Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Checked = True
            Kind = dkDate
            ShowWeekDay = True
          end
        end
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 799
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
  object ImageList1: TImageList
    Left = 744
    Top = 153
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF00000000000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF00000000000000FF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF0000FFFF0000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000000000000800000008000000080000000000000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FF000000FF000000FF00000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF0000FFFF0000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000000000000800000008000000080000000000000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FF000000FF000000FF00000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000000000000800000000000000080000000000000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000000000000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FD7FFD7F00000000FD7FFD7F00000000
      FD7FFD7F00000000FD7FFD7F00000000FD7FFD7F00000000FD7FFD7F00000000
      FC7FFC7F00000000F45FF45F00000000F45FF45F00000000F55FF55F00000000
      F11FF11F00000000F11FF11F00000000FBBFFBBF00000000FC7FFC7F00000000
      FC7FFC7F00000000FC7FFC7F00000000FD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7F
      FD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7FFD7F
      FC7FFC7FFC7FFC7FF45FF45FF45FF45FF45FF45FF45FF45FF55FF55FF55FF55F
      F11FF11FF11FF11FF11FF11FF11FF11FFBBFFBBFFBBFFBBFFC7FFC7FFC7FFC7F
      FC7FFC7FFC7FFC7FFC7FFC7FFC7FFC7F00000000000000000000000000000000
      000000000000}
  end
  object DataSource6: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_doencaPreExistente
    Left = 737
    Top = 112
  end
end
