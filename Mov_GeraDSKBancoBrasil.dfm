inherited Frm_Mov_GeraDSKBancoBrasil: TFrm_Mov_GeraDSKBancoBrasil
  Caption = 'Frm_Mov_GeraDSKBancoBrasil'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object lbl_linha: TLabel
      Left = 8
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
    object Label2: TLabel
      Left = 6
      Top = 132
      Width = 191
      Height = 13
      Caption = 'Mensagens (Até 80 caracteres por linha)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 153
      Width = 52
      Height = 13
      Caption = 'Instruções:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 231
      Width = 56
      Height = 13
      Caption = 'Msg. Verso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
        MaxLength = 4
        TabOrder = 1
        EditMask = '9999'
      end
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 408
      Width = 765
      Height = 24
      Min = 0
      Max = 100
      TabOrder = 1
      Visible = False
    end
    object btn_geraDisqueteDescBB: TPDJButton
      Left = 8
      Top = 368
      Width = 518
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Gerar &Disquete de Descontos para Banco do Brasil'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_geraDisqueteDescBBClick
      TabOrder = 2
    end
    object Panel12: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '  Data de Vencimento'
      TabOrder = 3
      object edt_dtvencim: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '  Data de Pagto Atrasado'
      TabOrder = 4
      object edt_dtlimite: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel4: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = '  Data de Recibo Mês'
      TabOrder = 5
      object edt_dtrecibo: TDCDateEdit
        Tag = -1
        Left = 140
        Top = 5
        Width = 153
        Height = 21
        TabOrder = 0
        OnExit = edt_dtreciboExit
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object edt_m1: TDCEdit
      Left = 70
      Top = 148
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 6
    end
    object edt_m2: TDCEdit
      Left = 70
      Top = 170
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 7
    end
    object edt_m3: TDCEdit
      Left = 70
      Top = 192
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 8
    end
    object edt_m4: TDCEdit
      Left = 70
      Top = 224
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 9
    end
    object edt_m5: TDCEdit
      Left = 70
      Top = 246
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 10
    end
    object edt_m6: TDCEdit
      Left = 70
      Top = 268
      Width = 603
      Height = 21
      MaxLength = 80
      TabOrder = 11
    end
    object Panel5: TPanel
      Left = 1
      Top = 304
      Width = 798
      Height = 32
      Alignment = taLeftJustify
      Caption = 
        '   No.Sequência do Arquivo no Banco                             ' +
        '                      Nosso Número'
      TabOrder = 12
      object edt_seq_bco: TDCEdit
        Left = 188
        Top = 5
        Width = 75
        Height = 21
        Color = clInfoBk
        MaxLength = 4
        ReadOnly = True
        TabOrder = 0
      end
      object edt_nossonumero: TDCEdit
        Left = 412
        Top = 5
        Width = 125
        Height = 21
        Color = clInfoBk
        MaxLength = 4
        ReadOnly = True
        TabOrder = 1
      end
    end
    object btn_enviarWeb: TPDJButton
      Left = 538
      Top = 368
      Width = 234
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Enviar Boletos para  WEB'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_enviarWebClick
      TabOrder = 13
    end
    object btn_gerarGam: TPDJButton
      Left = 80
      Top = 448
      Width = 518
      Height = 25
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Gerar GAM'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = btn_gerarGamClick
      TabOrder = 14
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
  object SaveDialog: TSaveDialog
    Left = 608
    Top = 153
  end
  object ADOImasfWeb: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Im@sf7931;Persist Security Info=Tru' +
      'e;User ID=imasf11;Initial Catalog=imasf11;Data Source=sqlserver0' +
      '1.imasf.com.br'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 720
    Top = 284
  end
  object Qry_Web: TADOQuery
    Connection = ADOImasfWeb
    Parameters = <>
    Left = 752
    Top = 285
  end
end
