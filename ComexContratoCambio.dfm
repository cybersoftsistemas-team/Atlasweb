object fComexContratoCambio: TfComexContratoCambio
  Left = 0
  Top = 0
  Width = 1206
  Height = 705
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object pBarraNav: TUniPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 1206
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
      Left = 0
      Top = 0
      Width = 156
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsContratos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 156
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
      Left = 197
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
      Left = 238
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
      Left = 320
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
      Left = 279
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
      Left = 361
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
    object UniButton1: TUniButton
      Left = 593
      Top = 4
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 8
      OnClick = UniButton1Click
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1206
    Height = 670
    Hint = ''
    ActivePage = pDados
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 663
    object pLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitHeight = 635
      object Lista: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1198
        Height = 615
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        TitleFont.Name = 'MS Sans Serif'
        DataSource = dsContratos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.PageSize = 35
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsInset
        Align = alClient
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Contrato N'#186
            Title.Font.Style = [fsBold]
            Width = 201
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Data_Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 183
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Banco_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Style = [fsBold]
            Width = 424
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Taxa_Cambial'
            Title.Alignment = taCenter
            Title.Caption = 'Taxa Cambial'
            Title.Font.Style = [fsBold]
            Width = 92
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Moeda_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Moeda'
            Title.Font.Style = [fsBold]
            Width = 214
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Total_ME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor ME'
            Title.Font.Style = [fsBold]
            Width = 140
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object pBarraPesq: TUniPanel
        Tag = 1
        Left = 0
        Top = 0
        Width = 1198
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
          Color = clWindow
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
      Caption = 'Contrato de C'#226'mbio'
      ExplicitHeight = 635
      DesignSize = (
        1198
        642)
      object Panel2: TUniPanel
        Left = 30
        Top = 17
        Width = 1154
        Height = 551
        Hint = ''
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
            ' = '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        ShowCaption = False
        TitleAlign = taCenter
        Caption = 'Panel2'
        ParentAlignmentControl = False
        object Panel1: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 582
          Top = 8
          Width = 564
          Height = 535
          Hint = ''
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          ShowHint = True
          ParentShowHint = False
          Align = alClient
          TabOrder = 1
          BorderStyle = ubsInset
          ShowCaption = False
          Caption = ''
          object UniPanel1: TUniPanel
            Tag = 1
            AlignWithMargins = True
            Left = 4
            Top = 239
            Width = 556
            Height = 35
            Hint = ''
            Margins.Top = 0
            Margins.Bottom = 1
            ShowHint = True
            Align = alTop
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsInset
            ShowCaption = False
            Caption = 'UniPanel1'
            ExplicitTop = 242
            object bExcItem: TUniSpeedButton
              Left = 239
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
              TabOrder = 1
              OnClick = bExcItemClick
            end
            object bAltItem: TUniSpeedButton
              Left = 198
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
              TabOrder = 2
              OnClick = bAltItemClick
            end
            object bAddItem: TUniSpeedButton
              Left = 157
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
              TabOrder = 3
              OnClick = bAddItemClick
            end
            object NavegaItens: TUniDBNavigator
              Left = 1
              Top = 1
              Width = 156
              Height = 33
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dsContratosItens
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 4
            end
            object bCancItem: TUniSpeedButton
              Left = 321
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
            object bSalItem: TUniSpeedButton
              Left = 280
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
              OnClick = bSalItemClick
            end
          end
          object GradeItens: TUniDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 278
            Width = 556
            Height = 253
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            TitleFont.Name = 'MS Sans Serif'
            DataSource = dsContratosItens
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            Align = alClient
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 2
            Columns = <
              item
                FieldName = 'Processo'
                Title.Alignment = taCenter
                Title.Caption = 'Processo'
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 105
                Font.Name = 'Calibri'
                ReadOnly = True
              end
              item
                FieldName = 'Fatura'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Fatura'
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 132
                Font.Name = 'Calibri'
                ReadOnly = True
              end
              item
                FieldName = 'Valor_Fatura'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Fatura (ME)'
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 110
                Font.Name = 'Calibri'
                ReadOnly = True
              end
              item
                FieldName = 'Valor_ME'
                Title.Alignment = taCenter
                Title.Caption = 'Valor (ME)'
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Font.Name = 'Calibri'
                ReadOnly = True
              end
              item
                FieldName = 'Valor_Real'
                Title.Alignment = taCenter
                Title.Caption = 'Valor (R$)'
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Font.Name = 'Calibri'
                ReadOnly = True
              end>
          end
          object FichaItem: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 556
            Height = 232
            Hint = ''
            ShowHint = True
            Align = alTop
            TabOrder = 3
            BorderStyle = ubsSolid
            ShowCaption = False
            Caption = 'FichaItem'
            object cTaxa_Cambial: TUniDBEdit
              Left = 7
              Top = 140
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Taxa_Cambial'
              DataSource = dsContratosItens
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 1
              TabStop = False
              ReadOnly = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CampoDestaque'#39';'#13#10'}')
              FieldLabel = 'Taxa Cambial'
              FieldLabelWidth = 90
              BorderStyle = ubsInset
            end
            object cValorFatReal: TUniFormattedNumberEdit
              Left = 7
              Top = 194
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 2
              TabStop = False
              ReadOnly = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CampoDestaque'#39';'#13#10'}')
              EmptyText = '0'
              BlankValue = 0
              SelectOnFocus = True
              FieldLabel = 'Valor (R$)'
              FieldLabelWidth = 90
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cFatura: TUniDBEdit
              Left = 7
              Top = 59
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Fatura'
              DataSource = dsContratosItens
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 3
              TabStop = False
              ReadOnly = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CampoDestaque'#39';'#13#10'}')
              FieldLabel = 'Fatura N'#186
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cProcesso: TUniDBLookupComboBox
              Left = 7
              Top = 5
              Width = 500
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Processo;DUIMP'
              ListSource = dsProcessos
              KeyField = 'Processo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Processo'
              DataSource = dsContratosItens
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Processo'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              Style = csDropDown
              OnExit = cExportadorExit
            end
            object cEmbarque: TUniDBLookupComboBox
              Left = 7
              Top = 32
              Width = 500
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Codigo;Navio_Nome'
              ListSource = dsEmbarques
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Embarque'
              DataSource = dsContratosItens
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Embarque'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cTotalFatME: TUniFormattedNumberEdit
              Left = 7
              Top = 86
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 6
              TabStop = False
              ReadOnly = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CampoDestaque'#39';'#13#10'}')
              FieldLabel = 'Total Fatura (ME)'
              FieldLabelWidth = 90
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cSaldoFatME: TUniFormattedNumberEdit
              Left = 7
              Top = 113
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              TabOrder = 7
              TabStop = False
              ReadOnly = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CampoDestaque'#39';'#13#10'}')
              FieldLabel = 'Saldo Fatura (ME)'
              FieldLabelWidth = 90
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cValor_ME: TUniDBFormattedNumberEdit
              Left = 7
              Top = 167
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_ME'
              DataSource = dsContratosItens
              TabOrder = 8
              FieldLabel = 'Valor (ME)'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
              OnChange = cValor_MEChange
              OnChangeValue = cValor_MEChangeValue
            end
          end
        end
        object Ficha: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 8
          Top = 8
          Width = 565
          Height = 535
          Hint = ''
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          TabOrder = 2
          BorderStyle = ubsInset
          ShowCaption = False
          Caption = 'UniPanel1'
          object cContrato: TUniDBEdit
            Left = 8
            Top = 35
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Numero'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Contrato N'#186
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cConta_Fornecedor: TUniDBEdit
            Left = 8
            Top = 332
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Banco_Conta'
            DataSource = dsExportadores
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 11
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Conta Exportador'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cValorME: TUniDBEdit
            Left = 8
            Top = 413
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Total_ME'
            DataSource = dsContratos
            Alignment = taRightJustify
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 16
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                ' = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Total (ME)'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cTaxaCambial: TUniDBEdit
            Left = 8
            Top = 305
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Taxa_Cambial'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'Taxa do C'#226'mbio'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cData: TUniDBDateTimePicker
            Left = 8
            Top = 89
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data'
            DataSource = dsContratos
            DateTime = 46154.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Data Contrato'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            OnExit = cDataExit
          end
          object cBanco: TUniDBLookupComboBox
            Left = 8
            Top = 251
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Nome;Conta'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Banco'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cExportador: TUniDBLookupComboBox
            Left = 8
            Top = 143
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Nome'
            ListSource = dsExportadores
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Exportador'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Exportador'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnExit = cExportadorExit
          end
          object cMoeda: TUniDBLookupComboBox
            Left = 8
            Top = 278
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Nome;Simbolo'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Moeda'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Moeda'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cValorReal: TUniFormattedNumberEdit
            Left = 8
            Top = 440
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 17
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                ' = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Total (R$)'
            FieldLabelWidth = 90
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cDataVencimento: TUniDBDateTimePicker
            Left = 8
            Top = 116
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data_Vencimento'
            DataSource = dsContratos
            DateTime = 46154.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Data Vencimento'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
          end
          object cCentroCusto: TUniDBLookupComboBox
            Left = 8
            Top = 170
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Centro_Custo'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Centro de Custo'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cRecursos: TUniDBLookupComboBox
            Left = 8
            Top = 62
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Descricao'
            ListSource = dsRecursos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Recursos'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Origem Recurso'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cClassificacao: TUniDBLookupComboBox
            Left = 8
            Top = 197
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Nome'
            ListSource = dsPlanoContas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Classificacao'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Conta Financeira'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cBeneficiario: TUniDBLookupComboBox
            Left = 8
            Top = 224
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo;Nome'
            ListSource = dsExportadores
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Beneficiario'
            DataSource = dsContratos
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Benfici'#225'rio'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cPrevisao: TUniDBCheckBox
            Left = 16
            Top = 474
            Width = 118
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Previsao'
            DataSource = dsContratos
            Caption = 'Previs'#227'o C'#226'mbial'
            TabOrder = 18
            ParentColor = False
            Color = clBtnFace
            OnClick = cPrevisaoClick
          end
          object cSwift_Code: TUniDBEdit
            Left = 8
            Top = 359
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Swift_Code'
            DataSource = dsExportadores
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 12
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Swift Code'
            FieldLabelWidth = 90
            BorderStyle = ubsInset
          end
          object cIBAN: TUniDBEdit
            Left = 8
            Top = 386
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'IBAN'
            DataSource = dsExportadores
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 13
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                ' = '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'IBAN'
            FieldLabelWidth = 90
            BorderStyle = ubsInset
          end
          object DBCheckBox1: TUniDBCheckBox
            Left = 16
            Top = 499
            Width = 142
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Pago_Cliente'
            DataSource = dsContratos
            Caption = 'C'#226'mbio pago pelo cliente'
            TabOrder = 19
            ParentColor = False
            Color = clBtnFace
          end
          object cEmpresa: TUniDBLookupComboBox
            Left = 8
            Top = 8
            Width = 547
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Razao_Social;Filial'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Empresa'
            DataSource = dsContratos
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Empresa'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
      end
    end
  end
  object tFINIMP: TFDQuery
    Left = 667
    Top = 194
  end
  object tPrevisao: TFDQuery
    Left = 667
    Top = 146
  end
  object tTemp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 667
    Top = 299
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
  object dsContratos: TDataSource
    DataSet = Contratos
    Left = 757
    Top = 146
  end
  object Bancos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Bancos')
    Left = 757
    Top = 194
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 757
    Top = 243
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Moedas')
    Left = 757
    Top = 299
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 757
    Top = 347
  end
  object Exportadores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Fornecedores')
    Left = 757
    Top = 397
  end
  object dsExportadores: TDataSource
    DataSet = Exportadores
    Left = 757
    Top = 447
  end
  object PagarReceber: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM PagarReceber')
    Left = 757
    Top = 497
    object PagarReceberTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
    end
    object PagarReceberData_Vencimento: TDateField
      FieldName = 'Data_Vencimento'
      Origin = 'Data_Vencimento'
    end
    object PagarReceberTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object PagarReceberValor_Total: TBCDField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      Precision = 18
    end
    object PagarReceberBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object PagarReceberForma_Pgto: TSmallintField
      FieldName = 'Forma_Pgto'
      Origin = 'Forma_Pgto'
    end
    object PagarReceberForma_PgtoDoc: TStringField
      FieldName = 'Forma_PgtoDoc'
      Origin = 'Forma_PgtoDoc'
      Size = 15
    end
    object PagarReceberRegistro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object PagarReceberEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PagarReceberAdiantamento: TBooleanField
      FieldName = 'Adiantamento'
      Origin = 'Adiantamento'
    end
    object PagarReceberDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object PagarReceberTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'Tributo'
    end
    object PagarReceberCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      Size = 10
    end
    object PagarReceberData_Previsao: TDateField
      FieldName = 'Data_Previsao'
      Origin = 'Data_Previsao'
    end
    object PagarReceberValor_Documento: TBCDField
      FieldName = 'Valor_Documento'
      Origin = 'Valor_Documento'
      Precision = 18
    end
    object PagarReceberValor_Parcela: TBCDField
      FieldName = 'Valor_Parcela'
      Origin = 'Valor_Parcela'
      Precision = 18
    end
    object PagarReceberValor_Multa: TBCDField
      FieldName = 'Valor_Multa'
      Origin = 'Valor_Multa'
      Precision = 18
    end
    object PagarReceberValor_Juros: TBCDField
      FieldName = 'Valor_Juros'
      Origin = 'Valor_Juros'
      Precision = 18
    end
    object PagarReceberValor_Desconto: TBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      Precision = 18
    end
    object PagarReceberValor_Operacao: TBCDField
      FieldName = 'Valor_Operacao'
      Origin = 'Valor_Operacao'
      Precision = 18
    end
    object PagarReceberBeneficiario: TSmallintField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
    end
    object PagarReceberBeneficiario_Banco: TStringField
      FieldName = 'Beneficiario_Banco'
      Origin = 'Beneficiario_Banco'
      Size = 30
    end
    object PagarReceberBeneficiario_Agencia: TStringField
      FieldName = 'Beneficiario_Agencia'
      Origin = 'Beneficiario_Agencia'
      FixedChar = True
      Size = 10
    end
    object PagarReceberBeneficiario_Conta: TStringField
      FieldName = 'Beneficiario_Conta'
      Origin = 'Beneficiario_Conta'
      FixedChar = True
      Size = 10
    end
    object PagarReceberDocumento_Data: TDateField
      FieldName = 'Documento_Data'
      Origin = 'Documento_Data'
    end
    object PagarReceberDocumento_Tipo: TStringField
      FieldName = 'Documento_Tipo'
      Origin = 'Documento_Tipo'
      Size = 10
    end
    object PagarReceberDocumento_Numero: TStringField
      FieldName = 'Documento_Numero'
      Origin = 'Documento_Numero'
      Size = 15
    end
    object PagarReceberObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object PagarReceberProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object PagarReceberProcesso_Tipo: TStringField
      FieldName = 'Processo_Tipo'
      Origin = 'Processo_Tipo'
      FixedChar = True
      Size = 1
    end
    object PagarReceberOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      FixedChar = True
      Size = 2
    end
    object PagarReceberOrigem_Numero: TStringField
      FieldName = 'Origem_Numero'
      Origin = 'Origem_Numero'
      Size = 15
    end
    object PagarReceberModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'Modalidade_Pgto'
    end
    object PagarReceberSolicitacao_Pgto: TIntegerField
      FieldName = 'Solicitacao_Pgto'
      Origin = 'Solicitacao_Pgto'
    end
    object PagarReceberSolicitacao_Numerario: TIntegerField
      FieldName = 'Solicitacao_Numerario'
      Origin = 'Solicitacao_Numerario'
    end
    object PagarReceberParcela: TStringField
      FieldName = 'Parcela'
      Origin = 'Parcela'
      FixedChar = True
    end
    object PagarReceberTransferencia: TBooleanField
      FieldName = 'Transferencia'
      Origin = 'Transferencia'
    end
    object PagarReceberValor_Baixado: TBCDField
      FieldName = 'Valor_Baixado'
      Origin = 'Valor_Baixado'
      Precision = 18
    end
    object PagarReceberAdiantamento_Numero: TIntegerField
      FieldName = 'Adiantamento_Numero'
      Origin = 'Adiantamento_Numero'
    end
    object PagarReceberTransferencia_Numero: TIntegerField
      FieldName = 'Transferencia_Numero'
      Origin = 'Transferencia_Numero'
    end
    object PagarReceberTransferencia_Banco: TSmallintField
      FieldName = 'Transferencia_Banco'
      Origin = 'Transferencia_Banco'
    end
    object PagarReceberNumero_Importado: TIntegerField
      FieldName = 'Numero_Importado'
      Origin = 'Numero_Importado'
    end
    object PagarReceberNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'Nivel'
    end
    object PagarReceberDesdobramento: TSmallintField
      FieldName = 'Desdobramento'
      Origin = 'Desdobramento'
    end
    object PagarReceberProvisorio: TBooleanField
      FieldName = 'Provisorio'
      Origin = 'Provisorio'
    end
    object PagarReceberBoleto_Numero: TIntegerField
      FieldName = 'Boleto_Numero'
      Origin = 'Boleto_Numero'
    end
    object PagarReceberDesconto_Liquidacao: TBCDField
      FieldName = 'Desconto_Liquidacao'
      Origin = 'Desconto_Liquidacao'
      Precision = 18
    end
    object PagarReceberEmprestimo: TBooleanField
      FieldName = 'Emprestimo'
      Origin = 'Emprestimo'
    end
    object PagarReceberRecuperavel: TBooleanField
      FieldName = 'Recuperavel'
      Origin = 'Recuperavel'
    end
    object PagarReceberVinculo: TIntegerField
      FieldName = 'Vinculo'
      Origin = 'Vinculo'
    end
    object PagarReceberPago_Cliente: TBooleanField
      FieldName = 'Pago_Cliente'
      Origin = 'Pago_Cliente'
    end
    object PagarReceberCusto_Entrada: TBooleanField
      FieldName = 'Custo_Entrada'
      Origin = 'Custo_Entrada'
    end
    object PagarReceberCusto_Saida: TBooleanField
      FieldName = 'Custo_Saida'
      Origin = 'Custo_Saida'
    end
    object PagarReceberCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
      Origin = 'Custo_Seletivo'
    end
    object PagarReceberCusto_Outros: TBooleanField
      FieldName = 'Custo_Outros'
      Origin = 'Custo_Outros'
    end
    object PagarReceberProvisao_ContaD: TStringField
      FieldName = 'Provisao_ContaD'
      Origin = 'Provisao_ContaD'
      Size = 6
    end
    object PagarReceberProvisao_ContaC: TStringField
      FieldName = 'Provisao_ContaC'
      Origin = 'Provisao_ContaC'
      Size = 6
    end
    object PagarReceberProvisao_Historico: TSmallintField
      FieldName = 'Provisao_Historico'
      Origin = 'Provisao_Historico'
    end
    object PagarReceberLiquidacao_ContaD: TStringField
      FieldName = 'Liquidacao_ContaD'
      Origin = 'Liquidacao_ContaD'
      Size = 6
    end
    object PagarReceberLiquidacao_ContaC: TStringField
      FieldName = 'Liquidacao_ContaC'
      Origin = 'Liquidacao_ContaC'
      Size = 6
    end
    object PagarReceberLiquidacao_Historico: TSmallintField
      FieldName = 'Liquidacao_Historico'
      Origin = 'Liquidacao_Historico'
    end
    object PagarReceberEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object PagarReceberCodigo_Barras: TStringField
      FieldName = 'Codigo_Barras'
      Origin = 'Codigo_Barras'
      Size = 50
    end
    object PagarReceberChave_PIX: TStringField
      FieldName = 'Chave_PIX'
      Origin = 'Chave_PIX'
      Size = 60
    end
    object PagarReceberLote: TIntegerField
      FieldName = 'Lote'
      Origin = 'Lote'
    end
    object PagarReceberPermuta_Recebimento: TBooleanField
      FieldName = 'Permuta_Recebimento'
      Origin = 'Permuta_Recebimento'
    end
    object PagarReceberValor_ME: TBCDField
      FieldName = 'Valor_ME'
      Origin = 'Valor_ME'
      Precision = 18
    end
    object PagarReceberFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Filial'
    end
    object PagarReceberNumero_FormaTipo: TStringField
      FieldName = 'Numero_FormaTipo'
      Origin = 'Numero_FormaTipo'
      Size = 15
    end
    object PagarReceberTaxa_ME: TBCDField
      FieldName = 'Taxa_ME'
      Origin = 'Taxa_ME'
      Precision = 18
    end
    object PagarReceberForma_Tipo: TStringField
      FieldName = 'Forma_Tipo'
      Origin = 'Forma_Tipo'
      Size = 25
    end
    object PagarReceberClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      Size = 15
    end
    object PagarReceberValor_Pedido: TBCDField
      FieldName = 'Valor_Pedido'
      Origin = 'Valor_Pedido'
      Precision = 18
    end
  end
  object dsPagarReceber: TDataSource
    DataSet = PagarReceber
    Left = 757
    Top = 547
  end
  object PagarReceberBaixas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PagarReceberBaixas')
    Left = 958
    Top = 97
    object PagarReceberBaixasRegistro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object PagarReceberBaixasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PagarReceberBaixasTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
    end
    object PagarReceberBaixasData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object PagarReceberBaixasTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object PagarReceberBaixasBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object PagarReceberBaixasValor: TBCDField
      FieldName = 'Valor'
      Origin = 'Valor'
      Precision = 18
    end
    object PagarReceberBaixasForma_Pgto: TSmallintField
      FieldName = 'Forma_Pgto'
      Origin = 'Forma_Pgto'
    end
    object PagarReceberBaixasForma_PgtoDoc: TStringField
      FieldName = 'Forma_PgtoDoc'
      Origin = 'Forma_PgtoDoc'
      Size = 15
    end
    object PagarReceberBaixasObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object PagarReceberBaixasBanco_Conta: TStringField
      FieldName = 'Banco_Conta'
      Origin = 'Banco_Conta'
      Size = 15
    end
  end
  object dsPagarReceberBaixas: TDataSource
    DataSet = PagarReceberBaixas
    Left = 958
    Top = 146
  end
  object CentroCusto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CentroCusto')
    Left = 845
    Top = 194
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 845
    Top = 243
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo, Nome_Financeiro FROM PlanoContas')
    Left = 845
    Top = 299
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 845
    Top = 347
  end
  object Recursos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Recursos')
    Left = 845
    Top = 397
  end
  object dsRecursos: TDataSource
    DataSet = Recursos
    Left = 845
    Top = 447
  end
  object CondicaoCambial: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CondicaoCambial')
    Left = 845
    Top = 497
  end
  object dsCondicaoCambial: TDataSource
    DataSet = CondicaoCambial
    Left = 845
    Top = 547
  end
  object EmprestimosDuplicatas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM EmprestimosDuplicatas')
    Left = 958
    Top = 194
  end
  object dsEmprestimosDuplicatas: TDataSource
    DataSet = EmprestimosDuplicatas
    Left = 958
    Top = 243
  end
  object ContratosItens: TFDQuery
    MasterSource = dsContratos
    MasterFields = 'Empresa;Numero'
    DetailFields = 'Empresa;Contrato'
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      'from ContratoCambioItens'
      'where Empresa = :Empresa '
      'and Contrato = :Numero')
    Left = 845
    Top = 97
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 14
        Value = '07922103000158'
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = 'TA740489'
      end>
    object ContratosItensContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'Contrato'
      Size = 15
    end
    object ContratosItensData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
      Required = True
    end
    object ContratosItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object ContratosItensFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'Fatura'
      Size = 40
    end
    object ContratosItensFinanceiro_Lancamento: TIntegerField
      FieldName = 'Financeiro_Lancamento'
      Origin = 'Financeiro_Lancamento'
    end
    object ContratosItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object ContratosItensValor_ME: TBCDField
      FieldName = 'Valor_ME'
      Origin = 'Valor_ME'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
      Precision = 18
    end
    object ContratosItensValor_Fatura: TBCDField
      FieldName = 'Valor_Fatura'
      Origin = 'Valor_Fatura'
      DisplayFormat = ',##0.00'
      Precision = 18
    end
    object ContratosItensTaxa_Cambial: TBCDField
      FieldName = 'Taxa_Cambial'
      Origin = 'Taxa_Cambial'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
      Precision = 18
    end
    object ContratosItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object ContratosItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
  end
  object dsContratosItens: TDataSource
    DataSet = ContratosItens
    Left = 845
    Top = 146
  end
  object Emprestimos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Emprestimos')
    Left = 958
    Top = 299
  end
  object dsEmprestimos: TDataSource
    DataSet = Emprestimos
    Left = 958
    Top = 347
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Razao_Social'
      
        '      ,Filial = iif( isnull(Numero_Filial, 0) = 0, '#39'MATRIZ'#39', '#39'FI' +
        'LIAL '#39'+cast(Numero_Filial as char(2)) )'
      '      ,Estado'
      'from Empresas'
      'order by Razao_Social')
    Left = 958
    Top = 397
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 958
    Top = 447
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Razao_Social'
      
        '      ,Filial = iif( isnull(Numero_Filial, 0) = 0, '#39'MATRIZ'#39', '#39'FI' +
        'LIAL '#39'+cast(Numero_Filial as char(2)) )'
      '      ,Estado'
      'from Empresas'
      'order by Razao_Social')
    Left = 958
    Top = 497
  end
  object Contratos: TFDQuery
    AfterScroll = ContratosAfterScroll
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ContratoCambio')
    Left = 758
    Top = 97
    object ContratosRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object ContratosNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Size = 15
    end
    object ContratosData: TSQLTimeStampField
      FieldName = 'Data'
      Origin = 'Data'
      Required = True
    end
    object ContratosBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object ContratosConta_Exportador: TStringField
      FieldName = 'Conta_Exportador'
      Origin = 'Conta_Exportador'
      Size = 10
    end
    object ContratosExportador: TIntegerField
      FieldName = 'Exportador'
      Origin = 'Exportador'
    end
    object ContratosMoeda: TIntegerField
      FieldName = 'Moeda'
      Origin = 'Moeda'
    end
    object ContratosTaxa_Cambial: TBCDField
      FieldName = 'Taxa_Cambial'
      Origin = 'Taxa_Cambial'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
      Precision = 18
    end
    object ContratosFechado: TBooleanField
      FieldName = 'Fechado'
      Origin = 'Fechado'
    end
    object ContratosData_Vencimento: TSQLTimeStampField
      FieldName = 'Data_Vencimento'
      Origin = 'Data_Vencimento'
    end
    object ContratosClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      Size = 15
    end
    object ContratosFinanceiro_Lancamento: TIntegerField
      FieldName = 'Financeiro_Lancamento'
      Origin = 'Financeiro_Lancamento'
    end
    object ContratosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      Size = 15
    end
    object ContratosRecursos: TSmallintField
      FieldName = 'Recursos'
      Origin = 'Recursos'
    end
    object ContratosGerar_Baixa: TBooleanField
      FieldName = 'Gerar_Baixa'
      Origin = 'Gerar_Baixa'
    end
    object ContratosCondicao_Cambio: TSmallintField
      FieldName = 'Condicao_Cambio'
      Origin = 'Condicao_Cambio'
    end
    object ContratosBeneficiario: TIntegerField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
    end
    object ContratosTotal_ME: TBCDField
      FieldName = 'Total_ME'
      Origin = 'Total_ME'
      DisplayFormat = ',##0.00'
      Precision = 18
    end
    object ContratosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
    end
    object ContratosFINIMP: TBooleanField
      FieldName = 'FINIMP'
      Origin = 'FINIMP'
    end
    object ContratosPrevisao: TBooleanField
      FieldName = 'Previsao'
      Origin = 'Previsao'
    end
    object ContratosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object ContratosPago_Cliente: TBooleanField
      FieldName = 'Pago_Cliente'
      Origin = 'Pago_Cliente'
    end
  end
  object Beneficiario: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Razao_Social'
      
        '      ,Filial = iif( isnull(Numero_Filial, 0) = 0, '#39'MATRIZ'#39', '#39'FI' +
        'LIAL '#39'+cast(Numero_Filial as char(2)) )'
      '      ,Estado'
      'from Empresas'
      'order by Razao_Social')
    Left = 1055
    Top = 97
  end
  object dsBeneficiario: TDataSource
    DataSet = Beneficiario
    Left = 1055
    Top = 146
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Processo'
      '      ,DUIMP'
      'from ProcessosImp')
    Left = 1055
    Top = 194
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 1055
    Top = 243
  end
  object Embarques: TFDQuery
    MasterSource = dsProcessos
    MasterFields = 'Processo'
    DetailFields = 'Processo'
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      '      ,Processo'
      'from Embarques'
      'where Status <> '#39'ENCERRADO'#39
      'and Processo = :Processo')
    Left = 1055
    Top = 299
    ParamData = <
      item
        Name = 'PROCESSO'
        ParamType = ptInput
        Value = Null
      end>
    object EmbarquesCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Codigo'
    end
    object EmbarquesNavio: TSmallintField
      FieldName = 'Navio'
      Origin = 'Navio'
    end
    object EmbarquesNavio_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Navio_Nome'
      LookupDataSet = Navios
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Navio'
      Size = 50
      Lookup = True
    end
    object EmbarquesProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 1055
    Top = 348
  end
  object Navios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from Navios')
    Left = 1059
    Top = 400
    object NaviosCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'Codigo'
    end
    object NaviosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 60
    end
  end
  object dsNavios: TDataSource
    DataSet = Navios
    Left = 1059
    Top = 449
  end
  object Invoice: TFDQuery
    IndexFieldNames = 'Processo'
    MasterSource = dsProcessos
    MasterFields = 'Processo'
    DetailFields = 'Processo'
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Numero, Processo, Total_FaturaME'
      'from Invoice')
    Left = 1059
    Top = 499
  end
  object dsInvoice: TDataSource
    DataSet = Invoice
    Left = 1059
    Top = 548
  end
end
