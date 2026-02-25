object fFatPedidoItensDUIMP: TfFatPedidoItensDUIMP
  Left = 0
  Top = 0
  ClientHeight = 714
  ClientWidth = 1333
  Caption = 'ITENS DA DUIMP'
  Color = clWindow
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 679
    Width = 1333
    Height = 35
    Hint = ''
    Margins.Top = 0
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    Color = 5526569
    object bSair: TUniSpeedButton
      AlignWithMargins = True
      Left = 1291
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bSairClick
    end
    object bAddItem: TUniSpeedButton
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 110
      Height = 33
      Hint = 'Adicionar um Item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Enabled = False
      ShowHint = True
      ParentShowHint = False
      Caption = 'Adicionar Item'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAddItemClick
    end
    object bAddTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 113
      Top = 1
      Width = 110
      Height = 33
      Hint = 'Adicionar Tudo'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Enabled = False
      ShowHint = True
      ParentShowHint = False
      Caption = 'Adicionar Tudo'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 24
      TabOrder = 3
      OnClick = bAddTudoClick
    end
    object bRemItem: TUniSpeedButton
      AlignWithMargins = True
      Left = 225
      Top = 1
      Width = 110
      Height = 33
      Hint = 'Remover um item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Remover Item'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bRemItemClick
    end
    object bRemTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 337
      Top = 1
      Width = 110
      Height = 33
      Hint = 'Remover todos os itens'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Remover Tudo'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 5
      OnClick = bRemTudoClick
    end
  end
  object UniContainerPanel4: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1333
    Height = 679
    Hint = ''
    ParentColor = False
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    TabOrder = 1
    object UniPanel2: TUniPanel
      Left = 0
      Top = 114
      Width = 1333
      Height = 565
      Hint = ''
      Align = alClient
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'FichaSemSombra'#39';'#13#10'}')
      Caption = 'UniPanel2'
      object Pasta: TUniPageControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1325
        Height = 557
        Hint = ''
        ActivePage = UniTabSheet1
        Align = alClient
        TabOrder = 1
        object UniTabSheet1: TUniTabSheet
          Hint = ''
          Caption = 'Itens do Pedido'
          object UniContainerPanel3: TUniContainerPanel
            AlignWithMargins = True
            Left = 316
            Top = 8
            Width = 998
            Height = 518
            Hint = ''
            Margins.Top = 8
            ParentColor = False
            Align = alClient
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Painel'#39';'#13#10'}')
            TabOrder = 0
            ExplicitTop = 3
            ExplicitHeight = 523
            object gItens: TUniDBGrid
              Left = 0
              Top = 278
              Width = 998
              Height = 240
              Hint = ''
              HeaderTitle = 'ITENS DO PEDIDO'
              HeaderTitleAlign = taCenter
              DataSource = dsPedidosNFItens
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
              ReadOnly = True
              WebOptions.Paged = False
              LoadMask.Message = 'Carregando itens do Pedido...Aguarde'
              ForceFit = True
              BorderStyle = ubsInset
              Align = alClient
              TabOrder = 1
              Columns = <
                item
                  FieldName = 'Item'
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  ReadOnly = True
                end
                item
                  FieldName = 'Codigo_Mercadoria'
                  Title.Alignment = taCenter
                  Title.Caption = 'Produto'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  ReadOnly = True
                end
                item
                  FieldName = 'Descricao_Mercadoria'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Font.Style = [fsBold]
                  Width = 553
                  ReadOnly = True
                  DisplayMemo = True
                end
                item
                  FieldName = 'NCM'
                  Title.Alignment = taCenter
                  Title.Caption = 'NCM'
                  Title.Font.Style = [fsBold]
                  Width = 70
                  Alignment = taCenter
                  ReadOnly = True
                end
                item
                  FieldName = 'Quantidade'
                  Title.Alignment = taCenter
                  Title.Caption = 'QTDE'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  ReadOnly = True
                end
                item
                  FieldName = 'Valor_Unitario'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unit'#225'rio'
                  Title.Font.Style = [fsBold]
                  Width = 106
                  ReadOnly = True
                end
                item
                  FieldName = 'CFOP'
                  Title.Alignment = taCenter
                  Title.Caption = 'CFOP'
                  Title.Font.Style = [fsBold]
                  Width = 60
                  Alignment = taCenter
                  ReadOnly = True
                end>
            end
            object gAdicoes: TUniDBGrid
              Left = 0
              Top = 0
              Width = 998
              Height = 278
              Hint = ''
              HeaderTitle = 'ITENS DA DUIMP'
              HeaderTitleAlign = taRightJustify
              DataSource = dsProcessosImpItens
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
              ReadOnly = True
              WebOptions.Paged = False
              LoadMask.Message = 'Carregando itens da DUIMP...Aguarde'
              ForceFit = True
              BorderStyle = ubsInset
              Align = alTop
              TabOrder = 2
              Columns = <
                item
                  FieldName = 'Item'
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  ReadOnly = True
                end
                item
                  FieldName = 'Codigo_Mercadoria'
                  Title.Alignment = taCenter
                  Title.Caption = 'Produto'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  ReadOnly = True
                end
                item
                  FieldName = 'Descricao'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Font.Style = [fsBold]
                  Width = 324
                  ReadOnly = True
                  MemoOptions.ConvertNewLineToBreak = True
                end
                item
                  FieldName = 'NCM'
                  Title.Alignment = taCenter
                  Title.Caption = 'NCM'
                  Title.Font.Style = [fsBold]
                  Width = 70
                  Alignment = taCenter
                  ReadOnly = True
                end
                item
                  FieldName = 'Quantidade'
                  Title.Alignment = taCenter
                  Title.Caption = 'QTDE'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  ForceStringFormat = True
                  ReadOnly = True
                end
                item
                  FieldName = 'Disponivel'
                  Title.Alignment = taCenter
                  Title.Caption = 'Dispon'#237'vel'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  ReadOnly = True
                end
                item
                  FieldName = 'Valor_UnitarioME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unitario ME'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  ReadOnly = True
                end
                item
                  FieldName = 'Valor_UnitarioReal'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unit'#225'rio R$'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  ReadOnly = True
                end>
            end
          end
          object UniPanel4: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 8
            Width = 307
            Height = 518
            Hint = ''
            Margins.Top = 8
            Align = alLeft
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Painel'#39';'#13#10'}')
            BorderStyle = ubsInset
            ShowCaption = False
            Caption = ''
            ExplicitLeft = -69
            ExplicitTop = 87
            ExplicitHeight = 516
            object cQtdePerc: TUniFormattedNumberEdit
              Left = 18
              Top = 18
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Quantidade %'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cValorUnitario: TUniFormattedNumberEdit
              Left = 18
              Top = 45
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Valor Unit'#225'rio'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cFracionar: TUniCheckBox
              Left = 10
              Top = 240
              Width = 137
              Height = 17
              Cursor = crHandPoint
              Hint = ''
              Caption = 'Fracionar quantidades'
              TabOrder = 3
            end
            object cLucroPerc: TUniFormattedNumberEdit
              Left = 18
              Top = 72
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Margem Lucro (%)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cLucroValor: TUniFormattedNumberEdit
              Left = 18
              Top = 99
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 5
              SelectOnFocus = True
              FieldLabel = 'Margem Lucro (Valor)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cDescPerc: TUniFormattedNumberEdit
              Left = 18
              Top = 126
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 6
              SelectOnFocus = True
              FieldLabel = 'Desconto (%)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cDescValor: TUniFormattedNumberEdit
              Left = 18
              Top = 153
              Width = 270
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 7
              SelectOnFocus = True
              FieldLabel = 'Desconto (Valor)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cCalcVol: TUniCheckBox
              Left = 10
              Top = 270
              Width = 203
              Height = 17
              Cursor = crHandPoint
              Hint = ''
              Caption = 'Calcular quantidade total de volumes'
              TabOrder = 8
            end
            object cICMSAnt: TUniCheckBox
              Left = 10
              Top = 300
              Width = 196
              Height = 17
              Cursor = crHandPoint
              Hint = ''
              Caption = 'ICMS cobrado anteriormente por ST'
              TabOrder = 9
            end
            object UniCheckBox1: TUniCheckBox
              Left = 10
              Top = 210
              Width = 259
              Height = 17
              Cursor = crHandPoint
              Hint = ''
              Caption = 'Utilizar quantidade total p/quebra por percentual'
              TabOrder = 10
            end
          end
        end
        object UniTabSheet2: TUniTabSheet
          Hint = ''
          Caption = 'An'#225'lise'
          object cLog: TUniMemo
            Left = 0
            Top = 325
            Width = 1317
            Height = 204
            Hint = ''
            BorderStyle = ubsInset
            ScrollBars = ssBoth
            Lines.Strings = (
              'cLog')
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'JetBrains Mono'
            Align = alBottom
            Color = 14803425
            TabOrder = 0
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object gFormula: TUniStringGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1311
            Height = 319
            Hint = ''
            HeaderTitle = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
            HeaderTitleAlign = taCenter
            CellCursor = crHandPoint
            FixedColor = 15263976
            FixedRows = 0
            RowCount = 1
            ColCount = 4
            DefaultRowHeight = 22
            Options = [goVertLine, goHorzLine, goDrawFocusSelected]
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
            BorderStyle = ubsInset
            StripeRows = True
            ForceFit = True
            Align = alClient
            TabOrder = 1
          end
        end
      end
    end
    object UniPanel1: TUniPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 1323
      Height = 104
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 2
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
          ' = '#39'Painel'#39';'#13#10'}')
      BorderStyle = ubsInset
      Caption = ''
      object cDUIMP: TUniDBLookupComboBox
        AlignWithMargins = True
        Left = 13
        Top = 12
        Width = 700
        Height = 25
        Hint = ''
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        ListField = 'DUIMP;Data;Processo;Exportador'
        ListSource = dsDUIMP
        KeyField = 'DUIMP'
        ListFieldIndex = 2
        BorderStyle = ubsInset
        ClearButton = True
        AnyMatch = True
        TabOrder = 1
        Color = clWindow
        FieldLabel = 'DUIMP'
        FieldLabelWidth = 60
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
        OnChange = cDUIMPChange
      end
      object cCFOP: TUniDBLookupComboBox
        AlignWithMargins = True
        Left = 13
        Top = 39
        Width = 700
        Height = 25
        Hint = ''
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCFOP
        KeyField = 'Codigo'
        ListFieldIndex = 1
        BorderStyle = ubsInset
        ClearButton = True
        AnyMatch = True
        TabOrder = 2
        Color = clWindow
        FieldLabel = 'CFOP'
        FieldLabelWidth = 60
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
        OnChange = cCFOPChange
      end
      object cEmbarque: TUniDBLookupComboBox
        AlignWithMargins = True
        Left = 13
        Top = 66
        Width = 700
        Height = 25
        Hint = ''
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        ListField = 'Navio;Nome;Processo'
        ListSource = dsEmbarques
        KeyField = 'Navio'
        ListFieldIndex = 1
        BorderStyle = ubsInset
        ClearButton = True
        AnyMatch = True
        TabOrder = 3
        Color = clWindow
        FieldLabel = 'Embarque'
        FieldLabelWidth = 60
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
      end
      object UniSpeedButton1: TUniSpeedButton
        AlignWithMargins = True
        Left = 772
        Top = 39
        Width = 110
        Height = 43
        Hint = 'Adicionar um Item'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        Caption = 'Adicionar Item'
        ParentColor = False
        IconAlign = iaCenter
        Images = UniMainModule.imgBotoes
        ImageIndex = 0
        TabOrder = 4
        OnClick = bAddItemClick
      end
    end
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
    Left = 456
    Top = 387
  end
  object PedidosNF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 943
    Top = 338
  end
  object PedidosNFItens: TFDQuery
    AfterRefresh = PedidosNFItensAfterRefresh
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
    Left = 602
    Top = 389
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object PedidosNFItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object PedidosNFItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PedidosNFItensES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
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
    object PedidosNFItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object PedidosNFItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
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
    object PedidosNFItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object PedidosNFItensMovimenta_EstoqueInd: TBooleanField
      FieldName = 'Movimenta_EstoqueInd'
      Origin = 'Movimenta_EstoqueInd'
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
    object PedidosNFItensAliquota_ICMSSTAnt: TFloatField
      FieldName = 'Aliquota_ICMSSTAnt'
      Origin = 'Aliquota_ICMSSTAnt'
    end
    object PedidosNFItensFator_Cambio: TFloatField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
    end
    object PedidosNFItensOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object PedidosNFItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
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
    object PedidosNFItensValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
    end
    object PedidosNFItensValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
    end
    object PedidosNFItensValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
    end
    object PedidosNFItensValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
    end
    object PedidosNFItensValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
    end
    object PedidosNFItensValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
    end
    object PedidosNFItensValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
    end
    object PedidosNFItensValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
    end
    object PedidosNFItensValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
    end
    object PedidosNFItensValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
    end
    object PedidosNFItensFator_Produto: TFloatField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
    end
    object PedidosNFItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
    end
    object PedidosNFItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
    end
    object PedidosNFItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object PedidosNFItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object PedidosNFItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object PedidosNFItensValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object PedidosNFItensValor_BCICMSOp: TCurrencyField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object PedidosNFItensAliquota_ICMSOp: TFloatField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object PedidosNFItensValor_ICMSOp: TCurrencyField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object PedidosNFItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
    end
    object PedidosNFItensValor_BCICMSST: TCurrencyField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
    end
    object PedidosNFItensAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
    end
    object PedidosNFItensValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
    end
    object PedidosNFItensValor_BCMVA: TCurrencyField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
    end
    object PedidosNFItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
    end
    object PedidosNFItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
    end
    object PedidosNFItensAliquota_ICMSOpRed: TFloatField
      FieldName = 'Aliquota_ICMSOpRed'
      Origin = 'Aliquota_ICMSOpRed'
    end
    object PedidosNFItensValor_ICMSOpRed: TCurrencyField
      FieldName = 'Valor_ICMSOpRed'
      Origin = 'Valor_ICMSOpRed'
    end
    object PedidosNFItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
    end
    object PedidosNFItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
    end
    object PedidosNFItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
    end
    object PedidosNFItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
    end
    object PedidosNFItensValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
    end
    object PedidosNFItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
    end
    object PedidosNFItensValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
    end
    object PedidosNFItensValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
    end
    object PedidosNFItensValor_Despesa: TCurrencyField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
    end
    object PedidosNFItensValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
    end
    object PedidosNFItensValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
    end
    object PedidosNFItensValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
    end
    object PedidosNFItensValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
    end
    object PedidosNFItensValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
    end
    object PedidosNFItensAliquota_ICMSDest: TFloatField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
    end
    object PedidosNFItensValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
    end
    object PedidosNFItensValor_DIFAL: TCurrencyField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
    end
    object PedidosNFItensPercentual_DIFALOrig: TFloatField
      FieldName = 'Percentual_DIFALOrig'
      Origin = 'Percentual_DIFALOrig'
    end
    object PedidosNFItensValor_DIFALOrig: TCurrencyField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
    end
    object PedidosNFItensPercentual_DIFALDest: TFloatField
      FieldName = 'Percentual_DIFALDest'
      Origin = 'Percentual_DIFALDest'
    end
    object PedidosNFItensValor_DIFALDest: TCurrencyField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
    end
    object PedidosNFItensValor_DIFALST: TCurrencyField
      FieldName = 'Valor_DIFALST'
      Origin = 'Valor_DIFALST'
    end
    object PedidosNFItensAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
    end
    object PedidosNFItensValor_FCPDest: TCurrencyField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
    end
    object PedidosNFItensPercentual_FCPICMSOrig: TFloatField
      FieldName = 'Percentual_FCPICMSOrig'
      Origin = 'Percentual_FCPICMSOrig'
    end
    object PedidosNFItensValor_FCPICMSDest: TCurrencyField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
    end
    object PedidosNFItensValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
    end
    object PedidosNFItensValor_BCICMSSTAnt: TCurrencyField
      FieldName = 'Valor_BCICMSSTAnt'
      Origin = 'Valor_BCICMSSTAnt'
    end
    object PedidosNFItensValor_ICMSSTAnt: TCurrencyField
      FieldName = 'Valor_ICMSSTAnt'
      Origin = 'Valor_ICMSSTAnt'
    end
    object PedidosNFItensValor_ICMSAnt: TCurrencyField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
    end
    object PedidosNFItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
    end
    object PedidosNFItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
    end
    object PedidosNFItensValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
    end
    object PedidosNFItensValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
    end
    object PedidosNFItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
    end
    object PedidosNFItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
    end
    object PedidosNFItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
    end
    object PedidosNFItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
    end
    object PedidosNFItensValor_BCICMSApuracao: TCurrencyField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
    end
    object PedidosNFItensValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
    end
    object PedidosNFItensValor_MediaBCR: TCurrencyField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
    end
    object PedidosNFItensValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
    end
    object PedidosNFItensValor_TotalImpostos: TCurrencyField
      FieldName = 'Valor_TotalImpostos'
      Origin = 'Valor_TotalImpostos'
    end
    object PedidosNFItensValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
    end
    object PedidosNFItensValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
    end
    object PedidosNFItensPercentual_Lucro: TFloatField
      FieldName = 'Percentual_Lucro'
      Origin = 'Percentual_Lucro'
    end
    object PedidosNFItensValor_Lucro: TCurrencyField
      FieldName = 'Valor_Lucro'
      Origin = 'Valor_Lucro'
    end
    object PedidosNFItensValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
    end
    object PedidosNFItensValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
    end
    object PedidosNFItensAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
    end
    object PedidosNFItensValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
    end
    object PedidosNFItensAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
    end
    object PedidosNFItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
    end
    object PedidosNFItensRateio_FreteTerrNac: TFloatField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
    end
    object PedidosNFItensPercentual_Desconto: TFloatField
      FieldName = 'Percentual_Desconto'
      Origin = 'Percentual_Desconto'
    end
    object PedidosNFItensValor_Desconto: TFloatField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
    end
    object PedidosNFItensAliquota_PISRed: TFloatField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
    end
    object PedidosNFItensAliquota_COFINSRed: TFloatField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
    end
    object PedidosNFItensAliquota_ICMSOpIntegral: TFloatField
      FieldName = 'Aliquota_ICMSOpIntegral'
      Origin = 'Aliquota_ICMSOpIntegral'
    end
    object PedidosNFItensRateio_SISCOMEX: TFloatField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
    end
    object PedidosNFItensPercentual_Comissao: TFloatField
      FieldName = 'Percentual_Comissao'
      Origin = 'Percentual_Comissao'
    end
    object PedidosNFItensValor_Comissao: TCurrencyField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
    end
    object PedidosNFItensPercentual_RedICMSST: TFloatField
      FieldName = 'Percentual_RedICMSST'
      Origin = 'Percentual_RedICMSST'
    end
    object PedidosNFItensAliquota_ICMSDif: TFloatField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
    end
    object PedidosNFItensValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
    end
    object PedidosNFItensAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
    end
    object PedidosNFItensAliquota_ICMSOPRed2: TFloatField
      FieldName = 'Aliquota_ICMSOPRed2'
      Origin = 'Aliquota_ICMSOPRed2'
    end
    object PedidosNFItensPercentual_Beneficio: TFloatField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
    end
    object PedidosNFItensPercentual_ICMSMono: TFloatField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
    end
    object PedidosNFItensPercentual_ICMSMonoRet: TFloatField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
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
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object PedidosNFItensValor_BCICMSDif: TCurrencyField
      FieldName = 'Valor_BCICMSDif'
      Origin = 'Valor_BCICMSDif'
    end
    object PedidosNFItensValor_IPIDevol: TCurrencyField
      FieldName = 'Valor_IPIDevol'
      Origin = 'Valor_IPIDevol'
    end
    object PedidosNFItensPercentual_IPIDevol: TFloatField
      FieldName = 'Percentual_IPIDevol'
      Origin = 'Percentual_IPIDevol'
    end
    object PedidosNFItensBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
      FixedChar = True
      Size = 10
    end
    object PedidosNFItensDeclaracao: TStringField
      FieldName = 'Declaracao'
      Origin = 'Declaracao'
      Size = 15
    end
    object PedidosNFItensValor_Produtos: TCurrencyField
      FieldName = 'Valor_Produtos'
      Origin = 'Valor_Produtos'
    end
    object PedidosNFItensValor_FCPICMSOrig: TCurrencyField
      FieldName = 'Valor_FCPICMSOrig'
      Origin = 'Valor_FCPICMSOrig'
    end
    object PedidosNFItensItem_DUIMP: TIntegerField
      FieldName = 'Item_DUIMP'
      Origin = 'Item_DUIMP'
    end
    object PedidosNFItensFinalidade_Mercadoria: TStringField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
      Size = 21
    end
    object PedidosNFItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
      Origin = 'Registro_Adicao'
    end
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
    Left = 818
    Top = 338
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
    Left = 1001
    Top = 338
  end
  object ProcessosImpItens: TFDQuery
    AfterRefresh = ProcessosImpItensAfterRefresh
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Registro'
      '      ,Item'
      '      ,Codigo_Mercadoria'
      
        '      ,Descricao = (select Descricao from Produtos where Codigo ' +
        '= Codigo_Mercadoria)'
      '      ,Quantidade'
      '      ,Disponivel = cast(0 as float)'
      '      ,Valor_UnitarioME'
      '      ,Valor_UnitarioReal'
      '      ,NCM'
      '      ,Peso_Liquido'
      '      ,Pedido'
      '      ,Adicao'
      '      ,Ordem'
      '      ,DUIMP'
      'from ProcessosImpItens')
    Left = 701
    Top = 388
    object ProcessosImpItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
      Required = True
    end
    object ProcessosImpItensDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ReadOnly = True
      Size = 5000
    end
    object ProcessosImpItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object ProcessosImpItensValor_UnitarioReal: TCurrencyField
      FieldName = 'Valor_UnitarioReal'
      Origin = 'Valor_UnitarioReal'
      DisplayFormat = ',##0.0000'
    end
    object ProcessosImpItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.##;0'
      Size = 8
    end
    object ProcessosImpItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object ProcessosImpItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
      DisplayFormat = '000000'
    end
    object ProcessosImpItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = 'Disponivel'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object ProcessosImpItensValor_UnitarioME: TCurrencyField
      FieldName = 'Valor_UnitarioME'
      Origin = 'Valor_UnitarioME'
      DisplayFormat = ',##0.0000'
    end
    object ProcessosImpItensPedido: TStringField
      FieldName = 'Pedido'
      Origin = 'Pedido'
      Size = 15
    end
    object ProcessosImpItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object ProcessosImpItensRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
      ReadOnly = True
    end
    object ProcessosImpItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object ProcessosImpItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
  end
  object DUIMP: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select DUIMP'
      '      ,Data = Data_Registro'
      '      ,Processo'
      
        '      ,Exportador = (select Nome from Destinatarios dt where dt.' +
        'Codigo = pi.Exportador)'
      'from ProcessosImp pi'
      'where Desativado <> 1'
      'and Data_Encerramento is null'
      '')
    Left = 407
    Top = 389
  end
  object Embarques: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      
        'select Navio, Processo, Nome = (select Nome from Navios where Co' +
        'digo = Navio), Filial, UF from Embarques')
    Left = 519
    Top = 389
  end
  object tCambio: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 1066
    Top = 454
  end
  object tProcesso: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 818
    Top = 454
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 944
    Top = 454
  end
  object tNCM: TFDQuery
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
    Left = 874
    Top = 338
  end
  object tBeneficios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    Left = 874
    Top = 454
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
      '      ,Codigo_Fabricante'
      '      ,Descricao'
      'from Produtos'
      '')
    Left = 943
    Top = 391
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
    Left = 1001
    Top = 391
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
    Left = 1066
    Top = 391
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
    Left = 1138
    Top = 391
  end
  object CSTICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 1217
    Top = 391
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 1138
    Top = 338
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
    Left = 1066
    Top = 338
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 602
    Top = 439
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 599
    Top = 224
  end
  object dsProcessosImpItens: TDataSource
    DataSet = ProcessosImpItens
    Left = 703
    Top = 439
  end
  object dsDUIMP: TDataSource
    DataSet = DUIMP
    Left = 406
    Top = 439
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 456
    Top = 439
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 519
    Top = 439
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
      'where isnull(DI, '#39#39') <> '#39#39
      'select Tipo = '#39'EXP'#39
      '      ,Processo'
      'from ProcessosExp'
      'where isnull(DE, '#39#39') <> '#39#39)
    Left = 874
    Top = 391
  end
  object tNCMICMS: TFDQuery
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
    Left = 818
    Top = 391
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
    Left = 407
    Top = 497
  end
  object dstFormulas: TDataSource
    DataSet = tFormulas
    Left = 407
    Top = 543
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 541
    Top = 224
  end
  object tImpostos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 339
    Top = 391
    object tImpostosOrdem_Calculo: TSmallintField
      FieldName = 'Ordem_Calculo'
    end
    object tImpostosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tImpostosCampo: TStringField
      FieldName = 'Campo'
      Size = 60
    end
    object tImpostosAliquota: TFloatField
      FieldName = 'Aliquota'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
  end
  object tFormulasItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 339
    Top = 440
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
    Left = 340
    Top = 493
  end
  object CSTICMSA: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 600
    Top = 341
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
    Left = 696
    Top = 339
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
    Left = 456
    Top = 497
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
    Left = 456
    Top = 543
  end
  object tFOB: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 609
    Top = 556
  end
end
