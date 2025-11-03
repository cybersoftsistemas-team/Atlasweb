object fCadCondicaoCambial: TfCadCondicaoCambial
  Left = 0
  Top = 0
  Width = 1248
  Height = 801
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1248
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
      DataSource = dsCondicaoCambial
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
    Width = 1248
    Height = 766
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    ExplicitWidth = 1288
    ExplicitHeight = 966
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1240
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
        Width = 1240
        Height = 711
        Hint = ''
        DataSource = dsCondicaoCambial
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 114
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 699
          end
          item
            FieldName = 'Percentual1'
            Title.Alignment = taCenter
            Title.Caption = '% 1'
            Title.Font.Style = [fsBold]
            Width = 80
          end
          item
            FieldName = 'Percentual2'
            Title.Alignment = taCenter
            Title.Caption = '% 2'
            Title.Font.Style = [fsBold]
            Width = 80
          end
          item
            FieldName = 'Percentual3'
            Title.Alignment = taCenter
            Title.Caption = '% 3'
            Title.Font.Style = [fsBold]
            Width = 80
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1240
        Height = 738
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 1280
        ExplicitHeight = 938
        object UniScrollBox2: TUniScrollBox
          Left = 0
          Top = 0
          Width = 1238
          Height = 736
          Hint = ''
          Align = alClient
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Pasta'#39';'#13#10'}')
          TabOrder = 0
          DesignSize = (
            1236
            734)
          ScrollHeight = 590
          object pFicha: TUniPanel
            Left = 97
            Top = 25
            Width = 690
            Height = 565
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
            ExplicitLeft = 111
            object cDescricao: TUniDBEdit
              Left = 27
              Top = 79
              Width = 635
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Descricao'
              DataSource = dsCondicaoCambial
              TabOrder = 2
              FieldLabel = 'Descri'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCodigo: TUniDBEdit
              Left = 27
              Top = 23
              Width = 100
              Height = 55
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Codigo'
              DataSource = dsCondicaoCambial
              TabOrder = 1
              FieldLabel = 'C'#243'digo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPercentual1: TUniDBEdit
              Left = 27
              Top = 135
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Percentual1'
              DataSource = dsCondicaoCambial
              TabOrder = 3
              FieldLabel = 'Percentual 1'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cPercentual1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPercentual2: TUniDBEdit
              Left = 27
              Top = 191
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Percentual2'
              DataSource = dsCondicaoCambial
              TabOrder = 6
              FieldLabel = 'Percentual 2'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cPercentual1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPercentual3: TUniDBEdit
              Left = 27
              Top = 247
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Percentual3'
              DataSource = dsCondicaoCambial
              TabOrder = 9
              FieldLabel = 'Percentual 3'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cPercentual1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento1: TUniDBEdit
              Left = 112
              Top = 135
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento1'
              DataSource = dsCondicaoCambial
              TabOrder = 4
              FieldLabel = 'Dias'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cVencimento1Change
              OnExit = cVencimento1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento2: TUniDBEdit
              Left = 112
              Top = 191
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento2'
              DataSource = dsCondicaoCambial
              TabOrder = 7
              FieldLabel = 'Dias'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cVencimento1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento3: TUniDBEdit
              Left = 112
              Top = 247
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento3'
              DataSource = dsCondicaoCambial
              TabOrder = 10
              FieldLabel = 'Dias'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cVencimento1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento4: TUniDBEdit
              Left = 112
              Top = 304
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento4'
              DataSource = dsCondicaoCambial
              TabOrder = 12
              FieldLabel = 'Dias'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
              OnChange = cVencimento1Change
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo1: TUniDBLookupComboBox
              Left = 197
              Top = 135
              Width = 465
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Codigo; Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Classificacao1'
              DataSource = dsCondicaoCambial
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csSimple
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo2: TUniDBLookupComboBox
              Left = 197
              Top = 191
              Width = 465
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Codigo; Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Classificacao2'
              DataSource = dsCondicaoCambial
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csSimple
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo3: TUniDBLookupComboBox
              Left = 197
              Top = 304
              Width = 465
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Codigo; Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Classificacao4'
              DataSource = dsCondicaoCambial
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csSimple
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo4: TUniDBLookupComboBox
              Left = 197
              Top = 247
              Width = 465
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Codigo; Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Classificacao3'
              DataSource = dsCondicaoCambial
              AnyMatch = True
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csSimple
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cTermos_Comerciais: TUniDBMemo
              Left = 27
              Top = 414
              Width = 635
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Termos_Comerciais'
              DataSource = dsCondicaoCambial
              BorderStyle = ubsSolid
              TabOrder = 14
              FieldLabel = 'Termos Cormerciais'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cObservacao: TUniDBMemo
              Left = 27
              Top = 470
              Width = 635
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Observacao'
              DataSource = dsCondicaoCambial
              BorderStyle = ubsSolid
              TabOrder = 15
              FieldLabel = 'Observa'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cTotalPercentual: TUniFormattedNumberEdit
              Left = 27
              Top = 359
              Width = 78
              Height = 55
              Hint = ''
              Enabled = False
              ShowHint = True
              TabOrder = 16
              FieldLabel = 'Total'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalDias: TUniFormattedNumberEdit
              Left = 112
              Top = 359
              Width = 78
              Height = 55
              Hint = ''
              Enabled = False
              ShowHint = True
              TabOrder = 17
              FieldLabel = 'Total'
              FieldLabelWidth = 120
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
  object CondicaoCambial: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CondicaoCambial')
    Left = 40
    Top = 134
  end
  object dsCondicaoCambial: TDataSource
    DataSet = CondicaoCambial
    Left = 42
    Top = 182
  end
  object Plano: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoFinanceiro')
    Left = 40
    Top = 238
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 42
    Top = 286
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 656
    Top = 19
  end
end



