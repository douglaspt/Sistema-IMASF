inherited Frm_Rel_3058: TFrm_Rel_3058
  Caption = 'Frm_Rel_3058'
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
  end
  inherited Panel3: TPanel
    Width = 799
    object GrB_Registra: TGroupBox
      Left = 10
      Top = 84
      Width = 775
      Height = 169
      Caption = 'Calculo de Contribui��o'
      TabOrder = 0
      object Panel5: TPanel
        Tag = -1
        Left = 2
        Top = 15
        Width = 737
        Height = 35
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Data do Desconto                                            ' +
          '              Plano                                             ' +
          '                                                           Idade' +
          '                        '
        TabOrder = 0
        object edt_idade: TDCEdit
          Tag = -1
          Left = 662
          Top = 8
          Width = 69
          Height = 21
          MaxLength = 12
          TabOrder = 2
        end
        object edt_dtdesconto_flh: TDCDateEdit
          Tag = -1
          Left = 122
          Top = 8
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
        object cbx_cod_planopagto: TDCComboBox
          Tag = -1
          Left = 314
          Top = 8
          Width = 272
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
      end
      object Panel7: TPanel
        Tag = -1
        Left = 2
        Top = 50
        Width = 737
        Height = 35
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Valor do Desconto                                           ' +
          '                                                                ' +
          '                         Valor da Tabela        '
        TabOrder = 1
        object SpeedButton7: TSpeedButton
          Left = 309
          Top = 8
          Width = 24
          Height = 22
          Hint = 'Calcular Desconto'
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
        object edt_vldesconto_adf: TDCEdit
          Tag = -1
          Left = 122
          Top = 8
          Width = 150
          Height = 21
          MaxLength = 12
          TabOrder = 0
          Text = 'DCEdit1'
        end
        object edt_vltabela: TDCEdit
          Tag = -1
          Left = 595
          Top = 8
          Width = 137
          Height = 21
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Tag = -1
        Left = 2
        Top = 117
        Width = 737
        Height = 39
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Valor do Sal�rio       '
        TabOrder = 2
        object edt_vlsalario: TDCEdit
          Tag = -1
          Left = 122
          Top = 8
          Width = 150
          Height = 21
          MaxLength = 12
          TabOrder = 0
        end
      end
      object rdb_cancelamento: TRadioButton
        Left = 370
        Top = 119
        Width = 239
        Height = 21
        Caption = 'Calculo de Contribui��o para Cancelamento'
        TabOrder = 3
      end
      object rdb_incricao: TRadioButton
        Left = 370
        Top = 88
        Width = 215
        Height = 21
        Caption = 'Calculo de Contribui��o para Inscri��o'
        Checked = True
        TabOrder = 4
        TabStop = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 269
      Width = 775
      Height = 164
      Caption = 'C�lculo de Diferen�as de Contribui��o '
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 207
        Top = 118
        Width = 243
        Height = 26
        Hint = 'Calcular Desconto'
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Panel6: TPanel
        Tag = -1
        Left = 2
        Top = 47
        Width = 770
        Height = 35
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '    Plano1                                                      ' +
          '                                             Plano2             ' +
          '                                                       Dt. Nasc.' +
          '                        '
        TabOrder = 1
        object cb2_cod_planopagto: TDCComboBox
          Tag = -1
          Left = 114
          Top = 8
          Width = 203
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object cb3_cod_planopagto: TDCComboBox
          Tag = -1
          Left = 384
          Top = 8
          Width = 176
          Height = 21
          Hint = 'C�DIGO DA DESPESA DO BENEFICI�RIO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_dtnascimento: TDCDateEdit
          Tag = -1
          Left = 631
          Top = 8
          Width = 133
          Height = 21
          Hint = 'DIA EM QUE � LAN�ADO O DESCONTO/DESPESA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Checked = True
          Kind = dkDate
          ShowWeekDay = True
        end
      end
      object Panel9: TPanel
        Tag = -1
        Left = 2
        Top = 12
        Width = 770
        Height = 35
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          '   Dia/Mes/Ano Inicial                                          ' +
          '                                                                ' +
          '              M�s/Ano Final        '
        TabOrder = 0
        object cbx_cod_mes: TDCComboBox
          Tag = -1
          Left = 150
          Top = 8
          Width = 167
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
        object edt_ano: TDCEdit
          Left = 321
          Top = 8
          Width = 60
          Height = 21
          TabOrder = 1
        end
        object ed2_ano: TDCEdit
          Left = 701
          Top = 7
          Width = 60
          Height = 21
          TabOrder = 3
        end
        object cb2_cod_mes: TDCComboBox
          Tag = -1
          Left = 542
          Top = 7
          Width = 155
          Height = 21
          TabOrder = 2
          Items.Strings = (
            '0 - Disquete / Arquivo Magn�tico enviado pelo Conveniado'
            '1 - Conta n�o recebida por meio Magn�tico e dever� ser digitada')
          ValueItem = ''
          ItemHeight = 0
          Style = csOwnerDrawFixed
          ShowCheckBox = True
        end
        object edt_diaInicial: TDCEdit
          Left = 113
          Top = 8
          Width = 32
          Height = 21
          TabOrder = 4
          Text = '01'
        end
      end
      object rdb_titular: TRadioButton
        Left = 566
        Top = 105
        Width = 72
        Height = 21
        Caption = ' Titular'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rdb_dependente: TRadioButton
        Left = 566
        Top = 129
        Width = 97
        Height = 21
        Caption = ' Dependente'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 14
      Width = 775
      Height = 55
      Caption = 'Benefici�rio'
      TabOrder = 2
      object Panel4: TPanel
        Tag = -2
        Left = 2
        Top = 11
        Width = 737
        Height = 35
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '    Inscri��o'
        TabOrder = 0
        object edt_cod_beneficiario: TDCChoiceEdit
          Tag = -3
          Left = 122
          Top = 8
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
          Left = 122
          Top = 8
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
          Tag = -1
          Left = 339
          Top = 8
          Width = 392
          Height = 21
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 2
        end
        object edt_carteira: TDCEdit
          Tag = -10
          Left = 220
          Top = 8
          Width = 115
          Height = 21
          TabStop = False
          Color = clInfoBk
          MaxLength = 12
          ReadOnly = True
          TabOrder = 3
          Text = 'ABCDEFGHIJLMN'
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
end
