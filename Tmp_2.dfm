object Frm_Tmp2: TFrm_Tmp2
  Left = 58
  Top = 46
  Width = 731
  Height = 518
  Caption = 'Frm_Tmp2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 55
    Height = 20
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 264
    Width = 146
    Height = 20
    Caption = 'Carteirinhas Lidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 424
    Width = 39
    Height = 13
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 16
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 240
    Width = 48
    Height = 16
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 600
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Ler'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edt_carteirinha: TEdit
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt_carteirinha'
    OnKeyPress = edt_carteirinhaKeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 665
    Height = 161
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 16
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edt_carteirinha'
    OnKeyPress = edt_carteirinhaKeyPress
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 288
    Width = 665
    Height = 129
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit2: TEdit
    Left = 8
    Top = 456
    Width = 65
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 96
    Top = 456
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object pnl_alerta: TPanel
    Left = 280
    Top = 262
    Width = 392
    Height = 22
    BevelOuter = bvLowered
    Caption = 'BENEFICIÁRIO SUPENSO'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Query1: TQuery
    DatabaseName = 'bd_imasf'
    Left = 264
    Top = 352
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 360
  end
  object Query2: TQuery
    DatabaseName = 'bd_imasf'
    Left = 264
    Top = 408
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 312
    Top = 416
  end
end
