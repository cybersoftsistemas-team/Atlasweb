object fCadNCM: TfCadNCM
  Left = 0
  Top = 0
  Width = 1100
  Height = 1043
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1100
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
      Width = 161
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsNCM
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 161
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 202
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 243
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 325
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      Left = 284
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bGravarClick
    end
    object bFechar: TUniSpeedButton
      Left = 366
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      Align = alLeft
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
    Width = 1100
    Height = 1008
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1092
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
          BorderStyle = ubsInset
          Text = ''
          ParentFont = False
          Align = alLeft
          TabOrder = 1
          Color = 15066597
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
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1092
        Height = 953
        Hint = ''
        DataSource = dsNCM
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.PageSize = 50
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsNone
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Title.Font.Style = [fsBold]
            Width = 91
            Alignment = taCenter
          end
          item
            FieldName = 'NALADI'
            Title.Alignment = taCenter
            Title.Caption = 'NALADI'
            Title.Font.Style = [fsBold]
            Width = 85
            Alignment = taCenter
          end
          item
            FieldName = 'Produto'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 485
          end
          item
            FieldName = 'Destaque'
            Title.Alignment = taCenter
            Title.Caption = 'Destaque'
            Title.Font.Style = [fsBold]
            Width = 166
          end>
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'NCM'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1092
        Height = 980
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1090
          978)
        ScrollHeight = 582
        object pFicha: TUniPanel
          Left = 109
          Top = 32
          Width = 947
          Height = 550
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
          object clModalidade_BCICMS: TUniDBLookupComboBox
            Left = 10
            Top = 200
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalBCICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Modalidade_BCICMS'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Modalidade Determ. BC ICMS'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clCodigo_EXTIPI: TUniDBLookupComboBox
            Left = 10
            Top = 173
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsEXTIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Codigo_EXTIPI'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'C'#243'digo EX da TIPI'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cEnquadramento_IPI: TUniDBLookupComboBox
            Left = 10
            Top = 254
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsClasseIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Enquadramento_IPI'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Classe Enquadramento Legal do IPI'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cSelo_IPI: TUniDBEdit
            Left = 10
            Top = 281
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Selo_IPI'
            DataSource = dsNCM
            TabOrder = 11
            FieldLabel = 'Selo de Controle do IPI'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cGenero: TUniDBLookupComboBox
            Left = 10
            Top = 146
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsGenero
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Genero'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'G'#234'nero do item'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clModalidade_BCICMSST: TUniDBLookupComboBox
            Left = 10
            Top = 227
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalBCICMSST
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Modalidade_BCICMSST'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Modalidade Determ.BC ICMS ST'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProduto: TUniDBEdit
            Left = 10
            Top = 119
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Produto'
            DataSource = dsNCM
            TabOrder = 5
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cNCM: TUniDBEdit
            Left = 10
            Top = 11
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'NCM'
            DataSource = dsNCM
            MaxLength = 10
            TabOrder = 1
            InputMask.Mask = '9999.99.99'
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'C'#243'digo (NCM)'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cCEST: TUniDBEdit
            Left = 10
            Top = 92
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'CEST'
            DataSource = dsNCM
            MaxLength = 9
            TabOrder = 4
            FieldLabel = 'C'#243'digo CEST'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cNALADI: TUniDBEdit
            Left = 10
            Top = 38
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'NALADI'
            DataSource = dsNCM
            MaxLength = 10
            TabOrder = 2
            FieldLabel = 'NALADI/SH'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cDestaque: TUniDBEdit
            Left = 10
            Top = 65
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Destaque'
            DataSource = dsNCM
            MaxLength = 10
            TabOrder = 3
            FieldLabel = 'Destaque'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object GroupBox2: TUniGroupBox
            Left = 10
            Top = 396
            Width = 281
            Height = 125
            Hint = ''
            ShowHint = True
            Caption = 'DNF'
            TabOrder = 12
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCodigo_DNF: TUniDBEdit
              Left = 12
              Top = 15
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Codigo_DNF'
              DataSource = dsNCM
              TabOrder = 1
              FieldLabel = 'C'#243'digo do Produto'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cFatorConv_DNF: TUniDBEdit
              Left = 12
              Top = 42
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'FatorConv_DNF'
              DataSource = dsNCM
              TabOrder = 3
              FieldLabel = 'Fator Convers'#227'o'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cCapacidadeVol_DNF: TUniDBEdit
              Left = 12
              Top = 69
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'CapacidadeVol_DNF'
              DataSource = dsNCM
              TabOrder = 2
              FieldLabel = 'Capacidade Volum.'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
          object GroupBox3: TUniGroupBox
            Left = 515
            Top = 396
            Width = 195
            Height = 125
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Fiscais / CST IPI'
            TabOrder = 13
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cIPI_Isento: TUniDBCheckBox
              Left = 10
              Top = 19
              Width = 149
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'IPI_Isento'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta de IPI'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cIPI_Suspensao: TUniDBCheckBox
              Left = 10
              Top = 40
              Width = 149
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'IPI_Suspensao'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o do IPI'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cIPI_TribAliquotaZero: TUniDBCheckBox
              Left = 10
              Top = 61
              Width = 149
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'IPI_TribAliquotaZero'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tributado c/Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox1: TUniGroupBox
            Left = 732
            Top = 396
            Width = 193
            Height = 125
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Fiscais / CST ICMS'
            TabOrder = 14
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cICMS_Isento: TUniDBCheckBox
              Left = 13
              Top = 19
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Isento'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta de ICMS'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cICMS_Suspensao: TUniDBCheckBox
              Left = 13
              Top = 40
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Suspensao'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o do ICMS'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cICMS_Imune: TUniDBCheckBox
              Left = 13
              Top = 61
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Imune'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Imune de ICMS'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cMVA_NaoReducao: TUniDBCheckBox
              Left = 13
              Top = 82
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'MVA_NaoReducao'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'N'#227'o redu'#231#227'o de  MVA'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 10
            Top = 308
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CodigoTrib_TabA'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'CST ICMS Tab.A -  Importado'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 10
            Top = 335
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CodigoTrib_TabA3'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 16
            Color = clWindow
            FieldLabel = 'CST ICMS Tab.A - Mercado Interno'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 10
            Top = 362
            Width = 925
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CodigoTrib_TabA2'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'CST ICMS Tab.A - Nacional'
            FieldLabelWidth = 180
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniGroupBox1: TUniGroupBox
            Left = 314
            Top = 396
            Width = 175
            Height = 125
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Fiscais Diversos'
            TabOrder = 18
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cFCP: TUniDBCheckBox
              Left = 9
              Top = 19
              Width = 110
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'FCP'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Incidencia de FCP'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCusto_Seletivo: TUniDBCheckBox
              Left = 9
              Top = 40
              Width = 110
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Seletivo'
              DataSource = dsNCM
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Custo Seletivo'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Tabela de ICMS'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1092
        Height = 980
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1090
          978)
        ScrollHeight = 582
        object pPanel2: TUniPanel
          Left = 226
          Top = 27
          Width = 557
          Height = 555
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
          object UniPanel2: TUniPanel
            Left = 0
            Top = 0
            Width = 557
            Height = 35
            Hint = ''
            ShowHint = True
            Align = alTop
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = 5526569
            ExplicitWidth = 554
            object NavegaICMS: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 156
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dsICMS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bAddICMS: TUniSpeedButton
              Left = 156
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
              OnClick = bAddICMSClick
            end
            object bEditICMS: TUniSpeedButton
              Left = 197
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
              OnClick = bEditICMSClick
            end
            object bDelICMS: TUniSpeedButton
              Left = 238
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
              OnClick = bDelICMSClick
            end
            object bCancICMS: TUniSpeedButton
              Left = 320
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
              OnClick = bCancICMSClick
            end
            object bSalvaICMS: TUniSpeedButton
              Left = 279
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
              OnClick = bSalvaICMSClick
            end
          end
          object pFichaICMS: TUniContainerPanel
            Left = 0
            Top = 35
            Width = 557
            Height = 520
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentColor = False
            Align = alClient
            TabOrder = 2
            ExplicitWidth = 554
            object UniDBGrid2: TUniDBGrid
              AlignWithMargins = True
              Left = 12
              Top = 141
              Width = 533
              Height = 367
              Hint = ''
              Margins.Left = 12
              Margins.Top = 12
              Margins.Right = 12
              Margins.Bottom = 12
              ShowHint = True
              DataSource = dsICMS
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
              WebOptions.Paged = False
              WebOptions.PageSize = 50
              LoadMask.Message = 'Loading data...'
              ForceFit = True
              BorderStyle = ubsInset
              Align = alBottom
              TabOrder = 7
              Columns = <
                item
                  FieldName = 'Estado'
                  Title.Alignment = taCenter
                  Title.Caption = 'UF'
                  Title.Font.Style = [fsBold]
                  Width = 32
                end
                item
                  FieldName = 'ST'
                  Title.Alignment = taCenter
                  Title.Caption = 'ST'
                  Title.Font.Style = [fsBold]
                  Width = 64
                end
                item
                  FieldName = 'Reducao_BCICMSST'
                  Title.Alignment = taCenter
                  Title.Caption = 'Red BC ICMS ST'
                  Title.Font.Style = [fsBold]
                  Width = 92
                end
                item
                  FieldName = 'MVA_Imp'
                  Title.Alignment = taCenter
                  Title.Caption = 'MVA Imp'
                  Title.Font.Style = [fsBold]
                  Width = 64
                end
                item
                  FieldName = 'MVA_Nac'
                  Title.Alignment = taCenter
                  Title.Caption = 'MVA Nac'
                  Title.Font.Style = [fsBold]
                  Width = 64
                end
                item
                  FieldName = 'Reducao_BCICMSOp'
                  Title.Alignment = taCenter
                  Title.Caption = 'Red BC ICMS'
                  Title.Font.Style = [fsBold]
                  Width = 75
                end
                item
                  FieldName = 'Reducao_BCICMSOp2'
                  Title.Alignment = taCenter
                  Title.Caption = 'Red BC ICMS Op '
                  Title.Font.Style = [fsBold]
                  Width = 96
                end>
            end
            object cEstado: TUniDBLookupComboBox
              Left = 11
              Top = 11
              Width = 524
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'UF;Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Estado'
              DataSource = dsICMS
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
              Left = 11
              Top = 38
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'ST'
              DataSource = dsICMS
              TabOrder = 1
              FieldLabel = 'ICMS ST'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              Left = 11
              Top = 65
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'MVA_Imp'
              DataSource = dsICMS
              TabOrder = 3
              FieldLabel = 'MVA Importa'#231#227'o'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 11
              Top = 92
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSOp'
              DataSource = dsICMS
              TabOrder = 5
              FieldLabel = 'Redu'#231#227'o BC ICMS Oper.'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 275
              Top = 38
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSST'
              DataSource = dsICMS
              TabOrder = 2
              FieldLabel = 'Redu'#231#227'o BC ICMS ST'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
              Left = 275
              Top = 65
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'MVA_Nac'
              DataSource = dsICMS
              TabOrder = 4
              FieldLabel = 'MVA Nacional'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
              Left = 275
              Top = 92
              Width = 260
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSOp2'
              DataSource = dsICMS
              TabOrder = 6
              FieldLabel = 'Redu'#231#227'o BC ICMS Oper.2'
              FieldLabelWidth = 130
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
          end
        end
      end
    end
  end
  object NCM: TFDQuery
    BeforePost = NCMBeforePost
    BeforeDelete = NCMBeforeDelete
    AfterScroll = NCMAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NCM')
    Left = 40
    Top = 134
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 40
    Top = 182
  end
  object Genero: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Genero')
    Left = 40
    Top = 230
  end
  object dsGenero: TDataSource
    DataSet = Genero
    Left = 40
    Top = 278
  end
  object dsEXTIPI: TDataSource
    DataSet = EXTIPI
    Left = 40
    Top = 374
  end
  object EXTIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from EXTIPI')
    Left = 40
    Top = 326
  end
  object ModalBCICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ModalidadeBCICMS')
    Left = 40
    Top = 422
  end
  object dsModalBCICMS: TDataSource
    DataSet = ModalBCICMS
    Left = 40
    Top = 470
  end
  object ModalBCICMSST: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ModalidadeBCICMSST')
    Left = 40
    Top = 518
  end
  object dsModalBCICMSST: TDataSource
    DataSet = ModalBCICMSST
    Left = 40
    Top = 566
  end
  object ClasseIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ClasseEnquadramentoIPI')
    Left = 40
    Top = 622
  end
  object dsClasseIPI: TDataSource
    DataSet = ClasseIPI
    Left = 40
    Top = 678
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 432
    Top = 3
  end
  object ICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NCMICMS')
    Left = 112
    Top = 134
    object ICMSNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object ICMSEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 2
    end
    object ICMSST: TFloatField
      FieldName = 'ST'
      Origin = 'ST'
      DisplayFormat = ',##0.00'
    end
    object ICMSMVA_Imp: TFloatField
      FieldName = 'MVA_Imp'
      Origin = 'MVA_Imp'
      DisplayFormat = ',##0.00'
    end
    object ICMSMVA_Nac: TFloatField
      FieldName = 'MVA_Nac'
      Origin = 'MVA_Nac'
      DisplayFormat = ',##0.00'
    end
    object ICMSReducao_BCICMSOp: TFloatField
      FieldName = 'Reducao_BCICMSOp'
      Origin = 'Reducao_BCICMSOp'
      DisplayFormat = ',##0.00'
    end
    object ICMSReducao_BCICMSOp2: TFloatField
      FieldName = 'Reducao_BCICMSOp2'
      Origin = 'Reducao_BCICMSOp2'
      DisplayFormat = ',##0.00'
    end
    object ICMSReducao_BCICMSST: TFloatField
      FieldName = 'Reducao_BCICMSST'
      Origin = 'Reducao_BCICMSST'
      DisplayFormat = ',##0.00'
    end
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 112
    Top = 182
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select UF, Nome'
      'from Estados')
    Left = 112
    Top = 230
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 112
    Top = 278
  end
  object tmp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select UF, Nome'
      'from Estados')
    Left = 32
    Top = 742
  end
  object CSTICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CSTICMSTabA')
    Left = 112
    Top = 326
  end
  object dsCSTICMS: TDataSource
    DataSet = CSTICMS
    Left = 112
    Top = 374
  end
end
