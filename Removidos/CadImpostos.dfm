object fCadImpostos: TfCadImpostos
  Left = 0
  Top = 0
  Width = 991
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 991
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 983
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsImpostos
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
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 98
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Codigo_SRF'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Org'#227'o'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 538
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Documento'
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Title.Font.Style = [fsBold]
            Width = 113
            Font.Name = 'Calibri'
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 983
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
          Color = clWindow
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 10
          TabOrder = 2
          OnClick = bPesquisaClick
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 983
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          981
          936)
        ScrollHeight = 702
        object pFicha1: TUniPanel
          Left = 176
          Top = 18
          Width = 513
          Height = 684
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
          object cCodigo: TUniDBEdit
            Left = 27
            Top = 26
            Width = 135
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsImpostos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cCodigo_SRF: TUniDBEdit
            Left = 168
            Top = 26
            Width = 135
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_SRF'
            DataSource = dsImpostos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'C'#243'digo Org'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cDescricao: TUniDBEdit
            Left = 27
            Top = 82
            Width = 454
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsImpostos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cValor: TUniDBFormattedNumberEdit
            Left = 27
            Top = 138
            Width = 110
            Height = 56
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor'
            DataSource = dsImpostos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Al'#237'quota'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cDia_Vencimento: TUniDBNumberEdit
            Left = 143
            Top = 138
            Width = 110
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Dia_Vencimento'
            DataSource = dsImpostos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            SelectOnFocus = True
            FieldLabel = 'Vencimento (Dia)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object UniGroupBox4: TUniGroupBox
            Left = 27
            Top = 226
            Width = 460
            Height = 198
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metriza'#231#227'o Financeira'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cOrgao: TUniDBLookupComboBox
              Left = 15
              Top = 71
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome;Codigo'
              ListSource = dsDest
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Orgao'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cClassificacao_Financeira: TUniDBLookupComboBox
              Left = 15
              Top = 16
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome;Codigo'
              ListSource = dsPlanoFin
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Classificacao_Financeira'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Plano Financeiro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cDocumento: TUniDBLookupComboBox
              Left = 15
              Top = 126
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao;Codigo'
              ListSource = dsTiposDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Documento'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object UniGroupBox1: TUniGroupBox
            Left = 27
            Top = 460
            Width = 460
            Height = 198
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metriza'#231#227'o Contabil'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cConta_D: TUniDBLookupComboBox
              Left = 15
              Top = 15
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Conta_D'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Conta (D'#233'bito)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cConta_C: TUniDBLookupComboBox
              Left = 15
              Top = 70
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Conta_C'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Conta (Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cHistorico: TUniDBLookupComboBox
              Left = 15
              Top = 125
              Width = 430
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsHistorico
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Historico'
              DataSource = dsImpostos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Hist'#243'rico'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
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
      DataSource = dsImpostos
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
      Color = clWindow
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
      Color = clWindow
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
      Color = clWindow
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
      Color = clWindow
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
      Color = clWindow
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
      Color = clWindow
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object dsImpostos: TDataSource
    DataSet = Impostos
    Left = 114
    Top = 71
  end
  object dsDest: TDataSource
    DataSet = Destinatarios
    Left = 114
    Top = 125
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 114
    Top = 176
  end
  object dsTiposDoc: TDataSource
    DataSet = TiposDoc
    Left = 114
    Top = 231
  end
  object dsPlanoFin: TDataSource
    DataSet = PlanoFinanceiro
    Left = 114
    Top = 284
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    Left = 40
    Top = 176
  end
  object PlanoFinanceiro: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoFinanceiro')
    Left = 40
    Top = 285
  end
  object Impostos: TFDQuery
    BeforePost = ImpostosBeforePost
    BeforeDelete = ImpostosBeforePost
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Impostos')
    Left = 40
    Top = 72
  end
  object TiposDoc: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposDocumentos')
    Left = 40
    Top = 231
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select top 1 * from destinatarios')
    Left = 40
    Top = 126
  end
  object Historico: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM HistoricoPadrao')
    Left = 39
    Top = 341
  end
  object dsHistorico: TDataSource
    DataSet = Historico
    Left = 114
    Top = 340
  end
end
