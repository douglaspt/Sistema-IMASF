inherited Frm_Cad_DocIngresso: TFrm_Cad_DocIngresso
  Caption = 'Frm_Cad_DocIngresso'
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo2: TPanel
    Width = 798
    inherited Image1: TImage
      Width = 796
    end
  end
  inherited Panel2: TPanel
    Width = 798
    inherited Image3: TImage
      Width = 796
    end
  end
  inherited Panel3: TPanel
    Width = 798
    object Panel1: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    Tipo                                          ( 0 - Document' +
        'os    1 - Car�ncia )'
      TabOrder = 2
      object edt_Doc_Regra_din: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 26
        Height = 21
        TabOrder = 0
        EditMask = '9'
      end
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        '    C�digo                                                      ' +
        '    (Gerado Automatico - N�o � necessario Preencher)'
      TabOrder = 0
      object edt_cod_docingresso: TDCChoiceEdit
        Tag = -3
        Left = 120
        Top = 5
        Width = 95
        Height = 21
        Hint = 
          'Digite o c�digo que se deseja alterar ou clique no bot�o para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        OnKeyDown = edt_cod_docingressoKeyDown
        Alignment = taRightJustify
        OnButtonClick = edt_cod_docingressoButtonClick
        EditMask = '9999'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = '    Descri��o'
      TabOrder = 1
      object edt_nome_din: TEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 669
        Height = 21
        MaxLength = 300
        TabOrder = 0
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
end
