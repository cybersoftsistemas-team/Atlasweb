object fCadCotacao: TfCadCotacao
  Left = 0
  Top = 0
  Width = 1183
  Height = 769
  OnCreate = uniFrameCreate
  TabOrder = 0
  object pCotacao: TUniPanel
    Tag = 1
    Left = 880
    Top = 62
    Width = 303
    Height = 707
    Hint = ''
    CreateOrder = 1
    Align = alClient
    TabOrder = 2
    ShowCaption = False
    Caption = ''
    object pFicha: TUniContainerPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 295
      Height = 76
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      ParentColor = False
      Color = clTeal
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
          ' '#39'Ficha'#39';'#13#10'}')
      TabOrder = 1
      ExplicitLeft = 5
      ExplicitTop = 1
      object cData: TUniDBDateTimePicker
        Left = 17
        Top = 23
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        DataField = 'Data'
        DataSource = dsCotacao
        DateTime = 44182.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 1
        BorderStyle = ubsInset
        FieldLabel = 'Data'
        FieldLabelWidth = 60
        FieldLabelSeparator = ' '
      end
      object cValor: TUniDBFormattedNumberEdit
        Left = 17
        Top = 49
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        DataField = 'Valor'
        DataSource = dsCotacao
        TabOrder = 2
        FieldLabel = 'Valor'
        FieldLabelWidth = 60
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsInset
      end
    end
    object UniPanel1: TUniPanel
      Left = 1
      Top = 83
      Width = 301
      Height = 623
      Hint = ''
      Align = alBottom
      TabOrder = 2
      ShowCaption = False
      Caption = 'UniPanel1'
      object GradeCotacao: TUniDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 293
        Height = 615
        Hint = ''
        DataSource = dsCotacao
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.PageSize = 29
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsInset
        Align = alClient
        TabOrder = 1
        OnDblClick = GradeCotacaoDblClick
        Columns = <
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 109
            Alignment = taCenter
          end
          item
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 109
          end>
      end
    end
  end
  object pMoedas: TUniPanel
    Tag = 1
    Left = 0
    Top = 62
    Width = 880
    Height = 707
    Hint = ''
    CreateOrder = 2
    Align = alLeft
    TabOrder = 3
    ShowCaption = False
    Caption = ''
    object GradeMoedas: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 872
      Height = 699
      Hint = ''
      TitleFont.Style = [fsBold]
      DataSource = dsMoedas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      WebOptions.PageSize = 35
      LoadMask.Message = 'Carregando dados...'
      ForceFit = True
      BorderStyle = ubsInset
      Align = alClient
      TabOrder = 1
      OnDblClick = GradeMoedasDblClick
      Columns = <
        item
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Style = [fsBold]
          Width = 60
          ReadOnly = True
        end
        item
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Font.Style = [fsBold]
          Width = 261
          ReadOnly = True
        end
        item
          FieldName = 'Simbolo'
          Title.Alignment = taCenter
          Title.Caption = 'Simbolo'
          Title.Font.Style = [fsBold]
          Width = 64
          ReadOnly = True
        end
        item
          FieldName = 'Pais'
          Title.Alignment = taCenter
          Title.Caption = 'Pais'
          Title.Font.Style = [fsBold]
          Width = 243
          ReadOnly = True
        end>
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1183
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 143
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsCotacao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 140
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 181
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 222
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 304
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      Left = 263
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bGravarClick
    end
    object bFechar: TUniSpeedButton
      Left = 345
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object pBarraPesq: TUniPanel
    Left = 0
    Top = 35
    Width = 1183
    Height = 27
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'BarraPesquisa'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = clNone
    object cPesquisa: TUniEdit
      Left = 0
      Top = 0
      Width = 520
      Height = 27
      Hint = ''
      BorderStyle = ubsNone
      Text = ''
      Align = alLeft
      TabOrder = 1
      Color = clWhite
      EmptyText = 'Pesquisar'
      OnKeyDown = cPesquisaKeyDown
    end
    object bPesquisa: TUniSpeedButton
      Left = 520
      Top = 0
      Width = 25
      Height = 27
      Hint = ''
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 10
      TabOrder = 2
      OnClick = bPesquisaClick
    end
  end
  object Cotacao: TFDQuery
    AutoCalcFields = False
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Cotacao order by data desc')
    Left = 40
    Top = 78
    object CotacaoMoeda: TIntegerField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object CotacaoData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object CotacaoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'Valor'
    end
  end
  object dsCotacao: TDataSource
    DataSet = Cotacao
    Left = 42
    Top = 134
  end
  object Moedas: TFDQuery
    AfterScroll = MoedasAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Moedas')
    Left = 40
    Top = 190
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 42
    Top = 246
  end
  object Alerta: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 416
    Top = 8
  end
end
