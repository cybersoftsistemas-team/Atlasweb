object fDespRegistroDI: TfDespRegistroDI
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
      DataSource = dsDI
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
    ActivePage = UniTabSheet4
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
          Color = clWindow
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
        DataSource = dsDI
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
      Caption = 'Dados da DI'
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
        ScrollHeight = 603
        object UniPanel1: TUniPanel
          Left = 358
          Top = 15
          Width = 688
          Height = 588
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
          object cDI: TUniDBEdit
            Left = 151
            Top = 14
            Width = 122
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'DI'
            DataSource = dsDI
            MaxLength = 12
            TabOrder = 1
            FieldLabel = 'DI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFUNDAP: TUniDBCheckBox
            Left = 543
            Top = 37
            Width = 74
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'FUNDAP'
            DataSource = dsDI
            Caption = 'FUNDAP'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cMultimodal: TUniDBCheckBox
            Left = 543
            Top = 60
            Width = 74
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Multimodal'
            DataSource = dsDI
            Caption = 'Multimodal'
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData: TUniDBDateTimePicker
            Left = 23
            Top = 63
            Width = 122
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data'
            DataSource = dsDI
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            FieldLabel = 'Data'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cURF_Entrega: TUniDBLookupComboBox
            Left = 23
            Top = 363
            Width = 498
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsURF
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'URF_Entrega'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'URF de Entrega'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cURF_Despacho: TUniDBLookupComboBox
            Left = 23
            Top = 313
            Width = 497
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsURF
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'URF_Despacho'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'URF de Despacho'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clModalidade_Importacao: TUniDBLookupComboBox
            Left = 332
            Top = 63
            Width = 188
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalidadeImp
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Modalidade_Importacao'
            DataSource = dsDI
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Modalidade de Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cConsignatario: TUniDBLookupComboBox
            Left = 23
            Top = 413
            Width = 498
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsConsignatario
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Consignatario'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Consignat'#225'rio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cPais_Procedencia: TUniDBLookupComboBox
            Left = 23
            Top = 463
            Width = 498
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsPaises
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Pais_Procedencia'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Pa'#237's Proced'#234'ncia Carga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 151
            Top = 63
            Width = 174
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessosImp
            KeyField = 'Processo'
            ListFieldIndex = 0
            DataField = 'Processo'
            DataSource = dsDI
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnExit = cProcessoExit
          end
          object cMotivo_AdmissaoTemp: TUniDBLookupComboBox
            Left = 23
            Top = 163
            Width = 497
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsMotivoAdm
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Motivo_AdmissaoTemp'
            DataSource = dsDI
            TabOrder = 11
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Motivo Adm.Temporaria'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_Pagamento: TUniDBRadioGroup
            Left = 543
            Top = 83
            Width = 125
            Height = 72
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Pagamento'
            DataSource = dsDI
            Caption = 'Pgto Tributos'
            TabOrder = 12
            Items.Strings = (
              'D'#233'bito em conta'
              'DARF')
            Values.Strings = (
              '1'
              '2')
          end
          object cTipo_Declaracao: TUniDBLookupComboBox
            Left = 23
            Top = 113
            Width = 497
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTiposDeclaracao
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Declaracao'
            DataSource = dsDI
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Tipo de Declara'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_Importador: TUniDBLookupComboBox
            Left = 23
            Top = 213
            Width = 497
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoImportador
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Importador'
            DataSource = dsDI
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Tipo de Importador'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cModalidade_Despacho: TUniDBLookupComboBox
            Left = 23
            Top = 263
            Width = 497
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalidadesDespacho
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Modalidade_Despacho'
            DataSource = dsDI
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'Modalidade de Despacho'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cBanco: TUniDBLookupComboBox
            Left = 23
            Top = 513
            Width = 499
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Conta;Nome'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Banco'
            DataSource = dsDI
            TabOrder = 16
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBEdit1: TUniDBEdit
            Left = 23
            Top = 14
            Width = 122
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Registro'
            DataSource = dsDI
            MaxLength = 12
            TabOrder = 17
            FieldLabel = 'Registro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnChangeValue = UniDBEdit1ChangeValue
          end
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
        ScrollHeight = 807
        object UniPanel2: TUniPanel
          Left = 345
          Top = 15
          Width = 549
          Height = 792
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
            Left = 357
            Top = 12
            Width = 170
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Numero_Veiculo'
            DataSource = dsDI
            TabOrder = 1
            FieldLabel = 'N'#250'mero Ve'#237'culo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cNomeVei: TUniDBComboBox
            Left = 177
            Top = 12
            Width = 176
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Veiculo'
            DataSource = dsDI
            Sorted = True
            TabOrder = 2
            FieldLabel = 'Nome Ve'#237'culo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cNomeAgente: TUniDBComboBox
            Left = 23
            Top = 61
            Width = 331
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Agente_Transportador'
            DataSource = dsDI
            Sorted = True
            TabOrder = 3
            FieldLabel = 'Agente Transportador'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cData_Embarque: TUniDBDateTimePicker
            Left = 358
            Top = 111
            Width = 169
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Embarque'
            DataSource = dsDI
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            FieldLabel = 'Data de Embarque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cAgente_Numero: TUniDBEdit
            Left = 358
            Top = 61
            Width = 169
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Agente_Numero'
            DataSource = dsDI
            TabOrder = 5
            FieldLabel = 'Agente Numero'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDocumento_Chegada: TUniDBEdit
            Left = 23
            Top = 260
            Width = 331
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Chegada'
            DataSource = dsDI
            TabOrder = 6
            FieldLabel = 'Doc.Chegada N'#186
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTipoConhecimento: TUniDBLookupComboBox
            Left = 23
            Top = 161
            Width = 245
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoConhecimento
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Conhecimento'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Tipo de Conhecimento de Carga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cNumero_Manifesto: TUniDBEdit
            Left = 358
            Top = 309
            Width = 169
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Numero_Manifesto'
            DataSource = dsDI
            TabOrder = 8
            FieldLabel = 'N'#186' do Manifesto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Chegada: TUniDBDateTimePicker
            Left = 358
            Top = 260
            Width = 169
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Chegada'
            DataSource = dsDI
            DateTime = 45161.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 9
            FieldLabel = 'Data de Chegada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cLocalEmb: TUniDBComboBox
            Left = 23
            Top = 111
            Width = 331
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsDI
            Sorted = True
            TabOrder = 10
            FieldLabel = 'Local de Embarque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cNumero_DocCargaMaster: TUniDBEdit
            Left = 273
            Top = 211
            Width = 254
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Numero_DocCargaMaster'
            DataSource = dsDI
            TabOrder = 11
            FieldLabel = 'N'#186' Doc.de Carga (Master)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cNumero_DocCarga: TUniDBEdit
            Left = 23
            Top = 211
            Width = 245
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Numero_DocCarga'
            DataSource = dsDI
            TabOrder = 12
            FieldLabel = 'N'#186' Doc.de Carga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVia_Transporte: TUniDBLookupComboBox
            Left = 23
            Top = 12
            Width = 149
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsViaTransporte
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Via_Transporte'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Via de Transporte'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_DocCarga: TUniDBLookupComboBox
            Left = 273
            Top = 161
            Width = 254
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsDocumentoCarga
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_DocCarga'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Documento Carga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cFrete_PrePaid: TUniDBEdit
            Left = 23
            Top = 558
            Width = 123
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Frete_PrePaid'
            DataSource = dsDI
            TabOrder = 15
            FieldLabel = 'Valor do Frete Prepaid'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFrete_Collect: TUniDBEdit
            Left = 150
            Top = 558
            Width = 123
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Frete_Collect'
            DataSource = dsDI
            TabOrder = 16
            FieldLabel = 'Valor do Frete Collect'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cSeguro_Real: TUniDBEdit
            Left = 161
            Top = 657
            Width = 132
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Seguro_Real'
            DataSource = dsDI
            TabOrder = 17
            FieldLabel = 'Segure em Real'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cRecinto_Aduaneiro: TUniDBLookupComboBox
            Left = 23
            Top = 358
            Width = 504
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsRecintoAduaneiro
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Recinto_Aduaneiro'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 18
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Recinto Aduaneiro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnChange = cRecinto_AduaneiroChange
          end
          object cMoedaFrete: TUniDBLookupComboBox
            Left = 23
            Top = 458
            Width = 504
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Pais'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Moeda_Frete'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 19
            Color = clWindow
            FieldLabel = 'Moeda do Frete'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csDropDown
          end
          object cMoedaSeguro: TUniDBLookupComboBox
            Left = 23
            Top = 607
            Width = 504
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Nome;Simbolo;Pais'
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Moeda_Seguro'
            DataSource = dsDI
            TabOrder = 20
            Color = clWindow
            FieldLabel = 'Moeda do Seguro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFrete_Real: TUniDBEdit
            Left = 277
            Top = 558
            Width = 123
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Frete_Real'
            DataSource = dsDI
            TabOrder = 21
            FieldLabel = 'Frete em Real'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cRecinto_AduaneiroSetor: TUniDBLookupComboBox
            Left = 23
            Top = 408
            Width = 504
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Setor;Descricao'
            ListSource = dsRecintoSetor
            KeyField = 'Setor'
            ListFieldIndex = 1
            DataField = 'Recinto_AduaneiroSetor'
            DataSource = dsDI
            TabOrder = 22
            Color = clWindow
            FieldLabel = 'Recinto Aduaneiro (Setor)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVolumes_Embalagem: TUniDBEdit
            Left = 297
            Top = 706
            Width = 129
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Volumes_Embalagem'
            DataSource = dsDI
            TabOrder = 23
            FieldLabel = 'Qtde Volumes'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFrete_TerritorioNac: TUniDBEdit
            Left = 404
            Top = 558
            Width = 123
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Frete_TerritorioNac'
            DataSource = dsDI
            TabOrder = 24
            FieldLabel = 'Frete Territ'#243'rio Nacional'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cSeguro_ME: TUniDBEdit
            Left = 23
            Top = 657
            Width = 134
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Seguro_ME'
            DataSource = dsDI
            TabOrder = 25
            FieldLabel = 'Valor do Seguro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cLocal_Embarque: TUniDBComboBox
            Left = 23
            Top = 508
            Width = 504
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsDI
            Sorted = True
            TabOrder = 26
            FieldLabel = 'Local de Embarque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cEmbalagem: TUniDBLookupComboBox
            Left = 297
            Top = 657
            Width = 230
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Tipo_Embalagem'
            DataSource = dsDI
            TabOrder = 27
            Color = clWindow
            FieldLabel = 'Tipo de Embalagem'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPeso_Liquido: TUniDBEdit
            Left = 23
            Top = 706
            Width = 134
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Liquido'
            DataSource = dsDI
            TabOrder = 28
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPeso_Bruto: TUniDBEdit
            Left = 161
            Top = 706
            Width = 132
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Bruto'
            DataSource = dsDI
            TabOrder = 29
            FieldLabel = 'Peso Bruto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 23
            Top = 309
            Width = 331
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoManifesto
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Manifesto'
            DataSource = dsDI
            AnyMatch = True
            TabOrder = 30
            Color = clWindow
            FieldLabel = 'Tipo de Manifesto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
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
        ExplicitLeft = 3
        DesignSize = (
          1278
          936)
        ScrollHeight = 554
        object UniPanel8: TUniPanel
          Left = 345
          Top = 15
          Width = 613
          Height = 539
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
            Top = 203
            Width = 588
            Height = 162
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            DataSource = dsDIAcrescimos
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
              end
              item
                FieldName = 'Valor_Real'
                Title.Alignment = taCenter
                Title.Caption = 'Valor (Real)'
                Title.Font.Style = [fsBold]
                Width = 100
              end>
          end
          object pTributo: TUniContainerPanel
            Left = 13
            Top = 15
            Width = 586
            Height = 134
            Hint = ''
            ShowHint = True
            ParentColor = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 2
            object cAcrescimo: TUniDBLookupComboBox
              Left = 14
              Top = 9
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsAcrescimos
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'Codigo'
              DataSource = dsDIAcrescimos
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Acr'#233'scimo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cMoedaAcrescimo: TUniDBLookupComboBox
              Left = 14
              Top = 65
              Width = 283
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsMoedas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Moeda'
              DataSource = dsDIAcrescimos
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Moeda Negociada'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cValorAcrescimoME: TUniDBFormattedNumberEdit
              Left = 303
              Top = 65
              Width = 130
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Valor_ME'
              DataSource = dsDIAcrescimos
              TabOrder = 3
              FieldLabel = 'Valor na Moeda Negociada'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cValorAcrescimoReal: TUniDBFormattedNumberEdit
              Left = 439
              Top = 65
              Width = 130
              Height = 55
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Valor_Real'
              DataSource = dsDIAcrescimos
              TabOrder = 4
              FieldLabel = 'Valor em Real'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
          object UniContainerPanel1: TUniContainerPanel
            Left = 13
            Top = 152
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
                DataSource = dsDIAcrescimos
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
            Top = 369
            Width = 588
            Height = 155
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
            DataSource = dsDI
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
      Caption = 'XML da DI'
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
      Caption = 'UniTabSheet1'
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
        ScrollHeight = 230
        object pFicha: TUniPanel
          Left = 202
          Top = 26
          Width = 545
          Height = 204
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
    Left = 172
    Top = 82
  end
  object DI: TFDQuery
    BeforePost = DIBeforePost
    BeforeDelete = DIBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from DI')
    Left = 52
    Top = 82
  end
  object dsDI: TDataSource
    DataSet = DI
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
    Left = 172
    Top = 130
  end
  object dsModalidadeImp: TDataSource
    DataSet = ModalidadeImp
    Left = 172
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
    Left = 172
    Top = 232
  end
  object dsProcessosImp: TDataSource
    DataSet = ProcessosImp
    Left = 172
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
    Left = 172
    Top = 330
  end
  object dsModalidadesDespacho: TDataSource
    DataSet = ModalidadesDespacho
    Left = 172
    Top = 377
  end
  object URF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from LocalDesembaraco')
    Left = 172
    Top = 426
  end
  object dsURF: TDataSource
    DataSet = URF
    Left = 172
    Top = 473
  end
  object Consignatario: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      'from Destinatarios'
      'where Cliente = 1')
    Left = 52
    Top = 525
  end
  object dsConsignatario: TDataSource
    DataSet = Consignatario
    Left = 52
    Top = 572
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Paises')
    Left = 172
    Top = 527
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 172
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
    Left = 172
    Top = 623
  end
  object dsDocumentoCarga: TDataSource
    DataSet = DocumentoCarga
    Left = 172
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
    Left = 169
    Top = 722
  end
  object dsTipoManifesto: TDataSource
    DataSet = TipoManifesto
    Left = 169
    Top = 769
  end
  object RecintoAduaneiro: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from RecintoAduaneiro')
    Left = 274
    Top = 82
  end
  object dsRecintoAduaneiro: TDataSource
    DataSet = RecintoAduaneiro
    Left = 274
    Top = 130
  end
  object RecintoSetor: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from OrgaosSRF')
    Left = 275
    Top = 178
  end
  object dsRecintoSetor: TDataSource
    DataSet = RecintoSetor
    Left = 275
    Top = 232
  end
  object Bancos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome, Conta from Bancos')
    Left = 273
    Top = 282
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 273
    Top = 330
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Moedas')
    Left = 273
    Top = 379
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 273
    Top = 427
  end
  object DIAcrescimos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *, Descricao = cast('#39#39' as varchar(60)) from DIAcrescimo')
    Left = 272
    Top = 477
    object DIAcrescimosRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object DIAcrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object DIAcrescimosRegistro_DI: TIntegerField
      FieldName = 'Registro_DI'
      Origin = 'Registro_DI'
      Required = True
    end
    object DIAcrescimosDI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Size = 10
    end
    object DIAcrescimosCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'Codigo'
    end
    object DIAcrescimosValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      Origin = 'Valor_ME'
      DisplayFormat = ',##0.00'
    end
    object DIAcrescimosMoeda: TIntegerField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object DIAcrescimosValor_Real: TCurrencyField
      FieldName = 'Valor_Real'
      Origin = 'Valor_Real'
      DisplayFormat = ',##0.00'
    end
    object DIAcrescimosDescricao: TStringField
      DisplayWidth = 60
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ReadOnly = True
      Size = 60
    end
  end
  object dsDIAcrescimos: TDataSource
    DataSet = DIAcrescimos
    Left = 272
    Top = 525
  end
  object dsAcrescimos: TDataSource
    DataSet = Acrescimos
    Left = 271
    Top = 625
  end
  object Acrescimos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Acrescimos')
    Left = 271
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
    Left = 272
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
    Left = 272
    Top = 720
  end
end
