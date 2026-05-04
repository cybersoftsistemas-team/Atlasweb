object fDespRegistroDUIMP: TfDespRegistroDUIMP
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
      DataSource = dsDUIMP
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
    object UniButton1: TUniButton
      Left = 648
      Top = 2
      Width = 91
      Height = 30
      Hint = ''
      Caption = 'Buscar CE'
      TabOrder = 8
      OnClick = UniButton1Click
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1288
    Height = 966
    Hint = ''
    ActivePage = tDadosDI
    Align = alClient
    TabOrder = 0
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
        TabOrder = 0
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
          BorderStyle = ubsInset
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
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 911
        Hint = ''
        DataSource = dsDUIMP
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 80
            Alignment = taCenter
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 122
          end
          item
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' DI'
            Width = 90
            Alignment = taCenter
          end
          item
            FieldName = 'Qtde_Adicao'
            Title.Alignment = taCenter
            Title.Caption = 'Adi'#231#245'es'
            Width = 57
          end
          item
            FieldName = 'Tipo_DeclaracaoDesc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 148
          end
          item
            FieldName = 'Modalidade_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Width = 167
          end
          item
            FieldName = 'Pais_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Proced'#234'ncia'
            Width = 234
          end
          item
            FieldName = 'Situacao'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Width = 115
          end>
      end
    end
    object tDadosDI: TUniTabSheet
      Hint = ''
      Caption = 'Dados da DUIMP'
      object Label5: TUniLabel
        Left = 8
        Top = 104
        Width = 3
        Height = 13
        Hint = ''
        Caption = ''
        TabOrder = 0
      end
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
        TabOrder = 1
        DesignSize = (
          1278
          936)
        ScrollHeight = 497
        ScrollWidth = 167
        object UniPanel1: TUniPanel
          Left = 167
          Top = 32
          Width = 937
          Height = 465
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
          object cDUIMP: TUniDBEdit
            Left = 18
            Top = 44
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'DUIMP'
            DataSource = dsDUIMP
            MaxLength = 12
            TabOrder = 1
            FieldLabel = 'DUIMP N'#186
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cFUNDAP: TUniDBCheckBox
            Left = 366
            Top = 17
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'FUNDAP'
            DataSource = dsDUIMP
            Caption = 'FUNDAP'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cMultimodal: TUniDBCheckBox
            Left = 458
            Top = 17
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Multimodal'
            DataSource = dsDUIMP
            Caption = 'Multimodal'
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData: TUniDBDateTimePicker
            Left = 18
            Top = 71
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data'
            DataSource = dsDUIMP
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            BorderStyle = ubsInset
            FieldLabel = 'Data'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
          end
          object cURF_Entrega: TUniDBLookupComboBox
            Left = 18
            Top = 314
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsURF
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'URF_Entrega'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'URF de Entrega'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cURF_Despacho: TUniDBLookupComboBox
            Left = 18
            Top = 287
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsURF
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'URF_Despacho'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'URF de Despacho'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clModalidade_Importacao: TUniDBLookupComboBox
            Left = 18
            Top = 125
            Width = 420
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalidadeImp
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Modalidade_Importacao'
            DataSource = dsDUIMP
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Modalidade de Importa'#231#227'o'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
          end
          object cConsignatario: TUniDBLookupComboBox
            Left = 18
            Top = 368
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsDestinatarios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Consignatario'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Consignat'#225'rio'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cPais_Procedencia: TUniDBLookupComboBox
            Left = 18
            Top = 395
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsPaises
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Pais_Procedencia'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Pa'#237's Proced'#234'ncia Carga'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 18
            Top = 98
            Width = 420
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessosImp
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Processo'
            DataSource = dsDUIMP
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            OnExit = cProcessoExit
          end
          object cMotivo_AdmissaoTemp: TUniDBLookupComboBox
            Left = 18
            Top = 179
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsMotivoAdm
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Motivo_AdmissaoTemp'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Motivo Adm.Temporaria'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_Pagamento: TUniDBRadioGroup
            Left = 599
            Top = 10
            Width = 271
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Pagamento'
            DataSource = dsDUIMP
            Caption = 'Pagamento dos Tributos'
            TabOrder = 12
            Items.Strings = (
              'D'#233'bito em conta'
              'DARF')
            Columns = 2
            Values.Strings = (
              '1'
              '2')
          end
          object cTipo_Declaracao: TUniDBLookupComboBox
            Left = 18
            Top = 152
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTiposDeclaracao
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_Declaracao'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Tipo de Declara'#231#227'o'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_Importador: TUniDBLookupComboBox
            Left = 18
            Top = 233
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoImportador
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_Importador'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Tipo de Importador'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cModalidade_Despacho: TUniDBLookupComboBox
            Left = 18
            Top = 260
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalidadesDespacho
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Modalidade_Despacho'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'Modalidade de Despacho'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cBanco: TUniDBLookupComboBox
            Left = 18
            Top = 422
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Conta;Nome'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Banco'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 16
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
          end
          object UniDBEdit1: TUniDBEdit
            Left = 18
            Top = 17
            Width = 300
            Height = 25
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Registro'
            DataSource = dsDUIMP
            MaxLength = 12
            TabOrder = 17
            FieldLabel = 'Registro'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
            OnChangeValue = UniDBEdit1ChangeValue
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 18
            Top = 341
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsDestinatarios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Adquirente'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 18
            Color = clWindow
            FieldLabel = 'Adquirente'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 18
            Top = 206
            Width = 900
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsMotivoSit
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Motivo_SitEspecial'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 19
            Color = clWindow
            FieldLabel = 'MotivoSitua'#231#227'o Especial'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
        object UniNumberEdit1: TUniNumberEdit
          Left = 46
          Top = 158
          Width = 121
          Hint = ''
          TabOrder = 1
          DecimalSeparator = ','
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Carga'
      object uniScrollBox3: TUniScrollBox
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
        ScrollHeight = 677
        object UniPanel2: TUniPanel
          Left = 269
          Top = 32
          Width = 887
          Height = 645
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
          object cNumero_Veiculo: TUniDBEdit
            Left = 480
            Top = 39
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero_Veiculo'
            DataSource = dsDUIMP
            TabOrder = 1
            FieldLabel = 'N'#250'mero Ve'#237'culo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cNomeVei: TUniDBComboBox
            Left = 15
            Top = 39
            Width = 450
            Height = 24
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Veiculo'
            DataSource = dsDUIMP
            Sorted = True
            TabOrder = 2
            FieldLabel = 'Nome Ve'#237'culo'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cNomeAgente: TUniDBComboBox
            Left = 15
            Top = 66
            Width = 450
            Height = 24
            Hint = ''
            ShowHint = True
            DataField = 'Agente_Transportador'
            DataSource = dsDUIMP
            Sorted = True
            TabOrder = 3
            FieldLabel = 'Agente Transportador'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cData_Embarque: TUniDBDateTimePicker
            Left = 480
            Top = 93
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Embarque'
            DataSource = dsDUIMP
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            BorderStyle = ubsInset
            FieldLabel = 'Data de Embarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cAgente_Numero: TUniDBEdit
            Left = 480
            Top = 66
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Agente_Numero'
            DataSource = dsDUIMP
            TabOrder = 5
            FieldLabel = 'Agente Numero'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDocumento_Chegada: TUniDBEdit
            Left = 15
            Top = 174
            Width = 450
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Chegada'
            DataSource = dsDUIMP
            TabOrder = 6
            FieldLabel = 'Doc.Chegada N'#186
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cTipoConhecimento: TUniDBLookupComboBox
            Left = 15
            Top = 120
            Width = 450
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoConhecimento
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_Conhecimento'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Tipo Conhecimento Carga'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cNumero_Manifesto: TUniDBEdit
            Left = 480
            Top = 201
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero_Manifesto'
            DataSource = dsDUIMP
            TabOrder = 8
            FieldLabel = 'N'#186' do Manifesto'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cData_Chegada: TUniDBDateTimePicker
            Left = 480
            Top = 174
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Chegada'
            DataSource = dsDUIMP
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 9
            BorderStyle = ubsInset
            FieldLabel = 'Data de Chegada'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cLocalEmb: TUniDBComboBox
            Left = 15
            Top = 93
            Width = 450
            Height = 24
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsDUIMP
            Sorted = True
            TabOrder = 10
            FieldLabel = 'Local de Embarque'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cNumero_DocCargaMaster: TUniDBEdit
            Left = 480
            Top = 147
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero_DocCargaMaster'
            DataSource = dsDUIMP
            TabOrder = 11
            FieldLabel = 'N'#186' Doc.de Carga (Master)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cNumero_DocCarga: TUniDBEdit
            Left = 15
            Top = 147
            Width = 450
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero_DocCarga'
            DataSource = dsDUIMP
            TabOrder = 12
            FieldLabel = 'N'#186' Doc.de Carga'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cVia_Transporte: TUniDBLookupComboBox
            Left = 15
            Top = 12
            Width = 450
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsViaTransporte
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Via_Transporte'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Via de Transporte'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_DocCarga: TUniDBLookupComboBox
            Left = 480
            Top = 120
            Width = 390
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsDocumentoCarga
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_DocCarga'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Documento Carga'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cFrete_PrePaid: TUniDBEdit
            Left = 15
            Top = 336
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Frete_PrePaid'
            DataSource = dsDUIMP
            TabOrder = 15
            FieldLabel = 'Valor do Frete Prepaid'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cFrete_Collect: TUniDBEdit
            Left = 15
            Top = 363
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Frete_Collect'
            DataSource = dsDUIMP
            TabOrder = 16
            FieldLabel = 'Valor do Frete Collect'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cSeguro_Real: TUniDBEdit
            Left = 15
            Top = 498
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Seguro_Real'
            DataSource = dsDUIMP
            TabOrder = 17
            FieldLabel = 'Segure em Real'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cRecinto_Aduaneiro: TUniDBLookupComboBox
            Left = 15
            Top = 228
            Width = 855
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsRecintoAduaneiro
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Recinto_Aduaneiro'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 18
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Recinto Aduaneiro'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnChange = cRecinto_AduaneiroChange
          end
          object cMoedaFrete: TUniDBLookupComboBox
            Left = 15
            Top = 282
            Width = 855
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Pais'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Moeda_Frete'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 19
            Color = clWindow
            FieldLabel = 'Moeda do Frete'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csDropDown
          end
          object cMoedaSeguro: TUniDBLookupComboBox
            Left = 15
            Top = 444
            Width = 855
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome;Simbolo;Pais'
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Moeda_Seguro'
            DataSource = dsDUIMP
            TabOrder = 20
            Color = clWindow
            FieldLabel = 'Moeda do Seguro'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cFrete_Real: TUniDBEdit
            Left = 15
            Top = 390
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Frete_Real'
            DataSource = dsDUIMP
            TabOrder = 21
            FieldLabel = 'Frete em Real'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cRecinto_AduaneiroSetor: TUniDBLookupComboBox
            Left = 15
            Top = 255
            Width = 855
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Setor;Descricao'
            ListSource = dsRecintoSetor
            KeyField = 'Setor'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Recinto_AduaneiroSetor'
            DataSource = dsDUIMP
            TabOrder = 22
            Color = clWindow
            FieldLabel = 'Recinto Aduaneiro (Setor)'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cVolumes_Embalagem: TUniDBEdit
            Left = 15
            Top = 579
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Volumes_Embalagem'
            DataSource = dsDUIMP
            TabOrder = 23
            FieldLabel = 'Qtde Volumes'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cFrete_TerritorioNac: TUniDBEdit
            Left = 15
            Top = 417
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Frete_TerritorioNac'
            DataSource = dsDUIMP
            TabOrder = 24
            FieldLabel = 'Frete Territ'#243'rio Nacional'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cSeguro_ME: TUniDBEdit
            Left = 15
            Top = 471
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Seguro_ME'
            DataSource = dsDUIMP
            TabOrder = 25
            FieldLabel = 'Valor do Seguro'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cLocal_Embarque: TUniDBComboBox
            Left = 15
            Top = 309
            Width = 855
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsDUIMP
            Sorted = True
            TabOrder = 26
            FieldLabel = 'Local de Embarque'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cEmbalagem: TUniDBLookupComboBox
            Left = 15
            Top = 606
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Tipo_Embalagem'
            DataSource = dsDUIMP
            TabOrder = 27
            Color = clWindow
            FieldLabel = 'Tipo de Embalagem'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cPeso_Liquido: TUniDBEdit
            Left = 15
            Top = 525
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Liquido'
            DataSource = dsDUIMP
            TabOrder = 28
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cPeso_Bruto: TUniDBEdit
            Left = 15
            Top = 552
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Bruto'
            DataSource = dsDUIMP
            TabOrder = 29
            FieldLabel = 'Peso Bruto'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 15
            Top = 201
            Width = 450
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoManifesto
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_Manifesto'
            DataSource = dsDUIMP
            AnyMatch = True
            TabOrder = 30
            Color = clWindow
            FieldLabel = 'Tipo de Manifesto'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Acr'#233'scimos'
      object UniScrollBox5: TUniScrollBox
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
        ScrollHeight = 619
        object UniPanel8: TUniPanel
          Left = 340
          Top = 12
          Width = 613
          Height = 607
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
          object gAcrescimos: TUniDBGrid
            Left = 12
            Top = 185
            Width = 588
            Height = 200
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            DataSource = dsDUIMPAcrescimo
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.CustomizableCells = False
            LoadMask.Message = 'Loading data...'
            NumericEditorPrecision = 2
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Acr'#233'scimo'
                Title.Font.Style = [fsBold]
                Width = 370
                ForceStringFormat = True
                ReadOnly = True
              end
              item
                FieldName = 'Valor_ME'
                Title.Alignment = taCenter
                Title.Caption = 'Valor (ME)'
                Title.Color = clNone
                Title.Font.Style = [fsBold]
                Width = 100
                ReadOnly = True
              end
              item
                FieldName = 'Valor_Real'
                Title.Alignment = taCenter
                Title.Caption = 'Valor (Real)'
                Title.Font.Style = [fsBold]
                Width = 100
                ReadOnly = True
              end>
          end
          object pTributo: TUniContainerPanel
            Left = 13
            Top = 15
            Width = 586
            Height = 113
            Hint = ''
            ShowHint = True
            ParentColor = False
            Color = clNone
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 2
            object cAcrescimo: TUniDBLookupComboBox
              Left = 2
              Top = 2
              Width = 576
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsAcrescimos
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Codigo'
              DataSource = dsDUIMPAcrescimo
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Acr'#233'scimo'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cMoedaAcrescimo: TUniDBLookupComboBox
              Left = 2
              Top = 29
              Width = 576
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsMoedas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Moeda'
              DataSource = dsDUIMPAcrescimo
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Moeda Negociada'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cValorAcrescimoME: TUniDBFormattedNumberEdit
              Left = 2
              Top = 56
              Width = 283
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_ME'
              DataSource = dsDUIMPAcrescimo
              TabOrder = 3
              FieldLabel = 'Valor na Moeda Negociada'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValorAcrescimoReal: TUniDBFormattedNumberEdit
              Left = 2
              Top = 83
              Width = 283
              Height = 25
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Valor_Real'
              DataSource = dsDUIMPAcrescimo
              TabOrder = 4
              FieldLabel = 'Valor em Real'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
          end
          object UniContainerPanel1: TUniContainerPanel
            Left = 13
            Top = 142
            Width = 587
            Height = 35
            Hint = ''
            ShowHint = True
            ParentColor = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 3
            object UniPanel9: TUniPanel
              Left = 0
              Top = 0
              Width = 587
              Height = 35
              Hint = ''
              ShowHint = True
              Align = alClient
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                  ' = '#39'Pasta'#39';'#13#10'}')
              BorderStyle = ubsNone
              Background.Fit = True
              Caption = ''
              Color = 5526569
              object bNavegaTrib: TUniDBNavigator
                Left = 0
                Top = 0
                Width = 144
                Height = 35
                Cursor = crHandPoint
                Hint = ''
                ShowHint = True
                DataSource = dsDUIMPAcrescimo
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                IconSet = icsFontAwesome
                Align = alLeft
                TabOrder = 1
              end
              object bAddTrib: TUniSpeedButton
                Left = 144
                Top = 0
                Width = 41
                Height = 35
                Hint = 'Adicionar novo registro.'
                ShowHint = True
                Caption = ''
                Align = alLeft
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 0
                TabOrder = 2
                OnClick = bAddTribClick
              end
              object bEditTrib: TUniSpeedButton
                Left = 185
                Top = 0
                Width = 41
                Height = 35
                Hint = 'Editar registro corrente.'
                ShowHint = True
                Caption = ''
                Align = alLeft
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 1
                TabOrder = 3
              end
              object bExcTrib: TUniSpeedButton
                Left = 226
                Top = 0
                Width = 41
                Height = 35
                Hint = 'Excluir registro corrente.'
                ShowHint = True
                Caption = ''
                Align = alLeft
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 2
                TabOrder = 4
              end
              object bCancTrib: TUniSpeedButton
                Left = 267
                Top = 0
                Width = 41
                Height = 35
                Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
                ShowHint = True
                Caption = ''
                Align = alLeft
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 3
                TabOrder = 6
              end
              object bGravTrib: TUniSpeedButton
                Left = 308
                Top = 0
                Width = 41
                Height = 35
                Hint = 'Salva o registro corrente.'
                ShowHint = True
                Caption = ''
                Align = alLeft
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 4
                TabOrder = 5
                OnClick = bGravTribClick
              end
            end
          end
          object gTotalAcre: TUniDBGrid
            Left = 12
            Top = 390
            Width = 588
            Height = 200
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            DataSource = dsTotalAcr
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.CustomizableCells = False
            LoadMask.Message = 'Loading data...'
            NumericEditorPrecision = 2
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            TabOrder = 4
            Columns = <
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Moeda'
                Title.Font.Style = [fsBold]
                Width = 370
                ReadOnly = True
              end
              item
                FieldName = 'TotalME'
                Title.Alignment = taCenter
                Title.Caption = 'Total (ME)'
                Title.Font.Style = [fsBold]
                Width = 100
                ReadOnly = True
              end
              item
                FieldName = 'TotalReal'
                Title.Alignment = taCenter
                Title.Caption = 'Total (Real)'
                Title.Color = clNone
                Title.Font.Style = [fsBold]
                Width = 100
                ReadOnly = True
              end>
          end
        end
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Adi'#231#245'es'
      object UniScrollBox4: TUniScrollBox
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
        ScrollHeight = 515
        object UniPanel3: TUniPanel
          Left = 202
          Top = 26
          Width = 765
          Height = 489
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
          object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
            Left = 15
            Top = 18
            Width = 210
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Total_MercadoriaME'
            DataSource = dsDUIMP
            TabOrder = 1
            FieldLabel = 'Valor Total (VMLE)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'XML da DUIMP'
      object Memo: TUniMemo
        Left = 0
        Top = 0
        Width = 1280
        Height = 938
        Hint = ''
        ScrollBars = ssBoth
        Lines.Strings = (
          'Memo')
        Align = alClient
        TabOrder = 0
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Retorno CE'
      object UniScrollBox2: TUniScrollBox
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
        ScrollHeight = 645
        object pFicha: TUniPanel
          Left = 61
          Top = 12
          Width = 1189
          Height = 633
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
          object UniMemo1: TUniMemo
            AlignWithMargins = True
            Left = 8
            Top = 8
            Width = 1173
            Height = 617
            Hint = ''
            Margins.Left = 8
            Margins.Top = 8
            Margins.Right = 8
            Margins.Bottom = 8
            ShowHint = True
            BorderStyle = ubsInset
            ScrollBars = ssBoth
            Lines.Strings = (
              'UniMemo1')
            ParentFont = False
            Font.Height = -13
            Font.Name = 'JetBrains Mono'
            Align = alClient
            TabOrder = 1
            WordWrap = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoEspecial'#39';'#13#10'}')
          end
        end
      end
    end
  end
  object tReg: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 52
    Top = 178
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 164
    Top = 82
  end
  object DUIMP: TFDQuery
    BeforePost = DUIMPBeforePost
    BeforeDelete = DUIMPBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from DUIMP')
    Left = 52
    Top = 82
  end
  object dsDUIMP: TDataSource
    DataSet = DUIMP
    Left = 52
    Top = 130
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
  object MotivoAdm: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from MotivoAdmissaoTemp')
    Left = 52
    Top = 232
  end
  object dsMotivoAdm: TDataSource
    DataSet = MotivoAdm
    Left = 52
    Top = 282
  end
  object ModalidadeImp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ModalidadeImp')
    Left = 164
    Top = 130
  end
  object dsModalidadeImp: TDataSource
    DataSet = ModalidadeImp
    Left = 164
    Top = 178
  end
  object TiposDeclaracao: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from TiposDeclaracao')
    Left = 52
    Top = 330
  end
  object dsTiposDeclaracao: TDataSource
    DataSet = TiposDeclaracao
    Left = 52
    Top = 377
  end
  object ProcessosImp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo from ProcessosImp')
    Left = 164
    Top = 232
  end
  object dsProcessosImp: TDataSource
    DataSet = ProcessosImp
    Left = 164
    Top = 282
  end
  object TipoImportador: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from TiposDeclaracao')
    Left = 52
    Top = 425
  end
  object dsTipoImportador: TDataSource
    DataSet = TipoImportador
    Left = 52
    Top = 472
  end
  object ModalidadesDespacho: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ModalidadesDespacho')
    Left = 164
    Top = 330
  end
  object dsModalidadesDespacho: TDataSource
    DataSet = ModalidadesDespacho
    Left = 164
    Top = 377
  end
  object URF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from LocalDesembaraco')
    Left = 164
    Top = 426
  end
  object dsURF: TDataSource
    DataSet = URF
    Left = 164
    Top = 473
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      'from Destinatarios'
      'where Cliente = 1')
    Left = 52
    Top = 525
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 52
    Top = 572
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Paises')
    Left = 164
    Top = 527
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 164
    Top = 574
  end
  object ViaTransporte: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ViaTransporte')
    Left = 52
    Top = 620
  end
  object dsViaTransporte: TDataSource
    DataSet = ViaTransporte
    Left = 52
    Top = 667
  end
  object DocumentoCarga: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from DocumentoCarga')
    Left = 164
    Top = 623
  end
  object dsDocumentoCarga: TDataSource
    DataSet = DocumentoCarga
    Left = 164
    Top = 670
  end
  object TipoConhecimento: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from TipoConhecimento')
    Left = 52
    Top = 717
  end
  object dsTipoConhecimento: TDataSource
    DataSet = TipoConhecimento
    Left = 52
    Top = 764
  end
  object TipoManifesto: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from TipoManifesto'
      '')
    Left = 161
    Top = 722
  end
  object dsTipoManifesto: TDataSource
    DataSet = TipoManifesto
    Left = 161
    Top = 769
  end
  object RecintoAduaneiro: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from RecintoAduaneiro')
    Left = 266
    Top = 82
  end
  object dsRecintoAduaneiro: TDataSource
    DataSet = RecintoAduaneiro
    Left = 266
    Top = 130
  end
  object RecintoSetor: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from OrgaosSRF')
    Left = 267
    Top = 178
  end
  object dsRecintoSetor: TDataSource
    DataSet = RecintoSetor
    Left = 267
    Top = 232
  end
  object Bancos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome, Conta from Bancos')
    Left = 265
    Top = 282
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 265
    Top = 330
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Moedas')
    Left = 265
    Top = 379
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 265
    Top = 427
  end
  object DUIMPAcrescimo: TFDQuery
    MasterSource = dsDUIMP
    MasterFields = 'Empresa;DUIMP'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        'select *, Descricao = cast('#39#39' as varchar(60)) from DUIMPAcrescim' +
        'o')
    Left = 264
    Top = 477
    object DUIMPAcrescimoRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object DUIMPAcrescimoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object DUIMPAcrescimoRegistro_DI: TIntegerField
      FieldName = 'Registro_DI'
      Origin = 'Registro_DI'
      Required = True
    end
    object DUIMPAcrescimoDI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Size = 10
    end
    object DUIMPAcrescimoCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'Codigo'
    end
    object DUIMPAcrescimoValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      Origin = 'Valor_ME'
      DisplayFormat = ',##0.00'
    end
    object DUIMPAcrescimoMoeda: TIntegerField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object DUIMPAcrescimoValor_Real: TCurrencyField
      FieldName = 'Valor_Real'
      Origin = 'Valor_Real'
      DisplayFormat = ',##0.00'
    end
    object DUIMPAcrescimoDescricao: TStringField
      DisplayWidth = 60
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ReadOnly = True
      Size = 60
    end
  end
  object dsDUIMPAcrescimo: TDataSource
    DataSet = DUIMPAcrescimo
    Left = 264
    Top = 525
  end
  object dsAcrescimos: TDataSource
    DataSet = Acrescimos
    Left = 263
    Top = 625
  end
  object Acrescimos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Acrescimos')
    Left = 263
    Top = 577
  end
  object TotalAcr: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select dia.Moeda'
      '      ,Descricao = cast('#39#39' as varchar(60))'
      '      ,TotalME   = sum(isnull(dia.Valor_ME, 0))'
      
        '      ,TotalReal = sum(isnull(dia.Valor_ME, 0)) * (select isnull' +
        '(Valor, 1) from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Mo' +
        'eda = dia.Moeda and cot.Data = '#39'08/29/2023'#39')'
      'from DIAcrescimo dia'
      'where DI = '#39'TMP#1'#39
      'group by dia.moeda')
    Left = 264
    Top = 672
    object TotalAcrMoeda: TIntegerField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object TotalAcrTotalME: TCurrencyField
      FieldName = 'TotalME'
      Origin = 'TotalME'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object TotalAcrTotalReal: TFloatField
      FieldName = 'TotalReal'
      Origin = 'TotalReal'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object TotalAcrDescricao: TStringField
      DisplayWidth = 60
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ReadOnly = True
      Size = 60
    end
  end
  object dsTotalAcr: TDataSource
    DataSet = TotalAcr
    Left = 264
    Top = 720
  end
  object MotivoSit: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      'from MotivoSituacao'
      '')
    Left = 262
    Top = 770
  end
  object dsMotivoSit: TDataSource
    DataSet = MotivoSit
    Left = 262
    Top = 818
  end
end
