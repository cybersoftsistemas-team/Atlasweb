object fFatPedidoItensDUIMPItem: TfFatPedidoItensDUIMPItem
  Left = 0
  Top = 0
  ClientHeight = 638
  ClientWidth = 657
  Caption = 'fFatPedidoItensDUIMPItem'
  BorderStyle = bsNone
  OldCreateOrder = False
  OnActivate = UniFormActivate
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 603
    Width = 657
    Height = 35
    Hint = ''
    Margins.Top = 0
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    Color = 5526569
    ExplicitTop = 628
    object bSalvar: TUniSpeedButton
      AlignWithMargins = True
      Left = 494
      Top = 1
      Width = 80
      Height = 33
      Hint = 'Salvar informa'#231#245'es'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Salvar'
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 1
      OnClick = bSalvarClick
    end
    object bCancelar: TUniSpeedButton
      AlignWithMargins = True
      Left = 576
      Top = 1
      Width = 80
      Height = 33
      Hint = 'Cancelar opera'#231#227'o'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Cancelar'
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 26
      TabOrder = 2
      OnClick = bCancelarClick
    end
  end
  object uniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 603
    Hint = ''
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Painel'#39';'#13#10'}')
    BorderStyle = ubsInset
    ShowCaption = False
    TitleVisible = True
    Title = 'ADICIONANDO ITEM (CHASSI/SERIAL)'
    Caption = 'uniPanel1'
    ExplicitLeft = 11
    ExplicitTop = -6
    ExplicitHeight = 628
    object cProduto: TUniNumberEdit
      Left = 14
      Top = 14
      Width = 186
      Hint = ''
      BorderStyle = ubsInset
      Alignment = taRightJustify
      TabOrder = 2
      TabStop = False
      ReadOnly = True
      FieldLabel = 'Produto'
      FieldLabelWidth = 80
      DecimalSeparator = ','
    end
    object cDescricao: TUniMemo
      Left = 14
      Top = 38
      Width = 628
      Height = 122
      Hint = ''
      BorderStyle = ubsInset
      Lines.Strings = (
        'cDescricao')
      ReadOnly = True
      TabOrder = 3
      TabStop = False
      FieldLabel = 'Descri'#231#227'o'
      FieldLabelWidth = 80
      FieldLabelSeparator = ' '
    end
    object gSeriais: TUniDBGrid
      Left = 14
      Top = 163
      Width = 628
      Height = 263
      Hint = ''
      HeaderTitle = 'SERIAIS / CHASSI'
      HeaderTitleAlign = taCenter
      DataSource = dstSeriais
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow, dgDontShowSelected, dgRowNumbers]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsInset
      TabOrder = 0
      OnSelectionChange = gSeriaisSelectionChange
      Columns = <
        item
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 53
          Alignment = taCenter
        end
        item
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Width = 210
        end
        item
          FieldName = 'Cor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Width = 120
        end
        item
          FieldName = 'Ano_Fabricacao'
          Title.Alignment = taCenter
          Title.Caption = 'Fab'
          Width = 45
          Alignment = taCenter
        end
        item
          FieldName = 'Ano_Modelo'
          Title.Alignment = taCenter
          Title.Caption = 'Mod'
          Width = 45
          Alignment = taCenter
        end
        item
          FieldName = 'Cor_DENATRAN'
          Title.Alignment = taCenter
          Title.Caption = 'Cor DENATRAN'
          Width = 120
        end>
    end
    object cPesquisa: TUniEdit
      Left = 14
      Top = 430
      Width = 597
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = ''
      TabOrder = 4
      ClearButton = True
      FieldLabel = 'Pesquisar'
      FieldLabelWidth = 60
      OnChange = cPesquisaChange
    end
    object bPesquisa: TUniSpeedButton
      AlignWithMargins = True
      Left = 615
      Top = 430
      Width = 24
      Height = 24
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 5
      TabOrder = 5
      OnClick = bPesquisaClick
    end
    object UniPanel2: TUniPanel
      Left = 14
      Top = 473
      Width = 628
      Height = 87
      Hint = ''
      TabOrder = 6
      BorderStyle = ubsInset
      ShowCaption = False
      Caption = 'UniPanel2'
      object cQtdePerc: TUniFormattedNumberEdit
        Left = 8
        Top = 8
        Width = 230
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 1
        SelectOnFocus = True
        FieldLabel = 'Quantidade (%)'
        FieldLabelWidth = 80
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cQtde: TUniFormattedNumberEdit
        Left = 8
        Top = 32
        Width = 230
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 2
        SelectOnFocus = True
        FieldLabel = 'Quantidade'
        FieldLabelWidth = 80
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cValor: TUniFormattedNumberEdit
        Left = 8
        Top = 56
        Width = 230
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 3
        SelectOnFocus = True
        FieldLabel = 'Valor'
        FieldLabelWidth = 80
        DecimalPrecision = 6
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
    end
  end
  object tSeriais: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Tipo   '
      '      ,Numero'
      '      ,Cor = (select Nome from Cores where Codigo = Cor)'
      '      ,Ano_Fabricacao'
      '      ,Ano_Modelo'
      '      ,Cor_DENATRAN'
      'from ProdutosSeriais '
      '--where processo = '#39'1606875444'#39'  '
      '--and Disponivel = 1'
      'order by Processo')
    Left = 309
    Top = 296
  end
  object dstSeriais: TDataSource
    DataSet = tSeriais
    Left = 309
    Top = 350
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    AlertType = atError
    Width = 400
    Padding = 20
    Left = 236
    Top = 298
  end
end
