object fCadProdutosMateriaPrima: TfCadProdutosMateriaPrima
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
      DataSource = dsMateriaPrima
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
        Width = 1280
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 2
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
      object Panel1: TUniPanel
        Left = 0
        Top = 908
        Width = 1280
        Height = 30
        Hint = ''
        Align = alBottom
        TabOrder = 0
        Caption = ''
      end
      object RxDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 881
        Hint = ''
        DataSource = dsMateriaPrima
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'Codigo_MateriaPrima'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 128
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 747
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
        ScrollHeight = 297
        object pFicha: TUniPanel
          Left = 217
          Top = 46
          Width = 680
          Height = 251
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
          object cCodigo_MateriaPrima: TUniDBLookupComboBox
            Left = 15
            Top = 68
            Width = 644
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dstProdutosMat
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_MateriaPrima'
            DataSource = dsMateriaPrima
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Mat'#233'ria Prima'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cConversao_M2M3: TUniDBCheckBox
            Left = 16
            Top = 193
            Width = 329
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Conversao_M2M3'
            DataSource = dsMateriaPrima
            Caption = 'Converter de Metro C'#250'bico (M2) para Metro Quadrado (M3).'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_Utilizada: TUniDBEdit
            Left = 15
            Top = 124
            Width = 121
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Utilizada'
            DataSource = dsMateriaPrima
            TabOrder = 3
            FieldLabel = 'Quantidade Utilizada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cCodigo_Produto: TUniDBLookupComboBox
            Left = 15
            Top = 13
            Width = 644
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dstProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_Produto'
            DataSource = dsMateriaPrima
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object tRegistro: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Registro) FROM ProdutosMateriaPrima')
    Left = 68
    Top = 120
  end
  object tProdutosMat: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Descricao_Reduzida '
      '      ,NCM'
      'FROM Produtos '
      'ORDER BY Descricao_Reduzida')
    Left = 68
    Top = 264
  end
  object dstProdutosMat: TDataSource
    DataSet = tProdutosMat
    Left = 68
    Top = 312
  end
  object MateriaPrima: TFDQuery
    BeforePost = ProdutosMateriaPrimaBeforePost
    BeforeDelete = ProdutosMateriaPrimaBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * from ProdutosMateriaPrima')
    Left = 68
    Top = 166
  end
  object dsMateriaPrima: TDataSource
    DataSet = MateriaPrima
    Left = 68
    Top = 214
  end
  object tProdutos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo, Descricao_Reduzida, NCM'
      'from Produtos')
    Left = 68
    Top = 366
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 68
    Top = 414
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



