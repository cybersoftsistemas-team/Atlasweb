object fCadProdutosLotes: TfCadProdutosLotes
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
      DataSource = dsProdutosLotes
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
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
        DataSource = dsProdutosLotes
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
            FieldName = 'Lote'
            Title.Alignment = taCenter
            Title.Caption = 'Lote'
            Title.Font.Style = [fsBold]
            Width = 140
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 279
          end
          item
            FieldName = 'Data_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Fabrica'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 100
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Validade'
            Title.Alignment = taCenter
            Title.Caption = 'Data Validade'
            Title.Font.Style = [fsBold]
            Width = 100
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
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
          object cQuantidade_Entrada: TUniDBEdit
            Left = 29
            Top = 255
            Width = 124
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Entrada'
            DataSource = dsProdutosLotes
            TabOrder = 1
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
          object cData_Fabricacao: TUniDBDateTimePicker
            Left = 29
            Top = 199
            Width = 180
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Fabricacao'
            DataSource = dsProdutosLotes
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data da Fabrica'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProduto: TUniDBLookupComboBox
            Left = 29
            Top = 32
            Width = 472
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Produto'
            DataSource = dsProdutosLotes
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cDescricao: TUniDBEdit
            Left = 29
            Top = 144
            Width = 472
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsProdutosLotes
            TabOrder = 4
            FieldLabel = 'Descri'#231#227'o do Lote'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cData_Validade: TUniDBDateTimePicker
            Left = 215
            Top = 199
            Width = 180
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Validade'
            DataSource = dsProdutosLotes
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data de Validade'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cLote: TUniDBEdit
            Left = 29
            Top = 88
            Width = 204
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Lote'
            DataSource = dsProdutosLotes
            TabOrder = 6
            FieldLabel = 'N'#186' do Lote'
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
    Left = 44
    Top = 80
  end
  object tTotal: TFDQuery
    Left = 44
    Top = 184
  end
  object tTotalEntradas: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 44
    Top = 136
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
    Left = 44
    Top = 240
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 44
    Top = 288
  end
  object ProdutosLotes: TFDQuery
    BeforePost = ProdutosLotesBeforePost
    BeforeDelete = ProdutosLotesBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      'from ProdutosLotes')
    Left = 44
    Top = 344
    object ProdutosLotesRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object ProdutosLotesProduto: TIntegerField
      FieldName = 'Produto'
      Origin = 'Produto'
    end
    object ProdutosLotesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 30
    end
    object ProdutosLotesLote: TStringField
      FieldName = 'Lote'
      Origin = 'Lote'
      Size = 15
    end
    object ProdutosLotesData_Fabricacao: TSQLTimeStampField
      FieldName = 'Data_Fabricacao'
      Origin = 'Data_Fabricacao'
    end
    object ProdutosLotesData_Validade: TSQLTimeStampField
      FieldName = 'Data_Validade'
      Origin = 'Data_Validade'
    end
    object ProdutosLotesQuantidade_Entrada: TFloatField
      FieldName = 'Quantidade_Entrada'
      Origin = 'Quantidade_Entrada'
      DisplayFormat = '##0.000'
    end
    object ProdutosLotesProduto_Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto_Descricao'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Reduzida'
      KeyFields = 'Produto'
      Size = 250
      Lookup = True
    end
  end
  object dsProdutosLotes: TDataSource
    DataSet = ProdutosLotes
    Left = 44
    Top = 392
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
    Left = 44
    Top = 448
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 44
    Top = 496
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
    Left = 44
    Top = 552
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 44
    Top = 600
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 100
    Top = 75
  end
end



