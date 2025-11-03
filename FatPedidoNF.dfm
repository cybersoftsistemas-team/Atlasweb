object fFatPedidoNF: TfFatPedidoNF
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 1498
  Height = 1050
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
    Height = 1015
    Hint = ''
    ActivePage = aLista
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
        Height = 960
        Hint = ''
        CreateOrder = 1
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsListaPed
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados...'
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
          end
          item
            FieldName = 'ES_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 74
            Font.Name = 'Calibri'
            Alignment = taCenter
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
          end
          item
            FieldName = 'Destinatario_CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Title.Font.Style = [fsBold]
            Width = 139
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Destinatario_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 30
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Valor_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 183
            Font.Name = 'Calibri'
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
        Height = 987
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ScrollDirection = sdNone
        DesignSize = (
          1262
          985)
        ScrollHeight = 920
        object UniPanel1: TUniPanel
          Left = 56
          Top = 16
          Width = 602
          Height = 904
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
            Left = 22
            Top = 19
            Width = 88
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Pedido'
            DataSource = dsPedidosNF
            TabOrder = 3
            TabStop = False
            ReadOnly = True
            FieldLabel = 'N'#186' DO PEDIDO'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cOperacao: TUniDBLookupComboBox
            Left = 116
            Top = 19
            Width = 455
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Tipo; Descricao'
            ListSource = dsOPFiscal
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Operacao'
            DataSource = dsPedidosNF
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Opera'#231#227'o Fiscal'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object PanelDados1: TUniContainerPanel
            AlignWithMargins = True
            Left = 10
            Top = 97
            Width = 582
            Height = 797
            Hint = ''
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Enabled = False
            ShowHint = True
            ParentColor = False
            Align = alBottom
            TabOrder = 1
            ScrollDirection = sdNone
            object cDestinatario: TUniDBLookupComboBox
              Left = 15
              Top = 118
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;CNPJ_CPF;Nome'
              ListSource = dsDestinatarios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Destinatario'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Destinat'#225'rio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTransportador: TUniDBLookupComboBox
              Left = 15
              Top = 169
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ_CPF;Nome'
              ListSource = dsTransportador
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Transportador'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Transportador'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cNFRef: TUniDBLookupComboBox
              Left = 15
              Top = 67
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Processo;Chave;Data_Emissao'
              ListSource = dsNFRef
              KeyField = 'Chave'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'NFe_Referencia'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Nota Refer'#234'ncia'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cVolume_Especie: TUniDBEdit
              Left = 122
              Top = 681
              Width = 156
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Especie'
              DataSource = dsPedidosNF
              TabOrder = 4
              ClearButton = True
              FieldLabel = 'Esp'#233'cie'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVolume_Quantidade: TUniDBEdit
              Left = 15
              Top = 681
              Width = 101
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Quantidade'
              DataSource = dsPedidosNF
              TabOrder = 5
              ClearButton = True
              FieldLabel = 'Volumes'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVolume_Marca: TUniDBEdit
              Left = 284
              Top = 681
              Width = 129
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Marca'
              DataSource = dsPedidosNF
              TabOrder = 6
              ClearButton = True
              FieldLabel = 'Marca'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVolume_Numero: TUniDBEdit
              Left = 419
              Top = 681
              Width = 145
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_Numero'
              DataSource = dsPedidosNF
              TabOrder = 7
              ClearButton = True
              FieldLabel = 'N'#186
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cForma_Pagamento: TUniDBLookupComboBox
              Left = 171
              Top = 528
              Width = 394
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsFormaPgto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Forma_Pagamento'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Forma Pgto.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDescricao_Forma: TUniDBEdit
              Left = 15
              Top = 579
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Descricao_Forma'
              DataSource = dsPedidosNF
              TabOrder = 9
              ClearButton = True
              FieldLabel = 'Descri'#231#227'o (Forma)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cIntermediador: TUniDBLookupComboBox
              Left = 15
              Top = 373
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsIntermediador
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Intermediador'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Intermediador'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cBeneficio_Fiscal: TUniDBLookupComboBox
              Left = 15
              Top = 16
              Width = 405
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsBeneficio
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'Beneficio_Fiscal'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Benef'#237'cio Fiscal'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cModalidade_Frete: TUniDBLookupComboBox
              Left = 15
              Top = 220
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsModalFrete
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'Modalidade_Frete'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Modalidade de Frete'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cIndicador_Intermediario: TUniDBLookupComboBox
              Left = 15
              Top = 322
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsIndPresenca
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Indicador_Intermediario'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Indicador de Intermediario'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cIndicador_Presenca: TUniDBLookupComboBox
              Left = 15
              Top = 271
              Width = 550
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsPresencaComp
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Indicador_Presenca'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Indicador de Presen'#231'a do Comprador'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTipoDesc: TUniDBLookupComboBox
              Left = 15
              Top = 424
              Width = 373
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsTiposDesc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Desconto_Tipo'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Tipo de Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDesconto_Percentual: TUniDBFormattedNumberEdit
              Left = 394
              Top = 424
              Width = 171
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Desconto_Percentual'
              DataSource = dsPedidosNF
              TabOrder = 16
              SelectOnFocus = True
              FieldLabel = '% Desconto'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cAliquota_IRPJ: TUniDBFormattedNumberEdit
              Left = 15
              Top = 476
              Width = 150
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_IRPJ'
              DataSource = dsPedidosNF
              TabOrder = 17
              SelectOnFocus = True
              FieldLabel = '% IRPJ'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cAliquota_CSLL: TUniDBFormattedNumberEdit
              Left = 171
              Top = 476
              Width = 150
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_CSLL'
              DataSource = dsPedidosNF
              TabOrder = 18
              SelectOnFocus = True
              FieldLabel = '% CSLL'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cTipo_Pagamento: TUniDBLookupComboBox
              Left = 15
              Top = 528
              Width = 150
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsTipoPgto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Tipo_Pagamento'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 19
              Color = clWindow
              FieldLabel = 'Tipo de Pagamento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cOperacao_Veiculo: TUniDBLookupComboBox
              Left = 15
              Top = 630
              Width = 272
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsOpVeiculo
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Operacao_Veiculo'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 20
              Color = clWindow
              FieldLabel = 'Opeara'#231#227'o com ve'#237'culo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cVeiculo_Restricao: TUniDBLookupComboBox
              Left = 292
              Top = 630
              Width = 272
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsRestVeiculo
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Veiculo_Restricao'
              DataSource = dsPedidosNF
              AnyMatch = True
              TabOrder = 21
              Color = clWindow
              FieldLabel = 'Restri'#231#227'o Ve'#237'culo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTaxa_Cambio: TUniDBFormattedNumberEdit
              Left = 427
              Top = 16
              Width = 138
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Taxa_Cambio'
              DataSource = dsPedidosNF
              TabOrder = 22
              SelectOnFocus = True
              FieldLabel = 'Taxa Fech.C'#226'mbio'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 15
              Top = 731
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_PesoLiquido'
              DataSource = dsPedidosNF
              TabOrder = 23
              FieldLabel = 'Peso L'#237'quido'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 177
              Top = 731
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Volume_PesoBruto'
              DataSource = dsPedidosNF
              TabOrder = 24
              FieldLabel = 'Peso Bruto'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniSimplePanel1: TUniSimplePanel
            Left = -2
            Top = 87
            Width = 605
            Height = 5
            Hint = ''
            ShowHint = True
            ParentColor = False
            Color = 4737096
            TabOrder = 4
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Pedido'
      object UniScrollBox3: TUniScrollBox
        AlignWithMargins = True
        Left = 68
        Top = 3
        Width = 1193
        Height = 981
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ScrollDirection = sdVertical
        DesignSize = (
          1174
          979)
        ScrollHeight = 1223
        object PainelItens: TUniPanel
          Left = 38
          Top = 23
          Width = 677
          Height = 1200
          Hint = ''
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          ShowCaption = False
          Title = 'ITENS DO PEDIDO'
          Caption = ''
          Color = clTeal
          ParentAlignmentControl = False
          object GradeEditItens: TUniDBGrid
            AlignWithMargins = True
            Left = 7
            Top = 828
            Width = 663
            Height = 365
            Hint = ''
            Margins.Left = 7
            Margins.Top = 7
            Margins.Right = 7
            Margins.Bottom = 7
            CreateOrder = 2
            ShowHint = True
            HeaderTitleAlign = taCenter
            TitleFont.Height = -13
            TitleFont.Style = [fsBold]
            DataSource = dsPedidosNFItens
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            WebOptions.DefaultFloatFormat = ',##0.00'
            LoadMask.Message = 'Carregando itens do pedido...'
            RowHeight = 24
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            Align = alBottom
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 56
            ParentColor = False
            Color = clBtnFace
            OnDblClick = bEditarClick
            Columns = <
              item
                FieldName = 'Item'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 32
                Font.Height = -13
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'CFOP'
                Title.Alignment = taCenter
                Title.Caption = 'CFOP'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 32
                Font.Height = -13
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'Codigo_Mercadoria'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 68
                Font.Height = -13
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Descricao_Mercadoria'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 494
                Font.Height = -13
                Font.Name = 'Calibri'
                MemoOptions.ConvertNewLineToBreak = True
                DisplayMemo = True
              end
              item
                FieldName = 'NCM'
                Title.Alignment = taCenter
                Title.Caption = 'NCM'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 61
                Font.Height = -13
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'Quantidade'
                Title.Alignment = taCenter
                Title.Caption = 'QTDE'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 90
                Font.Height = -13
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Valor_Unitario'
                Title.Alignment = taCenter
                Title.Caption = 'Unit'#225'rio'
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 98
                Font.Height = -13
                Font.Name = 'Calibri'
              end>
          end
          object cCSTIPI: TUniDBLookupComboBox
            Left = 22
            Top = 659
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTIPI'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 48
            Color = clWindow
            FieldLabel = 'CST IPI'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cCSTPIS: TUniDBLookupComboBox
            Left = 22
            Top = 685
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTPIS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTPIS'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 49
            Color = clWindow
            FieldLabel = 'CST PIS'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cCSTCOFINS: TUniDBLookupComboBox
            Left = 22
            Top = 711
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTCOFINS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTCOFINS'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 50
            Color = clWindow
            FieldLabel = 'CST COFINS'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cCSTICMS: TUniDBLookupComboBox
            Left = 145
            Top = 737
            Width = 511
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTICMS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTICMS_TabB'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 52
            Color = clWindow
            FieldLabel = 'CST ICMS Tab.B'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cQtde: TUniDBFormattedNumberEdit
            Left = 22
            Top = 128
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Quantidade'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnExit = cQtdeExit
          end
          object cPercentual_Desconto: TUniDBFormattedNumberEdit
            Left = 22
            Top = 157
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Percentual_Desconto'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 9
            SelectOnFocus = True
            FieldLabel = '% Desconto'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnExit = cPercentual_DescontoExit
          end
          object cValor_Desconto: TUniDBFormattedNumberEdit
            Left = 232
            Top = 157
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Desconto'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 10
            SelectOnFocus = True
            FieldLabel = 'Valor Desconto'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnExit = cValor_DescontoExit
          end
          object cProduto: TUniDBLookupComboBox
            Left = 22
            Top = 18
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;NCM;Descricao'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 2
            ClearButton = True
            DataField = 'Codigo_Mercadoria'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
            Mode = umNameValue
            OnExit = cProdutoExit
          end
          object cCFOP: TUniDBLookupComboBox
            Left = 22
            Top = 45
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CFOP'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'CFOP'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 22
            Top = 72
            Width = 495
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Tipo;Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 1
            DataField = 'Processo'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cPO: TUniDBEdit
            Left = 22
            Top = 100
            Width = 162
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'PO'
            DataSource = dsPedidosNFItens
            TabOrder = 4
            FieldLabel = 'Pedido Compra'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
          end
          object cOrdem: TUniDBEdit
            Left = 198
            Top = 100
            Width = 193
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Ordem'
            DataSource = dsPedidosNFItens
            TabOrder = 5
            FieldLabel = 'Ordem'
            FieldLabelWidth = 40
            FieldLabelSeparator = ' '
          end
          object cAliquota_II: TUniDBFormattedNumberEdit
            Left = 292
            Top = 253
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_II'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 13
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnChange = cAliquota_IIChange
          end
          object cValor_BCII: TUniDBFormattedNumberEdit
            Left = 150
            Top = 253
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCII'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 12
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnChange = cValor_BCIIChange
          end
          object cValor_II: TUniDBFormattedNumberEdit
            Left = 374
            Top = 253
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_II'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 14
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_IPI: TUniDBFormattedNumberEdit
            Left = 292
            Top = 280
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_IPI'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 16
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnChange = cAliquota_IPIChange
          end
          object cValor_BCIPI: TUniDBFormattedNumberEdit
            Left = 150
            Top = 280
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCIPI'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 15
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnChange = cValor_BCIPIChange
          end
          object cValor_IPI: TUniDBFormattedNumberEdit
            Left = 374
            Top = 280
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_IPI'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 17
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_OutrasIPI: TUniDBFormattedNumberEdit
            Left = 150
            Top = 307
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_OutrasIPI'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 18
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_PIS: TUniDBFormattedNumberEdit
            Left = 292
            Top = 361
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_PIS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 21
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_BCPIS: TUniDBFormattedNumberEdit
            Left = 150
            Top = 361
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCPIS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 20
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_PIS: TUniDBFormattedNumberEdit
            Left = 374
            Top = 361
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_PIS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 22
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_COFINS: TUniDBFormattedNumberEdit
            Left = 292
            Top = 388
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_COFINS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 24
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_BCCOFINS: TUniDBFormattedNumberEdit
            Left = 150
            Top = 388
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCCOFINS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 23
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_COFINS: TUniDBFormattedNumberEdit
            Left = 374
            Top = 388
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_COFINS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 25
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_ICMSOp: TUniDBFormattedNumberEdit
            Left = 292
            Top = 415
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_ICMSOp'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 27
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_BCICMSOp: TUniDBFormattedNumberEdit
            Left = 150
            Top = 415
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCICMSOp'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 26
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_ICMS: TUniDBFormattedNumberEdit
            Left = 374
            Top = 415
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_ICMSOp'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 28
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_ICMSDif: TUniDBFormattedNumberEdit
            Left = 150
            Top = 469
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_ICMSDif'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 32
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_ICMSDif: TUniDBFormattedNumberEdit
            Left = 374
            Top = 469
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_ICMSDif'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 33
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_OutrasICMS: TUniDBFormattedNumberEdit
            Left = 150
            Top = 496
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_OutrasICMS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 34
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_IsentasICMS: TUniDBFormattedNumberEdit
            Left = 150
            Top = 523
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_IsentasICMS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 35
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_ICMSST: TUniDBFormattedNumberEdit
            Left = 292
            Top = 442
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_ICMSST'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 30
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_BCICMSST: TUniDBFormattedNumberEdit
            Left = 150
            Top = 442
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCICMSST'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 29
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_ICMSST: TUniDBFormattedNumberEdit
            Left = 374
            Top = 442
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_ICMSST'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 31
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_MVA: TUniDBFormattedNumberEdit
            Left = 292
            Top = 550
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_MVA'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 37
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_BCMVA: TUniDBFormattedNumberEdit
            Left = 150
            Top = 550
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCMVA'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 36
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_MVA: TUniDBFormattedNumberEdit
            Left = 374
            Top = 550
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_MVA'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 38
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cValor_Total: TUniFormattedNumberEdit
            Left = 444
            Top = 128
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 8
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Total'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cValor_Unitario: TUniDBFormattedNumberEdit
            Left = 232
            Top = 128
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Unitario'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 7
            SelectOnFocus = True
            FieldLabel = 'Valor Unit'#225'rio'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
            OnChange = cValor_UnitarioChange
            OnExit = cValor_UnitarioExit
          end
          object cTotalIPI: TUniFormattedNumberEdit
            Left = 516
            Top = 280
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 55
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalOutrasIPI: TUniFormattedNumberEdit
            Left = 516
            Top = 307
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 57
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalPIS: TUniFormattedNumberEdit
            Left = 516
            Top = 361
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 58
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalCOFINS: TUniFormattedNumberEdit
            Left = 516
            Top = 388
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 59
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalICMSOp: TUniFormattedNumberEdit
            Left = 516
            Top = 415
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 60
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalICMSST: TUniFormattedNumberEdit
            Left = 516
            Top = 442
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 62
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalOutrasICMS: TUniFormattedNumberEdit
            Left = 516
            Top = 496
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 63
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalIsentasICMS: TUniFormattedNumberEdit
            Left = 516
            Top = 523
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 64
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalMVA: TUniFormattedNumberEdit
            Left = 516
            Top = 550
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 65
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalII: TUniFormattedNumberEdit
            Left = 516
            Top = 253
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 66
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cICMSAnt: TUniDBCheckBox
            Left = 22
            Top = 192
            Width = 297
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'ICMSST_Anterior'
            DataSource = dsPedidosNFItens
            Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
            TabOrder = 11
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBEdit1: TUniDBEdit
            Left = 22
            Top = 737
            Width = 117
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'CSTICMS_TabA'
            DataSource = dsPedidosNFItens
            TabOrder = 51
            FieldLabel = 'CST Tab.A'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
          end
          object UniLabel16: TUniLabel
            Left = 22
            Top = 226
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taCenter
            AutoSize = False
            Caption = 'IMPOSTO'
            ParentFont = False
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 67
          end
          object UniLabel17: TUniLabel
            Left = 22
            Top = 253
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'II'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 68
          end
          object UniLabel18: TUniLabel
            Left = 22
            Top = 280
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'IPI'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 69
          end
          object UniLabel19: TUniLabel
            Left = 22
            Top = 307
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'Outras de IPI'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 70
          end
          object UniLabel20: TUniLabel
            Left = 22
            Top = 361
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'PIS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 71
          end
          object UniLabel21: TUniLabel
            Left = 22
            Top = 388
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'COFINS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 72
          end
          object UniLabel22: TUniLabel
            Left = 22
            Top = 415
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'ICMS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 73
          end
          object UniLabel23: TUniLabel
            Left = 22
            Top = 442
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'ICMS ST'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 74
          end
          object UniLabel24: TUniLabel
            Left = 22
            Top = 469
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'ICMS Diferimento'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 75
          end
          object UniLabel25: TUniLabel
            Left = 22
            Top = 496
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'Outras ICMS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 76
          end
          object UniLabel26: TUniLabel
            Left = 22
            Top = 550
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'MVA'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 77
          end
          object UniLabel27: TUniLabel
            Left = 150
            Top = 226
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taCenter
            AutoSize = False
            Caption = 'BASE DE C'#193'LCULO'
            ParentFont = False
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 78
          end
          object UniLabel28: TUniLabel
            Left = 292
            Top = 226
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taCenter
            AutoSize = False
            Caption = 'AL'#205'QUOTA'
            ParentFont = False
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 79
          end
          object UniLabel29: TUniLabel
            Left = 374
            Top = 226
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR'
            ParentFont = False
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 80
          end
          object UniLabel30: TUniLabel
            Left = 516
            Top = 226
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taCenter
            AutoSize = False
            Caption = 'TOTAL'
            ParentFont = False
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 81
          end
          object cValor_IsentasIPI: TUniDBFormattedNumberEdit
            Left = 150
            Top = 334
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_IsentasIPI'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 19
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cTotalIsentasIPI: TUniFormattedNumberEdit
            Left = 516
            Top = 334
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 82
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniLabel31: TUniLabel
            Left = 22
            Top = 334
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'Isentas de IPI'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 83
          end
          object UniLabel32: TUniLabel
            Left = 22
            Top = 523
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'Isentas ICMS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 84
          end
          object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
            Left = 292
            Top = 577
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_IS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 40
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
            Left = 150
            Top = 577
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCIS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 39
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit
            Left = 374
            Top = 577
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_IS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 41
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
            Left = 292
            Top = 604
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_IBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 43
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit
            Left = 150
            Top = 604
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCIBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 42
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit
            Left = 374
            Top = 604
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_IBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 44
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit11: TUniDBFormattedNumberEdit
            Left = 292
            Top = 631
            Width = 80
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_CBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 46
            SelectOnFocus = True
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit12: TUniDBFormattedNumberEdit
            Left = 150
            Top = 631
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_BCCBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 61
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniDBFormattedNumberEdit13: TUniDBFormattedNumberEdit
            Left = 374
            Top = 631
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_CBS'
            DataSource = dsPedidosNFItens
            Alignment = taRightJustify
            TabOrder = 47
            SelectOnFocus = True
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cTotalIS: TUniFormattedNumberEdit
            Left = 516
            Top = 577
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 85
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalIBS: TUniFormattedNumberEdit
            Left = 516
            Top = 604
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 45
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cTotalCBS: TUniFormattedNumberEdit
            Left = 516
            Top = 631
            Width = 140
            Height = 25
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            TabOrder = 86
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabelWidth = 85
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniLabel1: TUniLabel
            Left = 22
            Top = 577
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'IS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 87
          end
          object UniLabel2: TUniLabel
            Left = 22
            Top = 604
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'IBS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 88
          end
          object UniLabel3: TUniLabel
            Left = 22
            Top = 631
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            AutoSize = False
            Caption = 'CBS'
            ParentFont = False
            Font.Name = 'Calibri'
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'LabelDestaque'#39';'#13#10'}')
            Transparent = False
            TabOrder = 89
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 22
            Top = 763
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTIBS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTIBS'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 53
            Color = clWindow
            FieldLabel = 'CST IBS'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 22
            Top = 789
            Width = 634
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTCBS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'CSTCBS'
            DataSource = dsPedidosNFItens
            AnyMatch = True
            TabOrder = 54
            Color = clWindow
            FieldLabel = 'CST CBS'
            FieldLabelWidth = 70
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
        end
      end
      object pNavegaItens: TUniPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 987
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
        object bDE: TUniSpeedButton
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
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Pedido'
      object UniDBGrid1: TUniDBGrid
        Left = 65
        Top = 0
        Width = 1199
        Height = 987
        Hint = ''
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 7
        CreateOrder = 2
        ShowHint = True
        ParentShowHint = False
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsPedidosNFItens
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        WebOptions.DefaultFloatFormat = ',##0.00'
        LoadMask.Message = 'Carregando itens do pedido...'
        RowHeight = 24
        ForceFit = True
        BorderStyle = ubsSolid
        TrackOver = False
        Align = alClient
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 32
            Font.Height = -13
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'CFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 32
            Font.Height = -13
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 68
            Font.Height = -13
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 494
            Font.Height = -13
            Font.Name = 'Calibri'
            MemoOptions.ConvertNewLineToBreak = True
            DisplayMemo = True
          end
          item
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 61
            Font.Height = -13
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'UM'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Width = 40
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Height = -13
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'#225'rio'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 98
            Font.Height = -13
            Font.Name = 'Calibri'
          end>
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 987
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
        object UniSpeedButton1: TUniSpeedButton
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
          OnClick = UniSpeedButton1Click
        end
        object UniSpeedButton2: TUniSpeedButton
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
          OnClick = UniSpeedButton2Click
        end
        object UniSpeedButton3: TUniSpeedButton
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
        object UniSpeedButton4: TUniSpeedButton
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
        object UniSpeedButton5: TUniSpeedButton
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
        object UniSpeedButton6: TUniSpeedButton
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
        object UniSpeedButton7: TUniSpeedButton
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
        object UniSpeedButton8: TUniSpeedButton
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
        object UniSpeedButton9: TUniSpeedButton
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
        Height = 347
        Hint = ''
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alTop
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
          end
          item
            FieldName = 'Classificacao'
            Title.Alignment = taCenter
            Title.Caption = 'Class'
            Width = 91
          end
          item
            FieldName = 'DescricaoClassificacao'
            Title.Alignment = taCenter
            Title.Caption = 'Despesa'
            Width = 285
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'P/R'
            Width = 26
            Alignment = taCenter
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 109
          end
          item
            FieldName = 'Custo_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'C.Ent'
            Width = 32
          end
          item
            FieldName = 'CustoConta'
            Title.Alignment = taCenter
            Title.Caption = 'C.Sai'
            Width = 32
          end
          item
            FieldName = 'Custo_Seletivo'
            Title.Alignment = taCenter
            Title.Caption = 'C.Sel'
            Width = 32
          end
          item
            FieldName = 'Custo_Outros'
            Title.Caption = 'C.Out'
            Width = 36
          end>
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Formulas'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1264
        Height = 987
        Hint = ''
        Align = alClient
        TabOrder = 0
        ScrollHeight = 522
        object gFormula: TUniStringGrid
          Left = 0
          Top = 0
          Width = 1262
          Height = 522
          Hint = ''
          HeaderTitle = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
          HeaderTitleAlign = taCenter
          CellCursor = crHandPoint
          FixedColor = 15450856
          FixedRows = 0
          RowCount = 1
          ColCount = 4
          DefaultRowHeight = 20
          Options = [goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
          CustomizableCells = False
          ShowColumnTitles = True
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = 'Campo'
              Width = 140
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'F'#243'rmula'
              Width = 770
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Valores'
              Width = 180
            end
            item
              Title.Alignment = taCenter
              Title.Caption = 'Resultado'
              Width = 100
            end>
          BorderStyle = ubsNone
          StripeRows = True
          ForceFit = True
          Align = alTop
          TabOrder = 0
        end
        object cLog: TUniMemo
          Left = 0
          Top = 522
          Width = 1262
          Height = 463
          Hint = ''
          BorderStyle = ubsNone
          ScrollBars = ssBoth
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'JetBrains Mono'
          Align = alClient
          Color = clWhite
          TabOrder = 1
          FieldLabel = 'LOG'
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
    end
  end
  object UniPanel3: TUniPanel
    AlignWithMargins = True
    Left = 1275
    Top = 38
    Width = 220
    Height = 1009
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
      Top = 2
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Produtos'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorDespesas: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 26
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Despesas'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorFrete: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 74
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Frete'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorSeguro: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 98
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Seguro'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorII: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 146
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'II'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorIPI: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 194
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'IPI'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorPIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 242
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'PIS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorCOFINS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 290
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'COFINS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorICMS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 338
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'ICMS Oper'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorICMSST: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 386
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'ICMS ST'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorDesconto: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 602
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Descontos'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorPedido: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 626
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'Total do Pedido'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCII: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 122
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'B.C.II'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCIPI: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 170
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC IPI'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCPIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 218
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC.PIS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCCOFINS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 266
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC COFINS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCICMS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 314
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC ICMS Oper'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCICMSST: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 362
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC ICMS ST'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorAFRMM: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 50
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'AFRMM'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorDIFALDest: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 434
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'DIFAL Destino'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorDIFALOrig: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 410
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'DIFAL Origem'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 458
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC IS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorIS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 482
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'IS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorBCIBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 506
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC IBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorIBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 530
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'IBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object ValorBCCBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 554
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'BC CBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object cValorCBS: TUniDBFormattedNumberEdit
      AlignWithMargins = True
      Left = 4
      Top = 578
      Width = 212
      Height = 22
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 1
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
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'CampoDestaque'#39';'#13#10'}')
      FieldLabel = 'CBS'
      FieldLabelWidth = 75
      FieldLabelSeparator = ' '
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
  end
  object MenuCusto: TPopupMenu
    Left = 570
    Top = 5
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
    Left = 62
    Top = 125
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
    Left = 62
    Top = 174
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 62
    Top = 221
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
    Left = 62
    Top = 268
  end
  object dsOPFiscal: TDataSource
    DataSet = OpFiscal
    Left = 62
    Top = 314
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
    Left = 62
    Top = 361
  end
  object dsBeneficio: TDataSource
    DataSet = Beneficio
    Left = 62
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
    Left = 62
    Top = 456
  end
  object dsTransportador: TDataSource
    DataSet = Transportador
    Left = 62
    Top = 502
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
    Left = 62
    Top = 551
  end
  object dsModalFrete: TDataSource
    DataSet = ModalFrete
    Left = 62
    Top = 597
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
    Left = 62
    Top = 648
  end
  object dsIndPresenca: TDataSource
    DataSet = IndPresenca
    Left = 62
    Top = 694
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
    Left = 320
    Top = 268
  end
  object dsPresencaComp: TDataSource
    DataSet = PresencaComp
    Left = 320
    Top = 314
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
    Left = 151
    Top = 83
  end
  object dsIntermediador: TDataSource
    DataSet = Intermediador
    Left = 151
    Top = 125
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      '      ,ES'
      'from CFOP '
      'where Desativada <> 1')
    Left = 151
    Top = 174
    object CFOPCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      EditMask = '#.###;0'
      FixedChar = True
      Size = 4
    end
    object CFOPDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 80
    end
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 151
    Top = 221
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
    Left = 151
    Top = 268
  end
  object dsTiposDesc: TDataSource
    DataSet = TiposDesc
    Left = 151
    Top = 314
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
    Left = 151
    Top = 361
  end
  object dsTipoPgto: TDataSource
    DataSet = TipoPgto
    Left = 151
    Top = 407
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
    Left = 151
    Top = 456
  end
  object dsFormaPgto: TDataSource
    DataSet = FormaPgto
    Left = 151
    Top = 502
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
    Left = 151
    Top = 551
  end
  object dsOpVeiculo: TDataSource
    DataSet = OpVeiculo
    Left = 151
    Top = 597
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
    Left = 151
    Top = 648
  end
  object dsRestVeiculo: TDataSource
    DataSet = RestVeiculo
    Left = 151
    Top = 694
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao = Descricao_Reduzida'
      '      ,NCM'
      '      ,Valor_Venda'
      '      ,Valor_ConsumidorFinal'
      '      ,Valor_CustoMedio'
      '      ,Valor_Entrada'
      '      ,Aliquota_IPI'
      '      ,Valor_IPI'
      '      ,Aliquota_II'
      '      ,Valor_II'
      '      ,Aliquota_PIS'
      '      ,Aliquota_COFINS'
      '      ,Aliquota_PISEntrada'
      '      ,Aliquota_COFINSEntrada'
      '      ,Aliquota_PISSaida'
      '      ,Aliquota_COFINSSaida'
      '      ,Reducao_PIS'
      '      ,Reducao_COFINS'
      '      ,CSTPIS_AliquotaUM'
      '      ,CSTPIS_Monofasica'
      '      ,CSTPIS_AliquotaZero'
      '      ,CSTPIS_Isenta'
      '      ,CSTPIS_SemIncidencia'
      '      ,CSTPIS_Suspensao'
      '      ,CSTPIS_Outras'
      '      ,Origem'
      '      ,ICMS_ForaEstadoEnt'
      '      ,ICMS_ForaEstadoSai'
      '      ,ICMS_DentroEstadoEnt'
      '      ,ICMS_DentroEstadoSai'
      '      ,ICMS_DentroEstadoSimples'
      '      ,Tabela_CAMEX'
      '      ,CSTICMS_Entrada'
      '      ,CSTICMS_Saida'
      '      ,Beneficio_FiscalEnt'
      '      ,Beneficio_FiscalSai'
      '      ,Codigo_Fabricante'
      '      ,UM'
      '      ,Peso_Liquido'
      '      ,Peso_Bruto'
      'from Produtos'
      'where Desativado <> 1'
      'and isnull(NCM, '#39#39') <> '#39#39' '
      'order by Descricao')
    Left = 320
    Top = 456
    object ProdutosCodigo: TIntegerField
      Alignment = taCenter
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      DisplayFormat = '0000000000;0'
    end
    object ProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 60
    end
    object ProdutosValor_Venda: TCurrencyField
      FieldName = 'Valor_Venda'
      Origin = 'Valor_Venda'
    end
    object ProdutosValor_ConsumidorFinal: TCurrencyField
      FieldName = 'Valor_ConsumidorFinal'
      Origin = 'Valor_ConsumidorFinal'
    end
    object ProdutosValor_CustoMedio: TCurrencyField
      FieldName = 'Valor_CustoMedio'
      Origin = 'Valor_CustoMedio'
    end
    object ProdutosValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
      Origin = 'Valor_Entrada'
    end
    object ProdutosValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object ProdutosNCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.####;0'
      Size = 10
    end
    object ProdutosAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object ProdutosAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object ProdutosValor_II: TCurrencyField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object ProdutosReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
      Origin = 'Reducao_PIS'
    end
    object ProdutosReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
      Origin = 'Reducao_COFINS'
    end
    object ProdutosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
    end
    object ProdutosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
    end
    object ProdutosAliquota_PISEntrada: TFloatField
      FieldName = 'Aliquota_PISEntrada'
      Origin = 'Aliquota_PISEntrada'
    end
    object ProdutosAliquota_COFINSEntrada: TFloatField
      FieldName = 'Aliquota_COFINSEntrada'
      Origin = 'Aliquota_COFINSEntrada'
    end
    object ProdutosAliquota_PISSaida: TFloatField
      FieldName = 'Aliquota_PISSaida'
      Origin = 'Aliquota_PISSaida'
    end
    object ProdutosAliquota_COFINSSaida: TFloatField
      FieldName = 'Aliquota_COFINSSaida'
      Origin = 'Aliquota_COFINSSaida'
    end
    object ProdutosCSTPIS_AliquotaUM: TBooleanField
      FieldName = 'CSTPIS_AliquotaUM'
      Origin = 'CSTPIS_AliquotaUM'
    end
    object ProdutosCSTPIS_Monofasica: TBooleanField
      FieldName = 'CSTPIS_Monofasica'
      Origin = 'CSTPIS_Monofasica'
    end
    object ProdutosCSTPIS_AliquotaZero: TBooleanField
      FieldName = 'CSTPIS_AliquotaZero'
      Origin = 'CSTPIS_AliquotaZero'
    end
    object ProdutosCSTPIS_Isenta: TBooleanField
      FieldName = 'CSTPIS_Isenta'
      Origin = 'CSTPIS_Isenta'
    end
    object ProdutosCSTPIS_SemIncidencia: TBooleanField
      FieldName = 'CSTPIS_SemIncidencia'
      Origin = 'CSTPIS_SemIncidencia'
    end
    object ProdutosCSTPIS_Suspensao: TBooleanField
      FieldName = 'CSTPIS_Suspensao'
      Origin = 'CSTPIS_Suspensao'
    end
    object ProdutosCSTPIS_Outras: TBooleanField
      FieldName = 'CSTPIS_Outras'
      Origin = 'CSTPIS_Outras'
    end
    object ProdutosOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      FixedChar = True
      Size = 1
    end
    object ProdutosICMS_ForaEstadoEnt: TFloatField
      FieldName = 'ICMS_ForaEstadoEnt'
      Origin = 'ICMS_ForaEstadoEnt'
    end
    object ProdutosICMS_ForaEstadoSai: TFloatField
      FieldName = 'ICMS_ForaEstadoSai'
      Origin = 'ICMS_ForaEstadoSai'
    end
    object ProdutosICMS_DentroEstadoEnt: TFloatField
      FieldName = 'ICMS_DentroEstadoEnt'
      Origin = 'ICMS_DentroEstadoEnt'
    end
    object ProdutosICMS_DentroEstadoSai: TFloatField
      FieldName = 'ICMS_DentroEstadoSai'
      Origin = 'ICMS_DentroEstadoSai'
    end
    object ProdutosICMS_DentroEstadoSimples: TFloatField
      FieldName = 'ICMS_DentroEstadoSimples'
      Origin = 'ICMS_DentroEstadoSimples'
    end
    object ProdutosTabela_CAMEX: TBooleanField
      FieldName = 'Tabela_CAMEX'
      Origin = 'Tabela_CAMEX'
    end
    object ProdutosCSTICMS_Entrada: TStringField
      FieldName = 'CSTICMS_Entrada'
      Origin = 'CSTICMS_Entrada'
      Size = 3
    end
    object ProdutosCSTICMS_Saida: TStringField
      FieldName = 'CSTICMS_Saida'
      Origin = 'CSTICMS_Saida'
      Size = 3
    end
    object ProdutosBeneficio_FiscalEnt: TStringField
      FieldName = 'Beneficio_FiscalEnt'
      Origin = 'Beneficio_FiscalEnt'
      Size = 8
    end
    object ProdutosBeneficio_FiscalSai: TStringField
      FieldName = 'Beneficio_FiscalSai'
      Origin = 'Beneficio_FiscalSai'
      Size = 8
    end
    object ProdutosCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object ProdutosUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      Size = 3
    end
    object ProdutosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object ProdutosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 320
    Top = 502
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
    Left = 233
    Top = 83
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object PedidosNFItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PedidosNFItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object PedidosNFItensOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object PedidosNFItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object PedidosNFItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object PedidosNFItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object PedidosNFItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object PedidosNFItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object PedidosNFItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
    end
    object PedidosNFItensUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object PedidosNFItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object PedidosNFItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object PedidosNFItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object PedidosNFItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object PedidosNFItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object PedidosNFItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object PedidosNFItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object PedidosNFItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object PedidosNFItensRateio_ICMSProcesso: TFloatField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
    end
    object PedidosNFItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object PedidosNFItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object PedidosNFItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
      Origin = 'Registro_Adicao'
    end
    object PedidosNFItensICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'ICMSST_Anterior'
    end
    object PedidosNFItensNumeroNF_Referencia: TIntegerField
      FieldName = 'NumeroNF_Referencia'
      Origin = 'NumeroNF_Referencia'
    end
    object PedidosNFItensChaveNF_Referencia: TStringField
      FieldName = 'ChaveNF_Referencia'
      Origin = 'ChaveNF_Referencia'
      Size = 44
    end
    object PedidosNFItensDataNF_Referencia: TDateField
      FieldName = 'DataNF_Referencia'
      Origin = 'DataNF_Referencia'
    end
    object PedidosNFItensNumeroNF_Terceiros: TStringField
      FieldName = 'NumeroNF_Terceiros'
      Origin = 'NumeroNF_Terceiros'
      Size = 44
    end
    object PedidosNFItensDataNF_Terceiros: TDateField
      FieldName = 'DataNF_Terceiros'
      Origin = 'DataNF_Terceiros'
    end
    object PedidosNFItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object PedidosNFItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object PedidosNFItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object PedidosNFItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object PedidosNFItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object PedidosNFItensFator_Cambio: TFloatField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
    end
    object PedidosNFItensOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object PedidosNFItensNumero_BL: TStringField
      FieldName = 'Numero_BL'
      Origin = 'Numero_BL'
      Size = 15
    end
    object PedidosNFItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object PedidosNFItensSequencia: TIntegerField
      FieldName = 'Sequencia'
      Origin = 'Sequencia'
    end
    object PedidosNFItensSequencia_SISCOMEX: TIntegerField
      FieldName = 'Sequencia_SISCOMEX'
      Origin = 'Sequencia_SISCOMEX'
      DisplayFormat = ',##0.0000'
    end
    object PedidosNFItensValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensFator_Produto: TFloatField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
    end
    object PedidosNFItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSST: TCurrencyField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCMVA: TCurrencyField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Despesa: TCurrencyField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDest: TFloatField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFAL: TCurrencyField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALOrig: TFloatField
      FieldName = 'Percentual_DIFALOrig'
      Origin = 'Percentual_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALOrig: TCurrencyField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALDest: TFloatField
      FieldName = 'Percentual_DIFALDest'
      Origin = 'Percentual_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALDest: TCurrencyField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALST: TCurrencyField
      FieldName = 'Valor_DIFALST'
      Origin = 'Valor_DIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPDest: TCurrencyField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_FCPICMSOrig: TFloatField
      FieldName = 'Percentual_FCPICMSOrig'
      Origin = 'Percentual_FCPICMSOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPICMSDest: TCurrencyField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSSTAnt: TCurrencyField
      FieldName = 'Valor_ICMSSTAnt'
      Origin = 'Valor_ICMSSTAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSAnt: TCurrencyField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSOp: TCurrencyField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object PedidosNFItensAliquota_ICMSOp: TFloatField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object PedidosNFItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDif: TFloatField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSSubAnt: TFloatField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'Aliquota_ICMSSubAnt'
    end
    object PedidosNFItensValor_ICMSOp: TCurrencyField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object PedidosNFItensValor_BCICMSApuracao: TCurrencyField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MediaBCR: TCurrencyField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Impostos: TCurrencyField
      FieldName = 'Valor_Impostos'
      Origin = 'Valor_Impostos'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Lucro: TFloatField
      FieldName = 'Percentual_Lucro'
      Origin = 'Percentual_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Lucro: TCurrencyField
      FieldName = 'Valor_Lucro'
      Origin = 'Valor_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_FreteTerrNac: TFloatField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Desconto: TFloatField
      FieldName = 'Percentual_Desconto'
      Origin = 'Percentual_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Desconto: TFloatField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PISRed: TFloatField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINSRed: TFloatField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_SISCOMEX: TFloatField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Comissao: TFloatField
      FieldName = 'Percentual_Comissao'
      Origin = 'Percentual_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Comissao: TCurrencyField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_RedICMSST: TFloatField
      FieldName = 'Percentual_RedICMSST'
      Origin = 'Percentual_RedICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Beneficio: TFloatField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMono: TFloatField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMonoRet: TFloatField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSOpRed: TFloatField
      FieldName = 'Aliquota_ICMSOpRed'
      Origin = 'Aliquota_ICMSOpRed'
    end
    object PedidosNFItensValor_ICMSOpRed: TCurrencyField
      FieldName = 'Valor_ICMSOpRed'
      Origin = 'Valor_ICMSOpRed'
    end
    object PedidosNFItensAliquota_ICMSOpIntegral: TFloatField
      FieldName = 'Aliquota_ICMSOpIntegral'
      Origin = 'Aliquota_ICMSOpIntegral'
    end
    object PedidosNFItensAliquota_ICMSOPRed2: TFloatField
      FieldName = 'Aliquota_ICMSOPRed2'
      Origin = 'Aliquota_ICMSOPRed2'
    end
    object PedidosNFItensCSTICMS_TabA: TStringField
      FieldName = 'CSTICMS_TabA'
      Origin = 'CSTICMS_TabA'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTICMS_TabB: TStringField
      FieldName = 'CSTICMS_TabB'
      Origin = 'CSTICMS_TabB'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object PedidosNFItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object PedidosNFItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object PedidosNFItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object PedidosNFItensValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
    end
    object PedidosNFItensAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
    end
    object PedidosNFItensValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
    end
    object PedidosNFItensValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
    end
    object PedidosNFItensAliquota_CBS: TFloatField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
    end
    object PedidosNFItensValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
    end
    object PedidosNFItensValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
    end
    object PedidosNFItensAliquota_IS: TFloatField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
    end
    object PedidosNFItensValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
    end
    object PedidosNFItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Origin = 'CSTIBS'
      Size = 3
    end
    object PedidosNFItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Origin = 'CSTCBS'
      Size = 3
    end
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 233
    Top = 125
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Tipo = '#39'IMP'#39
      '      ,Processo'
      'from ProcessosImp'
      'where isnull(DUIMP, '#39#39') <> '#39#39
      'select Tipo = '#39'EXP'#39
      '      ,Processo'
      'from ProcessosExp'
      'where isnull(DE, '#39#39') <> '#39#39)
    Left = 233
    Top = 174
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 233
    Top = 221
  end
  object CSTIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIPI')
    Left = 233
    Top = 268
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 233
    Top = 314
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTPIS')
    Left = 233
    Top = 361
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 233
    Top = 407
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCOFINS')
    Left = 233
    Top = 456
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 233
    Top = 502
  end
  object CSTICMSB: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 233
    Top = 551
  end
  object dsCSTICMS: TDataSource
    DataSet = CSTICMSB
    Left = 233
    Top = 597
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
    Left = 233
    Top = 648
  end
  object dsNFRef: TDataSource
    DataSet = NFRef
    Left = 233
    Top = 694
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 320
    Top = 694
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
    Left = 320
    Top = 648
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
    Left = 151
    Top = 742
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
    Left = 320
    Top = 361
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 320
    Top = 407
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
    Left = 320
    Top = 551
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 320
    Top = 597
  end
  object PedidosNF: TFDQuery
    BeforePost = PedidosNFBeforePost
    BeforeDelete = PedidosNFBeforeDelete
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 62
    Top = 83
  end
  object tFormulas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 428
    Top = 83
  end
  object dstFormulas: TDataSource
    DataSet = tFormulas
    Left = 428
    Top = 125
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 651
    Top = 4
  end
  object tDespesas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 320
    Top = 83
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 320
    Top = 125
  end
  object tMestre: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 320
    Top = 174
  end
  object dstMestre: TDataSource
    DataSet = tMestre
    Left = 320
    Top = 221
  end
  object tNCM: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 428
    Top = 174
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 428
    Top = 221
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 428
    Top = 268
  end
  object dsTabPISCOFINS: TDataSource
    DataSet = TabPISCOFINS
    Left = 428
    Top = 314
  end
  object tNCMICMS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 428
    Top = 361
  end
  object dstNCMICMS: TDataSource
    DataSet = tNCMICMS
    Left = 428
    Top = 407
  end
  object ProdutosPauta: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosPauta')
    Left = 428
    Top = 456
  end
  object dsProdutosPauta: TDataSource
    DataSet = ProdutosPauta
    Left = 428
    Top = 502
  end
  object ListaPed: TFDQuery
    BeforePost = PedidosNFBeforePost
    BeforeDelete = PedidosNFBeforeDelete
    AfterScroll = ListaPedAfterScroll
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
    Left = 524
    Top = 83
    object ListaPedPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object ListaPedTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object ListaPedTipo_Processo: TStringField
      FieldName = 'Processo_Desc'
      Origin = 'Tipo_Processo'
      ReadOnly = True
      Size = 10
    end
    object ListaPedOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object ListaPedOp_Descricao: TStringField
      FieldName = 'Op_Descricao'
      Origin = 'Op_Descricao'
      ReadOnly = True
      Size = 60
    end
    object ListaPedDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Origin = 'Destinatario_Nome'
      Size = 60
    end
    object ListaPedDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Origin = 'Destinatario_CNPJ_CPF'
      Size = 14
    end
    object ListaPedDestinatario_Estado: TStringField
      FieldName = 'Destinatario_Estado'
      Origin = 'Destinatario_Estado'
      Size = 2
    end
    object ListaPedValor_Pedido: TCurrencyField
      FieldName = 'Valor_Pedido'
      Origin = 'Valor_Pedido'
      DisplayFormat = ',##0.00'
    end
  end
  object dsListaPed: TDataSource
    DataSet = ListaPed
    Left = 524
    Top = 125
  end
  object Tributos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Tributo'
      '      ,CST'
      '      ,Valor_BC'
      '      ,Aliquota'
      '      ,Valor = Valor_Fixo + Valor_Tributo'
      
        '      ,Total = (isnull(Valor_Fixo, 0) + isnull(Valor_Tributo, 0)' +
        ') * (select isnull(sum(Quantidade), 0) from PedidosNFItens pni w' +
        'here pni.Pedido = pnt.Pedido and pni.Codigo_Mercadoria = pnt.Cod' +
        'igo_Mercadoria)'
      'from PedidosNFItensTributos pnt'
      ''
      '')
    Left = 428
    Top = 551
    object TributosTributo: TStringField
      FieldName = 'Tributo'
      Origin = 'Tributo'
      Size = 15
    end
    object TributosCST: TSmallintField
      FieldName = 'CST'
      Origin = 'CST'
    end
    object TributosValor_BC: TCurrencyField
      FieldName = 'Valor_BC'
      Origin = 'Valor_BC'
      DisplayFormat = ',##0.00'
    end
    object TributosAliquota: TFloatField
      FieldName = 'Aliquota'
      Origin = 'Aliquota'
      DisplayFormat = '##0.00%'
    end
    object TributosValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Valor'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object TributosTotal: TFloatField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object dsTributos: TDataSource
    DataSet = Tributos
    Left = 428
    Top = 597
  end
  object Campos: TFDQuery
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
    Left = 428
    Top = 648
  end
  object NotasTerceirosItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'Select Aliquota_ICMSOper'
      '  ,Aliquota_ICMSSub '
      '  ,Aliquota_IPI'
      '  ,Disponivel'
      '  ,Peso_Bruto'
      '  ,Peso_Liquido'
      '  ,Quantidade'
      '  ,Valor_BCICMSOper'
      '  ,Valor_BCICMSSub'
      '  ,Valor_BCIPI'
      '  ,Valor_COFINS'
      '  ,Valor_Desconto'
      '  ,Valor_ICMSOper'
      '  ,Valor_ICMSSub'
      '  ,Valor_IPI'
      '  ,Valor_IsentasICMS'
      '  ,Valor_IsentasIPI'
      '  ,Valor_Liquido'
      '  ,Valor_OutrasICMS'
      '  ,Valor_OutrasIPI'
      '  ,Valor_PIS'
      '  ,Valor_Unitario'
      'from NotasTerceirosItens')
    Left = 524
    Top = 174
    object NotasTerceirosItensAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'Aliquota_ICMSOper'
    end
    object NotasTerceirosItensAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'Aliquota_ICMSSub'
    end
    object NotasTerceirosItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object NotasTerceirosItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = 'Disponivel'
    end
    object NotasTerceirosItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object NotasTerceirosItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object NotasTerceirosItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
    end
    object NotasTerceirosItensValor_BCICMSOper: TCurrencyField
      FieldName = 'Valor_BCICMSOper'
      Origin = 'Valor_BCICMSOper'
    end
    object NotasTerceirosItensValor_BCICMSSub: TCurrencyField
      FieldName = 'Valor_BCICMSSub'
      Origin = 'Valor_BCICMSSub'
    end
    object NotasTerceirosItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
    end
    object NotasTerceirosItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
    end
    object NotasTerceirosItensValor_Desconto: TCurrencyField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
    end
    object NotasTerceirosItensValor_ICMSOper: TCurrencyField
      FieldName = 'Valor_ICMSOper'
      Origin = 'Valor_ICMSOper'
    end
    object NotasTerceirosItensValor_ICMSSub: TCurrencyField
      FieldName = 'Valor_ICMSSub'
      Origin = 'Valor_ICMSSub'
    end
    object NotasTerceirosItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object NotasTerceirosItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
    end
    object NotasTerceirosItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
    end
    object NotasTerceirosItensValor_Liquido: TCurrencyField
      FieldName = 'Valor_Liquido'
      Origin = 'Valor_Liquido'
    end
    object NotasTerceirosItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
    end
    object NotasTerceirosItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
    end
    object NotasTerceirosItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
    end
    object NotasTerceirosItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
    end
  end
  object dsNotasTerceirosItens: TDataSource
    DataSet = NotasTerceirosItens
    Left = 524
    Top = 221
  end
  object NotasItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'Select '
      ' Aliquota_ICMSEntrada'
      ',Aliquota_ICMSOp'
      ',Aliquota_ICMSReducao'
      ',Aliquota_ICMSST'
      ',Aliquota_II'
      ',Aliquota_IPI'
      ',Aliquota_MVA'
      ',Disponivel'
      ',Peso_Bruto'
      ',Peso_Liquido'
      ',Quantidade'
      ',Valor_BCICMSOp'
      ',Valor_BCICMSST'
      ',Valor_BCIPI'
      ',Valor_CIF'
      ',Valor_COFINS'
      ',Valor_Despesa'
      ',Valor_DespesasOutros'
      ',Valor_Frete'
      ',Valor_ICMSOp'
      ',Valor_ICMSReducao'
      ',Valor_ICMSST'
      ',Valor_II'
      ',Valor_IPI'
      ',Valor_MVA'
      ',Valor_Pauta'
      ',Valor_PIS'
      ',Valor_Seguro'
      ',Valor_Total'
      ',Valor_Unitario'
      'from NotasItens'
      '')
    Left = 526
    Top = 268
    object NotasItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
    end
    object NotasItensAliquota_ICMSOp: TFloatField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object NotasItensAliquota_ICMSReducao: TFloatField
      FieldName = 'Aliquota_ICMSReducao'
      Origin = 'Aliquota_ICMSReducao'
    end
    object NotasItensAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
    end
    object NotasItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object NotasItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object NotasItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
    end
    object NotasItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = 'Disponivel'
    end
    object NotasItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object NotasItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object NotasItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
    end
    object NotasItensValor_BCICMSOp: TCurrencyField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object NotasItensValor_BCICMSST: TCurrencyField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
    end
    object NotasItensValor_BCIPI: TFloatField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
    end
    object NotasItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
    end
    object NotasItensValor_COFINS: TFloatField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
    end
    object NotasItensValor_Despesa: TFloatField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
    end
    object NotasItensValor_DespesasOutros: TFloatField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'Valor_DespesasOutros'
    end
    object NotasItensValor_Frete: TFloatField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
    end
    object NotasItensValor_ICMSOp: TCurrencyField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object NotasItensValor_ICMSReducao: TCurrencyField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'Valor_ICMSReducao'
    end
    object NotasItensValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
    end
    object NotasItensValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object NotasItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object NotasItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
    end
    object NotasItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
    end
    object NotasItensValor_PIS: TFloatField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
    end
    object NotasItensValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
    end
    object NotasItensValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
    end
    object NotasItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
    end
  end
  object dsNotasItens: TDataSource
    DataSet = NotasItens
    Left = 526
    Top = 314
  end
  object Adicoes: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'Select  '
      '   Aliquota_ICMS'
      '  ,Lucro'
      '  ,Peso_Liquido'
      '  ,Quantidade'
      '  ,Valor_COFINS'
      '  ,Valor_PIS'
      '  ,Valor_SemAdValorem'
      '  ,Valor_Unitario'
      '  ,Valor_UnitarioReal'
      'from Adicoes'
      '')
    Left = 526
    Top = 361
    object AdicoesAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      Origin = 'Aliquota_ICMS'
    end
    object AdicoesLucro: TFloatField
      FieldName = 'Lucro'
      Origin = 'Lucro'
    end
    object AdicoesPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object AdicoesQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object AdicoesValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
    end
    object AdicoesValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
    end
    object AdicoesValor_SemAdValorem: TFloatField
      FieldName = 'Valor_SemAdValorem'
      Origin = 'Valor_SemAdValorem'
    end
    object AdicoesValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
    end
    object AdicoesValor_UnitarioReal: TFloatField
      FieldName = 'Valor_UnitarioReal'
      Origin = 'Valor_UnitarioReal'
    end
  end
  object dsAdicoes: TDataSource
    DataSet = Adicoes
    Left = 526
    Top = 407
  end
  object DataSource1: TDataSource
    DataSet = Campos
    Left = 428
    Top = 702
  end
  object CSTIBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIBS')
    Left = 528
    Top = 456
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 528
    Top = 502
  end
  object CSTCBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCBS'
      '')
    Left = 526
    Top = 551
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 526
    Top = 597
  end
end
