inherited Frm_Mov_ReembolsoMedico: TFrm_Mov_ReembolsoMedico
  Left = -3
  Top = 1
  Caption = 'Frm_Mov_ReembolsoMedico'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object btn_novo: TPDJButton
      Left = 4
      Top = 4
      Width = 93
      Height = 25
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
        8888888888888888888777777777777777778888880000000000000000078888
        880FFFFFFFFFFFFFFF078888880F000FF000FF000F078888880FFFFFFFFFFFFF
        FF078888880F000FF000FF000F078888880FFFFFFFFFFFFFFF078888880F000F
        F000FF000F07888887BFFFFFFFFFFFFFFF07BF8887FBF0BFF000FF000F078788
        87BFFF7BFFFFFFFFFF0788B887FFF7B4444444444447888FB7BB7FF44FFF44FF
        F44777777BFBB44444444444444888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      GlyphHot.Data = {
        8A010000424D8A01000000000000760000002800000018000000170000000100
        04000000000014010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888777777777777777778888884444444444444444478888
        884FFFFFFFFFFFFFFF478888884F444FF444FF444F478888884FFFFFFFFFFFFF
        FF478888884F444FF444FF444F478888884FFFFFFFFFFFFFFF478888884F444F
        F444FF444F47888887BFFFFFFFFFFFFFFF47BF8887FBF4BFF444FF444F478788
        87BFFF7BFFFFFFFFFF4788B887FFF7BCCCCCCCCCCCC7888FB7BB7FFCCFFFCCFF
        FCC777777BFBBCCCCCCCCCCCCCC888B87FBFF777777888888888888BFBFFBFBF
        B88888888888888FB7BB7B8888888888888888FB87F887B88888888888888FB8
        87B8887B8888888888888B8887F88887B88888888888888887B8888888888888
        8888888887888888888888888888}
      Caption = '&Novo'
      OnClick = btn_novoClick
      TabOrder = 1
    end
    object btn_alterar: TPDJButton
      Left = 97
      Top = 4
      Width = 93
      Height = 25
      Hint = 'Alterar Registro'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555500005577777777777777777500005000000000000000007500005088
        80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
        0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
        0F44F0750000508880FF0078088880750000508180F400007844807500005088
        80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
        0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
        00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
        55555555550BFFBB0000}
      GlyphHot.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555500005577777777777777777500005444444444444444447500005488
        84FFFFFF4FFFF4750000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF475
        0000548184FCCCCF4FCCF4750000548884FFFFFF4FFFF4750000548184FCCCCF
        4FCCF4750000548884FF0078488884750000548184FC000078CC847500005488
        84FF7008007884750000548184FCC08FF84484750000548884FFF74FFF844475
        0000544444444448FF843447000054CCCCCCCC74880E43440000544444444444
        44FEE43400005555555555554EFFEE43000055555555555550EFFEE400005555
        55555555550EFFEE0000}
      Caption = '&Alterar'
      OnClick = btn_alterarClick
      TabOrder = 2
    end
    object btn_salvar: TPDJButton
      Left = 196
      Top = 4
      Width = 93
      Height = 25
      Hint = 'Salvar/Gravar o Registro Atual'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888000000888888888888888888000000800000000000000888000000800B
        FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
        00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
        BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
        B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
        000088880EEE08778888880000008880EEE0888788888800000088880E088888
        888888000000888880888888888888000000888888888888888888000000}
      GlyphHot.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E400000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888000000888888888888888888000000844444444444444888000000844E
        FEFEFEFEFE48880000008474EFEFEFEFEFE48800000084E4FEFEFEFEFEF48800
        00008474EFEFEFEFEFE48800000084E77EFEFEFEFEFE78000000847E7FEFEFEF
        EFEF7800000084E777777777777778000000847E7E7CCCC77E78880000008444
        E7E4CCC77778880000008888444CCCC7888888000000888884CCC4C788888800
        000088884CCC48778888880000008884CCC4888788888800000088884C488888
        888888000000888884888888888888000000888888888888888888000000}
      Enabled = False
      Caption = '&Salvar'
      OnClick = btn_salvarClick
      TabOrder = 3
    end
    object btn_cancelar: TPDJButton
      Left = 289
      Top = 4
      Width = 93
      Height = 25
      Hint = 'Cancelar a Edição Atual'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777770000000000000777033333333333077703333333333
        3077703333333333307770333333333330777033333333333077703333333333
        307770333333333330777800000000000877770FFF0777777774777000777777
        7774777777777777474777777777777744777777777777774447}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888844444444444448884EEEEEEEEEEE48884EEEEEEEEEE
        E48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEEE48884EEEEEEEEEE
        E48884EEEEEEEEEEE4888744444444444788884FFF4888888884888444888888
        8884888888888888484888888888888844888888888888884448}
      Enabled = False
      Caption = '&Cancelar'
      OnClick = btn_cancelarClick
      TabOrder = 4
    end
    object btn_excluir: TPDJButton
      Left = 388
      Top = 4
      Width = 93
      Height = 25
      Hint = 'Exclui Registro Corrente'
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      GlyphHot.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888844444444448888884EEEEEEEE48888884EEEEEEE
        E488881F4E777777E488811F4E75BEB7E4888811F11BEBE7E488888151877777
        E488888511EEEEEEE48885111E1EEE44448881584EE1EE4E488888884EEEEE44
        8888888844444448888888888888888888888888888888888888}
      Caption = '&Excluir'
      OnClick = btn_excluirClick
      Visible = False
      TabOrder = 5
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
      Caption = '    Inscrição'
      TabOrder = 0
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 140
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
      object pnl_situacao: TPanel
        Tag = -1
        Left = 380
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
        TabOrder = 1
      end
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 2
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
      end
      object DCChoiceEdit1: TDCChoiceEdit
        Tag = -50
        Left = 244
        Top = 5
        Width = 53
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 3
        Visible = False
        Alignment = taRightJustify
        EditMask = '9999999'
      end
      object RdG_SitBeneficiario: TRadioGroup
        Left = 242
        Top = -2
        Width = 547
        Height = 29
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Normais'
          'Suspensos'
          'Cancelados'
          'Todos')
        TabOrder = 4
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
        Left = 140
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
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referencia                                     ' +
        '                                                                ' +
        '                         '
      TabOrder = 2
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
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
      object edt_ano: TDCEdit
        Left = 380
        Top = 4
        Width = 75
        Height = 21
        TabOrder = 1
      end
      object btn_localizar: TPDJButton
        Left = 564
        Top = 4
        Width = 173
        Height = 25
        Hint = 'Exclui Registro Corrente'
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
        Caption = '&Localizar'
        TabOrder = 2
      end
    end
    object PageControl1: TPageControl
      Left = 4
      Top = 100
      Width = 789
      Height = 385
      ActivePage = TabSheet1
      TabOrder = 3
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        TabVisible = False
        object Label1: TLabel
          Left = 4
          Top = 164
          Width = 142
          Height = 13
          Caption = 'Total de Contas Médicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 4
          Top = 352
          Width = 180
          Height = 13
          Caption = 'Total de Itens da Conta Médica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid5: TDBGrid
          Left = 4
          Top = 2
          Width = 773
          Height = 159
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
              FieldName = 'cod_tarifa'
              Title.Caption = 'Cod.'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_tar'
              Width = 217
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vldesconto_adf'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_ben'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtdesconto_flh'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sds'
              Title.Caption = 'Status / Situação'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsitdesconto_flh'
              Title.Caption = 'Dt. Sit. Desc.'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtpagto_flh'
              Title.Caption = 'Dt. Pagto'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlpago_flh'
              Visible = True
            end>
        end
        object DBGrid1: TDBGrid
          Left = 4
          Top = 190
          Width = 773
          Height = 159
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
              FieldName = 'cod_tarifa'
              Title.Caption = 'Cod.'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_tar'
              Width = 217
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vldesconto_adf'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_ben'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtdesconto_flh'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_sds'
              Title.Caption = 'Status / Situação'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtsitdesconto_flh'
              Title.Caption = 'Dt. Sit. Desc.'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtpagto_flh'
              Title.Caption = 'Dt. Pagto'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlpago_flh'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        TabVisible = False
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
end
