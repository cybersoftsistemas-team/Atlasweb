object fEstoque_Industrializacao: TfEstoque_Industrializacao
  Left = 0
  Top = 0
  Width = 938
  Height = 745
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 35
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    ExplicitWidth = 848
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 157
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      DataSource = dsIndustrial
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar_: TUniSpeedButton
      Left = 157
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
      OnClick = bAdicionar_Click
    end
    object bEditar_: TUniSpeedButton
      Left = 198
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
      OnClick = bEditar_Click
    end
    object bExcluir_: TUniSpeedButton
      Left = 239
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluir_Click
    end
    object bCancelar_: TUniSpeedButton
      Left = 321
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
      OnClick = bCancelar_Click
    end
    object bSalvar_: TUniSpeedButton
      Left = 280
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
      OnClick = bSalvar_Click
    end
    object bFechar_: TUniSpeedButton
      Left = 362
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFechar_Click
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 938
    Height = 710
    Hint = ''
    ActivePage = TabDados
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 848
    ExplicitHeight = 605
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitWidth = 840
      ExplicitHeight = 577
      object pFicha: TUniPanel
        Left = 0
        Top = 0
        Width = 930
        Height = 682
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alClient
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Ficha'#39';'#13#10'}')
        ScreenMask.Color = clBlack
        ScreenMask.Opacity = 1.000000000000000000
        BorderStyle = ubsSolid
        TitleAlign = taCenter
        Title = 'DADOS GERAIS'
        Caption = ''
        ParentAlignmentControl = False
        ExplicitWidth = 840
        ExplicitHeight = 577
        object DBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 28
          Width = 924
          Height = 644
          Hint = ''
          Margins.Bottom = 10
          ShowHint = True
          TitleFont.Style = [fsBold]
          DataSource = dsIndustrial
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.PageSize = 50
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          Align = alClient
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              FieldName = 'Codigo_Mercadoria'
              Title.Alignment = taCenter
              Title.Caption = 'Produto'
              Title.Font.Style = [fsBold]
              Width = 73
              ReadOnly = True
              DisplayFormat = '00000000;0'
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 343
              ReadOnly = True
              DisplayMemo = True
            end
            item
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Title.Caption = 'QTDE'
              Title.Font.Style = [fsBold]
              Width = 98
              ReadOnly = True
              DisplayFormat = ',##0.000'
            end
            item
              FieldName = 'Valor_Unitario'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Style = [fsBold]
              Width = 113
              ReadOnly = True
              DisplayFormat = ',##0.00'
            end
            item
              FieldName = 'Data'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Style = [fsBold]
              Width = 78
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'Notas'
              Title.Alignment = taCenter
              Title.Caption = 'Notas'
              Title.Font.Style = [fsBold]
              Width = 364
              ReadOnly = True
            end
            item
              FieldName = 'Processo'
              Title.Alignment = taCenter
              Title.Caption = 'Processo'
              Title.Font.Style = [fsBold]
              Width = 141
              ReadOnly = True
            end
            item
              FieldName = 'Movimenta_Estoque'
              Title.Alignment = taCenter
              Title.Caption = 'EST'
              Title.Font.Style = [fsBold]
              Width = 34
              ReadOnly = True
            end
            item
              FieldName = 'Movimenta_Inventario'
              Title.Alignment = taCenter
              Title.Caption = 'INV'
              Title.Font.Style = [fsBold]
              Width = 34
              ReadOnly = True
            end>
        end
        object pBarraPesq: TUniPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 25
          Hint = ''
          ShowHint = True
          Align = alTop
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'BarraPesquisa'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = clNone
          ExplicitWidth = 840
          object cPesquisa: TUniEdit
            Left = 0
            Top = 0
            Width = 520
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Text = ''
            Align = alLeft
            TabOrder = 1
            EmptyText = 'Pesquisar'
            ClearButton = True
            OnKeyDown = cPesquisaKeyDown
          end
          object bPesquisa: TUniSpeedButton
            Left = 520
            Top = 0
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
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
    end
    object TabDados: TUniTabSheet
      Hint = ''
      Caption = 'Dados'
      ExplicitWidth = 840
      ExplicitHeight = 577
      DesignSize = (
        930
        682)
      object Panel2: TUniPanel
        Left = 82
        Top = 17
        Width = 787
        Height = 531
        Hint = ''
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object cProduto: TUniDBLookupComboBox
          Left = 18
          Top = 18
          Width = 750
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao_Reduzida'
          ListSource = dsProdutos
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Codigo_Mercadoria'
          DataSource = dsIndustrial
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 1
          Color = clWindow
          FieldLabel = 'Produto'
          FieldLabelSeparator = ' '
          OnExit = cProdutoExit
        end
        object cQtde: TUniDBEdit
          Left = 18
          Top = 126
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Quantidade'
          DataSource = dsIndustrial
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 5
          FieldLabel = 'Quantidade'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object DBGrid2: TUniDBGrid
          AlignWithMargins = True
          Left = 6
          Top = 251
          Width = 775
          Height = 274
          Hint = ''
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          ShowHint = True
          TitleFont.Style = [fsBold]
          DataSource = dsMatPrima
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          TrackOver = False
          Align = alBottom
          ParentFont = False
          TabOrder = 8
          Columns = <
            item
              FieldName = 'Codigo_MateriaPrima'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 71
              ReadOnly = True
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 436
              ReadOnly = True
            end
            item
              FieldName = 'Conversao_M2M3'
              Title.Alignment = taCenter
              Title.Caption = 'Conv'
              Width = 64
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'Quantidade_Utilizada'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Util'
              Width = 92
              ReadOnly = True
            end
            item
              FieldName = 'Saldo'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 92
              ReadOnly = True
            end>
        end
        object cData: TUniDBDateTimePicker
          Left = 18
          Top = 99
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Data'
          DataSource = dsIndustrial
          DateTime = 46268.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
          ParentFont = False
          Font.Color = clBlack
          Font.Style = [fsBold]
          BorderStyle = ubsInset
          FieldLabel = 'Data Entrada'
          FieldLabelSeparator = ' '
        end
        object cNota: TUniDBEdit
          Left = 18
          Top = 45
          Width = 750
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Notas'
          DataSource = dsIndustrial
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          FieldLabel = 'Notas Entrada'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object DBEdit1: TUniDBEdit
          Left = 18
          Top = 153
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Valor_Unitario'
          DataSource = dsIndustrial
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 6
          FieldLabel = 'Valor Unit'#225'rio'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cProcessoOrigem: TUniDBLookupComboBox
          Left = 18
          Top = 72
          Width = 367
          Height = 25
          Hint = ''
          ShowHint = True
          ListSource = dsProcessos
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Processo'
          DataSource = dsIndustrial
          ParentFont = False
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          TabOrder = 3
          Color = clWindow
          FieldLabel = 'Processo'
          FieldLabelSeparator = ' '
        end
        object DBCheckBox1: TUniDBCheckBox
          Left = 18
          Top = 217
          Width = 130
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Movimenta_Inventario'
          DataSource = dsIndustrial
          Caption = 'Movimenta inventario'
          TabOrder = 7
          ParentColor = False
          Color = clBtnFace
        end
        object DBCheckBox2: TUniDBCheckBox
          Left = 18
          Top = 190
          Width = 130
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Movimenta_Estoque'
          DataSource = dsIndustrial
          Caption = 'Movimenta Estoque'
          TabOrder = 9
          ParentColor = False
          Color = clBtnFace
        end
        object cEstoque: TUniEdit
          Left = 274
          Top = 126
          Width = 183
          Height = 25
          Hint = ''
          Enabled = False
          ShowHint = True
          Alignment = taRightJustify
          Text = 'cEstoque'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 10
          Color = 16759739
          ReadOnly = True
        end
      end
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 37
    Top = 260
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao_Reduzida'
      'from Produtos '
      
        'where Codigo in(select distinct Codigo_Produto from ProdutosMate' +
        'riaPrima)')
    Left = 37
    Top = 213
    object ProdutosCodigo: TIntegerField
      DisplayWidth = 10
      FieldName = 'Codigo'
    end
    object ProdutosDescricao_Reduzida: TStringField
      FieldName = 'Descricao_Reduzida'
      Origin = 'Descricao_Reduzida'
      Size = 60
    end
  end
  object ttmp: TFDQuery
    Left = 545
    Top = 146
  end
  object tSaldo: TFDQuery
    Left = 546
    Top = 97
  end
  object tNotas: TFDQuery
    SQL.Strings = (
      'select Nota, Data_Emissao from NotasTerceirosItens')
    Left = 622
    Top = 146
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 624
    Top = 198
  end
  object tEmpresa: TFDQuery
    Left = 699
    Top = 146
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo '
      
        '      ,Modalidade  = (select Descricao from ModalidadeImportacao' +
        ' where Codigo = Modalidade)'
      'from ProcessosImp'
      'where Desativado <> 1 '
      'order by Processo')
    Left = 37
    Top = 308
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 37
    Top = 356
  end
  object tMatPrima: TFDQuery
    SQL.Strings = (
      'select * '
      '      ,Saldo = cast(0 as float)'
      'from ProdutosMateriaPrima '
      'where Codigo_Produto = 20')
    Left = 534
    Top = 294
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'Codigo'
    end
    object StringField1: TStringField
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 250
    end
  end
  object dstMatPrima: TDataSource
    DataSet = tMatPrima
    Left = 535
    Top = 345
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 512
    Top = 2
  end
  object MatPrima: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProdutosMateriaPrima')
    Left = 38
    Top = 410
  end
  object dsMatPrima: TDataSource
    DataSet = MatPrima
    Left = 38
    Top = 460
  end
  object FichaEstoque: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM FichaEstoque')
    Left = 297
    Top = 193
  end
  object dsFichaEstoque: TDataSource
    DataSet = FichaEstoque
    Left = 297
    Top = 243
  end
  object Adicoes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM dicoes')
    Left = 296
    Top = 293
  end
  object dsdicoes: TDataSource
    DataSet = Adicoes
    Left = 297
    Top = 343
  end
  object NotasTerceirosItens: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NotasTerceirosItens')
    Left = 297
    Top = 393
  end
  object dsNotasTerceirosItens: TDataSource
    DataSet = NotasTerceirosItens
    Left = 297
    Top = 443
  end
  object NotasItens: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NotasItens')
    Left = 297
    Top = 493
  end
  object dsNotasItens: TDataSource
    DataSet = NotasItens
    Left = 297
    Top = 543
  end
  object ProdutosTransferencia: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProdutosTransferencia')
    Left = 397
    Top = 93
  end
  object dsProdutosTransferencia: TDataSource
    DataSet = ProdutosTransferencia
    Left = 398
    Top = 146
  end
  object temp: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM temp')
    Left = 397
    Top = 293
  end
  object dstemp: TDataSource
    DataSet = temp
    Left = 397
    Top = 343
  end
  object FichaInventario: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM FichaInventario')
    Left = 397
    Top = 393
  end
  object dsFichaInventario: TDataSource
    DataSet = FichaInventario
    Left = 397
    Top = 443
  end
  object Industrial: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Industrializacao'
      '')
    Left = 37
    Top = 117
    object IndustrialRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object IndustrialCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object IndustrialQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object IndustrialValor_Unitario: TCurrencyField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.00'
    end
    object IndustrialData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object IndustrialNotas: TStringField
      FieldName = 'Notas'
      Origin = 'Notas'
      Size = 60
    end
    object IndustrialProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object IndustrialMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object IndustrialMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object IndustrialDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Reduzida'
      KeyFields = 'Codigo_Mercadoria'
      Size = 150
      Lookup = True
    end
    object IndustrialEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
  end
  object dsIndustrial: TDataSource
    DataSet = Industrial
    Left = 37
    Top = 162
  end
end
