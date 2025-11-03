object fCadProdutosDetalhes: TfCadProdutosDetalhes
  Left = 0
  Top = 0
  Width = 1288
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1288
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
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
      DataSource = dsProdutosDetalhe
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
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1288
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitWidth = 991
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
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
      object Panel1: TUniPanel
        Left = 0
        Top = 908
        Width = 1280
        Height = 30
        Hint = ''
        Align = alBottom
        TabOrder = 0
        Caption = ''
      end
      object RxDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 881
        Hint = ''
        DataSource = dsProdutosDetalhe
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'Produto_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Title.Font.Style = [fsBold]
            Width = 300
            ReadOnly = True
          end
          item
            FieldName = 'Detalhe_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Detalhe'
            Title.Font.Style = [fsBold]
            Width = 184
            ReadOnly = True
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 130
          end
          item
            FieldName = 'Nota_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Nota Entrada'
            Title.Font.Style = [fsBold]
            Width = 80
          end
          item
            FieldName = 'Data_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrada'
            Title.Font.Style = [fsBold]
            Width = 80
          end
          item
            FieldName = 'Quantidade_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Font.Style = [fsBold]
            Width = 69
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1280
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitLeft = 16
        ExplicitTop = -256
        DesignSize = (
          1278
          936)
        ScrollHeight = 369
        object pFicha: TUniPanel
          Left = 258
          Top = 32
          Width = 530
          Height = 337
          Hint = ''
          Enabled = False
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cDetalhe: TUniDBLookupComboBox
            Left = 29
            Top = 88
            Width = 472
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsDetalhes
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Detalhe'
            DataSource = dsProdutosDetalhe
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Detalhe'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cNota: TUniDBLookupComboBox
            Left = 29
            Top = 143
            Width = 321
            Height = 55
            Hint = ''
            ShowHint = True
            ListSource = dsNotas
            KeyField = 'Nota'
            ListFieldIndex = 0
            DataField = 'Nota_Entrada'
            DataSource = dsProdutosDetalhe
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Nota Fiscal de Entrada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnChange = cNotaChange
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cQuantidade_Entrada: TUniDBEdit
            Left = 29
            Top = 255
            Width = 140
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Entrada'
            DataSource = dsProdutosDetalhe
            TabOrder = 3
            FieldLabel = 'Quantidade Entrada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cData_Entrada: TUniDBDateTimePicker
            Left = 357
            Top = 143
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Entrada'
            DataSource = dsProdutosDetalhe
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data da Nota'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProduto: TUniDBLookupComboBox
            Left = 29
            Top = 33
            Width = 472
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Produto'
            DataSource = dsProdutosDetalhe
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cProcesso: TUniDBEdit
            Left = 29
            Top = 199
            Width = 220
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processo'
            DataSource = dsProdutosDetalhe
            TabOrder = 6
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object tRegistro: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Registro) FROM ProdutosDetalhe')
    Left = 52
    Top = 72
  end
  object tTotal: TFDQuery
    Left = 52
    Top = 176
  end
  object tTotalEntradas: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 52
    Top = 128
  end
  object Notas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Nota'
      '      ,Data'
      '      ,Chave_NFE'
      '      ,Processo'
      '      ,Item'
      'FROM   NotasItens NI'
      'WHERE  NI.Saida_Entrada = 0')
    Left = 52
    Top = 232
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 52
    Top = 280
  end
  object ProdutosDetalhe: TFDQuery
    BeforePost = ProdutosDetalheBeforePost
    BeforeDelete = ProdutosDetalheBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      'from ProdutosDetalhe')
    Left = 52
    Top = 336
    object ProdutosDetalheRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object ProdutosDetalheProduto: TIntegerField
      FieldName = 'Produto'
      Origin = 'Produto'
    end
    object ProdutosDetalheProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object ProdutosDetalheDetalhe: TSmallintField
      FieldName = 'Detalhe'
      Origin = 'Detalhe'
    end
    object ProdutosDetalheNota_Entrada: TIntegerField
      FieldName = 'Nota_Entrada'
      Origin = 'Nota_Entrada'
    end
    object ProdutosDetalheData_Entrada: TSQLTimeStampField
      FieldName = 'Data_Entrada'
      Origin = 'Data_Entrada'
    end
    object ProdutosDetalheItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object ProdutosDetalheQuantidade_Entrada: TFloatField
      FieldName = 'Quantidade_Entrada'
      Origin = 'Quantidade_Entrada'
    end
    object ProdutosDetalheQuantidade_Saida: TFloatField
      FieldName = 'Quantidade_Saida'
      Origin = 'Quantidade_Saida'
    end
    object ProdutosDetalheDetalhe_Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Detalhe_Descricao'
      LookupDataSet = Detalhes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Detalhe'
      Size = 60
      Lookup = True
    end
    object ProdutosDetalheProduto_Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto_Descricao'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Reduzida'
      KeyFields = 'Produto'
      Size = 80
      Lookup = True
    end
  end
  object dsProdutosDetalhe: TDataSource
    DataSet = ProdutosDetalhe
    Left = 52
    Top = 384
  end
  object Detalhes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Detalhes')
    Left = 52
    Top = 440
  end
  object dsDetalhes: TDataSource
    DataSet = Detalhes
    Left = 52
    Top = 488
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '     , Descricao_Reduzida '
      'from Produtos')
    Left = 132
    Top = 80
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 132
    Top = 128
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao_Reduzida from Produtos')
    Left = 132
    Top = 184
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 132
    Top = 232
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 504
    Top = 3
  end
end



