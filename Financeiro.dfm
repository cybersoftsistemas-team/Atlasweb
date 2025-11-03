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
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 400
        Height = 761
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
        object bFiltro: TUniSpeedButton
          Left = 109
          Top = 330
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
          Left = 176
          Top = 13
          Width = 62
          Height = 17
          Hint = '  Agrupa todos os t'#237'tulos n'#227'o separando por data  '
          ShowHint = True
          ParentShowHint = False
          Caption = 'Agrupar'
          TabOrder = 2
          OnChange = cAgruparChange
        end
        object cBancoFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 90
          Width = 379
          Height = 24
          Hint = ''
          ListField = 'Conta;Nome'
          ListSource = dsBancos
          KeyField = 'Codigo'
          ListFieldIndex = 0
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
          Top = 38
          Width = 379
          Height = 24
          Hint = ''
          ListField = 'CNPJ_CPF;Nome'
          ListSource = dsBeneficiario
          KeyField = 'Codigo'
          ListFieldIndex = 0
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
          Top = 9
          Width = 157
          Height = 24
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
          BorderStyle = ubsSolid
        end
        object cContaFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 64
          Width = 379
          Height = 24
          Hint = ''
          ListField = 'Codigo;Nome'
          ListSource = dsPlano
          KeyField = 'Codigo'
          ListFieldIndex = 0
          ClearButton = True
          AnyMatch = True
          EmptyText = 'Conta'
          TabOrder = 6
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          FieldLabelAlign = laTop
          Style = csDropDown
        end
        object cProcessoFiltro: TUniDBLookupComboBox
          Left = 8
          Top = 116
          Width = 379
          Height = 24
          Hint = ''
          ListField = 'Declaracao;Processo'
          ListSource = dsProcessos
          KeyField = 'Processo'
          ListFieldIndex = 0
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
          Left = 200
          Top = 173
          Width = 187
          Height = 96
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
        end
        object cSituacao: TUniRadioGroup
          Left = 8
          Top = 274
          Width = 379
          Height = 49
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
          Top = 172
          Width = 173
          Height = 96
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
        end
        object bLimparFiltro: TUniSpeedButton
          Left = 203
          Top = 330
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
          Top = 142
          Width = 358
          Hint = ''
          Text = ''
          TabOrder = 12
          EmptyText = 'N'#186' Documento'
        end
      end
      object UniPanel6: TUniPanel
        AlignWithMargins = True
        Left = 409
        Top = 3
        Width = 795
        Height = 761
        Hint = ''
        Align = alClient
        TabOrder = 1
        BorderStyle = ubsNone
        Caption = 'UniPanel6'
        object UniPanel1: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 789
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
              Height = 28
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
            Width = 648
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
              Width = 648
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
              Width = 648
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
          Left = 0
          Top = 56
          Width = 795
          Height = 591
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
            Width = 795
            Height = 452
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
                FieldName = 'Conta'
                Title.Alignment = taCenter
                Title.Caption = 'Conta'
                Title.Font.Style = [fsBold]
                Width = 102
                Font.Style = [fsBold]
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
              end
              item
                FieldName = 'Valor_Parcela'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Parcela'
                Title.Font.Style = [fsBold]
                Width = 80
                ReadOnly = True
              end
              item
                FieldName = 'Valor_Aberto'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Aberto'
                Title.Font.Style = [fsBold]
                Width = 90
                ReadOnly = True
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
            Top = 452
            Width = 795
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
              end>
          end
        end
        object UniPanel4: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 650
          Width = 789
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
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 783
            Height = 73
            Hint = ''
            Align = alClient
            TabOrder = 1
            FieldLabel = 'Obeserva'#231#245'es do t'#237'tulo'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object brTotais: TUniSegmentedButton
            Left = 0
            Top = 79
            Width = 789
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
          1199
          759)
        ScrollHeight = 748
        object pFicha1: TUniPanel
          AlignWithMargins = True
          Left = 249
          Top = 7
          Width = 930
          Height = 741
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
          object cConta: TUniDBLookupComboBox
            Left = 12
            Top = 107
            Width = 442
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsPlano
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Conta'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Conta'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
            OnChange = cContaChange
            OnExit = cContaChange
          end
          object cData_Previsao: TUniDBDateTimePicker
            Left = 460
            Top = 107
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Previsao'
            DataSource = dsPagarReceber
            DateTime = 44489.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            BorderStyle = ubsSolid
            FieldLabel = 'Previs'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDocumento_Data: TUniDBDateTimePicker
            Left = 586
            Top = 206
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Data'
            DataSource = dsPagarReceber
            DateTime = 44489.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 8
            BorderStyle = ubsSolid
            FieldLabel = 'Data Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Vencimento: TUniDBDateTimePicker
            Left = 586
            Top = 107
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Data_Vencimento'
            DataSource = dsPagarReceber
            DateTime = 44501.000000000000000000
            TabOrder = 5
            UseSystemFormats = True
            BorderStyle = ubsSolid
            FieldLabel = 'Vencimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cBeneficiario: TUniDBLookupComboBox
            Left = 12
            Top = 304
            Width = 694
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ_CPF;Nome'
            ListSource = dsBeneficiario
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Beneficiario'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Benefici'#225'rio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cDocumento: TUniDBLookupComboBox
            Left = 12
            Top = 206
            Width = 442
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTipoDoc
            KeyField = 'Codigo'
            ListFieldIndex = 0
            ClearButton = True
            DataField = 'Documento_Tipo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cModalidade_Pgto: TUniDBLookupComboBox
            Left = 12
            Top = 402
            Width = 694
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModal
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Modalidade_Pgto'
            DataSource = dsPagarReceber
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Modalidade Pgto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object cObservacao: TUniDBMemo
            Left = 12
            Top = 502
            Width = 693
            Height = 78
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsPagarReceber
            TabOrder = 14
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCentro_Custo: TUniDBLookupComboBox
            Left = 12
            Top = 58
            Width = 694
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsCentroCusto
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Centro_Custo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Centro de Custo'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 12
            Top = 255
            Width = 276
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            ClearButton = True
            DataField = 'Processo'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Processo'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cAdiantamento: TUniDBLookupComboBox
            Left = 12
            Top = 353
            Width = 694
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Nome'
            ListSource = dsAdiantamentos
            KeyField = 'Adiantamento_Numero'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Adiantamento_Numero'
            DataSource = dsPagarReceber
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Adiantamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object UniGroupBox1: TUniGroupBox
            Left = 729
            Top = 5
            Width = 186
            Height = 87
            Hint = ''
            ShowHint = True
            Caption = 'Caracter'#237'sticas'
            TabOrder = 17
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cPago_Cliente: TUniDBCheckBox
              Left = 13
              Top = 18
              Width = 160
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Pago_Cliente'
              DataSource = dsPagarReceber
              Caption = 'Pago Pelo Cliente'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cRecuperavel: TUniDBCheckBox
              Left = 13
              Top = 37
              Width = 160
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Recuperavel'
              DataSource = dsPagarReceber
              Caption = 'Recuper'#225'vel'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cProvisorio: TUniDBCheckBox
              Left = 13
              Top = 56
              Width = 160
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Provisorio'
              DataSource = dsPagarReceber
              Caption = 'Documerno Provis'#243'rio'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cNumero_Documento: TUniDBEdit
            Left = 460
            Top = 206
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Documento_Numero'
            DataSource = dsPagarReceber
            TabOrder = 7
            FieldLabel = 'N'#186' '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniGroupBox2: TUniGroupBox
            Left = 729
            Top = 106
            Width = 186
            Height = 539
            Hint = ''
            ShowHint = True
            Caption = 'Valores'
            TabOrder = 16
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cValor_Desconto: TUniDBFormattedNumberEdit
              Left = 13
              Top = 267
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_Desconto'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Valor Desconto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cValor_DescontoExit
            end
            object cDesconto_Liquidacao: TUniDBFormattedNumberEdit
              Left = 13
              Top = 318
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Desconto_Liquidacao'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              SelectOnFocus = True
              FieldLabel = 'Valor Desconto (Dupl)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cDesconto_LiquidacaoExit
            end
            object cValor_Juros: TUniDBFormattedNumberEdit
              Left = 13
              Top = 165
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_Juros'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Valor Juros'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cValor_JurosExit
            end
            object cValor_Multa: TUniDBFormattedNumberEdit
              Left = 13
              Top = 216
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_Multa'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Valor Multa'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cValor_MultaExit
            end
            object cValor_Total: TUniDBFormattedNumberEdit
              Left = 13
              Top = 369
              Width = 160
              Height = 50
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
              TabOrder = 6
              TabStop = False
              Color = clActiveCaption
              ReadOnly = True
              SelectOnFocus = True
              FieldLabel = 'Valor Total'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cValor_Parcela: TUniDBFormattedNumberEdit
              Left = 13
              Top = 64
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_Parcela'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Valor Parcela'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cValor_ParcelaExit
            end
            object cValor_Documento: TUniDBFormattedNumberEdit
              Left = 13
              Top = 13
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_Documento'
              DataSource = dsPagarReceber
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              SelectOnFocus = True
              FieldLabel = 'Valor Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
              OnExit = cValor_DocumentoExit
            end
            object cValorBaixa: TUniFormattedNumberEdit
              Left = 13
              Top = 115
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              Alignment = taRightJustify
              TabOrder = 8
              FieldLabel = 'Valor Baixa'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cSaldo: TUniFormattedNumberEdit
              Left = 13
              Top = 420
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 9
              TabStop = False
              Color = clActiveCaption
              ReadOnly = True
              SelectOnFocus = True
              FieldLabel = 'Saldo Aberto'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniFormattedNumberEdit1: TUniFormattedNumberEdit
              Left = 13
              Top = 471
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 10
              TabStop = False
              Color = clActiveCaption
              ReadOnly = True
              SelectOnFocus = True
              FieldLabel = 'Saldo Documento'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object cEmpresa: TUniDBLookupComboBox
            Left = 138
            Top = 9
            Width = 568
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Unidade;Estado'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            DataField = 'Empresa'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Filial'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
            OnChange = cContaChange
          end
          object cNumero: TUniDBEdit
            Left = 12
            Top = 9
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Titulo'
            DataSource = dsPagarReceber
            Alignment = taCenter
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 0
            TabStop = False
            Color = clActiveCaption
            ReadOnly = True
            UseFieldAlignment = False
            FieldLabel = 'T'#237'tulo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DontUpdateOnKeyEvents = True
            BorderStyle = ubsSolid
          end
          object cEmbarque: TUniDBLookupComboBox
            Left = 294
            Top = 255
            Width = 412
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Referencia;Navio;Processo'
            ListSource = dsEmbarques
            KeyField = 'Registro'
            ListFieldIndex = 0
            ClearButton = True
            DataField = 'Embarque'
            DataSource = dsPagarReceber
            AnyMatch = True
            TabOrder = 10
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Embarque'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniGroupBox3: TUniGroupBox
            Left = 12
            Top = 594
            Width = 694
            Height = 133
            Hint = ''
            ShowHint = True
            Caption = 'Dados Banc'#225'rios (Baixa)'
            TabOrder = 18
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cNumeroPgto: TUniDBEdit
              Left = 468
              Top = 64
              Width = 209
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Forma_PgtoDoc'
              DataSource = dsPagarReceber
              TabOrder = 1
              FieldLabel = 'N'#186' do Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDataBaixa: TUniDateTimePicker
              Left = 562
              Top = 14
              Width = 115
              Height = 50
              Hint = ''
              ShowHint = True
              DateTime = 45600.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 2
              FieldLabel = 'Data Baixa'
              FieldLabelAlign = laTop
            end
            object cBanco: TUniDBLookupComboBox
              Left = 7
              Top = 14
              Width = 549
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Nome;Conta'
              ListSource = dsBancos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Banco'
              DataSource = dsPagarReceber
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Banco'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
            object UniDBLookupComboBox11: TUniDBLookupComboBox
              Left = 7
              Top = 64
              Width = 455
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsFormaPgto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Forma_Pgto'
              DataSource = dsPagarReceber
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Forma de Pagamento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
          end
          object cCodigoBarras: TUniDBEdit
            Left = 12
            Top = 452
            Width = 693
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_Barras'
            DataSource = dsPagarReceber
            TabOrder = 19
            FieldLabel = 'C'#243'digo de Barras'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBEdit5: TUniDBEdit
            Left = 12
            Top = 157
            Width = 177
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Origem_Numero'
            DataSource = dsPagarReceber
            TabOrder = 20
            FieldLabel = 'Nota de Refer'#234'ncia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDateTimePicker2: TUniDateTimePicker
            Left = 196
            Top = 157
            Width = 120
            Height = 50
            Hint = ''
            ShowHint = True
            DateTime = 45638.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 21
            FieldLabel = 'Data de Refer'#234'ncia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
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
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 48
            Alignment = taCenter
          end
          item
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 95
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
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Baixa'
            Title.Font.Style = [fsBold]
            Width = 94
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 60
            Alignment = taCenter
          end
          item
            FieldName = 'Banco_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Style = [fsBold]
            Width = 225
            ReadOnly = True
          end
          item
            FieldName = 'Forma_Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Forma de Pgto.'
            Title.Font.Style = [fsBold]
            Width = 191
          end
          item
            FieldName = 'Forma_TipoDocumento'
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Title.Font.Style = [fsBold]
            Width = 129
          end
          item
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 98
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
            Top = 380
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
            OnChange = cBxForma_PgtoChange
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
          object gCheque: TUniGroupBox
            Left = 16
            Top = 297
            Width = 612
            Height = 73
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentShowHint = False
            Caption = 'DADOS DO CHEQUE'
            TabOrder = 10
            ParentFont = False
            Font.Style = [fsBold]
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cBxChequeNominal: TUniEdit
              Left = 9
              Top = 15
              Width = 250
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Text = ''
              TabOrder = 1
              FieldLabel = 'Nominal '#225
              FieldLabelAlign = laTop
            end
            object cBxChequeAssinado: TUniEdit
              Left = 263
              Top = 15
              Width = 250
              Height = 50
              Hint = ''
              ShowHint = True
              BorderStyle = ubsSolid
              Text = ''
              TabOrder = 2
              FieldLabel = 'Assinado Por'
              FieldLabelAlign = laTop
            end
            object cBxChequeCruzado: TUniCheckBox
              Left = 532
              Top = 22
              Width = 70
              Height = 17
              Hint = ''
              ShowHint = True
              Caption = 'Cruzado'
              TabOrder = 3
            end
            object cBxChequeVizado: TUniCheckBox
              Left = 532
              Top = 41
              Width = 70
              Height = 17
              Hint = ''
              ShowHint = True
              Caption = 'Visado'
              TabOrder = 4
            end
          end
        end
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
        'igo = PR.Conta)'
      
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
      'from PagarReceberBaixas')
    Left = 113
    Top = 75
    object BaixasRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object BaixasTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
      Required = True
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
    object BaixasValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object BaixasBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Banco'
    end
    object BaixasValor_Multa: TCurrencyField
      FieldName = 'Valor_Multa'
      Origin = 'Valor_Multa'
      DisplayFormat = ',##0.00'
    end
    object BaixasValor_Juros: TCurrencyField
      FieldName = 'Valor_Juros'
      Origin = 'Valor_Juros'
      DisplayFormat = ',##0.00'
    end
    object BaixasValor_Desconto: TCurrencyField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object BaixasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object BaixasBanco_Nome: TStringField
      FieldName = 'Banco_Nome'
      Origin = 'Banco_Nome'
      ReadOnly = True
      Size = 30
    end
    object BaixasObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object BaixasForma_Pgto: TStringField
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
    object BaixasTaxa_FechamentoCambio: TFloatField
      FieldName = 'Taxa_FechamentoCambio'
      Origin = 'Taxa_FechamentoCambio'
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
    object BaixasCompensacao: TBooleanField
      FieldName = 'Compensacao'
      Origin = 'Compensacao'
    end
    object BaixasCompensacao_Numero: TSmallintField
      FieldName = 'Compensacao_Numero'
      Origin = 'Compensacao_Numero'
    end
  end
  object dsBaixas: TDataSource
    DataSet = Baixas
    Left = 113
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
    Left = 113
    Top = 168
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 113
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
    Left = 113
    Top = 264
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 113
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
    Left = 113
    Top = 360
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 113
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
    Left = 113
    Top = 455
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
    Left = 113
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
    Left = 113
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
    Left = 113
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
    Left = 113
    Top = 648
  end
  object Contratos: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from ContratoCambio'
      '')
    Left = 195
    Top = 75
  end
  object dsContratos: TDataSource
    DataSet = Contratos
    Left = 195
    Top = 123
  end
  object Cotacao: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from Cotacao')
    Left = 195
    Top = 169
  end
  object dsCotacao: TDataSource
    DataSet = Cotacao
    Left = 195
    Top = 217
  end
  object Config: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from Config')
    Left = 195
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
      '      ,Conta '
      '      ,Tipo'
      '      ,Centro_Custo'
      '      ,Data_Vencimento'
      '      ,Valor_Documento'
      '      ,Valor_Parcela'
      '      ,Documento_Numero'
      '      ,Processo'
      '      ,Baixa = Cast(0 as bit)'
      
        '      ,Nome = (select Nome_Financeiro from PlanoContas where Con' +
        'ta = PR.Conta)'
      
        '      ,Beneficiario = (select Nome from Destinatarios where Codi' +
        'go = PR.Destinatario)'
      '      ,Valor_Juros'
      '      ,Valor_Multa'
      '      ,Valor_Desconto'
      '      ,Valor_Parcela'
      '      ,Valor_Total'
      '      ,Valor_Operacao'
      
        '      ,Valor_Aberto = Valor_Parcela - (select sum(isnull(Valor, ' +
        '0)) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo)'
      '      ,Parcela'
      '      ,Origem'
      '      ,Vinculo'
      'from PagarReceber PR')
    Left = 195
    Top = 265
    object ListaTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
      Required = True
    end
    object ListaConta: TStringField
      FieldName = 'Conta'
      Origin = 'Conta'
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
    object ListaValor_Documento: TCurrencyField
      FieldName = 'Valor_Documento'
      Origin = 'Valor_Documento'
      DisplayFormat = ',##0.00'
    end
    object ListaValor_Parcela: TCurrencyField
      FieldName = 'Valor_Parcela'
      Origin = 'Valor_Parcela'
      DisplayFormat = ',##0.00'
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
    object ListaParcela: TStringField
      FieldName = 'Parcela'
      Origin = 'Parcela'
      FixedChar = True
    end
    object ListaBaixa: TBooleanField
      FieldName = 'Baixa'
      Origin = 'Baixa'
      ReadOnly = True
    end
    object ListaBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = 'Beneficiario'
      ReadOnly = True
      Size = 60
    end
    object ListaValor_Juros: TCurrencyField
      FieldName = 'Valor_Juros'
      Origin = 'Valor_Juros'
      DisplayFormat = ',##0.00'
    end
    object ListaValor_Multa: TCurrencyField
      FieldName = 'Valor_Multa'
      Origin = 'Valor_Multa'
      DisplayFormat = ',##0.00'
    end
    object ListaValor_Desconto: TCurrencyField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object ListaValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      DisplayFormat = ',##0.00'
    end
    object ListaValor_Operacao: TCurrencyField
      FieldName = 'Valor_Operacao'
      Origin = 'Valor_Operacao'
    end
    object ListaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      ReadOnly = True
      Size = 60
    end
    object ListaValor_Baixado: TCurrencyField
      FieldName = 'Valor_Aberto'
      Origin = 'Valor_Baixado'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object dsLista: TDataSource
    DataSet = Lista
    Left = 195
    Top = 313
  end
  object ListaAd: TFDQuery
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
    Left = 193
    Top = 408
    object ListaAdTitulo: TLargeintField
      FieldName = 'Titulo'
      Origin = 'Titulo'
      Required = True
    end
    object ListaAdValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      DisplayFormat = ',##0.00'
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
    object ListaAdValor_Baixado: TCurrencyField
      FieldName = 'Valor_Baixado'
      Origin = 'Valor_Baixado'
      ReadOnly = True
      Required = True
      DisplayFormat = ',##0.00'
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
    Left = 193
    Top = 456
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
    Left = 193
    Top = 504
  end
  object Embarques: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Registro'
      '      ,Navio'
      '      ,Referencia'
      '      ,Processo'
      'from   Embarques'
      'order by cast(Referencia as int), Navio')
    Left = 190
    Top = 556
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 190
    Top = 604
  end
end
