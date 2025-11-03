object fCadModalidadesPgto: TfCadModalidadesPgto
  Left = 0
  Top = 0
  Width = 820
  Height = 654
  HelpContext = 205
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  ParentFont = False
  object Panel1: TUniPanel
    Left = 0
    Top = 624
    Width = 820
    Height = 30
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    DesignSize = (
      820
      30)
    object bSair: TUniButton
      Left = 881
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      ShowHint = True
      ParentShowHint = False
      Caption = '&Sair'
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object bPesquisa: TUniButton
      Left = 290
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      ShowHint = True
      ParentShowHint = False
      Caption = '&Pesquisa'
      TabOrder = 2
      OnClick = bPesquisaClick
    end
  end
  object Panel2: TUniPanel
    Left = 4
    Top = 50
    Width = 448
    Height = 196
    Hint = ''
    Enabled = False
    TabOrder = 1
    Caption = ''
    object StaticText5: TUniLabel
      Left = 5
      Top = 120
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 7
    end
    object cDescricao: TUniDBEdit
      Left = 124
      Top = 120
      Width = 317
      Height = 21
      Hint = ''
      DataField = 'Descricao'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 5
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
    object StaticText3: TUniLabel
      Left = 5
      Top = 5
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'C'#243'digo'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 8
    end
    object cCodigo: TUniDBEdit
      Left = 124
      Top = 5
      Width = 59
      Height = 21
      Hint = ''
      Enabled = False
      DataField = 'Codigo'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 0
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
    object cForma: TUniDBRadioGroup
      Left = 5
      Top = 149
      Width = 438
      Height = 42
      Hint = ''
      DataField = 'Forma_Pagamento'
      Caption = 'Forma de Pagamento (NF-e)'
      TabOrder = 6
      Items.Strings = (
        'A Vista'
        'A Prazo'
        'Outros')
      Columns = 3
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object StaticText15: TUniLabel
      Left = 5
      Top = 28
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'N'#186' de Parcelas'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 9
    end
    object cNumeroParcelas: TUniDBEdit
      Left = 124
      Top = 28
      Width = 59
      Height = 21
      Hint = ''
      DataField = 'Numero_Parcelas'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
    object StaticText16: TUniLabel
      Left = 5
      Top = 51
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'Prazo 1'#170' Parcela'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 10
    end
    object DBEdit13: TUniDBEdit
      Left = 124
      Top = 51
      Width = 59
      Height = 21
      Hint = ''
      DataField = 'Prazo_Primeira'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 2
      OnExit = DBEdit13Exit
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
    object StaticText17: TUniLabel
      Left = 5
      Top = 74
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'Demais Parcelas'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 11
    end
    object DBEdit14: TUniDBEdit
      Left = 124
      Top = 74
      Width = 59
      Height = 21
      Hint = ''
      DataField = 'Prazo_Demais'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 3
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
    object StaticText1: TUniLabel
      Left = 5
      Top = 97
      Width = 117
      Height = 21
      Hint = ''
      AutoSize = False
      Caption = 'Dia Fixo p/Vencimento'
      ParentFont = False
      Font.Color = 6010624
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      Color = 6710784
      TabOrder = 12
    end
    object cDia: TUniDBEdit
      Left = 124
      Top = 97
      Width = 59
      Height = 21
      Hint = ''
      DataField = 'Prazo_Dia'
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 4
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
      BorderStyle = ubsDefault
    end
  end
  object Grade: TUniDBGrid
    Left = 4
    Top = 249
    Width = 448
    Height = 202
    Hint = ''
    TitleFont.Name = 'MS Sans Serif'
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    ParentFont = False
    TabOrder = 2
    Columns = <
      item
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
      end
      item
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 366
      end>
  end
  object tCodigo: TFDQuery
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ModalidadesPagamento')
    Left = 255
    Top = 64
    object tCodigoCodigo: TSmallintField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
end



