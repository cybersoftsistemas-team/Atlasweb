object fCadPlanoContas: TfCadPlanoContas
  Left = 0
  Top = 0
  Width = 1120
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1120
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
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1112
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsPlanoContas
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
        OnDrawColumnCell = GradeDrawColumnCell
        Columns = <
          item
            FieldName = 'Conta'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 62
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 507
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Natureza'
            Title.Alignment = taCenter
            Title.Caption = 'Nat'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Sintetica'
            Title.Alignment = taCenter
            Title.Caption = 'Sint'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'LALUR'
            Title.Alignment = taCenter
            Title.Caption = 'LALUR'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'DRE'
            Title.Alignment = taCenter
            Title.Caption = 'DRE'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Conta_Resultado'
            Title.Alignment = taCenter
            Title.Caption = 'Resul'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Inclusao'
            Title.Alignment = taCenter
            Title.Caption = 'Inclus'#227'o'
            Title.Font.Style = [fsBold]
            Width = 77
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1112
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
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1112
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1110
          936)
        ScrollHeight = 713
        object pFicha1: TUniPanel
          Left = 176
          Top = 26
          Width = 569
          Height = 687
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
          object cConta: TUniDBEdit
            Left = 31
            Top = 31
            Width = 176
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            InputMask.MaskChar = ' '
            FieldLabel = 'Conta'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cCodigo: TUniDBNumberEdit
            Left = 31
            Top = 87
            Width = 176
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            InputRTL = False
            DataField = 'Codigo'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            SelectOnFocus = True
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cNome: TUniDBEdit
            Left = 31
            Top = 198
            Width = 506
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cSaldo_Anterior: TUniDBFormattedNumberEdit
            Left = 31
            Top = 364
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Saldo_Anterior'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Saldo Anterior'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cData_Inclusao: TUniDBDateTimePicker
            Left = 31
            Top = 419
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Inclusao'
            DataSource = dsPlanoContas
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data da Inclus'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniGroupBox1: TUniGroupBox
            Left = 31
            Top = 488
            Width = 248
            Height = 167
            Hint = ''
            ShowHint = True
            Caption = 'Op'#231#245'es da Conta'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cSintetica: TUniDBCheckBox
              Left = 14
              Top = 23
              Width = 75
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Sintetica'
              DataSource = dsPlanoContas
              Caption = 'Sint'#233'tica'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cLALUR: TUniDBCheckBox
              Left = 14
              Top = 127
              Width = 59
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'LALUR'
              DataSource = dsPlanoContas
              Caption = 'LALUR'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cMostrar_Balanco: TUniDBCheckBox
              Left = 14
              Top = 49
              Width = 131
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Mostrar_Balanco'
              DataSource = dsPlanoContas
              Caption = 'Mostrar no Balan'#231'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cDRE: TUniDBCheckBox
              Left = 14
              Top = 101
              Width = 221
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'DRE'
              DataSource = dsPlanoContas
              Caption = 'Demonstrativo de Resultado (DRE)'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cConta_Resultado: TUniDBCheckBox
              Left = 14
              Top = 75
              Width = 131
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Resultado'
              DataSource = dsPlanoContas
              Caption = 'Conta de Resultado'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object cTerceiros_Grupo: TUniDBLookupComboBox
            Left = 31
            Top = 308
            Width = 506
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTerceiros
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Terceiros_Grupo'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Terceiros'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            DontUpdateOnKeyEvents = True
          end
          object cNatureza: TUniDBRadioGroup
            Left = 325
            Top = 31
            Width = 132
            Height = 97
            Hint = ''
            ShowHint = True
            DataField = 'Natureza'
            DataSource = dsPlanoContas
            Caption = 'Natureza da Conta'
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Credora'
              'Devedora'
              'Indefinida')
            Values.Strings = (
              'C'
              'D')
          end
          object cGrupo: TUniDBLookupComboBox
            Left = 31
            Top = 253
            Width = 506
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsGrupos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Grupo'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Grupo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            DontUpdateOnKeyEvents = True
          end
          object cConta_ECF: TUniDBLookupComboBox
            Left = 31
            Top = 142
            Width = 506
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Conta;Nome'
            ListSource = dsPlanoECF
            KeyField = 'Conta'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Conta_ECF'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Conta Refer'#234'ncial (ECF)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            DontUpdateOnKeyEvents = True
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1120
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
      DataSource = dsPlanoContas
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
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 114
    Top = 103
  end
  object dsTerceiros: TDataSource
    DataSet = Terceiros
    Left = 114
    Top = 150
  end
  object dsGrupos: TDataSource
    DataSet = Grupos
    Left = 114
    Top = 199
  end
  object PlanoContas: TFDQuery
    BeforePost = PlanoContasBeforePost
    BeforeDelete = PlanoContasBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    Left = 40
    Top = 104
  end
  object Grupos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContasGrupos')
    Left = 40
    Top = 200
  end
  object Terceiros: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Terceiros')
    Left = 40
    Top = 152
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 114
    Top = 255
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Config')
    Left = 39
    Top = 256
  end
  object PlanoECF: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContasECF')
    Left = 40
    Top = 312
  end
  object dsPlanoECF: TDataSource
    DataSet = PlanoECF
    Left = 114
    Top = 311
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 616
    Top = 3
  end
end
