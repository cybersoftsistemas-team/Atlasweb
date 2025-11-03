object fCtbLancamentos: TfCtbLancamentos
  Left = 0
  Top = 0
  Width = 1331
  Height = 740
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1331
    Height = 705
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    TabOrder = 0
    object pLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 1323
        Height = 72
        Hint = ''
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';  '#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object UniPanel3: TUniPanel
          Left = 5
          Top = 7
          Width = 451
          Height = 59
          Hint = ''
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          Caption = ''
          Color = clNone
          object cAno: TUniSpinEdit
            Left = 178
            Top = 1
            Width = 80
            Height = 50
            Hint = ''
            TabOrder = 1
            FieldLabel = 'Ano'
            FieldLabelWidth = 40
            FieldLabelAlign = laTop
          end
          object bFiltro: TUniSpeedButton
            Left = 400
            Top = 9
            Width = 40
            Height = 40
            Hint = '  Atualiza os dados do endere'#231'o'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 8
            TabOrder = 2
            OnClick = bFiltroClick
          end
          object cMes: TUniSpinEdit
            Left = 94
            Top = 1
            Width = 80
            Height = 50
            Hint = ''
            MaxValue = 12
            MinValue = 1
            TabOrder = 3
            FieldLabel = 'M'#234's'
            FieldLabelWidth = 40
            FieldLabelAlign = laTop
          end
          object cDia: TUniSpinEdit
            Left = 8
            Top = 1
            Width = 80
            Height = 50
            Hint = ''
            MaxValue = 31
            MinValue = 1
            TabOrder = 4
            FieldLabel = 'Dia'
            FieldLabelWidth = 40
            FieldLabelAlign = laTop
          end
          object cTodos: TUniCheckBox
            Left = 264
            Top = 26
            Width = 115
            Height = 17
            Hint = ''
            Caption = 'Todos os Dias'
            ParentFont = False
            Font.Height = -13
            TabOrder = 5
            FieldLabelWidth = 80
            OnChange = cTodosChange
          end
        end
      end
      object Panel8: TUniPanel
        Left = 1103
        Top = 72
        Width = 220
        Height = 605
        Hint = ''
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Enabled = False
        Align = alRight
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object GroupBox1: TUniGroupBox
          Left = 6
          Top = -2
          Width = 205
          Height = 136
          Hint = ''
          Caption = 'Total do Lote'
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Grupo'#39';'#13#10'}')
          object cDebLote: TUniDBEdit
            Left = 9
            Top = 61
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DebLote'
            DataSource = dstTotaliza
            TabOrder = 2
            FieldLabel = 'D'#233'bitos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object cDifLote: TUniDBEdit
            Left = 9
            Top = 107
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DifLote'
            DataSource = dstTotaliza
            TabOrder = 4
            FieldLabel = 'Diferen'#231'a'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object cCredLote: TUniDBEdit
            Left = 9
            Top = 84
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'CredLote'
            DataSource = dstTotaliza
            TabOrder = 3
            FieldLabel = 'Cr'#233'ditos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object cLanLote: TUniDBEdit
            Left = 9
            Top = 38
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LanLote'
            DataSource = dstTotaliza
            TabOrder = 1
            FieldLabel = 'Lan'#231'amentos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object cLote: TUniDBEdit
            Left = 9
            Top = 15
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'Lote'
            DataSource = dstTotaliza
            TabOrder = 0
            FieldLabel = 'Lote'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
        end
        object UniGroupBox3: TUniGroupBox
          Left = 6
          Top = 140
          Width = 205
          Height = 136
          Hint = ''
          Caption = 'Total do Dia'
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Grupo'#39';'#13#10'}')
          object UniDBEdit3: TUniDBEdit
            Left = 9
            Top = 61
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DebDia'
            DataSource = dstTotaliza
            TabOrder = 2
            FieldLabel = 'D'#233'bitos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit4: TUniDBEdit
            Left = 9
            Top = 107
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DifDia'
            DataSource = dstTotaliza
            TabOrder = 4
            FieldLabel = 'Diferen'#231'a'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit5: TUniDBEdit
            Left = 9
            Top = 84
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'CredDia'
            DataSource = dstTotaliza
            TabOrder = 3
            FieldLabel = 'Cr'#233'ditos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit6: TUniDBEdit
            Left = 9
            Top = 38
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LanDia'
            DataSource = dstTotaliza
            TabOrder = 1
            FieldLabel = 'Lan'#231'amentos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit7: TUniDBEdit
            Left = 9
            Top = 15
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LotesDia'
            DataSource = dstTotaliza
            TabOrder = 0
            FieldLabel = 'Lote'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
        end
        object UniGroupBox4: TUniGroupBox
          Left = 6
          Top = 282
          Width = 205
          Height = 136
          Hint = ''
          Caption = 'Total do M'#234's'
          TabOrder = 3
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Grupo'#39';'#13#10'}')
          object UniDBEdit8: TUniDBEdit
            Left = 9
            Top = 61
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DebMes'
            DataSource = dstTotaliza
            TabOrder = 2
            FieldLabel = 'D'#233'bitos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit9: TUniDBEdit
            Left = 9
            Top = 107
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DifMes'
            DataSource = dstTotaliza
            TabOrder = 4
            FieldLabel = 'Diferen'#231'a'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit10: TUniDBEdit
            Left = 9
            Top = 84
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'CredMes'
            DataSource = dstTotaliza
            TabOrder = 3
            FieldLabel = 'Cr'#233'ditos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit11: TUniDBEdit
            Left = 9
            Top = 38
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LanMes'
            DataSource = dstTotaliza
            TabOrder = 1
            FieldLabel = 'Lan'#231'amentos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit12: TUniDBEdit
            Left = 9
            Top = 15
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LotesMes'
            DataSource = dstTotaliza
            TabOrder = 0
            FieldLabel = 'Lote'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
        end
        object UniGroupBox5: TUniGroupBox
          Left = 6
          Top = 425
          Width = 205
          Height = 136
          Hint = ''
          Caption = 'Total do Ano'
          TabOrder = 4
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Grupo'#39';'#13#10'}')
          object UniDBEdit13: TUniDBEdit
            Left = 9
            Top = 61
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DebAno'
            DataSource = dstTotaliza
            TabOrder = 2
            FieldLabel = 'D'#233'bitos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit14: TUniDBEdit
            Left = 9
            Top = 107
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'DifAno'
            DataSource = dstTotaliza
            TabOrder = 4
            FieldLabel = 'Diferen'#231'a'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit15: TUniDBEdit
            Left = 9
            Top = 84
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'CredAno'
            DataSource = dstTotaliza
            TabOrder = 3
            FieldLabel = 'Cr'#233'ditos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit16: TUniDBEdit
            Left = 9
            Top = 38
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LanAno'
            DataSource = dstTotaliza
            TabOrder = 1
            FieldLabel = 'Lan'#231'amentos'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
          object UniDBEdit17: TUniDBEdit
            Left = 9
            Top = 15
            Width = 183
            Height = 20
            Hint = ''
            DataField = 'LotesAno'
            DataSource = dstTotaliza
            TabOrder = 0
            FieldLabel = 'Lote'
            FieldLabelWidth = 60
            FieldLabelSeparator = ' '
          end
        end
      end
      object UniPanel2: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 75
        Width = 1097
        Height = 599
        Hint = ''
        Align = alClient
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10#13#10'}')
        BorderStyle = ubsNone
        ShowCaption = False
        Caption = 'UniPanel2'
        object gLotes: TUniDBGrid
          Left = 0
          Top = 0
          Width = 1097
          Height = 279
          Hint = ''
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CreateOrder = 3
          DataSource = dstLotes
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.PageSize = 30
          LoadMask.Message = 'Carregando dados ...'
          ForceFit = True
          BorderStyle = ubsSingle
          Align = alClient
          TabOrder = 1
          ParentColor = False
          Color = 13828095
          OnCellClick = gLotesCellClick
          OnDblClick = gLotesDblClick
          Columns = <
            item
              FieldName = 'Data'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Style = [fsBold]
              Width = 58
              Alignment = taCenter
            end
            item
              FieldName = 'Lote'
              Title.Alignment = taCenter
              Title.Caption = 'Lote'
              Title.Font.Style = [fsBold]
              Width = 35
              Alignment = taCenter
            end
            item
              FieldName = 'Origem'
              Title.Alignment = taCenter
              Title.Caption = 'Origem'
              Title.Font.Style = [fsBold]
              Width = 64
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 161
            end
            item
              FieldName = 'Contabilizar'
              Title.Alignment = taCenter
              Title.Caption = 'Contabilizar'
              Title.Font.Style = [fsBold]
              Width = 64
              Alignment = taCenter
            end
            item
              FieldName = 'Aberto'
              Title.Alignment = taCenter
              Title.Caption = 'Aberto'
              Title.Font.Style = [fsBold]
              Width = 64
              Alignment = taCenter
            end>
        end
        object gLancamentos: TUniDBGrid
          Left = 0
          Top = 279
          Width = 1097
          Height = 320
          Hint = ''
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataSource = dsLancamentos
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.PageSize = 30
          LoadMask.Message = 'Carregando dados ...'
          ForceFit = True
          BorderStyle = ubsSingle
          Align = alBottom
          TabOrder = 2
          Columns = <
            item
              FieldName = 'Numero'
              Title.Alignment = taCenter
              Title.Caption = 'Lan'
              Title.Font.Style = [fsBold]
              Width = 60
              Alignment = taCenter
            end
            item
              FieldName = 'Conta_Debito'
              Title.Alignment = taCenter
              Title.Caption = 'Cta (D)'
              Title.Font.Style = [fsBold]
              Width = 70
            end
            item
              FieldName = 'Descricao_Debito'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o (D)'
              Title.Font.Style = [fsBold]
              Width = 174
              ReadOnly = True
            end
            item
              FieldName = 'Processo_Debito'
              Title.Alignment = taCenter
              Title.Caption = 'Processo (D)'
              Title.Font.Style = [fsBold]
              Width = 100
            end
            item
              FieldName = 'Conta_Credito'
              Title.Alignment = taCenter
              Title.Caption = 'Cta (C)'
              Title.Font.Style = [fsBold]
              Width = 70
            end
            item
              FieldName = 'Descricao_Credito'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o (C)'
              Title.Font.Style = [fsBold]
              Width = 186
              ReadOnly = True
            end
            item
              FieldName = 'Processo_Credito'
              Title.Alignment = taCenter
              Title.Caption = 'Processo (C)'
              Title.Font.Style = [fsBold]
              Width = 100
            end
            item
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Style = [fsBold]
              Width = 88
            end
            item
              FieldName = 'Historico_Codigo'
              Title.Alignment = taCenter
              Title.Caption = 'Hist'#243'rico'
              Title.Font.Style = [fsBold]
              Width = 64
            end
            item
              FieldName = 'Historico_Complemento'
              Title.Alignment = taCenter
              Title.Caption = 'Complemento do Hist'#243'rico'
              Title.Font.Style = [fsBold]
              Width = 380
              DisplayMemo = True
            end>
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Lote/Lan'#231'amento'
      object UniScrollBox3: TUniScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1317
        Height = 671
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ScrollWidth = 1119
        object UniPanel5: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 460
          Height = 663
          Hint = ''
          Align = alLeft
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleVisible = True
          Title = 'DADOS DO LOTE'
          Caption = ''
          Color = clWhite
          object pFichaLote: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 454
            Height = 616
            Hint = ''
            Enabled = False
            ParentShowHint = False
            Align = alClient
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                ' '#39'Painel'#39';'#13#10'}')
            BorderStyle = ubsNone
            ShowCaption = False
            Caption = ''
            Color = clTeal
            object cDescricao: TUniDBEdit
              Left = 87
              Top = 105
              Width = 354
              Height = 50
              Hint = ''
              DataField = 'Descricao'
              DataSource = dstLotes
              TabOrder = 1
              FieldLabel = 'Descri'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBDateTimePicker3: TUniDBDateTimePicker
              Left = 11
              Top = 154
              Width = 120
              Height = 50
              Hint = ''
              ParentCustomHint = False
              ShowHint = True
              ParentShowHint = False
              DataField = 'Data'
              DataSource = dstLotes
              DateTime = 44923.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 2
              Color = 13828095
              BorderStyle = ubsSolid
              FieldLabel = 'Data'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit26: TUniDBEdit
              Left = 11
              Top = 54
              Width = 70
              Height = 50
              Hint = ''
              Enabled = False
              DataField = 'Lote'
              DataSource = dstLotes
              TabOrder = 3
              Color = 13828095
              FieldLabel = 'Lote n'#186
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit27: TUniDBEdit
              Left = 11
              Top = 104
              Width = 70
              Height = 50
              Hint = ''
              Enabled = False
              DataField = 'Origem'
              DataSource = dstLotes
              TabOrder = 4
              Color = 13828095
              FieldLabel = 'C'#243'digo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 11
              Top = 223
              Width = 65
              Height = 17
              Hint = ''
              DataField = 'Aberto'
              DataSource = dstLotes
              Caption = 'Aberto'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 11
              Top = 246
              Width = 82
              Height = 17
              Hint = ''
              DataField = 'Contabilizar'
              DataSource = dstLotes
              Caption = 'Contabilizar'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
            end
            object cEmpresa: TUniDBLookupComboBox
              Left = 11
              Top = 4
              Width = 430
              Height = 50
              Hint = ''
              ListField = 'Razao_Social;CNPJ;Numero_Filial'
              ListSource = dstEmpresas
              KeyField = 'CNPJ'
              ListFieldIndex = 0
              DataField = 'Empresa'
              DataSource = dstLotes
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Empresa'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
          end
          object UniPanel6: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 625
            Width = 454
            Height = 35
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Align = alBottom
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            ShowCaption = False
            Caption = ''
            Color = 5526569
            object NavLote: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 167
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dstLotes
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bAdLote: TUniSpeedButton
              Left = 165
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Adicionar novo registro.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 0
              TabOrder = 2
              OnClick = bAdLoteClick
            end
            object bEdLote: TUniSpeedButton
              Left = 206
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Editar registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 1
              TabOrder = 3
              OnClick = bEdLoteClick
            end
            object bExcLote: TUniSpeedButton
              Left = 247
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Excluir registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 4
              OnClick = bExcLoteClick
            end
            object bCancLote: TUniSpeedButton
              Left = 329
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 6
              OnClick = bCancLoteClick
            end
            object bGravLote: TUniSpeedButton
              Left = 288
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Salva o registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 4
              TabOrder = 5
              OnClick = bGravLoteClick
            end
          end
        end
        object UniPanel7: TUniPanel
          AlignWithMargins = True
          Left = 469
          Top = 3
          Width = 650
          Height = 663
          Hint = ''
          Align = alLeft
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleVisible = True
          Title = 'DADOS DO LAN'#199'AMENTO'
          Caption = ''
          Color = clWhite
          object pFichaLan: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 644
            Height = 616
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentShowHint = False
            Align = alClient
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = ''
            Color = clTeal
            object cConta_Credito: TUniDBLookupComboBox
              Left = 13
              Top = 105
              Width = 403
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome_Contabil'
              ListSource = dstPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Conta_Credito'
              DataSource = dsLancamentos
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              MatchFieldWidth = False
              FieldLabel = 'Conta Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cConta_Debito: TUniDBLookupComboBox
              Left = 13
              Top = 55
              Width = 403
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome_Contabil'
              ListSource = dstPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Conta_Debito'
              DataSource = dsLancamentos
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              MatchFieldWidth = False
              FieldLabel = 'Conta D'#233'bito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox4: TUniDBLookupComboBox
              Left = 422
              Top = 55
              Width = 211
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Tipo;Declaracao;Processo;'
              ListSource = dstProcessos
              KeyField = 'Processo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Processo_Debito'
              DataSource = dsLancamentos
              TabOrder = 3
              Color = clWindow
              MatchFieldWidth = False
              FieldLabel = 'Processo D'#233'bito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit21: TUniDBEdit
              Left = 467
              Top = 254
              Width = 166
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Documento'
              DataSource = dsLancamentos
              TabOrder = 10
              FieldLabel = 'N'#250'mero'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBDateTimePicker2: TUniDBDateTimePicker
              Left = 350
              Top = 254
              Width = 110
              Height = 50
              Cursor = crArrow
              Hint = ''
              ShowHint = True
              DataField = 'Data_Documento'
              DataSource = dsLancamentos
              DateTime = 44923.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 9
              BorderStyle = ubsSolid
              FieldLabel = 'Data Doc'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBLookupComboBox5: TUniDBLookupComboBox
              Left = 13
              Top = 254
              Width = 331
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Tipo_Documento'
              DataSource = dsLancamentos
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Tipo Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox6: TUniDBLookupComboBox
              Left = 422
              Top = 106
              Width = 211
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Tipo;Declaracao;Processo;'
              ListSource = dstProcessos
              KeyField = 'Processo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Processo_Credito'
              DataSource = dsLancamentos
              TabOrder = 5
              Color = clWindow
              MatchFieldWidth = False
              FieldLabel = 'Processo Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cEmpresaLan: TUniDBEdit
              Left = 103
              Top = 5
              Width = 530
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Origem_Descricao'
              DataSource = dsLancamentos
              TabOrder = 1
              FieldLabel = 'Descri'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cHistorico_Codigo: TUniDBEdit
              Left = 13
              Top = 304
              Width = 85
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Historico_Codigo'
              DataSource = dsLancamentos
              TabOrder = 11
              FieldLabel = 'Hist'#243'rico (C'#243'digo)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cHistorico_Complemento: TUniDBMemo
              Left = 13
              Top = 354
              Width = 620
              Height = 85
              Hint = ''
              ShowHint = True
              DataField = 'Historico_Complemento'
              DataSource = dsLancamentos
              TabOrder = 13
              FieldLabel = 'Hist'#243'rico Complemento '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBLookupComboBox7: TUniDBLookupComboBox
              Left = 13
              Top = 155
              Width = 620
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dstBenef
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Beneficiario'
              DataSource = dsLancamentos
              AnyMatch = True
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Benefici'#225'rio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cHistorico: TUniDBLookupComboBox
              Left = 103
              Top = 304
              Width = 530
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Historico_Codigo'
              DataSource = dsLancamentos
              AnyMatch = True
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Hist'#243'rico (Descri'#231#227'o)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit18: TUniDBEdit
              Left = 13
              Top = 5
              Width = 84
              Height = 50
              Hint = ''
              Enabled = False
              ShowHint = True
              DataField = 'Origem'
              DataSource = dsLancamentos
              TabOrder = 0
              FieldLabel = 'Origem'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cValor: TUniDBFormattedNumberEdit
              Left = 13
              Top = 205
              Width = 160
              Height = 50
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor'
              DataSource = dsLancamentos
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              SelectOnFocus = True
              FieldLabel = 'Valor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
          object UniPanel8: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 625
            Width = 644
            Height = 35
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Align = alBottom
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = 5526569
            object NavLan: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 167
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dsLancamentos
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bAdLan: TUniSpeedButton
              Left = 165
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Adicionar novo registro.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 0
              TabOrder = 2
              OnClick = bAdLanClick
            end
            object bEdLan: TUniSpeedButton
              Left = 206
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Editar registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 1
              TabOrder = 3
              OnClick = bEdLanClick
            end
            object bExcLan: TUniSpeedButton
              Left = 247
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Excluir registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 4
              OnClick = bExcLanClick
            end
            object bCancLan: TUniSpeedButton
              Left = 329
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 6
              OnClick = bCancLoteClick
            end
            object bGravLan: TUniSpeedButton
              Left = 288
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Salva o registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 4
              TabOrder = 5
              OnClick = bGravLanClick
            end
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1331
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
    object bFechar: TUniSpeedButton
      Left = 0
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
      TabOrder = 1
      OnClick = bFecharClick
    end
  end
  object tData: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Data) AS Data FROM Lancamentos')
    Left = 120
    Top = 184
  end
  object tMes: TFDQuery
    SQL.Strings = (
      'SELECT MAX(Data) AS Data FROM Lancamentos')
    Left = 120
    Top = 232
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 40
    Top = 584
  end
  object tPlano: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Conta'
      '      ,Codigo'
      '      ,Nome_Contabil'
      'FROM  PlanoContas'
      'WHERE (ISNULL(Sintetica, 0) = 0)')
    Left = 41
    Top = 280
  end
  object dstPlano: TDataSource
    DataSet = tPlano
    Left = 41
    Top = 328
  end
  object tTotaliza: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Lote     = 1'
      
        '      ,LanLote  = (select count(*)   from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1)'
      
        '      ,DebLote  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Debito , '#39#39') <> '#39#39 +
        ')'
      
        '      ,CredLote = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Credito, '#39#39') <> '#39#39 +
        ')'
      
        '      ,DifLote  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Debito , '#39#39') <> '#39#39 +
        ') - (select sum(Valor) from Lancamentos where Data = '#39'02/21/2022' +
        #39' and Lote = 1 and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      '      ,LotesDia = 0'
      
        '      ,LanDia   = (select count(*)   from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39')'
      
        '      ,DebDia   = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Debito , '#39#39') <> '#39#39')'
      
        '      ,CredDia  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      
        '      ,DifDia   = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Debito , '#39#39') <> '#39#39') - (select s' +
        'um(Valor) from Lancamentos where Data = '#39'02/21/2022'#39' and isnull(' +
        'Conta_Credito, '#39#39') <> '#39#39')'
      ''
      '      ,LotesMes = 0'
      
        '      ,LanMes   = (select count(*)   from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39'))'
      
        '      ,DebMes   = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Debito , '#39#39') <> '#39 +
        #39')'
      
        '      ,CredMes  = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Credito, '#39#39') <> '#39 +
        #39')'
      
        '      ,DifMes   = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Debito , '#39#39') <> '#39 +
        #39') - (select sum(Valor) from Lancamentos where month(Data) = mon' +
        'th('#39'02/21/2022'#39') and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      '      ,LotesAno = 0'
      '      ,LanAno   = 0'
      '      ,DebAno   = cast(0 as money)'
      '      ,CredAno  = cast(0 as money)'
      '      ,DifAno   = cast(0 as money)')
    Left = 41
    Top = 184
    object tTotalizaLote: TIntegerField
      FieldName = 'Lote'
      ReadOnly = True
    end
    object tTotalizaLanLote: TIntegerField
      FieldName = 'LanLote'
      ReadOnly = True
    end
    object tTotalizaDebLote: TCurrencyField
      FieldName = 'DebLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredLote: TCurrencyField
      FieldName = 'CredLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifLote: TCurrencyField
      FieldName = 'DifLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesDia: TIntegerField
      FieldName = 'LotesDia'
      ReadOnly = True
    end
    object tTotalizaLanDia: TIntegerField
      FieldName = 'LanDia'
      ReadOnly = True
    end
    object tTotalizaDebDia: TCurrencyField
      FieldName = 'DebDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredDia: TCurrencyField
      FieldName = 'CredDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifDia: TCurrencyField
      FieldName = 'DifDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesMes: TIntegerField
      FieldName = 'LotesMes'
      ReadOnly = True
    end
    object tTotalizaLanMes: TIntegerField
      FieldName = 'LanMes'
      ReadOnly = True
    end
    object tTotalizaDebMes: TCurrencyField
      FieldName = 'DebMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredMes: TCurrencyField
      FieldName = 'CredMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifMes: TCurrencyField
      FieldName = 'DifMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesAno: TIntegerField
      FieldName = 'LotesAno'
      ReadOnly = True
    end
    object tTotalizaLanAno: TIntegerField
      FieldName = 'LanAno'
      ReadOnly = True
    end
    object tTotalizaDebAno: TCurrencyField
      FieldName = 'DebAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredAno: TCurrencyField
      FieldName = 'CredAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifAno: TCurrencyField
      FieldName = 'DifAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object tProcessos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Processo'
      '      ,Incoterms '
      #9'  ,Declaracao = DI'
      #9'  ,Tipo = '#39'IMP'#39
      'from ProcessosImp'
      'union all'
      'select Processo'
      '      ,Incoterms '
      #9'  ,Declaracao = DE'
      #9'  ,Tipo = '#39'EXP'#39
      'from ProcessosExp')
    Left = 41
    Top = 384
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 41
    Top = 431
  end
  object dstTotaliza: TDataSource
    DataSet = tTotaliza
    Left = 41
    Top = 232
  end
  object tBenef: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Nome'
      
        '      ,CNPJ_CPF = ltrim(rtrim(isnull(CNPJ, '#39#39')))+ltrim(rtrim(isn' +
        'ull(CPF, '#39#39')))'
      'from Destinatarios'
      'order by Nome')
    Left = 120
    Top = 384
  end
  object dstBenef: TDataSource
    DataSet = tBenef
    Left = 120
    Top = 431
  end
  object tEmpresas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select CNPJ'
      '      ,Razao_Social'
      '      ,Numero_Filial'
      'from empresas'
      'order by Numero_Filial')
    Left = 120
    Top = 280
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 120
    Top = 328
  end
  object Lancamentos: TFDQuery
    BeforePost = LancamentosBeforePost
    BeforeDelete = LancamentosBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      
        '      ,Descricao_Debito  = (select Nome_Contabil from PlanoConta' +
        's where Codigo = Conta_Debito)'
      
        '      ,Descricao_Credito = (select Nome_Contabil from PlanoConta' +
        's where Codigo = Conta_Credito)'
      'from Lancamentos')
    Left = 41
    Top = 86
  end
  object dsLancamentos: TDataSource
    DataSet = Lancamentos
    Left = 41
    Top = 134
  end
  object Alerta: TUniSweetAlert
    Title = 'Data inv'#225'lida!'
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    ShowCloseButton = True
    Left = 512
    Top = 4
  end
  object tHistoricos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      'FROM Historicos')
    Left = 41
    Top = 480
  end
  object dstHistoricos: TDataSource
    DataSet = tHistoricos
    Left = 41
    Top = 527
  end
  object tTipoDoc: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      'from TiposDocumentos'
      '')
    Left = 120
    Top = 480
  end
  object dsTipoDoc: TDataSource
    DataSet = tTipoDoc
    Left = 120
    Top = 527
  end
  object tLotes: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from lotes')
    Left = 120
    Top = 86
  end
  object dstLotes: TDataSource
    DataSet = tLotes
    Left = 120
    Top = 132
  end
end
