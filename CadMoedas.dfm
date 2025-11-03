object fCadMoedas: TfCadMoedas
  Left = 0
  Top = 0
  Width = 1288
  Height = 770
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
      DataSource = dsMoedas
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
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 0
    Top = 35
    Width = 1288
    Height = 735
    Hint = ''
    BodyRTL = False
    ActivePage = aLista
    Plain = True
    Align = alClient
    TabOrder = 0
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
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 680
        Hint = ''
        DataSource = dsMoedas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 52
          end
          item
            FieldName = 'Simbolo'
            Title.Alignment = taCenter
            Title.Caption = 'Simbolo'
            Width = 64
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 145
          end
          item
            FieldName = 'Pais'
            Title.Alignment = taCenter
            Title.Caption = 'Pa'#237's'
            Width = 183
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
      DesignSize = (
        1280
        707)
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 1
      end
      object pFicha: TUniPanel
        Left = 89
        Top = 19
        Width = 425
        Height = 339
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
        object cPais: TUniDBEdit
          Left = 30
          Top = 197
          Width = 362
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Pais'
          DataSource = dsMoedas
          TabOrder = 1
          FieldLabel = 'Pa'#237's'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsSolid
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cTipo: TUniDBEdit
          Left = 30
          Top = 253
          Width = 115
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Tipo'
          DataSource = dsMoedas
          TabOrder = 2
          FieldLabel = 'Tipo'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsSolid
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cSimbolo: TUniDBEdit
          Left = 30
          Top = 141
          Width = 115
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Simbolo'
          DataSource = dsMoedas
          TabOrder = 3
          FieldLabel = 'Simbolo'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsSolid
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cNome: TUniDBEdit
          Left = 30
          Top = 85
          Width = 362
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Nome'
          DataSource = dsMoedas
          TabOrder = 4
          FieldLabel = 'Nome'
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
          Left = 30
          Top = 29
          Width = 115
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Codigo'
          DataSource = dsMoedas
          TabOrder = 5
          FieldLabel = 'C'#243'digo '
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsSolid
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
    end
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Moedas')
    Left = 24
    Top = 86
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 26
    Top = 142
  end
  object Alerta: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 424
  end
end




