inherited Frm_Rel_3053: TFrm_Rel_3053
  Caption = 'Frm_Rel_3053'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Btn_LimpaCampos: TPDJButton
      Left = 4
      Top = 4
      Width = 185
      Height = 25
      Hint = 'Voltar para a tela principal'
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
      Caption = '&Limpar todos os campos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = Btn_LimpaCamposClick
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object PDJButton4: TPDJButton
      Left = 88
      Top = 264
      Width = 289
      Height = 25
      Hint = 'Imprime Relação dos Agendamentos'
      RepeatInterval = 50
      RepeatStartInterval = 50
      Caption = 'Imprime Relação dos Agendamentos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = PDJButton4Click
      TabOrder = 0
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Inscrição'
      TabOrder = 1
      object edt_cod_beneficiario: TDCChoiceEdit
        Tag = -3
        Left = 160
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
      object edt_inscricao_ben: TDCChoiceEdit
        Tag = -1
        Left = 160
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 1
        OnKeyDown = edt_inscricao_benKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_inscricao_benButtonClick
        EditMask = '9999999'
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
      Caption = '    Beneficiário'
      TabOrder = 2
      object edt_nome: TDCEdit
        Tag = -10
        Left = 340
        Top = 5
        Width = 413
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 1
        Text = 'ABCDEFGHIJLMN'
      end
      object edt_carteira: TDCEdit
        Tag = -10
        Left = 160
        Top = 5
        Width = 141
        Height = 21
        TabStop = False
        Color = clInfoBk
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
        Text = 'ABCDEFGHIJLMN'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Situação do Agendamento           '
      TabOrder = 6
      object rdb_executado: TRadioButton
        Left = 160
        Top = 8
        Width = 74
        Height = 17
        Caption = 'Executado'
        TabOrder = 0
      end
      object rdb_naoexecutado: TRadioButton
        Left = 283
        Top = 8
        Width = 102
        Height = 17
        Caption = 'Não Executado'
        TabOrder = 1
      end
      object rdb_todos: TRadioButton
        Left = 514
        Top = 8
        Width = 58
        Height = 17
        Caption = 'Todos'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object rdb_excluidos: TRadioButton
        Left = 411
        Top = 8
        Width = 72
        Height = 17
        Caption = 'Excluídos'
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data do Agendamento   de                                    ' +
        '                     até'
      TabOrder = 3
      object edt_dtAgendamentoIni: TDCDateEdit
        Tag = -5
        Left = 160
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtAgendamentoFin: TDCDateEdit
        Tag = -5
        Left = 340
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        OnEnter = edt_dtAgendamentoFinEnter
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel6: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Data do Sistema             de                              ' +
        '                           até'
      TabOrder = 4
      object edt_dtsistemaIni: TDCDateEdit
        Tag = -5
        Left = 160
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 0
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
      object edt_dtsistemaFin: TDCDateEdit
        Tag = -5
        Left = 340
        Top = 5
        Width = 141
        Height = 21
        TabOrder = 1
        Checked = True
        Kind = dkDate
        ShowWeekDay = True
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Usuário '
      TabOrder = 5
      object cbx_cod_usuario: TDCComboBox
        Tag = -1
        Left = 160
        Top = 5
        Width = 321
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
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 798
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Ordem'
      TabOrder = 7
      object rdb_numagendamento: TRadioButton
        Left = 160
        Top = 8
        Width = 102
        Height = 17
        Caption = 'No.Agendamento'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdb_situacaoagendamento: TRadioButton
        Left = 411
        Top = 8
        Width = 148
        Height = 17
        Caption = 'Situação do Agendamento'
        TabOrder = 2
      end
      object rdb_inscricao: TRadioButton
        Left = 283
        Top = 8
        Width = 72
        Height = 17
        Caption = 'Inscrição'
        TabOrder = 1
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
