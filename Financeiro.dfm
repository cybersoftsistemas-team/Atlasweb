object fFinanceiro: TfFinanceiro
  Left = 0
  Top = 0
  Width = 1215
  Height = 836
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1209
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
      Width = 164
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsLista
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 164
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      ShowHint = True
      ParentShowHint = False
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
      Left = 205
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      ShowHint = True
      ParentShowHint = False
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
      Left = 246
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      ShowHint = True
      ParentShowHint = False
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
      Left = 328
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      ShowHint = True
      ParentShowHint = False
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
      Left = 287
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      ShowHint = True
      ParentShowHint = False
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
      Left = 881
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
    object bPesquisa: TUniSpeedButton
      Left = 369
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Pesquisar t'#237'tulo'
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      Images = UniMainModule.imgBotoes
      ImageIndex = 10
      TabOrder = 8
    end
    object bBaixar: TUniButton
      Left = 410
      Top = 0
      Width = 80
      Height = 35
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Liquidar'
      Align = alLeft
      TabOrder = 9
      Images = UniMainModule.imgBotoes
      ImageIndex = 17
      OnClick = bBaixarClick
    end
    object bEstornar: TUniButton
      Left = 490
      Top = 0
      Width = 135
      Height = 35
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Estornar Liquida'#231#227'o'
      Align = alLeft
      TabOrder = 10
      Images = UniMainModule.imgBotoes
      ImageIndex = 18
      OnClick = bEstornarClick
    end
    object bParcelar: TUniButton
      Left = 625
      Top = 0
      Width = 128
      Height = 35
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Parcelar/Duplicar'
      Align = alLeft
      TabOrder = 11
      Images = UniMainModule.imgBotoes
      ImageIndex = 19
    end
    object bBloquear: TUniButton
      Left = 753
      Top = 0
      Width = 128
      Height = 35
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Bloquear Per'#237'odo'
      Align = alLeft
      TabOrder = 12
      Images = UniMainModule.imgBotoes
      ImageIndex = 20
      OnClick = bBloquearClick
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 41
    Width = 1215
    Height = 795
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    OnChange = PastaChange
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Movimento'
      object pFiltro: TUniPanel
        Tag = 1
        Left = 0
        Top = 0
        Width = 400
        Height = 767
        Hint = ''
        Align = alLeft
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsNone
        ShowCaption = False
        TitleVisible = True
        TitleAlign = taCenter
        Title = 'F I L T R O S :'
        Caption = ''
        Collapsible = True
        CollapseDirection = cdLeft
        Collapsed = True
        ParentColor = True
        ParentBackground = True
        Images = UniMainModule.imgBotoes
        ScrollDirection = sdVertical
        OnExpand = pFiltroExpand
        object bFiltro: TUniSpeedButton
          Left = 104
          Top = 378
          Width = 88
          Height = 39
          Hint = 'Executar Filtro'
          ShowHint = True
          ParentShowHint = False
          Caption = 'Filtrar'
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 8
          TabOrder = 1
          OnClick = bFiltroClick
        end
        object cAgrupar: TUniCheckBox
          Left = 232
          Top = 12
          Width = 80
          Height = 25
          Hint = '  Agrupa todos os t'#237'tulos n'#227'o separando por data  '
          ShowHint = True
          ParentShowHint = False
          Caption = 'Agrupar'
          TabOrder = 2
          OnChange = cAgruparChange
        end
        object cBancoFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 93
          Width = 379
          Height = 25
          Hint = ''
          ListField = 'Conta;Nome'
          ListSource = dsBancos
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          AnyMatch = True
          EmptyText = 'Banco'
          TabOrder = 3
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          FieldLabelAlign = laTop
          Style = csDropDown
        end
        object cBenefFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 39
          Width = 379
          Height = 25
          Hint = ''
          ListField = 'CNPJ_CPF;Nome'
          ListSource = dsBeneficiario
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          AnyMatch = True
          EmptyText = 'Benefici'#225'rio'
          TabOrder = 4
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          FieldLabelAlign = laTop
          Style = csDropDown
        end
        object cCalend: TUniDateTimePicker
          Left = 8
          Top = 12
          Width = 157
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DateTime = 44483.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 5
          ParentFont = False
          ClearButton = True
          FieldLabelWidth = 50
          FieldLabelAlign = laTop
          EmptyText = 'Data Vncimento'
          BorderStyle = ubsInset
        end
        object cContaFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 66
          Width = 379
          Height = 25
          Hint = ''
          ListField = 'Codigo;Nome'
          ListSource = dsPlano
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          AnyMatch = True
          EmptyText = 'Classifica'#231#227'o'
          TabOrder = 6
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          FieldLabelAlign = laTop
          Style = csDropDown
        end
        object cProcessoFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 120
          Width = 379
          Height = 25
          Hint = ''
          ListField = 'Declaracao;Processo'
          ListSource = dsProcessos
          KeyField = 'Processo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          ClearButton = True
          AnyMatch = True
          EmptyText = 'Processo'
          TabOrder = 7
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          FieldLabelAlign = laTop
          Style = csDropDown
        end
        object cProv: TUniRadioGroup
          Left = 8
          Top = 253
          Width = 379
          Height = 55
          Hint = ''
          Items.Strings = (
            'Definitivo'
            'Provis'#243'rio'
            'Todos')
          ItemIndex = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'Grupo'#39';'#13#10'}')
          Caption = 'Tipo de Documento'
          TabOrder = 8
          Columns = 3
        end
        object cSituacao: TUniRadioGroup
          Left = 8
          Top = 314
          Width = 379
          Height = 55
          Hint = ''
          Items.Strings = (
            'Abertos'
            'Baixados'
            'Baixa Parcial'
            'Todos')
          ItemIndex = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'Grupo'#39';'#13#10'}')
          Caption = 'Situa'#231#227'o do Lan'#231'amento'
          TabOrder = 9
          Columns = 4
        end
        object cTipo: TUniRadioGroup
          Left = 8
          Top = 192
          Width = 379
          Height = 55
          Hint = ''
          Items.Strings = (
            'Pagamentos'
            'Recebimentos'
            'Todos')
          ItemIndex = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Grupo'#39';'#13#10'}')
          Caption = 'Tipo de Lan'#231'amento'
          TabOrder = 10
          Columns = 3
        end
        object bLimparFiltro: TUniSpeedButton
          Left = 198
          Top = 378
          Width = 88
          Height = 39
          Hint = 'Executar Filtro'
          ShowHint = True
          ParentShowHint = False
          Caption = 'Limpar Filtros'
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 2
          TabOrder = 11
          OnClick = bLimparFiltroClick
        end
        object cDocNumFiltro: TUniEdit
          Left = 8
          Top = 147
          Width = 379
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          Text = ''
          TabOrder = 12
          EmptyText = 'N'#186' Documento'
          ClearButton = True
        end
      end
      object UniPanel6: TUniPanel
        Tag = 1
        Left = 400
        Top = 0
        Width = 807
        Height = 767
        Hint = ''
        Align = alClient
        TabOrder = 1
        BorderStyle = ubsNone
        Caption = 'UniPanel6'
        object UniPanel1: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 801
          Height = 50
          Hint = ''
          Align = alTop
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          object UniPanel2: TUniPanel
            Left = 0
            Top = 0
            Width = 141
            Height = 50
            Hint = ''
            Align = alLeft
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = ''
            object cAno: TUniSpinEdit
              Left = 16
              Top = 10
              Width = 110
              Height = 25
              Hint = ''
              Value = 2021
              TabOrder = 1
              Alignment = taCenter
              ParentFont = False
              FieldLabel = 'ANO'
              FieldLabelWidth = 30
              FieldLabelFont.Height = -13
              FieldLabelFont.Style = [fsBold]
              OnChange = cAnoChange
            end
          end
          object UniPanel3: TUniPanel
            Left = 141
            Top = 0
            Width = 660
            Height = 50
            Hint = ''
            Align = alClient
            TabOrder = 2
            BorderStyle = ubsNone
            Caption = ''
            Color = clTeal
            object cMes: TUniSegmentedButton
              Left = 0
              Top = 0
              Width = 660
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Items = <
                item
                  Caption = 'Janeiro'
                  ButtonId = 0
                end
                item
                  Caption = 'Fevereiro'
                  ButtonId = 1
                end
                item
                  Caption = 'Mar'#231'o'
                  ButtonId = 2
                end
                item
                  Caption = 'Abril'
                  ButtonId = 3
                end
                item
                  Caption = 'Maio'
                  ButtonId = 4
                end
                item
                  Caption = 'Junho'
                  ButtonId = 5
                end
                item
                  Caption = 'Julho'
                  ButtonId = 6
                end
                item
                  Caption = 'Agosto'
                  ButtonId = 7
                end
                item
                  Caption = 'Setembro'
                  ButtonId = 8
                end
                item
                  Caption = 'Outubro'
                  ButtonId = 9
                end
                item
                  Caption = 'Novembro'
                  ButtonId = 10
                end
                item
                  Caption = 'Dezembro'
                  ButtonId = 11
                end>
              Images = UniMainModule.imgBotoes
              LayoutConfig.Padding = '0'
              Align = alClient
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'BotaoCor'#39';'#13#10'}')
              OnClick = cMesClick
            end
            object cDia: TUniSegmentedButton
              Left = 0
              Top = 25
              Width = 660
              Height = 25
              Cursor = crHandPoint
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Items = <
                item
                  ButtonId = 0
                end
                item
                  ButtonId = 1
                end
                item
                  ButtonId = 2
                end
                item
                  ButtonId = 3
                end
                item
                  ButtonId = 4
                end
                item
                  ButtonId = 5
                end
                item
                  ButtonId = 6
                end
                item
                  ButtonId = 7
                end
                item
                  ButtonId = 8
                end
                item
                  ButtonId = 9
                end
                item
                  ButtonId = 10
                end
                item
                  ButtonId = 11
                end
                item
                  ButtonId = 12
                end
                item
                  ButtonId = 13
                end
                item
                  ButtonId = 14
                end
                item
                  ButtonId = 15
                end
                item
                  ButtonId = 16
                end
                item
                  ButtonId = 17
                end
                item
                  ButtonId = 18
                end
                item
                  ButtonId = 19
                end
                item
                  ButtonId = 20
                end
                item
                  ButtonId = 21
                end
                item
                  ButtonId = 22
                end
                item
                  ButtonId = 23
                end
                item
                  ButtonId = 24
                end
                item
                  ButtonId = 25
                end
                item
                  ButtonId = 26
                end
                item
                  ButtonId = 27
                end
                item
                  ButtonId = 28
                end
                item
                  ButtonId = 29
                end
                item
                  ButtonId = 30
                end>
              LayoutConfig.Padding = '0'
              LayoutConfig.Split = True
              Align = alBottom
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'BotaoDegrade'#39';'#13#10'}')
              OnClick = cDiaClick
            end
          end
        end
        object UniPanel10: TUniPanel
          Tag = 1
          Left = 0
          Top = 56
          Width = 807
          Height = 603
          Hint = ''
          Align = alClient
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Painel'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          object GradeLan: TUniDBGrid
            Left = 0
            Top = 0
            Width = 807
            Height = 464
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            TitleFont.Style = [fsBold]
            DataSource = dsLista
            Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect, dgTitleClick]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando dados...'
            LoadMask.Color = clNone
            ForceFit = True
            BorderStyle = ubsNone
            TrackOver = False
            Align = alClient
            TabOrder = 1
            ParentColor = False
            Color = clWhite
            OnDblClick = GradeDblClick
            Columns = <
              item
                FieldName = 'Titulo'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186
                Title.Font.Style = [fsBold]
                Width = 50
                ReadOnly = True
              end
              item
                FieldName = 'Tipo'
                Title.Alignment = taCenter
                Title.Caption = 'TP'
                Title.Font.Style = [fsBold]
                Width = 31
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Baixa'
                Title.Alignment = taCenter
                Title.Caption = 'BX'
                Title.Font.Style = [fsBold]
                Width = 30
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Data_Vencimento'
                Title.Alignment = taCenter
                Title.Caption = 'Vencto'
                Title.Font.Style = [fsBold]
                Width = 70
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Classificacao'
                Title.Alignment = taCenter
                Title.Caption = 'Conta'
                Title.Font.Style = [fsBold]
                Width = 102
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Nome'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Font.Style = [fsBold]
                Width = 200
                ReadOnly = True
              end
              item
                FieldName = 'Centro_Custo'
                Title.Alignment = taCenter
                Title.Caption = 'C.Custo'
                Title.Font.Style = [fsBold]
                Width = 74
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Beneficiario'
                Title.Alignment = taCenter
                Title.Caption = 'Benefici'#225'rio'
                Title.Font.Style = [fsBold]
                Width = 228
                ReadOnly = True
              end
              item
                FieldName = 'Processo'
                Title.Alignment = taCenter
                Title.Caption = 'Processo'
                Title.Font.Style = [fsBold]
                Width = 88
                ReadOnly = True
              end
              item
                FieldName = 'Documento_Numero'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Doc.'
                Title.Font.Style = [fsBold]
                Width = 97
                ReadOnly = True
              end
              item
                FieldName = 'Valor_Documento'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Doc.'
                Title.Font.Style = [fsBold]
                Width = 80
                ReadOnly = True
                DisplayFormat = ',##0.00'
              end
              item
                FieldName = 'Valor_Parcela'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Parcela'
                Title.Font.Style = [fsBold]
                Width = 80
                ReadOnly = True
                DisplayFormat = ',##0.00'
              end
              item
                FieldName = 'Valor_Baixas'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Baixado'
                Width = 80
                ReadOnly = True
                DisplayFormat = ',##0.00'
              end
              item
                FieldName = 'Valor_Aberto'
                Title.Alignment = taCenter
                Title.Caption = 'Saldo'
                Title.Font.Style = [fsBold]
                Width = 80
                ReadOnly = True
                DisplayFormat = ',##0.00'
              end
              item
                FieldName = 'Parcela'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Parcela'
                Title.Font.Style = [fsBold]
                Width = 60
                ReadOnly = True
              end>
          end
          object UniDBGrid1: TUniDBGrid
            Left = 0
            Top = 464
            Width = 807
            Height = 139
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            HeaderTitle = 'BAIXAS'
            HeaderTitleAlign = taCenter
            DataSource = dsBaixas
            Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando dados...'
            LoadMask.Color = clNone
            ForceFit = True
            BorderStyle = ubsNone
            TrackOver = False
            Align = alBottom
            TabOrder = 2
            ParentColor = False
            Color = clWhite
            Columns = <
              item
                FieldName = 'Registro'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Baixa'
                Title.Font.Style = [fsBold]
                Width = 94
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Data'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Title.Font.Style = [fsBold]
                Width = 60
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                Alignment = taCenter
                ReadOnly = True
              end
              item
                FieldName = 'Banco_Nome'
                Title.Alignment = taCenter
                Title.Caption = 'Banco'
                Title.Font.Style = [fsBold]
                Width = 225
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Forma_Tipo'
                Title.Alignment = taCenter
                Title.Caption = 'Forma de Pgto.'
                Title.Font.Style = [fsBold]
                Width = 191
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Forma_TipoDocumento'
                Title.Alignment = taCenter
                Title.Caption = 'Documento'
                Title.Font.Style = [fsBold]
                Width = 129
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ReadOnly = True
              end
              item
                FieldName = 'Valor'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Style = [fsBold]
                Width = 98
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ReadOnly = True
                DisplayFormat = ',##0.00'
              end>
          end
        end
        object UniPanel4: TUniPanel
          Left = 0
          Top = 659
          Width = 807
          Height = 108
          Hint = ''
          Align = alBottom
          TabOrder = 3
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Painel'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          object UniDBMemo1: TUniDBMemo
            Left = 0
            Top = 0
            Width = 807
            Height = 79
            Hint = ''
            DataField = 'Observacao'
            DataSource = dsPagarReceber
            BorderStyle = ubsInset
            Align = alClient
            TabOrder = 1
            FieldLabel = 'Obeserva'#231#245'es do t'#237'tulo'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object brTotais: TUniSegmentedButton
            Left = 0
            Top = 79
            Width = 807
            Height = 29
            Hint = ''
            Items = <
              item
                Caption = 'Custo Entrada: '
                ButtonId = 0
              end
              item
                Caption = 'Custo Sa'#237'da: '
                ButtonId = 1
              end
              item
                Caption = 'Custo Seletivo:'
                ButtonId = 2
              end
              item
                Caption = 'Custo Outros:'
                ButtonId = 3
              end
              item
                Caption = 'Recebimentos:'
                ButtonId = 4
              end
              item
                Caption = 'Pagamentos: '
                ButtonId = 5
              end
              item
                Caption = 'Pedido Pai:'
                ButtonId = 6
              end
              item
                Caption = 'Pedido Filho 1:'
                ButtonId = 7
              end
              item
                Caption = 'Pedido Filho 2:'
                ButtonId = 8
              end
              item
                Caption = 'Data Fechamento:'
                ButtonId = 9
              end>
            Align = alBottom
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                ' '#39'BotaoCor'#39';'#13#10'}')
            AllowToggle = False
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Lan'#231'amento'
      object UniScrollBox1: TUniScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1201
        Height = 761
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1182
          759)
        ScrollHeight = 1023
        ScrollWidth = 620
        object pFicha1: TUniPanel
          AlignWithMargins = True
          Left = 20
          Top = 15
          Width = 897
          Height = 757
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
          object cClassificacao: TUniDBLookupComboBox
            Left = 13
            Top = 95
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsPlano
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Classificacao'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Conta'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cData_Previsao: TUniDBDateTimePicker
            Left = 13
            Top = 122
            Width = 344
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Previsao'
            DataSource = dsPagarReceber
            DateTime = 44489.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
            BorderStyle = ubsInset
            FieldLabel = 'Previs'#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cDocumento_Data: TUniDBDateTimePicker
            Left = 362
            Top = 176
            Width = 345
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Data'
            DataSource = dsPagarReceber
            DateTime = 44489.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 3
            BorderStyle = ubsInset
            FieldLabel = 'Data Documento'
            FieldLabelSeparator = ' '
          end
          object cData_Vencimento: TUniDBDateTimePicker
            Left = 362
            Top = 122
            Width = 345
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Vencimento'
            DataSource = dsPagarReceber
            DateTime = 44501.000000000000000000
            TabOrder = 4
            UseSystemFormats = True
            BorderStyle = ubsInset
            FieldLabel = 'Vencimento'
            FieldLabelSeparator = ' '
          end
          object cBeneficiario: TUniDBLookupComboBox
            Left = 13
            Top = 230
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ_CPF;Nome'
            ListSource = dsBeneficiario
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Beneficiario'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Benefici'#225'rio'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cDocumento: TUniDBLookupComboBox
            Left = 13
            Top = 149
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTipoDoc
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Documento_Tipo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cModalidade_Pgto: TUniDBLookupComboBox
            Left = 13
            Top = 284
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModal
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Modalidade_Pgto'
            DataSource = dsPagarReceber
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Modalidade Pgto'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object cCentro_Custo: TUniDBLookupComboBox
            Left = 13
            Top = 68
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Centro_Custo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Centro de Custo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 13
            Top = 203
            Width = 344
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Processo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cAdiantamento: TUniDBLookupComboBox
            Left = 13
            Top = 257
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Nome'
            ListSource = dsAdiantamentos
            KeyField = 'Adiantamento_Numero'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Adiantamento_Numero'
            DataSource = dsPagarReceber
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Adiantamento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object cNumero_Documento: TUniDBEdit
            Left = 13
            Top = 176
            Width = 344
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Numero'
            DataSource = dsPagarReceber
            TabOrder = 11
            FieldLabel = 'N'#186'  Documento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cEmpresa: TUniDBLookupComboBox
            Left = 13
            Top = 41
            Width = 694
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Unidade;Estado'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Empresa'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Empresa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cNumero: TUniDBEdit
            Left = 13
            Top = 14
            Width = 255
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Titulo'
            DataSource = dsPagarReceber
            Alignment = taRightJustify
            ParentFont = False
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            TabOrder = 13
            TabStop = False
            Color = 15720158
            ReadOnly = True
            UseFieldAlignment = False
            FieldLabel = 'T'#237'tulo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DontUpdateOnKeyEvents = True
            BorderStyle = ubsInset
          end
          object cEmbarque: TUniDBLookupComboBox
            Left = 362
            Top = 203
            Width = 345
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Referencia;Navio;Processo'
            ListSource = dsEmbarques
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Embarque'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 14
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Embarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cPago_Cliente: TUniDBCheckBox
            Left = 715
            Top = 121
            Width = 113
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            DataField = 'Pago_Cliente'
            DataSource = dsPagarReceber
            Caption = 'Pago Pelo Cliente'
            TabOrder = 15
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = '     '
          end
          object cProvisorio: TUniDBCheckBox
            Left = 715
            Top = 149
            Width = 143
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            DataField = 'Provisorio'
            DataSource = dsPagarReceber
            Caption = 'Documerno Provis'#243'rio'
            TabOrder = 16
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 715
            Top = 257
            Width = 143
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            DataField = 'Permuta_Recebimento'
            DataSource = dsPagarReceber
            Caption = 'Permuta de Recebimento'
            TabOrder = 17
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object bVeiculo: TUniButton
            Left = 715
            Top = 230
            Width = 100
            Height = 26
            Hint = ''
            ShowHint = True
            Caption = 'Dados Banc'#225'rios'
            TabOrder = 18
          end
          object UniButton1: TUniButton
            Left = 715
            Top = 284
            Width = 100
            Height = 26
            Hint = ''
            ShowHint = True
            Caption = 'Parcelas'
            TabOrder = 19
          end
          object cValor_Documento: TUniDBFormattedNumberEdit
            Left = 13
            Top = 311
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Documento'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 20
            SelectOnFocus = True
            FieldLabel = 'Valor Documento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cRecuperavel: TUniDBCheckBox
            Left = 715
            Top = 311
            Width = 94
            Height = 25
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            DataField = 'Recuperavel'
            DataSource = dsPagarReceber
            Caption = 'Recuper'#225'vel'
            TabOrder = 21
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
            Left = 299
            Top = 311
            Width = 179
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Taxa_ME'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 22
            SelectOnFocus = True
            FieldLabel = 'Taxa (ME)'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
            Left = 483
            Top = 311
            Width = 224
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_ME'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 23
            SelectOnFocus = True
            FieldLabel = 'Valor (ME)'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cObservacao: TUniDBMemo
            Left = 13
            Top = 689
            Width = 805
            Height = 53
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsPagarReceber
            BorderStyle = ubsInset
            TabOrder = 24
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cCodigoBarras: TUniDBEdit
            Left = 13
            Top = 662
            Width = 805
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_Barras'
            DataSource = dsPagarReceber
            TabOrder = 25
            FieldLabel = 'C'#243'digo de Barras'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cSaldoDoc: TUniFormattedNumberEdit
            Left = 13
            Top = 581
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 26
            TabStop = False
            Color = 15720158
            ReadOnly = True
            SelectOnFocus = True
            FieldLabel = 'Saldo Documento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cValor_Desconto: TUniDBFormattedNumberEdit
            Left = 13
            Top = 446
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Desconto'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 27
            SelectOnFocus = True
            FieldLabel = 'Valor Desconto'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cDesconto_Liquidacao: TUniDBFormattedNumberEdit
            Left = 13
            Top = 473
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Desconto_Liquidacao'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 28
            SelectOnFocus = True
            FieldLabel = 'Valor Desconto (Dupl)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor_Juros: TUniDBFormattedNumberEdit
            Left = 13
            Top = 392
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Juros'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 29
            SelectOnFocus = True
            FieldLabel = 'Valor Juros'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor_Multa: TUniDBFormattedNumberEdit
            Left = 13
            Top = 419
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Multa'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 30
            SelectOnFocus = True
            FieldLabel = 'Valor Multa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor_Total: TUniDBFormattedNumberEdit
            Left = 13
            Top = 500
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Total'
            DataSource = dsPagarReceber
            Alignment = taRightJustify
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 31
            TabStop = False
            Color = 15720158
            ReadOnly = True
            SelectOnFocus = True
            FieldLabel = 'Valor Total'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor_Parcela: TUniDBFormattedNumberEdit
            Left = 13
            Top = 338
            Width = 280
            Height = 25
            Hint = ''
            ParentRTL = False
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_Parcela'
            DataSource = dsPagarReceber
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 32
            SelectOnFocus = True
            FieldLabel = 'Valor Parcela'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValorBaixa: TUniFormattedNumberEdit
            Left = 13
            Top = 365
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            TabOrder = 33
            FieldLabel = 'Valor Baixa Autom'#225'tica'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cSaldo: TUniFormattedNumberEdit
            Left = 13
            Top = 554
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 34
            TabStop = False
            Color = 15720158
            ReadOnly = True
            SelectOnFocus = True
            FieldLabel = 'Saldo Aberto'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cNumeroPgto: TUniDBEdit
            Left = 514
            Top = 635
            Width = 304
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Forma_PgtoDoc'
            DataSource = dsPagarReceber
            TabOrder = 35
            FieldLabel = 'N'#186' do Documento'
            FieldLabelWidth = 90
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cDataBaixa: TUniDateTimePicker
            Left = 514
            Top = 608
            Width = 304
            Height = 25
            Hint = ''
            ShowHint = True
            DateTime = 45600.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 36
            FieldLabel = 'Data Baixa'
            FieldLabelWidth = 90
            BorderStyle = ubsInset
          end
          object cBanco: TUniDBLookupComboBox
            Left = 13
            Top = 608
            Width = 495
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Nome;Conta'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Banco'
            DataSource = dsPagarReceber
            TabOrder = 37
            Color = clWindow
            FieldLabel = 'Banco'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object UniDBLookupComboBox11: TUniDBLookupComboBox
            Left = 13
            Top = 635
            Width = 495
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsFormaPgto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Forma_Pgto'
            DataSource = dsPagarReceber
            TabOrder = 38
            Color = clWindow
            FieldLabel = 'Forma Pagamento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object cValor_Baixado: TUniFormattedNumberEdit
            Left = 13
            Top = 527
            Width = 280
            Height = 25
            Hint = ''
            ShowHint = True
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 39
            TabStop = False
            Color = 15720158
            ReadOnly = True
            SelectOnFocus = True
            FieldLabel = 'Valor Baixado'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 364
          Top = 979
          Width = 256
          Height = 44
          Hint = ''
          ParentColor = False
          TabOrder = 1
        end
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Adiantamentos'
      object cGrade: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1207
        Height = 767
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Grupo'#39';'#13#10'}')
        DataSource = dsListaAd
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        TrackOver = False
        Align = alClient
        TabOrder = 0
        PreventWrap = True
        Columns = <
          item
            FieldName = 'Titulo'
            Title.Alignment = taCenter
            Title.Caption = 'T'#237'tulo'
            Title.Font.Style = [fsBold]
            Width = 63
            ReadOnly = True
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 48
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 95
            ReadOnly = True
          end
          item
            FieldName = 'Valor_Baixado'
            Title.Alignment = taCenter
            Title.Caption = 'Baixado'
            Title.Font.Style = [fsBold]
            Width = 86
            ReadOnly = True
          end
          item
            FieldName = 'Documento_Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 71
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Beneficiario'
            Title.Alignment = taCenter
            Title.Caption = 'Benefici'#225'rio'
            Title.Font.Style = [fsBold]
            Width = 285
            ReadOnly = True
          end>
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Contratos de C'#226'mbio'
      object UniDBGrid2: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1207
        Height = 767
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataSource = dsContratos
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Carregando dados...'
        LoadMask.Color = clNone
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWindow
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Title.Font.Style = [fsBold]
            Width = 120
            ReadOnly = True
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 76
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'DUIMP'
            Title.Alignment = taCenter
            Title.Caption = 'DUIMP'
            Title.Font.Style = [fsBold]
            Width = 133
            ReadOnly = True
          end
          item
            FieldName = 'Banco_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Style = [fsBold]
            Width = 189
            ReadOnly = True
          end
          item
            FieldName = 'Exportador'
            Title.Alignment = taCenter
            Title.Caption = 'Exportador'
            Title.Font.Style = [fsBold]
            Width = 296
            ReadOnly = True
          end
          item
            FieldName = 'Condicao_Cambio'
            Title.Alignment = taCenter
            Title.Caption = 'Condicao C'#226'mbio'
            Title.Font.Style = [fsBold]
            Width = 109
            ReadOnly = True
          end
          item
            FieldName = 'Moeda'
            Title.Alignment = taCenter
            Title.Caption = 'Moeda'
            Title.Font.Style = [fsBold]
            Width = 143
            ReadOnly = True
          end
          item
            FieldName = 'Taxa_Cambial'
            Title.Alignment = taCenter
            Title.Caption = 'Taxa Cambial'
            Title.Font.Style = [fsBold]
            Width = 80
            ReadOnly = True
          end
          item
            FieldName = 'Total_ME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 107
            ReadOnly = True
          end>
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Liquida'#231#227'o'
      object UniScrollBox3: TUniScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1201
        Height = 761
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1199
          759)
        ScrollHeight = 520
        object pFicha2: TUniPanel
          AlignWithMargins = True
          Left = 321
          Top = 15
          Width = 816
          Height = 505
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
          object cBxBanco: TUniDBLookupComboBox
            Left = 16
            Top = 65
            Width = 613
            Height = 50
            Hint = ''
            ShowHint = True
            ListOnlyMode = lmFollowSource
            ListField = 'Codigo;Nome'
            ListSource = dsBancos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Banco:'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csDropDown
          end
          object UniPanel5: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 467
            Width = 810
            Height = 35
            Hint = ''
            ShowHint = True
            Align = alBottom
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = 5526569
            object bSalvarBaixa: TUniButton
              Left = 0
              Top = 0
              Width = 80
              Height = 35
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Caption = 'Liquidar'
              TabOrder = 1
              Images = UniMainModule.imgBotoes
              ImageIndex = 17
              OnClick = bSalvarBaixaClick
            end
            object bCancelarBaixa: TUniSpeedButton
              Left = 79
              Top = 0
              Width = 90
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              ParentShowHint = False
              Caption = 'Cancelar'
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 2
              OnClick = bCancelarBaixaClick
            end
          end
          object cBxClassificacao: TUniDBEdit
            Left = 16
            Top = 15
            Width = 613
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsPlano
            TabOrder = 0
            FieldLabel = 'Classifica'#231#227'o Financeira'
            FieldLabelAlign = laTop
          end
          object UniGroupBox4: TUniGroupBox
            Left = 639
            Top = 17
            Width = 164
            Height = 436
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Caption = 'VALORES'
            TabOrder = 5
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cBxValor_Doc: TUniFormattedNumberEdit
              Left = 9
              Top = 17
              Width = 140
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 1
              FieldLabel = 'Valor do Documento'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor_Parcela: TUniFormattedNumberEdit
              Left = 9
              Top = 68
              Width = 140
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 2
              FieldLabel = 'Valor da Parcela'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor_Baixado: TUniFormattedNumberEdit
              Left = 9
              Top = 119
              Width = 140
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 3
              FieldLabel = 'Valor Baixado'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor_Aberto: TUniFormattedNumberEdit
              Left = 9
              Top = 170
              Width = 140
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 4
              FieldLabel = 'Valor em Aberto'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor_Juros: TUniFormattedNumberEdit
              Left = 9
              Top = 221
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 5
              FieldLabel = 'Valor dos Juros'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor_Multa: TUniFormattedNumberEdit
              Left = 9
              Top = 272
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 6
              FieldLabel = 'Valor da Multa'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBXValor_Desconto: TUniFormattedNumberEdit
              Left = 9
              Top = 323
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 7
              FieldLabel = 'Valor dos Descontos'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cBxValor: TUniFormattedNumberEdit
              Left = 9
              Top = 374
              Width = 140
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 8
              FieldLabel = 'Valor Total'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object gCambio: TUniGroupBox
            Left = 16
            Top = 300
            Width = 612
            Height = 73
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentShowHint = False
            Caption = 'CONTRATO DE C'#194'MBIO'
            TabOrder = 4
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cVariacaoCambial: TUniFormattedNumberEdit
              Left = 364
              Top = 15
              Width = 113
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Varia'#231#227'o C'#226'mbial'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalCambio: TUniFormattedNumberEdit
              Left = 482
              Top = 15
              Width = 117
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Total do C'#226'mbio'
              FieldLabelAlign = laTop
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTaxa_Cambial: TUniDBEdit
              Left = 150
              Top = 15
              Width = 102
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Taxa_Cambial'
              DataSource = dsContratos
              TabOrder = 1
              FieldLabel = 'Taxa C'#226'mbio'
              FieldLabelAlign = laTop
              SelectOnFocus = True
            end
            object cTaxa_FechamentoCambio: TUniFormattedNumberEdit
              Left = 257
              Top = 15
              Width = 102
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Taxa Fechamento'
              FieldLabelAlign = laTop
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnChange = cTaxa_FechamentoCambioChange
            end
            object cNumero_CC: TUniEdit
              Left = 9
              Top = 15
              Width = 135
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Text = ''
              TabOrder = 5
              FieldLabel = 'N'#186' Contrato'
              FieldLabelAlign = laTop
            end
          end
          object cBxData: TUniDateTimePicker
            Left = 15
            Top = 115
            Width = 138
            Height = 50
            Hint = ''
            ShowHint = True
            DateTime = 44579.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 6
            FieldLabel = 'Data da Liquida'#231#227'o'
            FieldLabelAlign = laTop
            BorderStyle = ubsSolid
          end
          object cBxForma_PgtoDoc: TUniEdit
            Left = 360
            Top = 164
            Width = 268
            Height = 50
            Hint = ''
            ShowHint = True
            BorderStyle = ubsSolid
            Text = ''
            TabOrder = 7
            FieldLabel = 'N'#186' Documento'
            FieldLabelAlign = laTop
          end
          object cBxForma_Pgto: TUniComboBox
            Left = 15
            Top = 164
            Width = 341
            Height = 50
            Hint = ''
            ShowHint = True
            Style = csDropDownList
            Text = ''
            TabOrder = 8
            Sorted = True
            AnyMatch = True
            FieldLabel = 'Forma de Pagamento'
            FieldLabelAlign = laTop
            SelectOnFocus = True
            IconItems = <>
            ReadOnlyMode = urmNotEditable
          end
          object cBxObs: TUniMemo
            Left = 15
            Top = 215
            Width = 613
            Height = 75
            Hint = ''
            ShowHint = True
            BorderStyle = ubsSolid
            TabOrder = 9
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelAlign = laTop
          end
        end
      end
    end
    object UniTabSheet7: TUniTabSheet
      Hint = ''
      Caption = 'Documentos Anexados'
      object UniDBGrid3: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1207
        Height = 767
        Hint = ''
        DataSource = dsPagarReceberDocs
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 0
      end
    end
    object UniTabSheet6: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Bloqueio de Per'#237'odo'
      object UniScrollBox2: TUniScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1201
        Height = 761
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1199
          759)
        ScrollHeight = 166
        object UniPanel7: TUniPanel
          AlignWithMargins = True
          Left = 346
          Top = 44
          Width = 383
          Height = 122
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
          object UniPanel8: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 84
            Width = 377
            Height = 35
            Hint = ''
            ShowHint = True
            Align = alBottom
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = 5526569
            object bBlocPer: TUniButton
              Left = 0
              Top = 1
              Width = 80
              Height = 35
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Caption = 'Bloquear'
              TabOrder = 1
              Images = UniMainModule.imgBotoes
              ImageIndex = 17
              OnClick = bBlocPerClick
            end
            object bBlocCanc: TUniSpeedButton
              Left = 80
              Top = 1
              Width = 90
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              ParentShowHint = False
              Caption = 'Cancelar'
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 2
              OnClick = bBlocCancClick
            end
          end
          object cDataBloqueio: TUniDateTimePicker
            Left = 23
            Top = 16
            Width = 138
            Height = 50
            Hint = ''
            ShowHint = True
            DateTime = 44579.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
            FieldLabel = 'Data de Bloqueio'
            FieldLabelAlign = laTop
            BorderStyle = ubsSolid
          end
        end
      end
    end
  end
  object Beneficiario: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = case when isnull(CNPJ, '#39#39') = '#39#39' then CNPJ else' +
        ' ISNULL(CPF, '#39#39') end'
      '      ,Fornecedor'
      '      ,Cliente'
      'from Destinatarios'
      'order by Nome')
    Left = 40
    Top = 168
  end
  object dsBeneficiario: TDataSource
    DataSet = Beneficiario
    Left = 40
    Top = 216
  end
  object PagarReceber: TFDQuery
    BeforePost = PagarReceberBeforePost
    BeforeDelete = PagarReceberBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      '      ,Baixa = Cast(0 as bit)'
      
        '      ,Nome = (select Nome_Financeiro from PlanoContas where Cod' +
        'igo = PR.Classificacao)'
      
        '      ,Beneficiario_Nome = (select Nome from Destinatarios where' +
        ' Codigo = pr.Beneficiario)'
      'from PagarReceber PR')
    Left = 40
    Top = 75
  end
  object dsPagarReceber: TDataSource
    DataSet = PagarReceber
    Left = 40
    Top = 123
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 1044
    Top = 6
  end
  object Baixas: TFDQuery
    BeforePost = BaixasBeforePost
    MasterSource = dsPagarReceber
    MasterFields = 'Empresa;Titulo'
    DetailFields = 'Empresa;Titulo'
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      
        '      ,Banco_Nome = (select Nome from Bancos where codigo = Banc' +
        'o)'
      'from PagarReceberBaixas'
      '--where Empresa = :Empresa'
      '--and Titulo = :Titulo')
    Left = 122
    Top = 74
    object BaixasRegistro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'Registro'
      Origin = 'Registro'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object BaixasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object BaixasTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
    end
    object BaixasData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object BaixasTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object BaixasBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object BaixasValor: TFMTBCDField
      FieldName = 'Valor'
      Origin = 'Valor'
      Precision = 18
      Size = 6
    end
    object BaixasValor_Multa: TFMTBCDField
      FieldName = 'Valor_Multa'
      Origin = 'Valor_Multa'
      Precision = 18
      Size = 6
    end
    object BaixasValor_Juros: TFMTBCDField
      FieldName = 'Valor_Juros'
      Origin = 'Valor_Juros'
      Precision = 18
      Size = 6
    end
    object BaixasValor_Desconto: TFMTBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      Precision = 18
      Size = 6
    end
    object BaixasForma_Pgto: TSmallintField
      FieldName = 'Forma_Pgto'
      Origin = 'Forma_Pgto'
    end
    object BaixasForma_PgtoDoc: TStringField
      FieldName = 'Forma_PgtoDoc'
      Origin = 'Forma_PgtoDoc'
      Size = 15
    end
    object BaixasCheque_Nominal: TStringField
      FieldName = 'Cheque_Nominal'
      Origin = 'Cheque_Nominal'
      Size = 50
    end
    object BaixasCheque_Assinado: TStringField
      FieldName = 'Cheque_Assinado'
      Origin = 'Cheque_Assinado'
      Size = 50
    end
    object BaixasCheque_Visado: TBooleanField
      FieldName = 'Cheque_Visado'
      Origin = 'Cheque_Visado'
    end
    object BaixasCheque_Cruzado: TBooleanField
      FieldName = 'Cheque_Cruzado'
      Origin = 'Cheque_Cruzado'
    end
    object BaixasTaxa_FechamentoCambio: TFMTBCDField
      FieldName = 'Taxa_FechamentoCambio'
      Origin = 'Taxa_FechamentoCambio'
      Precision = 18
      Size = 6
    end
    object BaixasTaxa_Data: TSQLTimeStampField
      FieldName = 'Taxa_Data'
      Origin = 'Taxa_Data'
    end
    object BaixasNumero_ContratoCambio: TStringField
      FieldName = 'Numero_ContratoCambio'
      Origin = 'Numero_ContratoCambio'
      Size = 15
    end
    object BaixasOrigem_Multa: TStringField
      FieldName = 'Origem_Multa'
      Origin = 'Origem_Multa'
      FixedChar = True
      Size = 1
    end
    object BaixasOrigem_Juros: TStringField
      FieldName = 'Origem_Juros'
      Origin = 'Origem_Juros'
      FixedChar = True
      Size = 1
    end
    object BaixasOrigem_Desconto: TStringField
      FieldName = 'Origem_Desconto'
      Origin = 'Origem_Desconto'
      FixedChar = True
      Size = 1
    end
    object BaixasBanco_Conta: TStringField
      FieldName = 'Banco_Conta'
      Origin = 'Banco_Conta'
      Size = 15
    end
    object BaixasConciliado: TBooleanField
      FieldName = 'Conciliado'
      Origin = 'Conciliado'
    end
    object BaixasObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object BaixasCompensacao: TBooleanField
      FieldName = 'Compensacao'
      Origin = 'Compensacao'
    end
    object BaixasCompensacao_Numero: TSmallintField
      FieldName = 'Compensacao_Numero'
      Origin = 'Compensacao_Numero'
    end
    object BaixasLote: TIntegerField
      FieldName = 'Lote'
      Origin = 'Lote'
    end
    object BaixasBordero: TIntegerField
      FieldName = 'Bordero'
      Origin = 'Bordero'
    end
    object BaixasBordero_Data: TDateField
      FieldName = 'Bordero_Data'
      Origin = 'Bordero_Data'
    end
    object BaixasBanco_Nome: TStringField
      FieldName = 'Banco_Nome'
      Origin = 'Banco_Nome'
      ReadOnly = True
      Size = 30
    end
  end
  object dsBaixas: TDataSource
    DataSet = Baixas
    Left = 121
    Top = 123
  end
  object Bancos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,Conta'
      'from Bancos'
      'order by Nome')
    Left = 40
    Top = 264
  end
  object dsBancos: TDataSource
    DataSet = Bancos
    Left = 40
    Top = 312
  end
  object Plano: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome = Nome_Financeiro'
      '      ,Tributo'
      '      ,Devolucao'
      '      ,Adiantamento'
      '      ,Tipo'
      'from PlanoContas'
      'order by Nome')
    Left = 121
    Top = 168
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 121
    Top = 216
  end
  object CentroCusto: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      'from CentroCusto'
      'order by cast(Codigo as int), nome')
    Left = 40
    Top = 360
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 40
    Top = 408
  end
  object Modal: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      'from ModalidadesPagamento'
      'order by Descricao')
    Left = 121
    Top = 264
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 121
    Top = 312
  end
  object Processos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo'
      '      ,Declaracao = DI'
      '      ,Tipo = '#39'IMPORTA'#199#195'O'#39
      '      ,Cliente'
      
        '      ,Cliente_Nome = (select Nome from Destinatarios Dst where ' +
        'Dst.Codigo = PI.Cliente)'
      'from ProcessosImp PI'
      'where Data_Encerramento is null'
      'union all'
      'select Processo'
      '      ,Declaracao = DE'
      '      ,Tipo = '#39'EXPORTA'#199#195'O'#39' '
      '      ,Cliente'
      
        '      ,Cliente_Nome = (select Nome from Destinatarios Dst where ' +
        'Dst.Codigo = PE.Cliente)'
      'from ProcessosExp PE'
      'where Data_Encerramento is null'
      'order by Tipo, Declaracao')
    Left = 121
    Top = 360
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 121
    Top = 408
  end
  object TipoDoc: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome FROM TipoDocumento')
    Left = 40
    Top = 456
  end
  object dsTipoDoc: TDataSource
    DataSet = TipoDoc
    Left = 40
    Top = 504
  end
  object Adiantamentos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select distinct '
      
        '       CNPJ = (select CNPJ from Destinatarios fr where fr.Codigo' +
        ' = pr.Beneficiario)'
      '      ,Adiantamento_Numero = isnull(Beneficiario, 0)'
      
        '      ,Nome = (select Nome from Destinatarios fr where fr.Codigo' +
        ' = pr.Beneficiario)'
      'from PagarReceber pr'
      
        'where (select isnull(Adiantamento, 0) from PlanoContas pc where ' +
        'pc.Codigo = pr.Conta) = 1')
    Left = 121
    Top = 456
    object AdiantamentosCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ReadOnly = True
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object AdiantamentosAdiantamento_Numero: TSmallintField
      FieldName = 'Adiantamento_Numero'
      Origin = 'Adiantamento_Numero'
      ReadOnly = True
      Required = True
    end
    object AdiantamentosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      ReadOnly = True
      Size = 60
    end
  end
  object dsAdiantamentos: TDataSource
    DataSet = Adiantamentos
    Left = 121
    Top = 504
  end
  object FormaPgto: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      'from FormaPagamento'
      '')
    Left = 40
    Top = 552
  end
  object dsFormaPgto: TDataSource
    DataSet = FormaPgto
    Left = 40
    Top = 600
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
    Left = 121
    Top = 552
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
    object EmpresasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Size = 2
    end
    object EmpresasFechamento_Financeiro: TDateField
      FieldName = 'Fechamento_Financeiro'
      Origin = 'Fechamento_Financeiro'
    end
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 121
    Top = 600
  end
  object tTmp: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from   Empresas'
      '')
    Left = 40
    Top = 648
  end
  object tDias: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from   Empresas'
      '')
    Left = 121
    Top = 648
  end
  object Contratos: TFDQuery
    MasterSource = dsPagarReceber
    MasterFields = 'Empresa;Documento_Numero'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'update ContratoCambio set Condicao_Cambio = 3'
      'select cc.Numero'
      '      ,cc.Data'
      '      ,bc.Nome as Banco_Nome'
      '      ,dst.Nome as Exportador'
      '      ,cdc.Descricao as Condicao_Cambial'
      '      ,md.Nome as Moeda'
      '      ,cc.Taxa_Cambial'
      '      ,cc.Total_ME'
      'from ContratoCambio cc'
      'left join Bancos bc on bc.Codigo = cc.Banco'
      'left join Moedas md on md.Codigo = cc.Moeda'
      'left join Destinatarios dst on dst.Codigo = cc.Exportador'
      'left join CondicaoCambial cdc on cdc.Codigo = cc.Condicao_Cambio'
      'where cc.Empresa = '#39'07922103000158'#39
      'and cc.Numero = '#39'TA740489'#39
      '')
    Left = 227
    Top = 75
  end
  object dsContratos: TDataSource
    DataSet = Contratos
    Left = 227
    Top = 123
  end
  object Cotacao: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from Cotacao')
    Left = 227
    Top = 168
  end
  object dsCotacao: TDataSource
    DataSet = Cotacao
    Left = 227
    Top = 216
  end
  object Config: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from Config')
    Left = 227
    Top = 361
  end
  object Lista: TFDQuery
    AfterScroll = ListaAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Titulo'
      '      ,Classificacao'
      '      ,Tipo'
      '      ,Centro_Custo'
      '      ,Data_Vencimento'
      '      ,Valor_Documento'
      '      ,Valor_Parcela'
      '      ,Documento_Numero'
      '      ,Processo'
      '      ,Baixa = Cast(0 as bit)'
      
        '      ,Nome = (select Nome_Financeiro from PlanoContas where Con' +
        'ta = pr.Classificacao)'
      
        '      ,Beneficiario = (select Nome from Destinatarios dst where ' +
        'dst.Codigo = pr.Beneficiario)'
      '      ,Valor_Juros'
      '      ,Valor_Multa'
      '      ,Valor_Desconto'
      '      ,Valor_Total'
      '      ,Valor_Operacao'
      
        '      ,Valor_Baixas = (select sum(isnull(Valor, 0)) from PagarRe' +
        'ceberBaixas prb where prb.Titulo = pr.Titulo)'
      
        '      ,Valor_Aberto = Valor_Parcela - (select sum(isnull(Valor, ' +
        '0)) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo)'
      '      ,Parcela'
      '      ,Origem'
      '      ,Vinculo'
      'from PagarReceber PR')
    Left = 227
    Top = 265
    object ListaTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
    end
    object ListaClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      Size = 15
    end
    object ListaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object ListaCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      Size = 10
    end
    object ListaData_Vencimento: TDateField
      FieldName = 'Data_Vencimento'
      Origin = 'Data_Vencimento'
    end
    object ListaValor_Documento: TFMTBCDField
      FieldName = 'Valor_Documento'
      Origin = 'Valor_Documento'
      Precision = 18
      Size = 6
    end
    object ListaValor_Parcela: TFMTBCDField
      FieldName = 'Valor_Parcela'
      Origin = 'Valor_Parcela'
      Precision = 18
      Size = 6
    end
    object ListaDocumento_Numero: TStringField
      FieldName = 'Documento_Numero'
      Origin = 'Documento_Numero'
      Size = 15
    end
    object ListaProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object ListaBaixa: TBooleanField
      FieldName = 'Baixa'
      Origin = 'Baixa'
      ReadOnly = True
    end
    object ListaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      ReadOnly = True
      Size = 60
    end
    object ListaBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
      ReadOnly = True
      Size = 60
    end
    object ListaValor_Juros: TFMTBCDField
      FieldName = 'Valor_Juros'
      Origin = 'Valor_Juros'
      Precision = 18
      Size = 6
    end
    object ListaValor_Multa: TFMTBCDField
      FieldName = 'Valor_Multa'
      Origin = 'Valor_Multa'
      Precision = 18
      Size = 6
    end
    object ListaValor_Desconto: TFMTBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      Precision = 18
      Size = 6
    end
    object ListaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      Precision = 18
      Size = 6
    end
    object ListaValor_Operacao: TFMTBCDField
      FieldName = 'Valor_Operacao'
      Origin = 'Valor_Operacao'
      Precision = 18
      Size = 6
    end
    object ListaValor_Baixas: TFMTBCDField
      FieldName = 'Valor_Baixas'
      Origin = 'Valor_Baixas'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object ListaValor_Aberto: TFMTBCDField
      FieldName = 'Valor_Aberto'
      Origin = 'Valor_Aberto'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object ListaParcela: TStringField
      FieldName = 'Parcela'
      Origin = 'Parcela'
      FixedChar = True
    end
    object ListaOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      FixedChar = True
      Size = 3
    end
    object ListaVinculo: TIntegerField
      FieldName = 'Vinculo'
      Origin = 'Vinculo'
    end
  end
  object dsLista: TDataSource
    DataSet = Lista
    Left = 227
    Top = 313
  end
  object ListaAd: TFDQuery
    MasterSource = dsPagarReceber
    MasterFields = 'Processo'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select pr.Titulo'
      '      ,pr.Valor_Total'
      '      ,pr.Documento_Data'
      '      ,pr.Adiantamento_Numero'
      '      ,pr.Banco'
      '      ,pr.Tipo'
      
        '      ,Valor_Baixado = isnull((select sum(Valor) from PagarReceb' +
        'erBaixas prb where prb.Titulo = pr.Titulo), 0)'
      
        '      ,Beneficiario = (select Nome from Destinatarios dst where ' +
        'dst.Codigo = pr.Adiantamento_Numero)'
      'from   PagarReceber pr'
      '--where  pr.Processo = '#39#39
      
        '--and   (select Adiantamento from PlanoContas pc where pc.Conta ' +
        '= pr.Conta) = 1'
      'order  by Tipo, Titulo ')
    Left = 289
    Top = 73
    object ListaAdTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
    end
    object ListaAdValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      Precision = 18
      Size = 6
    end
    object ListaAdDocumento_Data: TDateField
      FieldName = 'Documento_Data'
      Origin = 'Documento_Data'
    end
    object ListaAdAdiantamento_Numero: TIntegerField
      FieldName = 'Adiantamento_Numero'
      Origin = 'Adiantamento_Numero'
    end
    object ListaAdBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object ListaAdTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object ListaAdValor_Baixado: TFMTBCDField
      FieldName = 'Valor_Baixado'
      Origin = 'Valor_Baixado'
      ReadOnly = True
      Required = True
      Precision = 38
      Size = 6
    end
    object ListaAdBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
      ReadOnly = True
      Size = 60
    end
  end
  object dsListaAd: TDataSource
    DataSet = ListaAd
    Left = 289
    Top = 121
  end
  object Lancamentos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select pr.Titulo'
      '      ,pr.Valor_Total'
      '      ,pr.Documento_Data'
      '      ,pr.Adiantamento_Numero'
      '      ,pr.Banco'
      '      ,pr.Tipo'
      
        '      ,Valor_Baixado = isnull((select sum(Valor) from PagarReceb' +
        'erBaixas prb where prb.Titulo = pr.Titulo), 0)'
      
        '      ,Beneficiario = (select Nome from Destinatarios dst where ' +
        'dst.Codigo = pr.Adiantamento_Numero)'
      'from   PagarReceber pr'
      'where  pr.Processo = '#39#39
      
        'and   (select Adiantamento from PlanoContas pc where pc.Conta = ' +
        'pr.Conta) = 1'
      'order  by Tipo, Titulo ')
    Left = 227
    Top = 504
  end
  object Embarques: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      '      ,Referencia'
      '      ,Processo'
      'from   Embarques'
      'order by cast(Referencia as int), Navio')
    Left = 227
    Top = 552
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 227
    Top = 600
  end
  object PagarReceberDocs: TFDQuery
    BeforePost = PagarReceberBeforePost
    BeforeDelete = PagarReceberBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from PagarReceberDocs')
    Left = 227
    Top = 413
  end
  object dsPagarReceberDocs: TDataSource
    DataSet = PagarReceberDocs
    Left = 227
    Top = 461
  end
end
