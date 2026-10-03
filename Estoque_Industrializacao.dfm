object fEstoque_Industrializacao: TfEstoque_Industrializacao
  Left = 0
  Top = 0
  Width = 897
  Height = 699
  OnCreate = uniFrameCreate
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 897
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
    Width = 897
    Height = 664
    Hint = ''
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 889
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'BarraPesquisa'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
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
      object gIndust: TUniDBGrid
        Left = 0
        Top = 25
        Width = 889
        Height = 611
        Hint = ''
        Margins.Bottom = 10
        ShowHint = True
        ParentShowHint = False
        TitleFont.Style = [fsBold]
        DataSource = dsIndustrial
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.PageSize = 50
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsNone
        Align = alClient
        ParentFont = False
        TabOrder = 1
        OnDblClick = gIndustDblClick
        Columns = <
          item
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Title.Font.Style = [fsBold]
            Width = 73
            ReadOnly = True
            DisplayFormat = '00000000'
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
    end
    object TabDados: TUniTabSheet
      Hint = ''
      Caption = 'Ficha'
      DesignSize = (
        889
        636)
      object Panel2: TUniPanel
        Left = 36
        Top = 16
        Width = 799
        Height = 586
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object gMateria: TUniDBGrid
          AlignWithMargins = True
          Left = 6
          Top = 225
          Width = 787
          Height = 158
          Hint = ''
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Enabled = False
          ShowHint = True
          HeaderTitle = 'MAT'#201'RIA-PRIMA UTILIZADA PELO PRODUTO'
          HeaderTitleAlign = taCenter
          TitleFont.Style = [fsBold]
          DataSource = dsMatPrima
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          TrackOver = False
          Align = alClient
          ParentFont = False
          TabOrder = 1
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
              Title.Caption = 'Quantidade'
              Width = 92
              ReadOnly = True
              DisplayFormat = ',##0.000'
            end
            item
              FieldName = 'Saldo'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 92
              ReadOnly = True
              DisplayFormat = ',##0.00'
            end>
        end
        object Ficha: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 787
          Height = 213
          Hint = ''
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Enabled = False
          ShowHint = True
          Align = alTop
          TabOrder = 2
          BorderStyle = ubsInset
          ShowCaption = False
          Caption = 'Ficha'
          object cProduto: TUniDBLookupComboBox
            Tag = 1
            Left = 16
            Top = 40
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
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            ForceSelection = True
            OnExit = cProdutoExit
          end
          object cQtde: TUniDBEdit
            Tag = 1
            Left = 16
            Top = 148
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Quantidade'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cData: TUniDBDateTimePicker
            Tag = 1
            Left = 16
            Top = 67
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
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
          end
          object cValor_Unitario: TUniDBEdit
            Tag = 1
            Left = 16
            Top = 175
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Unitario'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Valor Unit'#225'rio'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 327
            Top = 67
            Width = 439
            Height = 25
            Hint = ''
            ShowHint = True
            ListSource = dsProcessos
            ListFieldIndex = 0
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Processo'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            ForceSelection = True
          end
          object cEstoque: TUniEdit
            Left = 272
            Top = 148
            Width = 183
            Height = 25
            Hint = ''
            Enabled = False
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            Text = '0'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 8
            Color = 16759739
            ReadOnly = True
            FieldLabel = 'Estoque'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object cDestinatario: TUniDBLookupComboBox
            Tag = 1
            Left = 16
            Top = 94
            Width = 750
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Codigo;Nome'
            ListSource = dsFornecedores
            KeyField = 'Codigo'
            ListFieldIndex = 2
            BorderStyle = ubsInset
            DataField = 'Destinatario'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Fornecedor'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            ForceSelection = True
            OnExit = cProdutoExit
          end
          object cCFOP: TUniDBLookupComboBox
            Tag = 1
            Left = 16
            Top = 121
            Width = 750
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CFOP'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'CFOP'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            ForceSelection = True
            OnExit = cProdutoExit
          end
          object cEmpresa: TUniDBLookupComboBox
            Tag = 1
            Left = 16
            Top = 13
            Width = 750
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Filial; Razao_Social'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 2
            BorderStyle = ubsInset
            DataField = 'Empresa'
            DataSource = dsIndustrial
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Empresa'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            ForceSelection = True
            OnExit = cProdutoExit
          end
        end
        object gNotas: TUniDBGrid
          AlignWithMargins = True
          Left = 6
          Top = 389
          Width = 787
          Height = 191
          Hint = ''
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Enabled = False
          ShowHint = True
          HeaderTitle = 'NOTAS FISCAIS'
          HeaderTitleAlign = taCenter
          TitleFont.Style = [fsBold]
          DataSource = dsNotas
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          TrackOver = False
          Align = alBottom
          ParentFont = False
          TabOrder = 3
          Columns = <
            item
              FieldName = 'Nota'
              Title.Alignment = taCenter
              Title.Caption = 'Nota'
              Title.Font.Style = [fsBold]
              Width = 95
              ReadOnly = True
            end
            item
              FieldName = 'Data_Emissao'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Style = [fsBold]
              Width = 76
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'ES'
              Title.Alignment = taCenter
              Title.Caption = 'E/S'
              Title.Font.Style = [fsBold]
              Width = 61
              ReadOnly = True
            end
            item
              FieldName = 'Destinatario_Nome'
              Title.Alignment = taCenter
              Title.Caption = 'Destinatario'
              Title.Font.Style = [fsBold]
              Width = 414
              ReadOnly = True
            end
            item
              FieldName = 'Destinatario_CNPJ_CPF'
              Title.Alignment = taCenter
              Title.Caption = 'CNPJ'
              Title.Font.Style = [fsBold]
              Width = 109
              Alignment = taCenter
              ReadOnly = True
              DisplayFormat = '##.###.###/####-##;0'
            end>
        end
      end
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 203
    Top = 389
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao_Reduzida'
      'from Produtos '
      
        'where Codigo in(select distinct Codigo_Produto from ProdutosMate' +
        'riaPrima)')
    Left = 203
    Top = 338
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 76
    Top = 338
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
    Left = 268
    Top = 338
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 268
    Top = 389
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
    Left = 334
    Top = 338
  end
  object dsMatPrima: TDataSource
    DataSet = MatPrima
    Left = 334
    Top = 389
  end
  object Industrial: TFDQuery
    AfterScroll = IndustrialAfterScroll
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Industrializacao'
      '')
    Left = 141
    Top = 338
    object IndustrialRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IndustrialEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object IndustrialData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object IndustrialCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object IndustrialProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object IndustrialQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object IndustrialValor_Unitario: TCurrencyField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object IndustrialDestinatario: TSmallintField
      FieldName = 'Destinatario'
      Origin = 'Destinatario'
    end
    object IndustrialCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      EditMask = '#.###;0'
      FixedChar = True
      Size = 4
    end
  end
  object dsIndustrial: TDataSource
    DataSet = Industrial
    Left = 141
    Top = 389
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Fornecedor = 1')
    Left = 408
    Top = 338
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 408
    Top = 389
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Fornecedor = 1')
    Left = 474
    Top = 338
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 474
    Top = 389
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ, Filial, Razao_Social from Empresas')
    Left = 526
    Top = 338
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 526
    Top = 389
  end
  object MascaraSal: TUniScreenMask
    AttachedControl = bSalvar_
    Enabled = True
    DisplayMessage = 'Aguarde processando ficha de Estoque/Inventario'
    TargetControl = Panel2
    Left = 322
    Top = 519
  end
  object MascaraExc: TUniScreenMask
    AttachedControl = bExcluir_
    Enabled = True
    DisplayMessage = 'Aguarde processando ficha de Estoque/Inventario'
    TargetControl = Panel2
    Left = 400
    Top = 518
  end
  object Notas: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Nota'
      '      ,Data_Emissao'
      '      ,ES = iif(nf.ES = 0, '#39'ENTRADA'#39', '#39'SA'#205'DA'#39')'
      '      ,Emissao = iif(nf.Emissao = '#39'P'#39', '#39'PROPRIA'#39', '#39'TERCEIROS'#39')'
      '      ,Destinatario_Nome'
      '      ,Destinatario_CNPJ_CPF'
      'from NotasItens ni'
      'inner join NotasFiscais nf on nf.Nota_id = ni.Nota_id'
      
        '--where exists (select 1 from ProdutosMateriaPrima pmp where pmp' +
        '.Codigo_Produto = 22 and pmp.Codigo_MateriaPrima = ni.Codigo_Mer' +
        'cadoria)')
    Left = 579
    Top = 338
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 579
    Top = 389
  end
  object FichaEstoque: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select CNPJ, Filial, Razao_Social from Empresas')
    Left = 639
    Top = 338
  end
end
