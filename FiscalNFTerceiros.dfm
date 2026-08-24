object fFiscalNFTerceiros: TfFiscalNFTerceiros
  Left = 0
  Top = 0
  Width = 1350
  Height = 795
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object Pasta: TUniPageControl
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 1118
    Height = 754
    Hint = ''
    ActivePage = TabItem
    Align = alClient
    TabOrder = 0
    object TabLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1110
        Height = 699
        Hint = ''
        CreateOrder = 1
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsNotas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados...'
        LoadMask.Opacity = 0.699999988079071000
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        Columns = <
          item
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Data_Emissao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Data_ES'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Chave'
            Title.Alignment = taCenter
            Title.Caption = 'Chave'
            Title.Font.Style = [fsBold]
            Width = 332
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
            DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#'
          end
          item
            FieldName = 'Operacao_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Opera'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 316
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 30
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Fornecedor_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Title.Font.Style = [fsBold]
            Width = 417
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Valor_TotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 157
            Font.Name = 'Calibri'
            ReadOnly = True
            DisplayFormat = ',##0.00'
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1110
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
          Left = 608
          Top = 0
          Width = 385
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
          Left = 993
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
        object cEmpresa: TUniDBLookupComboBox
          Left = 0
          Top = 0
          Width = 608
          Height = 27
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'CNPJ;Razao_Social;Filial'
          ListSource = dsEmpresas
          KeyField = 'CNPJ'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Align = alLeft
          TabOrder = 3
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Filial'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
        end
      end
    end
    object TabCapa: TUniTabSheet
      Hint = ''
      Caption = 'Capa da Nota Fiscal'
      object Panel2: TUniPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 726
        Hint = ''
        Align = alClient
        TabOrder = 0
        Caption = ''
        DesignSize = (
          1110
          726)
        object Ficha: TUniPanel
          Left = 116
          Top = 13
          Width = 821
          Height = 641
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 1
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
          object cNota: TUniDBEdit
            Tag = 1
            Left = 10
            Top = 10
            Width = 300
            Height = 25
            Hint = 'Informe o n'#250'mero da Nota Fiscal'
            ShowHint = True
            DataField = 'Nota'
            DataSource = dsNotas
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 0
            UseFieldAlignment = False
            FieldLabel = 'Documento N'#186
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
            OnChange = cNotaChange
          end
          object cDataEmissao: TUniDBDateTimePicker
            Tag = 1
            Left = 10
            Top = 64
            Width = 300
            Height = 25
            Hint = 'Informe a "Data de Emiss'#227'o" da Nota fiscal'
            ShowHint = True
            DataField = 'Data_Emissao'
            DataSource = dsNotas
            DateTime = 46176.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Data Emiss'#227'o'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cDataEntrada: TUniDBDateTimePicker
            Tag = 1
            Left = 10
            Top = 91
            Width = 300
            Height = 25
            Hint = 'Informe a "Data de Entrada" da Nota fiscal'
            ShowHint = True
            DataField = 'Data_ES'
            DataSource = dsNotas
            DateTime = 46176.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Data da Entrada'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cSerie: TUniDBEdit
            Left = 10
            Top = 280
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Serie'
            DataSource = dsNotas
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 12
            FieldLabel = 'S'#233'rie'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cSubSerie: TUniDBEdit
            Left = 10
            Top = 307
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'SubSerie'
            DataSource = dsNotas
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 13
            FieldLabel = 'Sub-S'#233'rie'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cObservacao: TUniDBMemo
            Left = 10
            Top = 388
            Width = 800
            Height = 119
            Hint = ''
            ShowHint = True
            DataField = 'Inf_Compl'
            DataSource = dsNotas
            BorderStyle = ubsInset
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 16
            FieldLabel = 'Informa'#231#245'es adicionais (Fisco)'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cChave: TUniDBEdit
            Left = 10
            Top = 37
            Width = 504
            Height = 25
            Hint = 'Para modelo Eletr'#244'nico a "Chave NF-e" deve ser informada'
            ShowHint = True
            DataField = 'Chave'
            DataSource = dsNotas
            CharCase = ecUpperCase
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 3
            InputMask.Mask = '99.99.99.99.99.999.999/9999-99-999.999.999-999-999.999.999-9'
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            FieldLabel = 'Chave NF-e'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cModelo: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 253
            Width = 800
            Height = 25
            Hint = 'Informe o "Modelo" da Nota Fiscal'
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModelos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Modelo'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Modelo'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cOperacao: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 145
            Width = 800
            Height = 25
            Hint = 'Informe o "Tipo de Opera'#231#227'o"'
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsOperacao
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Operacao'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Tipo de Opera'#231#227'o'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnCloseUp = cOperacaoCloseUp
            OnExit = cOperacaoCloseUp
          end
          object cFornecedor: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 172
            Width = 800
            Height = 25
            Hint = 'Informe o "Fornecedor"'
            ShowHint = True
            ListField = 'CNPJ;Nome'
            ListSource = dsFornecedores
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Destinatario'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Fornecedor'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object DBCheckBox1: TUniDBCheckBox
            Left = 340
            Top = 9
            Width = 137
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Desdobramento'
            DataSource = dsNotas
            Caption = 'NF de desdobramento'
            TabOrder = 1
            ParentColor = False
            Color = clBtnFace
          end
          object cTransportador: TUniDBLookupComboBox
            Left = 10
            Top = 199
            Width = 800
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Nome'
            ListSource = dsTransportador
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Transportador_Codigo'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Transportador'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cBeneficio: TUniDBLookupComboBox
            Left = 10
            Top = 118
            Width = 800
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsBeneficios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Beneficio_Fiscal'
            DataSource = dsNotas
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Benef'#237'cio Fiscal'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object DBCheckBox2: TUniDBCheckBox
            Left = 525
            Top = 9
            Width = 126
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Complementar'
            DataSource = dsNotas
            Caption = 'NF Complementar'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
          end
          object cArmazem: TUniDBLookupComboBox
            Left = 10
            Top = 226
            Width = 800
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Nome'
            ListSource = dsArmazem
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Armazem'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Armaz'#233'm'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cModalFrete: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 334
            Width = 800
            Height = 25
            Hint = 'Informe a "Modalidade de Frete"'
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalFrete
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Modalidade_Frete'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Modalidade do Frete'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cNaturezaFrete: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 361
            Width = 800
            Height = 25
            Hint = 'Informe a "Natureza do Frete"'
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsNaturezaFrete
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Natureza_Frete'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'Natureza do Frete'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cTipoPgto: TUniDBRadioGroup
            Left = 680
            Top = 7
            Width = 130
            Height = 101
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Pagamento'
            DataSource = dsNotas
            Caption = 'Tipo de Pagamento'
            TabOrder = 18
            Items.Strings = (
              'A Vista'
              'A Prazo'
              'Outros')
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object UniDBMemo1: TUniDBMemo
            Left = 10
            Top = 510
            Width = 800
            Height = 119
            Hint = ''
            ShowHint = True
            DataField = 'Inf_Compl2'
            DataSource = dsNotas
            BorderStyle = ubsInset
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 19
            FieldLabel = 'Informa'#231#245'es complementares'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object TabItem: TUniTabSheet
      Hint = ''
      Caption = 'Itens'
      object GradeItens: TUniDBGrid
        Left = 65
        Top = 0
        Width = 1045
        Height = 726
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
        DataSource = dsItens
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
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        Columns = <
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
            Width = 67
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
            Width = 365
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
            Width = 74
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
            Width = 32
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Style = [fsBold]
            Width = 81
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
            Width = 97
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 129
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Estoque_Minimo'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque Min'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object BarraItens: TUniPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 726
        Hint = ''
        Margins.Left = 1
        Margins.Bottom = 6
        Align = alLeft
        TabOrder = 0
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
          Top = 262
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
      end
    end
    object TabSerial: TUniTabSheet
      Hint = ''
      Caption = 'Seriais/Chassis'
      object GradeSerial: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1110
        Height = 726
        Hint = ''
        TitleFont.Name = 'MS Sans Serif'
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Produto_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 1'
            Title.Font.Style = [fsBold]
            Width = 180
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Numero2'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 2'
            Title.Font.Style = [fsBold]
            Width = 180
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Numero3'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 3'
            Title.Font.Style = [fsBold]
            Width = 180
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Ano_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 71
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Ano_Modelo'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo'
            Title.Font.Style = [fsBold]
            Width = 71
            Font.Name = 'Calibri'
          end>
      end
    end
    object TabLote: TUniTabSheet
      Hint = ''
      Caption = 'Lotes'
      object GradeLote: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1104
        Height = 720
        Hint = ''
        TitleFont.Name = 'MS Sans Serif'
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Produto_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 103
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 230
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Lote'
            Title.Alignment = taCenter
            Title.Caption = 'Lote'
            Title.Font.Style = [fsBold]
            Width = 180
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Quantidade_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Font.Style = [fsBold]
            Width = 89
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Data_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Data_Validade'
            Title.Caption = 'Validade'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end>
      end
    end
    object TabManif: TUniTabSheet
      Hint = ''
      Caption = 'Manifesta'#231#227'o do Destinat'#225'rio'
      object GradeManif: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1104
        Height = 168
        Hint = ''
        TitleFont.Name = 'MS Sans Serif'
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alTop
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Data_Emissao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'NFe_cNF'
            Title.Alignment = taCenter
            Title.Caption = 'Chave NF-e'
            Title.Font.Style = [fsBold]
            Width = 325
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Fornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Title.Font.Style = [fsBold]
            Width = 287
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object bSelTodos: TUniButton
        Left = 52
        Top = 275
        Width = 106
        Height = 25
        Cursor = crHandPoint
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Selecionar Todos'
        TabOrder = 1
      end
      object bSelNehum: TUniButton
        Left = 164
        Top = 275
        Width = 114
        Height = 25
        Cursor = crHandPoint
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Selecionar Nenhum'
        TabOrder = 2
      end
      object bManifestar: TUniButton
        Left = 742
        Top = 275
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Hint = '   Mostrar os itens da nota fiscal.'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Manifestar'
        TabOrder = 3
        OnClick = bManifestarClick
      end
      object Panel4: TUniPanel
        Left = 117
        Top = 333
        Width = 691
        Height = 161
        Hint = ''
        TabOrder = 4
        Caption = ''
        object cJustificativa: TUniEdit
          Left = 44
          Top = 112
          Width = 576
          Height = 25
          Hint = ''
          Text = 'cJustificativa'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object cMotivo: TUniComboBox
          Left = 44
          Top = 85
          Width = 262
          Height = 25
          Hint = ''
          Text = ''
          Items.Strings = (
            'Confirma'#231#227'o da Opera'#231#227'o'
            'Ci'#234'ncia da Opera'#231#227'o'
            'Desconhecimento da Opera'#231#227'o'
            'Registro da Opera'#231#227'o n'#227'o Realizada')
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 2
          IconItems = <>
          OnChange = cMotivoChange
        end
      end
      object cSit: TUniRadioGroup
        Left = 491
        Top = 202
        Width = 254
        Height = 67
        Hint = ''
        Items.Strings = (
          'N'#227'o Manifestadas'
          'Manifestadas')
        Caption = 'Situa'#231#227'o'
        TabOrder = 5
        ParentFont = False
        Font.Name = 'MS Sans Serif'
        Columns = 2
        OnClick = cSitClick
      end
      object cMensagens: TUniMemo
        AlignWithMargins = True
        Left = 3
        Top = 594
        Width = 1104
        Height = 129
        Hint = ''
        ParentFont = False
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Align = alBottom
        Color = 16768667
        TabOrder = 6
      end
      object bManiFora: TUniButton
        Left = 280
        Top = 213
        Width = 132
        Height = 25
        Cursor = crHandPoint
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Manifesto Fora da Data'
        TabOrder = 7
        OnClick = bManiForaClick
      end
      object Button1: TUniButton
        Left = 751
        Top = 196
        Width = 75
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Button1'
        TabOrder = 8
        OnClick = Button1Click
      end
    end
    object TabXML: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Importar XML'
      DesignSize = (
        1110
        726)
      object UniPanel1: TUniPanel
        Left = 35
        Top = 23
        Width = 952
        Height = 667
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
        object UniPanel2: TUniPanel
          Left = 0
          Top = 632
          Width = 952
          Height = 35
          Hint = ''
          Margins.Top = 0
          ShowHint = True
          ParentShowHint = False
          Align = alBottom
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsSolid
          Caption = ''
          Color = 5526569
          object bArquivos: TUniFileUploadButton
            Left = 780
            Top = 0
            Width = 131
            Height = 35
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Align = alRight
            Caption = 'Carregar Arquivos'
            Filter = '*.xml'
            Images = UniMainModule.imgBotoes
            ImageIndex = 9
            Messages.Uploading = 'Uploading...'
            Messages.PleaseWait = 'Please Wait'
            Messages.UploadError = 'Upload Error'
            Messages.UploadTimeout = 'Timeout occurred...'
            Messages.MaxSizeError = 'File is bigger than maximum allowed size'
            Messages.MaxFilesError = 'You can upload maximum %d files.'
            MultipleFiles = True
            ShowUploadingMsg = False
            OnMultiCompleted = bArquivosMultiCompleted
          end
          object bXMLSair: TUniSpeedButton
            Left = 911
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Fecha a tela de cadastro atual.'
            ShowHint = True
            Caption = ''
            Align = alRight
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 7
            TabOrder = 2
            OnClick = bXMLSairClick
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 952
          Height = 487
          Hint = ''
          ShowHint = True
          ParentColor = False
          Align = alTop
          TabOrder = 2
          object cDataEnt: TUniDateTimePicker
            Left = 10
            Top = 10
            Width = 262
            Height = 25
            Hint = ''
            ShowHint = True
            DateTime = 46204.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 1
            FieldLabel = 'Data de Entrada'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cOper: TUniDBLookupComboBox
            Left = 10
            Top = 37
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsOperacao
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            ParentFont = False
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Opera'#231#227'o Fiscal'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cRamo: TUniDBLookupComboBox
            Left = 10
            Top = 64
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsRamo
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Ramo Atividade (Forn)'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cTipoProd: TUniDBLookupComboBox
            Left = 10
            Top = 199
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsTipoProd
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Tipo Mercadoria'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cCCusto: TUniDBLookupComboBox
            Left = 10
            Top = 91
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Centro de Custos'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cProcImp: TUniDBLookupComboBox
            Left = 10
            Top = 118
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Declaracao;Processo'
            ListSource = dsProcessoImp
            KeyField = 'Processo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Processo (Importa'#231#227'o)'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cProcExp: TUniDBLookupComboBox
            Left = 10
            Top = 145
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Declaracao;Processo'
            ListSource = dsProcessoExp
            KeyField = 'Processo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Processo (Exporta'#231#227'o)'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cEmb: TUniDBLookupComboBox
            Left = 10
            Top = 172
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Navio_Nome;Processo'
            ListSource = dsEmbarques
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Embarque'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cOrig: TUniDBLookupComboBox
            Left = 10
            Top = 226
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsOrigem
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Origem Mercadoria'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cClassMerc: TUniDBLookupComboBox
            Left = 10
            Top = 253
            Width = 668
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsClassProd
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Classifica'#231#227'o Mercadoria'
            FieldLabelWidth = 130
            FieldLabelSeparator = ' '
          end
          object cEscala: TUniCheckBox
            Left = 17
            Top = 301
            Width = 234
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Mercadoria Produzido em Escala Relevante'
            TabOrder = 11
          end
          object UniGroupBox1: TUniGroupBox
            Left = 694
            Top = 321
            Width = 238
            Height = 132
            Hint = ''
            ShowHint = True
            Caption = 'Imobilizado'
            TabOrder = 12
            object cImoAliq: TUniFormattedNumberEdit
              Left = 5
              Top = 43
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              FieldLabel = 'Al'#237'quota'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cImoBC: TUniFormattedNumberEdit
              Left = 5
              Top = 70
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              FieldLabel = 'Base de C'#225'lculo'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cImoValor: TUniFormattedNumberEdit
              Left = 5
              Top = 97
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 3
              FieldLabel = 'Valor'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cUso: TUniComboBox
              Left = 5
              Top = 16
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              Style = csDropDownList
              Text = ''
              Items.Strings = (
                'Bem'
                'Componente')
              TabOrder = 4
              FieldLabel = 'Uso'
              FieldLabelSeparator = ' '
              IconItems = <>
            end
          end
          object cSubst: TUniCheckBox
            Left = 17
            Top = 328
            Width = 216
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Substituir Notas Fiscais ja cadastradas.'
            TabOrder = 13
          end
          object cPreco: TUniGroupBox
            Left = 694
            Top = 145
            Width = 238
            Height = 160
            Hint = ''
            ShowHint = True
            Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
            TabOrder = 14
            object cLucro: TUniFormattedNumberEdit
              Left = 5
              Top = 16
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              FieldLabel = 'Lucro'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cComissao: TUniFormattedNumberEdit
              Left = 5
              Top = 43
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              FieldLabel = 'Comiss'#227'o'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cCustoFin: TUniFormattedNumberEdit
              Left = 5
              Top = 70
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 3
              FieldLabel = 'Custo Financeiro'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cCustoFixo: TUniFormattedNumberEdit
              Left = 5
              Top = 97
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 4
              FieldLabel = 'Custo Financeiro'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cMargem: TUniFormattedNumberEdit
              Left = 5
              Top = 124
              Width = 220
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 5
              FieldLabel = 'Custo Financeiro'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object gPerfil: TUniGroupBox
            Left = 694
            Top = 12
            Width = 238
            Height = 116
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Caption = 'Caracter'#237'sticas do Emitente'
            TabOrder = 15
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}'#13#10)
            object cIsento: TUniCheckBox
              Left = 13
              Top = 16
              Width = 97
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              Caption = 'Isento de IE'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              TabOrder = 1
              FieldLabelWidth = 0
            end
            object cZona_Franca: TUniCheckBox
              Left = 13
              Top = 38
              Width = 109
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              Caption = 'Zona_Franca'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              TabOrder = 2
              FieldLabelWidth = 120
            end
            object cInscricaoST: TUniCheckBox
              Left = 13
              Top = 59
              Width = 159
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              Caption = 'Possui Inscri'#231#227'o de ST'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              TabOrder = 3
              FieldLabelWidth = 120
            end
            object cMicro: TUniCheckBox
              Left = 13
              Top = 80
              Width = 118
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              Caption = 'Micro Empresa'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              TabOrder = 4
              FieldLabelWidth = 120
            end
          end
        end
        object UniContainerPanel2: TUniContainerPanel
          Left = 0
          Top = 487
          Width = 952
          Height = 145
          Hint = ''
          ShowHint = True
          ParentColor = False
          Align = alClient
          TabOrder = 3
          object cLog: TUniStringGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 946
            Height = 139
            Hint = ''
            ShowHint = True
            HeaderTitle = 'LOG'
            HeaderTitleAlign = taCenter
            FixedCols = 0
            FixedRows = 0
            RowCount = 0
            ColCount = 2
            Options = [goVertLine, goHorzLine, goEditing]
            Columns = <>
            BorderStyle = ubsInset
            ForceFit = True
            Align = alClient
            TabOrder = 1
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1350
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
      Width = 157
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 157
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
      Left = 198
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
      Left = 239
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
      Left = 321
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
      Left = 280
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
      Left = 472
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
    object bXML: TUniButton
      Left = 362
      Top = 0
      Width = 110
      Height = 35
      Hint = ''
      Caption = 'Importar NF-e'
      Align = alLeft
      TabOrder = 8
      Images = UniMainModule.imgBotoes
      ImageIndex = 9
      OnClick = bXMLClick
    end
  end
  object UniPanel3: TUniPanel
    AlignWithMargins = True
    Left = 1127
    Top = 38
    Width = 220
    Height = 754
    Hint = ''
    Align = alRight
    ParentFont = False
    Font.Name = 'MS Sans Serif'
    TabOrder = 2
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
        ' = '#39'Painel'#39';'#13#10'}')
    BorderStyle = ubsInset
    ShowCaption = False
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'TOTAIS DA NOTA FISCAL'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataField = 'Valor_TotalNota'
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      TabOrder = 12
      ReadOnly = True
      ClientEvents.Enabled = False
      FieldLabel = 'Total da Nota'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataField = 'Valor_BCPIS'
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      DataSource = dsNotas
      Align = alTop
      Alignment = taRightJustify
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
  object Transportador: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM Fornecedores ')
    Left = 255
    Top = 222
    object TransportadorCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.Codigo'
    end
    object TransportadorNome: TStringField
      FieldName = 'Nome'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.Nome'
      Size = 60
    end
    object TransportadorCNPJ: TStringField
      DisplayWidth = 7
      FieldName = 'CNPJ'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
  end
  object dsTransportador: TDataSource
    DataSet = Transportador
    Left = 255
    Top = 272
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 508
    Top = 126
  end
  object Armazem: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome, CNPJ from Fornecedores')
    Left = 183
    Top = 222
    object ArmazemCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object ArmazemNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object ArmazemCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object dsArmazem: TDataSource
    DataSet = Armazem
    Left = 183
    Top = 272
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CFOP')
    Left = 102
    Top = 222
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 102
    Top = 272
  end
  object Notas: TFDQuery
    BeforePost = NotasBeforePost
    BeforeDelete = NotasBeforeDelete
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NotasFiscais where Emissao = '#39'T'#39)
    Left = 102
    Top = 123
    object NotasNota_id: TIntegerField
      FieldName = 'Nota_id'
      Origin = 'Nota_id'
    end
    object NotasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object NotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
    end
    object NotasChave: TStringField
      FieldName = 'Chave'
      Origin = 'Chave'
      Size = 44
    end
    object NotasData_Emissao: TDateField
      FieldName = 'Data_Emissao'
      Origin = 'Data_Emissao'
    end
    object NotasHora_Emissao: TTimeField
      FieldName = 'Hora_Emissao'
      Origin = 'Hora_Emissao'
    end
    object NotasES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object NotasData_ES: TDateField
      FieldName = 'Data_ES'
      Origin = 'Data_ES'
    end
    object NotasHora_ES: TTimeField
      FieldName = 'Hora_ES'
      Origin = 'Hora_ES'
    end
    object NotasOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object NotasEmissao: TStringField
      FieldName = 'Emissao'
      Origin = 'Emissao'
      FixedChar = True
      Size = 1
    end
    object NotasPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object NotasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'Serie'
      FixedChar = True
      Size = 2
    end
    object NotasModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'Modelo'
      FixedChar = True
      Size = 2
    end
    object NotasLucro: TFMTBCDField
      FieldName = 'Lucro'
      Origin = 'Lucro'
      Precision = 18
      Size = 6
    end
    object NotasLucro_Valor: TFMTBCDField
      FieldName = 'Lucro_Valor'
      Origin = 'Lucro_Valor'
      Precision = 18
      Size = 6
    end
    object NotasDeclaracao_Numero: TStringField
      FieldName = 'Declaracao_Numero'
      Origin = 'Declaracao_Numero'
      Size = 15
    end
    object NotasDeclaracao_Data: TDateField
      FieldName = 'Declaracao_Data'
      Origin = 'Declaracao_Data'
    end
    object NotasInscricao_Substituto: TStringField
      FieldName = 'Inscricao_Substituto'
      Origin = 'Inscricao_Substituto'
      Size = 15
    end
    object NotasInf_Compl: TMemoField
      FieldName = 'Inf_Compl'
      Origin = 'Inf_Compl'
      BlobType = ftMemo
    end
    object NotasInf_Compl2: TMemoField
      FieldName = 'Inf_Compl2'
      Origin = 'Inf_Compl2'
      BlobType = ftMemo
    end
    object NotasTransportador_Codigo: TIntegerField
      FieldName = 'Transportador_Codigo'
      Origin = 'Transportador_Codigo'
    end
    object NotasModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'Modalidade_Frete'
    end
    object NotasVolume_Quantidade: TFMTBCDField
      FieldName = 'Volume_Quantidade'
      Origin = 'Volume_Quantidade'
      Precision = 18
      Size = 6
    end
    object NotasVolume_Especie: TStringField
      FieldName = 'Volume_Especie'
      Origin = 'Volume_Especie'
    end
    object NotasVolume_Marca: TStringField
      FieldName = 'Volume_Marca'
      Origin = 'Volume_Marca'
    end
    object NotasVolume_Numero: TStringField
      FieldName = 'Volume_Numero'
      Origin = 'Volume_Numero'
    end
    object NotasVolume_PesoLiquido: TFMTBCDField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'Volume_PesoLiquido'
      Precision = 18
      Size = 6
    end
    object NotasVolume_PesoBruto: TFMTBCDField
      FieldName = 'Volume_PesoBruto'
      Origin = 'Volume_PesoBruto'
      Precision = 18
      Size = 6
    end
    object NotasModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'Modalidade_Pgto'
    end
    object NotasDesconto_Percentual: TFMTBCDField
      FieldName = 'Desconto_Percentual'
      Origin = 'Desconto_Percentual'
      Precision = 18
      Size = 6
    end
    object NotasDesconto_Tipo: TStringField
      FieldName = 'Desconto_Tipo'
      Origin = 'Desconto_Tipo'
      Size = 30
    end
    object NotasCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'Cancelada'
    end
    object NotasDenegada: TBooleanField
      FieldName = 'Denegada'
      Origin = 'Denegada'
    end
    object NotasComplementar: TBooleanField
      FieldName = 'Complementar'
      Origin = 'Complementar'
    end
    object NotasDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object NotasAjuste: TBooleanField
      FieldName = 'Ajuste'
      Origin = 'Ajuste'
    end
    object NotasMotivo_Cancelamento: TStringField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'Motivo_Cancelamento'
      Size = 60
    end
    object NotasNota_Ref: TSmallintField
      FieldName = 'Nota_Ref'
      Origin = 'Nota_Ref'
    end
    object NotasData_Ref: TSQLTimeStampField
      FieldName = 'Data_Ref'
      Origin = 'Data_Ref'
    end
    object NotasChave_Ref: TStringField
      FieldName = 'Chave_Ref'
      Origin = 'Chave_Ref'
      Size = 44
    end
    object NotasNFe_Lote: TFMTBCDField
      FieldName = 'NFe_Lote'
      Origin = 'NFe_Lote'
      Precision = 18
      Size = 6
    end
    object NotasNFe_Recibo: TStringField
      FieldName = 'NFe_Recibo'
      Origin = 'NFe_Recibo'
      Size = 15
    end
    object NotasNfe_DataRecibo: TSQLTimeStampField
      FieldName = 'Nfe_DataRecibo'
      Origin = 'Nfe_DataRecibo'
    end
    object NotasNFe_Protocolo: TStringField
      FieldName = 'NFe_Protocolo'
      Origin = 'NFe_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasNFe_DataProtocolo: TSQLTimeStampField
      FieldName = 'NFe_DataProtocolo'
      Origin = 'NFe_DataProtocolo'
    end
    object NotasDPEC: TBooleanField
      FieldName = 'DPEC'
      Origin = 'DPEC'
    end
    object NotasDPEC_Protocolo: TStringField
      FieldName = 'DPEC_Protocolo'
      Origin = 'DPEC_Protocolo'
      Size = 15
    end
    object NotasDPEC_DataProtocolo: TSQLTimeStampField
      FieldName = 'DPEC_DataProtocolo'
      Origin = 'DPEC_DataProtocolo'
    end
    object NotasOperacao_Veiculo: TStringField
      FieldName = 'Operacao_Veiculo'
      Origin = 'Operacao_Veiculo'
      FixedChar = True
      Size = 1
    end
    object NotasTaxa_Cambio: TFMTBCDField
      FieldName = 'Taxa_Cambio'
      Origin = 'Taxa_Cambio'
      Precision = 18
      Size = 6
    end
    object NotasBeneficio_Fiscal: TSmallintField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
    end
    object NotasRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'Representante'
    end
    object NotasRepresentante_Comissao: TFMTBCDField
      FieldName = 'Representante_Comissao'
      Origin = 'Representante_Comissao'
      Precision = 18
      Size = 6
    end
    object NotasImportacao: TBooleanField
      FieldName = 'Importacao'
      Origin = 'Importacao'
    end
    object NotasData_Cancelamento: TDateField
      FieldName = 'Data_Cancelamento'
      Origin = 'Data_Cancelamento'
    end
    object NotasProtocolo_Cancelamento: TStringField
      FieldName = 'Protocolo_Cancelamento'
      Origin = 'Protocolo_Cancelamento'
      Size = 15
    end
    object NotasCalcula_Volumes: TBooleanField
      FieldName = 'Calcula_Volumes'
      Origin = 'Calcula_Volumes'
    end
    object NotasDestinatario: TIntegerField
      FieldName = 'Destinatario'
      Origin = 'Destinatario'
    end
    object NotasDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Origin = 'Destinatario_CNPJ_CPF'
      Size = 14
    end
    object NotasDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Origin = 'Destinatario_Nome'
      Size = 60
    end
    object NotasDestinatario_Rua: TStringField
      FieldName = 'Destinatario_Rua'
      Origin = 'Destinatario_Rua'
      Size = 40
    end
    object NotasDestinatario_RuaNumero: TStringField
      FieldName = 'Destinatario_RuaNumero'
      Origin = 'Destinatario_RuaNumero'
      Size = 10
    end
    object NotasDestinatario_Complemento: TStringField
      FieldName = 'Destinatario_Complemento'
      Origin = 'Destinatario_Complemento'
    end
    object NotasDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Origin = 'Destinatario_Bairro'
      Size = 40
    end
    object NotasDestinatario_Municipio: TFMTBCDField
      FieldName = 'Destinatario_Municipio'
      Origin = 'Destinatario_Municipio'
      Precision = 18
      Size = 0
    end
    object NotasDestinatario_MunicipioNome: TStringField
      FieldName = 'Destinatario_MunicipioNome'
      Origin = 'Destinatario_MunicipioNome'
      Size = 40
    end
    object NotasDestinatario_Estado: TStringField
      FieldName = 'Destinatario_Estado'
      Origin = 'Destinatario_Estado'
      Size = 2
    end
    object NotasDestinatario_CEP: TStringField
      FieldName = 'Destinatario_CEP'
      Origin = 'Destinatario_CEP'
      Size = 8
    end
    object NotasDestinatario_Pais: TStringField
      FieldName = 'Destinatario_Pais'
      Origin = 'Destinatario_Pais'
      Size = 4
    end
    object NotasDestinatario_Telefone1: TStringField
      FieldName = 'Destinatario_Telefone1'
      Origin = 'Destinatario_Telefone1'
      Size = 15
    end
    object NotasDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
      Origin = 'Destinatario_IE'
      Size = 18
    end
    object NotasDestinatario_Juridica: TBooleanField
      FieldName = 'Destinatario_Juridica'
      Origin = 'Destinatario_Juridica'
    end
    object NotasPedido_Nota: TIntegerField
      FieldName = 'Pedido_Nota'
      Origin = 'Pedido_Nota'
    end
    object NotasReducao_ICMSOper: TFMTBCDField
      FieldName = 'Reducao_ICMSOper'
      Origin = 'Reducao_ICMSOper'
      Precision = 18
      Size = 6
    end
    object NotasApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object NotasBaixa_Estoque: TBooleanField
      FieldName = 'Baixa_Estoque'
      Origin = 'Baixa_Estoque'
    end
    object NotasICMS_Destacar: TBooleanField
      FieldName = 'ICMS_Destacar'
      Origin = 'ICMS_Destacar'
    end
    object NotasAliquota_IRPJ: TFMTBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_CSLL: TFMTBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      Precision = 18
      Size = 6
    end
    object NotasComissao: TFMTBCDField
      FieldName = 'Comissao'
      Origin = 'Comissao'
      Precision = 18
      Size = 6
    end
    object NotasPedido_Representante: TStringField
      FieldName = 'Pedido_Representante'
      Origin = 'Pedido_Representante'
      Size = 10
    end
    object NotasManifesto_Protocolo: TStringField
      FieldName = 'Manifesto_Protocolo'
      Origin = 'Manifesto_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasManifesto_DataProtocolo: TSQLTimeStampField
      FieldName = 'Manifesto_DataProtocolo'
      Origin = 'Manifesto_DataProtocolo'
    end
    object NotasManifesto_Motivo: TSmallintField
      FieldName = 'Manifesto_Motivo'
      Origin = 'Manifesto_Motivo'
    end
    object NotasManifesto_Justificativa: TMemoField
      FieldName = 'Manifesto_Justificativa'
      Origin = 'Manifesto_Justificativa'
      BlobType = ftMemo
    end
    object NotasNatureza_Correcao: TStringField
      FieldName = 'Natureza_Correcao'
      Origin = 'Natureza_Correcao'
      Size = 4
    end
    object NotasAtendente: TSmallintField
      FieldName = 'Atendente'
      Origin = 'Atendente'
    end
    object NotasIndicador_Presenca: TSmallintField
      FieldName = 'Indicador_Presenca'
      Origin = 'Indicador_Presenca'
    end
    object NotasVeiculo_Restricao: TStringField
      FieldName = 'Veiculo_Restricao'
      Origin = 'Veiculo_Restricao'
      Size = 1
    end
    object NotasRatear_Despesa: TBooleanField
      FieldName = 'Ratear_Despesa'
      Origin = 'Ratear_Despesa'
    end
    object NotasNFE_Estorno: TBooleanField
      FieldName = 'NFE_Estorno'
      Origin = 'NFE_Estorno'
    end
    object NotasRepresentante_ComissaoGer: TFMTBCDField
      FieldName = 'Representante_ComissaoGer'
      Origin = 'Representante_ComissaoGer'
      Precision = 18
      Size = 6
    end
    object NotasVendedor: TStringField
      FieldName = 'Vendedor'
      Origin = 'Vendedor'
      Size = 50
    end
    object NotasTipo_Pagamento: TSmallintField
      FieldName = 'Tipo_Pagamento'
      Origin = 'Tipo_Pagamento'
    end
    object NotasForma_Pagamento: TSmallintField
      FieldName = 'Forma_Pagamento'
      Origin = 'Forma_Pagamento'
    end
    object NotasLote: TStringField
      FieldName = 'Lote'
      Origin = 'Lote'
      Size = 15
    end
    object NotasEntrega_Retirada: TStringField
      FieldName = 'Entrega_Retirada'
      Origin = 'Entrega_Retirada'
      FixedChar = True
      Size = 1
    end
    object NotasCTE: TBooleanField
      FieldName = 'CTE'
      Origin = 'CTE'
    end
    object NotasTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Origin = 'Tipo_Processo'
      FixedChar = True
      Size = 1
    end
    object NotasIndicador_Intermediario: TSmallintField
      FieldName = 'Indicador_Intermediario'
      Origin = 'Indicador_Intermediario'
    end
    object NotasDescricao_Forma: TStringField
      FieldName = 'Descricao_Forma'
      Origin = 'Descricao_Forma'
      Size = 60
    end
    object NotasIntermediador: TSmallintField
      FieldName = 'Intermediador'
      Origin = 'Intermediador'
    end
    object NotasEnvio_Armazem: TBooleanField
      FieldName = 'Envio_Armazem'
      Origin = 'Envio_Armazem'
    end
    object NotasAtendente_Comissao: TFMTBCDField
      FieldName = 'Atendente_Comissao'
      Origin = 'Atendente_Comissao'
      Precision = 18
      Size = 6
    end
    object NotasValor_Inventario: TFMTBCDField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSDesonerado: TFMTBCDField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      Precision = 18
      Size = 6
    end
    object NotasValor_PIS: TFMTBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      Precision = 18
      Size = 6
    end
    object NotasValor_COFINS: TFMTBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_ICMSOper: TFMTBCDField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'Aliquota_ICMSOper'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMS: TFMTBCDField
      FieldName = 'Valor_BCICMS'
      Origin = 'Valor_BCICMS'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMS: TFMTBCDField
      FieldName = 'Valor_ICMS'
      Origin = 'Valor_ICMS'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_ICMSSub: TFMTBCDField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'Aliquota_ICMSSub'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSST: TFMTBCDField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSST: TFMTBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      Precision = 18
      Size = 6
    end
    object NotasValor_Produtos: TFMTBCDField
      FieldName = 'Valor_Produtos'
      Origin = 'Valor_Produtos'
      Precision = 18
      Size = 6
    end
    object NotasValor_Frete: TFMTBCDField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      Precision = 18
      Size = 6
    end
    object NotasValor_Seguro: TFMTBCDField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      Precision = 18
      Size = 6
    end
    object NotasValor_Despesas: TFMTBCDField
      FieldName = 'Valor_Despesas'
      Origin = 'Valor_Despesas'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCIPI: TFMTBCDField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      Precision = 18
      Size = 6
    end
    object NotasValor_IPI: TFMTBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      Precision = 18
      Size = 6
    end
    object NotasValor_TotalNota: TFMTBCDField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      Precision = 18
      Size = 6
    end
    object NotasValor_RateioDespesas: TFMTBCDField
      FieldName = 'Valor_RateioDespesas'
      Origin = 'Valor_RateioDespesas'
      Precision = 18
      Size = 6
    end
    object NotasValor_MVA: TFMTBCDField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSReducao: TFMTBCDField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'Valor_ICMSReducao'
      Precision = 18
      Size = 6
    end
    object NotasValor_II: TFMTBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      Precision = 18
      Size = 6
    end
    object NotasValor_DUMPING: TFMTBCDField
      FieldName = 'Valor_DUMPING'
      Origin = 'Valor_DUMPING'
      Precision = 18
      Size = 6
    end
    object NotasValor_Descontos: TFMTBCDField
      FieldName = 'Valor_Descontos'
      Origin = 'Valor_Descontos'
      Precision = 18
      Size = 6
    end
    object NotasValor_IsentasICMS: TFMTBCDField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      Precision = 18
      Size = 6
    end
    object NotasValor_OutrasICMS: TFMTBCDField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      Precision = 18
      Size = 6
    end
    object NotasValor_IsentasIPI: TFMTBCDField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      Precision = 18
      Size = 6
    end
    object NotasValor_OutrasIPI: TFMTBCDField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCMVA: TFMTBCDField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSApuracao: TFMTBCDField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSApuracao: TFMTBCDField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      Precision = 18
      Size = 6
    end
    object NotasValor_MediaBCR: TFMTBCDField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      Precision = 18
      Size = 6
    end
    object NotasValor_PIS2: TFMTBCDField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      Precision = 18
      Size = 6
    end
    object NotasValor_COFINS2: TFMTBCDField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCPIS: TFMTBCDField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      Precision = 18
      Size = 6
    end
    object NotasValor_IRPJ: TFMTBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      Precision = 18
      Size = 6
    end
    object NotasValor_CSLL: TFMTBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      Precision = 18
      Size = 6
    end
    object NotasValor_Comissao: TFMTBCDField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      Precision = 18
      Size = 6
    end
    object NotasTotal_Impostos: TFMTBCDField
      FieldName = 'Total_Impostos'
      Origin = 'Total_Impostos'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSDest: TFMTBCDField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSDest: TFMTBCDField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      Precision = 18
      Size = 6
    end
    object NotasValor_DIFAL: TFMTBCDField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      Precision = 18
      Size = 6
    end
    object NotasValor_DIFALOrig: TFMTBCDField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      Precision = 18
      Size = 6
    end
    object NotasValor_DIFALDest: TFMTBCDField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      Precision = 18
      Size = 6
    end
    object NotasValor_FCPDest: TFMTBCDField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      Precision = 18
      Size = 6
    end
    object NotasValor_FCPICMSDest: TFMTBCDField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      Precision = 18
      Size = 6
    end
    object NotasValor_FCPICMSOrig: TFMTBCDField
      FieldName = 'Valor_FCPICMSOrig'
      Origin = 'Valor_FCPICMSOrig'
      Precision = 18
      Size = 6
    end
    object NotasValor_CIF: TFMTBCDField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      Precision = 18
      Size = 6
    end
    object NotasDIFAL_AliqInterna: TFMTBCDField
      FieldName = 'DIFAL_AliqInterna'
      Origin = 'DIFAL_AliqInterna'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCFCPST: TFMTBCDField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      Precision = 18
      Size = 6
    end
    object NotasValor_FCPST: TFMTBCDField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_FCPST: TFMTBCDField
      FieldName = 'Aliquota_FCPST'
      Origin = 'Aliquota_FCPST'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCFCP: TFMTBCDField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_FCP: TFMTBCDField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      Precision = 18
      Size = 6
    end
    object NotasValor_FCP: TFMTBCDField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      Precision = 18
      Size = 6
    end
    object NotasValor_AFRMM: TFMTBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCDIFAL: TFMTBCDField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCDIFALST: TFMTBCDField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSMono: TFMTBCDField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSMonoRet: TFMTBCDField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCICMSPresumido: TFMTBCDField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCII: TFMTBCDField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      Precision = 18
      Size = 6
    end
    object NotasValor_COFINSST: TFMTBCDField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSDif: TFMTBCDField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSMono: TFMTBCDField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSMonoRet: TFMTBCDField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      Precision = 18
      Size = 6
    end
    object NotasValor_ICMSPresumido: TFMTBCDField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      Precision = 18
      Size = 6
    end
    object NotasValor_PISST: TFMTBCDField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCIBS: TFMTBCDField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
      Precision = 18
      Size = 6
    end
    object NotasValor_IBS: TFMTBCDField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCCBS: TFMTBCDField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
      Precision = 18
      Size = 6
    end
    object NotasValor_CBS: TFMTBCDField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
      Precision = 18
      Size = 6
    end
    object NotasValor_BCIS: TFMTBCDField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
      Precision = 18
      Size = 6
    end
    object NotasValor_IS: TFMTBCDField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
      Precision = 18
      Size = 6
    end
    object NotasValor_IsentasICMSST: TFMTBCDField
      FieldName = 'Valor_IsentasICMSST'
      Origin = 'Valor_IsentasICMSST'
      Precision = 18
      Size = 6
    end
    object NotasValor_OutrasICMSST: TFMTBCDField
      FieldName = 'Valor_OutrasICMSST'
      Origin = 'Valor_OutrasICMSST'
      Precision = 18
      Size = 6
    end
    object NotasValor_ProdutosOrig: TFMTBCDField
      FieldName = 'Valor_ProdutosOrig'
      Origin = 'Valor_ProdutosOrig'
      Precision = 18
      Size = 6
    end
    object NotasAliquota_ICMSPresumido: TFMTBCDField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      Precision = 18
      Size = 6
    end
    object NotasModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
    object NotasArmazem: TSmallintField
      FieldName = 'Armazem'
      Origin = 'Armazem'
    end
    object NotasArmazem_CNPJ: TStringField
      FieldName = 'Armazem_CNPJ'
      Origin = 'Armazem_CNPJ'
      Size = 14
    end
    object NotasArmazem_Endereco: TStringField
      FieldName = 'Armazem_Endereco'
      Origin = 'Armazem_Endereco'
      Size = 60
    end
    object NotasArmazem_IE: TStringField
      FieldName = 'Armazem_IE'
      Origin = 'Armazem_IE'
      Size = 15
    end
    object NotasArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      Origin = 'Armazem_Nome'
      Size = 50
    end
    object NotasCancelada_ForaPrazo: TBooleanField
      FieldName = 'Cancelada_ForaPrazo'
      Origin = 'Cancelada_ForaPrazo'
    end
    object NotasCCe: TBooleanField
      FieldName = 'CCe'
      Origin = 'CCe'
    end
    object NotasExonerada: TBooleanField
      FieldName = 'Exonerada'
      Origin = 'Exonerada'
    end
    object NotasIncentivo_Codigo: TIntegerField
      FieldName = 'Incentivo_Codigo'
      Origin = 'Incentivo_Codigo'
    end
    object NotasMedia_BCR: TFMTBCDField
      FieldName = 'Media_BCR'
      Origin = 'Media_BCR'
      Precision = 18
      Size = 6
    end
    object NotasRemessa: TBooleanField
      FieldName = 'Remessa'
      Origin = 'Remessa'
    end
    object NotasCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      FixedChar = True
      Size = 10
    end
    object NotasSubSerie: TStringField
      FieldName = 'SubSerie'
      Origin = 'SubSerie'
      FixedChar = True
      Size = 2
    end
    object NotasProvisoria: TBooleanField
      FieldName = 'Provisoria'
      Origin = 'Provisoria'
    end
    object NotasDesdobramento: TBooleanField
      FieldName = 'Desdobramento'
      Origin = 'Desdobramento'
    end
    object NotasManifestada: TBooleanField
      FieldName = 'Manifestada'
      Origin = 'Manifestada'
    end
    object NotasNatureza_Frete: TSmallintField
      FieldName = 'Natureza_Frete'
      Origin = 'Natureza_Frete'
    end
    object NotasOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object NotasLancamento_Financeiro: TIntegerField
      FieldName = 'Lancamento_Financeiro'
      Origin = 'Lancamento_Financeiro'
    end
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 102
    Top = 173
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Fornecedor = 1')
    Left = 102
    Top = 421
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 102
    Top = 471
  end
  object ProcessoImp: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Processo, DUIMP FROM ProcessosImp')
    Left = 102
    Top = 520
  end
  object dsProcessoImp: TDataSource
    DataSet = ProcessoImp
    Left = 102
    Top = 569
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Empresas')
    Left = 255
    Top = 421
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 255
    Top = 471
  end
  object ModalPgto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadesPagamento')
    Left = 100
    Top = 320
  end
  object dsModalPgto: TDataSource
    DataSet = ModalPgto
    Left = 102
    Top = 370
  end
  object TiposDoc: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposDocumentos')
    Left = 183
    Top = 320
  end
  object dsTiposDoc: TDataSource
    DataSet = TiposDoc
    Left = 183
    Top = 370
  end
  object Operacao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OperacaoFiscal'
      'where Emissao = '#39'T'#39
      'order by Descricao')
    Left = 183
    Top = 421
  end
  object dsOperacao: TDataSource
    DataSet = Operacao
    Left = 183
    Top = 471
  end
  object Modelos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModelosDocumentos')
    Left = 183
    Top = 520
  end
  object dsModelos: TDataSource
    DataSet = Modelos
    Left = 183
    Top = 569
  end
  object Beneficios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from BeneficioFiscal order by Nome')
    Left = 255
    Top = 320
  end
  object dsBeneficios: TDataSource
    DataSet = Beneficios
    Left = 255
    Top = 370
  end
  object Itens: TFDQuery
    IndexFieldNames = 'Nota_id;Item'
    MasterSource = dsNotas
    MasterFields = 'Nota_id'
    DetailFields = 'Nota_id'
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Nota_id'
      '      ,Item'
      '      ,Codigo_Mercadoria'
      '      ,Descricao_Mercadoria'
      '      ,NCM'
      '      ,UM'
      '      ,Quantidade'
      '      ,Valor_Unitario'
      '      ,Empresa'
      '      ,CFOP'
      
        '      ,Estoque_Minimo = isnull((select Estoque_MinimoPerc from P' +
        'rodutos where Codigo = Codigo_Mercadoria), 0)'
      'from NotasItens'
      'order by Empresa')
    Left = 183
    Top = 123
    object ItensNota_id: TIntegerField
      FieldName = 'Nota_id'
      Origin = 'Nota_id'
      Required = True
    end
    object ItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object ItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object ItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object ItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object ItensUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object ItensQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
      Size = 6
    end
    object ItensValor_Unitario: TFMTBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Precision = 18
      Size = 6
    end
    object ItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object ItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 183
    Top = 173
  end
  object ItensNavios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NotasItensNavios')
    Left = 255
    Top = 123
  end
  object dsItensNavios: TDataSource
    DataSet = ItensNavios
    Left = 255
    Top = 173
  end
  object ModalFrete: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadesFrete')
    Left = 255
    Top = 520
  end
  object dsModalFrete: TDataSource
    DataSet = ModalFrete
    Left = 255
    Top = 569
  end
  object NaturezaFrete: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NaturezaFrete')
    Left = 338
    Top = 123
  end
  object dsNaturezaFrete: TDataSource
    DataSet = NaturezaFrete
    Left = 338
    Top = 173
  end
  object RamosAtv: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM RamoAtividade')
    Left = 338
    Top = 222
  end
  object dsRamo: TDataSource
    DataSet = RamosAtv
    Left = 338
    Top = 272
  end
  object CentroCusto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CentroCusto')
    Left = 338
    Top = 320
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 338
    Top = 370
  end
  object Origem: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OrigemMercadoria')
    Left = 338
    Top = 421
  end
  object dsOrigem: TDataSource
    DataSet = Origem
    Left = 338
    Top = 471
  end
  object TipoProd: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TipoProduto')
    Left = 338
    Top = 520
  end
  object dsTipoProd: TDataSource
    DataSet = TipoProd
    Left = 338
    Top = 569
  end
  object ClassProd: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ClassificacaoProduto')
    Left = 418
    Top = 123
  end
  object dsClassProd: TDataSource
    DataSet = ClassProd
    Left = 418
    Top = 173
  end
  object ProcessoExp: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Processo, DUE FROM ProcessosExp')
    Left = 103
    Top = 621
  end
  object dsProcessoExp: TDataSource
    DataSet = ProcessoExp
    Left = 103
    Top = 670
  end
  object Embarques: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo '
      '      ,Empresa'
      'from Embarques')
    Left = 181
    Top = 621
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 181
    Top = 670
  end
end
