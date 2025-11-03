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
        ScrollHeight = 721
        object pFicha: TUniPanel
          Left = 176
          Top = 32
          Width = 794
          Height = 689
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
            Left = 17
            Top = 214
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalBCICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Modalidade_BCICMS'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Modalidade Determinante BC ICMS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clCodigo_EXTIPI: TUniDBLookupComboBox
            Left = 17
            Top = 165
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsEXTIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_EXTIPI'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'C'#243'digo EX da TIPI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cEnquadramento_IPI: TUniDBLookupComboBox
            Left = 17
            Top = 312
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsClasseIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Enquadramento_IPI'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Classe Enquadramento Legal do IPI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cSelo_IPI: TUniDBEdit
            Left = 17
            Top = 362
            Width = 163
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Selo_IPI'
            DataSource = dsNCM
            TabOrder = 13
            FieldLabel = 'Selo de Controle do IPI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cGenero: TUniDBLookupComboBox
            Left = 17
            Top = 116
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsGenero
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Genero'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'G'#234'nero do item'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object clModalidade_BCICMSST: TUniDBLookupComboBox
            Left = 17
            Top = 263
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalBCICMSST
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Modalidade_BCICMSST'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Modalidade Determinante BC ICMS Sub.'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProduto: TUniDBEdit
            Left = 17
            Top = 67
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Produto'
            DataSource = dsNCM
            TabOrder = 7
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNCM: TUniDBEdit
            Left = 17
            Top = 17
            Width = 112
            Height = 50
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
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCusto_Seletivo: TUniDBCheckBox
            Left = 640
            Top = 45
            Width = 110
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Custo_Seletivo'
            DataSource = dsNCM
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Custo Seletivo'
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCEST: TUniDBEdit
            Left = 371
            Top = 17
            Width = 112
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'CEST'
            DataSource = dsNCM
            MaxLength = 9
            TabOrder = 4
            FieldLabel = 'C'#243'digo CEST'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cFCP: TUniDBCheckBox
            Left = 512
            Top = 45
            Width = 110
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'FCP'
            DataSource = dsNCM
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Incidencia de FCP'
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cNALADI: TUniDBEdit
            Left = 135
            Top = 17
            Width = 112
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'NALADI'
            DataSource = dsNCM
            MaxLength = 10
            TabOrder = 2
            FieldLabel = 'NALADI/SH'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cDestaque: TUniDBEdit
            Left = 253
            Top = 17
            Width = 112
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Destaque'
            DataSource = dsNCM
            MaxLength = 10
            TabOrder = 3
            FieldLabel = 'Destaque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object GroupBox2: TUniGroupBox
            Left = 17
            Top = 572
            Width = 368
            Height = 103
            Hint = ''
            ShowHint = True
            Caption = 'DNF'
            TabOrder = 14
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCodigo_DNF: TUniDBEdit
              Left = 12
              Top = 15
              Width = 110
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Codigo_DNF'
              DataSource = dsNCM
              TabOrder = 1
              FieldLabel = 'C'#243'digo do Produto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cFatorConv_DNF: TUniDBEdit
              Left = 129
              Top = 15
              Width = 110
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'FatorConv_DNF'
              DataSource = dsNCM
              TabOrder = 3
              FieldLabel = 'Fator Convers'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cCapacidadeVol_DNF: TUniDBEdit
              Left = 245
              Top = 15
              Width = 110
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'CapacidadeVol_DNF'
              DataSource = dsNCM
              TabOrder = 2
              FieldLabel = 'Capacidade Volum.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object GroupBox3: TUniGroupBox
            Left = 397
            Top = 572
            Width = 184
            Height = 103
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Fiscais / CST IPI'
            TabOrder = 15
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cIPI_Isento: TUniDBCheckBox
              Left = 13
              Top = 21
              Width = 155
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
              Left = 13
              Top = 39
              Width = 155
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
              Left = 13
              Top = 57
              Width = 155
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
            Left = 596
            Top = 572
            Width = 181
            Height = 103
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Fiscais / CST ICMS'
            TabOrder = 16
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cICMS_Isento: TUniDBCheckBox
              Left = 13
              Top = 21
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
              Top = 39
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
              Top = 57
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
              Top = 75
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
            Left = 17
            Top = 411
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CodigoTrib_TabA'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'CST ICMS Importado (Tab.A)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 17
            Top = 460
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CodigoTrib_TabA3'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 18
            Color = clWindow
            FieldLabel = 'CST ICMS Adiquirido Mercado Interno (Tab.A)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 17
            Top = 509
            Width = 760
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CodigoTrib_TabA2'
            DataSource = dsNCM
            AnyMatch = True
            TabOrder = 19
            Color = clWindow
            FieldLabel = 'CST ICMS Nacional (Tab.A)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
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
          Width = 554
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
            Width = 554
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
            Width = 554
            Height = 520
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentColor = False
            Align = alClient
            TabOrder = 2
            object UniDBGrid2: TUniDBGrid
              AlignWithMargins = True
              Left = 12
              Top = 230
              Width = 530
              Height = 278
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
              Width = 291
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'UF;Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 1
              DataField = 'Estado'
              DataSource = dsICMS
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
              Left = 11
              Top = 61
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ST'
              DataSource = dsICMS
              TabOrder = 1
              FieldLabel = 'ICMS ST'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              Left = 11
              Top = 111
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'MVA_Imp'
              DataSource = dsICMS
              TabOrder = 3
              FieldLabel = 'MVA Importa'#231#227'o'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 11
              Top = 161
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSOp'
              DataSource = dsICMS
              TabOrder = 5
              FieldLabel = 'Redu'#231#227'o BC ICMS Oper.'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 162
              Top = 61
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSST'
              DataSource = dsICMS
              TabOrder = 2
              FieldLabel = 'Redu'#231#227'o BC ICMS ST'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
              Left = 162
              Top = 111
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'MVA_Nac'
              DataSource = dsICMS
              TabOrder = 4
              FieldLabel = 'MVA Nacional'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
              Left = 162
              Top = 162
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BCICMSOp2'
              DataSource = dsICMS
              TabOrder = 6
              FieldLabel = 'Redu'#231#227'o BC ICMS Oper.2'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
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
