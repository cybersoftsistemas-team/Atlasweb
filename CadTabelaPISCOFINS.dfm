object fCadTabelaPISCOFINS: TfCadTabelaPISCOFINS
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
      DataSource = dsPISCOFINS
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
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
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
        DataSource = dsPISCOFINS
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Imposto'
            Title.Alignment = taCenter
            Title.Caption = 'Imposto'
            Title.Font.Style = [fsBold]
            Width = 85
          end
          item
            FieldName = 'Modalidade_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade Importa'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 206
          end
          item
            FieldName = 'Tipo_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Origem'
            Title.Font.Style = [fsBold]
            Width = 64
          end
          item
            FieldName = 'Regime_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Regime'
            Title.Font.Style = [fsBold]
            Width = 64
          end
          item
            FieldName = 'Majorada'
            Title.Alignment = taCenter
            Title.Caption = 'Majorada'
            Title.Font.Style = [fsBold]
            Width = 70
          end
          item
            FieldName = 'Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'NF Entrada'
            Title.Font.Style = [fsBold]
            Width = 79
          end
          item
            FieldName = 'Saida'
            Title.Alignment = taCenter
            Title.Caption = 'NF Sa'#237'da'
            Title.Font.Style = [fsBold]
            Width = 78
          end
          item
            FieldName = 'Data_Inicio'
            Title.Alignment = taCenter
            Title.Caption = 'Inicio'
            Title.Font.Style = [fsBold]
            Width = 72
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Final'
            Title.Alignment = taCenter
            Title.Caption = 'Final'
            Title.Font.Style = [fsBold]
            Width = 72
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
        DesignSize = (
          1278
          936)
        ScrollHeight = 377
        object pFicha: TUniPanel
          Left = 192
          Top = 43
          Width = 441
          Height = 334
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
          object cEntrada: TUniDBEdit
            Left = 14
            Top = 165
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Entrada'
            DataSource = dsPISCOFINS
            TabOrder = 4
            FieldLabel = 'Entrada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cRegime_Apuracao: TUniDBRadioGroup
            Left = 283
            Top = 126
            Width = 144
            Height = 75
            Hint = ''
            ShowHint = True
            DataField = 'Regime_Apuracao'
            DataSource = dsPISCOFINS
            Caption = 'Regime de Apura'#231#227'o'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Lucro Real'
              'Lucro Presumido')
            Values.Strings = (
              'R'
              'P')
          end
          object cSaida: TUniDBEdit
            Left = 14
            Top = 216
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Saida'
            DataSource = dsPISCOFINS
            TabOrder = 5
            FieldLabel = 'Sa'#237'da'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cMajorada: TUniDBEdit
            Left = 14
            Top = 114
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Majorada'
            DataSource = dsPISCOFINS
            TabOrder = 3
            FieldLabel = 'Al'#237'quota na DI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cImposto: TUniDBComboBox
            Left = 14
            Top = 13
            Width = 246
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Imposto'
            DataSource = dsPISCOFINS
            Style = csOwnerDrawFixed
            Items.Strings = (
              'PIS'
              'COFINS')
            TabOrder = 1
            FieldLabel = 'Imposto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cTipo: TUniDBRadioGroup
            Left = 283
            Top = 9
            Width = 144
            Height = 96
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsPISCOFINS
            Caption = 'Tipo de Al'#237'quota'
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'B'#225'sica'
              'DI (Majorada)'
              'NF Terceiros')
            Values.Strings = (
              'B'
              'M'
              'T')
            OnClick = cTipoClick
          end
          object cData_Inicio: TUniDBDateTimePicker
            Left = 14
            Top = 266
            Width = 125
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Inicio'
            DataSource = dsPISCOFINS
            DateTime = 44467.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 6
            BorderStyle = ubsSolid
            FieldLabel = 'Data Inicio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clModalidade: TUniDBLookupComboBox
            Left = 14
            Top = 63
            Width = 246
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Descricao'
            ListSource = dsModalidade
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Modalidade'
            DataSource = dsPISCOFINS
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Modalidade Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Final: TUniDBDateTimePicker
            Left = 141
            Top = 266
            Width = 119
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Final'
            DataSource = dsPISCOFINS
            DateTime = 44467.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 7
            BorderStyle = ubsSolid
            FieldLabel = 'Data Final'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object tRegistro: TFDQuery
    Left = 40
    Top = 144
  end
  object PISCOFINS: TFDQuery
    BeforePost = PISCOFINSBeforePost
    BeforeDelete = PISCOFINSBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from TabelaPISCOFINS')
    Left = 40
    Top = 198
  end
  object dsPISCOFINS: TDataSource
    DataSet = PISCOFINS
    Left = 40
    Top = 246
  end
  object Modalidade: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ModalidadeImportacao')
    Left = 40
    Top = 294
  end
  object dsModalidade: TDataSource
    DataSet = Modalidade
    Left = 40
    Top = 342
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 36
    Top = 83
  end
end
