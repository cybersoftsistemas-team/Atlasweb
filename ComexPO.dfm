object fComexPO: TfComexPO
  Left = 0
  Top = 0
  Width = 1178
  Height = 769
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1178
    Height = 734
    Hint = ''
    ActivePage = pDados
    Align = alClient
    TabOrder = 0
    object pLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1170
        Height = 679
        Hint = ''
        TitleFont.Name = 'MS Sans Serif'
        DataSource = dsPO
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'PO N'#186
            Title.Font.Style = [fsBold]
            Width = 116
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'DATA'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'PROCESSO'
            Title.Font.Style = [fsBold]
            Width = 140
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Cliente_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'CLIENTE'
            Title.Font.Style = [fsBold]
            Width = 300
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Exportador_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'FORNECEDOR'
            Title.Font.Style = [fsBold]
            Width = 300
            Font.Name = 'Calibri'
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1170
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
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
    object pDados: TUniTabSheet
      Hint = ''
      Caption = 'Capa do (PO)'
      DesignSize = (
        1170
        706)
      object pFicha: TUniPanel
        Left = 132
        Top = 21
        Width = 616
        Height = 555
        Hint = ''
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
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
        object cPO: TUniDBEdit
          Left = 12
          Top = 92
          Width = 350
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Numero'
          DataSource = dsPO
          CharCase = ecUpperCase
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 2
          ClearButton = True
          FieldLabel = 'PO N'#186
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cProcesso: TUniDBEdit
          Left = 12
          Top = 38
          Width = 350
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Processo'
          DataSource = dsPO
          CharCase = ecUpperCase
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 0
          ClearButton = True
          FieldLabel = 'Processo'
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsInset
        end
        object cRequis: TUniDBEdit
          Left = 12
          Top = 254
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Requisitante'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 8
          ClearButton = True
          FieldLabel = 'Requisitante'
          FieldLabelSeparator = ' '
          SelectOnFocus = True
          BorderStyle = ubsInset
        end
        object DBMemo1: TUniDBMemo
          Left = 12
          Top = 443
          Width = 592
          Height = 72
          Hint = ''
          ShowHint = True
          DataField = 'Observacao'
          DataSource = dsPO
          BorderStyle = ubsInset
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 16
          ClearButton = True
          FieldLabel = 'Observa'#231#227'o'
          FieldLabelSeparator = ' '
        end
        object cData: TUniDBDateTimePicker
          Left = 12
          Top = 119
          Width = 350
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Data'
          DataSource = dsPO
          DateTime = 46140.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 3
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ClearButton = True
          BorderStyle = ubsInset
          FieldLabel = 'Data'
          FieldLabelSeparator = ' '
        end
        object cExportador: TUniDBLookupComboBox
          Left = 12
          Top = 200
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo; Nome'
          ListSource = dsExportadores
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Exportador'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 6
          Color = clWindow
          FieldLabel = 'Exportador'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cCondCambio: TUniDBLookupComboBox
          Left = 12
          Top = 308
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao'
          ListSource = dsCondicaoCambial
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Condicao_Cambial'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 10
          Color = clWindow
          FieldLabel = 'Condi'#231#227'o C'#226'mbial'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cLocalEmb: TUniDBComboBox
          Left = 12
          Top = 362
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          AnyMatch = True
          DataField = 'Local_Embarque'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Sorted = True
          TabOrder = 12
          FieldLabel = 'Local de Embarque'
          FieldLabelSeparator = ' '
          ClearButton = True
          ForceSelection = True
          IconItems = <>
        end
        object cLocalEnt: TUniDBComboBox
          Left = 12
          Top = 389
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          AnyMatch = True
          DataField = 'Local_Entrega'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Sorted = True
          TabOrder = 13
          FieldLabel = 'Local de Entrega'
          FieldLabelSeparator = ' '
          ClearButton = True
          ForceSelection = True
          IconItems = <>
        end
        object cMoeda: TUniDBLookupComboBox
          Left = 12
          Top = 416
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Nome'
          ListSource = dsMoedas
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Moeda'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 14
          Color = clWindow
          FieldLabel = 'Moeda'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cPais: TUniDBLookupComboBox
          Left = 12
          Top = 227
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo; Nome'
          ListSource = dsPaises
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Pais_Origem'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 7
          Color = clWindow
          FieldLabel = 'Pa'#237's de Origem'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cModalidade: TUniDBLookupComboBox
          Left = 12
          Top = 65
          Width = 350
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao'
          ListSource = dsTiposProcesso
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Modalidade'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          FieldLabel = 'Modalidade'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cCliente: TUniDBLookupComboBox
          Left = 12
          Top = 173
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo; Nome'
          ListSource = dsClientes
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Cliente'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'Cliente'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
          OnChange = cClienteChange
        end
        object cVia: TUniDBLookupComboBox
          Left = 12
          Top = 335
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Descricao'
          ListSource = dsViaTransporte
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Via_Transporte'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 11
          Color = clWindow
          FieldLabel = 'Via de Transporte'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cTipo_Mercadoria: TUniDBLookupComboBox
          Left = 12
          Top = 281
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao'
          ListSource = dsTipoProduto
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Tipo_Mercadoria'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 9
          Color = clWindow
          FieldLabel = 'Tipo Mercadoria'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
        end
        object cTotal: TUniFormattedNumberEdit
          Left = 12
          Top = 517
          Width = 228
          Height = 25
          Hint = ''
          ShowHint = True
          BorderStyle = ubsInset
          Alignment = taRightJustify
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 15
          TabStop = False
          Color = 16762566
          ReadOnly = True
          FieldLabel = 'Total'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cEmpresa: TUniDBLookupComboBox
          Left = 12
          Top = 11
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Razao_Social;Numero_Filial'
          ListSource = dsEmpresas
          KeyField = 'CNPJ'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Empresa'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 18
          Color = clWindow
          FieldLabel = 'Empresa'
          FieldLabelSeparator = ' '
          ForceSelection = True
        end
        object cINCOTERMS: TUniDBLookupComboBox
          Left = 12
          Top = 146
          Width = 592
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao'
          ListSource = dsINCOTERMS
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'INCOTERMS'
          DataSource = dsPO
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 4
          Color = clWindow
          FieldLabel = 'INCOTERMS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          Style = csDropDown
          OnChange = cClienteChange
        end
      end
    end
    object pProdutos: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Itens'
      DesignSize = (
        1170
        706)
      object UniPanel1: TUniPanel
        Left = 36
        Top = 19
        Width = 1100
        Height = 601
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
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
        object Grade2: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 155
          Width = 1094
          Height = 402
          Hint = ''
          ShowHint = True
          TitleFont.Color = clBlue
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          DataSource = dsPOItens
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          Align = alClient
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ParentColor = False
          Color = clWhite
          Columns = <
            item
              FieldName = 'Item'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Style = [fsBold]
              Width = 38
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              Alignment = taLeftJustify
              ForceStringFormat = True
              ReadOnly = True
              DisplayFormat = '0000'
            end
            item
              FieldName = 'Codigo_Mercadoria'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Style = [fsBold]
              Width = 68
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ReadOnly = True
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 572
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ForceStringFormat = True
              ReadOnly = True
              MemoOptions.ConvertNewLineToBreak = True
              DisplayMemo = True
            end
            item
              FieldName = 'NCM'
              Title.Alignment = taCenter
              Title.Caption = 'NCM'
              Title.Font.Style = [fsBold]
              Width = 69
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ReadOnly = True
            end
            item
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Font.Style = [fsBold]
              Width = 99
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ReadOnly = True
            end
            item
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Style = [fsBold]
              Width = 96
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ReadOnly = True
            end
            item
              FieldName = 'Total'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Style = [fsBold]
              Width = 120
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ReadOnly = True
            end>
        end
        object Panel3: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 563
          Width = 1094
          Height = 35
          Hint = ''
          ShowHint = True
          Align = alBottom
          TabOrder = 2
          BorderStyle = ubsInset
          Caption = ''
          object Navegaitens: TUniDBNavigator
            Left = 1
            Top = 1
            Width = 160
            Height = 33
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataSource = dsPOItens
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            ConfirmDelete = False
            IconSet = icsFontAwesome
            Align = alLeft
            TabOrder = 0
          end
          object bAddItem: TUniSpeedButton
            Left = 161
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Adicionar novo registro.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 0
            TabOrder = 2
            OnClick = bAddItemClick
          end
          object bEditItem: TUniSpeedButton
            Left = 202
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Editar registro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 1
            TabOrder = 3
            OnClick = bEditItemClick
          end
          object bExcItem: TUniSpeedButton
            Left = 243
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Excluir reegistro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 2
            TabOrder = 4
            OnClick = bExcItemClick
          end
          object bCancItem: TUniSpeedButton
            Left = 325
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 5
            OnClick = bCancItemClick
          end
          object bSalvarItem: TUniSpeedButton
            Left = 284
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Salva o registro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 6
            OnClick = bSalvarItemClick
          end
          object cItensValor: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 890
            Top = 4
            Width = 200
            Height = 27
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Align = alRight
            TabOrder = 7
            TabStop = False
            ReadOnly = True
            ClientEvents.Enabled = False
            FieldLabel = 'Valor Total'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cItensQtde: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 741
            Top = 4
            Width = 143
            Height = 27
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Align = alRight
            TabOrder = 8
            TabStop = False
            ReadOnly = True
            ClientEvents.Enabled = False
            FieldLabel = 'Itens'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
            DecimalPrecision = 0
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
        object pFichaItem: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 1100
          Height = 152
          Hint = ''
          Enabled = False
          ShowHint = True
          ParentColor = False
          Align = alTop
          TabOrder = 3
          object cQtde: TUniDBEdit
            Left = 10
            Top = 90
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade'
            DataSource = dsPOItens
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 4
            ClearButton = True
            FieldLabel = 'Quantidade'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cValor: TUniDBEdit
            Left = 10
            Top = 117
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor'
            DataSource = dsPOItens
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 5
            ClearButton = True
            FieldLabel = 'Valor Unit'#225'rio'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cProduto: TUniDBLookupComboBox
            Left = 10
            Top = 36
            Width = 1074
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Codigo_Mercadoria'
            DataSource = dsPOItens
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelWidth = 80
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
          end
          object cQuantidade_Unidade: TUniDBEdit
            Left = 10
            Top = 63
            Width = 228
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Unidade'
            DataSource = dsPOItens
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 2
            TabStop = False
            Color = 16762566
            ReadOnly = True
            ClearButton = True
            FieldLabel = 'Qtde.p/Unidade'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cQuantidade_Volumes: TUniDBEdit
            Left = 243
            Top = 63
            Width = 228
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade_Volumes'
            DataSource = dsPOItens
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 3
            TabStop = False
            Color = 16762566
            ReadOnly = True
            ClearButton = True
            FieldLabel = 'Volumes'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit3: TUniDBEdit
            Left = 10
            Top = 9
            Width = 228
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'PO'
            DataSource = dsPOItens
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 0
            TabStop = False
            Color = 16762566
            ReadOnly = True
            FieldLabel = 'PO N'#186
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1178
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
      Width = 160
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsPO
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      ConfirmDelete = False
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 160
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
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
      Left = 201
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
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
      Left = 242
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
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
      Left = 324
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bSalvar: TUniSpeedButton
      Left = 283
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Left = 514
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
    object bImportar: TUniButton
      Left = 365
      Top = 0
      Width = 90
      Height = 35
      Hint = ''
      Caption = 'Importar &Excel'
      Align = alLeft
      TabOrder = 8
      OnClick = bImportarClick
    end
    object bImprimir: TUniButton
      Left = 455
      Top = 0
      Width = 59
      Height = 35
      Hint = ''
      Caption = 'Im&primir'
      Align = alLeft
      TabOrder = 9
      OnClick = bImprimirClick
    end
  end
  object tTemp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 293
    Top = 229
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 591
    Top = 3
  end
  object PO: TFDQuery
    AfterPost = POAfterPost
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'Registro'
    SQL.Strings = (
      'select *'
      'from PO '
      'order by Data')
    Left = 39
    Top = 129
    object PORegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PONumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Size = 15
    end
    object POProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object POData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object POExportador: TSmallintField
      FieldName = 'Exportador'
      Origin = 'Exportador'
    end
    object PORequisitante: TStringField
      FieldName = 'Requisitante'
      Origin = 'Requisitante'
      Size = 60
    end
    object POVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'Via_Transporte'
    end
    object POLocal_Embarque: TStringField
      FieldName = 'Local_Embarque'
      Origin = 'Local_Embarque'
      Size = 50
    end
    object POLocal_Entrega: TStringField
      FieldName = 'Local_Entrega'
      Origin = 'Local_Entrega'
      Size = 50
    end
    object POINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      FixedChar = True
      Size = 3
    end
    object POCondicao_Cambial: TSmallintField
      FieldName = 'Condicao_Cambial'
      Origin = 'Condicao_Cambial'
    end
    object POMoeda: TSmallintField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object POObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object POEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object POPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'Pais_Origem'
      Size = 4
    end
    object POResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'Responsavel'
      Size = 15
    end
    object POCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'Cliente'
    end
    object POTipo_Mercadoria: TSmallintField
      FieldName = 'Tipo_Mercadoria'
      Origin = 'Tipo_Mercadoria'
    end
    object POExportador_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Exportador_Nome'
      LookupDataSet = Exportadores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Exportador'
      Size = 60
      Lookup = True
    end
    object POCliente_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente_Nome'
      LookupDataSet = Clientes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object POModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
  end
  object dsPO: TDataSource
    DataSet = PO
    Left = 39
    Top = 179
  end
  object Produtos: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Produtos')
    Left = 39
    Top = 229
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 39
    Top = 279
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ, Razao_Social from Empresas')
    Left = 39
    Top = 329
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 39
    Top = 379
  end
  object Exportadores: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Exportador = 1')
    Left = 39
    Top = 529
  end
  object dsExportadores: TDataSource
    DataSet = Exportadores
    Left = 39
    Top = 579
  end
  object Clientes: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Cliente = 1')
    Left = 123
    Top = 129
  end
  object dsClientes: TDataSource
    DataSet = Clientes
    Left = 123
    Top = 179
  end
  object CondicaoCambial: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CondicaoCambial')
    Left = 123
    Top = 229
  end
  object dsCondicaoCambial: TDataSource
    DataSet = CondicaoCambial
    Left = 123
    Top = 279
  end
  object INCOTERMS: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM INCOTERMS')
    Left = 123
    Top = 329
  end
  object dsINCOTERMS: TDataSource
    DataSet = INCOTERMS
    Left = 123
    Top = 379
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo, Nome, Simbolo'
      'FROM Moedas')
    Left = 123
    Top = 429
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 123
    Top = 479
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Paises')
    Left = 123
    Top = 529
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 123
    Top = 579
  end
  object TiposProcesso: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposProcesso')
    Left = 217
    Top = 129
  end
  object dsTiposProcesso: TDataSource
    DataSet = TiposProcesso
    Left = 217
    Top = 179
  end
  object ViaTransporte: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ViaTransporte')
    Left = 217
    Top = 229
  end
  object dsViaTransporte: TDataSource
    DataSet = ViaTransporte
    Left = 217
    Top = 279
  end
  object TipoProduto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TipoItem')
    Left = 217
    Top = 329
  end
  object dsTipoProduto: TDataSource
    DataSet = TipoProduto
    Left = 217
    Top = 379
  end
  object ProcessosHistorico: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProcessosHistorico')
    Left = 217
    Top = 429
  end
  object dsProcessosHistorico: TDataSource
    DataSet = ProcessosHistorico
    Left = 217
    Top = 479
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProcessosImp')
    Left = 218
    Top = 527
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 217
    Top = 579
  end
  object POItens: TFDQuery
    AfterPost = POItensAfterPost
    AfterDelete = POItensAfterDelete
    OnCalcFields = POItensCalcFields
    IndexFieldNames = 'PO;Empresa'
    MasterSource = dsPO
    MasterFields = 'Numero;Empresa'
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evDetailServerCascade]
    FetchOptions.DetailServerCascade = True
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'Registro'
    SQL.Strings = (
      'SELECT * FROM POItens')
    Left = 293
    Top = 127
    object POItensRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object POItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object POItensCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object POItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
      DisplayFormat = '0000;0;'
    end
    object POItensNCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.##;0'
      Size = 8
    end
    object POItensFabricante: TSmallintField
      FieldName = 'Fabricante'
      Origin = 'Fabricante'
    end
    object POItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object POItensDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Mercadoria'
      Size = 500
      Lookup = True
    end
    object POItensTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = ',##0.00'
      Calculated = True
    end
    object POItensQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
      Precision = 18
    end
    object POItensValor: TBCDField
      FieldName = 'Valor'
      Origin = 'Valor'
      DisplayFormat = ',##0.0000'
      Precision = 18
    end
    object POItensQuantidade_Unidade: TBCDField
      FieldName = 'Quantidade_Unidade'
      Origin = 'Quantidade_Unidade'
      DisplayFormat = ',##0.00'
      Precision = 18
    end
    object POItensQuantidade_Volumes: TBCDField
      FieldName = 'Quantidade_Volumes'
      Origin = 'Quantidade_Volumes'
      DisplayFormat = ',##0.000'
      Precision = 18
    end
  end
  object dsPOItens: TDataSource
    DataSet = POItens
    Left = 293
    Top = 179
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 295
    Top = 328
  end
  object Beneficios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM BeneficioFiscal')
    Left = 39
    Top = 429
  end
  object dsBeneficios: TDataSource
    DataSet = Beneficios
    Left = 39
    Top = 479
  end
end
