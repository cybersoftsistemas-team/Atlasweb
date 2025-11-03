object fCadLinhas: TfCadLinhas
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
    ExplicitWidth = 991
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 143
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsDetalhes
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
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 0
    Top = 35
    Width = 1288
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = aLista
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitWidth = 991
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
        Width = 983
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 3
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
        ExplicitTop = 904
        object cPesquisa: TUniEdit
          Left = 1
          Top = 1
          Width = 520
          Height = 32
          Hint = ''
          BorderStyle = ubsNone
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
          Height = 32
          Hint = ''
          Caption = ''
          Align = alLeft
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 10
          TabOrder = 2
          OnClick = bPesquisaClick
          ExplicitLeft = 388
        end
      end
      object Panel1: TUniPanel
        Left = 0
        Top = 317
        Width = 436
        Height = 30
        Hint = ''
        Align = alBottom
        TabOrder = 0
        Caption = ''
        object bRelacionar: TUniButton
          Left = 253
          Top = 1
          Width = 115
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          ShowHint = True
          ParentShowHint = False
          Caption = 'Relacionar '#224' Produtos'
          TabOrder = 1
          OnClick = bRelacionarClick
        end
      end
      object Panel2: TUniPanel
        Left = 4
        Top = 50
        Width = 428
        Height = 53
        Hint = ''
        Enabled = False
        TabOrder = 1
        Caption = ''
        object cCodigo: TUniDBEdit
          Left = 5
          Top = 5
          Width = 58
          Height = 55
          Hint = ''
          Enabled = False
          DataField = 'Codigo'
          DataSource = dsDetalhes
          TabOrder = 0
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
        object cDescricao: TUniDBEdit
          Left = 5
          Top = 61
          Width = 356
          Height = 55
          Hint = ''
          DataField = 'Descricao'
          DataSource = dsDetalhes
          TabOrder = 1
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
      end
      object Grade: TUniDBGrid
        Left = 4
        Top = 107
        Width = 428
        Height = 206
        Hint = ''
        DataSource = dsDetalhes
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        LoadMask.Message = 'Loading data...'
        TabOrder = 2
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 46
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 360
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1288
      ExplicitHeight = 966
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
        ScrollHeight = 250
        object pFicha: TUniPanel
          Left = 584
          Top = 46
          Width = 513
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
  object tCodigo: TFDQuery
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ProdutosLinhas')
    Left = 252
    Top = 8
  end
  object tPesquisa: TFDQuery
    Left = 284
    Top = 8
  end
  object Detalhes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Detalhes')
    Left = 32
    Top = 238
  end
  object dsDetalhes: TDataSource
    DataSet = Detalhes
    Left = 106
    Top = 238
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




