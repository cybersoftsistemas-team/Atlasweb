object fCadProdutos: TfCadProdutos
  Left = 0
  Top = 0
  Width = 1284
  Height = 819
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1284
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
      DataSource = dsProdutos
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
    Width = 1284
    Height = 784
    Hint = ''
    ActivePage = tabProduto
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
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
        Width = 1276
        Height = 729
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsProdutos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.PageSize = 50
        WebOptions.FetchAll = True
        LoadMask.WaitData = True
        LoadMask.Message = 'Carregando dados...'
        LoadMask.Color = clBtnFace
        RowHeight = 24
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        Summary.Enabled = True
        Summary.GrandTotal = True
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 86
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao_Reduzida'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 504
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Title.Font.Style = [fsBold]
            Width = 120
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'UM'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Style = [fsBold]
            Width = 54
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Desativado'
            Title.Alignment = taCenter
            Title.Caption = 'Desativado'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
    end
    object tabProduto: TUniTabSheet
      Hint = ''
      Caption = 'Dados do Produto'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1257
          754)
        ScrollHeight = 1070
        object pFicha: TUniPanel
          Left = 269
          Top = 13
          Width = 924
          Height = 1057
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
          object cCodigo: TUniDBEdit
            Left = 21
            Top = 19
            Width = 97
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsProdutos
            TabOrder = 1
            FieldLabel = 'C'#243'digo Sistema'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object clTipo: TUniDBLookupComboBox
            Left = 21
            Top = 269
            Width = 348
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsTipoProduto
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Tipo de Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clNCM: TUniDBLookupComboBox
            Left = 21
            Top = 69
            Width = 587
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'NCM;Produto'
            ListSource = dsNCM
            KeyField = 'NCM'
            ListFieldIndex = 1
            DataField = 'NCM'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'NCM'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cCodigo_Fabricante: TUniDBEdit
            Left = 126
            Top = 19
            Width = 238
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_Fabricante'
            DataSource = dsProdutos
            CharCase = ecUpperCase
            TabOrder = 4
            FieldLabel = 'C'#243'digo Fabrica'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cFabricante: TUniDBLookupComboBox
            Left = 21
            Top = 169
            Width = 587
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsFabricantes
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Fabricante'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Fabricante'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFornecedor: TUniDBLookupComboBox
            Left = 21
            Top = 219
            Width = 587
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsFornecedores
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Fornecedor'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Fornecedor'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clLinha: TUniDBLookupComboBox
            Left = 375
            Top = 269
            Width = 233
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Descricao'
            ListSource = dsLinhas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Linha'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Linha'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cGTIN: TUniDBEdit
            Left = 21
            Top = 370
            Width = 289
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'GTIN_Caixa'
            DataSource = dsProdutos
            TabOrder = 8
            FieldLabel = 'GTIN - Caixa (C'#243'd.Barras)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cGTIN_Unidade: TUniDBEdit
            Left = 319
            Top = 370
            Width = 289
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'GTIN_Unidade'
            DataSource = dsProdutos
            TabOrder = 9
            FieldLabel = 'GTIN - Unidade (C'#243'd.Barras)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cDesativado: TUniDBCheckBox
            Left = 375
            Top = 51
            Width = 88
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Desativado'
            DataSource = dsProdutos
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Desativado'
            ParentFont = False
            Font.Color = clRed
            TabOrder = 10
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clTipo_Item: TUniDBLookupComboBox
            Left = 21
            Top = 319
            Width = 587
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Item'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Tipo Item (SPED)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDescricao_Ingles: TUniDBMemo
            Left = 21
            Top = 823
            Width = 881
            Height = 200
            Hint = ''
            ShowHint = True
            DataField = 'Descricao_Ingles'
            DataSource = dsProdutos
            TabOrder = 12
            FieldLabel = 'Descri'#231#227'o (Ingl'#234's)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDescricao: TUniDBMemo
            Left = 21
            Top = 623
            Width = 881
            Height = 200
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsProdutos
            TabOrder = 13
            FieldLabel = 'Descri'#231#227'o (Portugu'#234's)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDescricao_Reduzida: TUniDBEdit
            Left = 21
            Top = 572
            Width = 881
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Descricao_Reduzida'
            DataSource = dsProdutos
            TabOrder = 14
            FieldLabel = 'Descri'#231#227'o Reduzida'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cLargura: TUniDBEdit
            Left = 129
            Top = 521
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Largura'
            DataSource = dsProdutos
            TabOrder = 15
            FieldLabel = 'Largura'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cUnidade: TUniDBLookupComboBox
            Left = 21
            Top = 420
            Width = 258
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'UM_Tributaria'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 16
            Color = clWindow
            FieldLabel = 'Unidade Medida (Tributada)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clUnidade_Origem: TUniDBLookupComboBox
            Left = 21
            Top = 470
            Width = 258
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'UM'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'Unidade Medida (Faturamento)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_Volumes: TUniDBEdit
            Left = 285
            Top = 420
            Width = 127
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Volumes'
            DataSource = dsProdutos
            TabOrder = 18
            FieldLabel = 'Qtde.unidade Volumes'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAltura: TUniDBEdit
            Left = 21
            Top = 521
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Altura'
            DataSource = dsProdutos
            TabOrder = 19
            FieldLabel = 'Altura/Espessura'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cComprimento: TUniDBEdit
            Left = 237
            Top = 521
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Comprimento'
            DataSource = dsProdutos
            TabOrder = 20
            FieldLabel = 'Comprimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cTipoConversao: TUniDBComboBox
            Left = 418
            Top = 470
            Width = 190
            Height = 50
            Hint = ''
            ShowHint = True
            AnyMatch = True
            DataField = 'Tipo_Conversao'
            DataSource = dsProdutos
            Style = csDropDownList
            Items.Strings = (
              'Divide'
              'Multiplica')
            TabOrder = 21
            FieldLabel = 'Tipo convers'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
            SelectOnFocus = True
          end
          object cQuantidade_Unidade: TUniDBEdit
            Left = 285
            Top = 470
            Width = 127
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Unidade'
            DataSource = dsProdutos
            TabOrder = 22
            FieldLabel = 'Qtde.unidade Medida'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniGroupBox1: TUniGroupBox
            Left = 625
            Top = 16
            Width = 277
            Height = 272
            Hint = ''
            ShowHint = True
            Caption = 'Foto'
            TabOrder = 23
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            DesignSize = (
              277
              272)
            object iFoto: TUniImage
              Left = 12
              Top = 21
              Width = 253
              Height = 238
              Hint = ''
              ShowHint = True
              Center = True
              Stretch = True
              Transparent = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CaixaSimples'#39';'#13#10'}')
            end
            object bFoto: TUniSpeedButton
              Left = 235
              Top = 228
              Width = 25
              Height = 25
              Hint = ''
              ShowHint = True
              Caption = ''
              Anchors = [akRight, akBottom]
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 13
              TabOrder = 2
              OnClick = bFotoClick
            end
          end
          object cOrigem: TUniDBLookupComboBox
            Left = 21
            Top = 119
            Width = 587
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsOrigem
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Origem'
            DataSource = dsProdutos
            AnyMatch = True
            TabOrder = 24
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Origem'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPeso_Liquido: TUniDBEdit
            Left = 346
            Top = 521
            Width = 121
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Liquido'
            DataSource = dsProdutos
            TabOrder = 25
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cPeso_Bruto: TUniDBEdit
            Left = 475
            Top = 521
            Width = 133
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Bruto'
            DataSource = dsProdutos
            TabOrder = 26
            FieldLabel = 'Peso Bruto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
        end
      end
    end
    object TabParam: TUniTabSheet
      Hint = ''
      ImageIndex = 4
      Caption = 'Par'#226'metros'
      object UniScrollBox5: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1257
          754)
        ScrollHeight = 1091
        object UniPanel4: TUniPanel
          Left = 285
          Top = 17
          Width = 704
          Height = 1074
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
          object cDadosDetalhe: TUniPageControl
            Left = 23
            Top = 656
            Width = 659
            Height = 376
            Hint = ''
            ShowHint = True
            ActivePage = TabSheet2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 1
            object TabSheet2: TUniTabSheet
              Hint = ''
              Enabled = False
              ShowHint = True
              Caption = 'Autom'#243'vel Novo'
              object cPotencia_Motor: TUniDBEdit
                Left = 221
                Top = 15
                Width = 126
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Potencia_Motor'
                DataSource = dsProdutos
                TabOrder = 0
                FieldLabel = 'Pot'#234'ncia Motor'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cCilindradas: TUniDBEdit
                Left = 354
                Top = 15
                Width = 133
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Cilindradas'
                DataSource = dsProdutos
                TabOrder = 1
                FieldLabel = 'Cilindradas'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cCapacidade_Tracao: TUniDBEdit
                Left = 492
                Top = 15
                Width = 141
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Capacidade_Tracao'
                DataSource = dsProdutos
                TabOrder = 2
                FieldLabel = 'Capacidade de Tra'#231#227'o'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cDistancia_Eixos: TUniDBEdit
                Left = 221
                Top = 71
                Width = 126
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Distancia_Eixos'
                DataSource = dsProdutos
                TabOrder = 3
                FieldLabel = 'Dist'#226'ncia entre Eixos'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cTipo_Pintura: TUniDBEdit
                Left = 492
                Top = 71
                Width = 141
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Tipo_Pintura'
                DataSource = dsProdutos
                TabOrder = 4
                FieldLabel = 'Tipo de Pintura'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cCodigo_MarcaModelo: TUniDBEdit
                Left = 354
                Top = 71
                Width = 133
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Codigo_MarcaModelo'
                DataSource = dsProdutos
                TabOrder = 5
                FieldLabel = 'C'#243'digo Marca/Modelo'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cPassageiros: TUniDBEdit
                Left = 17
                Top = 71
                Width = 198
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Passageiros'
                DataSource = dsProdutos
                TabOrder = 6
                FieldLabel = 'Capacidade de Lota'#231#227'o'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cTipo_Combustivel: TUniDBLookupComboBox
                Left = 17
                Top = 15
                Width = 198
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                ListSource = UniMainModule.dsTipoCombustivel
                KeyField = 'Codigo'
                ListFieldIndex = 0
                DataField = 'Tipo_Combustivel'
                DataSource = dsProdutos
                TabOrder = 7
                Color = clWindow
                FieldLabel = 'Tipo de Combustivel'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cTipo_Veiculo: TUniDBLookupComboBox
                Left = 17
                Top = 127
                Width = 281
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                ListSource = UniMainModule.dsTipoVeiculo
                KeyField = 'Codigo'
                ListFieldIndex = 0
                DataField = 'Tipo_Veiculo'
                DataSource = dsProdutos
                TabOrder = 8
                Color = clWindow
                FieldLabel = 'Tipo de Ve'#237'culo'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object UniDBRadioGroup1: TUniDBRadioGroup
                Left = 416
                Top = 189
                Width = 164
                Height = 75
                Hint = ''
                ShowHint = True
                DataField = 'Condicao_VIN'
                DataSource = dsProdutos
                Caption = 'Condi'#231#227'o (VIN)'
                TabOrder = 9
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                    ' = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Remarcado'
                  'Normal')
                Values.Strings = (
                  'R'
                  'N')
              end
              object cEspecie_Veiculo: TUniDBLookupComboBox
                Left = 17
                Top = 183
                Width = 281
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                ListSource = UniMainModule.dsEspecieVeiculo
                KeyField = 'Codigo'
                ListFieldIndex = 0
                DataField = 'Especie_Veiculo'
                DataSource = dsProdutos
                TabOrder = 10
                Color = clWindow
                FieldLabel = 'Esp'#233'cie de Ve'#237'culo'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cCondicao_Veiculo: TUniDBLookupComboBox
                Left = 18
                Top = 239
                Width = 281
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                ListSource = UniMainModule.dsEspecieVeiculo
                KeyField = 'Codigo'
                ListFieldIndex = 0
                DataField = 'Condicao_Veiculo'
                DataSource = dsProdutos
                TabOrder = 11
                Color = clWindow
                FieldLabel = 'Condi'#231#227'o do Ve'#237'culo'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
            end
            object TabSheet5: TUniTabSheet
              Hint = ''
              Enabled = False
              ShowHint = True
              ImageIndex = 3
              Caption = 'Combust'#237'vel'
              object clCodigo_ANP: TUniDBLookupComboBox
                Left = 19
                Top = 20
                Width = 614
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo; Produto;Familia'
                ListSource = dsCombustiveis
                KeyField = 'Codigo'
                ListFieldIndex = 1
                DataField = 'Codigo_ANP'
                DataSource = dsProdutos
                TabOrder = 0
                Color = clWindow
                FieldLabel = 'C'#243'digo ANP'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cDescricao_ANP: TUniDBMemo
                Left = 19
                Top = 76
                Width = 614
                Height = 133
                Hint = ''
                ShowHint = True
                DataField = 'Descricao_ANP'
                DataSource = dsProdutos
                TabOrder = 2
                FieldLabel = 'Descri'#231#227'o ANP'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cPercentual_GLGNN: TUniDBEdit
                Left = 19
                Top = 210
                Width = 200
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Percentual_GLGNN'
                DataSource = dsProdutos
                TabOrder = 1
                FieldLabel = 'Percentual GLGN (Nacional)'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cPercentual_GLGNI: TUniDBEdit
                Left = 225
                Top = 210
                Width = 200
                Height = 56
                Hint = ''
                ShowHint = True
                DataField = 'Percentual_GLGNI'
                DataSource = dsProdutos
                TabOrder = 3
                FieldLabel = 'Percentual GLGN (Importado)'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
              object cValor_Partida: TUniDBEdit
                Left = 19
                Top = 266
                Width = 200
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Valor_Partida'
                DataSource = dsProdutos
                TabOrder = 4
                FieldLabel = 'Valor de Partida'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
            end
            object TabSheet4: TUniTabSheet
              Hint = ''
              Enabled = False
              ShowHint = True
              ImageIndex = 2
              Caption = 'Medicamento'
              object cPreco_MaxConsumidor: TUniDBEdit
                Left = 18
                Top = 20
                Width = 130
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Preco_MaxConsumidor'
                DataSource = dsProdutos
                TabOrder = 0
                FieldLabel = 'Pre'#231'o m'#225'ximo consumidor'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
              end
            end
            object TabSheet3: TUniTabSheet
              Hint = ''
              Enabled = False
              ShowHint = True
              ImageIndex = 1
              Caption = 'Armamento'
            end
            object UniTabSheet1: TUniTabSheet
              Hint = ''
              Enabled = False
              ShowHint = True
              Caption = 'Outros'
            end
          end
          object GroupBox10: TUniGroupBox
            Left = 264
            Top = 92
            Width = 220
            Height = 187
            Hint = ''
            ShowHint = True
            Caption = 'ANVISA'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cRegistro_ANVISA: TUniDBEdit
              Left = 8
              Top = 17
              Width = 194
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Registro_ANVISA'
              DataSource = dsProdutos
              TabOrder = 0
              FieldLabel = 'Registro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cProcesso_ANVISA: TUniDBEdit
              Left = 8
              Top = 116
              Width = 194
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Processo_ANVISA'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Processo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cVencimento_ANVISA: TUniDBDateTimePicker
              Left = 8
              Top = 66
              Width = 194
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_ANVISA'
              DataSource = dsProdutos
              DateTime = 44203.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 3
              BorderStyle = ubsSolid
              FieldLabel = 'Vencimento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox6: TUniGroupBox
            Left = 23
            Top = 92
            Width = 233
            Height = 384
            Hint = ''
            ShowHint = True
            Caption = 'Detalhes Diversos'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cReciclavel: TUniDBCheckBox
              Left = 16
              Top = 77
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Reciclavel'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Recicl'#225'vel'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cEntrada_ST: TUniDBCheckBox
              Left = 16
              Top = 115
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Entrada_ST'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Entrada por substitui'#231#227'o Tribut'#225'ria'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCusto_Seletivo: TUniDBCheckBox
              Left = 16
              Top = 134
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Seletivo'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Custo Seletivo'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisivel_Representa: TUniDBCheckBox
              Left = 16
              Top = 20
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visivel_Representa'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Visivel Representante'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cLote_Obrigatorio: TUniDBCheckBox
              Left = 16
              Top = 39
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Lote_Obrigatorio'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Lote Obrigat'#243'rio'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cProducao_Nacional: TUniDBCheckBox
              Left = 16
              Top = 153
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Producao_Nacional'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Produ'#231#227'o Nacional'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cSerial_Obrigatorio: TUniDBCheckBox
              Left = 16
              Top = 58
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Serial_Obrigatorio'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Serial Obrigat'#243'rio'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cEscala_Relevante: TUniDBCheckBox
              Left = 16
              Top = 305
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Escala_Relevante'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Produzido em escala relevante'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCNPJ_Fabricante: TUniDBEdit
              Left = 37
              Top = 323
              Width = 184
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'CNPJ_Fabricante'
              DataSource = dsProdutos
              MaxLength = 18
              TabOrder = 8
              FieldLabel = 'CNPJ do Fabricante'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cMateria_Prima: TUniDBCheckBox
              Left = 16
              Top = 96
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Materia_Prima'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Mat'#233'ria Prima'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 16
              Top = 172
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CAMEX'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tabela CAMEX'
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 16
              Top = 191
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'FCP'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Incid'#234'ncia de FCP'
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 16
              Top = 210
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Desonerado'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'ICMS Desonerado'
              TabOrder = 13
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 16
              Top = 229
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Dumping'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Anti-Dumping'
              TabOrder = 14
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 16
              Top = 248
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Servico'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Servi'#231'o'
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 16
              Top = 267
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Requer_LI'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Requer Licensa de Importa'#231#227'o (LI)'
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 16
              Top = 286
              Width = 205
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_Navio'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Estoque por Navio'
              TabOrder = 17
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox1: TUniGroupBox
            Left = 23
            Top = 495
            Width = 348
            Height = 85
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'mentros Comerciais do Produto'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cPromocao: TUniDBCheckBox
              Left = 18
              Top = 19
              Width = 206
              Height = 19
              Hint = ''
              ShowHint = True
              DataField = 'Promocao'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Colocar Produto em Promo'#231#227'o'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cPromocao_Valor: TUniDBEdit
              Left = 40
              Top = 40
              Width = 281
              Height = 28
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Promocao_Valor'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Valor do Produto em Promo'#231#227'o'
              FieldLabelWidth = 180
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object GroupBox5: TUniGroupBox
            Left = 498
            Top = 94
            Width = 182
            Height = 225
            Hint = ''
            ShowHint = True
            Caption = 'Localiza'#231#227'o'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cArmazem_Nome: TUniDBEdit
              Left = 8
              Top = 16
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Armazem_Nome'
              DataSource = dsProdutos
              TabOrder = 0
              FieldLabel = 'Armaz'#233'm'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cArmazem_Rua: TUniDBEdit
              Left = 8
              Top = 66
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Armazem_Rua'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Rua'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cArmazem_Prateleira: TUniDBEdit
              Left = 8
              Top = 116
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Armazem_Prateleira'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Prateleira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cArmazem_Posicao: TUniDBEdit
              Left = 8
              Top = 166
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Armazem_Posicao'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Posi'#231#227'o na Prateleira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object cDetalhe_Especifico: TUniDBRadioGroup
            Left = 23
            Top = 603
            Width = 659
            Height = 49
            Hint = ''
            ShowHint = True
            DataField = 'Detalhe_Especifico'
            DataSource = dsProdutos
            Caption = 'Detalhe Espec'#237'fico'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                ' = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Autom'#243'vel Novo'
              'Combust'#237'vel'
              'Medicamento'
              'Armamento'
              'Outros')
            Columns = 5
            Values.Strings = (
              'V'
              'C'
              'M'
              'A'
              'O')
            OnChangeValue = cDetalhe_EspecificoChangeValue
          end
          object cClasseIPI: TUniDBLookupComboBox
            Left = 20
            Top = 19
            Width = 654
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Classe; Valor_IPI'
            KeyField = 'Classe'
            ListFieldIndex = 0
            DataField = 'ClasseEnquadra_IPI'
            DataSource = dsProdutos
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Classe de Enq. IPI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object TabValores: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Valores'
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1274
          754)
        ScrollHeight = 565
        object UniPanel2: TUniPanel
          Left = 230
          Top = 13
          Width = 776
          Height = 552
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
          object GroupBox9: TUniGroupBox
            Left = 167
            Top = 11
            Width = 195
            Height = 182
            Hint = ''
            ShowHint = True
            Caption = 'Estoque Min'#237'mo'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cEstoque_Minimo: TUniDBEdit
              Left = 13
              Top = 15
              Width = 170
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_Minimo'
              DataSource = dsProdutos
              TabOrder = 0
              FieldLabel = 'Por Quantidade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cEstoque_MinimoPerc: TUniDBEdit
              Left = 13
              Top = 65
              Width = 170
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_MinimoPerc'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Por Percentual'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object GroupBox11: TUniGroupBox
            Left = 382
            Top = 11
            Width = 195
            Height = 181
            Hint = ''
            Enabled = False
            ShowHint = True
            Caption = 'Estoque Atual'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
              Left = 13
              Top = 15
              Width = 170
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_Disponivel'
              DataSource = dsProdutos
              TabOrder = 1
              Color = 16765650
              FieldLabel = 'Estoque'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              Left = 13
              Top = 66
              Width = 170
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_Terceiros'
              DataSource = dsProdutos
              TabOrder = 2
              Color = 16765650
              FieldLabel = 'Terceiros'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 13
              Top = 117
              Width = 170
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Lancado_Pedidos'
              DataSource = dsProdutos
              TabOrder = 3
              Color = 16765650
              FieldLabel = 'Pedidos'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
          object GroupBox12: TUniGroupBox
            Left = 17
            Top = 11
            Width = 143
            Height = 277
            Hint = ''
            ShowHint = True
            Caption = 'Valores'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cValor_Entrada: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Entrada'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = #218'ltimo Entrada'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_CustoMedio: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_CustoMedio'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Custo M'#233'dio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_Venda: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Venda'
              DataSource = dsProdutos
              TabOrder = 5
              FieldLabel = 'Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_ConsumidorFinal: TUniDBEdit
              Left = 11
              Top = 165
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_ConsumidorFinal'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Consumidor Final'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_ME: TUniDBEdit
              Left = 11
              Top = 215
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_ME'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Moeda Estrangeira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object GradeValores: TUniDBGrid
            Left = 17
            Top = 299
            Width = 742
            Height = 234
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ShowHint = True
            ParentShowHint = False
            DataSource = dsNotas
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            BorderStyle = ubsSingle
            TrackOver = False
            TabOrder = 4
            Columns = <
              item
                FieldName = 'Nota'
                Title.Alignment = taCenter
                Title.Caption = 'Nota'
                Title.Font.Style = [fsBold]
                Width = 119
              end
              item
                FieldName = 'Data_Entrada'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Title.Font.Style = [fsBold]
                Width = 91
                Alignment = taCenter
              end
              item
                FieldName = 'Valor_Entrada'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Entrada'
                Title.Font.Style = [fsBold]
                Width = 120
              end
              item
                FieldName = 'Valor_Inventario'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Inventario'
                Title.Font.Style = [fsBold]
                Width = 120
              end
              item
                FieldName = 'Emissao'
                Title.Alignment = taCenter
                Title.Caption = 'Emiss'#227'o'
                Title.Font.Style = [fsBold]
                Width = 121
                Alignment = taCenter
              end>
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Tributos'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1274
          754)
        ScrollHeight = 404
        object UniPanel5: TUniPanel
          Left = 156
          Top = 32
          Width = 829
          Height = 372
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
          object UniGroupBox10: TUniGroupBox
            Left = 179
            Top = 15
            Width = 143
            Height = 329
            Hint = ''
            ShowHint = True
            Caption = 'IPI'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit32: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_IPI'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Al'#237'quota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit33: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_IPI'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Redu'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit34: TUniDBEdit
              Left = 11
              Top = 165
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Acordo_TarifarioIPI'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Acordo Tarif'#225'rio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit35: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_IPI'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Valor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBLookupComboBox2: TUniDBLookupComboBox
              Left = 11
              Top = 215
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsClasseIPI
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'ClasseEnquadra_IPI'
              DataSource = dsProdutos
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Classe Enquadramento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object UniGroupBox11: TUniGroupBox
            Left = 17
            Top = 15
            Width = 143
            Height = 329
            Hint = ''
            ShowHint = True
            Caption = 'II'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit36: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_II'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Al'#237'quota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit37: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_II'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Valor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit38: TUniDBEdit
              Left = 11
              Top = 165
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Acordo_TarifarioII'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Acordo Tarif'#225'rio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit39: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_II'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Redu'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox12: TUniGroupBox
            Left = 341
            Top = 15
            Width = 143
            Height = 329
            Hint = ''
            ShowHint = True
            Caption = 'PIS'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit40: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_PIS'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Al'#237'quota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit41: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_PISEntrada'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Al'#237'quota NF Entrada'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit42: TUniDBEdit
              Left = 11
              Top = 164
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_PIS'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Valor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit43: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_PISSaida'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Al'#237'quota NF Sa'#237'da'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit44: TUniDBEdit
              Left = 11
              Top = 214
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_PIS'
              DataSource = dsProdutos
              TabOrder = 5
              FieldLabel = 'Redu'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox13: TUniGroupBox
            Left = 665
            Top = 15
            Width = 143
            Height = 329
            Hint = ''
            ShowHint = True
            Caption = 'ICMS'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit45: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_DentroEstadoEnt'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Dentro Estado (Entrada)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit46: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_ForaEstadoEnt'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Fora Estado (Entrada)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit47: TUniDBEdit
              Left = 11
              Top = 165
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_ForaEstadoSai'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Fora Estado (Sa'#237'da)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit48: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_DentroEstadoSai'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Dentro Estado (Sa'#237'da)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit49: TUniDBEdit
              Left = 11
              Top = 215
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_DentroEstadoSimples'
              DataSource = dsProdutos
              TabOrder = 5
              FieldLabel = 'Dentro Estado (Simples)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit50: TUniDBEdit
              Left = 11
              Top = 265
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Reducao'
              DataSource = dsProdutos
              TabOrder = 6
              FieldLabel = 'Redu'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox14: TUniGroupBox
            Left = 504
            Top = 15
            Width = 143
            Height = 329
            Hint = ''
            ShowHint = True
            Caption = 'COFINS'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit51: TUniDBEdit
              Left = 11
              Top = 15
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_COFINS'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Al'#237'quota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit52: TUniDBEdit
              Left = 11
              Top = 65
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_COFINSEntrada'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Al'#237'quota NF Entrada'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit53: TUniDBEdit
              Left = 11
              Top = 164
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_COFINS'
              DataSource = dsProdutos
              TabOrder = 4
              FieldLabel = 'Valor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit54: TUniDBEdit
              Left = 11
              Top = 115
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_COFINSSaida'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Al'#237'quota NF Sa'#237'da'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit55: TUniDBEdit
              Left = 10
              Top = 214
              Width = 120
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_COFINS'
              DataSource = dsProdutos
              TabOrder = 5
              FieldLabel = 'Redu'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
        end
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      TabVisible = False
      ImageIndex = 9
      Caption = 'Tributos'
      object UniScrollBox9: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1274
          754)
        ScrollHeight = 665
        object UniPanel8: TUniPanel
          Left = 293
          Top = 7
          Width = 630
          Height = 658
          Hint = ''
          Enabled = False
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
          object RxDBGrid1: TUniDBGrid
            Left = 21
            Top = 258
            Width = 588
            Height = 376
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.CustomizableCells = False
            LoadMask.Message = 'Loading data...'
            NumericEditorPrecision = 2
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Trib_Desc'
                Title.Alignment = taCenter
                Title.Caption = 'Tributo'
                Title.Font.Style = [fsBold]
                Width = 375
              end
              item
                FieldName = 'UF'
                Title.Alignment = taCenter
                Title.Caption = 'UF'
                Title.Font.Style = [fsBold]
                Width = 36
                Alignment = taCenter
              end
              item
                FieldName = 'Aliquota'
                Title.Alignment = taCenter
                Title.Caption = 'Al'#237'quota'
                Title.Color = clNone
                Title.Font.Style = [fsBold]
                Width = 70
              end
              item
                FieldName = 'Valor'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Style = [fsBold]
                Width = 70
              end>
          end
          object pTributo: TUniContainerPanel
            Left = 22
            Top = 22
            Width = 586
            Height = 189
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentColor = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 2
            object cTributo: TUniDBLookupComboBox
              Left = 14
              Top = 9
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Tributo'
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Tributo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cUF: TUniDBLookupComboBox
              Left = 14
              Top = 65
              Width = 276
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'UF;Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'UF'
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cModalidade: TUniDBLookupComboBox
              Left = 312
              Top = 64
              Width = 257
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsModal
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Modalidade'
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Modalidade de Importa'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cAliquota: TUniDBFormattedNumberEdit
              Left = 14
              Top = 121
              Width = 88
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota'
              TabOrder = 4
              FieldLabel = 'Al'#237'quota'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit
              Left = 124
              Top = 122
              Width = 93
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Valor'
              TabOrder = 5
              FieldLabel = 'Valor'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
          object UniContainerPanel1: TUniContainerPanel
            Left = 21
            Top = 213
            Width = 588
            Height = 43
            Hint = ''
            ShowHint = True
            ParentColor = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 3
            object UniPanel9: TUniPanel
              Left = 0
              Top = 0
              Width = 588
              Height = 43
              Hint = ''
              ShowHint = True
              Align = alClient
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CaixaSimples'#39';'#13#10'}')
              BorderStyle = ubsNone
              Background.Picture.Data = {
                0954474946496D61676547494638396190019001800000CFCFCFFFFFFF21F904
                00000000002C000000009001900180CFCFCFFFFFFF02FF8C618197AB0D997CD3
                D948F3AD78EB0E72E2377A6648A66789AE6A0BB3F23BBB764CE7EB5DE3BCEE0B
                F68640E2EF282C2A91C62473E98C8A9E5429B489BD6AAB59EED6EA0D83C7DDB2
                F97B16A7C9E8B6DACD7ECBE328FAFA0EC7CFF5F6BC7FFFD7C704482868C88718
                9858B878A848C1F81839E948D9782959A929619989D909BAE9391AFA89235A4A
                8ABA6ADAAAEA6A992ACBFA5A3B0B4B7B4BA2CB9BEB8B0B6CFBEBD91B5C2C6C3C
                7CBC5C97EC8C0CCDFC2C1D1D427DAD9C3DAD5DDD8ABD0DDE2DFE3D6E477ECE8D
                1EAE2E9EEEBEFE5E0E3F8FC66E1F7F4F9F5F8FDFAFEF2F2FA0BA7D040116FC87
                3087C185090F0A64A8C8A14488131BBEABF8D0A2C68CFF1CD560FC4831E4C663
                223B96043952244A93295BB27CB960A5CC93345DEE9969B3264C9DA978FACC09
                74A7339C428B123D2A046950A5467FD2600AD569547A52AB2EB5DAF4CED4AC5C
                B7A2F48A15ECD57962BB863D1B14ADD9B16BDB7A545B362EDC4D72D9D675ABED
                AEDEB9761DF1C5DB373060487FF70A36CCEF70E1C58AC1217ECC78B097C8901B
                4B6655F9B2E5CC83287BDEFC396268CEA34B27008D5AB3EA81A657B7263DE5B5
                ECD49561BBA63D5B21EEDDB77BDFB20D3CF7C1E0BC8903368E5C3844E5C599FB
                B6E63C79F3B1D29F4FB7BE2BBAF6EB44B763AF8E13BC77F1C0C87F1FFFD3BC7A
                F498D89FE76E7A3DFCF96BE5BFBFAFD4BE7EF76FF8FBFFA79FCF7E00FED78D80
                F811288D810A2278CA800E1E38DD820F4A9818841652182083136AD8CE861E5E
                C817861C8A08E28724CA73628A048EC8A28998B558628CC3C1A8A28B43D42823
                8D6CE868638E64F1E86390DFE048E47645F6782290470A9994924E22D9249452
                32F9E3944B1AF824955A16736596C47569258F606EE9E569619E49E65065A249
                E2986E7EF6269B1CAE99669DB1D019A78F79EE19229E7E4EF9A79D81C63468A1
                1EF229A794880A9AE8698B3E6A15A48DC22629A396123AA9A19762A069A55379
                DA699F998EBA2916A0928A58A8A86A786AA969B60A2B43B1AE7A9DAAAE0A38EB
                ADCCE5CAEB45B6F69A16ADBA0ABBC3AFC6EE06ECB025FF26CBEC30C72A4B5EB3
                C48A0AEDB35F5A8BAD65D956ABE8B6D2B2F46DB874794B2E5BE572FBEAB9E23A
                A66EBB2DAD8B2E53EEC6BBEBBCF0FE666FBE08DDAB2F34FDF25BDEBF02B33B6D
                C1C3024CAF6003270C21C20E4BF1B0C1334ABC7077145F5C6AC40C57A471C731
                788C313B158FAC66C8241F7732C815AACCB2991BA74C6DCB2613FCF2CC8CCA5C
                735130DBCCF1CE397FE533CE3C081D74833F174D1DD247034534CF7929DD740A
                504F6D46D4205B4D35614E6F1D63D65873E275D8327CBD348A62972D32D76497
                B236D56DAB3D2EDC72DF77F6D76FA3FDCBDD00EBAD74DD7EC73637DF5AFD8D77
                95851F9E19E14D0B8E78DC8D070EA7E2844B0E79C095FF3FFE1EE3EB6AEE33E5
                9873E9F9D5A18BCDF9E593993EFA25A57F6E4EEAAC7BE3BAC6B1933E3BEA83DB
                FEFA6DAB7F5B7BEE77E2BEFBC7BDEF3D7CDFC0175F35F2BEB77E7CF35905EFBC
                0BCA131FFDF4C2578F3DB8D6672F3DF7DB3FF5BDB4D02F6F6AF8279BEF3DE0E4
                AF1F1EFAEC47F97EFA3ACB3F3EA6F1DFDF33FDE8D7BFB0FBE2FB3F30FEA54F80
                F86B4601F5B72F000E508107CC0E021B480D06028B80B3A2A0BE2C983D090650
                83D8C320041F383E0E7E106C20DC9E074F75C27989B0822B74570A9BF7C206B6
                B083333C600C2575C373D510853B2C570E6DF7C3FBF51086438C5F101175C46D
                1511874BCC56122BF7C4F535118853245F14E374C567FF5511895B3C5616E5F6
                C5DC75118A637C5D18C174465B95118B6B54551AB7F646CCB5118C737C5C1C8F
                74474DD5118D7B34541E67F6C7C3F5118E832C5C206B74C84015128F8BFC5322
                2FF6C8B2351290935C5A24DB54C924957093AFB8E49A3C593050E62C938E2465
                284D59335152089598E4A4E054F924580A8B959FA425AD6499305C62C99526B4
                652E7D892B60024998B72426B774292663DA4799C9E4A533F380CC5145135DCC
                9466350F76CD6865734ECF7CE536CF344DF9841346DFC466376B37CE44A55359
                E5D4E639DF798575BA7384F424473B5975CF6EC1D36EF9B4543FA5234F7CEE33
                750145D33FFF53D08C1DD44609ADCE426FF6504A45D4594813FD5045D335D08C
                824FA38BBB68E2384A508FD60BA424D55A3D1928D243A5544F2B354C435754D2
                8EC6F46F2FD5E749677A86968EF4A63C051D4E7B0A319DD247A82CFDA9E88C4A
                3BA46A94A82E656A7C9C1A21A85AA800003B}
              Background.Fit = True
              Caption = ''
              Color = 5526569
              object bNavegaTrib: TUniDBNavigator
                Left = 122
                Top = 3
                Width = 143
                Height = 35
                Cursor = crHandPoint
                Hint = ''
                ShowHint = True
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                IconSet = icsFontAwesome
                TabOrder = 1
              end
              object bAddTrib: TUniSpeedButton
                Left = 262
                Top = 3
                Width = 41
                Height = 35
                Hint = 'Adicionar novo registro.'
                ShowHint = True
                Caption = ''
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 0
                TabOrder = 2
                OnClick = bAddTribClick
              end
              object bEditTrib: TUniSpeedButton
                Left = 303
                Top = 3
                Width = 41
                Height = 35
                Hint = 'Editar registro corrente.'
                ShowHint = True
                Caption = ''
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 1
                TabOrder = 3
                OnClick = bEditTribClick
              end
              object bExcTrib: TUniSpeedButton
                Left = 344
                Top = 3
                Width = 41
                Height = 35
                Hint = 'Excluir registro corrente.'
                ShowHint = True
                Caption = ''
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 2
                TabOrder = 4
                OnClick = bExcTribClick
              end
              object bCancTrib: TUniSpeedButton
                Left = 426
                Top = 3
                Width = 41
                Height = 35
                Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
                ShowHint = True
                Caption = ''
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 3
                TabOrder = 6
                OnClick = bCancTribClick
              end
              object bGravTrib: TUniSpeedButton
                Left = 385
                Top = 3
                Width = 41
                Height = 35
                Hint = 'Salva o registro corrente.'
                ShowHint = True
                Caption = ''
                ParentColor = False
                IconAlign = iaCenter
                Images = UniMainModule.imgBotoes
                ImageIndex = 4
                TabOrder = 5
                OnClick = bGravTribClick
              end
            end
          end
        end
      end
    end
    object TabCST: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'CST'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1274
          754)
        ScrollHeight = 547
        object UniPanel1: TUniPanel
          Left = 293
          Top = 26
          Width = 779
          Height = 521
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
          object clCSTPIS_Entrada: TUniDBLookupComboBox
            Left = 16
            Top = 12
            Width = 750
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTPIS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTPIS_Entrada'
            DataSource = dsProdutos
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'CST PIS (Entrada)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object clCSTCOFINS_Entrada: TUniDBLookupComboBox
            Left = 16
            Top = 62
            Width = 750
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTCOFINS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTCOFINS_Entrada'
            DataSource = dsProdutos
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'CST COFINS (Entrada)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object GrupoPIS: TUniGroupBox
            Left = 363
            Top = 136
            Width = 305
            Height = 166
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria PIS (Sa'#237'da)'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTPIS_AliquotaUM: TUniDBCheckBox
              Left = 13
              Top = 22
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaUM'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Monofasica: TUniDBCheckBox
              Left = 13
              Top = 41
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Monofasica'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_AliquotaZero: TUniDBCheckBox
              Left = 13
              Top = 60
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaZero'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Isenta: TUniDBCheckBox
              Left = 13
              Top = 98
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Isenta'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Suspensao: TUniDBCheckBox
              Left = 13
              Top = 79
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Suspensao'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_SemIncidencia: TUniDBCheckBox
              Left = 13
              Top = 117
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_SemIncidencia'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Outras: TUniDBCheckBox
              Left = 13
              Top = 136
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Outras'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Outras Opera'#231#245'es'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GrupoCOFINS: TUniGroupBox
            Left = 16
            Top = 330
            Width = 305
            Height = 166
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria da COFINS (Entrada)'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTCOFINS_AliquotaUMEnt: TUniDBCheckBox
              Left = 13
              Top = 22
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaUMEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_MonofasicaEnt: TUniDBCheckBox
              Left = 13
              Top = 41
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_MonofasicaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_AliquotaZeroEnt: TUniDBCheckBox
              Left = 13
              Top = 60
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaZeroEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_IsentaEnt: TUniDBCheckBox
              Left = 13
              Top = 98
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_IsentaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_SuspensaoEnt: TUniDBCheckBox
              Left = 13
              Top = 79
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_SuspensaoEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_SemIncidenciaEnt: TUniDBCheckBox
              Left = 13
              Top = 117
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_SemIncidenciaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_OutrasEnt: TUniDBCheckBox
              Left = 13
              Top = 136
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_OutrasEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Outras Opera'#231#245'es de Entrada'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox3: TUniGroupBox
            Left = 16
            Top = 136
            Width = 305
            Height = 166
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria do PIS (Entrada)'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTPIS_AliquotaUMEnt: TUniDBCheckBox
              Left = 13
              Top = 22
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaUMEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_MonofasicaEnt: TUniDBCheckBox
              Left = 13
              Top = 41
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_MonofasicaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_AliquotaZeroEnt: TUniDBCheckBox
              Left = 13
              Top = 60
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaZeroEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_IsentaEnt: TUniDBCheckBox
              Left = 13
              Top = 98
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_IsentaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_SuspensaoEnt: TUniDBCheckBox
              Left = 13
              Top = 79
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_SuspensaoEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_SemIncidenciaEnt: TUniDBCheckBox
              Left = 13
              Top = 117
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_SemIncidenciaEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_OutrasEnt: TUniDBCheckBox
              Left = 13
              Top = 136
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_OutrasEnt'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Outras Opera'#231#245'es de Entrada'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox4: TUniGroupBox
            Left = 363
            Top = 330
            Width = 305
            Height = 166
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria da COFINS (Sa'#237'da)'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTCOFINS_AliquotaUM: TUniDBCheckBox
              Left = 13
              Top = 22
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaUM'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Monofasica: TUniDBCheckBox
              Left = 13
              Top = 41
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Monofasica'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_AliquotaZero: TUniDBCheckBox
              Left = 13
              Top = 60
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaZero'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Isenta: TUniDBCheckBox
              Left = 13
              Top = 98
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Isenta'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Suspensao: TUniDBCheckBox
              Left = 13
              Top = 79
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Suspensao'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_SemIncidencia: TUniDBCheckBox
              Left = 13
              Top = 117
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_SemIncidencia'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Outras: TUniDBCheckBox
              Left = 13
              Top = 136
              Width = 280
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Outras'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Outras Opera'#231#245'es'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object TabDesc: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = 'Comiss'#227'o / Desconto'
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1276
        Height = 756
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1274
          754)
        ScrollHeight = 550
        object UniPanel3: TUniPanel
          Left = 227
          Top = 17
          Width = 559
          Height = 533
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
          object GroupBox8: TUniGroupBox
            Left = 21
            Top = 232
            Width = 516
            Height = 285
            Hint = ''
            ShowHint = True
            Caption = 'Comiss'#227'o e descontos pr'#233' fixados'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cDesconto_A: TUniDBEdit
              Left = 90
              Top = 18
              Width = 80
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_A'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDesconto_B: TUniDBEdit
              Left = 90
              Top = 68
              Width = 80
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_B'
              DataSource = dsProdutos
              TabOrder = 5
              FieldLabel = 'Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDesconto_C: TUniDBEdit
              Left = 90
              Top = 118
              Width = 80
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_C'
              DataSource = dsProdutos
              TabOrder = 9
              FieldLabel = 'Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDesconto_D: TUniDBEdit
              Left = 90
              Top = 168
              Width = 80
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_D'
              DataSource = dsProdutos
              TabOrder = 13
              FieldLabel = 'Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDesconto_E: TUniDBEdit
              Left = 90
              Top = 218
              Width = 80
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_E'
              DataSource = dsProdutos
              TabOrder = 17
              FieldLabel = 'Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_A: TUniDBEdit
              Left = 177
              Top = 18
              Width = 64
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_A'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_B: TUniDBEdit
              Left = 177
              Top = 68
              Width = 64
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_B'
              DataSource = dsProdutos
              TabOrder = 6
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_C: TUniDBEdit
              Left = 177
              Top = 118
              Width = 64
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_C'
              DataSource = dsProdutos
              TabOrder = 10
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_D: TUniDBEdit
              Left = 177
              Top = 168
              Width = 64
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_D'
              DataSource = dsProdutos
              TabOrder = 14
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_E: TUniDBEdit
              Left = 177
              Top = 218
              Width = 64
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_E'
              DataSource = dsProdutos
              TabOrder = 18
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cBloqueio_A: TUniDBCheckBox
              Left = 389
              Top = 52
              Width = 80
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_A'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBloqueio_B: TUniDBCheckBox
              Left = 389
              Top = 101
              Width = 80
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_B'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBloqueio_C: TUniDBCheckBox
              Left = 389
              Top = 150
              Width = 80
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_C'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear'
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBloqueio_D: TUniDBCheckBox
              Left = 389
              Top = 197
              Width = 80
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_D'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear'
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBloqueio_E: TUniDBCheckBox
              Left = 389
              Top = 251
              Width = 80
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_E'
              DataSource = dsProdutos
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear'
              TabOrder = 20
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cValor_VendaA: TUniDBEdit
              Left = 248
              Top = 18
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_VendaA'
              DataSource = dsProdutos
              TabOrder = 3
              FieldLabel = 'Valor Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_VendaB: TUniDBEdit
              Left = 248
              Top = 68
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_VendaB'
              DataSource = dsProdutos
              TabOrder = 7
              FieldLabel = 'Valor Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_VendaC: TUniDBEdit
              Left = 248
              Top = 118
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_VendaC'
              DataSource = dsProdutos
              TabOrder = 11
              FieldLabel = 'Valor Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_VendaD: TUniDBEdit
              Left = 248
              Top = 168
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_VendaD'
              DataSource = dsProdutos
              TabOrder = 15
              FieldLabel = 'Valor Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cValor_VendaE: TUniDBEdit
              Left = 248
              Top = 218
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Valor_VendaE'
              DataSource = dsProdutos
              TabOrder = 19
              FieldLabel = 'Valor Venda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniLabel1: TUniLabel
              Left = 8
              Top = 53
              Width = 73
              Height = 16
              Hint = ''
              ShowHint = True
              Caption = 'TABELA - A'
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 21
            end
            object UniLabel2: TUniLabel
              Left = 11
              Top = 102
              Width = 71
              Height = 16
              Hint = ''
              ShowHint = True
              Caption = 'TABELA - B'
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 22
            end
            object UniLabel3: TUniLabel
              Left = 11
              Top = 151
              Width = 71
              Height = 16
              Hint = ''
              ShowHint = True
              Caption = 'TABELA - C'
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 23
            end
            object UniLabel4: TUniLabel
              Left = 11
              Top = 202
              Width = 72
              Height = 16
              Hint = ''
              ShowHint = True
              Caption = 'TABELA - D'
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 24
            end
            object UniLabel5: TUniLabel
              Left = 12
              Top = 253
              Width = 70
              Height = 16
              Hint = ''
              ShowHint = True
              Caption = 'TABELA - E'
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 25
            end
          end
          object GroupBox7: TUniGroupBox
            Left = 21
            Top = 90
            Width = 224
            Height = 131
            Hint = ''
            ShowHint = True
            Caption = 'Comiss'#227'o por redu'#231#227'o de desconto'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cComissao: TUniDBEdit
              Left = 11
              Top = 20
              Width = 198
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Comissao'
              DataSource = dsProdutos
              TabOrder = 1
              FieldLabel = 'Comiss'#227'o Venda '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReducao_Comissao: TUniDBEdit
              Left = 11
              Top = 70
              Width = 198
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_Comissao'
              DataSource = dsProdutos
              TabOrder = 2
              FieldLabel = 'Percentual Redu'#231#227'o Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object clTabela: TUniDBLookupComboBox
            Left = 21
            Top = 22
            Width = 516
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo; Descricao'
            ListSource = dsComissoes
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Tabela'
            DataSource = dsProdutos
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Tabela Comiss'#245'es'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object Produtos: TFDQuery
    Active = True
    BeforePost = ProdutosBeforePost
    BeforeDelete = ProdutosBeforeDelete
    AfterScroll = ProdutosAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evRecordCountMode, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 1000
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Produtos')
    Left = 44
    Top = 70
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 44
    Top = 118
  end
  object Modal: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ModalidadeImportacao')
    Left = 44
    Top = 166
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 44
    Top = 213
  end
  object NCM: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NCM')
    Left = 44
    Top = 262
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 44
    Top = 310
  end
  object dsOrigem: TDataSource
    DataSet = Origem
    Left = 44
    Top = 406
  end
  object Origem: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from OrigemMercadoria order by Codigo')
    Left = 44
    Top = 358
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Fornecedor = 1')
    Left = 44
    Top = 454
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 44
    Top = 502
  end
  object Fabricantes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Fabricante = 1')
    Left = 44
    Top = 550
  end
  object dsFabricantes: TDataSource
    DataSet = Fabricantes
    Left = 44
    Top = 598
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 745
    Top = 16
  end
  object TipoProduto: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from TipoProduto')
    Left = 44
    Top = 648
  end
  object dsTipoProduto: TDataSource
    DataSet = TipoProduto
    Left = 44
    Top = 696
  end
  object Linhas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from ProdutosLinhas')
    Left = 132
    Top = 70
  end
  object dsLinhas: TDataSource
    DataSet = Linhas
    Left = 132
    Top = 118
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from CSTCOFINS')
    Left = 209
    Top = 358
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 209
    Top = 406
  end
  object Comissoes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from TabelaComissoes')
    Left = 132
    Top = 262
  end
  object dsComissoes: TDataSource
    DataSet = Comissoes
    Left = 132
    Top = 310
  end
  object Notas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from TabelaComissoes')
    Left = 132
    Top = 358
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 132
    Top = 406
  end
  object Combustiveis: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Combustiveis')
    Left = 132
    Top = 454
  end
  object dsCombustiveis: TDataSource
    DataSet = Combustiveis
    Left = 132
    Top = 502
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Estados')
    Left = 132
    Top = 550
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 132
    Top = 598
  end
  object Seriais: TFDQuery
    AfterScroll = SeriaisAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from ProdutosSeriais')
    Left = 132
    Top = 166
  end
  object dsSeriais: TDataSource
    DataSet = Seriais
    Left = 132
    Top = 213
  end
  object SeriaisNotas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from ProdutosSeriaisNotas')
    Left = 209
    Top = 70
  end
  object dsSeriaisNotas: TDataSource
    DataSet = SeriaisNotas
    Left = 209
    Top = 118
  end
  object Detalhes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from ProdutosDetalhe')
    Left = 209
    Top = 166
  end
  object dsDetalhes: TDataSource
    DataSet = Detalhes
    Left = 209
    Top = 213
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao from CSTCOFINS')
    Left = 209
    Top = 262
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 209
    Top = 310
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
  object ClasseIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ClasseEnquadramentoIPI')
    Left = 132
    Top = 648
  end
  object dsClasseIPI: TDataSource
    DataSet = ClasseIPI
    Left = 132
    Top = 696
  end
end
