object fFatPedidoItensDUIMP: TfFatPedidoItensDUIMP
  Left = 0
  Top = 0
  ClientHeight = 712
  ClientWidth = 1327
  Caption = 'ITENS DA DUIMP'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.cls = '#39'Ficha'#39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 677
    Width = 1327
    Height = 35
    Hint = ''
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
      Left = 1285
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
      Width = 120
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
    object bRemTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 367
      Top = 1
      Width = 120
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
      TabOrder = 3
      OnClick = bRemTudoClick
    end
    object bAddTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 123
      Top = 1
      Width = 120
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
      TabOrder = 4
      OnClick = bAddTudoClick
    end
    object bRemItem: TUniSpeedButton
      AlignWithMargins = True
      Left = 245
      Top = 1
      Width = 120
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
      TabOrder = 5
      OnClick = bRemItemClick
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 1327
    Height = 677
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'FichaSSombra'#39';'#13#10'}')
    Caption = 'UniPanel2'
    object UniPanel1: TUniPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1319
      Height = 65
      Hint = ''
      Align = alTop
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'FichaSSombra'#39';'#13#10'}')
      BorderStyle = ubsInset
      Caption = ''
      object cDUIMP: TUniDBLookupComboBox
        Left = 319
        Top = 12
        Width = 683
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'DUIMP;Data;Processo;Exportador'
        ListSource = dsDUIMP
        KeyField = 'DUIMP'
        ListFieldIndex = 2
        ClearButton = True
        AnyMatch = True
        TabOrder = 1
        Color = clWindow
        FieldLabel = 'DUIMP'
        FieldLabelWidth = 70
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
        OnChange = cDUIMPChange
      end
    end
    object Pasta: TUniPageControl
      Left = 1
      Top = 72
      Width = 1325
      Height = 604
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      ActivePage = UniTabSheet1
      Align = alClient
      TabOrder = 2
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Itens do Pedido'
        object pFicha: TUniPanel
          Left = 0
          Top = 0
          Width = 1317
          Height = 365
          Hint = ''
          Enabled = False
          Align = alClient
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'FichaSSombra'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object gAdicoes: TUniDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 125
            Width = 1309
            Height = 236
            Hint = ''
            DataSource = dsAdicoes
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando itens da DUIMP...Aguarde'
            ForceFit = True
            BorderStyle = ubsInset
            Align = alBottom
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Adicao'
                Title.Alignment = taCenter
                Title.Caption = 'Adi'#231#227'o'
                Title.Font.Style = [fsBold]
                Width = 45
                Alignment = taRightJustify
              end
              item
                FieldName = 'Codigo_Mercadoria'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Title.Font.Style = [fsBold]
                Width = 64
              end
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Font.Style = [fsBold]
                Width = 610
                ReadOnly = True
              end
              item
                FieldName = 'NCM'
                Title.Alignment = taCenter
                Title.Caption = 'NCM'
                Title.Font.Style = [fsBold]
                Width = 70
                Alignment = taCenter
              end
              item
                FieldName = 'Quantidade'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Title.Font.Style = [fsBold]
                Width = 100
              end
              item
                FieldName = 'Disponivel'
                Title.Alignment = taCenter
                Title.Caption = 'Dispon'#237'vel'
                Title.Font.Style = [fsBold]
                Width = 64
                ReadOnly = True
              end
              item
                FieldName = 'Valor_UnitarioReal'
                Title.Alignment = taCenter
                Title.Caption = 'Unit'#225'rio'
                Title.Font.Style = [fsBold]
                Width = 100
              end
              item
                FieldName = 'Peso_Liquido'
                Title.Alignment = taCenter
                Title.Caption = 'Peso L'#237'quido'
                Title.Font.Style = [fsBold]
                Width = 90
              end>
          end
          object cCFOP: TUniDBLookupComboBox
            Left = 8
            Top = 56
            Width = 655
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Descricao'
            ListSource = dsCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'CFOP'
            FieldLabelWidth = 70
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
            Mode = umNameValue
            OnChange = cCFOPChange
          end
          object cEmbarque: TUniDBLookupComboBox
            Left = 8
            Top = 5
            Width = 329
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Navio;Nome;Processo'
            ListSource = dsEmbarques
            KeyField = 'Navio'
            ListFieldIndex = 1
            ClearButton = True
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Embarque'
            FieldLabelWidth = 70
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            ForceSelection = True
            NormalizeString = True
            Style = csDropDown
            Mode = umNameValue
          end
          object cQtdePerc: TUniFormattedNumberEdit
            Left = 351
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Quantidade %'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cValorUnitario: TUniFormattedNumberEdit
            Left = 457
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Valor Unit'#225'rio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cFracionar: TUniCheckBox
            Left = 670
            Top = 40
            Width = 72
            Height = 17
            Hint = ''
            Caption = 'Fracionar'
            TabOrder = 13
          end
          object cLucroPerc: TUniFormattedNumberEdit
            Left = 669
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = '% Margem Lucro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cLucroValor: TUniFormattedNumberEdit
            Left = 563
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 5
            SelectOnFocus = True
            FieldLabel = 'Valor Margem Lucro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cDescPerc: TUniFormattedNumberEdit
            Left = 881
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 8
            SelectOnFocus = True
            FieldLabel = '% Desconto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cDescValor: TUniFormattedNumberEdit
            Left = 775
            Top = 5
            Width = 100
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Alignment = taRightJustify
            TabOrder = 7
            SelectOnFocus = True
            FieldLabel = 'Valor Desconto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cCalcVol: TUniCheckBox
            Left = 1004
            Top = 29
            Width = 210
            Height = 17
            Hint = ''
            Caption = 'Calcular quantidade total de volumes'
            TabOrder = 10
          end
          object cICMSAnt: TUniCheckBox
            Left = 1004
            Top = 52
            Width = 210
            Height = 17
            Hint = ''
            Caption = 'ICMS cobrado anteriormente por ST'
            TabOrder = 11
          end
          object UniCheckBox1: TUniCheckBox
            Left = 1004
            Top = 75
            Width = 300
            Height = 17
            Hint = ''
            Caption = 'Utilizar quantidade total do item p/ quebra por percentual'
            TabOrder = 12
          end
        end
        object gItens: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 368
          Width = 1311
          Height = 205
          Hint = ''
          DataSource = dsPedidosNFItens
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Carregando itens do Pedido...Aguarde'
          ForceFit = True
          BorderStyle = ubsInset
          Align = alBottom
          TabOrder = 1
          Columns = <
            item
              FieldName = 'Item'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Style = [fsBold]
              Width = 40
            end
            item
              FieldName = 'Adicao'
              Title.Alignment = taCenter
              Title.Caption = 'Adi'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 45
            end
            item
              FieldName = 'Codigo'
              Title.Alignment = taCenter
              Title.Caption = 'Produto'
              Title.Font.Style = [fsBold]
              Width = 64
            end
            item
              FieldName = 'Descricao_Mercadoria'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 689
              DisplayMemo = True
            end
            item
              FieldName = 'NCM'
              Title.Alignment = taCenter
              Title.Caption = 'NCM'
              Title.Font.Style = [fsBold]
              Width = 70
              Alignment = taCenter
            end
            item
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Font.Style = [fsBold]
              Width = 115
            end
            item
              FieldName = 'Valor_Unitario'
              Title.Alignment = taCenter
              Title.Caption = 'Unit'#225'rio'
              Title.Font.Style = [fsBold]
              Width = 106
            end
            item
              FieldName = 'CFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Title.Font.Style = [fsBold]
              Width = 40
              Alignment = taCenter
            end>
        end
      end
      object UniTabSheet2: TUniTabSheet
        Hint = ''
        Caption = 'Ocorr'#234'ncias'
        object mFormulas: TUniMemo
          Left = 0
          Top = 0
          Width = 1317
          Height = 576
          Hint = ''
          ScrollBars = ssBoth
          Lines.Strings = (
            'mFormulas')
          ParentFont = False
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'JetBrains Mono'
          Align = alClient
          Color = 5453824
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDestaque'#39';'#13#10'}')
          FieldLabel = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
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
    Left = 414
    Top = 279
  end
  object PedidosNF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 158
    Top = 279
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
    Left = 238
    Top = 279
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
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
    object PedidosNFItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object PedidosNFItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object PedidosNFItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object PedidosNFItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object PedidosNFItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
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
    object PedidosNFItensAliquota_ICMSSubAnt: TFloatField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'Aliquota_ICMSSubAnt'
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
    object PedidosNFItensSequencia: TIntegerField
      FieldName = 'Sequencia'
      Origin = 'Sequencia'
    end
    object PedidosNFItensSequencia_SISCOMEX: TIntegerField
      FieldName = 'Sequencia_SISCOMEX'
      Origin = 'Sequencia_SISCOMEX'
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
    object PedidosNFItensValor_Impostos: TCurrencyField
      FieldName = 'Valor_Impostos'
      Origin = 'Valor_Impostos'
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
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
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
    Left = 550
    Top = 279
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
    Left = 614
    Top = 279
  end
  object Adicoes: TFDQuery
    AfterRefresh = AdicoesAfterRefresh
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Adicao'
      '      ,Codigo_Mercadoria'
      
        '      ,Descricao = (select Descricao from Produtos where Codigo ' +
        '= Codigo_Mercadoria)'
      '      ,Quantidade'
      '      ,Disponivel = 0'
      '      ,Valor_UnitarioReal'
      '      ,NCM'
      '      ,Peso_Liquido'
      'from Adicoes')
    Left = 309
    Top = 279
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
    Left = 365
    Top = 279
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
    Left = 477
    Top = 279
  end
  object tCambio: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 158
    Top = 375
  end
  object tProcesso: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 238
    Top = 375
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 54
    Top = 383
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
    Left = 666
    Top = 279
  end
  object tBeneficios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    Left = 306
    Top = 375
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
    Left = 730
    Top = 279
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
    Left = 798
    Top = 279
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
    Left = 862
    Top = 279
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
    Left = 929
    Top = 279
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
    Left = 1003
    Top = 279
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 1076
    Top = 279
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
    Left = 1162
    Top = 279
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 238
    Top = 326
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 70
    Top = 277
  end
  object dsAdicoes: TDataSource
    DataSet = Adicoes
    Left = 309
    Top = 326
  end
  object dsDUIMP: TDataSource
    DataSet = DUIMP
    Left = 364
    Top = 326
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 413
    Top = 326
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 477
    Top = 326
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
    Left = 553
    Top = 326
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
    Left = 666
    Top = 327
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
    Left = 1236
    Top = 275
  end
  object dstFormulas: TDataSource
    DataSet = tFormulas
    Left = 1236
    Top = 317
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 19
    Top = 276
  end
end
