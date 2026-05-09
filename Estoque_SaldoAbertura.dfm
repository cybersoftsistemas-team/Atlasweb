object fEstoque_SaldoAbertura: TfEstoque_SaldoAbertura
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
      DataSource = dsTransf
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
    ActivePage = aLista
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeinti(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'PastaInterna'#39';'#13#10'}')
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
          ClearButton = True
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
      object DBGrid2: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 881
        Hint = ''
        DataSource = dsTransf
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        BorderStyle = ubsSolid
        TrackOver = False
        Align = alClient
        TabOrder = 1
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Produto_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 83
          end
          item
            FieldName = 'Descricao'
            Title.Caption = 'Descricao'
            Width = 64
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 82
            Alignment = taCenter
          end
          item
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 107
          end
          item
            FieldName = 'Valor_Unitario'
            Title.Caption = 'Valor_Unitario'
            Width = 101
          end
          item
            FieldName = 'Inventario'
            Title.Alignment = taCenter
            Title.Caption = 'Inv'
            Width = 38
            Alignment = taCenter
          end
          item
            FieldName = 'Estoque'
            Title.Alignment = taCenter
            Title.Caption = 'Est'
            Width = 38
            Alignment = taCenter
          end
          item
            FieldName = 'Observacao'
            Title.Alignment = taCenter
            Title.Caption = 'Observacao'
            Width = 425
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
        ScrollHeight = 367
        object pFicha: TUniPanel
          Left = 110
          Top = 26
          Width = 831
          Height = 341
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
          object cObs: TUniDBMemo
            Left = 11
            Top = 169
            Width = 804
            Height = 81
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsTransf
            BorderStyle = ubsInset
            TabOrder = 5
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 110
          end
          object cProduto: TUniDBLookupComboBox
            Left = 11
            Top = 13
            Width = 804
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Descricao'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Produto_Entrada'
            DataSource = dsTransf
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 110
            NormalizeString = True
            Style = csDropDown
          end
          object cSaldo: TUniFormattedNumberEdit
            Left = 11
            Top = 65
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            TabOrder = 3
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Saldo do Estoque'
            FieldLabelWidth = 110
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cData: TUniDBDateTimePicker
            Left = 11
            Top = 91
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data'
            DataSource = dsTransf
            DateTime = 45997.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            BorderStyle = ubsInset
            FieldLabel = 'Data Entrada'
            FieldLabelWidth = 110
          end
          object cInventario: TUniDBCheckBox
            Left = 11
            Top = 284
            Width = 126
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Inventario'
            DataSource = dsTransf
            Caption = 'Movimenta inventario'
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cEstoque: TUniDBCheckBox
            Left = 11
            Top = 307
            Width = 116
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Estoque'
            DataSource = dsTransf
            Caption = 'Movimenta Estoque'
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 11
            Top = 39
            Width = 405
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Declaracao;Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Processo_Entrada'
            DataSource = dsTransf
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 110
            NormalizeString = True
            Style = csDropDown
          end
          object cQtde: TUniDBFormattedNumberEdit
            Left = 11
            Top = 117
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Entrada'
            DataSource = dsTransf
            TabOrder = 8
            FieldLabel = 'Quantidade'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor: TUniDBFormattedNumberEdit
            Left = 11
            Top = 143
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Unitario'
            DataSource = dsTransf
            TabOrder = 9
            FieldLabel = 'Valor Unit'#225'rio'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
        end
      end
    end
  end
  object tSaldo: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 37
    Top = 330
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo, '
      '       Descricao,'
      
        '       (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        AS Disponivel'
      'FROM Produtos PD'
      
        'WHERE  (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) +'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        > 0')
    Left = 37
    Top = 228
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 37
    Top = 274
  end
  object Transf: TFDQuery
    BeforePost = TransfBeforePost
    BeforeDelete = TransfBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProdutosTransferencia')
    Left = 37
    Top = 127
    object TransfRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
      ReadOnly = True
    end
    object TransfEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object TransfData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object TransfProduto_Entrada: TIntegerField
      FieldName = 'Produto_Entrada'
      Origin = 'Produto_Entrada'
    end
    object TransfProduto_Saida: TIntegerField
      FieldName = 'Produto_Saida'
      Origin = 'Produto_Saida'
    end
    object TransfQuantidade_Entrada: TBCDField
      FieldName = 'Quantidade_Entrada'
      Origin = 'Quantidade_Entrada'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
    end
    object TransfQuantidade_Saida: TBCDField
      FieldName = 'Quantidade_Saida'
      Origin = 'Quantidade_Saida'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
    end
    object TransfValor_Unitario: TBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object TransfInventario: TBooleanField
      FieldName = 'Inventario'
      Origin = 'Inventario'
    end
    object TransfEstoque: TBooleanField
      FieldName = 'Estoque'
      Origin = 'Estoque'
    end
    object TransfProcesso_Entrada: TStringField
      FieldName = 'Processo_Entrada'
      Origin = 'Processo_Entrada'
      Size = 15
    end
    object TransfProcesso_Saida: TStringField
      FieldName = 'Processo_Saida'
      Origin = 'Processo_Saida'
      Size = 15
    end
    object TransfMotivo: TStringField
      FieldName = 'Motivo'
      Origin = 'Motivo'
      FixedChar = True
      Size = 1
    end
    object TransfNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
    end
    object TransfCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object TransfObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
  end
  object dsTransf: TDataSource
    DataSet = Transf
    Left = 37
    Top = 177
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 416
    Top = 1
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo, DUIMP from ProcessosImp')
    Left = 37
    Top = 380
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 37
    Top = 426
  end
end
