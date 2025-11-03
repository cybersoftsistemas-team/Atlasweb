object fFinSolicitacaoNumerario: TfFinSolicitacaoNumerario
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
      DataSource = dsSolicitacaoNumerario
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
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 75
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
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 911
        Hint = ''
        DataSource = dsSolicitacaoNumerario
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWhite
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'SN N'#186
            Width = 46
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'SN Data'
            Width = 62
            Alignment = taCenter
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 89
          end
          item
            FieldName = 'Centro_Custo'
            Title.Alignment = taCenter
            Title.Caption = 'C.Custo'
            Width = 61
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 99
          end
          item
            FieldName = 'Data_Previsao'
            Title.Alignment = taCenter
            Title.Caption = 'Previs'#227'o'
            Width = 62
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vcto.'
            Width = 62
            Alignment = taCenter
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
        ExplicitLeft = 3
        ExplicitTop = -136
        DesignSize = (
          1278
          936)
        ScrollHeight = 585
        object pFicha: TUniPanel
          Left = 232
          Top = 26
          Width = 513
          Height = 559
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
          object cData: TUniDBEdit
            Left = 106
            Top = 7
            Width = 80
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Data'
            DataSource = dsSolicitacaoNumerario
            TabOrder = 1
            FieldLabel = 'Data'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cData_Previsao: TUniDBDateTimePicker
            Left = 11
            Top = 173
            Width = 123
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Previsao'
            DataSource = dsSolicitacaoNumerario
            DateTime = 44566.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
            BorderStyle = ubsSolid
            FieldLabel = 'Previs'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Vencimento: TUniDBDateTimePicker
            Left = 138
            Top = 173
            Width = 123
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Vencimento'
            DataSource = dsSolicitacaoNumerario
            DateTime = 44566.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 3
            BorderStyle = ubsSolid
            FieldLabel = 'Vencimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cHora_Cadastro: TUniDBEdit
            Left = 192
            Top = 7
            Width = 59
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Hora_Cadastro'
            DataSource = dsSolicitacaoNumerario
            TabOrder = 4
            FieldLabel = 'Hora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object clBanco: TUniDBLookupComboBox
            Left = 11
            Top = 393
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Conta; Nome'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Banco'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object clCentro_Custo: TUniDBLookupComboBox
            Left = 11
            Top = 338
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Centro_Custo'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Centro Custo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object clClassificacao: TUniDBLookupComboBox
            Left = 11
            Top = 283
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome_Financeiro'
            ListSource = dsPlanoFin
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Classificacao'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Classif.Financeira'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object clCliente: TUniDBLookupComboBox
            Left = 11
            Top = 228
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Nome'
            ListSource = dsClientes
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Cliente'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Cliente'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object clDocumento: TUniDBLookupComboBox
            Left = 11
            Top = 117
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsTipoDoc
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Documento'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cNumero: TUniDBEdit
            Left = 11
            Top = 7
            Width = 89
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsSolicitacaoNumerario
            TabOrder = 10
            FieldLabel = 'Solicita'#231#227'o N'#186
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cObservacao: TUniDBMemo
            Left = 11
            Top = 449
            Width = 490
            Height = 88
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsSolicitacaoNumerario
            BorderStyle = ubsSolid
            TabOrder = 11
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 11
            Top = 62
            Width = 490
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Processo; Declaracao'
            ListSource = dsProcesso
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Processo'
            DataSource = dsSolicitacaoNumerario
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'N'#186' Processo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cValor_Total: TUniDBEdit
            Left = 267
            Top = 173
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Total'
            DataSource = dsSolicitacaoNumerario
            TabOrder = 13
            FieldLabel = 'Valor'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object SolicitacaoNumerario: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 63
    Top = 86
  end
  object dsSolicitacaoNumerario: TDataSource
    DataSet = SolicitacaoNumerario
    Left = 63
    Top = 134
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 456
    Top = 4
  end
  object Processos: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 63
    Top = 182
  end
  object dsProcesso: TDataSource
    DataSet = Processos
    Left = 63
    Top = 230
  end
  object dsClientes: TDataSource
    DataSet = Clientes
    Left = 63
    Top = 326
  end
  object Clientes: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 63
    Top = 278
  end
  object dsPlanoFin: TDataSource
    DataSet = PlanoFin
    Left = 63
    Top = 422
  end
  object PlanoFin: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome_Financeiro'
      'from PlanoContas'
      'where isnull (Desativada,0) = 0'
      'order by Nome_Financeiro')
    Left = 63
    Top = 374
  end
  object TipoDoc: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 159
    Top = 278
  end
  object dsTipoDoc: TDataSource
    DataSet = TipoDoc
    Left = 159
    Top = 326
  end
  object CentroCusto: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 159
    Top = 182
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 159
    Top = 230
  end
  object Bancos: TFDQuery
    BeforePost = SolicitacaoNumerarioBeforePost
    BeforeDelete = SolicitacaoNumerarioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from SolicitacaoNumerario')
    Left = 159
    Top = 87
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 159
    Top = 135
  end
end

