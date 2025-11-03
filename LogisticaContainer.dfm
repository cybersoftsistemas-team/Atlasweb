object fLogisticaContainer: TfLogisticaContainer
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
      DataSource = dsContainer
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
      
        'beforeInit=function beforeinti(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'PastaInterna'#39';'#13#10'}')
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
          ClearButton = True
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
      object DBGrid2: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 911
        Hint = ''
        DataSource = dsContainer
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 112
          end
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 120
          end
          item
            FieldName = 'Data_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Width = 65
            Alignment = taCenter
          end
          item
            FieldName = 'Hora_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Hr Entrada'
            Width = 64
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Saida'
            Title.Alignment = taCenter
            Title.Caption = 'Sa'#237'da'
            Width = 65
            Alignment = taCenter
          end
          item
            FieldName = 'Hora_Saida'
            Title.Alignment = taCenter
            Title.Caption = 'Hr Sa'#237'da'
            Width = 55
            Alignment = taCenter
          end
          item
            FieldName = 'Free_Time'
            Title.Alignment = taCenter
            Title.Caption = 'F.Time'
            Width = 42
          end
          item
            FieldName = 'Terminal'
            Title.Alignment = taCenter
            Title.Caption = 'Terminal'
            Width = 175
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
        DesignSize = (
          1278
          936)
        ScrollHeight = 742
        object pFicha: TUniPanel
          Left = 84
          Top = 3
          Width = 733
          Height = 739
          Hint = ''
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
            Left = 14
            Top = 13
            Width = 160
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsContainer
            TabOrder = 1
            FieldLabel = 'Container N'#186
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cHora_Entrada: TUniDBEdit
            Left = 126
            Top = 213
            Width = 65
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Hora_Entrada'
            DataSource = dsContainer
            MaxLength = 5
            TabOrder = 2
            FieldLabel = 'Hora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cHora_Saida: TUniDBEdit
            Left = 126
            Top = 263
            Width = 65
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Hora_Saida'
            DataSource = dsContainer
            MaxLength = 5
            TabOrder = 3
            FieldLabel = 'Hora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cFree_Time: TUniDBEdit
            Left = 14
            Top = 164
            Width = 101
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Free_Time'
            DataSource = dsContainer
            TabOrder = 4
            FieldLabel = 'Free Time (Dias)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cTipo: TUniDBEdit
            Left = 180
            Top = 13
            Width = 299
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsContainer
            TabOrder = 5
            FieldLabel = 'Tipo Container'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cTamanho: TUniDBEdit
            Left = 487
            Top = 13
            Width = 98
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Tamanho'
            DataSource = dsContainer
            TabOrder = 6
            FieldLabel = 'Tamanho'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cArmador: TUniDBEdit
            Left = 180
            Top = 63
            Width = 299
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Armador'
            DataSource = dsContainer
            TabOrder = 7
            FieldLabel = 'Armador'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object clArmazem: TUniDBLookupComboBox
            Left = 199
            Top = 213
            Width = 327
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome; CNPJ'
            ListSource = dsArmazens
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Armazem'
            DataSource = dsContainer
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Armaz'#233'm'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cDocumento_Carga: TUniDBEdit
            Left = 280
            Top = 114
            Width = 199
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Carga'
            DataSource = dsContainer
            TabOrder = 9
            FieldLabel = 'Conh.Embarque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cTerminal: TUniDBEdit
            Left = 14
            Top = 114
            Width = 260
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Terminal'
            DataSource = dsContainer
            TabOrder = 10
            FieldLabel = 'Terminal'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cHora_Entrega: TUniDBEdit
            Left = 126
            Top = 313
            Width = 65
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Hora_Entrega'
            DataSource = dsContainer
            MaxLength = 5
            TabOrder = 11
            FieldLabel = 'Hora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object clTransportadora_Entrada: TUniDBLookupComboBox
            Left = 199
            Top = 263
            Width = 327
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome; CNPJ'
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Transportadora_Entrada'
            DataSource = dsContainer
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Transportadora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object clTransportadora_Saida: TUniDBLookupComboBox
            Left = 199
            Top = 314
            Width = 327
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome; CNPJ'
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Transportadora_Saida'
            DataSource = dsContainer
            AnyMatch = True
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Transportadora'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cTipo_Embarque: TUniDBComboBox
            Left = 14
            Top = 62
            Width = 161
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Embarque'
            DataSource = dsContainer
            Style = csDropDownList
            Items.Strings = (
              'A'#201'REO'
              'FCL'
              'LCL - INTEGRAL'
              'LCL - PARTE'
              'MAR'#205'TIMO'
              'OUTROS')
            Sorted = True
            TabOrder = 14
            FieldLabel = 'Tipo Embarque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cDemurrage: TUniFormattedNumberEdit
            Left = 15
            Top = 460
            Width = 101
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            TabOrder = 15
            FieldLabel = 'Demurrage'
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalME: TUniFormattedNumberEdit
            Left = 213
            Top = 460
            Width = 121
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            TabOrder = 16
            FieldLabel = 'Total (ME)'
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalReal: TUniFormattedNumberEdit
            Left = 340
            Top = 460
            Width = 122
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            TabOrder = 17
            FieldLabel = 'Total (Real)'
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTaxa: TUniFormattedNumberEdit
            Left = 121
            Top = 460
            Width = 85
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            TabOrder = 18
            FieldLabel = 'Taxa'
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cMemo_Processos: TUniDBMemo
            Left = 15
            Top = 504
            Width = 690
            Height = 104
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Processos'
            DataSource = dsContainer
            TabOrder = 19
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cValor_Demurrage: TUniDBEdit
            Left = 14
            Top = 410
            Width = 101
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Demurrage'
            DataSource = dsContainer
            TabOrder = 20
            FieldLabel = 'Valor Demurrage'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cObservacao: TUniDBMemo
            Left = 14
            Top = 614
            Width = 690
            Height = 105
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsContainer
            TabOrder = 21
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cData_Entrada: TUniDBDateTimePicker
            Left = 14
            Top = 213
            Width = 101
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Entrada'
            DataSource = dsContainer
            DateTime = 45083.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 22
            FieldLabel = 'Entrada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Saida: TUniDBDateTimePicker
            Left = 14
            Top = 262
            Width = 101
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Data_Saida'
            DataSource = dsContainer
            DateTime = 45083.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 23
            FieldLabel = 'Previs'#227'o Sa'#237'da'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Entrega: TUniDBDateTimePicker
            Left = 14
            Top = 311
            Width = 101
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Entrega'
            DataSource = dsContainer
            DateTime = 45083.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 24
            FieldLabel = 'Entrega'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Pagamento: TUniDBDateTimePicker
            Left = 14
            Top = 360
            Width = 101
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Pagamento'
            DataSource = dsContainer
            DateTime = 45083.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 25
            FieldLabel = 'Pagamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object tPesquisa: TFDQuery
    Left = 376
    Top = 8
  end
  object Armazens: TFDQuery
    SQL.Strings = (
      'SELECT * FROM Fornecedores '
      
        'WHERE (SELECT Modulo_Container FROM RamoAtividade WHERE(Codigo =' +
        ' Ramo_Atividade) AND (Descricao LIKE '#39'%ARM%'#39')) = 1 ')
    Left = 408
    Top = 8
    object ArmazensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ArmazensNome: TStringField
      DisplayWidth = 50
      FieldName = 'Nome'
      Size = 60
    end
    object ArmazensCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
  end
  object dsArmazens: TDataSource
    DataSet = Armazens
    Left = 440
    Top = 8
  end
  object tContainer: TFDQuery
    Left = 344
    Top = 8
  end
  object Container: TFDQuery
    BeforePost = ContainerBeforePost
    BeforeDelete = ContainerBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Container')
    Left = 34
    Top = 86
  end
  object dsContainer: TDataSource
    DataSet = Container
    Left = 34
    Top = 142
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 520
    Top = 4
  end
end

