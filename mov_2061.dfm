inherited Frm_Mov_2061: TFrm_Mov_2061
  Caption = 'Frm_Mov_2061'
  ClientHeight = 582
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 530
    inherited Btn_Fechar: TPDJButton
      Left = 688
    end
    object btn_excluir: TPDJButton
      Left = 461
      Top = 4
      Width = 0
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
      Visible = False
      TabOrder = 1
    end
    object btn_exportacsv: TPDJButton
      Left = 178
      Top = 4
      Width = 109
      Height = 25
      Hint = 'Cria arquivo TXT '
      RepeatInterval = 50
      RepeatStartInterval = 50
      NumGlyphs = 1
      NumGlyphsHot = 1
      Caption = '&Gera TXT'
      OnClick = btn_exportacsvClick
      ShowHint = True
      TabOrder = 2
    end
    object btn_novo: TPDJButton
      Left = 16
      Top = 4
      Width = 122
      Height = 25
      Hint = 
        'Gera descontos do BEM, apenas para dependentes e assistidos dos ' +
        'planos 2 e 3.'
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
      Caption = '&Gera Desc.BEM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_novoClick
      ShowHint = True
      TabOrder = 3
    end
  end
  inherited Panel3: TPanel
    Height = 489
    object pnl_referencia: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '         Válido para Mês / Ano'
      TabOrder = 0
      object cbx_cod_mes: TDCComboBox
        Tag = -1
        Left = 140
        Top = 3
        Width = 193
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
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
        Left = 340
        Top = 3
        Width = 61
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        OnExit = edt_anoExit
        EditMask = '9999'
      end
      object cbx_cod_empresafolha: TDCComboBox
        Tag = -1
        Left = 502
        Top = 3
        Width = 253
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnEnter = cbx_cod_empresafolhaEnter
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 455
      Align = alClient
      Alignment = taLeftJustify
      TabOrder = 1
      object lbl_total: TLabel
        Left = 6
        Top = 406
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btn_localizar: TPDJButton
        Left = 43
        Top = 512
        Width = 117
        Height = 28
        Hint = 
          'LOCALIZA OS DESCONTOS CONFORME O MÊS DE REFERÊNCIA E LOCAL DE DE' +
          'SCONTO'
        RepeatInterval = 50
        RepeatStartInterval = 50
        NumGlyphs = 1
        NumGlyphsHot = 1
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777700000000000000000000777777777778888
          8884CEECC0888888077777777777FFFFFF4CEECC0FFFFFFF077777777777FFFF
          F7CEECC0FFFFFFFF077777777777FFFF78FECC0FFFFFFFFF0777777770000007
          8F87C088888888FF077777700666666008770FFFFFFFFFFF07777778EF8FEFE6
          60708888888888FF0777778EFE8EFE77660FFFFFFFFFFFFF077777EFEF8FEFEF
          E6088888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
          EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF07777FEFEF8FEFEF
          EF608888888888FF07777EFEFE8EFE777760FFFFFFFFFFFF077777EFEF8FEFEF
          EF088888888888FF077777FEFE8EFE77760FFFFFFFFFFFFF0777777FEF8FEFEF
          60888888888888FF077777777F8EFEF00FFFFFFFFFFFFFFF077777777777770F
          FFFFFFFFFFFFFFFF077777777777FFFFFFFFFFFFFFFFFFFF077777777777FFF8
          888888888FFFFFFF077777777777FFFFFFFFFFFFFFFF7000077777777777FFFF
          FFFFFFFFFFFF7FFF077777777777FFFFFFFFFFFFFFFF7FF8077777777777FFFF
          FFFFFFFFFFFF7F87077777777777FFFFFFFFFFFFFFFF7870777777777777FFFF
          FFFFFFFFFFFF7707777777777777FFFFFFFFFFFFFFFF70777777777777777777
          7777777777777777777777777777777777777777777777777777}
        GlyphHot.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777744444444444444444444777777777778888
          8884CEECC4888888477777777777FFFFFF4CEECC4FFFFFFF477777777777FFFF
          F7CEECC4FFFFFFFF477777777777FFFF78FECC4FFFFFFFFF4777777774444447
          8F87C4CCCCCCCCFF477777744666666448774FFFFFFFFFFF47777778EF8FEFE6
          6474CCCCCCCCCCFF4777778EFE8EFE77664FFFFFFFFFFFFF477777EFEF8FEFEF
          E64CCCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
          EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF47777FEFEF8FEFEF
          EF64CCCCCCCCCCFF47777EFEFE8EFE777764FFFFFFFFFFFF477777EFEF8FEFEF
          EF4CCCCCCCCCCCFF477777FEFE8EFE77764FFFFFFFFFFFFF4777777FEF8FEFEF
          64CCCCCCCCCCCCFF477777777F8EFEF44FFFFFFFFFFFFFFF477777777777774F
          FFFFFFFFFFFFFFFF477777777777FFFFFFFFFFFFFFFFFFFF477777777777FFFC
          CCCCCCCCCFFFFFFF477777777777FFFFFFFFFFFFFFFF7444477777777777FFFF
          FFFFFFFFFFFF7FFF477777777777FFFFFFFFFFFFFFFF7FF8477777777777FFFF
          FFFFFFFFFFFF7F87477777777777FFFFFFFFFFFFFFFF7874777777777777FFFF
          FFFFFFFFFFFF7747777777777777FFFFFFFFFFFFFFFF74777777777777777777
          7777777777777777777777777777777777777777777777777777}
        Caption = '&Localizar'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_localizarClick
        ShowHint = True
        Visible = False
        TabOrder = 0
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 3
        Width = 800
        Height = 500
        ActivePage = TabSheet1
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'Críticas'
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 766
            Height = 417
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object pgb_registros: TProgressBar
            Left = 0
            Top = 432
            Width = 773
            Height = 24
            Min = 0
            Max = 100
            TabOrder = 1
            Visible = False
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Hist.Operações'
          ImageIndex = 1
          OnShow = TabSheet2Show
          object stg_audi: TStringGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 785
            Height = 421
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
  end
  inherited StB_Principal: TStatusBar
    Top = 563
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
    Top = 585
  end
  object DataSource3: TDataSource
    DataSet = fdt_principal6.spc_cons_adm_contribPFGB
    Left = 409
    Top = 48
  end
  object SaveDialog: TSaveDialog
    InitialDir = 'W:\BEM'
    Left = 768
    Top = 41
  end
  object NMSMTP1: TNMSMTP
    Port = 25
    ReportLevel = 0
    EncodeType = uuMime
    ClearParams = True
    SubType = mtPlain
    Charset = 'br-ascii'
    Left = 745
    Top = 42
  end
end
