inherited Frm_Cad_conveniadoendereco: TFrm_Cad_conveniadoendereco
  Left = -6
  Top = -3
  Caption = 'Frm_Cad_conveniadoendereco'
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_Titulo: TPanel
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
      Top = 289
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Fone'
      TabOrder = 9
      object edt_fone_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 97
        Height = 21
        MaxLength = 25
        TabOrder = 0
        Text = 'edt_fone_cne'
      end
    end
    object Panel4: TPanel
      Tag = -2
      Left = 1
      Top = 1
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Código '
      TabOrder = 0
      object edt_cod_conveniadoendereco: TDCChoiceEdit
        Tag = -2
        Left = 120
        Top = 5
        Width = 93
        Height = 21
        Hint = 
          'Digite o código que se deseja alterar ou clique no botão para pe' +
          'squisar'
        MaxLength = 10
        TabOrder = 0
        Alignment = taRightJustify
        OnButtonClick = edt_cod_conveniadoenderecoButtonClick
        EditMask = '9999999'
      end
    end
    object Panel5: TPanel
      Tag = -1
      Left = 1
      Top = 257
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    UF'
      TabOrder = 8
      object edt_uf_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 33
        Height = 21
        MaxLength = 4
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel7: TPanel
      Tag = -1
      Left = 1
      Top = 225
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Cidade'
      TabOrder = 7
      object edt_cidade_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 241
        Height = 21
        MaxLength = 30
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel8: TPanel
      Tag = -1
      Left = 1
      Top = 193
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Bairro'
      TabOrder = 6
      object edt_bairro_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 241
        Height = 21
        MaxLength = 30
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel9: TPanel
      Tag = -1
      Left = 1
      Top = 161
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    CEP'
      TabOrder = 5
      object edt_cep_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 73
        Height = 21
        MaxLength = 9
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel10: TPanel
      Tag = -1
      Left = 1
      Top = 129
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Endereço'
      TabOrder = 4
      object edt_endereco_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 241
        Height = 21
        MaxLength = 50
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel11: TPanel
      Tag = -1
      Left = 1
      Top = 97
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    CNPJ'
      TabOrder = 3
      object edt_cnpj_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        MaxLength = 18
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel12: TPanel
      Tag = -1
      Left = 1
      Top = 65
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Razão Social'
      TabOrder = 2
      object edt_razao_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        MaxLength = 70
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
    object Panel13: TPanel
      Tag = -1
      Left = 1
      Top = 33
      Width = 796
      Height = 32
      Alignment = taLeftJustify
      Caption = '    Seqüencia'
      TabOrder = 1
      object edt_sequencia_cne: TDCEdit
        Tag = -1
        Left = 120
        Top = 5
        Width = 185
        Height = 21
        MaxLength = 12
        TabOrder = 0
        Text = 'DCEdit1'
      end
    end
  end
  inherited StB_Principal: TStatusBar
    Width = 798
  end
end
