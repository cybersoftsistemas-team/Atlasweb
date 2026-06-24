object fFiscalNFTerceiros: TfFiscalNFTerceiros
  Left = 0
  Top = 0
  Width = 1151
  Height = 748
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object Pasta: TUniPageControl
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 919
    Height = 707
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 911
        Height = 652
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
        Width = 911
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
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Capa da Nota Fiscal'
      object Panel2: TUniPanel
        Left = 0
        Top = 0
        Width = 911
        Height = 679
        Hint = ''
        Align = alClient
        TabOrder = 0
        Caption = ''
        DesignSize = (
          911
          679)
        object Ficha: TUniPanel
          Left = 22
          Top = 13
          Width = 821
          Height = 563
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
            Top = 415
            Width = 800
            Height = 136
            Hint = ''
            ShowHint = True
            DataField = 'Inf_Complementares'
            DataSource = dsNotas
            BorderStyle = ubsInset
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 17
            FieldLabel = 'Observa'#231#245'es'
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
          object cProcesso: TUniDBLookupComboBox
            Left = 10
            Top = 334
            Width = 800
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Processo'
            DataSource = dsNotas
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cModalFrete: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 361
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
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 125
            FieldLabelSeparator = ' '
          end
          object cNaturezaFrete: TUniDBLookupComboBox
            Tag = 1
            Left = 10
            Top = 388
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
            TabOrder = 16
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
            TabOrder = 19
            Items.Strings = (
              'A Vista'
              'A Prazo'
              'Outros')
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Itens'
      object GradeItens: TUniDBGrid
        Left = 65
        Top = 0
        Width = 846
        Height = 679
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
            FieldName = 'Unidade_Medida'
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
        Height = 679
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
    object TabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Seriais/Chassis'
      object GradeSerial: TUniDBGrid
        Left = 0
        Top = 0
        Width = 911
        Height = 679
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
    object TabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Lotes'
      object GradeLote: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 905
        Height = 673
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
    object TabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Manifesta'#231#227'o do Destinat'#225'rio'
      object GradeManif: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 905
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
        Top = 547
        Width = 905
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
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1151
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
      Left = 468
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
    object bXML: TUniSpeedButton
      Left = 362
      Top = 0
      Width = 106
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = 'Importa NF-e'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 9
      TabOrder = 8
      OnClick = bCancelarClick
    end
  end
  object UniPanel3: TUniPanel
    AlignWithMargins = True
    Left = 928
    Top = 38
    Width = 220
    Height = 707
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
    Left = 263
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
    Left = 263
    Top = 272
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 353
    Top = 424
  end
  object Armazem: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome, CNPJ from Fornecedores')
    Left = 182
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
    Left = 182
    Top = 272
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CFOP')
    Left = 100
    Top = 222
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 100
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
    Left = 101
    Top = 122
    object NotasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object NotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
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
    object NotasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object NotasFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
      Origin = 'FUNDAP'
    end
    object NotasLucro: TBCDField
      FieldName = 'Lucro'
      Origin = 'Lucro'
      Precision = 18
    end
    object NotasLucro_Valor: TBCDField
      FieldName = 'Lucro_Valor'
      Origin = 'Lucro_Valor'
      Precision = 18
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
    object NotasInf_Complementares: TMemoField
      FieldName = 'Inf_Complementares'
      Origin = 'Inf_Complementares'
      BlobType = ftMemo
    end
    object NotasInf_Complementares2: TMemoField
      FieldName = 'Inf_Complementares2'
      Origin = 'Inf_Complementares2'
      BlobType = ftMemo
    end
    object NotasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 2
    end
    object NotasTransportador_Codigo: TIntegerField
      FieldName = 'Transportador_Codigo'
      Origin = 'Transportador_Codigo'
    end
    object NotasModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'Modalidade_Frete'
    end
    object NotasVolume_Quantidade: TBCDField
      FieldName = 'Volume_Quantidade'
      Origin = 'Volume_Quantidade'
      Precision = 18
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
    object NotasVolume_PesoLiquido: TBCDField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'Volume_PesoLiquido'
      Precision = 18
    end
    object NotasVolume_PesoBruto: TBCDField
      FieldName = 'Volume_PesoBruto'
      Origin = 'Volume_PesoBruto'
      Precision = 18
    end
    object NotasModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'Modalidade_Pgto'
    end
    object NotasDesconto_Percentual: TBCDField
      FieldName = 'Desconto_Percentual'
      Origin = 'Desconto_Percentual'
      Precision = 18
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
    object NotasNota_Referencia: TSmallintField
      FieldName = 'Nota_Referencia'
      Origin = 'Nota_Referencia'
    end
    object NotasData_Referencia: TSQLTimeStampField
      FieldName = 'Data_Referencia'
      Origin = 'Data_Referencia'
    end
    object NotasChave_Referencoa: TStringField
      FieldName = 'Chave_Referencoa'
      Origin = 'Chave_Referencoa'
      Size = 44
    end
    object NotasNFe_Lote: TFMTBCDField
      FieldName = 'NFe_Lote'
      Origin = 'NFe_Lote'
      Precision = 18
      Size = 0
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
    object NotasOperacao_Veiculo: TStringField
      FieldName = 'Operacao_Veiculo'
      Origin = 'Operacao_Veiculo'
      FixedChar = True
      Size = 1
    end
    object NotasTransporte_Placa: TStringField
      FieldName = 'Transporte_Placa'
      Origin = 'Transporte_Placa'
      FixedChar = True
      Size = 10
    end
    object NotasTransporte_PlacaUF: TStringField
      FieldName = 'Transporte_PlacaUF'
      Origin = 'Transporte_PlacaUF'
      FixedChar = True
      Size = 2
    end
    object NotasTransporte_NomeMotorista: TStringField
      FieldName = 'Transporte_NomeMotorista'
      Origin = 'Transporte_NomeMotorista'
      Size = 40
    end
    object NotasTransporte_RGMotorista: TStringField
      FieldName = 'Transporte_RGMotorista'
      Origin = 'Transporte_RGMotorista'
    end
    object NotasTransporte_CPFMotorista: TStringField
      FieldName = 'Transporte_CPFMotorista'
      Origin = 'Transporte_CPFMotorista'
      Size = 14
    end
    object NotasTransporte_Lacre: TMemoField
      FieldName = 'Transporte_Lacre'
      Origin = 'Transporte_Lacre'
      BlobType = ftMemo
    end
    object NotasTransporte_CodigoANTT: TStringField
      FieldName = 'Transporte_CodigoANTT'
      Origin = 'Transporte_CodigoANTT'
      FixedChar = True
      Size = 15
    end
    object NotasTaxa_Cambio: TBCDField
      FieldName = 'Taxa_Cambio'
      Origin = 'Taxa_Cambio'
      Precision = 18
    end
    object NotasBeneficio_Fiscal: TSmallintField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
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
    object NotasRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'Representante'
    end
    object NotasRepresentante_Comissao: TBCDField
      FieldName = 'Representante_Comissao'
      Origin = 'Representante_Comissao'
      Precision = 18
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
    object NotasReducao_ICMSOper: TBCDField
      FieldName = 'Reducao_ICMSOper'
      Origin = 'Reducao_ICMSOper'
      Precision = 18
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
    object NotasAliquota_IRPJ: TBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      Precision = 18
    end
    object NotasAliquota_CSLL: TBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      Precision = 18
    end
    object NotasComissao: TBCDField
      FieldName = 'Comissao'
      Origin = 'Comissao'
      Precision = 18
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
    object NotasRepresentante_ComissaoGer: TBCDField
      FieldName = 'Representante_ComissaoGer'
      Origin = 'Representante_ComissaoGer'
      Precision = 18
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
    object NotasReboque_Placa: TStringField
      FieldName = 'Reboque_Placa'
      Origin = 'Reboque_Placa'
      FixedChar = True
      Size = 10
    end
    object NotasReboque_UF: TStringField
      FieldName = 'Reboque_UF'
      Origin = 'Reboque_UF'
      FixedChar = True
      Size = 2
    end
    object NotasReboque_ANTT: TStringField
      FieldName = 'Reboque_ANTT'
      Origin = 'Reboque_ANTT'
      FixedChar = True
      Size = 15
    end
    object NotasReboque_Lacre: TMemoField
      FieldName = 'Reboque_Lacre'
      Origin = 'Reboque_Lacre'
      BlobType = ftMemo
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
    object NotasAtendente_Comissao: TBCDField
      FieldName = 'Atendente_Comissao'
      Origin = 'Atendente_Comissao'
      Precision = 18
    end
    object NotasValor_Inventario: TBCDField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      Precision = 18
    end
    object NotasValor_ICMSDesonerado: TBCDField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      Precision = 18
    end
    object NotasValor_PIS: TBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      Precision = 18
    end
    object NotasValor_COFINS: TBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      Precision = 18
    end
    object NotasAliquota_ICMSOper: TBCDField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'Aliquota_ICMSOper'
      Precision = 18
    end
    object NotasValor_BCICMS: TBCDField
      FieldName = 'Valor_BCICMS'
      Origin = 'Valor_BCICMS'
      Precision = 18
    end
    object NotasValor_ICMS: TBCDField
      FieldName = 'Valor_ICMS'
      Origin = 'Valor_ICMS'
      Precision = 18
    end
    object NotasAliquota_ICMSSub: TBCDField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'Aliquota_ICMSSub'
      Precision = 18
    end
    object NotasValor_BCICMSST: TBCDField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      Precision = 18
    end
    object NotasValor_ICMSST: TBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      Precision = 18
    end
    object NotasValor_Produtos: TBCDField
      FieldName = 'Valor_Produtos'
      Origin = 'Valor_Produtos'
      Precision = 18
    end
    object NotasValor_Frete: TBCDField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      Precision = 18
    end
    object NotasValor_Seguro: TBCDField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      Precision = 18
    end
    object NotasValor_Despesas: TBCDField
      FieldName = 'Valor_Despesas'
      Origin = 'Valor_Despesas'
      Precision = 18
    end
    object NotasValor_BCIPI: TBCDField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      Precision = 18
    end
    object NotasValor_IPI: TBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      Precision = 18
    end
    object NotasValor_TotalNota: TBCDField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      Precision = 18
    end
    object NotasValor_RateioDespesas: TBCDField
      FieldName = 'Valor_RateioDespesas'
      Origin = 'Valor_RateioDespesas'
      Precision = 18
    end
    object NotasValor_MVA: TBCDField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      Precision = 18
    end
    object NotasValor_ICMSReducao: TBCDField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'Valor_ICMSReducao'
      Precision = 18
    end
    object NotasValor_II: TBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      Precision = 18
    end
    object NotasValor_DUMPING: TBCDField
      FieldName = 'Valor_DUMPING'
      Origin = 'Valor_DUMPING'
      Precision = 18
    end
    object NotasValor_Descontos: TBCDField
      FieldName = 'Valor_Descontos'
      Origin = 'Valor_Descontos'
      Precision = 18
    end
    object NotasValor_IsentasICMS: TBCDField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      Precision = 18
    end
    object NotasValor_OutrasICMS: TBCDField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      Precision = 18
    end
    object NotasValor_IsentasIPI: TBCDField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      Precision = 18
    end
    object NotasValor_OutrasIPI: TBCDField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      Precision = 18
    end
    object NotasValor_BCMVA: TBCDField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      Precision = 18
    end
    object NotasValor_BCICMSApuracao: TBCDField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      Precision = 18
    end
    object NotasValor_ICMSApuracao: TBCDField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      Precision = 18
    end
    object NotasValor_MediaBCR: TBCDField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      Precision = 18
    end
    object NotasValor_PIS2: TBCDField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      Precision = 18
    end
    object NotasValor_COFINS2: TBCDField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      Precision = 18
    end
    object NotasValor_BCPIS: TBCDField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      Precision = 18
    end
    object NotasValor_IRPJ: TBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      Precision = 18
    end
    object NotasValor_CSLL: TBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      Precision = 18
    end
    object NotasValor_Comissao: TBCDField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      Precision = 18
    end
    object NotasTotal_Impostos: TBCDField
      FieldName = 'Total_Impostos'
      Origin = 'Total_Impostos'
      Precision = 18
    end
    object NotasValor_BCICMSDest: TBCDField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      Precision = 18
    end
    object NotasValor_ICMSDest: TBCDField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      Precision = 18
    end
    object NotasValor_DIFAL: TBCDField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      Precision = 18
    end
    object NotasValor_DIFALOrig: TBCDField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      Precision = 18
    end
    object NotasValor_DIFALDest: TBCDField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      Precision = 18
    end
    object NotasValor_FCPDest: TBCDField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      Precision = 18
    end
    object NotasValor_FCPICMSDest: TBCDField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      Precision = 18
    end
    object NotasValor_FCPICMSOrig: TBCDField
      FieldName = 'Valor_FCPICMSOrig'
      Origin = 'Valor_FCPICMSOrig'
      Precision = 18
    end
    object NotasValor_CIF: TBCDField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      Precision = 18
    end
    object NotasDIFAL_AliqInterna: TBCDField
      FieldName = 'DIFAL_AliqInterna'
      Origin = 'DIFAL_AliqInterna'
      Precision = 18
    end
    object NotasValor_BCFCPST: TBCDField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      Precision = 18
    end
    object NotasValor_FCPST: TBCDField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      Precision = 18
    end
    object NotasAliquota_FCPST: TBCDField
      FieldName = 'Aliquota_FCPST'
      Origin = 'Aliquota_FCPST'
      Precision = 18
    end
    object NotasValor_BCFCP: TBCDField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      Precision = 18
    end
    object NotasAliquota_FCP: TBCDField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      Precision = 18
    end
    object NotasValor_FCP: TBCDField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      Precision = 18
    end
    object NotasValor_AFRMM: TBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      Precision = 18
    end
    object NotasValor_BCDIFAL: TBCDField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      Precision = 18
    end
    object NotasValor_BCDIFALST: TBCDField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      Precision = 18
    end
    object NotasValor_BCICMSMono: TBCDField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      Precision = 18
    end
    object NotasValor_BCICMSMonoRet: TBCDField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      Precision = 18
    end
    object NotasValor_BCICMSPresumido: TBCDField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      Precision = 18
    end
    object NotasValor_BCII: TBCDField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      Precision = 18
    end
    object NotasValor_COFINSST: TBCDField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      Precision = 18
    end
    object NotasValor_ICMSDif: TBCDField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      Precision = 18
    end
    object NotasValor_ICMSMono: TBCDField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      Precision = 18
    end
    object NotasValor_ICMSMonoRet: TBCDField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      Precision = 18
    end
    object NotasValor_ICMSPresumido: TBCDField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      Precision = 18
    end
    object NotasValor_PISST: TBCDField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      Precision = 18
    end
    object NotasValor_BCIBS: TBCDField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
      Precision = 18
    end
    object NotasValor_IBS: TBCDField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
      Precision = 18
    end
    object NotasValor_BCCBS: TBCDField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
      Precision = 18
    end
    object NotasValor_CBS: TBCDField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
      Precision = 18
    end
    object NotasValor_BCIS: TBCDField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
      Precision = 18
    end
    object NotasValor_IS: TBCDField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
      Precision = 18
    end
    object NotasValor_IsentasICMSST: TBCDField
      FieldName = 'Valor_IsentasICMSST'
      Origin = 'Valor_IsentasICMSST'
      Precision = 18
    end
    object NotasValor_OutrasICMSST: TBCDField
      FieldName = 'Valor_OutrasICMSST'
      Origin = 'Valor_OutrasICMSST'
      Precision = 18
    end
    object NotasValor_ProdutosOrig: TBCDField
      FieldName = 'Valor_ProdutosOrig'
      Origin = 'Valor_ProdutosOrig'
      Precision = 18
    end
    object NotasAliquota_ICMSPresumido: TBCDField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      Precision = 18
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
    object NotasMedia_BCR: TBCDField
      FieldName = 'Media_BCR'
      Origin = 'Media_BCR'
      Precision = 18
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
    object NotasOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object NotasOperacao_Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Operacao_Descricao'
      LookupDataSet = Operacao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Operacao'
      Size = 60
      Lookup = True
    end
    object NotasChave: TStringField
      FieldName = 'Chave'
      Origin = 'Chave'
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
      Size = 44
    end
    object NotasES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object NotasCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object NotasLancamento_Financeiro: TIntegerField
      FieldName = 'Lancamento_Financeiro'
    end
    object NotasData_ES: TDateField
      FieldName = 'Data_ES'
      Origin = 'Data_ES'
    end
    object NotasHora_ES: TStringField
      FieldName = 'Hora_ES'
      Origin = 'Hora_ES'
      FixedChar = True
      Size = 5
    end
    object NotasData_Emissao: TDateField
      FieldName = 'Data_Emissao'
      Origin = 'Data_Emissao'
    end
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 100
    Top = 173
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Fornecedor = 1')
    Left = 101
    Top = 421
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 100
    Top = 471
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProcessosImp')
    Left = 100
    Top = 520
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 100
    Top = 569
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Empresas')
    Left = 261
    Top = 422
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 261
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
    Left = 100
    Top = 370
  end
  object TiposDoc: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposDocumentos')
    Left = 182
    Top = 320
  end
  object dsTiposDoc: TDataSource
    DataSet = TiposDoc
    Left = 182
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
    Left = 181
    Top = 421
  end
  object dsOperacao: TDataSource
    DataSet = Operacao
    Left = 182
    Top = 471
  end
  object Modelos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModelosDocumentos')
    Left = 182
    Top = 520
  end
  object dsModelos: TDataSource
    DataSet = Modelos
    Left = 182
    Top = 569
  end
  object Beneficios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from BeneficioFiscal order by Nome')
    Left = 261
    Top = 323
  end
  object dsBeneficios: TDataSource
    DataSet = Beneficios
    Left = 261
    Top = 373
  end
  object Itens: TFDQuery
    Active = True
    IndexFieldNames = 'Empresa;Chave'
    MasterSource = dsNotas
    MasterFields = 'Empresa;Chave'
    DetailFields = 'Empresa;Chave'
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Item'
      '      ,Codigo_Mercadoria'
      '      ,Descricao_Mercadoria'
      '      ,NCM'
      '      ,Unidade_Medida'
      '      ,Quantidade'
      '      ,Valor_Unitario'
      '      ,Empresa'
      '      ,Chave'
      '      ,CFOP'
      
        '      ,Estoque_Minimo = isnull((select Estoque_MinimoPerc from P' +
        'rodutos where Codigo = Codigo_Mercadoria), 0)'
      'from NotasItens'
      'where emissao = '#39'T'#39
      'order by Empresa, Chave')
    Left = 183
    Top = 121
    object ItensItem: TSmallintField
      DisplayWidth = 4
      FieldName = 'Item'
      Origin = 'Item'
      DisplayFormat = '0000'
      EditFormat = '0000'
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
      EditMask = '##.##.####;0'
      FixedChar = True
      Size = 8
    end
    object ItensUnidade_Medida: TStringField
      FieldName = 'Unidade_Medida'
      Origin = 'Unidade_Medida'
      FixedChar = True
      Size = 3
    end
    object ItensQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
      Precision = 18
    end
    object ItensValor_Unitario: TBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.0000'
      Precision = 18
    end
    object ItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object ItensChave: TStringField
      FieldName = 'Chave'
      Origin = 'Chave'
      Size = 44
    end
    object ItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      EditMask = '#.###;0'
      Size = 4
    end
    object ItensEstoque_Minimo: TBCDField
      FieldName = 'Estoque_Minimo'
      Origin = 'Estoque_Minimo'
      ReadOnly = True
      Required = True
      DisplayFormat = '#0.00%'
      Precision = 18
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 182
    Top = 173
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Produtos')
    Left = 353
    Top = 123
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 353
    Top = 173
  end
  object ItensNavios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NotasItensNavios')
    Left = 263
    Top = 123
  end
  object dsItensNavios: TDataSource
    DataSet = ItensNavios
    Left = 263
    Top = 173
  end
  object ModalFrete: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadesFrete')
    Left = 353
    Top = 223
  end
  object dsModalFrete: TDataSource
    DataSet = ModalFrete
    Left = 353
    Top = 272
  end
  object NaturezaFrete: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NaturezaFrete')
    Left = 353
    Top = 319
  end
  object dsNaturezaFrete: TDataSource
    DataSet = NaturezaFrete
    Left = 353
    Top = 368
  end
end
