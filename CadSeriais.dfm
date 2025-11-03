object fCadSeriais: TfCadSeriais
  Left = 0
  Top = 0
  Width = 1288
  Height = 746
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
      DataSource = dsSeriais
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
    Height = 711
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 966
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
        TabOrder = 1
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
      object gSeriais: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 656
        Hint = ''
        DataSource = dsSeriais
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.PageSize = 30
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        TrackOver = False
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Produto_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 367
          end
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Serial/Chassi'
            Title.Font.Style = [fsBold]
            Width = 180
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 134
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 57
          end
          item
            FieldName = 'Cor_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Title.Font.Style = [fsBold]
            Width = 118
          end
          item
            FieldName = 'Ano_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fab.'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end
          item
            FieldName = 'Ano Modelo'
            Title.Alignment = taCenter
            Title.Caption = 'Mod.'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object ScrollBox: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1280
        Height = 683
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitLeft = -8
        DesignSize = (
          1278
          681)
        ScrollHeight = 353
        object pFicha: TUniPanel
          Left = 217
          Top = 26
          Width = 664
          Height = 327
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
          object cNumero: TUniDBEdit
            Left = 341
            Top = 183
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsSeriais
            TabOrder = 1
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 21
            Top = 128
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCores
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Cor'
            DataSource = dsSeriais
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Cor'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 21
            Top = 183
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsSeriais
            Items.Strings = (
              'SERIAL'
              'CHASSI'
              'MOTOR')
            TabOrder = 3
            FieldLabel = 'Tipo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 21
            Top = 73
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Processo;DI'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'Processo'
            DataSource = dsSeriais
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object UniDBEdit3: TUniDBEdit
            Left = 21
            Top = 239
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Ano_Modelo'
            DataSource = dsSeriais
            TabOrder = 5
            FieldLabel = 'Modelo - Ano'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit4: TUniDBEdit
            Left = 341
            Top = 239
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Ano_Fabricacao'
            DataSource = dsSeriais
            TabOrder = 6
            FieldLabel = 'Fabrica'#231#227'o - Ano'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cProduto: TUniDBLookupComboBox
            Left = 21
            Top = 18
            Width = 622
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Produto'
            DataSource = dsSeriais
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object UniDBLookupComboBox5: TUniDBLookupComboBox
            Left = 341
            Top = 128
            Width = 302
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCoresDENTRAN
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Cor_DENATRAN'
            DataSource = dsSeriais
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Cor DENATRAN'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Notas Fiscais'
      object gNotas: TUniDBGrid
        Left = 465
        Top = 0
        Width = 815
        Height = 683
        Hint = ''
        DataSource = dsNotas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        TrackOver = False
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Style = [fsBold]
            Width = 89
            Alignment = taCenter
          end
          item
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Nota Fiscal'
            Title.Font.Style = [fsBold]
            Width = 103
          end
          item
            FieldName = 'Chave_NFe'
            Title.Alignment = taCenter
            Title.Caption = 'Chave NF-e'
            Title.Font.Style = [fsBold]
            Width = 360
            Alignment = taCenter
          end
          item
            FieldName = 'Saida_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo NF'
            Title.Font.Style = [fsBold]
            Width = 88
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Emissor'
            Title.Alignment = taCenter
            Title.Caption = 'Emissor'
            Title.Font.Style = [fsBold]
            Width = 82
            Alignment = taCenter
            ReadOnly = True
          end>
      end
      object pNotas: TUniPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 683
        Hint = ''
        Align = alLeft
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        Caption = ''
        Color = clNone
        object UniGroupBox1: TUniGroupBox
          Left = 19
          Top = 23
          Width = 422
          Height = 314
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          object cData: TUniDBDateTimePicker
            Left = 14
            Top = 137
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data'
            DataSource = dsNotas
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 1
            ParentFont = False
            FieldLabel = 'Data da Nota'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 14
            Top = 216
            Width = 144
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Saida_Entrada'
            DataSource = dsNotas
            Caption = 'Tipo de Nota'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Entrada'
              'Saida')
            Values.Strings = (
              '0'
              '1')
          end
          object UniDBRadioGroup2: TUniDBRadioGroup
            Left = 178
            Top = 216
            Width = 144
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Emissor'
            DataSource = dsNotas
            Caption = 'Emissor'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Proprio'
              'Terceiros')
            Values.Strings = (
              'P'
              'T')
          end
          object cNota: TUniDBEdit
            Left = 14
            Top = 24
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nota'
            DataSource = dsNotas
            TabOrder = 4
            FieldLabel = 'Nota Fiscal'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cChave: TUniDBEdit
            Left = 14
            Top = 81
            Width = 387
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Chave_NFe'
            DataSource = dsNotas
            TabOrder = 5
            FieldLabel = 'Chave NF-e'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
        end
        object bAddNF: TUniSpeedButton
          Left = 25
          Top = 349
          Width = 41
          Height = 35
          Hint = 'Adicionar novo registro.'
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 0
          TabOrder = 2
          OnClick = bAddNFClick
        end
        object bAltNF: TUniSpeedButton
          Left = 66
          Top = 349
          Width = 41
          Height = 35
          Hint = 'Editar registro corrente.'
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 1
          TabOrder = 3
          OnClick = bAltNFClick
        end
        object bExcNF: TUniSpeedButton
          Left = 107
          Top = 349
          Width = 41
          Height = 35
          Hint = 'Excluir registro corrente.'
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 2
          TabOrder = 4
          OnClick = bExcNFClick
        end
        object bSalvarNF: TUniSpeedButton
          Left = 148
          Top = 349
          Width = 41
          Height = 35
          Hint = 'Salva o registro corrente.'
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 4
          TabOrder = 5
          OnClick = bSalvarNFClick
        end
        object bCancNF: TUniSpeedButton
          Left = 189
          Top = 349
          Width = 41
          Height = 35
          Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 3
          TabOrder = 6
          OnClick = bCancNFClick
        end
      end
    end
  end
  object tRegistro: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 44
    Top = 78
  end
  object Seriais: TFDQuery
    BeforePost = ProdutosSeriaisBeforePost
    BeforeDelete = ProdutosSeriaisBeforeDelete
    AfterScroll = SeriaisAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Registro'
      '      ,Produto'
      
        '      ,Produto_Desc = (select Descricao_Reduzida from Produtos w' +
        'here Codigo = Produto)'
      '      ,Processo'
      '      ,Tipo'
      '      ,Numero'
      '      ,Cor'
      '      ,Ano_Modelo'
      '      ,Ano_Fabricacao'
      '      ,Cor_DENATRAN, Disponivel'
      'from ProdutosSeriais')
    Left = 44
    Top = 126
    object SeriaisRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object SeriaisProduto: TIntegerField
      FieldName = 'Produto'
      Origin = 'Produto'
      Required = True
    end
    object SeriaisProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object SeriaisTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      Size = 15
    end
    object SeriaisNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
      Size = 30
    end
    object SeriaisCor: TStringField
      FieldName = 'Cor'
      Origin = 'Cor'
      Size = 5
    end
    object SeriaisAno_Modelo: TStringField
      FieldName = 'Ano_Modelo'
      Origin = 'Ano_Modelo'
      Size = 4
    end
    object SeriaisAno_Fabricacao: TStringField
      FieldName = 'Ano_Fabricacao'
      Origin = 'Ano_Fabricacao'
      Size = 4
    end
    object SeriaisCor_DENATRAN: TStringField
      FieldName = 'Cor_DENATRAN'
      Origin = 'Cor_DENATRAN'
      Size = 2
    end
    object SeriaisDisponivel: TBooleanField
      FieldName = 'Disponivel'
      Origin = 'Disponivel'
    end
    object SeriaisProduto_Desc: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto_Desc'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Reduzida'
      KeyFields = 'Produto'
      Size = 80
      Lookup = True
    end
  end
  object dsSeriais: TDataSource
    DataSet = Seriais
    Left = 44
    Top = 174
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Produtos')
    Left = 44
    Top = 222
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 44
    Top = 270
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 44
    Top = 366
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Processo, DI from ProcessosImp')
    Left = 44
    Top = 318
  end
  object Cores: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProdutosSeriais')
    Left = 120
    Top = 78
  end
  object dsCores: TDataSource
    DataSet = Cores
    Left = 120
    Top = 126
  end
  object CoresDENATRAN: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProdutosSeriais')
    Left = 120
    Top = 176
  end
  object dsCoresDENTRAN: TDataSource
    DataSet = CoresDENATRAN
    Left = 120
    Top = 222
  end
  object Notas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from ProdutosSeriaisNotas '
      'order by Numero, Data, Nota')
    Left = 120
    Top = 270
    object NotasRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object NotasProduto: TIntegerField
      FieldName = 'Produto'
      Origin = 'Produto'
    end
    object NotasNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Size = 25
    end
    object NotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
    end
    object NotasChave_NFe: TStringField
      FieldName = 'Chave_NFe'
      Origin = 'Chave_NFe'
      Size = 44
    end
    object NotasData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object NotasSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
      Origin = 'Saida_Entrada'
    end
    object NotasEmissor: TStringField
      FieldName = 'Emissor'
      Origin = 'Emissor'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 120
    Top = 318
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 656
    Top = 19
  end
end

