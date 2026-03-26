object fCadEstados: TfCadEstados
  Left = 0
  Top = 0
  Width = 1200
  Height = 812
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1200
    Height = 777
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1192
        Height = 722
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsEstados
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Carregando dados...'
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        Columns = <
          item
            FieldName = 'UF'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 393
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Regiao'
            Title.Alignment = taCenter
            Title.Caption = 'Regi'#227'o'
            Title.Font.Style = [fsBold]
            Width = 84
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Inscricao'
            Title.Alignment = taCenter
            Title.Caption = 'Inscri'#231#227'o ST'
            Title.Font.Style = [fsBold]
            Width = 166
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'MVA'
            Title.Alignment = taCenter
            Title.Caption = 'MVA'
            Title.Font.Style = [fsBold]
            Width = 52
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end>
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 0
        Width = 1192
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        Caption = ''
        Color = clNone
        object cPesquisa: TUniEdit
          Left = 1
          Top = 1
          Width = 520
          Height = 25
          Hint = ''
          Text = ''
          Align = alLeft
          TabOrder = 1
          EmptyText = 'Pesquisar'
          OnKeyDown = cPesquisaKeyDown
        end
        object bPesquisa: TUniSpeedButton
          Left = 521
          Top = 1
          Width = 25
          Height = 25
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
    end
    object aFicha2: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1192
        Height = 749
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 1
        DesignSize = (
          1190
          747)
        ScrollHeight = 519
        object pFicha: TUniPanel
          Left = 144
          Top = 31
          Width = 536
          Height = 488
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
            Left = 218
            Top = 17
            Width = 139
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cNome: TUniDBEdit
            Left = 18
            Top = 44
            Width = 339
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cUF: TUniDBEdit
            Left = 18
            Top = 17
            Width = 195
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'UF'
            DataSource = dsEstados
            CharCase = ecUpperCase
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'UF'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cDed_Do: TUniDBEdit
            Left = 18
            Top = 71
            Width = 195
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'De_Do'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'de/do'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cRegiao: TUniDBRadioGroup
            Left = 374
            Top = 11
            Width = 140
            Height = 149
            Hint = ''
            ShowHint = True
            DataField = 'Regiao'
            DataSource = dsEstados
            Caption = 'Regi'#227'o'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'CENTRO OESTE'
              'NORTE'
              'NORDESTE'
              'SUL'
              'SULDESTE')
            Values.Strings = (
              'CO'
              'N'
              'NE'
              'S'
              'SE')
          end
          object cMascara_IE: TUniDBEdit
            Left = 18
            Top = 98
            Width = 338
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Mascara_IE'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Mascara IE'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object GroupBox1: TUniGroupBox
            Left = 18
            Top = 156
            Width = 326
            Height = 150
            Hint = ''
            ShowHint = True
            Caption = 'ICMS Interno (Produtos Importados)'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cImp_Contribuinte: TUniDBEdit
              Left = 11
              Top = 48
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Imp_ContribDifer'
              DataSource = dsEstados
              TabOrder = 1
              FieldLabel = 'Contribuinte (Diferenciada)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cImp_NContribuinte: TUniDBEdit
              Left = 11
              Top = 108
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Imp_NContribDifer'
              DataSource = dsEstados
              TabOrder = 3
              FieldLabel = 'N'#227'o Contribuinte (Diferenciada)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cImp_ContribuinteCheia: TUniDBEdit
              Left = 11
              Top = 18
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Imp_ContribInteg'
              DataSource = dsEstados
              TabOrder = 0
              FieldLabel = 'Contribuinte (Integral)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cImp_NContribuinteCheia: TUniDBEdit
              Left = 11
              Top = 78
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Imp_NContribInteg'
              DataSource = dsEstados
              TabOrder = 2
              FieldLabel = 'N'#227'o Contribuinte (Integral)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
          object GroupBox2: TUniGroupBox
            Left = 18
            Top = 320
            Width = 326
            Height = 150
            Hint = ''
            ShowHint = True
            Caption = 'ICMS Interno (Produtos Nacionais)'
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cNac_ContribuinteCheia: TUniDBEdit
              Left = 11
              Top = 18
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Nac_ContribInteg'
              DataSource = dsEstados
              TabOrder = 0
              FieldLabel = 'Contribuinte (Integral)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cNac_NContribuinteCheia: TUniDBEdit
              Left = 11
              Top = 78
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Nac_NContribInteg'
              DataSource = dsEstados
              TabOrder = 2
              FieldLabel = 'N'#227'o Contribuinte (Integral)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cNac_Contribuinte: TUniDBEdit
              Left = 11
              Top = 48
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Nac_ContribDifer'
              DataSource = dsEstados
              TabOrder = 1
              FieldLabel = 'Contribuinte (Diferenciada)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cNac_NContribuinte: TUniDBEdit
              Left = 11
              Top = 108
              Width = 300
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Nac_NContribDifer'
              DataSource = dsEstados
              TabOrder = 3
              FieldLabel = 'N'#227'o Contribuinte (Diferenciada)'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'GNRE'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1192
        Height = 749
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1190
          747)
        ScrollHeight = 363
        object pFicha2: TUniPanel
          Left = 144
          Top = 14
          Width = 714
          Height = 349
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
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 14
            Top = 156
            Width = 168
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_Gerar'
            DataSource = dsEstados
            Caption = 'Estado Gera GNRE Eletr'#244'nico'
            TabOrder = 1
            ParentColor = False
            Color = clBtnFace
          end
          object cGNRE_ST: TUniDBEdit
            Left = 241
            Top = 98
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_CodigoST'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'C'#243'd.Receita ICMS ST'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cCodigo_GNRE: TUniDBEdit
            Left = 14
            Top = 17
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_Codigo'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'C'#243'digo GNRE'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cConvenio: TUniDBEdit
            Left = 240
            Top = 17
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_Convenio'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'N'#186' do Conv'#234'nio'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cGNRE_AdicCod: TUniDBEdit
            Left = 467
            Top = 71
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_AdicCod'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Campo Adicional C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cGNRE_AdicTipo: TUniDBEdit
            Left = 241
            Top = 71
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_AdicTipo'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Campo Adicional Tipo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cGNRE_Imp: TUniDBEdit
            Left = 14
            Top = 98
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_CodigoImp'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'C'#243'd.Receita ICMS Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cGNRE_DIFAL: TUniDBEdit
            Left = 14
            Top = 71
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_CodigoDIFAL'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'C'#243'd.Receita ICMS DIFAL'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cICMS_Interno: TUniDBEdit
            Left = 14
            Top = 44
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'GNRE_ICMSInterno'
            DataSource = dsEstados
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Al'#237'quota ICMS Interna'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object GroupBox20: TUniGroupBox
            Left = 14
            Top = 191
            Width = 685
            Height = 137
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amento Financeiro (Pagamento GNRE)'
            TabOrder = 10
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cGNRE_Orgao: TUniDBLookupComboBox
              Left = 11
              Top = 97
              Width = 660
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgaos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'GNRE_Orgao'
              DataSource = dsEstados
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Org'#227'o Arrecadador'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object clGNRE_TipoDocumento: TUniDBLookupComboBox
              Left = 11
              Top = 70
              Width = 660
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsDocs
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'GNRE_TipoDocumento'
              DataSource = dsEstados
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Documento'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cGNRE_CentroCusto: TUniDBLookupComboBox
              Left = 11
              Top = 43
              Width = 660
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Nome'
              ListSource = dsCentroCusto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'GNRE_CentroCusto'
              DataSource = dsEstados
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cGNRE_Classificacao: TUniDBLookupComboBox
              Left = 11
              Top = 16
              Width = 660
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsPlanoFin
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'GNRE_Classificacao'
              DataSource = dsEstados
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o Financeira'
              FieldLabelWidth = 140
              Style = csDropDown
            end
          end
        end
      end
    end
  end
  object BarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1200
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
      DataSource = dsEstados
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
    object bSalvar: TUniSpeedButton
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
      OnClick = bSalvarClick
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
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 44
    Top = 135
  end
  object Estados: TFDQuery
    BeforePost = EstadosBeforePost
    BeforeDelete = EstadosBeforeDelete
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Estados')
    Left = 44
    Top = 80
  end
  object PlanoFin: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo '
      '      ,Nome = Nome_Financeiro'
      'FROM PlanoContas')
    Left = 44
    Top = 192
  end
  object dsPlanoFin: TDataSource
    DataSet = PlanoFin
    Left = 44
    Top = 247
  end
  object Docs: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo '
      '      ,Nome'
      'FROM TiposDocumentos')
    Left = 44
    Top = 304
  end
  object dsDocs: TDataSource
    DataSet = Docs
    Left = 44
    Top = 351
  end
  object CentroCusto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM CentroCusto')
    Left = 44
    Top = 400
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 44
    Top = 447
  end
  object Orgaos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM Destinatarios '
      'where Orgao_Publico = 1')
    Left = 44
    Top = 496
  end
  object dsOrgaos: TDataSource
    DataSet = Orgaos
    Left = 44
    Top = 543
  end
  object Regioes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM REgioes')
    Left = 44
    Top = 600
  end
  object dsRegioes: TDataSource
    DataSet = Regioes
    Left = 44
    Top = 647
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
