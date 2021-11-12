object Frm_2031: TFrm_2031
  Left = 82
  Top = 131
  Width = 544
  Height = 375
  Caption = 'Frm_2031 - V2.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
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
    Top = 328
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 168
    Top = 248
    Width = 163
    Height = 25
    Caption = 'Executa Agendamento'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 80
    Top = 295
    Width = 75
    Height = 25
    Caption = 'RollBack'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 344
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Commit'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 240
    Top = 208
  end
end
