object fFatPedidoItensDUIMPItem: TfFatPedidoItensDUIMPItem
  Left = 0
  Top = 0
  ClientHeight = 655
  ClientWidth = 652
  Caption = 'fFatPedidoItensDUIMPItem'
  BorderStyle = bsNone
  OldCreateOrder = False
  OnActivate = UniFormActivate
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 620
    Width = 652
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
    object bSalvar: TUniSpeedButton
      AlignWithMargins = True
      Left = 489
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
      Left = 571
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
    Width = 652
    Height = 620
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
    object gSeriais: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 644
      Height = 252
      Hint = ''
      HeaderTitle = 'SERIAIS / CHASSI - DISPON'#205'VEIS'
      HeaderTitleAlign = taCenter
      DataSource = dstSeriais
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow, dgDontShowSelected, dgRowNumbers]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsInset
      Align = alTop
      TabOrder = 0
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
    object UniPanel2: TUniPanel
      AlignWithMargins = True
      Left = 4
      Top = 532
      Width = 644
      Height = 84
      Hint = ''
      Align = alBottom
      TabOrder = 2
      BorderStyle = ubsInset
      ShowCaption = False
      Caption = 'UniPanel2'
      object cQtdePerc: TUniFormattedNumberEdit
        Left = 5
        Top = 6
        Width = 206
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
        Left = 5
        Top = 31
        Width = 206
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
        Left = 5
        Top = 56
        Width = 206
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
    object gItens: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 295
      Width = 644
      Height = 231
      Hint = ''
      HeaderTitle = 'SERIAIS / CHASSI - ADICIONADOS'
      HeaderTitleAlign = taCenter
      DataSource = dstSeriaisPed
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow, dgDontShowSelected, dgRowNumbers]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsInset
      Align = alClient
      TabOrder = 3
      OnRecordCount = gItensRecordCount
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
    object UniPanel4: TUniPanel
      AlignWithMargins = True
      Left = 4
      Top = 262
      Width = 644
      Height = 27
      Hint = ''
      Align = alTop
      TabOrder = 4
      BorderStyle = ubsInset
      ShowCaption = False
      Caption = 'UniPanel2'
      object cPesquisa: TUniEdit
        Left = 1
        Top = 1
        Width = 567
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Text = ''
        Align = alClient
        TabOrder = 1
        ClearButton = True
        FieldLabel = 'Pesquisar'
        FieldLabelWidth = 60
        OnChange = cPesquisaChange
      end
      object bPesquisa: TUniSpeedButton
        Left = 568
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Fecha a tela de cadastro atual.'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        Caption = ''
        Align = alRight
        ParentColor = False
        IconAlign = iaCenter
        Images = UniMainModule.imgBotoes
        ImageIndex = 5
        TabOrder = 2
        OnClick = bPesquisaClick
      end
      object bAdicionar: TUniSpeedButton
        Left = 593
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Adiciona Serial/Chassi selecionado  do pedido.'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        Caption = ''
        Align = alRight
        ParentColor = False
        IconAlign = iaCenter
        Images = UniMainModule.imgBotoes
        ImageIndex = 0
        TabOrder = 3
        OnClick = bAdicionarClick
      end
      object bRemover: TUniSpeedButton
        Left = 618
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Remove Serial/Chassi selecionado  do pedido.'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        Caption = ''
        Align = alRight
        ParentColor = False
        IconAlign = iaCenter
        Images = UniMainModule.imgBotoes
        ImageIndex = 27
        TabOrder = 4
        OnClick = bRemoverClick
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
  object tSeriaisPed: TFDQuery
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
    Left = 373
    Top = 295
  end
  object dstSeriaisPed: TDataSource
    DataSet = tSeriaisPed
    Left = 373
    Top = 349
  end
  object ttmp: TFDQuery
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
    Left = 308
    Top = 411
  end
end
