inherited Frm_Cad_Acesso: TFrm_Cad_Acesso
  Caption = 'Frm_Cad_Acesso'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btn_novo: TPDJButton
      Visible = False
    end
    inherited btn_alterar: TPDJButton
      Left = 4
    end
    inherited btn_salvar: TPDJButton
      Left = 120
    end
    inherited btn_cancelar: TPDJButton
      Left = 232
    end
    inherited btn_excluir: TPDJButton
      Visible = False
    end
    object btn_relatorio: TPDJButton
      Left = 576
      Top = 4
      Width = 101
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF000000000000FF000FFFFFFFFFF0F0000FFFFFFF0000700F0FFFFFF07887
        07FF0FFFFF0788F770FF0FFFFF08888780FF0FFFFF08F88780FF0FFFFF07FF87
        70FF0FFFFFF078870FFF0FFFFFFF0000FFFF0FFFFFFFFFF0FFFF0FFFFFFF0000
        FFFF0FFFFFFF080FFFFF0FFFFFFF00FFFFFF000000000FFFFFFF}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF444444444444FF444FFFFFFFFFF4F4444FFFFFFF4444E44F4FFFFFF4E88E
        4EFF4FFFFF4E88FEE4FF4FFFFF48888E84FF4FFFFF48F88E84FF4FFFFF4EFF8E
        E4FF4FFFFFF4E88E4FFF4FFFFFFF4444FFFF4FFFFFFFFFF4FFFF4FFFFFFF4444
        FFFF4FFFFFFF484FFFFF4FFFFFFF44FFFFFF444444444FFFFFFF}
      Enabled = False
      Caption = 'Imprimir'
      OnClick = btn_relatorioClick
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Nome Completo'
      TabOrder = 2
      object edt_descricao_usu: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 429
        Height = 21
        MaxLength = 50
        TabOrder = 0
        Text = 'edt_descricao_usu'
        NumbersOnly = False
      end
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    C�digo do Usu�rio'
      TabOrder = 0
      object edt_cod_usuario: TEditButton
        Tag = -2
        Left = 120
        Top = 5
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
        OnButtonClick = edt_cod_usuarioButtonClick
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
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Nome do Usu�rio'
      TabOrder = 1
      object edt_nome_usu: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        MaxLength = 20
        TabOrder = 0
        Text = 'DCEdit1'
        NumbersOnly = False
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '    Senha                                                       ' +
        '          Redigitar Senha'
      TabOrder = 3
      object edt_senha_usu: TBEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        CharCase = ecLowerCase
        MaxLength = 12
        PasswordChar = '*'
        TabOrder = 0
        NumbersOnly = False
      end
      object edt_senha2: TBEdit
        Left = 324
        Top = 5
        Width = 93
        Height = 21
        CharCase = ecLowerCase
        MaxLength = 12
        PasswordChar = '*'
        TabOrder = 1
        NumbersOnly = False
      end
    end
    object PageControl1: TPageControl
      Tag = -1
      Left = 5
      Top = 134
      Width = 795
      Height = 355
      ActivePage = TabSheet1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object TabSheet1: TTabSheet
        Tag = -1
        Caption = 'Acessos ao Sistema'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Panel7: TPanel
          Tag = -1
          Left = 1
          Top = 2
          Width = 785
          Height = 324
          Alignment = taLeftJustify
          TabOrder = 0
          object DBG_matricula: TDBGrid
            Left = 6
            Top = 5
            Width = 772
            Height = 207
            Hint = 'Clique duas vezes '
            DataSource = DataSource1
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
            OnCellClick = DBG_matriculaCellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'nome_sti'
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_telasistema'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_tls'
                Width = 327
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'consultar_acs'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'incluir_acs'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'alterar_acs'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'excluir_acs'
                Width = 52
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 6
            Top = 215
            Width = 772
            Height = 105
            TabOrder = 1
            object Bevel1: TBevel
              Left = 4
              Top = 66
              Width = 777
              Height = 6
              Shape = bsBottomLine
            end
            object Label1: TLabel
              Left = 8
              Top = -2
              Width = 88
              Height = 13
              Caption = 'Adicionar / Alterar '
            end
            object Label2: TLabel
              Left = 447
              Top = -2
              Width = 93
              Height = 13
              Caption = 'Duplicar / Remover'
            end
            object ChB_consultar_acs: TCheckBox
              Left = 8
              Top = 48
              Width = 69
              Height = 17
              Caption = 'Consultar'
              TabOrder = 0
            end
            object ChB_incluir_acs: TCheckBox
              Left = 95
              Top = 48
              Width = 69
              Height = 17
              Caption = 'Incluir'
              TabOrder = 1
            end
            object ChB_alterar_acs: TCheckBox
              Left = 181
              Top = 48
              Width = 69
              Height = 17
              Caption = 'Alterar'
              TabOrder = 2
            end
            object ChB_excluir_acs: TCheckBox
              Left = 268
              Top = 48
              Width = 69
              Height = 17
              Caption = 'Excluir'
              TabOrder = 3
            end
            object cbx_cod_telasistema: TBComboBox
              Tag = -5
              Left = 8
              Top = 17
              Width = 393
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 4
              OnChange = cbx_cod_telasistemaChange
            end
            object btn_adicionarAcesso: TPDJButton
              Left = 329
              Top = 42
              Width = 107
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Adicionar/Alterar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_adicionarAcessoClick
              TabOrder = 5
            end
            object btn_removerAcesso: TPDJButton
              Left = 639
              Top = 42
              Width = 129
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Enabled = False
              Caption = '&Remover Acesso'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_removerAcessoClick
              TabOrder = 6
            end
            object btn_acessoGeralMedica: TPDJButton
              Left = 287
              Top = 75
              Width = 200
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = 'Acesso Geral � Se��o M�dica'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_acessoGeralMedicaClick
              TabOrder = 7
            end
            object btn_acessoGeralAdm: TPDJButton
              Left = 568
              Top = 75
              Width = 200
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = 'Acesso Geral � Administra��o'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_acessoGeralAdmClick
              TabOrder = 8
            end
            object btn_acessoTotal: TPDJButton
              Left = 6
              Top = 75
              Width = 200
              Height = 25
              Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = 'Acesso TOTAL'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_acessoTotalClick
              TabOrder = 9
            end
            object ckb_duplica: TCheckBox
              Left = 449
              Top = 12
              Width = 110
              Height = 26
              Caption = '&Copiar Acesso de:'
              TabOrder = 10
              OnClick = ckb_duplicaClick
            end
            object btn_duplica: TPDJButton
              Left = 711
              Top = 12
              Width = 57
              Height = 25
              RepeatInterval = 50
              RepeatStartInterval = 50
              NumGlyphs = 1
              NumGlyphsHot = 1
              Caption = '&Duplicar'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              OnClick = btn_duplicaClick
              Visible = False
              TabOrder = 11
            end
            object GroupBox2: TGroupBox
              Left = 438
              Top = 0
              Width = 2
              Height = 72
              Caption = 'GroupBox2'
              TabOrder = 12
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Tag = -1
        Caption = 'Permiss�es Especiais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        OnShow = TabSheet2Show
        object DBGrid1: TDBGrid
          Left = 6
          Top = 5
          Width = 772
          Height = 228
          Hint = 'Clique duas vezes '
          DataSource = DataSource2
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
              FieldName = 'cod_telaespecial'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_tlE'
              Width = 398
              Visible = True
            end>
        end
        object btn_adicionarAcessoEsp: TPDJButton
          Left = 9
          Top = 269
          Width = 148
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Adicionar Acesso'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_adicionarAcessoEspClick
          TabOrder = 1
        end
        object btn_removerAcessoEsp: TPDJButton
          Left = 161
          Top = 269
          Width = 148
          Height = 25
          Hint = 'Calcula a Data de Validade de Carteira do Benefici�rio'
          RepeatInterval = 50
          RepeatStartInterval = 50
          NumGlyphs = 1
          NumGlyphsHot = 1
          Caption = '&Remover Acesso'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          OnClick = btn_removerAcessoEspClick
          TabOrder = 2
        end
        object cbx_cod_telaEspecial: TBComboBox
          Tag = -5
          Left = 8
          Top = 244
          Width = 393
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 3
        end
      end
    end
  end
  object cbx_cod_usuario: TBComboBox [4]
    Tag = -5
    Left = 573
    Top = 429
    Width = 147
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Visible = False
  end
  inherited Tmr_Close: TTimer
    Left = 256
    Top = 493
  end
  object DataSource1: TDataSource
    DataSet = fdt_principal2.spc_AcessoUsuario
    Left = 125
    Top = 361
  end
  object DataSource2: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_acessoEspecial
    Left = 185
    Top = 359
  end
end
