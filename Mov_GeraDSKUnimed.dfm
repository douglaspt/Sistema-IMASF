inherited Frm_Mov_GeraDSKUnimed: TFrm_Mov_GeraDSKUnimed
  Caption = 'Frm_Mov_GeraDSKUnimed'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object lbl_linha: TLabel
      Left = 24
      Top = 440
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
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Mês / Ano de Referencia                                     ' +
        '                                                                ' +
        '                         '
      TabOrder = 0
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
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 408
      Width = 765
      Height = 24
      Min = 0
      Max = 100
      TabOrder = 1
      Visible = False
    end
    object btn_geradisquetebenefi: TPDJButton
      Left = 4
      Top = 176
      Width = 533
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Gerar &Disquete de Beneficiários'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_geradisquetebenefiClick
      TabOrder = 2
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Plano'
      TabOrder = 3
      object cbx_cod_plano: TDCComboBox
        Tag = -1
        Left = 140
        Top = 5
        Width = 233
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueItem = ''
        ItemHeight = 0
        Style = csDropDownList
        ShowCheckBox = True
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 33
      Width = 798
      Height = 454
      Align = alClient
      TabOrder = 4
      object Label1: TLabel
        Left = 24
        Top = 440
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
      object Panel4: TPanel
        Tag = -1
        Left = 1
        Top = 1
        Width = 796
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '    Mês / Ano de Referencia                                     ' +
          '                                                                ' +
          '                         '
        TabOrder = 0
        object DCComboBox1: TDCComboBox
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
        object DCEdit1: TDCEdit
          Left = 380
          Top = 4
          Width = 75
          Height = 21
          TabOrder = 1
        end
      end
      object ProgressBar2: TProgressBar
        Left = 16
        Top = 408
        Width = 765
        Height = 24
        Min = 0
        Max = 100
        TabOrder = 1
        Visible = False
      end
      object PDJButton1: TPDJButton
        Left = 4
        Top = 176
        Width = 533
        Height = 25
        RepeatInterval = 50
        RepeatStartInterval = 50
        Caption = 'Gerar &Disquete de Beneficiários'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        OnClick = btn_geradisquetebenefiClick
        TabOrder = 2
      end
      object Panel5: TPanel
        Tag = -1
        Left = 1
        Top = 33
        Width = 796
        Height = 32
        Alignment = taLeftJustify
        Caption = '    Plano'
        TabOrder = 3
        object DCComboBox2: TDCComboBox
          Tag = -1
          Left = 140
          Top = 5
          Width = 233
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueItem = ''
          ItemHeight = 0
          Style = csDropDownList
          ShowCheckBox = True
        end
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
    Top = 533
  end
  object SaveDialog: TSaveDialog
    Left = 608
    Top = 153
  end
end
