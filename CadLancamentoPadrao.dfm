object fCadLancamentoPadrao: TfCadLancamentoPadrao
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
      DataSource = dsLancamentoPadrao
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
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 43
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
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 881
        Hint = ''
        DataSource = dsLancamentoPadrao
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 400
          end
          item
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 109
          end
          item
            FieldName = 'Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vencto'
            Width = 64
            Alignment = taCenter
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
        ExplicitLeft = -16
        ExplicitTop = 16
        DesignSize = (
          1278
          936)
        ScrollHeight = 577
        object pFicha: TUniPanel
          Left = 176
          Top = 11
          Width = 499
          Height = 566
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
          object cVencimento: TUniDBEdit
            Left = 13
            Top = 71
            Width = 110
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento'
            DataSource = dsLancamentoPadrao
            TabOrder = 8
            FieldLabel = 'Vencimento (Dia)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clBanco: TUniDBLookupComboBox
            Left = 13
            Top = 401
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Conta'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Banco'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cObservacao: TUniDBMemo
            Left = 13
            Top = 457
            Width = 474
            Height = 96
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsLancamentoPadrao
            BorderStyle = ubsSolid
            TabOrder = 7
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cValor: TUniDBEdit
            Left = 129
            Top = 71
            Width = 184
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Valor'
            DataSource = dsLancamentoPadrao
            TabOrder = 9
            FieldLabel = 'Valor'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clClassificacao: TUniDBLookupComboBox
            Left = 13
            Top = 126
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsPlanoFin
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Classificacao'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Classifica'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clFornecedor: TUniDBLookupComboBox
            Left = 13
            Top = 291
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsBeneficiario
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'Beneficiario'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Benefici'#225'rio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clDocumento: TUniDBLookupComboBox
            Left = 13
            Top = 236
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTipoDoc
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Documento'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clModalidade: TUniDBLookupComboBox
            Left = 13
            Top = 346
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsFormaPgto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Modalidade'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Forma Pagamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object clCentro_Custo: TUniDBLookupComboBox
            Left = 13
            Top = 181
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Centro_Custo'
            DataSource = dsLancamentoPadrao
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Centro de Custo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cDescricao: TUniDBEdit
            Left = 13
            Top = 15
            Width = 474
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsLancamentoPadrao
            TabOrder = 0
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object tReg: TFDQuery
    Left = 128
    Top = 88
  end
  object LancamentoPadrao: TFDQuery
    BeforePost = LancamentoPadraoBeforePost
    BeforeDelete = LancamentoPadraoBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from LancamentoPadrao')
    Left = 48
    Top = 78
    object LancamentoPadraoRegistro: TSmallintField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object LancamentoPadraoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 30
    end
    object LancamentoPadraoClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      Size = 15
    end
    object LancamentoPadraoCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      Size = 10
    end
    object LancamentoPadraoDocumento: TStringField
      FieldName = 'Documento'
      Origin = 'Documento'
      Size = 10
    end
    object LancamentoPadraoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Valor'
    end
    object LancamentoPadraoModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
    object LancamentoPadraoVencimento: TSmallintField
      FieldName = 'Vencimento'
      Origin = 'Vencimento'
    end
    object LancamentoPadraoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object LancamentoPadraoObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object LancamentoPadraoBeneficiario: TSmallintField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
    end
    object LancamentoPadraoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
  end
  object dsLancamentoPadrao: TDataSource
    DataSet = LancamentoPadrao
    Left = 48
    Top = 126
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 520
    Top = 4
  end
  object Beneficiario: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = case when isnull(CNPJ, '#39#39') = '#39#39' then CNPJ else' +
        ' ISNULL(CPF, '#39#39') end'
      '      ,Fornecedor'
      '      ,Cliente'
      'from Destinatarios'
      'order by Nome')
    Left = 48
    Top = 177
  end
  object dsBeneficiario: TDataSource
    DataSet = Beneficiario
    Left = 48
    Top = 225
  end
  object Bancos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,Conta'
      'from Bancos'
      'order by Nome')
    Left = 48
    Top = 273
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 48
    Top = 321
  end
  object PlanoFin: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,Tributo'
      'from PlanoFinanceiro'
      'order by Nome')
    Left = 126
    Top = 178
  end
  object dsPlanoFin: TDataSource
    DataSet = PlanoFin
    Left = 126
    Top = 226
  end
  object CentroCusto: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      'from CentroCusto'
      'order by Codigo, Nome')
    Left = 48
    Top = 369
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 48
    Top = 417
  end
  object Modal: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      'from ModalidadesPagamento'
      'order by Descricao')
    Left = 126
    Top = 274
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 126
    Top = 322
  end
  object Processos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo'
      '      ,Declaracao = DI'
      '      ,Tipo = '#39'IMPORTA'#199#195'O'#39
      '      ,Cliente'
      
        '      ,Cliente_Nome = (select Nome from Destinatarios Dst where ' +
        'Dst.Codigo = PI.Cliente)'
      'from ProcessosImp PI'
      'where Data_Encerramento is null'
      'union all'
      'select Processo'
      '      ,Declaracao = DE'
      '      ,Tipo = '#39'EXPORTA'#199#195'O'#39' '
      '      ,Cliente'
      
        '      ,Cliente_Nome = (select Nome from Destinatarios Dst where ' +
        'Dst.Codigo = PE.Cliente)'
      'from ProcessosExp PE'
      'where Data_Encerramento is null'
      'order by Tipo, Declaracao')
    Left = 126
    Top = 370
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 126
    Top = 418
  end
  object TipoDoc: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome FROM TipoDocumento')
    Left = 48
    Top = 465
  end
  object dsTipoDoc: TDataSource
    DataSet = TipoDoc
    Left = 48
    Top = 513
  end
  object Adiantamentos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select distinct Destinatario'
      
        '      ,Nome = (select Nome from Destinatarios Where Codigo = Des' +
        'tinatario) '
      'from PagarReceber'
      
        'where isnull((select Adiantamento from PlanoFinanceiro Where Cod' +
        'igo = Classificacao), 0) = 1')
    Left = 126
    Top = 466
  end
  object dsAdiantamentos: TDataSource
    DataSet = Adiantamentos
    Left = 126
    Top = 514
  end
  object FormaPgto: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      'from FormaPagamento'
      '')
    Left = 48
    Top = 561
  end
  object dsFormaPgto: TDataSource
    DataSet = FormaPgto
    Left = 48
    Top = 609
  end
  object Empresas: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from   Empresas'
      '')
    Left = 126
    Top = 562
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 126
    Top = 610
  end
  object tExiste: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from   Empresas'
      '')
    Left = 48
    Top = 665
  end
  object tDias: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from   Empresas'
      '')
    Left = 126
    Top = 666
  end
end



