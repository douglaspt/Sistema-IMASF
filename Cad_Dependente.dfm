inherited Frm_Cad_Dependente: TFrm_Cad_Dependente
  Caption = 'Frm_Cad_Dependente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited Btn_Fechar: TPDJButton
      Left = 702
      Width = 93
    end
    inherited btn_novo: TPDJButton
      Width = 93
    end
    inherited btn_alterar: TPDJButton
      Left = 97
      Width = 93
    end
    inherited btn_salvar: TPDJButton
      Left = 196
      Width = 93
    end
    inherited btn_cancelar: TPDJButton
      Left = 289
      Width = 93
    end
    inherited btn_excluir: TPDJButton
      Left = 564
      Visible = False
    end
    object btn_proximo: TPDJButton
      Left = 617
      Top = 4
      Width = 78
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Próximo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_proximoClick
      TabOrder = 6
    end
    object btn_anterior: TPDJButton
      Left = 539
      Top = 4
      Width = 78
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = 'A&nterior'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_anteriorClick
      TabOrder = 7
    end
    object btn_situacao: TPDJButton
      Left = 401
      Top = 4
      Width = 124
      Height = 25
      Hint = 'Altera a Situação do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Enabled = False
      Caption = '&Situação'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_situacaoClick
      Visible = False
      TabOrder = 8
    end
    object btn_descontos: TPDJButton
      Left = 429
      Top = 5
      Width = 96
      Height = 25
      Hint = 'Altera a Situação do Beneficiário'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Descontos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_descontosClick
      TabOrder = 9
    end
    object btn_senha: TPDJButton
      Left = 390
      Top = 3
      Width = 31
      Height = 26
      Hint = 'Senha para desbloquear e permitir salvar o registro atual'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000084263000852
        84001084CE00ADCEE700299CEF00FF00FF004ABDFF0052F7FF006BF7FF008CF7
        FF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050000000005
        0505050505050505050505050505050505050004060600000505050505050505
        0505050505050505050004060609090000050505050505050505050505050505
        0004060409090609000505050505050505050505050505000406040909020907
        0005050505050505050505050505000406040909020907000505050505050505
        0505050000000406040909020907000505050505050505050505000404040604
        0909020907000505050505050500000000000006060604090902090700050505
        0505050500040404040404060404090902090700050505050505050104080707
        0707080606090902090700050505050505050107070909090909070706090209
        07000505050505050505010A0909090909090907070609090005050505050505
        0505010A09090909090909090707060400050505050505050505010A09090909
        090909090909070600050505050505050505010A090903040409090909090707
        00050505050505050505010A0909030602090909090909070005050505050505
        0505010A09090306020909090909090700050505050505050505010A09090903
        03090909090907070005050505050505050505010A0809090909090909080700
        050505050505050505050505010A080808080808080800050505050505050505
        0505050505010100000000000000050505050505050505050505}
      GlyphHot.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000084263000852
        84001084CE00ADCEE700299CEF00FF00FF004ABDFF0052F7FF006BF7FF008CF7
        FF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050000000005
        0505050505050505050505050505050505050004060600000505050505050505
        0505050505050505050004060609090000050505050505050505050505050505
        0004060409090609000505050505050505050505050505000406040909020907
        0005050505050505050505050505000406040909020907000505050505050505
        0505050000000406040909020907000505050505050505050505000404040604
        0909020907000505050505050500000000000006060604090902090700050505
        0505050500040404040404060404090902090700050505050505050104080707
        0707080606090902090700050505050505050107070909090909070706090209
        07000505050505050505010A0909090909090907070609090005050505050505
        0505010A09090909090909090707060400050505050505050505010A09090909
        090909090909070600050505050505050505010A090903040409090909090707
        00050505050505050505010A0909030602090909090909070005050505050505
        0505010A09090306020909090909090700050505050505050505010A09090903
        03090909090907070005050505050505050505010A0809090909090909080700
        050505050505050505050505010A080808080808080800050505050505050505
        0505050505010100000000000000050505050505050505050505}
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      OnClick = btn_senhaClick
      Visible = False
      TabOrder = 10
    end
  end
  inherited Panel3: TPanel
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 0
      object ckb_cadastroRapido: TCheckBox
        Left = 548
        Top = 8
        Width = 145
        Height = 17
        Caption = 'Cadastro Rapido'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edt_cod_beneficiarioKeyDown
        OnKeyPress = edt_cod_beneficiarioKeyPress
        Alignment = taRightJustify
        OnButtonClick = edt_cod_beneficiarioButtonClick
        EditMask = '9999999'
      end
      object pnl_carteira: TPanel
        Tag = -1
        Left = 542
        Top = 6
        Width = 247
        Height = 21
        BevelOuter = bvLowered
        Caption = 'N° Carteirinha : 1.1.00011.01-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 120
        Top = 3
        Width = 93
        Height = 24
        Hint = 'NÚMERO DE INSCRIÇÃO DO DO DEPENDENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = edt_inscricao_benExit
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object ckb_pericia: TCheckBox
        Left = 413
        Top = 8
        Width = 77
        Height = 17
        Caption = 'Carências'
        TabOrder = 4
      end
      object pnl_situacao: TPanel
        Tag = -1
        Left = 381
        Top = 6
        Width = 153
        Height = 21
        BevelOuter = bvLowered
        Caption = 'Situação : Cancelado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnDblClick = pnl_situacaoDblClick
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 796
      Height = 243
      Alignment = taLeftJustify
      TabOrder = 1
      object PageControl: TPageControl
        Left = 4
        Top = 4
        Width = 785
        Height = 233
        ActivePage = TabSheet1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados Pessoais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Panel11: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Estado Civil                                                  ' +
              '                    Grau de Parent.                             ' +
              '                                                 Sexo'
            TabOrder = 0
            object cbx_cod_estadociv: TDCComboBox
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO CIVIL ATUAL DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_cod_grauparent: TDCComboBox
              Tag = -5
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              Hint = 'GRAU DE PARENTESCO COM O SEGURADO TITULAR'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object cbx_sexo_ben: TDCComboBox
              Tag = -1
              Left = 620
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 2
              OnExit = cbx_sexo_benExit
              Items.Strings = (
                'Masculino'
                'Feminino')
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel12: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Data de Nascimento                                            ' +
              '                        Idade                                   ' +
              '                                 Estado Físico'
            TabOrder = 1
            object edt_idade: TDCEdit
              Tag = -10
              Left = 349
              Top = 5
              Width = 153
              Height = 21
              Hint = 'IDADE INCLUINDO MESES'
              TabStop = False
              Color = clInfoBk
              MaxLength = 12
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              Text = 'ABCDEFGHIJLMN'
            end
            object edt_dtnascim_ben: TDCDateEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              OnKeyDown = edt_dtnascim_benKeyDown
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object cbx_cod_estfisico: TDCComboBox
              Tag = -5
              Left = 620
              Top = 5
              Width = 153
              Height = 21
              Hint = 'ESTADO FÍSICO NORMAL OU INVÁLIDO'
              TabOrder = 2
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
          end
          object Panel13: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Nome do Pai                                                   ' +
              '                                                               N' +
              'ome da Mãe                  '
            TabOrder = 2
            object edt_nomepai_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 280
              Height = 21
              Hint = 'NOME DO PAI DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_nomemae_ben: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 280
              Height = 21
              Hint = 'NOME DA MÃE DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object Panel14: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Tipo Cober. Unimed                                            ' +
              '                                                          Cartão' +
              ' Unimed                     '
            TabOrder = 3
            OnExit = Panel14Exit
            object cbx_cod_tipocoberturaunimed: TDCComboBox
              Tag = -1
              Left = 112
              Top = 3
              Width = 212
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDownList
              ShowCheckBox = True
            end
            object edt_cartaoUnimed_ben: TDCEdit
              Tag = -1
              Left = 492
              Top = 5
              Width = 141
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 17
              TabOrder = 1
            end
          end
          object Panel15: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '                                                                ' +
              '                                                                ' +
              '                                                         '
            TabOrder = 4
            object lbl_cod_beneficiario: TLabel
              Left = 656
              Top = 12
              Width = 3
              Height = 13
            end
          end
          object Panel30: TPanel
            Left = 1
            Top = 173
            Width = 796
            Height = 32
            Alignment = taLeftJustify
            Caption = 'Não Visível'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object edt_digito_ben: TDCEdit
              Tag = -1
              Left = 120
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 0
              Text = '0'
            end
            object edt_cod_sitbeneficiario: TDCEdit
              Tag = -1
              Left = 224
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 1
              Text = '1'
            end
            object edt_titularidade_ben: TDCEdit
              Left = 68
              Top = 5
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 2
              Text = '01'
            end
            object edt_titulacartei_ben: TDCEdit
              Tag = -1
              Left = 291
              Top = 6
              Width = 45
              Height = 21
              Color = 16777088
              MaxLength = 12
              TabOrder = 3
              Text = '0'
            end
          end
          object pnl_carencia: TPanel
            Left = 16
            Top = 164
            Width = 749
            Height = 21
            BevelOuter = bvLowered
            Caption = '*** BENEFICIÁRIO EM CARÊNCIA ***'
            Color = 33023
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endereço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Panel16: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP                                                           ' +
              '      Lograd.                                                   ' +
              '                                                                ' +
              '                Nº'
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 739
              Top = 5
              Width = 26
              Height = 22
              Hint = 'Localizar Endereço'
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
            object edt_cep_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              Hint = 'CÓDIGO DE ENDERAÇAMENTO POSTAL DO ENDEREÇO DO DEPENDENTE'
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = '     -   '
              OnKeyDown = edt_cep_benKeyDown
            end
            object btn_buscarcep: TPDJButton
              Left = 189
              Top = 8
              Width = 22
              Height = 21
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcepClick
              TabOrder = 1
            end
            object edt_endereco_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 50
              ReadOnly = True
              TabOrder = 2
            end
            object edt_numero_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
          end
          object Panel17: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                    Tel.                                  Cel.  ' +
              '                                 Email '
            TabOrder = 2
            object edt_foneresi_ben: TDCEdit
              Tag = -1
              Left = 308
              Top = 5
              Width = 88
              Height = 21
              Hint = 'TELEFONE RESIDENCIAL DO DEPENDENTE'
              MaxLength = 16
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyDown = edt_foneresi_benKeyDown
            end
            object edt_email_ben: TDCEdit
              Tag = -1
              Left = 567
              Top = 4
              Width = 200
              Height = 21
              Hint = 'TELEFONE RESIDENCIAL DO DEPENDENTE'
              MaxLength = 50
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = edt_foneresi_benKeyDown
            end
            object edt_complemento_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 164
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 2
            end
            object edt_fonecel_ben: TDCEdit
              Tag = -1
              Left = 428
              Top = 5
              Width = 88
              Height = 21
              Hint = 'TELEFONE RESIDENCIAL DO DEPENDENTE'
              MaxLength = 16
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnKeyDown = edt_foneresi_benKeyDown
            end
          end
          object Panel18: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro                                                        ' +
              '                                            U.F.                ' +
              '                        Cidade'
            TabOrder = 1
            object cbx_cod_uf: TDCComboBox
              Tag = -1
              Left = 375
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 0
              OnExit = cbx_cod_ufExit
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadeCep: TDCComboBox
              Tag = -1
              Left = 536
              Top = 5
              Width = 231
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object edt_bairro_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clInfoBk
              MaxLength = 30
              ReadOnly = True
              TabOrder = 2
            end
          end
          object Panel45: TPanel
            Tag = -1
            Left = 0
            Top = 160
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Bairro p/ Correspond.                                         ' +
              '                                   Dt. Ult. Alt.'
            TabOrder = 5
            object btn_atualizarEndereco: TPDJButton
              Left = 564
              Top = 4
              Width = 120
              Height = 25
              Hint = 'Atualizar Endereço de Correspondência'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                42010000424D4201000000000000760000002800000011000000110000000100
                040000000000CC00000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                777770000000777777770000000770000000777777770FFFFF07700000007777
                77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
                0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
                FF077000000070607CCC00000007700000007060777770777777700000007060
                7CCC707777747000000070607777707777444000000070600000007777747000
                0000706666607774777470000000700000007777444770000000777777777777
                777770000000}
              Caption = '&Atualizar End.'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_atualizarEnderecoClick
              TabOrder = 2
            end
            object edt_dtendereco_ben: TDCDateEdit
              Tag = -1
              Left = 399
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA ULTIMA ALTERAÇÃO NO ENDEREÇO'
              TabOrder = 1
              OnChange = edt_dtnascim_benChange
              OnKeyPress = edt_dtendereco_benKeyPress
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object edt_bairrocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              MaxLength = 30
              TabOrder = 0
            end
            object chb_mailing_ben: TCheckBox
              Tag = -1
              Left = 692
              Top = 7
              Width = 79
              Height = 17
              Caption = 'Aut. Mailing'
              TabOrder = 3
              OnClick = chb_mailing_benClick
            end
          end
          object Panel44: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Complemento                                                   ' +
              '                                                U.F.            ' +
              '                              Cidade'
            TabOrder = 4
            object edt_complementocor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 25
              TabOrder = 0
            end
            object cbx_cd2_uf: TDCComboBox
              Tag = -1
              Left = 399
              Top = 5
              Width = 69
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
            object cbx_cod_cidadecorCEP: TDCComboBox
              Tag = -1
              Left = 567
              Top = 5
              Width = 200
              Height = 21
              TabStop = False
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
              ReadOnly = True
              ValueItem = ''
              ItemHeight = 0
              Style = csOwnerDrawFixed
              ShowCheckBox = True
            end
          end
          object Panel43: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  CEP p/ Correspond.                                        Logr' +
              'ad.                                                             ' +
              '                                                                ' +
              '      Nº'
            TabOrder = 3
            object edt_cepcor_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 70
              Height = 21
              EditMask = '99999\-999;1;_'
              MaxLength = 9
              TabOrder = 0
              Text = '     -   '
              OnKeyDown = edt_cepcor_benKeyDown
            end
            object btn_buscarcep2: TPDJButton
              Left = 192
              Top = 6
              Width = 19
              Height = 21
              Hint = 'Preenchimento automático da descrição'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_buscarcep2Click
              TabOrder = 1
            end
            object edt_enderecocor_ben: TDCEdit
              Tag = -1
              Left = 268
              Top = 5
              Width = 366
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 2
            end
            object edt_numerocor_ben: TDCEdit
              Tag = -1
              Left = 675
              Top = 4
              Width = 50
              Height = 21
              MaxLength = 5
              TabOrder = 3
              EditMask = '99999'
            end
            object btn_chamacadcep: TPDJButton
              Left = 741
              Top = 3
              Width = 0
              Height = 22
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C30E0000C30E000000010000000100005A423900634A
                3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
                5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
                84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
                9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
                9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
                A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
                AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
                B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
                BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
                C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
                D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
                DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
                F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
                FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
                070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
                211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
                4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
                3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
                6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
                706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
                565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
                1D575C521D143A6565656565656565653A2F2F383A6565656565}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_chamacadcepClick
              TabOrder = 4
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Documentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 2
          ParentFont = False
          object Panel20: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  C.P.F.                                                        ' +
              '                         Decl. Nascido Vivo'
            TabOrder = 1
            object edt_cpf_ben: TMaskEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NÚMERO DE CADASTRO DE PESSOA FÍSICA DO DEPENDENTE'
              EditMask = '999\.999\.999\-99;1;_'
              MaxLength = 14
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = '   .   .   -  '
            end
            object edt_certidaonascvivo_ben: TDCEdit
              Tag = -1
              Left = 372
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NUM. DECLARAÇÃO DE NASCIDO VIVO'
              MaxLength = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object Panel21: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  R.G.                                                          ' +
              '                         Data de Emissão                        ' +
              '                                            Org. Emissor'
            TabOrder = 0
            object edt_rg_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DOCUMENTO DE IDENTIDADE DO DEPENDENTE'
              MaxLength = 14
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_orgemissorrg_ben: TDCEdit
              Tag = -1
              Left = 628
              Top = 5
              Width = 143
              Height = 21
              Hint = 
                'SECRETARIA DE SEGURANÇA E O RESPECTIVO ESTADO DA FEDERAÇÃO QUE E' +
                'MITIU O DOCUMENTO DO DEPENDENTE'
              CharCase = ecUpperCase
              MaxLength = 10
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edt_dtemissaorg_ben: TDCDateEdit
              Tag = -1
              Left = 372
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA EM QUE FOI EMITIDO O DOCUMENTO DE IDENTIDADE DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel22: TPanel
            Tag = -1
            Left = 0
            Top = 96
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tit. de Eleitor'
            TabOrder = 3
            object edt_titeleitor_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NÚMERO DO TÍTULO DE ELEITOR DO DEPENDENTE'
              MaxLength = 18
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Tag = -1
            Left = 0
            Top = 128
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = 
              '  Outros Documentos                                             ' +
              '              Tipo'
            TabOrder = 4
            object edt_outrosdocume_ben: TDCEdit
              Tag = -1
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'OUTRO(S) DOCUMENTO(S) QUE IDENTIFIQUEM O DEPENDENTE'
              MaxLength = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edt_tipodocume_ben: TDCEdit
              Tag = -1
              Left = 308
              Top = 5
              Width = 69
              Height = 21
              Hint = 'CORRESPONDÊNCIA DO(S) DOCUMENTO(S)'
              CharCase = ecUpperCase
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = edt_tipodocume_benKeyDown
            end
          end
          object Panel6: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            TabOrder = 2
            object chB_rgproprio_dep: TCheckBox
              Tag = -5
              Left = 8
              Top = 8
              Width = 97
              Height = 17
              Hint = 'DOCUMENTO DE IDENTIDADE DO PRÓPRIO DEPENDENTE'
              Caption = 'R.G. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object chB_cpfproprio_dep: TCheckBox
              Tag = -5
              Left = 112
              Top = 8
              Width = 97
              Height = 17
              Hint = 'NÚMERO DE CADASTRO DE PESSOA FÍSICA DO PRÓPRIO DEPENDENTE'
              Caption = 'C.P.F. Próprio ?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
        end
        object tbs_obs: TTabSheet
          Caption = 'Observações'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          object Label1: TLabel
            Left = 4
            Top = 192
            Width = 230
            Height = 13
            Caption = 'Pressione Ctrl + Enter para inserir uma nova linha'
          end
          object mem_obs_ben: TMemo
            Tag = -1
            Left = 4
            Top = 4
            Width = 769
            Height = 189
            Hint = 
              'TODA E QUALQUER INFORMAÇÃO QUE CONTRIBUA PARA A IDENTIFICAÇÃO DO' +
              ' DEPENDENTE'
            Lines.Strings = (
              'Memo1')
            MaxLength = 2000
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Carências'
          ImageIndex = 4
          OnShow = TabSheet4Show
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 777
            Height = 216
            ActivePage = tbs_carencia
            TabOrder = 0
            object tbs_carencia: TTabSheet
              Caption = 'Níveis de Carências'
              object Panel26: TPanel
                Left = 0
                Top = 32
                Width = 769
                Height = 151
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Label2: TLabel
                  Left = 8
                  Top = 108
                  Width = 86
                  Height = 13
                  Caption = 'Nível de Carência'
                end
                object Label3: TLabel
                  Left = 166
                  Top = 108
                  Width = 109
                  Height = 13
                  Caption = 'Informações Adicionais'
                end
                object btn_adicionarCarencia: TPDJButton
                  Left = 580
                  Top = 118
                  Width = 93
                  Height = 25
                  Hint = 'Adicionar Novo Registro'
                  RepeatInterval = 50
                  RepeatStartInterval = 50
                  Caption = '&Adcionar'
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  OnClick = btn_adicionarCarenciaClick
                  TabOrder = 0
                end
                object btn_removerCarencia: TPDJButton
                  Left = 673
                  Top = 118
                  Width = 93
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
                  TabOrder = 1
                end
                object cbx_cod_nivelcar: TDCComboBox
                  Left = 8
                  Top = 122
                  Width = 153
                  Height = 21
                  TabOrder = 2
                  OnChange = cbx_cod_nivelcarChange
                  ValueItem = ''
                  ItemHeight = 0
                  Style = csDropDown
                  ShowCheckBox = True
                end
                object edt_informacao_car: TDCEdit
                  Left = 196
                  Top = 122
                  Width = 377
                  Height = 21
                  MaxLength = 70
                  TabOrder = 3
                end
                object ScrollBox1: TScrollBox
                  Left = 8
                  Top = 5
                  Width = 756
                  Height = 101
                  TabOrder = 4
                  object LsB_Carencia: TListBox
                    Left = -2
                    Top = -4
                    Width = 1349
                    Height = 165
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
                object PDJButton1: TPDJButton
                  Left = 167
                  Top = 124
                  Width = 22
                  Height = 21
                  Hint = 'Preenchimento automático da descrição'
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
                  OnClick = PDJButton1Click
                  TabOrder = 5
                end
              end
              object Panel25: TPanel
                Tag = -1
                Left = 0
                Top = 0
                Width = 769
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Inicio de Carência'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object edt_dtcarencia_ben: TDCDateEdit
                  Tag = -1
                  Left = 112
                  Top = 5
                  Width = 153
                  Height = 21
                  Hint = 'DATA DO INÍCIO DA CARÊNCIA DO DEPENDENTE'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnChange = edt_dtnascim_benChange
                  Checked = True
                  Kind = dkDate
                  ShowWeekDay = True
                end
              end
            end
            object tbs_doencapre: TTabSheet
              Caption = 'Doenças Pré Existentes'
              ImageIndex = 1
              object Label8: TLabel
                Left = 608
                Top = 77
                Width = 22
                Height = 13
                Caption = 'CID'
              end
              object DBGrid1: TDBGrid
                Left = 2
                Top = 1
                Width = 559
                Height = 168
                Color = 14811105
                DataSource = DataSource4
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
                    Width = 55
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nome_cid'
                    Visible = True
                  end>
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
                TabOrder = 1
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
                TabOrder = 2
              end
              object edt_cod_cid: TEditButton
                Tag = -5
                Left = 632
                Top = 69
                Width = 89
                Height = 22
                Hint = 
                  'Digite o código que se deseja alterar ou clique no botão para pe' +
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
            end
          end
        end
        object tbs_carteirinha: TTabSheet
          Caption = 'Carteirinha'
          ImageIndex = 5
          object Panel29: TPanel
            Tag = -1
            Left = 0
            Top = 32
            Width = 777
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '  Data de Validade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object edt_dtvalidade_car: TDCDateEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DE VALIDADE DA CARTEIRINHA DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
            object PDJButton3: TPDJButton
              Left = 269
              Top = 4
              Width = 24
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
                87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
                FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
                0E070F757770000000E070FFF707777777007700007777777777}
              GlyphHot.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888844444444444444884888CFF8FF8FF4884888CCF8CF8CF4884CCCCC88C88
                C84884888C448CF8CF4884888C4E4FF8CF4884CCCC84E4888848844444FF4E48
                FF4884EEEE4F84E4FF484EEEEEE48F4E4F484FECCCE48FF4E4484FECEEE44444
                4E484FECEEE4444444E484FFFE48888888448844448888888888}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object Panel31: TPanel
            Tag = -1
            Left = 0
            Top = 0
            Width = 777
            Height = 32
            Align = alTop
            Alignment = taLeftJustify
            Caption = '  Data de Emissão'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object edt_dtemissao_car: TDCDateEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'DATA DA EMISSÃO DA CARTEIRINHA DO DEPENDENTE'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = edt_dtnascim_benChange
              Checked = True
              Kind = dkDate
              ShowWeekDay = True
            end
          end
          object Panel32: TPanel
            Tag = -1
            Left = 0
            Top = 64
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Número da Via'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object edt_via_car: TDCEdit
              Tag = -5
              Left = 112
              Top = 5
              Width = 153
              Height = 21
              Hint = 'NÚMERO DE VIA DA ATUAL CARTEIRINHA'
              MaxLength = 30
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
        end
        object tbs_tabela: TTabSheet
          Caption = 'Tabela'
          ImageIndex = 8
          OnShow = tbs_tabelaShow
          object Panel19: TPanel
            Tag = -1
            Left = 0
            Top = 3
            Width = 777
            Height = 32
            Alignment = taLeftJustify
            Caption = '  Tabela de Plano de Pagamento Especial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cbx_cod_planoPagto: TDCComboBox
              Tag = -5
              Left = 208
              Top = 5
              Width = 425
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              ValueItem = ''
              ItemHeight = 0
              Style = csDropDown
              ShowCheckBox = True
            end
          end
        end
        object tbs_historico: TTabSheet
          Caption = 'Histórico'
          ImageIndex = 6
          OnShow = tbs_historicoShow
          object lbl_ocorrencia: TLabel
            Left = 24
            Top = 146
            Width = 63
            Height = 13
            Caption = 'Ocorrencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PDJButton5: TPDJButton
            Left = 5
            Top = 8
            Width = 356
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Consultar Histórico do Dependente'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton5Click
            TabOrder = 0
          end
          object cbx_cod_ocorrenciaEdital: TDCComboBox
            Tag = -5
            Left = 104
            Top = 142
            Width = 498
            Height = 21
            Hint = 'SEGURADO ATIVO, INATIVO, PENSIONISTA,  APOSENTADO, FALECIDO,...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueItem = ''
            ItemHeight = 0
            Style = csDropDownList
            ShowCheckBox = True
          end
        end
        object tbs_relatorio: TTabSheet
          Caption = 'Relatórios'
          ImageIndex = 7
          object PDJButton6: TPDJButton
            Left = 5
            Top = 8
            Width = 356
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Imprimir Ficha de Segurado'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton6Click
            TabOrder = 0
          end
          object PDJButton7: TPDJButton
            Left = 5
            Top = 52
            Width = 356
            Height = 25
            Hint = 'Altera a Situação do Beneficiário'
            RepeatInterval = 50
            RepeatStartInterval = 50
            NumGlyphs = 1
            NumGlyphsHot = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550AAAAAAAAA0555500AAAACCCCA05550B0AAAAAAA
              AA05500F0AAAAAAAAA050B0B0AAAAAAAAA050F0F0AAAAAAAAA050B0B00000000
              00550F0FB0AAAA0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            GlyphHot.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555550000000000555550EEEEEEEEE0555500EEEECCCCE05550B0EEEEEEE
              EE05500F0EEEEEEEEE050B0B0EEEEEEEEE050F0F0EEEEEEEEE050B0B00000000
              00550F0FB0EEEE0F05550B000700007055550FB0FBFB0F055555000700007055
              555550FBFB055555555557000075555555555555555555555555}
            Caption = '&Imprimir Requerimento       '
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = PDJButton7Click
            TabOrder = 1
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Hist.Oper.'
          ImageIndex = 9
          OnShow = TabSheet5Show
          object stg_audi: TStringGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 775
            Height = 187
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
    object pnl_alerta: TPanel
      Left = 24
      Top = 448
      Width = 749
      Height = 21
      BevelOuter = bvLowered
      Caption = 'BENEFICIÁRIO SUPENSO'
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
    object Panel38: TPanel
      Tag = -1
      Left = 1
      Top = 455
      Width = 798
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
      TabOrder = 3
      object edt_dtalteracao_hsb: TDCDateEdit
        Left = 124
        Top = 5
        Width = 217
        Height = 21
        Hint = 
          'DATA DE ALTERAÇÃO DE DADOS DO CADASTRO(INSERIDA PELO PRÓPRIO SIS' +
          'TEMA)'
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
      object edt_nome_usu: TDCEdit
        Tag = -10
        Left = 460
        Top = 5
        Width = 329
        Height = 21
        Hint = 
          'FUNCIONÁRIO QUE EXECUTOU A ALTERAÇÃO(INSERIDO PELO PRÓPRIO SISTE' +
          'MA)'
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel24: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '   Nome do Segurado'
      TabOrder = 4
      object edt_nome_seg: TDCEdit
        Tag = -10
        Left = 120
        Top = 5
        Width = 370
        Height = 21
        Hint = 'NOME DO SEGURADO TITULAR'
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
      object chb_recibomes_dep: TCheckBox
        Tag = -5
        Left = 636
        Top = 8
        Width = 97
        Height = 17
        Caption = 'RECIBO MÊS'
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Nome Completo                                               ' +
        '                                                                ' +
        '                          Carteirinha'
      TabOrder = 5
      object edt_nome_ben: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 370
        Height = 21
        Hint = 'NOME COMPLETO DO DEPENDENTE'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'EDT_NOME_BEN'
        OnExit = edt_nome_benExit
        OnKeyDown = edt_nome_benKeyDown
        OnKeyUp = edt_nome_benKeyUp
      end
      object edt_nomecarteira_ben: TDCEdit
        Tag = -1
        Left = 559
        Top = 5
        Width = 230
        Height = 21
        Hint = 'NOME DO DEPENDENTE A SER IMPRESSO NA CARTEIRINHA'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 30
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Tipo de Segurado                                            ' +
        '                 Tipo de Dependente                             ' +
        '                          '
      TabOrder = 6
      object lbl_processo: TLabel
        Left = 543
        Top = 10
        Width = 86
        Height = 13
        Caption = 'Processo  Nº/Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lbl_processoClick
      end
      object edt_processo_ben: TDCEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 153
        Height = 21
        Hint = 'PROCESSO EM QUE ESTÁ INSERIDO O DEPENDENTE (SEGURADO TITULAR)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'ABCDEFGHIJLMN'
      end
      object cbx_cod_TipoSegurado: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'ATIVO, APOSENTADO, PENSIONISTA, EX-SERVIDOR'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = cbx_cod_TipoSeguradoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
      object cbx_cod_tipodependente: TDCComboBox
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'NORMAL OU ASSISTIDO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = cbx_cod_tipodependenteExit
        OnKeyDown = cbx_cod_tipodependenteKeyDown
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
        OnCloseUp = cbx_cod_tipodependenteExit
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Empresa de Origem                                           ' +
        '                Plano de Benefícios                             ' +
        '                          Local de Desconto'
      TabOrder = 7
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'PLANO BÁSICO, INTERMEDIÁRIO, ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = cbx_cod_planoChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 637
        Top = 5
        Width = 152
        Height = 21
        Hint = 'PREFEITURA, CÂMARA, FACULDADE, IMASF, TESOURARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
      object cbx_cod_empresa: TDCComboBox
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 
          'EMPRESA DE ORIGEM DO SEGURADO TITULAR(PREFEITURA, CÂMARA, IMASF,' +
          ' FACULDADE, TESOURARIA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = cbx_cod_empresaChange
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDown
        ShowCheckBox = True
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Inscrição                                           ' +
        '                   Data de Situação                             ' +
        '                               Data do Plano'
      TabOrder = 8
      object edt_dtinscricao_ben: TDCDateEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DE INSCRIÇÃO DO DEPENDENTE'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtsituacao_ben: TDCDateEdit
        Tag = -1
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DA SITUAÇÃO EM QUE SE ENCONTRA O DEPENDENTE'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtplano_ben: TDCDateEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA DO PLANO OPTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Data de Renovação                                           ' +
        '               Data Limite                                      ' +
        '                                Data do Sistema'
      TabOrder = 9
      object edt_dtrenovacao_dep: TDCDateEdit
        Tag = -5
        Left = 120
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA PARA NOVA OPÇÃO DO PLANO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtlimite_dep: TDCDateEdit
        Tag = -5
        Left = 380
        Top = 5
        Width = 153
        Height = 21
        Hint = 'DATA MÁXIMA PARA RENOVAÇÃO DO PLANO'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object btn_preencheDtRenovacao: TPDJButton
        Left = 765
        Top = 4
        Width = 24
        Height = 25
        Hint = 'Calcula a Data de Validade de Carteira do Beneficiário'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
          87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
          FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
          0E070F757770000000E070FFF707777777007700007777777777}
        GlyphHot.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888844444444444444884888CFF8FF8FF4884888CCF8CF8CF4884CCCCC88C88
          C84884888C448CF8CF4884888C4E4FF8CF4884CCCC84E4888848844444FF4E48
          FF4884EEEE4F84E4FF484EEEEEE48F4E4F484FECCCE48FF4E4484FECEEE44444
          4E484FECEEE4444444E484FFFE48888888448844448888888888}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_preencheDtRenovacaoClick
        TabOrder = 3
      end
      object edt_dtcadastro_ben: TDCDateEdit
        Tag = -1
        Left = 636
        Top = 5
        Width = 125
        Height = 21
        Hint = 'DATA INSERIDA PELO PRÓPRIO SISTEMA'
        TabStop = False
        Color = clInfoBk
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ReadOnly = True
        Checked = True
        ButtonExist = False
        Kind = dkDate
        ShowWeekDay = True
      end
    end
  end
  object DataSource4: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_doencaPreExistente
    Left = 753
    Top = 366
  end
end
