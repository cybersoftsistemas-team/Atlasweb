object fComexProcessoImp: TfComexProcessoImp
  Left = 0
  Top = 0
  Width = 1300
  Height = 1200
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1300
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
      DataSource = dsProcessosImp
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
      Left = 467
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
    object bAdicoes: TUniButton
      Left = 345
      Top = 0
      Width = 122
      Height = 35
      Cursor = crHandPoint
      Hint = '  Cadastrar todos os itens da DI (Adi'#231#245'es).  '
      ShowHint = True
      ParentShowHint = False
      Caption = 'Itens DI [0000]'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 8
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1300
    Height = 1165
    Hint = ''
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1292
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
      object GradeLista: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1292
        Height = 1110
        Hint = ''
        DataSource = dsProcessosImp
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgCancelOnExit]
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Carregando dados ...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        ParentColor = False
        Color = clWhite
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 94
          end
          item
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'DI'
            Width = 80
            Alignment = taCenter
          end
          item
            FieldName = 'Data_RegistroDI'
            Title.Alignment = taCenter
            Title.Caption = 'Data Reg.'
            Width = 65
            Alignment = taCenter
          end
          item
            FieldName = 'Data_DesembaracoDI'
            Title.Alignment = taCenter
            Title.Caption = 'Data Des.'
            Width = 65
            Alignment = taCenter
          end
          item
            FieldName = 'Cliente_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 250
          end
          item
            FieldName = 'Exportador_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Exportador'
            Width = 250
          end
          item
            FieldName = 'Valor_FaturaME'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Fatura (ME)'
            Width = 100
          end
          item
            FieldName = 'Valor_FOBME'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.FOB (ME)'
            Width = 100
          end
          item
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Width = 179
          end>
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados do Processo'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 1081
        ScrollWidth = 1099
        object UniPanel1: TUniPanel
          Left = 18
          Top = 23
          Width = 1129
          Height = 839
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
          ShowCaption = False
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object PainelInterno1: TUniPanel
            Left = 618
            Top = 299
            Width = 500
            Height = 514
            Hint = ''
            ShowHint = True
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'VALORES DO PROCESSO'
            Caption = ''
            object cFOB: TUniDBEdit
              Left = 252
              Top = 116
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FOB'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 1
              TabStop = False
              ReadOnly = True
              InputMask.MaskChar = #0
              FieldLabel = 'FOB (Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFrete: TUniDBEdit
              Left = 252
              Top = 170
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Frete'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 2
              TabStop = False
              ReadOnly = True
              InputMask.MaskChar = #0
              FieldLabel = 'Frete (Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cAliquota_ICMS: TUniDBEdit
              Left = 252
              Top = 386
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_ICMS'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 3
              InputMask.MaskChar = #0
              FieldLabel = '% ICMS'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cAliquota_ICMSChange
            end
            object cSeguro: TUniDBEdit
              Left = 252
              Top = 224
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_Seguro'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 4
              InputMask.MaskChar = #0
              FieldLabel = 'Seguro (Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_ICMS: TUniDBEdit
              Left = 8
              Top = 386
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_ICMS'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 5
              InputMask.MaskChar = #0
              FieldLabel = 'Valor ICMS(R$)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cTaxa_FOB: TUniDBEdit
              Left = 372
              Top = 8
              Width = 120
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Taxa_FOB'
              DataSource = dsProcessosImp
              TabOrder = 6
              TabStop = False
              ReadOnly = True
              FieldLabel = 'Taxa'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cTaxa_FOBChange
            end
            object cTaxa_Frete: TUniDBEdit
              Left = 372
              Top = 35
              Width = 120
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Taxa_Frete'
              DataSource = dsProcessosImp
              TabOrder = 7
              TabStop = False
              ReadOnly = True
              FieldLabel = 'Taxa'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cTaxa_Seguro: TUniDBEdit
              Left = 372
              Top = 62
              Width = 120
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Taxa_Seguro'
              DataSource = dsProcessosImp
              TabOrder = 8
              TabStop = False
              ReadOnly = True
              FieldLabel = 'Taxa'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_PIS: TUniDBEdit
              Left = 8
              Top = 305
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_PIS'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 9
              InputMask.MaskChar = #0
              FieldLabel = 'PIS Majorado'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_COFINS: TUniDBEdit
              Left = 8
              Top = 332
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_COFINS'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 10
              InputMask.MaskChar = #0
              FieldLabel = 'COFINS Major.'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cII: TUniDBEdit
              Left = 8
              Top = 278
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_II'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 11
              InputMask.MaskChar = #0
              FieldLabel = 'II (R$)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_IPI: TUniDBEdit
              Left = 252
              Top = 278
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_IPI'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 12
              InputMask.MaskChar = #0
              FieldLabel = 'IPI (R$)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object clMoeda_FOB: TUniDBLookupComboBox
              Left = 8
              Top = 8
              Width = 360
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              ListField = 'Simbolo; Nome'
              ListSource = dstMoedas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Moeda_FOB'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Moeda FOB'
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cFOB_ME: TUniDBEdit
              Left = 8
              Top = 116
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_FOBME'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 14
              InputMask.MaskChar = #0
              FieldLabel = 'FOB (ME)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cFOB_MEChange
            end
            object clMoeda_Frete: TUniDBLookupComboBox
              Left = 8
              Top = 35
              Width = 360
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              ListField = 'Simbolo; Nome'
              ListSource = dstMoedas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Moeda_Frete'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Moeda Frete'
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cFrete_ME: TUniDBEdit
              Left = 8
              Top = 170
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_FreteME'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 16
              InputMask.MaskChar = #0
              FieldLabel = 'Frete (ME)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cFrete_MEChange
            end
            object clMoeda_Seguro: TUniDBLookupComboBox
              Left = 8
              Top = 62
              Width = 360
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              ListField = 'Simbolo; Nome'
              ListSource = dstMoedas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Moeda_Seguro'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 17
              Color = clWindow
              FieldLabel = 'Moeda Seguro'
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cSeguro_ME: TUniDBEdit
              Left = 8
              Top = 224
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_SeguroME'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 18
              InputMask.MaskChar = #0
              FieldLabel = 'Seguro (ME)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cAd_Valorem: TUniDBEdit
              Left = 252
              Top = 251
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_AdValorem'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 19
              ClearButton = True
              InputMask.MaskChar = #0
              FieldLabel = 'Acr'#233'scimo(Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cAdValorem: TUniFormattedNumberEdit
              Left = 8
              Top = 251
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 20
              TabStop = False
              ReadOnly = True
              FieldLabel = 'Acr'#233'scimo (ME)'
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cValor_Dumping: TUniDBEdit
              Left = 8
              Top = 359
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_Dumping'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 21
              InputMask.MaskChar = #0
              FieldLabel = 'Anti-Dumping (R$)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cTaxa_SISCOMEX: TUniDBEdit
              Left = 252
              Top = 359
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_TaxaSISCOMEX'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 22
              InputMask.MaskChar = #0
              FieldLabel = 'Taxa SISCOMEX'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cReducao_ICMS: TUniDBEdit
              Left = 8
              Top = 413
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Reducao_ICMS'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 23
              InputMask.MaskChar = #0
              FieldLabel = 'Red.% ICMS'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFOB_MEAdicoes: TUniDBEdit
              Left = 8
              Top = 89
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_FOBMEAdicoes'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 24
              TabStop = False
              ReadOnly = True
              InputMask.MaskChar = #0
              FieldLabel = 'FOB Adi'#231#245'es(ME)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFOB_Adicoes: TUniDBEdit
              Left = 252
              Top = 89
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FOBAdicoes'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 25
              TabStop = False
              ReadOnly = True
              InputMask.MaskChar = #0
              FieldLabel = 'FOB Adi'#231#245'es(Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cReducao_BC: TUniDBEdit
              Left = 252
              Top = 414
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Reducao_BC'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 26
              InputMask.MaskChar = #0
              FieldLabel = '%Red.BC ICMS'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_PIS2: TUniDBEdit
              Left = 252
              Top = 305
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_PIS2'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 27
              InputMask.MaskChar = #0
              FieldLabel = 'Valor PIS'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_COFINS2: TUniDBEdit
              Left = 252
              Top = 332
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_COFINS2'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 28
              InputMask.MaskChar = #0
              FieldLabel = 'Valor COFINS'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cAFRMM: TUniDBEdit
              Left = 8
              Top = 440
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_AFRMM'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 29
              InputMask.MaskChar = #0
              FieldLabel = 'AFRMM'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFOB_SemADVal: TUniFormattedNumberEdit
              Left = 252
              Top = 143
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 30
              TabStop = False
              ReadOnly = True
              FieldLabel = 'FOB s/Adval (Real)'
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cFOB_SemADValReal: TUniFormattedNumberEdit
              Left = 8
              Top = 143
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 31
              TabStop = False
              ReadOnly = True
              FieldLabel = 'FOB s/Adval (ME)'
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cFrete_NacionalReal: TUniDBEdit
              Left = 252
              Top = 197
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FreteNacionalReal'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 32
              TabStop = False
              ReadOnly = True
              InputMask.MaskChar = #0
              FieldLabel = 'Frete Terr.Nac.(Real)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFrete_NacionalME: TUniDBEdit
              Left = 8
              Top = 197
              Width = 240
              Height = 25
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              DataField = 'Valor_FreteNacionalME'
              DataSource = dsProcessosImp
              Alignment = taRightJustify
              TabOrder = 33
              InputMask.MaskChar = #0
              FieldLabel = 'Frete Terr.Nac.(ME)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
          end
          object PainelInterno2: TUniPanel
            Left = 10
            Top = 8
            Width = 602
            Height = 805
            Hint = ''
            ShowHint = True
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'DADOS DO PROCESSO'
            Caption = ''
            object cData_RegistroDeclaracao: TUniDBDateTimePicker
              Left = 312
              Top = 333
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_Registro'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 1
              BorderStyle = ubsInset
              FieldLabel = 'Data do Registro'
              FieldLabelSeparator = ' '
              OnExit = cData_RegistroDeclaracaoExit
              OnChange = cData_RegistroDeclaracaoChange
            end
            object cNumero_Declaracao: TUniDBEdit
              Left = 8
              Top = 333
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'DUIMP'
              DataSource = dsProcessosImp
              MaxLength = 13
              TabOrder = 2
              FieldLabel = 'DUIMP N'#186
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cNumero_DeclaracaoChange
            end
            object cData_DesembaracoDeclaracao: TUniDBDateTimePicker
              Left = 8
              Top = 360
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_Desembaraco'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 3
              BorderStyle = ubsInset
              FieldLabel = 'Data do Desembara'#231'o'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cVolumes: TUniDBEdit
              Left = 8
              Top = 738
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Volumes'
              DataSource = dsProcessosImp
              TabOrder = 4
              FieldLabel = 'Volumes'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cVolumesChange
            end
            object cQuantidade: TUniDBEdit
              Left = 8
              Top = 711
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Quantidade'
              DataSource = dsProcessosImp
              TabOrder = 5
              FieldLabel = 'Quantidade Total'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cPeso_Liquido: TUniDBEdit
              Left = 8
              Top = 765
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Peso_Liquido'
              DataSource = dsProcessosImp
              TabOrder = 6
              FieldLabel = 'Peso L'#237'quido'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cPeso_Bruto: TUniDBEdit
              Left = 312
              Top = 765
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Peso_Bruto'
              DataSource = dsProcessosImp
              TabOrder = 7
              FieldLabel = 'Peso Bruto'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cEspecie: TUniDBEdit
              Left = 312
              Top = 736
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Especie'
              DataSource = dsProcessosImp
              TabOrder = 8
              FieldLabel = 'Esp'#233'cie'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cVolumesChange
            end
            object cProcesso: TUniDBEdit
              Left = 8
              Top = 36
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Processo'
              DataSource = dsProcessosImp
              TabOrder = 9
              FieldLabel = 'Processo N'#186
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
              OnChange = cProcessoChange
              OnExit = cProcessoExit
            end
            object clCliente: TUniDBLookupComboBox
              Left = 8
              Top = 252
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dstClientes
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Cliente'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Cliente'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
              OnExit = clClienteExit
            end
            object cProcesso_Abertura: TUniDBDateTimePicker
              Left = 8
              Top = 63
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Processo_Abertura'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 11
              BorderStyle = ubsInset
              FieldLabel = 'Abertura'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnChange = cProcesso_AberturaChange
            end
            object cProcesso_Fechamento: TUniDBDateTimePicker
              Left = 312
              Top = 63
              Width = 280
              Height = 25
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Processo_Fechamento'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 12
              BorderStyle = ubsInset
              FieldLabel = 'Fechamento'
              FieldLabelSeparator = ' '
            end
            object clModalidade_Importacao: TUniDBLookupComboBox
              Left = 8
              Top = 279
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstModal
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Modalidade'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Modalidade'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
              OnExit = clModalidade_ImportacaoExit
            end
            object cIncentivo: TUniDBLookupComboBox
              Left = 8
              Top = 198
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Estado; Nome'
              ListSource = dstBeneficio
              KeyField = 'Nome'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Beneficio_Fiscal'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Incentivo Fiscal'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object clResponsavel: TUniDBLookupComboBox
              Left = 8
              Top = 306
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Matricula;Nome'
              ListSource = dstUsuarios
              KeyField = 'Matricula'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Responsavel'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Respons'#225'vel'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cProcesso_Mestre: TUniDBLookupComboBox
              Left = 8
              Top = 117
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Processo'
              ListSource = dstMestre
              KeyField = 'Processo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Processo_Mestre'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 16
              Color = clWindow
              FieldLabel = 'Mestre'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
              OnExit = cProcesso_MestreExit
            end
            object cData_Encerramento: TUniDBDateTimePicker
              Left = 8
              Top = 90
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_Encerramento'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 17
              BorderStyle = ubsInset
              FieldLabel = 'Encerramento'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCondicaoVenda: TUniDBLookupComboBox
              Left = 8
              Top = 225
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstIncoterms
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Incoterms'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 18
              Color = clWindow
              FieldLabel = 'INCOTERMS'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cReferencia_Cliente: TUniDBEdit
              Left = 8
              Top = 144
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Referencia_Cliente'
              DataSource = dsProcessosImp
              TabOrder = 19
              FieldLabel = 'Ref.(Cliente)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cReferencia_DataEntrega: TUniDBDateTimePicker
              Left = 312
              Top = 144
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Referencia_DataEntrega'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 20
              BorderStyle = ubsInset
              FieldLabel = 'Data da Entrega'
              FieldLabelSeparator = ' '
            end
            object cData: TUniDBDateTimePicker
              Left = 312
              Top = 36
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 21
              BorderStyle = ubsInset
              FieldLabel = 'Data'
              FieldLabelSeparator = ' '
            end
            object cReferencia_Despachante: TUniDBEdit
              Left = 8
              Top = 171
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Referencia_Despachante'
              DataSource = dsProcessosImp
              TabOrder = 22
              FieldLabel = 'Ref.(Despachante)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cNavio_DataChegada: TUniDBDateTimePicker
              Left = 312
              Top = 549
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Navio_DataChegada'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 23
              BorderStyle = ubsInset
              FieldLabel = 'Data da Chegada'
              FieldLabelSeparator = ' '
            end
            object cNumero_Fatura: TUniDBEdit
              Left = 8
              Top = 387
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Numero_Fatura'
              DataSource = dsProcessosImp
              TabOrder = 24
              FieldLabel = 'Fatura N'#186
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cNome_Transporte: TUniDBEdit
              Left = 312
              Top = 522
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Nome_Transporte'
              DataSource = dsProcessosImp
              TabOrder = 25
              FieldLabel = 'Nome Transporte'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cConhecimento: TUniDBEdit
              Left = 312
              Top = 576
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Conhecimento_Embarque'
              DataSource = dsProcessosImp
              TabOrder = 26
              FieldLabel = 'Conhec. Embarque'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cAgencia_Maritima: TUniDBEdit
              Left = 8
              Top = 603
              Width = 584
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Agencia_Maritima'
              DataSource = dsProcessosImp
              TabOrder = 27
              FieldLabel = 'Ag'#234'ncia'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cNavio_DataPrevista: TUniDBDateTimePicker
              Left = 8
              Top = 549
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Navio_DataPrevista'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 28
              BorderStyle = ubsInset
              FieldLabel = 'Data Prevista'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object clTipo_Mercadoria: TUniDBLookupComboBox
              Left = 8
              Top = 495
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstFuncaoProd
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Tipo_Mercadoria'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 29
              Color = clWindow
              FieldLabel = 'Tipo Mercadoria'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cData_Fatura: TUniDBDateTimePicker
              Left = 312
              Top = 387
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_Fatura'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 30
              BorderStyle = ubsInset
              FieldLabel = 'Data'
              FieldLabelSeparator = ' '
            end
            object cDocumento_Carga: TUniDBEdit
              Left = 8
              Top = 576
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Documento_Carga'
              DataSource = dsProcessosImp
              TabOrder = 31
              FieldLabel = 'Documento de Carga N'#186
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cValor_FaturaME: TUniDBEdit
              Left = 8
              Top = 414
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FaturaME'
              DataSource = dsProcessosImp
              TabOrder = 32
              FieldLabel = 'Valor Fatura (ME)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cData_BL: TUniDBDateTimePicker
              Left = 8
              Top = 630
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_BL'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 33
              BorderStyle = ubsInset
              FieldLabel = 'Data BL'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCondicaoCambio: TUniDBLookupComboBox
              Left = 8
              Top = 441
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dstCondCambial
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Condicao_Cambio'
              DataSource = dsProcessosImp
              TabOrder = 34
              Color = clWindow
              FieldLabel = 'Condi'#231#227'o Cambial'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object clFornecedor: TUniDBLookupComboBox
              Left = 8
              Top = 468
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dstExportador
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Exportador'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 35
              Color = clWindow
              FieldLabel = 'Exportador'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cROF_Numero: TUniDBEdit
              Left = 8
              Top = 657
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'ROF_Numero'
              DataSource = dsProcessosImp
              TabOrder = 36
              FieldLabel = 'ROF N'#186
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cROF_Emissao: TUniDBDateTimePicker
              Left = 8
              Top = 684
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'ROF_Emissao'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 37
              BorderStyle = ubsInset
              FieldLabel = 'Emiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cROF_Dias: TUniDBEdit
              Left = 312
              Top = 657
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'ROF_Dias'
              DataSource = dsProcessosImp
              TabOrder = 38
              FieldLabel = 'Vencimento (Dias)'
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object clVia_Transporte: TUniDBLookupComboBox
              Left = 8
              Top = 522
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstViaTransp
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Via_Transporte'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 39
              Color = clWindow
              FieldLabel = 'Via de Transporte'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cCanal: TUniDBComboBox
              Left = 312
              Top = 90
              Width = 280
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Canal_SISCOMEX'
              DataSource = dsProcessosImp
              Items.Strings = (
                'Verde'
                'Amarelo'
                'Vemelho'
                'Cinza')
              TabOrder = 40
              FieldLabel = 'Canal'
              FieldLabelSeparator = ' '
              IconItems = <>
              Mode = umNameValue
            end
            object cEmpresa: TUniDBLookupComboBox
              Left = 8
              Top = 9
              Width = 585
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'CNPJ;Unidade;Estado'
              ListSource = dsEmpresas
              KeyField = 'CNPJ'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Empresa'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 41
              Color = clWindow
              RemoteQuery = True
              FieldLabel = 'Empresa'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
          end
          object PainelInterno3: TUniPanel
            Left = 618
            Top = 8
            Width = 500
            Height = 285
            Hint = ''
            ShowHint = True
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'CARACTER'#205'STICAS DA IMPORTA'#199#195'O'
            Caption = ''
            object cPreco_Venda: TUniDBCheckBox
              Left = 8
              Top = 108
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Preco_Venda'
              DataSource = dsProcessosImp
              Caption = 'Utiliza o valor de entrada dos produtos como valor de venda'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cRateia_FretePeso: TUniDBCheckBox
              Left = 8
              Top = 128
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Rateia_FretePeso'
              DataSource = dsProcessosImp
              Caption = 'Este processo rateia o valor das despesas pelo peso.'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cRemover_FreteNacBC: TUniDBCheckBox
              Left = 8
              Top = 148
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Remover_FreteNacBC'
              DataSource = dsProcessosImp
              Caption = 
                'Remover Valor do Frete em Territ'#243'rio Nacional da B.C. dos Impost' +
                'os'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cICMS_DIferido: TUniDBCheckBox
              Left = 8
              Top = 88
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_DIferido'
              DataSource = dsProcessosImp
              Caption = 'ICMS Diferido'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 8
              Top = 8
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Courrier'
              DataSource = dsProcessosImp
              Caption = 'Courrier'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 8
              Top = 228
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Desativado'
              DataSource = dsProcessosImp
              Caption = 'Desativado'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 8
              Top = 48
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Entreposto'
              DataSource = dsProcessosImp
              Caption = 'Entreposto'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 8
              Top = 28
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'DA'
              DataSource = dsProcessosImp
              Caption = 'Desemb.Aduaneiro (DA)'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 8
              Top = 68
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Admissao_Temporaria'
              DataSource = dsProcessosImp
              Caption = 'Adm.Tempor'#225'ria'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 8
              Top = 187
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Apuracao_PISCOFINS'
              DataSource = dsProcessosImp
              Caption = 'Apura PIS/COFINS'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 8
              Top = 168
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Exonerado'
              DataSource = dsProcessosImp
              Caption = 'Exonerado'
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox8: TUniDBCheckBox
              Left = 8
              Top = 208
              Width = 360
              Height = 18
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_Bloqueado'
              DataSource = dsProcessosImp
              Caption = 'Estoque da Declara'#231#227'o Bloqueado'
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 235
          Top = 1068
          Width = 864
          Height = 13
          Hint = ''
          ParentColor = False
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 2
      Caption = 'Outras Informa'#231#245'es'
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 862
        object UniPanel3: TUniPanel
          Left = 96
          Top = 18
          Width = 805
          Height = 844
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
          object cCondicao_Pgto: TUniDBEdit
            Left = 20
            Top = 154
            Width = 347
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Condicao_Pgto'
            DataSource = dsProcessosImp
            TabOrder = 1
            FieldLabel = 'Condi'#231#227'o Pagamento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cLocal_Embarque: TUniDBEdit
            Left = 383
            Top = 154
            Width = 326
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsProcessosImp
            TabOrder = 2
            FieldLabel = 'Local Embarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cLocal_Desembarque: TUniDBEdit
            Left = 20
            Top = 100
            Width = 347
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Desembarque'
            DataSource = dsProcessosImp
            TabOrder = 3
            FieldLabel = 'Local Desembarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object clUF_Desembaraco: TUniDBLookupComboBox
            Left = 383
            Top = 127
            Width = 326
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'UF;Nome'
            ListSource = dstEstados
            KeyField = 'UF'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'UF_Desembaraco'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'UF Desemb.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cMargem_Lucro: TUniDBEdit
            Left = 20
            Top = 262
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Margem_Lucro'
            DataSource = dsProcessosImp
            TabOrder = 5
            FieldLabel = 'Margem de Lucro'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDesconto_Operacional: TUniDBEdit
            Left = 20
            Top = 289
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Operacional'
            DataSource = dsProcessosImp
            TabOrder = 6
            FieldLabel = 'Desconto Operacional'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDesconto_Adicional: TUniDBEdit
            Left = 20
            Top = 316
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Adicional'
            DataSource = dsProcessosImp
            TabOrder = 7
            FieldLabel = 'Desconto Adicional'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object clLocal_Desembaraco: TUniDBLookupComboBox
            Left = 20
            Top = 127
            Width = 347
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dstLocalDesemb
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Local_Desembaraco'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Local Desembara'#231'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object GroupBox6: TUniGroupBox
            Left = 20
            Top = 383
            Width = 763
            Height = 228
            Hint = ''
            ShowHint = True
            Caption = 'Previs'#245'es'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cFator_FaturamentoValor: TUniDBEdit
              Left = 253
              Top = 153
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorFaturamento'
              DataSource = dsProcessosImp
              TabOrder = 13
              FieldLabel = 'ME'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFator_SISCOMEXValor: TUniDBEdit
              Left = 253
              Top = 18
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorSISCOMEX'
              DataSource = dsProcessosImp
              TabOrder = 2
              FieldLabel = 'ME'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cData_PrevRegistro: TUniDBDateTimePicker
              Left = 11
              Top = 18
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_PrevRegistro'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 1
              BorderStyle = ubsInset
              FieldLabel = 'Previs'#227'o Registro'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cData_PrevFaturamento: TUniDBDateTimePicker
              Left = 11
              Top = 153
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_PrevFaturamento'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 12
              BorderStyle = ubsInset
              FieldLabel = 'Previs'#227'o Faturamento'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCondicao_Pagamento: TUniDBEdit
              Left = 11
              Top = 180
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Condicao_Pagamento'
              DataSource = dsProcessosImp
              TabOrder = 15
              FieldLabel = 'Condi'#231#227'o Pgto. (Dupl)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFator_FreteValor: TUniDBEdit
              Left = 253
              Top = 45
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorFrete'
              DataSource = dsProcessosImp
              TabOrder = 5
              FieldLabel = 'ME'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cData_PrevFrete: TUniDBDateTimePicker
              Left = 11
              Top = 45
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_PrevFrete'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 4
              BorderStyle = ubsInset
              FieldLabel = 'Previs'#227'o Frete'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object clPrevisao_FreteTransportador: TUniDBLookupComboBox
              Left = 11
              Top = 72
              Width = 640
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Previsao_FreteTransportador'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Fornecedor'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cFator_FaturamentoValorReal: TUniDBEdit
              Left = 496
              Top = 153
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorFaturamentoReal'
              DataSource = dsProcessosImp
              TabOrder = 14
              FieldLabel = 'R$'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFator_SISCOMEXValorReal: TUniDBEdit
              Left = 496
              Top = 18
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorSISCOMEXReal'
              DataSource = dsProcessosImp
              TabOrder = 3
              FieldLabel = 'R$'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFator_FreteValorReal: TUniDBEdit
              Left = 496
              Top = 45
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorFreteReal'
              DataSource = dsProcessosImp
              TabOrder = 6
              FieldLabel = 'R$'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cFator_ArmazemValor: TUniDBEdit
              Left = 253
              Top = 99
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorArmazem'
              DataSource = dsProcessosImp
              TabOrder = 9
              FieldLabel = 'ME'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
            object cData_PrevArmazem: TUniDBDateTimePicker
              Left = 11
              Top = 99
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Data_PrevArmazem'
              DataSource = dsProcessosImp
              DateTime = 45000.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 8
              BorderStyle = ubsInset
              FieldLabel = 'Previs'#227'o Armazenagem'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object clPrevisao_ArmazemFornecedor: TUniDBLookupComboBox
              Left = 11
              Top = 126
              Width = 640
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Previsao_ArmazemFornecedor'
              DataSource = dsProcessosImp
              AnyMatch = True
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Fornecedor'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cFator_ArmazemValorReal: TUniDBEdit
              Left = 496
              Top = 99
              Width = 238
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Valor_FatorArmazemReal'
              DataSource = dsProcessosImp
              TabOrder = 10
              FieldLabel = 'R$'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              BorderStyle = ubsInset
            end
          end
          object cMargem_LucroValor: TUniDBEdit
            Left = 383
            Top = 262
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_MargemLucro'
            DataSource = dsProcessosImp
            TabOrder = 10
            FieldLabel = '.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDesconto_OperacionalValor: TUniDBEdit
            Left = 383
            Top = 289
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_DescontoOperacional'
            DataSource = dsProcessosImp
            TabOrder = 11
            FieldLabel = '.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDesconto_AdicionalValor: TUniDBEdit
            Left = 383
            Top = 316
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_DescontoAdicional'
            DataSource = dsProcessosImp
            TabOrder = 12
            FieldLabel = '.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cVencimento_Cambio: TUniDBEdit
            Left = 20
            Top = 343
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_Cambio'
            DataSource = dsProcessosImp
            TabOrder = 13
            FieldLabel = 'Per'#237'odo Pgto.C'#226'mbio'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cPais_Origem: TUniDBLookupComboBox
            Left = 20
            Top = 73
            Width = 346
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dstPaises
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Pais_Origem'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Pa'#237's Origem'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cObservacao: TUniDBMemo
            Left = 20
            Top = 648
            Width = 758
            Height = 118
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsProcessosImp
            BorderStyle = ubsInset
            ScrollBars = ssVertical
            TabOrder = 15
            FieldLabel = 'Observa'#231#245'es'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cCSTPIS: TUniDBLookupComboBox
            Left = 20
            Top = 181
            Width = 647
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCSTPIS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CST_PIS'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 16
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'CST PIS'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cCSTCOFINS: TUniDBLookupComboBox
            Left = 20
            Top = 208
            Width = 647
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCSTCOFINS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CST_COFINS'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 17
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'CST COFINS'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cBCCredito: TUniDBComboBox
            Left = 20
            Top = 235
            Width = 647
            Height = 25
            Hint = ''
            ShowHint = True
            AnyMatch = True
            DataField = 'Codigo_BCCredito'
            DataSource = dsProcessosImp
            Items.Strings = (
              '01 | Aquisi'#231#227'o de bens para revenda'
              '02 | Aquisi'#231#227'o de bens utilizados como insumo'
              '03 | Aquisi'#231#227'o de servi'#231'os utilizados como insumo'
              '04 | Energia el'#233'trica e t'#233'rmica, inclusive sob a forma de vapor'
              '05 | Alugu'#233'is de pr'#233'dios'
              '06 | Alugu'#233'is de m'#225'quinas e equipamentos'
              '07 | Armazenagem de mercadoria e frete na opera'#231#227'o de venda'
              '08 | Contrapresta'#231#245'es de arrendamento mercantil'
              
                '09 | M'#225'quinas, equipamentos e outros bens incorporados ao ativo ' +
                'imobilizado (cr'#233'dito sobre encargos de deprecia'#231#227'o).'
              
                '10 | M'#225'quinas, equipamentos e outros bens incorporados ao ativo ' +
                'imobilizado (cr'#233'dito com base no valor de aquisi'#231#227'o).'
              
                '11 | Amortiza'#231#227'o e Deprecia'#231#227'o de edifica'#231#245'es e benfeitorias em ' +
                'im'#243'veis'
              '12 | Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o|Cumulativa'
              '13 | Outras Opera'#231#245'es com Direito a Cr'#233'dito'
              '14 | Atividade de Transporte de Cargas | Subcontrata'#231#227'o'
              
                '15 | Atividade Imobili'#225'ria | Custo Incorrido de Unidade Imobili'#225 +
                'ria'
              
                '16 | Atividade Imobili'#225'ria | Custo Or'#231'ado de unidade n'#227'o conclu'#237 +
                'da'
              
                '17 | Atividade de Presta'#231#227'o de Servi'#231'os de Limpeza, Conserva'#231#227'o ' +
                'e Manuten'#231#227'o | vale|transporte, vale|refei'#231#227'o ou vale|alimenta'#231#227 +
                'o, fardamento ou uniforme.'
              '18 | Estoque de abertura de bens')
            TabOrder = 18
            FieldLabel = 'C'#243'd.B.C dos Cr'#233'ditos'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
            NormalizeString = True
          end
          object cConsignatario_CNPJ: TUniDBEdit
            Left = 20
            Top = 19
            Width = 346
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Consignatario_CNPJ'
            DataSource = dsProcessosImp
            MaxLength = 18
            TabOrder = 19
            FieldLabel = 'CNPJ Consignat'#225'rio '
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cRecinto_Aduaneiro: TUniDBLookupComboBox
            Left = 20
            Top = 46
            Width = 689
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dstRecintoAdua
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Recinto_Aduaneiro'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 20
            Color = clWindow
            FieldLabel = 'Recinto Aduaneiro'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cConsignatario_UF: TUniDBLookupComboBox
            Left = 383
            Top = 19
            Width = 326
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'UF;Nome'
            ListSource = dstEstados
            KeyField = 'UF'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Consignatario_UF'
            DataSource = dsProcessosImp
            AnyMatch = True
            TabOrder = 21
            Color = clWindow
            FieldLabel = 'Consignat'#225'rio UF'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = 'Inf Compl'
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1273
          1135)
        ScrollHeight = 1625
        object UniPanel4: TUniPanel
          Left = 180
          Top = 23
          Width = 811
          Height = 1602
          Hint = ''
          Enabled = False
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cTexto: TUniDBMemo
            AlignWithMargins = True
            Left = 10
            Top = 10
            Width = 791
            Height = 1582
            Hint = ''
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            ShowHint = True
            DataField = 'Texto'
            DataSource = dsTexto
            BorderStyle = ubsInset
            ParentFont = False
            Font.Height = -12
            Font.Name = 'Courier New'
            Align = alClient
            TabOrder = 1
            FieldLabel = 'Informa'#231#245'es Complementares'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object TabSheet8: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = ' Financeiro'
      object UniScrollBox5: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 630
        object UniPanel5: TUniPanel
          Left = 80
          Top = 29
          Width = 1107
          Height = 601
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
          TitleVisible = True
          TitleAlign = taCenter
          Title = 'MOVIMENTA'#199#195'O FINANCEIRA'
          Caption = ''
          Color = clTeal
          object bDespesas: TUniSpeedButton
            Left = 922
            Top = 409
            Width = 129
            Height = 35
            Hint = '  Contas a pagar/Receber.  '
            ShowHint = True
            ParentShowHint = False
            Caption = 'Gerar Contas a Pagar'
            ParentColor = False
            TabOrder = 1
          end
          object Grade2: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 847
            Height = 595
            Hint = ''
            ShowHint = True
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados ...'
            ForceFit = True
            BorderStyle = ubsInset
            Align = alLeft
            TabOrder = 2
            ParentColor = False
            Color = clWhite
            OnDblClick = bEditarClick
            Columns = <
              item
                FieldName = 'Classificacao'
                Title.Alignment = taCenter
                Title.Caption = 'Class'
                Width = 117
                ReadOnly = True
              end
              item
                FieldName = 'DescricaoClassificacao'
                Title.Alignment = taCenter
                Title.Caption = 'Despesa'
                Width = 372
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
          object UniGroupBox1: TUniGroupBox
            Left = 868
            Top = 3
            Width = 224
            Height = 133
            Hint = ''
            ShowHint = True
            Caption = 'Custo Geral'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cPgtoSai: TUniFormattedNumberEdit
              Left = 8
              Top = 42
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              Color = 12189695
              ReadOnly = True
              FieldLabel = 'Sa'#237'da'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cPgtoSel: TUniFormattedNumberEdit
              Left = 8
              Top = 96
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              Color = 12189695
              ReadOnly = True
              FieldLabel = 'Seletivo'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cPgtoEnt: TUniFormattedNumberEdit
              Left = 8
              Top = 15
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 3
              Color = 12189695
              ReadOnly = True
              FieldLabel = 'Entrada'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cPgtoOut: TUniFormattedNumberEdit
              Left = 8
              Top = 69
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 4
              Color = 12189695
              ReadOnly = True
              FieldLabel = 'Outros'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniGroupBox3: TUniGroupBox
            Left = 868
            Top = 150
            Width = 224
            Height = 108
            Hint = ''
            ShowHint = True
            Caption = 'Processo Mestre'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cTotalMestreDespesas2: TUniFormattedNumberEdit
              Left = 8
              Top = 42
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Pagamentos'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalMestreCusto2: TUniFormattedNumberEdit
              Left = 8
              Top = 15
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Custo Geral'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cMestreRecebimentos2: TUniFormattedNumberEdit
              Left = 8
              Top = 69
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 3
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Recebimentos'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniGroupBox4: TUniGroupBox
            Left = 868
            Top = 275
            Width = 224
            Height = 111
            Hint = ''
            ShowHint = True
            Caption = 'Total Geral'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cTotalCusto2: TUniFormattedNumberEdit
              Left = 8
              Top = 17
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 1
              Color = 16763594
              ReadOnly = True
              FieldLabel = 'Custo'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalRecebimentos2: TUniFormattedNumberEdit
              Left = 8
              Top = 44
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 2
              Color = 16763594
              ReadOnly = True
              FieldLabel = 'Pagamentos'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalPagamentos2: TUniFormattedNumberEdit
              Left = 8
              Top = 71
              Width = 200
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              TabOrder = 3
              Color = 16763594
              ReadOnly = True
              FieldLabel = 'Recebimentos'
              FieldLabelWidth = 70
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
        end
      end
    end
    object TabSheet9: TUniTabSheet
      Hint = ''
      ImageIndex = 8
      Caption = 'Seriais'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 555
        object UniPanel6: TUniPanel
          Left = 0
          Top = 29
          Width = 1061
          Height = 526
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
          TitleVisible = True
          TitleAlign = taCenter
          Title = 'RELA'#199#195'O DE CHASSIS / SERIAIS'
          Caption = ''
          Color = clTeal
          object RxDBGrid1: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1055
            Height = 520
            Hint = ''
            ShowHint = True
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados ...'
            ForceFit = True
            BorderStyle = ubsInset
            Align = alClient
            TabOrder = 1
            ParentColor = False
            Color = clWhite
            OnDblClick = bEditarClick
            Columns = <
              item
                FieldName = 'DI'
                Title.Alignment = taCenter
                Title.Caption = 'DI'
                Width = 87
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Adicao'
                Title.Alignment = taCenter
                Title.Caption = 'Adi'#231#227'o'
                Width = 44
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Item'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Width = 42
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'NCM'
                Title.Alignment = taCenter
                Title.Caption = 'NCM'
                Width = 74
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Produto_Codigo'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Width = 119
                ReadOnly = True
              end
              item
                FieldName = 'Serial'
                Title.Alignment = taCenter
                Title.Caption = 'Serial/Chassi'
                Width = 64
                ReadOnly = True
              end>
          end
        end
      end
    end
    object TabSheet7: TUniTabSheet
      Hint = ''
      ImageIndex = 6
      Caption = 'Containers'
      object UniScrollBox7: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 564
        object UniPanel7: TUniPanel
          Left = 0
          Top = 29
          Width = 1061
          Height = 535
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
          TitleVisible = True
          TitleAlign = taCenter
          Title = 'RELA'#199#195'O DE CONTAINERS'
          Caption = ''
          Color = clTeal
          object DBGrid2: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1055
            Height = 400
            Hint = ''
            ShowHint = True
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados ...'
            ForceFit = True
            BorderStyle = ubsInset
            Align = alTop
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Numero'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Width = 120
              end
              item
                FieldName = 'Processo'
                Title.Alignment = taCenter
                Title.Caption = 'Processo'
                Width = 128
              end
              item
                FieldName = 'Documento_Carga'
                Title.Alignment = taCenter
                Title.Caption = 'Doc. de Carga'
                Width = 151
              end
              item
                FieldName = 'Data_Entrada'
                Title.Alignment = taCenter
                Title.Caption = 'Entrada'
                Width = 65
                Alignment = taCenter
              end
              item
                FieldName = 'Hora_Entrada'
                Title.Alignment = taCenter
                Title.Caption = 'Hr Entrada'
                Width = 64
                Alignment = taCenter
              end
              item
                FieldName = 'Data_Saida'
                Title.Alignment = taCenter
                Title.Caption = 'Sa'#237'da'
                Width = 65
                Alignment = taCenter
              end
              item
                FieldName = 'Hora_Saida'
                Title.Alignment = taCenter
                Title.Caption = 'Hr Sa'#237'da'
                Width = 55
                Alignment = taCenter
              end
              item
                FieldName = 'Free_Time'
                Title.Alignment = taCenter
                Title.Caption = 'F.Time'
                Width = 42
              end
              item
                FieldName = 'Terminal'
                Title.Alignment = taCenter
                Title.Caption = 'Terminal'
                Width = 217
              end
              item
                FieldName = 'Valor_Demurrage'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 111
              end>
          end
          object bCadastroContainer: TUniButton
            Left = 453
            Top = 413
            Width = 137
            Height = 35
            Cursor = crHandPoint
            Hint = '  Ativa ou desativa processos.'
            ShowHint = True
            ParentShowHint = False
            Caption = 'Cadastro de Containers'
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'Hist'#243'rico'
      object UniScrollBox10: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 650
        object UniPanel10: TUniPanel
          Left = -2
          Top = 29
          Width = 1126
          Height = 621
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
          TitleVisible = True
          TitleAlign = taCenter
          Title = 'HIST'#211'RICO DE ANDAMENTO D(FOLLOW-UP)'
          Caption = ''
          Color = clTeal
          object DBGrid1: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1120
            Height = 513
            Hint = ''
            ShowHint = True
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados ...'
            ForceFit = True
            Align = alTop
            TabOrder = 1
            OnDblClick = bEditarClick
            Columns = <
              item
                FieldName = 'Data'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 120
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Hora'
                Title.Alignment = taCenter
                Title.Caption = 'Hora'
                Width = 60
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Processo'
                Title.Alignment = taCenter
                Title.Caption = 'Processo'
                Width = 120
                ReadOnly = True
              end
              item
                FieldName = 'Documento'
                Title.Alignment = taCenter
                Title.Caption = 'Documento'
                Width = 120
                ReadOnly = True
              end
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Descricao'
                Width = 606
                ReadOnly = True
              end>
          end
          object bHistorico: TUniButton
            Left = 522
            Top = 536
            Width = 84
            Height = 42
            Cursor = crHandPoint
            Hint = '  Ativa ou desativa processos.'
            ShowHint = True
            ParentShowHint = False
            Caption = 'Editar'
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet10: TUniTabSheet
      Hint = ''
      Caption = 'Documentos'
      object UniScrollBox9: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1292
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1290
          1135)
        ScrollHeight = 629
        object UniPanel9: TUniPanel
          Left = 15
          Top = 26
          Width = 1138
          Height = 603
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
          TitleVisible = True
          TitleAlign = taCenter
          Title = 'RELA'#199#195'O DE DOCUMENTOS'
          Caption = ''
          Color = clTeal
          object cListaDOC: TUniListBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1132
            Height = 503
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Align = alTop
            TabOrder = 1
            Sorted = True
            BorderStyle = ubsInset
            OnDblClick = cListaDOCDblClick
          end
          object bDocumento: TUniBitBtn
            Left = 603
            Top = 514
            Width = 157
            Height = 42
            Hint = ''
            ShowHint = True
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              20000000000000100000C40E0000C40E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000FF000000FF000000FF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000FF000000FF0092DCFF0092DCFF000000FF0000
              00FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF000000FF0000
              00FF6E6E6EFF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000FF0000
              00FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF000000FF0000
              00FF6E6E6EFF929292FF00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000FF0092DCFF00AA
              FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FF0000
              00FF6E6E6EFF6E6E6EFF929292FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000FF000000FF0092DCFF00AAFFFF00AA
              FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFAAAAAAFF0000
              00FF262626FF6E6E6EFF7A7A7AFF929292FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AA
              FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFAAAAAAFF0000
              00FF262626FF6E6E6EFF6E6E6EFF7A7A7AFF929292FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AA
              FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFCECECEFF1A1A
              1AFF000000FF6E6E6EFF7A7A7AFF7A7A7AFF7A7A7AFF929292FF000000000000
              0000000000000000000000000000000000000000000000000000000000FF0092
              DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8
              FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFCECECEFF1A1A
              1AFF000000FF6E6E6EFF7A7A7AFF929292FF929292FF00000000000000000000
              000000000000000000000000000000000000000000FF000000FF0092DCFF00AA
              FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8
              FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FFCECECEFF0000
              00FF000000FF6E6E6EFF9E9E9EFF000000000000000000000000000000000000
              0000000000000000000000000000000000FF0092DCFF00AAFFFF00AAFFFF00AA
              FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8
              FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FF868686FFDADADAFF0000
              00FF000000FF6E6E6EFF00000000000000000000000000000000000000000000
              0000000000000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AA
              FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6
              FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FFDADADAFFDADADAFF0000
              00FF006296FF000000FF00000000000000000000000000000000000000000000
              00000000000000000000000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AA
              FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
              00FF006296FF000000FF00000000000000000000000000000000000000000000
              00000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AA
              FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
              00FF006296FF000000FF00000000000000000000000000000000000000000000
              00000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8
              FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
              00FF006296FF006296FF000000FF000000000000000000000000000000000000
              00000000000000000000000000FF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8
              FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
              00FF006296FF006296FF000000FF000000000000000000000000000000000000
              000000000000000000FF0092DCFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF48B8
              FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8
              FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FFAAAA
              AAFF000000FF006296FF000000FF000000000000000000000000000000000000
              000000000000000000FF00AAFFFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8
              FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FFDADADAFFFFFFFFFFFFFF
              FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
              000000000000000000FF00AAFFFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF48B8
              FFFF00AAFFFF00AAFFFF0092DCFF000000FFDADADAFFDADADAFFF2F2F2FFFFFF
              FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
              0000000000FF0092DCFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF00AA
              FFFF0092DCFF000000FF000000FFDADADAFFE6E6E6FFE6E6E6FFFFFFFFFFFFFF
              FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
              0000000000FF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
              FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FF0000
              00FF000000FFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFF
              FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
              0000000000FF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8
              FFFF48B8FFFF00AAFFFF0092DCFF000000FF000000FF000000FFDADADAFFDADA
              DAFFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000000FF007AB9FF007AB9FF007AB9FF000000FF00000000000000000000
              0000000000FF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF48B8FFFF00AAFFFF00AA
              FFFF0092DCFF000000FF000000FF000000FFDADADAFFDADADAFFE6E6E6FFE6E6
              E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000000FF007AB9FF0092DCFF0092DCFF000000FF00000000000000000000
              00FF0092DCFF00AAFFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF0092DCFF0000
              00FF000000FFDADADAFFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFCECECEFF000000FF0000
              00FF007AB9FF0092DCFF0092DCFF0092DCFF000000FF00000000000000000000
              00FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0092DCFF000000FF000000FFDADA
              DAFFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF000000FF000000FF007AB9FF007A
              B9FF0092DCFF0092DCFF0092DCFF007AB9FF000000FF00000000000000000000
              00FF0092DCFF0092DCFF000000FF000000FF000000FFDADADAFFDADADAFFE6E6
              E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCECECEFF000000FF000000FF000000FF007AB9FF0092DCFF0092DCFF0092
              DCFF0092DCFF0092DCFF0092DCFF000000FF0000000000000000000000000000
              0000000000FF000000FF0000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
              E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF000000FF0000
              00FF000000FF007AB9FF0092DCFF0092DCFF0092DCFF0092DCFF0092DCFF0092
              DCFF0092DCFF0092DCFF007AB9FF000000FF0000000000000000000000000000
              000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFFFFF
              FFFFFFFFFFFFF2F2F2FFFFFFFFFFCECECEFF000000FF000000FF007AB9FF0092
              DCFF0092DCFF007AB9FF000000FF000000FF007AB9FF0092DCFF0092DCFF0092
              DCFF007AB9FF000000FF000000FF000000000000000000000000000000000000
              000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFCECECEFF000000FF000000FF007AB9FF0092DCFF0092DCFF007A
              B9FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFCECE
              CEFF000000FF000000FF007AB9FF0092DCFF0092DCFF007AB9FF000000FF0000
              00FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000FFCECECEFF000000FF0000
              00FF00000000000000FF007AB9FF0092DCFF000000FF000000FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000FF000000000000
              00000000000000000000000000FF000000FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Caption = 'Adicionar DOC'
            TabOrder = 2
          end
          object BitBtn2: TUniBitBtn
            Left = 768
            Top = 514
            Width = 133
            Height = 42
            Hint = ''
            ShowHint = True
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
              A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A30000000000000000000000000000000000000000000000000000000000
              00000000000000000000A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0000000A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000A449A3A449A3A449A3A449A3A449A3A449A3A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080800000800000
              80000080000080000080000080000080000080000080000080000080000080A4
              49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080800000FF0000
              FF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              0080000000000000000000000000000000000000000000000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080800000
              FF0000FF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              800000FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF00
              00FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              808080800000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
              FFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
              FFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
              FFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000FFFFFFFFFFFF0000FF0000FF0000FF0000FF00
              FFFF0000FF0000FF0000FF0000FF0000FF0000FFFFFFFF000000A449A3A449A3
              A449A3C0C0C0FFFFFF8080808080808080808080808080808080808080808080
              80808080808080C0C0C0000000FFFFFFFFFFFFFFFFFF0000FF0000FF00FFFF00
              00FF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFF000000A449A3A449A3
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000FF0000FF00
              FFFF0000FF00FFFF0000FF0000FFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
              A3A449A3A449A3A449A3A449A3000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF00
              00FF00FFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFF
              FFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3C0C0C0FFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFF
              FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3C0C0C0FFFFFFC0C0C0A449A3C0C0C0C0C0C0C0C0
              C0C0C0C0FFFFFFFF0000FFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3C0C0C0A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFF0000FFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFF0000FFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFF000000A449A3A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFF000000A449A3A449A3A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0C0FFFFFF000000A449A3A449A3A449A3A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0C0000000A449A3A449A3A449A3A449A3A449A3A449A3
              A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0000000A449A3A449A3A449A3A449A3A449A3}
            Caption = 'Remover DOC'
            TabOrder = 3
          end
          object BitBtn1: TUniBitBtn
            Left = 908
            Top = 514
            Width = 126
            Height = 42
            Hint = ''
            ShowHint = True
            Glyph.Data = {
              C2050000424DC205000000000000820300002800000018000000180000000100
              08000000000040020000120B0000120B0000D3000000D300000000000000FFFF
              FF00FF00FF000082000000810000005F0000005E0000005C0000005500000051
              0000004D0000004B000001820200018101000288030000800100018703000187
              0400017803000289040001550300026B0400038B0500037F060002550300048E
              07000590080006910A00035C060008680D0006640C000D9C1600096C10000FA4
              1A000C72130007951300067611000997150010A61C0011A71E000F8B190013AA
              200015AD230001500A0017B1280019B52B00138420001BB82E00067B15001BB8
              2F001CBA31001EBC33001AA62D00189029001A962D001C9A31000F8B260021AA
              390020A438001F9F35002ACF48002BD14A0023AB3D002DD34D0013AB320032DA
              560021AA410036E15E0035DE5A0035DA5B000C81290018B43F0018AB3E0039E5
              630038E362003AE7650036D45E003CDE67001BB445003ADA650045F6780046F6
              79001889400019836600167D73000F6C6500219599000B647800288BC2004CBD
              FE004DBFFF003EACF20041B0F40045B4F80048B7FE004CBDFF0060A7D300339E
              E70037A3EB003AA6F2003AA6EE003BA6EF003EA9F40041ACF20043B1F800248A
              D9002991DE002E95E5002F96E6002E97E200339EEB0037A3F2003397DE003DAA
              FC003AA4F2003EAAFC0041AFFF0042B0FF0043B1FF0003569800035596000354
              95000354930004589C000559A00005599E00116CB8001F82D3002386D9002990
              E2002C8EDE003096ED003097E90036A0FA0038A3FC0038A1F600379FF2003EAA
              FE00055AA300065CA700065BA500075DAB00075DA900085EAD000960B1000A63
              B6000A62B4000B64B400116EC5001473C7001574C900197ACE002286E1002184
              D9002486DD002483DA002687DD002582D7002F95F4003097F300349AF600349A
              F40037A0FF0037A0FE0038A1FF0039A3FF000A63B7000B64BA000C65BC000D68
              C2000D67C0000E69C6000F6AC1001370CA00176DC4001C77D300267FDA002886
              E3002784DD002C8FEE003092F2002D659D000F6BCB000F6AC900116ED100106C
              CC00116DCF001372DA001370D800136FD5001473DD001978E1001B79E1001C7D
              E2001E7AD9001B6DC4002482E6001160C0001675E3001573DE001776E6001674
              E1001878EB001877EA001877E9001877E300165CAF001C6DC900166AD4000A4B
              AA001357B5000202020202020202020202020202020202020202020202020202
              0202020202020202CACCC9BB02020202020202020202020202020202020202CD
              CAC8C7BCB8B60202020202020202020202020202020296C1CBC6BEBDBAB7A9A8
              91020202020202020202020202947F6D646F6F98B9ABAAA7928F8B7C02020202
              0202020202976A625C5D595A6399ACA6908D8C7D777A0202020202029569615B
              6582675F5E667681938E8A7B787A0202020202572BAD856C9BC35A686B727489
              87A59F7E797A020202022B55B52BD1BFD071689C9D75738486A2A2A280020202
              020A20526EB2C42B2BD2C0C588A09A83A4A2A20202020202021D3A4D50425358
              CFB42B2BCEAEAFA1A3A20202020202021E3B4F51493C2F1F305470B09EB12BB3
              0202020202020202374C514B3D322119030312465660C2020202020202020202
              3522393F33261A03031125474E380202020202020202020202020B34271B0304
              10234048380202020202020202020202020B3E41210F06071524140202020202
              02020202020202020B3644290D0802020202020202020202020202020202020B
              2E432A0C080202020202020202020202020202020202021D4A2C0E0802020202
              020202020202020202020202020218452D130502020202020202020202020202
              0202020202021C31160602020202020202020202020202020202020202022817
              0902020202020202020202020202020202020202020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              020202020202}
            Caption = 'Limpar Tudo'
            TabOrder = 4
          end
          object BitBtn3: TUniBitBtn
            Left = 1040
            Top = 514
            Width = 86
            Height = 42
            Hint = ''
            ShowHint = True
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000017000000170000000100
              18000000000078060000C40E0000C40E000000000000000000006A2E6E00001E
              00002300001C0000240000230000230000230000230000230000230000230000
              2300002300002300002300002300002300002200002D00002400001D6A2E6E00
              000000001E0000E00000CC0000A40000CF0000CB0000CB0000CB0000CB0000CB
              0000CB0000CB0000CB0000CB0000CB0000CB0000CB0000CB0000C60000FF0000
              D20000DB00001E0000000000270000AE00008400009A0000BE0000BB0000BB00
              00BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB
              0000B60000EB0000C10000CA0000240000000000260000B90000960000990000
              BE0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB00
              00BB0000BB0000BB0000B60000EB0000C10000CA0000240000000000240000CE
              0000BA0000960000BE0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000
              BB0000BB0000BB0000BB0000BB0000BB0000B60000EB0000C10000CA00002400
              00000000240000CC0000B70000960000BE0000BB0000BB0000BB0000BB0000BB
              0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000B60000EB0000
              C10000CA0000240000000000240000CC0000B70000960000BE0000BB0000BB00
              00BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB
              0000B60000EB0000C10000CA0000240000000000240000CC0000B70000960000
              BE0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB00
              00BB0000BB0000BB0000B60000EB0000C10000CA0000240000000000240000CC
              0000B70000960000BE0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000
              BB0000BB0000BB0000BB0000BB0000BB0000B60000EB0000C10000CA00002400
              00000000240000CC0000B70000960000BE0000BB0000BB0000BB0000BB0000BB
              0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000B60000EB0000
              C10000CA0000240000000000240000CC0000B70000960000BE0000BB0000BB00
              00BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB0000BB
              0000B60000EB0000C10000CA0000240000000000240000CC0000B70000930000
              C20000BF0000BF0000BF0000BF0000BF0000BF0000BF0000BF0000BF0000BF00
              00BF0000BF0000BF0000BA0000F10000C20000CA0000240000000000240000CC
              0000BB00009A00008B00008D00008D00008D00008D00008D00008D00008D0000
              8D00008D00008D00008D00008D00008D0000890000B00000BD0000CB00002400
              00000000240000CB0000BB0000BC0000BA0000BA0000BA0000BA0000BA0000BA
              0000BA0000BA0000BA0000BA0000BA0000BA0000BA0000BB0000BF0000BB0000
              BA0000CB0000240000000000240000CB0000B90000D30000F20000F00000F200
              00F20000F20000F20000F20000F20000F10000F00000F00000F20000F20000E7
              0000B20000BB0000BB0000CB0000240000000000240000CC0000B60000970000
              C23231B5B0ACA0A5A1A2A5A1A2A5A1A2A5A1A2A6A2A3B6B2ABB8B5ABB1AEABAB
              A7A06361AD0000BC0000E70000B60000BB0000CB0000240000000000240000CC
              0000B70000950000C1BEB99BA6A29EA5A19EA5A19EA5A19EA8A4A19491867D7C
              C37676D3C8C8E3AAA7A0BBB69A2222B00000F80000B50000BB0000CB00002400
              00000000240000CC0000B70000960000C2B2AD9DA4A09FA4A0A0A4A0A0A4A0A0
              A8A4A482806E0000A40000B89192D7ADAAA1B2AE9C1E1EB20000F60000B50000
              BB0000CB0000240000000000240000CC0000B70000960000C2B2AD9DA4A09FA4
              A0A0A4A0A0A4A0A0A8A4A48583710808A70000BB9797D7ADAAA1B2AE9C1E1EB2
              0000F60000B50000BB0000CD0000250000000000240000CC0000B70000960000
              C2B2AD9DA4A09FA4A0A0A4A0A0A4A0A0A8A4A48583710607A90000BD9797D9AD
              AAA1B2AE9C1E1EB20000F60000B50000BE0000C50000110000000000240000CC
              0000B70000960000C2B2AD9DA4A09FA4A0A0A4A0A0A4A0A0A8A4A48180700909
              9C0000AE9394D0ADA9A2B2AE9C1E1EB20000F60000B80000BB00003B81397800
              000000001E0000DD0000C70000A40000D2C0BBACB3AFAEB2AEAEB2AEAEB2AEAE
              B5B0B09C99998987778A8874A29E97B4AFAFC2BDAB2221C20000FF0000BF0000
              3A7C3768B14EAF0000006A2E6E00001E00002300001C00002523221D1F1E1E1F
              1E1E1F1E1E1F1E1E1F1E1E2221212423232423232120201F1E1E23221D040421
              000031000010823978B14EAFA449A3000000}
            Caption = 'Salvar'
            TabOrder = 5
          end
        end
      end
    end
  end
  object tMestre: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Processo FROM ProcessosImp')
    Left = 41
    Top = 176
  end
  object dstMestre: TDataSource
    DataSet = tMestre
    Left = 41
    Top = 224
  end
  object tClientes: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Cliente = 1')
    Left = 41
    Top = 272
  end
  object dstClientes: TDataSource
    DataSet = tClientes
    Left = 41
    Top = 320
  end
  object tIncoterms: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM Incoterms'
      '')
    Left = 116
    Top = 176
  end
  object dstIncoterms: TDataSource
    DataSet = tIncoterms
    Left = 116
    Top = 224
  end
  object tUsuarios: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM Usuarios')
    Left = 41
    Top = 368
  end
  object dstUsuarios: TDataSource
    DataSet = tUsuarios
    Left = 41
    Top = 416
  end
  object MenuCusto: TPopupMenu
    Left = 618
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
  object ProcessosImp: TFDQuery
    BeforePost = ProcessosImpBeforePost
    BeforeDelete = ProcessosImpBeforeDelete
    AfterScroll = ProcessosImpAfterScroll
    AggregatesActive = True
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProcessosImp')
    Left = 41
    Top = 78
    object ProcessosImpRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
      ReadOnly = True
    end
    object ProcessosImpEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object ProcessosImpProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object ProcessosImpIncoterms: TStringField
      FieldName = 'Incoterms'
      Origin = 'Incoterms'
      FixedChar = True
      Size = 3
    end
    object ProcessosImpEntreposto: TBooleanField
      FieldName = 'Entreposto'
      Origin = 'Entreposto'
    end
    object ProcessosImpDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object ProcessosImpData_Registro: TDateField
      FieldName = 'Data_Registro'
      Origin = 'Data_Registro'
    end
    object ProcessosImpData_Desembaraco: TDateField
      FieldName = 'Data_Desembaraco'
      Origin = 'Data_Desembaraco'
    end
    object ProcessosImpValor_FOB: TCurrencyField
      FieldName = 'Valor_FOB'
      Origin = 'Valor_FOB'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_II: TCurrencyField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpICMS_DIferido: TBooleanField
      FieldName = 'ICMS_DIferido'
      Origin = 'ICMS_DIferido'
    end
    object ProcessosImpAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      Origin = 'Aliquota_ICMS'
    end
    object ProcessosImpValor_ICMS: TCurrencyField
      FieldName = 'Valor_ICMS'
      Origin = 'Valor_ICMS'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpUF_Desembaraco: TStringField
      FieldName = 'UF_Desembaraco'
      Origin = 'UF_Desembaraco'
      FixedChar = True
      Size = 2
    end
    object ProcessosImpQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
    end
    object ProcessosImpVolumes: TFloatField
      FieldName = 'Volumes'
      Origin = 'Volumes'
    end
    object ProcessosImpEspecie: TStringField
      FieldName = 'Especie'
      Origin = 'Especie'
    end
    object ProcessosImpQuantidade_Liberada: TFloatField
      FieldName = 'Quantidade_Liberada'
      Origin = 'Quantidade_Liberada'
    end
    object ProcessosImpQuantidade_Digitada: TFloatField
      FieldName = 'Quantidade_Digitada'
      Origin = 'Quantidade_Digitada'
    end
    object ProcessosImpPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object ProcessosImpPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object ProcessosImpNumero_Fatura: TStringField
      FieldName = 'Numero_Fatura'
      Origin = 'Numero_Fatura'
      Size = 40
    end
    object ProcessosImpData_Fatura: TDateField
      FieldName = 'Data_Fatura'
      Origin = 'Data_Fatura'
    end
    object ProcessosImpValor_FOBME: TCurrencyField
      FieldName = 'Valor_FOBME'
      Origin = 'Valor_FOBME'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpMoeda_FOB: TSmallintField
      FieldName = 'Moeda_FOB'
      Origin = 'Moeda_FOB'
    end
    object ProcessosImpTaxa_FOB: TFloatField
      FieldName = 'Taxa_FOB'
      Origin = 'Taxa_FOB'
    end
    object ProcessosImpValor_FreteME: TCurrencyField
      FieldName = 'Valor_FreteME'
      Origin = 'Valor_FreteME'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpMoeda_Frete: TSmallintField
      FieldName = 'Moeda_Frete'
      Origin = 'Moeda_Frete'
    end
    object ProcessosImpTaxa_Frete: TFloatField
      FieldName = 'Taxa_Frete'
      Origin = 'Taxa_Frete'
    end
    object ProcessosImpValor_SeguroME: TCurrencyField
      FieldName = 'Valor_SeguroME'
      Origin = 'Valor_SeguroME'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpMoeda_Seguro: TSmallintField
      FieldName = 'Moeda_Seguro'
      Origin = 'Moeda_Seguro'
    end
    object ProcessosImpTaxa_Seguro: TFloatField
      FieldName = 'Taxa_Seguro'
      Origin = 'Taxa_Seguro'
    end
    object ProcessosImpCondicao_Pgto: TStringField
      FieldName = 'Condicao_Pgto'
      Origin = 'Condicao_Pgto'
      Size = 50
    end
    object ProcessosImpTipo_Mercadoria: TIntegerField
      FieldName = 'Tipo_Mercadoria'
      Origin = 'Tipo_Mercadoria'
    end
    object ProcessosImpNome_Transporte: TStringField
      FieldName = 'Nome_Transporte'
      Origin = 'Nome_Transporte'
      Size = 30
    end
    object ProcessosImpLocal_Embarque: TStringField
      FieldName = 'Local_Embarque'
      Origin = 'Local_Embarque'
      Size = 30
    end
    object ProcessosImpLocal_Desembarque: TStringField
      FieldName = 'Local_Desembarque'
      Origin = 'Local_Desembarque'
      Size = 30
    end
    object ProcessosImpConhecimento_Embarque: TStringField
      FieldName = 'Conhecimento_Embarque'
      Origin = 'Conhecimento_Embarque'
      Size = 30
    end
    object ProcessosImpData_DOC: TDateField
      FieldName = 'Data_DOC'
      Origin = 'Data_DOC'
    end
    object ProcessosImpAgencia_Maritima: TStringField
      FieldName = 'Agencia_Maritima'
      Origin = 'Agencia_Maritima'
      Size = 40
    end
    object ProcessosImpNavio_DataPrevista: TDateField
      FieldName = 'Navio_DataPrevista'
      Origin = 'Navio_DataPrevista'
    end
    object ProcessosImpNavio_DataChegada: TDateField
      FieldName = 'Navio_DataChegada'
      Origin = 'Navio_DataChegada'
    end
    object ProcessosImpCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Cliente'
    end
    object ProcessosImpProcesso_Abertura: TDateField
      FieldName = 'Processo_Abertura'
      Origin = 'Processo_Abertura'
    end
    object ProcessosImpProcesso_Fechamento: TDateField
      FieldName = 'Processo_Fechamento'
      Origin = 'Processo_Fechamento'
    end
    object ProcessosImpConta_Impostos: TStringField
      FieldName = 'Conta_Impostos'
      Origin = 'Conta_Impostos'
      FixedChar = True
      Size = 11
    end
    object ProcessosImpConta_Despesas: TStringField
      FieldName = 'Conta_Despesas'
      Origin = 'Conta_Despesas'
      FixedChar = True
      Size = 11
    end
    object ProcessosImpBloqueado: TBooleanField
      FieldName = 'Bloqueado'
      Origin = 'Bloqueado'
    end
    object ProcessosImpExportador: TSmallintField
      FieldName = 'Exportador'
      Origin = 'Exportador'
    end
    object ProcessosImpRE_Numero: TStringField
      FieldName = 'RE_Numero'
      Origin = 'RE_Numero'
      Size = 180
    end
    object ProcessosImpRE_DataAverbacao: TDateField
      FieldName = 'RE_DataAverbacao'
      Origin = 'RE_DataAverbacao'
    end
    object ProcessosImpDespachante: TSmallintField
      FieldName = 'Despachante'
      Origin = 'Despachante'
    end
    object ProcessosImpCanal_SISCOMEX: TStringField
      FieldName = 'Canal_SISCOMEX'
      Origin = 'Canal_SISCOMEX'
      Size = 8
    end
    object ProcessosImpValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpVencimento_Cambio: TSmallintField
      FieldName = 'Vencimento_Cambio'
      Origin = 'Vencimento_Cambio'
    end
    object ProcessosImpCourrier: TBooleanField
      FieldName = 'Courrier'
      Origin = 'Courrier'
    end
    object ProcessosImpDocumento_Carga: TStringField
      FieldName = 'Documento_Carga'
      Origin = 'Documento_Carga'
      Size = 30
    end
    object ProcessosImpValor_AdValorem: TCurrencyField
      FieldName = 'Valor_AdValorem'
      Origin = 'Valor_AdValorem'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
      Size = 15
    end
    object ProcessosImpTipo_Declaracao: TSmallintField
      FieldName = 'Tipo_Declaracao'
      Origin = 'Tipo_Declaracao'
    end
    object ProcessosImpNatureza_Exportacao: TSmallintField
      FieldName = 'Natureza_Exportacao'
      Origin = 'Natureza_Exportacao'
    end
    object ProcessosImpTipo_Conhecimento: TSmallintField
      FieldName = 'Tipo_Conhecimento'
      Origin = 'Tipo_Conhecimento'
    end
    object ProcessosImpConta_Adiantamento: TStringField
      FieldName = 'Conta_Adiantamento'
      Origin = 'Conta_Adiantamento'
      FixedChar = True
      Size = 11
    end
    object ProcessosImpModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
    object ProcessosImpResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'Responsavel'
      Size = 15
    end
    object ProcessosImpContainer_Numero: TStringField
      FieldName = 'Container_Numero'
      Origin = 'Container_Numero'
      Size = 15
    end
    object ProcessosImpProcesso_Mestre: TStringField
      FieldName = 'Processo_Mestre'
      Origin = 'Processo_Mestre'
      Size = 15
    end
    object ProcessosImpCNPJ_Importado: TStringField
      FieldName = 'CNPJ_Importado'
      Origin = 'CNPJ_Importado'
      Size = 14
    end
    object ProcessosImpMargem_Lucro: TFloatField
      FieldName = 'Margem_Lucro'
      Origin = 'Margem_Lucro'
    end
    object ProcessosImpDesconto_Operacional: TFloatField
      FieldName = 'Desconto_Operacional'
      Origin = 'Desconto_Operacional'
    end
    object ProcessosImpDesconto_Adicional: TFloatField
      FieldName = 'Desconto_Adicional'
      Origin = 'Desconto_Adicional'
    end
    object ProcessosImpData_Encerramento: TDateField
      FieldName = 'Data_Encerramento'
      Origin = 'Data_Encerramento'
    end
    object ProcessosImpData_BL: TDateField
      FieldName = 'Data_BL'
      Origin = 'Data_BL'
    end
    object ProcessosImpValor_FaturaME: TCurrencyField
      FieldName = 'Valor_FaturaME'
      Origin = 'Valor_FaturaME'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpData_PrevFaturamento: TDateField
      FieldName = 'Data_PrevFaturamento'
      Origin = 'Data_PrevFaturamento'
    end
    object ProcessosImpData_PrevRegistro: TDateField
      FieldName = 'Data_PrevRegistro'
      Origin = 'Data_PrevRegistro'
    end
    object ProcessosImpLocal_Desembaraco: TIntegerField
      FieldName = 'Local_Desembaraco'
      Origin = 'Local_Desembaraco'
    end
    object ProcessosImpDesativado: TBooleanField
      FieldName = 'Desativado'
      Origin = 'Desativado'
    end
    object ProcessosImpValor_FatorFaturamento: TFloatField
      FieldName = 'Valor_FatorFaturamento'
      Origin = 'Valor_FatorFaturamento'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FatorSISCOMEX: TFloatField
      FieldName = 'Valor_FatorSISCOMEX'
      Origin = 'Valor_FatorSISCOMEX'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_MargemLucro: TCurrencyField
      FieldName = 'Valor_MargemLucro'
      Origin = 'Valor_MargemLucro'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_DescontoAdicional: TCurrencyField
      FieldName = 'Valor_DescontoAdicional'
      Origin = 'Valor_DescontoAdicional'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_DescontoOperacional: TCurrencyField
      FieldName = 'Valor_DescontoOperacional'
      Origin = 'Valor_DescontoOperacional'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpCondicao_Cambio: TSmallintField
      FieldName = 'Condicao_Cambio'
      Origin = 'Condicao_Cambio'
    end
    object ProcessosImpPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'Pais_Origem'
      Size = 4
    end
    object ProcessosImpValor_TaxaSISCOMEX: TCurrencyField
      FieldName = 'Valor_TaxaSISCOMEX'
      Origin = 'Valor_TaxaSISCOMEX'
    end
    object ProcessosImpReducao_ICMS: TFloatField
      FieldName = 'Reducao_ICMS'
      Origin = 'Reducao_ICMS'
    end
    object ProcessosImpObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object ProcessosImpValor_FOBMEAdicoes: TCurrencyField
      FieldName = 'Valor_FOBMEAdicoes'
      Origin = 'Valor_FOBMEAdicoes'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FOBAdicoes: TCurrencyField
      FieldName = 'Valor_FOBAdicoes'
      Origin = 'Valor_FOBAdicoes'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpDA: TBooleanField
      FieldName = 'DA'
      Origin = 'DA'
    end
    object ProcessosImpReducao_BC: TFloatField
      FieldName = 'Reducao_BC'
      Origin = 'Reducao_BC'
    end
    object ProcessosImpValor_PIS2: TCurrencyField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_COFINS2: TCurrencyField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpMemorando_Exportacao: TIntegerField
      FieldName = 'Memorando_Exportacao'
      Origin = 'Memorando_Exportacao'
    end
    object ProcessosImpCT_Numero: TStringField
      FieldName = 'CT_Numero'
      Origin = 'CT_Numero'
    end
    object ProcessosImpCT_Data: TDateField
      FieldName = 'CT_Data'
      Origin = 'CT_Data'
    end
    object ProcessosImpCT_Modelo: TStringField
      FieldName = 'CT_Modelo'
      Origin = 'CT_Modelo'
      Size = 3
    end
    object ProcessosImpCT_Serie: TStringField
      FieldName = 'CT_Serie'
      Origin = 'CT_Serie'
      Size = 3
    end
    object ProcessosImpOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object ProcessosImpBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object ProcessosImpReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
      Origin = 'Reducao_PIS'
    end
    object ProcessosImpReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
      Origin = 'Reducao_COFINS'
    end
    object ProcessosImpPIS_NFEntrada: TFloatField
      FieldName = 'PIS_NFEntrada'
      Origin = 'PIS_NFEntrada'
    end
    object ProcessosImpPIS_NFESaida: TFloatField
      FieldName = 'PIS_NFESaida'
      Origin = 'PIS_NFESaida'
    end
    object ProcessosImpCOFINS_NFEntrada: TFloatField
      FieldName = 'COFINS_NFEntrada'
      Origin = 'COFINS_NFEntrada'
    end
    object ProcessosImpCOFINS_NFESaida: TFloatField
      FieldName = 'COFINS_NFESaida'
      Origin = 'COFINS_NFESaida'
    end
    object ProcessosImpPIS_Majorada: TFloatField
      FieldName = 'PIS_Majorada'
      Origin = 'PIS_Majorada'
    end
    object ProcessosImpCOFINS_Majorada: TFloatField
      FieldName = 'COFINS_Majorada'
      Origin = 'COFINS_Majorada'
    end
    object ProcessosImpSuspensao_Impostos: TBooleanField
      FieldName = 'Suspensao_Impostos'
      Origin = 'Suspensao_Impostos'
    end
    object ProcessosImpRemover_Valoracao: TBooleanField
      FieldName = 'Remover_Valoracao'
      Origin = 'Remover_Valoracao'
    end
    object ProcessosImpReferencia_Cliente: TStringField
      FieldName = 'Referencia_Cliente'
      Origin = 'Referencia_Cliente'
      Size = 15
    end
    object ProcessosImpAdmissao_Temporaria: TBooleanField
      FieldName = 'Admissao_Temporaria'
      Origin = 'Admissao_Temporaria'
    end
    object ProcessosImpCondicao_Pagamento: TSmallintField
      FieldName = 'Condicao_Pagamento'
      Origin = 'Condicao_Pagamento'
    end
    object ProcessosImpData_PrevFrete: TDateField
      FieldName = 'Data_PrevFrete'
      Origin = 'Data_PrevFrete'
    end
    object ProcessosImpValor_FatorFrete: TCurrencyField
      FieldName = 'Valor_FatorFrete'
      Origin = 'Valor_FatorFrete'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpPrevisao_FreteTransportador: TSmallintField
      FieldName = 'Previsao_FreteTransportador'
      Origin = 'Previsao_FreteTransportador'
    end
    object ProcessosImpValor_FatorSISCOMEXReal: TCurrencyField
      FieldName = 'Valor_FatorSISCOMEXReal'
      Origin = 'Valor_FatorSISCOMEXReal'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FatorFreteReal: TCurrencyField
      FieldName = 'Valor_FatorFreteReal'
      Origin = 'Valor_FatorFreteReal'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FatorFaturamentoReal: TCurrencyField
      FieldName = 'Valor_FatorFaturamentoReal'
      Origin = 'Valor_FatorFaturamentoReal'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpData_PrevArmazem: TDateField
      FieldName = 'Data_PrevArmazem'
      Origin = 'Data_PrevArmazem'
    end
    object ProcessosImpValor_FatorArmazem: TCurrencyField
      FieldName = 'Valor_FatorArmazem'
      Origin = 'Valor_FatorArmazem'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FatorArmazemReal: TCurrencyField
      FieldName = 'Valor_FatorArmazemReal'
      Origin = 'Valor_FatorArmazemReal'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpPrevisao_ArmazemFornecedor: TSmallintField
      FieldName = 'Previsao_ArmazemFornecedor'
      Origin = 'Previsao_ArmazemFornecedor'
    end
    object ProcessosImpReferencia_DataEntrega: TDateField
      FieldName = 'Referencia_DataEntrega'
      Origin = 'Referencia_DataEntrega'
    end
    object ProcessosImpCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      FixedChar = True
      Size = 2
    end
    object ProcessosImpCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object ProcessosImpCodigo_BCCredito: TStringField
      FieldName = 'Codigo_BCCredito'
      Origin = 'Codigo_BCCredito'
      FixedChar = True
      Size = 2
    end
    object ProcessosImpApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object ProcessosImpConsignatario_UF: TStringField
      FieldName = 'Consignatario_UF'
      Origin = 'Consignatario_UF'
      Size = 2
    end
    object ProcessosImpConsignatario_CNPJ: TStringField
      FieldName = 'Consignatario_CNPJ'
      Origin = 'Consignatario_CNPJ'
      Size = 14
    end
    object ProcessosImpValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpPreco_Venda: TBooleanField
      FieldName = 'Preco_Venda'
      Origin = 'Preco_Venda'
    end
    object ProcessosImpProforma_Numero: TStringField
      FieldName = 'Proforma_Numero'
      Origin = 'Proforma_Numero'
      Size = 15
    end
    object ProcessosImpProforma_Data: TDateField
      FieldName = 'Proforma_Data'
      Origin = 'Proforma_Data'
    end
    object ProcessosImpCondicao_Frete: TStringField
      FieldName = 'Condicao_Frete'
      Origin = 'Condicao_Frete'
      Size = 60
    end
    object ProcessosImpSeguradora: TStringField
      FieldName = 'Seguradora'
      Origin = 'Seguradora'
      Size = 60
    end
    object ProcessosImpProforma_DataTaxa: TDateField
      FieldName = 'Proforma_DataTaxa'
      Origin = 'Proforma_DataTaxa'
    end
    object ProcessosImpData_TaxaFatura: TDateField
      FieldName = 'Data_TaxaFatura'
      Origin = 'Data_TaxaFatura'
    end
    object ProcessosImpData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object ProcessosImpROF_Numero: TStringField
      FieldName = 'ROF_Numero'
      Origin = 'ROF_Numero'
      Size = 8
    end
    object ProcessosImpROF_Emissao: TDateField
      FieldName = 'ROF_Emissao'
      Origin = 'ROF_Emissao'
    end
    object ProcessosImpROF_Dias: TSmallintField
      FieldName = 'ROF_Dias'
      Origin = 'ROF_Dias'
    end
    object ProcessosImpNotificar: TSmallintField
      FieldName = 'Notificar'
      Origin = 'Notificar'
    end
    object ProcessosImpURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Origin = 'URF_Despacho'
      Size = 7
    end
    object ProcessosImpReferencia_Despachante: TStringField
      FieldName = 'Referencia_Despachante'
      Origin = 'Referencia_Despachante'
      Size = 15
    end
    object ProcessosImpVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'Via_Transporte'
    end
    object ProcessosImpRateia_FretePeso: TBooleanField
      FieldName = 'Rateia_FretePeso'
      Origin = 'Rateia_FretePeso'
    end
    object ProcessosImpRemover_FreteNacBC: TBooleanField
      FieldName = 'Remover_FreteNacBC'
      Origin = 'Remover_FreteNacBC'
    end
    object ProcessosImpValor_FreteNacionalME: TCurrencyField
      FieldName = 'Valor_FreteNacionalME'
      Origin = 'Valor_FreteNacionalME'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpValor_FreteNacionalReal: TCurrencyField
      FieldName = 'Valor_FreteNacionalReal'
      Origin = 'Valor_FreteNacionalReal'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpRecinto_Aduaneiro: TIntegerField
      FieldName = 'Recinto_Aduaneiro'
      Origin = 'Recinto_Aduaneiro'
    end
    object ProcessosImpAd_Valorem: TCurrencyField
      FieldName = 'Ad_Valorem'
      Origin = 'Ad_Valorem'
    end
    object ProcessosImpArmazem: TSmallintField
      FieldName = 'Armazem'
      Origin = 'Armazem'
    end
    object ProcessosImpCIDE_ValorDevido: TCurrencyField
      FieldName = 'CIDE_ValorDevido'
      Origin = 'CIDE_ValorDevido'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpCIDE_ValorRecolher: TCurrencyField
      FieldName = 'CIDE_ValorRecolher'
      Origin = 'CIDE_ValorRecolher'
      DisplayFormat = ',##0.00'
    end
    object ProcessosImpEnquadramento_Operacao: TStringField
      FieldName = 'Enquadramento_Operacao'
      Origin = 'Enquadramento_Operacao'
      Size = 6
    end
    object ProcessosImpEstoque_Bloqueado: TBooleanField
      FieldName = 'Estoque_Bloqueado'
      Origin = 'Estoque_Bloqueado'
    end
    object ProcessosImpExonerado: TBooleanField
      FieldName = 'Exonerado'
      Origin = 'Exonerado'
    end
    object ProcessosImpIndicador_InfCompl: TStringField
      FieldName = 'Indicador_InfCompl'
      Origin = 'Indicador_InfCompl'
      FixedChar = True
      Size = 3
    end
    object ProcessosImpIndicador_RecintoAlf: TSmallintField
      FieldName = 'Indicador_RecintoAlf'
      Origin = 'Indicador_RecintoAlf'
    end
    object ProcessosImpLocal_EmbarqueCod: TIntegerField
      FieldName = 'Local_EmbarqueCod'
      Origin = 'Local_EmbarqueCod'
    end
    object ProcessosImpNavio_Ordem: TIntegerField
      FieldName = 'Navio_Ordem'
      Origin = 'Navio_Ordem'
    end
    object ProcessosImpNavio_PrevSaida: TSQLTimeStampField
      FieldName = 'Navio_PrevSaida'
      Origin = 'Navio_PrevSaida'
    end
    object ProcessosImpNumero_BL: TStringField
      FieldName = 'Numero_BL'
      Origin = 'Numero_BL'
      Size = 15
    end
    object ProcessosImpNumero_HouseBL: TStringField
      FieldName = 'Numero_HouseBL'
      Origin = 'Numero_HouseBL'
      Size = 15
    end
    object ProcessosImpNumero_TFA: TStringField
      FieldName = 'Numero_TFA'
      Origin = 'Numero_TFA'
      Size = 15
    end
    object ProcessosImpPrioridade_Carga: TIntegerField
      FieldName = 'Prioridade_Carga'
      Origin = 'Prioridade_Carga'
    end
    object ProcessosImpRecinto_AlfandegarioCod: TIntegerField
      FieldName = 'Recinto_AlfandegarioCod'
      Origin = 'Recinto_AlfandegarioCod'
    end
    object ProcessosImpTransporte_Viagem: TStringField
      FieldName = 'Transporte_Viagem'
      Origin = 'Transporte_Viagem'
      Size = 15
    end
    object ProcessosImpTUP: TCurrencyField
      FieldName = 'TUP'
      Origin = 'TUP'
    end
    object ProcessosImpUltima_Atualizacao: TSQLTimeStampField
      FieldName = 'Ultima_Atualizacao'
      Origin = 'Ultima_Atualizacao'
    end
    object ProcessosImpVia_EspecialTransp: TSmallintField
      FieldName = 'Via_EspecialTransp'
      Origin = 'Via_EspecialTransp'
    end
  end
  object dsProcessosImp: TDataSource
    DataSet = ProcessosImp
    Left = 41
    Top = 126
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
  object tBeneficio: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo, Nome FROM BeneficioFiscal')
    Left = 116
    Top = 78
  end
  object dstBeneficio: TDataSource
    DataSet = tBeneficio
    Left = 116
    Top = 126
  end
  object tModal: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo, Descricao FROM ModalidadeImportacao'
      '')
    Left = 116
    Top = 272
  end
  object dstModal: TDataSource
    DataSet = tModal
    Left = 116
    Top = 320
  end
  object tCondCambial: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM CondicaoCambial'
      '')
    Left = 116
    Top = 368
  end
  object dstCondCambial: TDataSource
    DataSet = tCondCambial
    Left = 116
    Top = 416
  end
  object tExportador: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Destinatarios where Exportador = 1')
    Left = 41
    Top = 464
  end
  object dstExportador: TDataSource
    DataSet = tExportador
    Left = 41
    Top = 512
  end
  object tFuncaoProd: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from FuncaoProduto')
    Left = 116
    Top = 464
  end
  object dstFuncaoProd: TDataSource
    DataSet = tFuncaoProd
    Left = 116
    Top = 512
  end
  object tViaTransp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from ViaTransporte')
    Left = 41
    Top = 560
  end
  object dstViaTransp: TDataSource
    DataSet = tViaTransp
    Left = 41
    Top = 608
  end
  object tMoedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome, Simbolo from Moedas')
    Left = 117
    Top = 560
  end
  object dstMoedas: TDataSource
    DataSet = tMoedas
    Left = 117
    Top = 608
  end
  object tRecintoAdua: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from RecintoAduaneiro')
    Left = 41
    Top = 656
  end
  object dstRecintoAdua: TDataSource
    DataSet = tRecintoAdua
    Left = 41
    Top = 704
  end
  object tEstados: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select UF, Nome from Estados')
    Left = 116
    Top = 656
  end
  object dstEstados: TDataSource
    DataSet = tEstados
    Left = 116
    Top = 704
  end
  object tPaises: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Paises')
    Left = 41
    Top = 752
  end
  object dstPaises: TDataSource
    DataSet = tPaises
    Left = 41
    Top = 800
  end
  object tLocalDesemb: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Paises')
    Left = 116
    Top = 752
  end
  object dstLocalDesemb: TDataSource
    DataSet = tLocalDesemb
    Left = 116
    Top = 800
  end
  object tCSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from CSTPIS')
    Left = 41
    Top = 848
  end
  object dstCSTPIS: TDataSource
    DataSet = tCSTPIS
    Left = 41
    Top = 896
  end
  object tCSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from CSTCOFINS')
    Left = 116
    Top = 848
  end
  object dstCSTCOFINS: TDataSource
    DataSet = tCSTCOFINS
    Left = 116
    Top = 896
  end
  object Texto: TFDQuery
    BeforePost = ProcessosImpBeforePost
    BeforeDelete = ProcessosImpBeforeDelete
    AggregatesActive = True
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProcessosTexto')
    Left = 193
    Top = 78
  end
  object dsTexto: TDataSource
    DataSet = Texto
    Left = 193
    Top = 126
  end
  object dstFinanceiro: TDataSource
    DataSet = tFinanceiro
    Left = 193
    Top = 224
  end
  object tFinanceiro: TFDQuery
    BeforePost = ProcessosImpBeforePost
    BeforeDelete = ProcessosImpBeforeDelete
    AggregatesActive = True
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProcessosTexto')
    Left = 193
    Top = 176
  end
  object tPlano: TFDQuery
    BeforePost = ProcessosImpBeforePost
    BeforeDelete = ProcessosImpBeforeDelete
    AggregatesActive = True
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoContas')
    Left = 193
    Top = 272
  end
  object dstPlano: TDataSource
    DataSet = tPlano
    Left = 193
    Top = 320
  end
  object Empresas: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Razao_Social'
      '      ,CNPJ'
      
        '      ,Unidade = case when isnull(Numero_Filial, 0) = 0 then '#39'MA' +
        'TRIZ'#39' else '#39'FILIAL '#39'+cast(numero_Filial as char(3)) end'
      '      ,Fechamento_Financeiro'
      '      ,Estado'
      'from   Empresas'
      'order by CNPJ, Numero_Filial')
    Left = 190
    Top = 368
    object EmpresasRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'Razao_Social'
      Size = 50
    end
    object EmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object EmpresasUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Unidade'
      ReadOnly = True
      Size = 10
    end
    object EmpresasFechamento_Financeiro: TDateField
      FieldName = 'Fechamento_Financeiro'
      Origin = 'Fechamento_Financeiro'
    end
    object EmpresasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Size = 2
    end
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 190
    Top = 416
  end
end
