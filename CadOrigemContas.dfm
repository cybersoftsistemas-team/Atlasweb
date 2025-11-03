object fCadOrigemContas: TfCadOrigemContas
  Left = 0
  Top = 0
  Width = 1078
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 0
    Top = 35
    Width = 1078
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 88
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1070
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsOrigemContas
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
        Columns = <
          item
            FieldName = 'Conta'
            Title.Alignment = taCenter
            Title.Caption = 'Conta T'#237'tulo'
            Title.Font.Style = [fsBold]
            Width = 169
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 454
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Origem'
            Title.Alignment = taCenter
            Title.Caption = 'Origem'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nac_Estr'
            Title.Alignment = taCenter
            Title.Caption = 'Nacional'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Consignacao'
            Title.Alignment = taCenter
            Title.Caption = 'Consignacao'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Modalidade'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Pgto_Rec'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1070
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object uniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1070
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 240
        DesignSize = (
          1068
          936)
        ScrollHeight = 601
        object pFicha1: TUniPanel
          Left = 193
          Top = 26
          Width = 640
          Height = 575
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
          object cConsignacao: TUniDBCheckBox
            Left = 37
            Top = 207
            Width = 172
            Height = 20
            Hint = ''
            ShowHint = True
            DataField = 'Consignacao'
            DataSource = dsOrigemContas
            Caption = 'Cliente de Consigna'#231#227'o'
            ParentFont = False
            Font.Height = -13
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cConta: TUniDBLookupComboBox
            Left = 37
            Top = 263
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListOnlyMode = lmFollowSource
            ListField = 'Conta;Nome'
            ListSource = dsPlanoContas
            KeyField = 'Conta'
            ListFieldIndex = 1
            GridMode = lgmPostListValue
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Conta'
            DataSource = dsOrigemContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Grupo do Plano de Contas'
            FieldLabelWidth = 1
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csSimple
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cOrigem: TUniDBRadioGroup
            Left = 37
            Top = 34
            Width = 204
            Height = 145
            Hint = ''
            ShowHint = True
            DataField = 'Origem'
            DataSource = dsOrigemContas
            Caption = 'Origem'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Destinatarios (Clientes)'
              'Destinatarios (Fornecedores)'
              'Bancos'
              'Processos'
              'Plano Financeiro')
            Vertical = False
            Values.Strings = (
              'Clientes'
              'Fornecedores'
              'Bancos'
              'Processos'
              'Plano Financeiro')
            OnClick = cOrigemClick
          end
          object cPgto_Rec: TUniDBRadioGroup
            Left = 279
            Top = 34
            Width = 150
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Pgto_Rec'
            DataSource = dsOrigemContas
            Caption = 'Tipo Movimento'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pagamento'
              'Recebimento')
            Values.Strings = (
              'P'
              'R')
          end
          object cNac_Estr: TUniDBRadioGroup
            Left = 279
            Top = 109
            Width = 150
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Nac_Estr'
            DataSource = dsOrigemContas
            Caption = 'Origem Destinat'#225'rios'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Nacional'
              'Estrangeiro')
            Values.Strings = (
              'N'
              'E')
          end
          object cModalidade: TUniDBLookupComboBox
            Left = 37
            Top = 373
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListOnlyMode = lmFollowSource
            ListField = 'Codigo;Descricao'
            ListSource = dsModalidades
            KeyField = 'Codigo'
            ListFieldIndex = 1
            GridMode = lgmPostListValue
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Modalidade'
            DataSource = dsOrigemContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Modalidade de Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csSimple
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cTerceiros: TUniDBLookupComboBox
            Left = 37
            Top = 428
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListOnlyMode = lmFollowSource
            ListField = 'Codigo;Nome'
            ListSource = dsTerceiros
            KeyField = 'Codigo'
            ListFieldIndex = 1
            GridMode = lgmPostListValue
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Terceiros'
            DataSource = dsOrigemContas
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
            Style = csSimple
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cConta_ECF: TUniDBLookupComboBox
            Left = 37
            Top = 318
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListOnlyMode = lmFollowSource
            ListField = 'Conta;Nome'
            ListSource = dsPlanoECF
            KeyField = 'Conta'
            ListFieldIndex = 1
            GridMode = lgmPostListValue
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Conta_ECF'
            DataSource = dsOrigemContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Plano de Contas Refer'#234'ncial'
            FieldLabelWidth = 1
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csSimple
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cGrupo_Financeiro: TUniDBLookupComboBox
            Left = 37
            Top = 483
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListOnlyMode = lmFollowSource
            ListField = 'Codigo;Nome'
            ListSource = dsGrupos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            GridMode = lgmPostListValue
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Grupo_Financeiro'
            DataSource = dsOrigemContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Grupo do Plano Financeiro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csSimple
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cGrupo_Processo: TUniDBRadioGroup
            Left = 463
            Top = 34
            Width = 146
            Height = 97
            Hint = ''
            ShowHint = True
            DataField = 'Grupo_Processo'
            DataSource = dsOrigemContas
            Caption = 'Grupo de Processo'
            TabOrder = 10
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Adiantamentos'
              'Despesas'
              'Impostos')
            Values.Strings = (
              'A'
              'D'
              'I')
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1078
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
      DataSource = dsOrigemContas
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
  object dsOrigemContas: TDataSource
    DataSet = OrigemContas
    Left = 120
    Top = 80
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 120
    Top = 136
  end
  object dsModalidades: TDataSource
    DataSet = Modalidades
    Left = 120
    Top = 190
  end
  object dsTerceiros: TDataSource
    DataSet = Terceiros
    Left = 120
    Top = 248
  end
  object Terceiros: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Terceiros')
    Left = 40
    Top = 248
  end
  object OrigemContas: TFDQuery
    BeforePost = OrigemContasBeforePost
    BeforeDelete = OrigemContasBeforeDelete
    AfterScroll = OrigemContasAfterScroll
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OrigemContas')
    Left = 40
    Top = 80
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    Left = 40
    Top = 136
  end
  object Modalidades: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadeImportacao')
    Left = 40
    Top = 189
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
    Left = 120
    Top = 312
  end
  object Grupos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoFinanceiroGrupos')
    Left = 40
    Top = 376
  end
  object dsGrupos: TDataSource
    DataSet = Grupos
    Left = 120
    Top = 376
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 100
    Top = 75
  end
end




