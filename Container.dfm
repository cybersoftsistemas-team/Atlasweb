object fContainer: TfContainer
  Left = 0
  Top = 0
  Width = 1190
  Height = 935
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1190
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
      Width = 164
      Height = 35
      Hint = ''
      DataSource = dsContainer
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 7
    end
    object bAdicionar: TUniSpeedButton
      Left = 164
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar registro'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 0
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 205
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 1
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 246
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 2
      OnClick = bExcluirClick
    end
    object bGravar: TUniSpeedButton
      Left = 287
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salvar registro'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 3
      OnClick = bGravarClick
    end
    object bCancelar: TUniSpeedButton
      Left = 328
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar altera'#231#245'es'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 4
      OnClick = bCancelarClick
    end
    object bSair: TUniSpeedButton
      Left = 369
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fechar m'#243'dulo'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 6
      OnClick = bSairClick
    end
    object cTravar: TUniCheckBox
      AlignWithMargins = True
      Left = 460
      Top = 6
      Width = 161
      Height = 26
      Hint = ''
      Margins.Left = 50
      Margins.Top = 6
      Caption = 'Travara Dados'
      Align = alLeft
      TabOrder = 8
      OnClick = cTravarClick
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1190
    Height = 900
    Hint = ''
    ActivePage = aFicha
    Align = alClient
    TabOrder = 1
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'BarraPesquisa'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
        object cPesquisa: TUniEdit
          Left = 0
          Top = 0
          Width = 520
          Height = 27
          Hint = ''
          BorderStyle = ubsInset
          Text = ''
          Align = alLeft
          TabOrder = 2
          EmptyText = 'Container / Processo / Documento de carga'
          ClearButton = True
          OnKeyDown = cPesquisaKeyDown
        end
        object bPesquisa: TUniSpeedButton
          Left = 520
          Top = 0
          Width = 25
          Height = 27
          Hint = 'Pesquisar registro'
          Caption = ''
          Align = alLeft
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 10
          TabOrder = 0
          OnClick = bPesquisaClick
        end
      end
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1182
        Height = 845
        Hint = ''
        DataSource = dsContainer
        ReadOnly = True
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
      end
    end
    object aFicha: TUniTabSheet
      Hint = ''
      Caption = 'Ficha'
      object Panel1: TUniPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 872
        Hint = ''
        AutoScroll = True
        Align = alClient
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        Caption = ''
        DesignSize = (
          1182
          872)
        ScrollHeight = 872
        ScrollWidth = 1182
        object pFicha: TUniPanel
          Left = 121
          Top = 26
          Width = 509
          Height = 726
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'Dados do Container'
          Caption = ''
          object cProcesso: TUniDBLookupComboBox
            Left = 21
            Top = 45
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Processo'
            DataSource = dsContainer
            TabOrder = 0
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnChange = cProcessoChange
          end
          object cNumero: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 183
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsContainer
            TabOrder = 1
            FieldLabel = 'N'#186' container'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnChange = cNumeroChange
          end
          object cTipoEmbarque: TUniDBComboBox
            Tag = 1
            Left = 21
            Top = 72
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Embarque'
            DataSource = dsContainer
            Items.Strings = (
              'A'#201'REO'
              'FCL'
              'LCL - INTEGRAL'
              'LCL - PARTE'
              'MAR'#205'TIMO'
              'OUTROS')
            TabOrder = 2
            FieldLabel = 'Tipo embarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
            OnExit = cTipoEmbarqueExit
          end
          object cConhecimento: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 318
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Conhecimento_Embarque'
            DataSource = dsContainer
            TabOrder = 3
            FieldLabel = 'Documento carga'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cTipo: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 210
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsContainer
            TabOrder = 4
            FieldLabel = 'Tipo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cTamanho: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 237
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Tamanho'
            DataSource = dsContainer
            TabOrder = 5
            FieldLabel = 'Tamanho'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cArmador: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 264
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Armador'
            DataSource = dsContainer
            TabOrder = 6
            FieldLabel = 'Armador'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cTerminal: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 291
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Terminal'
            DataSource = dsContainer
            TabOrder = 7
            FieldLabel = 'Terminal'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cData_Entrada: TUniDBDateTimePicker
            Tag = 1
            Left = 21
            Top = 399
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Entrada'
            DataSource = dsContainer
            DateTime = 46307.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 8
            BorderStyle = ubsInset
            FieldLabel = 'Data entrada'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cFreeTimeExit
          end
          object cHora_Entrada: TUniDBEdit
            Tag = 1
            Left = 287
            Top = 399
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Hora_Entrada'
            DataSource = dsContainer
            TabOrder = 9
            InputType = 'time'
            FieldLabel = 'Hora entrada'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnExit = cHora_EntradaExit
          end
          object cPrevisao_SaidaData: TUniDBDateTimePicker
            Left = 21
            Top = 453
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Previsao_SaidaData'
            DataSource = dsContainer
            DateTime = 46307.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 10
            BorderStyle = ubsInset
            FieldLabel = 'Data sa'#237'da'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cHora_Saida: TUniDBEdit
            Left = 287
            Top = 453
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Previsao_SaidaHora'
            DataSource = dsContainer
            TabOrder = 11
            InputType = 'time'
            FieldLabel = 'Hora sa'#237'da'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cFreeTime: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 372
            Width = 182
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Free_Time'
            DataSource = dsContainer
            TabOrder = 12
            FieldLabel = 'Free time'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnExit = cFreeTimeExit
          end
          object cValorDemurrage: TUniDBEdit
            Tag = 1
            Left = 21
            Top = 561
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Demurrage'
            DataSource = dsContainer
            TabOrder = 13
            FieldLabel = 'Valor demurrage'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnChange = cValorDemurrageChange
          end
          object cTaxa: TUniDBEdit
            Left = 287
            Top = 588
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Taxa'
            DataSource = dsContainer
            TabOrder = 14
            FieldLabel = 'Taxa'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnChange = cValorDemurrageChange
          end
          object cArmazem: TUniDBLookupComboBox
            Tag = 1
            Left = 21
            Top = 345
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsArmazens
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Armazem'
            DataSource = dsContainer
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'Armaz'#233'm'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBLookupComboBox3: TUniDBLookupComboBox
            Left = 21
            Top = 426
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsTransportadores
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Transportadora_Entrada'
            DataSource = dsContainer
            TabOrder = 16
            Color = clWindow
            FieldLabel = 'Transportadora entrada'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cTransportadora_Entrega: TUniDBLookupComboBox
            Left = 21
            Top = 507
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsTransportadores
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Transportadora_Entrega'
            DataSource = dsContainer
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'Transportadora sa'#237'da'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cDataEntrega: TUniDBDateTimePicker
            Left = 21
            Top = 480
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Entrega'
            DataSource = dsContainer
            DateTime = 46307.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 18
            BorderStyle = ubsInset
            FieldLabel = 'Data entrega'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cDataEntregaExit
          end
          object cHora_Entrega: TUniDBEdit
            Left = 287
            Top = 480
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Hora_Entrega'
            DataSource = dsContainer
            TabOrder = 19
            InputType = 'time'
            FieldLabel = 'Hora entrega'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cData_Pagamento: TUniDBDateTimePicker
            Left = 21
            Top = 534
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Pagamento'
            DataSource = dsContainer
            DateTime = 46307.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 20
            BorderStyle = ubsInset
            FieldLabel = 'Data pagamento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cObservacao: TUniDBMemo
            Left = 21
            Top = 642
            Width = 466
            Height = 64
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsContainer
            BorderStyle = ubsInset
            TabOrder = 21
            FieldLabel = 'Observa'#231#245'es'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cMemoProcessos: TUniDBMemo
            Left = 21
            Top = 126
            Width = 466
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processos_Adicionais'
            DataSource = dsContainer
            BorderStyle = ubsInset
            TabOrder = 22
            FieldLabel = 'Processos adicionais'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cAdicionarProcesso: TUniComboBox
            Left = 21
            Top = 99
            Width = 438
            Height = 25
            Hint = ''
            ShowHint = True
            Text = ''
            TabOrder = 24
            FieldLabel = 'Adicionar processo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object bAdicionarProcesso: TUniButton
            Left = 462
            Top = 99
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            TabOrder = 25
            IconCls = 'add'
            OnClick = bAdicionarProcessoClick
          end
          object cDemurrage: TUniEdit
            Left = 21
            Top = 588
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Text = ''
            TabOrder = 26
            ReadOnly = True
            FieldLabel = 'Dias de demurrage'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cTotalME: TUniEdit
            Left = 21
            Top = 615
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Text = ''
            TabOrder = 28
            ReadOnly = True
            FieldLabel = 'Total moeda estrangeira'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cTotalReal: TUniEdit
            Left = 287
            Top = 615
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Text = ''
            TabOrder = 27
            ReadOnly = True
            FieldLabel = 'Total em reais'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
          end
          object cEmpresa: TUniDBLookupComboBox
            Tag = 1
            Left = 21
            Top = 18
            Width = 466
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ; Razao_Social;Unidade'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Empresa'
            DataSource = dsContainer
            AnyMatch = True
            TabOrder = 29
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Empresa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnChange = cProcessoChange
          end
        end
      end
    end
  end
  object Alerta: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 118
    Top = 203
  end
  object Container: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Container')
    Left = 47
    Top = 80
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 47
    Top = 183
  end
  object Armazens: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 47
    Top = 288
    object ArmazensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ArmazensNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object ArmazensCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object Transportadores: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 47
    Top = 395
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 118
    Top = 83
  end
  object tContainer: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 118
    Top = 144
  end
  object dsContainer: TDataSource
    DataSet = Container
    Left = 47
    Top = 131
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 47
    Top = 234
  end
  object dsArmazens: TDataSource
    DataSet = Armazens
    Left = 47
    Top = 339
  end
  object dsTransportadores: TDataSource
    DataSet = Transportadores
    Left = 47
    Top = 446
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Razao_Social'
      '      ,CNPJ'
      
        '      ,Unidade = case when isnull(Filial, 0) = 0 then '#39'MATRIZ'#39' e' +
        'lse '#39'FILIAL '#39'+cast(Filial as char(3)) end'
      '      ,Fechamento_Financeiro'
      '      ,Estado'
      'from  Empresas'
      'order by CNPJ, Filial')
    Left = 48
    Top = 496
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 48
    Top = 547
  end
end
