object fFatPedidoNF: TfFatPedidoNF
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 1498
  Height = 1000
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1498
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 140
      Height = 33
      Cursor = crHandPoint
      Hint = ''
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      DataSource = dsPedidosNF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      AlignWithMargins = True
      Left = 142
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Adicionar novo registro.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      AlignWithMargins = True
      Left = 184
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Editar registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      AlignWithMargins = True
      Left = 226
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Excluir registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      AlignWithMargins = True
      Left = 310
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      AlignWithMargins = True
      Left = 268
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Salva o registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bGravarClick
    end
    object bFechar: TUniSpeedButton
      AlignWithMargins = True
      Left = 352
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alLeft
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
    Width = 1272
    Height = 965
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1264
        Height = 910
        Hint = ''
        CreateOrder = 1
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsPedidosNF
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados...'
        LoadMask.Opacity = 0.699999988079071000
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Style = [fsBold]
            Width = 54
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'ES_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 74
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Op_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Opera'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 316
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Processo_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo de Processo'
            Title.Font.Style = [fsBold]
            Width = 112
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Destinatario_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Destinat'#225'rio'
            Title.Font.Style = [fsBold]
            Width = 269
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Destinatario_CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Title.Font.Style = [fsBold]
            Width = 139
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Destinatario_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 30
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 183
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1264
        Height = 27
        Hint = ''
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
          Height = 27
          Hint = ''
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
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Capa do Pedido'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Pasta'#39';'#13#10'}')
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1264
        Height = 937
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ScrollDirection = sdNone
        DesignSize = (
          1262
          935)
        ScrollHeight = 901
        ScrollWidth = 627
        object UniPanel1: TUniPanel
          Left = 79
          Top = 16
          Width = 818
          Height = 801
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          Title = 'CAPA DO PEDIDO'
          Caption = ''
          Color = clTeal
          object cPedido: TUniDBEdit
            Left = 8
            Top = 8
            Width = 261
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Pedido'
            DataSource = dsPedidosNF
            ParentFont = False
            Font.Height = -19
            Font.Style = [fsBold]
            TabOrder = 3
            TabStop = False
            ReadOnly = True
            FieldLabel = 'N'#186' DO PEDIDO'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cOperacao: TUniDBLookupComboBox
            Left = 8
            Top = 35
            Width = 800
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Tipo; Descricao'
            ListSource = dsOPFiscal
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Operacao'
            DataSource = dsPedidosNF
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Opera'#231#227'o Fiscal'
            FieldLabelWidth = 140
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object PanelDados1: TUniContainerPanel
            AlignWithMargins = True
            Left = 5
            Top = 80
            Width = 808
            Height = 714
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Enabled = False
            ShowHint = True
            ParentColor = False
            TabOrder = 1
            ScrollDirection = sdNone
            object cDestinatario: TUniDBLookupComboBox
              Left = 3
              Top = 116
              Width = 600
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;CNPJ_CPF;Nome'
              ListSource = dsDestinatarios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Destinatario'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Destinat'#225'rio'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTransportador: TUniDBLookupComboBox
              Left = 3
              Top = 143
              Width = 600
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ_CPF;Nome'
              ListSource = dsTransportador
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Transportador'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Transportador'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cNFRef: TUniDBLookupComboBox
              Left = 3
              Top = 89
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Processo;Chave;Data_Emissao'
              ListSource = dsNFRef
              KeyField = 'Chave'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'NFe_Referencia'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Nota Refer'#234'ncia'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cVolume_Especie: TUniDBEdit
              Left = 3
              Top = 575
              Width = 348
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Especie'
              DataSource = dsPedidosNF
              TabOrder = 4
              ClearButton = True
              FieldLabel = 'Esp'#233'cie'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cVolume_Quantidade: TUniDBEdit
              Left = 3
              Top = 548
              Width = 348
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Quantidade'
              DataSource = dsPedidosNF
              TabOrder = 5
              ClearButton = True
              FieldLabel = 'Volumes'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cVolume_Marca: TUniDBEdit
              Left = 354
              Top = 575
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Marca'
              DataSource = dsPedidosNF
              TabOrder = 6
              ClearButton = True
              FieldLabel = 'Marca'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cVolume_Numero: TUniDBEdit
              Left = 580
              Top = 575
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Numero'
              DataSource = dsPedidosNF
              TabOrder = 7
              ClearButton = True
              FieldLabel = 'N'#186
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cForma_Pagamento: TUniDBLookupComboBox
              Left = 3
              Top = 440
              Width = 549
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsFormaPgto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Forma_Pagamento'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Forma Pgto.'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDescricao_Forma: TUniDBEdit
              Left = 3
              Top = 467
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Descricao_Forma'
              DataSource = dsPedidosNF
              TabOrder = 9
              ClearButton = True
              FieldLabel = 'Descri'#231#227'o (Forma)'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cIntermediador: TUniDBLookupComboBox
              Left = 3
              Top = 278
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsIntermediador
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Intermediador'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Intermediador'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cBeneficio_Fiscal: TUniDBLookupComboBox
              Left = 3
              Top = 62
              Width = 493
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Codigo;Nome'
              ListSource = dsBeneficio
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Beneficio_Fiscal'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Benef'#237'cio Fiscal'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cModalidade_Frete: TUniDBLookupComboBox
              Left = 3
              Top = 197
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsModalFrete
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Modalidade_Frete'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Modalidade de Frete'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cIndicador_Intermediario: TUniDBLookupComboBox
              Left = 3
              Top = 251
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsIndPresenca
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Indicador_Intermediario'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Indicador de Intermediario'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cIndicador_Presenca: TUniDBLookupComboBox
              Left = 3
              Top = 224
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsPresencaComp
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Indicador_Presenca'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Indicador Pres.Comprador'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTipoDesc: TUniDBLookupComboBox
              Left = 3
              Top = 305
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsTiposDesc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Desconto_Tipo'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Tipo de Desconto'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDesconto_Percentual: TUniDBFormattedNumberEdit
              Left = 419
              Top = 359
              Width = 164
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_Percentual'
              DataSource = dsPedidosNF
              TabOrder = 16
              SelectOnFocus = True
              FieldLabel = '% Desconto'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_IRPJ: TUniDBFormattedNumberEdit
              Left = 3
              Top = 332
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_IRPJ'
              DataSource = dsPedidosNF
              TabOrder = 17
              SelectOnFocus = True
              FieldLabel = '% IRPJ'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_CSLL: TUniDBFormattedNumberEdit
              Left = 306
              Top = 332
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_CSLL'
              DataSource = dsPedidosNF
              TabOrder = 18
              SelectOnFocus = True
              FieldLabel = '% CSLL'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cTipo_Pagamento: TUniDBLookupComboBox
              Left = 3
              Top = 413
              Width = 549
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsTipoPgto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Tipo_Pagamento'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 19
              Color = clWindow
              FieldLabel = 'Tipo de Pagamento'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cOperacao_Veiculo: TUniDBLookupComboBox
              Left = 3
              Top = 494
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsOpVeiculo
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Operacao_Veiculo'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 20
              Color = clWindow
              FieldLabel = 'Opeara'#231#227'o com ve'#237'culo'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cVeiculo_Restricao: TUniDBLookupComboBox
              Left = 3
              Top = 521
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsRestVeiculo
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Veiculo_Restricao'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 21
              Color = clWindow
              FieldLabel = 'Restri'#231#227'o Ve'#237'culo'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTaxa_Cambio: TUniDBFormattedNumberEdit
              Left = 499
              Top = 62
              Width = 304
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Taxa_Cambio'
              DataSource = dsPedidosNF
              TabOrder = 22
              SelectOnFocus = True
              FieldLabel = 'Taxa Fech.C'#226'mbio'
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 354
              Top = 548
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_PesoLiquido'
              DataSource = dsPedidosNF
              TabOrder = 23
              FieldLabel = 'Peso L'#237'quido'
              FieldLabelWidth = 70
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 580
              Top = 548
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volume_PesoBruto'
              DataSource = dsPedidosNF
              TabOrder = 24
              FieldLabel = 'Peso Bruto'
              FieldLabelWidth = 70
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cLotes: TUniDBComboBox
              Left = 3
              Top = 35
              Width = 348
              Height = 25
              Hint = ''
              ShowHint = True
              AnyMatch = True
              DataField = 'Lote'
              DataSource = dsPedidosNF
              TabOrder = 25
              FieldLabel = 'Lote de Notas'
              FieldLabelWidth = 140
              ClearButton = True
              IconItems = <>
            end
            object UniDBLookupComboBox3: TUniDBLookupComboBox
              Left = 3
              Top = 170
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ;Nome'
              ListSource = dsArmazem
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Armazem'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 26
              Color = clWindow
              FieldLabel = 'Armaz'#233'm'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object UniDBComboBox1: TUniDBComboBox
              Left = 3
              Top = 359
              Width = 413
              Height = 25
              Hint = ''
              ShowHint = True
              AnyMatch = True
              DataField = 'Desconto_Tipo'
              DataSource = dsPedidosNF
              Items.Strings = (
                'COMERCIAL'
                'COMERCIAL  - Valor Unitario'
                'FINANCEIRO - Total da Nota'
                'FINANCEIRO - Total dos Produtos'
                'INCONDICIONAL'
                'INCONDICIONAL c/Impostos'
                'Valor unit'#225'rio do Produto')
              TabOrder = 27
              FieldLabel = 'Tipo de Desconto'
              FieldLabelWidth = 140
              ClearButton = True
              IconItems = <>
            end
            object cValor_Desconto: TUniDBFormattedNumberEdit
              Left = 586
              Top = 359
              Width = 215
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Descontos'
              DataSource = dsPedidosNF
              TabOrder = 28
              SelectOnFocus = True
              FieldLabel = 'Valor Desconto'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              Left = 3
              Top = 386
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Lucro_Percentual'
              DataSource = dsPedidosNF
              TabOrder = 29
              SelectOnFocus = True
              FieldLabel = '% Margem Lucro'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit
              Left = 306
              Top = 386
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Lucro'
              DataSource = dsPedidosNF
              TabOrder = 30
              SelectOnFocus = True
              FieldLabel = 'Valor Lucro'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox4: TUniDBLookupComboBox
              Left = 3
              Top = 602
              Width = 574
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ;Nome'
              ListSource = dsRepresentantes
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Representante'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 31
              Color = clWindow
              FieldLabel = 'Representante'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit
              Left = 580
              Top = 602
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Comissao'
              DataSource = dsPedidosNF
              TabOrder = 32
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 70
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBFormattedNumberEdit16: TUniDBFormattedNumberEdit
              Left = 3
              Top = 656
              Width = 348
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_ComissaoGer'
              DataSource = dsPedidosNF
              TabOrder = 33
              FieldLabel = 'Comiss'#227'o (Gerente)'
              FieldLabelWidth = 140
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox5: TUniDBLookupComboBox
              Left = 3
              Top = 629
              Width = 574
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ;Nome'
              ListSource = dsAtendeCall
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Atendente_Call'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 34
              Color = clWindow
              FieldLabel = 'Representante'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit
              Left = 580
              Top = 629
              Width = 223
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Atendente_Comissao'
              DataSource = dsPedidosNF
              TabOrder = 35
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 70
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object bVeiculo: TUniButton
              Left = 607
              Top = 142
              Width = 98
              Height = 26
              Hint = ''
              ShowHint = True
              Caption = 'Ve'#237'culo'
              TabOrder = 36
              OnClick = bVeiculoClick
            end
            object cEntregaRetirada: TUniComboBox
              Left = 607
              Top = 116
              Width = 196
              Height = 25
              Hint = ''
              ShowHint = True
              Style = csDropDownList
              Text = ''
              Items.Strings = (
                'ENDERE'#199'O DE ENTREGA'
                'ENDERE'#199'O DE RETIRADA'
                '')
              TabOrder = 37
              CharCase = ecUpperCase
              ClearButton = True
              IconItems = <>
            end
            object cEmpresa: TUniDBLookupComboBox
              Left = 3
              Top = 8
              Width = 800
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ;Unidade;Estado'
              ListSource = dsEmpresas
              KeyField = 'CNPJ'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Empresa'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 38
              Color = clWindow
              RemoteQuery = True
              FieldLabel = 'Empresa'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
          end
          object UniSimplePanel1: TUniSimplePanel
            Left = 0
            Top = 68
            Width = 849
            Height = 4
            Hint = ''
            ShowHint = True
            ParentColor = False
            Color = 4737096
            TabOrder = 4
          end
          object UniDBEdit2: TUniDBEdit
            Left = 275
            Top = 8
            Width = 276
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Pedido_Representante'
            DataSource = dsPedidosNF
            TabOrder = 5
            ClearButton = True
            FieldLabel = 'Pedido Representante'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 371
          Top = 884
          Width = 256
          Height = 17
          Hint = ''
          ParentColor = False
          TabOrder = 1
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Pedido'
      object GradeItens: TUniDBGrid
        Left = 65
        Top = 0
        Width = 1199
        Height = 937
        Hint = ''
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 7
        CreateOrder = 2
        ShowHint = True
        ParentShowHint = False
        HeaderTitleAlign = taCenter
        TitleFont.Style = [fsBold]
        DataSource = dsPedidosNFItens
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        WebOptions.DefaultFloatFormat = ',##0.00'
        LoadMask.Message = 'Carregando itens do pedido...'
        Images = UniMainModule.imgBotoes
        RowHeight = 24
        ForceFit = True
        BorderStyle = ubsSolid
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditItensClick
        Columns = <
          item
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Style = [fsBold]
            Width = 73
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Title.Font.Style = [fsBold]
            Width = 36
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'CFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Title.Font.Style = [fsBold]
            Width = 43
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 77
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Descricao_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 504
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
            MemoOptions.ConvertNewLineToBreak = True
            DisplayMemo = True
          end
          item
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Title.Font.Style = [fsBold]
            Width = 61
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'UM'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'#225'rio'
            Title.Font.Style = [fsBold]
            Width = 108
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Produtos'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 136
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object BarraItens: TUniPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 937
        Hint = ''
        Margins.Left = 1
        Margins.Bottom = 6
        Align = alLeft
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'BarraNavInterna'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object bAddItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 4
          Width = 59
          Height = 41
          Hint = 'Adicionar novo item ao pedido corrente.'
          Margins.Top = 4
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 0
          TabOrder = 1
          OnClick = bAddItensClick
        end
        object bEditItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 47
          Width = 59
          Height = 41
          Hint = 'Editar o item do pedido corrente.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 1
          TabOrder = 2
          OnClick = bEditItensClick
        end
        object bExcItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 90
          Width = 59
          Height = 41
          Hint = 'Excluir o item do pedido corrente.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 2
          TabOrder = 3
          OnClick = bExcItensClick
        end
        object bCancItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 219
          Width = 59
          Height = 41
          Hint = 'Cancelar modifica'#231#245'es feitas no item do pedido corrente.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 3
          TabOrder = 4
          OnClick = bCancItensClick
        end
        object bGravItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 176
          Width = 59
          Height = 41
          Hint = 'Salva o item do pedido corrente.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 4
          TabOrder = 5
          OnClick = bGravItensClick
        end
        object bExcTodosItens: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 133
          Width = 59
          Height = 41
          Hint = 'Excluir todos os itens do pedido corrente.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = ''
          Align = alTop
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 25
          TabOrder = 6
          OnClick = bExcTodosItensClick
        end
        object bNFRef: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 348
          Width = 59
          Height = 41
          Hint = 'Importar os itens de uma Nota Fiscal de Refer'#234'ncia.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = 'NF Ref'
          Align = alTop
          ParentColor = False
          IconAlign = iaRight
          Images = UniMainModule.imgBotoes
          TabOrder = 7
        end
        object bDUE: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 305
          Width = 59
          Height = 41
          Hint = 'Importar os itens de uma DUE.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = 'DUE'
          Align = alTop
          ParentColor = False
          IconAlign = iaRight
          Images = UniMainModule.imgBotoes
          TabOrder = 8
        end
        object bDUIMP: TUniSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 262
          Width = 59
          Height = 41
          Hint = 'Importar os itens de uma DUIMP.'
          Margins.Top = 1
          Margins.Bottom = 1
          ShowHint = True
          ParentShowHint = False
          Caption = 'DUIMP'
          Align = alTop
          ParentColor = False
          IconAlign = iaRight
          Images = UniMainModule.imgBotoes
          TabOrder = 9
          OnClick = bDUIMPClick
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Informa'#231#227'oes Complementares'
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 2
      Caption = 'Movimenta'#231#227'o Financeira'
      object Grade2: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1264
        Height = 937
        Hint = ''
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        BorderStyle = ubsInset
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWhite
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 64
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Classificacao'
            Title.Alignment = taCenter
            Title.Caption = 'Class'
            Width = 91
            ReadOnly = True
          end
          item
            FieldName = 'DescricaoClassificacao'
            Title.Alignment = taCenter
            Title.Caption = 'Despesa'
            Width = 285
            ReadOnly = True
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'P/R'
            Width = 26
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 109
            ReadOnly = True
          end
          item
            FieldName = 'Custo_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'C.Ent'
            Width = 32
            ReadOnly = True
          end
          item
            FieldName = 'CustoConta'
            Title.Alignment = taCenter
            Title.Caption = 'C.Sai'
            Width = 32
            ReadOnly = True
          end
          item
            FieldName = 'Custo_Seletivo'
            Title.Alignment = taCenter
            Title.Caption = 'C.Sel'
            Width = 32
            ReadOnly = True
          end
          item
            FieldName = 'Custo_Outros'
            Title.Caption = 'C.Out'
            Width = 36
            ReadOnly = True
          end>
      end
    end
  end
  object UniPanel3: TUniPanel
    AlignWithMargins = True
    Left = 1275
    Top = 38
    Width = 220
    Height = 959
    Hint = ''
    Align = alRight
    ParentFont = False
    TabOrder = 2
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
        ' = '#39'Painel'#39';'#13#10'}')
    BorderStyle = ubsInset
    ShowCaption = False
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'TOTAIS DO PEDIDO'
    Caption = 'UniPanel3'
    ScrollDirection = sdNone
    object cValorProdutos: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 6
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 5
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Produtos'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 1
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Produtos'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorDespesas: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 28
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Despesas'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 2
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Despesas'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorFrete: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 72
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Frete'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 3
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Frete'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorSeguro: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 94
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Seguro'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 4
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Seguro'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorII: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 138
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_II'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 5
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'II'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorIPI: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 182
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_IPI'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 6
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'IPI'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorPIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 226
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_PIS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 7
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'PIS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorCOFINS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 270
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_COFINS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 8
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'COFINS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorICMS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 314
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_ICMS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 9
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'ICMS Oper'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorICMSST: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 358
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_ICMSST'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 10
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'ICMS ST'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cTotalDesconto: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 556
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Descontos'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 11
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Descontos'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorPedido: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 578
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_Pedido'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 12
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Total do Pedido'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCII: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 116
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCII'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 13
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'B.C.II'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCIPI: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 160
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCIPI'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 14
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC IPI'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCPIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 204
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCPIS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 15
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC.PIS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCCOFINS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 248
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCCOFINS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 16
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC COFINS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCICMS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 292
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCICMS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 17
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC ICMS Oper'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCICMSST: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 336
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCICMSST'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 18
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC ICMS ST'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorAFRMM: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 50
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_AFRMM'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 19
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'AFRMM'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorDIFALDest: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 402
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_DIFALDest'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 20
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'DIFAL Destino'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorDIFALOrig: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 380
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_DIFALOrig'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 21
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'DIFAL Origem'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 424
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCIS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 22
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC IS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 446
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_IS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 23
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'IS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorBCIBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 468
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCIBS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 24
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC IBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorIBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 490
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_IBS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 25
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'IBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object ValorBCCBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 512
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_BCCBS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 26
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'BC CBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cValorCBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 534
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      DataField = 'Valor_CBS'
      DataSource = dsPedidosNF
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      TabOrder = 27
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'CBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
  end
  object MenuCusto: TUniPopupMenu
    Left = 569
    Top = 4
    object mnMarcarCustoEntrada: TUniMenuItem
      Caption = 'Marcar como Custo Geral (Entrada)'
    end
    object mnDesmarcarCustoEntrada: TUniMenuItem
      Caption = 'Desmarcar como Custo Geral (Entrada)'
    end
    object mnMarcarCustoTodosEntrada: TUniMenuItem
      Caption = 'Marcar todos como Custo Geral (Entrada)'
    end
    object mnDesmarcarCustoTodosEntrada: TUniMenuItem
      Caption = 'Desmarcar todos como Custo Geral (Entrada)'
    end
    object N2: TUniMenuItem
      Caption = '-'
    end
    object mnMarcarCusto: TUniMenuItem
      Caption = 'Marcar como Custo Geral (Sa'#237'da)'
    end
    object mnDesmarcarCusto: TUniMenuItem
      Caption = 'Desmarcar como Custo Geral (Sa'#237'da)'
    end
    object mnMarcarCustoTodos: TUniMenuItem
      Caption = 'Marcar todos como Custo Geral (Sa'#237'da)'
    end
    object mnDesmarcarCustoTodos: TUniMenuItem
      Caption = 'Desmarcar todos como Custo Geral (Sa'#237'da)'
    end
    object N3: TUniMenuItem
      Caption = '-'
    end
    object mnMarcarCustoOutros: TUniMenuItem
      Caption = 'Marcar como Custo Geral (Outros)'
    end
    object mnDesmarcarCustoOutros: TUniMenuItem
      Caption = 'Desmarcar como Custo Geral (Outros)'
    end
    object mnMarcarCustoTodosOutros: TUniMenuItem
      Caption = 'Marcar todos como Custo Geral (Outros)'
    end
    object mnDesmarcarCustoTodosOutros: TUniMenuItem
      Caption = 'Desmarcar todos como Custo Geral (Outros)'
    end
    object N1: TUniMenuItem
      Caption = '-'
    end
    object mnMarcarSeletivo: TUniMenuItem
      Caption = 'Marcar Como Custo Seletivo'
    end
    object mnDesmarcarSeletivo: TUniMenuItem
      Caption = 'Desmarcar como Custo Seletivo'
    end
    object mnMarcarSeletivoTodos: TUniMenuItem
      Caption = 'Marcar todos como Custo Seletivo'
    end
    object mnDesmarcarSeletivoTodos: TUniMenuItem
      Caption = 'Desmarcar todos como Custo Seletivo'
    end
  end
  object dsPedidosNF: TDataSource
    DataSet = PedidosNF
    Left = 138
    Top = 116
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 499
    Top = 4
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = iif(CNPJ <> '#39#39', replicate('#39'0'#39', 14-len(CNPJ))+C' +
        'NPJ, replicate('#39'0'#39', 14-len(CPF))+CPF)'
      'from Destinatarios')
    Left = 138
    Top = 165
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 138
    Top = 212
  end
  object OpFiscal: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscal')
    Left = 138
    Top = 260
  end
  object dsOPFiscal: TDataSource
    DataSet = OpFiscal
    Left = 138
    Top = 309
  end
  object Beneficio: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from BeneficioFiscal')
    Left = 138
    Top = 360
  end
  object dsBeneficio: TDataSource
    DataSet = Beneficio
    Left = 138
    Top = 407
  end
  object Transportador: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = iif(CNPJ <> '#39#39', replicate('#39'0'#39', 14-len(CNPJ))+C' +
        'NPJ, replicate('#39'0'#39', 14-len(CPF))+CPF)'
      'from Destinatarios'
      'where isnull(Transportador, 0) = 1')
    Left = 138
    Top = 458
  end
  object dsTransportador: TDataSource
    DataSet = Transportador
    Left = 138
    Top = 510
  end
  object ModalFrete: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = iif(CNPJ <> '#39#39', replicate('#39'0'#39', 14-len(CNPJ))+C' +
        'NPJ, replicate('#39'0'#39', 14-len(CPF))+CPF)'
      'from Destinatarios'
      'where isnull(Transportador, 0) = 1')
    Left = 138
    Top = 559
  end
  object dsModalFrete: TDataSource
    DataSet = ModalFrete
    Left = 138
    Top = 605
  end
  object IndPresenca: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from IndicadorPresenca')
    Left = 138
    Top = 656
  end
  object dsIndPresenca: TDataSource
    DataSet = IndPresenca
    Left = 138
    Top = 702
  end
  object PresencaComp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PresencaComprador')
    Left = 311
    Top = 165
  end
  object dsPresencaComp: TDataSource
    DataSet = PresencaComp
    Left = 311
    Top = 212
  end
  object Intermediador: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Intermediadores')
    Left = 219
    Top = 70
  end
  object dsIntermediador: TDataSource
    DataSet = Intermediador
    Left = 220
    Top = 116
  end
  object TiposDesc: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from TiposDescontos'
      '')
    Left = 220
    Top = 165
  end
  object dsTiposDesc: TDataSource
    DataSet = TiposDesc
    Left = 220
    Top = 212
  end
  object TipoPgto: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo = 0'
      '      ,Descricao = cast('#39#39' as varchar(15))'
      '')
    Left = 220
    Top = 260
  end
  object dsTipoPgto: TDataSource
    DataSet = TipoPgto
    Left = 220
    Top = 309
  end
  object FormaPgto: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from FormaPagamento'
      '')
    Left = 220
    Top = 360
  end
  object dsFormaPgto: TDataSource
    DataSet = FormaPgto
    Left = 220
    Top = 407
  end
  object OpVeiculo: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from OperacaoVeiculo'
      '')
    Left = 220
    Top = 458
  end
  object dsOpVeiculo: TDataSource
    DataSet = OpVeiculo
    Left = 220
    Top = 510
  end
  object RestVeiculo: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from RestricaoVeiculo'
      '')
    Left = 220
    Top = 559
  end
  object dsRestVeiculo: TDataSource
    DataSet = RestVeiculo
    Left = 220
    Top = 605
  end
  object NFRef: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Chave'
      '      ,Data_Emissao '
      '      ,Processo'
      'from NotasFiscais '
      'where isnull(Cancelada, 0) = 0'
      'and isnull(Denegada, 0) = 0'
      'order by Chave')
    Left = 220
    Top = 656
  end
  object dsNFRef: TDataSource
    DataSet = NFRef
    Left = 220
    Top = 702
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 311
    Top = 510
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 311
    Top = 458
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Empresa '
      '      ,Faturamento_BloquearAtraso'
      '     ,'
      'from Config'
      ''
      ''
      '')
    Left = 311
    Top = 360
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 311
    Top = 407
  end
  object PedidosNF: TFDQuery
    BeforePost = PedidosNFBeforePost
    BeforeDelete = PedidosNFBeforeDelete
    AfterScroll = PedidosNFAfterScroll
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 135
    Top = 66
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 651
    Top = 4
  end
  object tLotes: TFDQuery
    BeforePost = PedidosNFBeforePost
    BeforeDelete = PedidosNFBeforeDelete
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Pedido'
      '      ,Tipo = iif(ES = 0, '#39'ENTRADA'#39', '#39'SA'#205'DA'#39')'
      '      ,Processo_Desc = case Tipo_Processo '
      #9'                    when '#39'I'#39' then '#39'IMPORTA'#199#195'O'#39
      '                            when '#39'E'#39' then '#39'EXPORTA'#199#195'O'#39
      '                            when '#39#39'  then '#39'OUTROS'#39
      '                       end'
      '      ,Operacao'
      
        '      ,Op_Descricao= (select Descricao from OperacaoFiscal where' +
        ' Codigo = Operacao)'
      '      ,Destinatario_Nome'
      '      ,Destinatario_CNPJ_CPF'
      '      ,Destinatario_Estado'
      '      ,Valor_Pedido'
      'from PedidosNF')
    Left = 509
    Top = 70
  end
  object Armazem: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,CNPJ'
      'from Destinatarios'
      'where isnull(Armazem, 0) = 1')
    Left = 308
    Top = 559
  end
  object dsArmazem: TDataSource
    DataSet = Armazem
    Left = 308
    Top = 605
  end
  object Representantes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,CNPJ'
      'from Destinatarios'
      'where isnull(Representante, 0) = 1')
    Left = 306
    Top = 656
  end
  object dsRepresentantes: TDataSource
    DataSet = Representantes
    Left = 306
    Top = 702
  end
  object AtendeCall: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,CNPJ'
      'from Destinatarios'
      'where isnull(Representante, 0) = 1')
    Left = 396
    Top = 70
  end
  object dsAtendeCall: TDataSource
    DataSet = AtendeCall
    Left = 396
    Top = 117
  end
  object PedidosNFItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from PedidosNFitens'
      '')
    Left = 310
    Top = 67
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object PedidosNFItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object PedidosNFItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      EditMask = '#.###;0'
      Size = 4
    end
    object PedidosNFItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object PedidosNFItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object PedidosNFItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.##;0'
      FixedChar = True
      Size = 8
    end
    object PedidosNFItensUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object PedidosNFItensValor_Unitario: TBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.00'
    end
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 311
    Top = 116
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 459
    Top = 70
  end
  object ICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ICMS')
    Left = 311
    Top = 260
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 311
    Top = 309
  end
  object tTotaliza: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 559
    Top = 68
  end
end
