object fEmbarques: TfEmbarques
  Left = 0
  Top = 0
  Width = 1397
  Height = 771
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1397
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
      DataSource = dsEmbarques
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
      Left = 345
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
  end
  object Pasta: TUniPageControl
    AlignWithMargins = True
    Left = 1
    Top = 36
    Width = 1395
    Height = 734
    Hint = ''
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 85
        Width = 1387
        Height = 621
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsEmbarques
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
        LoadMask.Message = 'Buscando navios...'
        RowHeight = 24
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        OnDblClick = GradeDblClick
        OnTitleClick = GradeTitleClick
        Columns = <
          item
            FieldName = 'Navio'
            Title.Alignment = taCenter
            Title.Caption = 'Navio C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 84
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Navio_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Navio Nome'
            Title.Font.Style = [fsBold]
            Width = 344
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Style = [fsBold]
            Width = 124
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 171
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Filial'
            Title.Font.Style = [fsBold]
            Width = 60
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'UF'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Partida'
            Title.Alignment = taCenter
            Title.Caption = 'Partida'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Chegada'
            Title.Alignment = taCenter
            Title.Caption = 'Chegada'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Data_Atracacao'
            Title.Alignment = taCenter
            Title.Caption = 'Atraca'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Total_ME'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 161
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Style = [fsBold]
            Width = 130
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1387
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        BorderStyle = ubsSingle
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
          ParentFont = False
          Align = alLeft
          TabOrder = 1
          EmptyText = 'PESQUISAR'
          ClearButton = True
          OnClick = cPesquisaClick
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
      object Panel11: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 1381
        Height = 52
        Hint = ''
        Align = alTop
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object cFiltroStatus: TUniRadioGroup
          AlignWithMargins = True
          Left = 381
          Top = 1
          Width = 342
          Height = 48
          Hint = ''
          Margins.Top = 1
          Items.Strings = (
            'Todos'
            'Ativo'
            'Andamento'
            'Encerrado')
          ItemIndex = 1
          Align = alLeft
          Caption = 'Status'
          TabOrder = 0
          Columns = 4
          AutoScroll = True
          OnClick = cFiltroStatusClick
        end
        object cFiltroBL: TUniRadioGroup
          AlignWithMargins = True
          Left = 729
          Top = 1
          Width = 252
          Height = 48
          Hint = ''
          Margins.Top = 1
          Items.Strings = (
            'Todos'
            'Com BL'
            'Sem BL')
          ItemIndex = 0
          Align = alLeft
          Caption = 'BL'
          TabOrder = 1
          Columns = 3
          AutoScroll = True
          OnClick = cFiltroStatusClick
        end
        object cFiltroLaudo: TUniRadioGroup
          AlignWithMargins = True
          Left = 987
          Top = 1
          Width = 250
          Height = 48
          Hint = ''
          Margins.Top = 1
          Items.Strings = (
            'Todos'
            'Com Laudo'
            'Sem Laudo')
          ItemIndex = 0
          Align = alLeft
          Caption = 'Laudo'
          TabOrder = 2
          Columns = 3
          AutoScroll = True
          OnClick = cFiltroStatusClick
        end
        object cFiltroFilial: TUniDBLookupComboBox
          AlignWithMargins = True
          Left = 3
          Top = 14
          Width = 345
          Height = 24
          Hint = ''
          Margins.Top = 14
          Margins.Right = 30
          Margins.Bottom = 14
          ListField = 'CNPJ;Nome;Estado;Cidade'
          ListSource = dstFiliais
          KeyField = 'CNPJ'
          ListFieldIndex = 0
          ClearButton = True
          Align = alLeft
          EmptyText = 'FILIAL DE DESTINO'
          TabOrder = 3
          Color = clWindow
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          ReadOnlyMode = urmNotEditable
          OnChange = cFiltroFilialChange
        end
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Caption = 'Embarques'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Pasta'#39';'#13#10'}')
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1387
        Height = 706
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1385
          704)
        ScrollHeight = 677
        object Panel2: TUniPanel
          Left = 122
          Top = 19
          Width = 1034
          Height = 658
          Hint = ''
          AutoScroll = True
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          Caption = ''
          Color = clTeal
          ScrollDirection = sdVertical
          ScrollHeight = 658
          ScrollWidth = 1034
          object cData_Estimada: TUniDBDateTimePicker
            Left = 155
            Top = 261
            Width = 125
            Height = 50
            Hint = ''
            DataField = 'Data_Estimada'
            DataSource = dsEmbarques
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            FieldLabel = 'Previs'#227'o  Chegada (ETA)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Chegada: TUniDBDateTimePicker
            Left = 298
            Top = 261
            Width = 125
            Height = 50
            Hint = ''
            DataField = 'Data_Chegada'
            DataSource = dsEmbarques
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 6
            FieldLabel = 'Chegada'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Atracacao: TUniDBDateTimePicker
            Left = 13
            Top = 310
            Width = 125
            Height = 50
            Hint = ''
            DataField = 'Data_Atracacao'
            DataSource = dsEmbarques
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 7
            FieldLabel = 'Atraca'#231#227'o (ETB)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Descarga: TUniDBDateTimePicker
            Left = 155
            Top = 310
            Width = 125
            Height = 50
            Hint = ''
            DataField = 'Data_Descarga'
            DataSource = dsEmbarques
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 8
            FieldLabel = 'Descarga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTipo_Descarga: TUniDBEdit
            Left = 13
            Top = 212
            Width = 409
            Height = 50
            Hint = ''
            DataField = 'Tipo_Descarga'
            DataSource = dsEmbarques
            TabOrder = 3
            FieldLabel = 'Tipo de Descarga'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPremium: TUniDBEdit
            Left = 13
            Top = 360
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Premium'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 9
            FieldLabel = 'Desconto (Premium CPG)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTranshipment: TUniDBEdit
            Left = 190
            Top = 360
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Transhipment'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 10
            FieldLabel = 'Custo Transporte (Transhipment)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFator_Conversao: TUniDBEdit
            Left = 13
            Top = 410
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Fator_Conversao'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 11
            FieldLabel = 'Fator Convers'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cValor_Demurrage: TUniDBEdit
            Left = 13
            Top = 459
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Valor_Demurrage'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 12
            FieldLabel = 'Valor Demurrage (ME)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTempo_Demurrage: TUniDBEdit
            Left = 189
            Top = 459
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Tempo_Demurrage'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 13
            FieldLabel = 'Tempo Demurrage'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cObservacao: TUniDBMemo
            Left = 13
            Top = 558
            Width = 410
            Height = 83
            Hint = ''
            DataField = 'Observacao'
            DataSource = dsEmbarques
            TabOrder = 15
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cStatus: TUniDBComboBox
            Left = 232
            Top = 112
            Width = 190
            Height = 50
            Hint = ''
            DataField = 'Status'
            DataSource = dsEmbarques
            Style = csDropDownList
            Items.Strings = (
              'ATIVO'
              'EM ANDAMENTO'
              'ENCERRADO')
            TabOrder = 2
            FieldLabel = 'Status'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cData_Partida: TUniDBDateTimePicker
            Left = 13
            Top = 261
            Width = 125
            Height = 50
            Hint = ''
            DataField = 'Data_Partida'
            DataSource = dsEmbarques
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            FieldLabel = 'Partida'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_Carga: TUniDBEdit
            Left = 13
            Top = 508
            Width = 160
            Height = 50
            Hint = ''
            DataField = 'Quantidade_Carga'
            DataSource = dsEmbarques
            Alignment = taRightJustify
            TabOrder = 14
            FieldLabel = 'Carga Total'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDifer: TUniFormattedNumberEdit
            Left = 189
            Top = 508
            Width = 160
            Height = 50
            Hint = ''
            Alignment = taRightJustify
            TabOrder = 16
            TabStop = False
            Color = 16771255
            ReadOnly = True
            FieldLabel = '(Carga Total - Total BL)'
            FieldLabelAlign = laTop
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object cReferencia: TUniDBEdit
            Left = 13
            Top = 112
            Width = 202
            Height = 50
            Hint = ''
            DataField = 'Referencia'
            DataSource = dsEmbarques
            TabOrder = 1
            FieldLabel = 'Refer'#234'ncia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniSimplePanel1: TUniSimplePanel
            Left = 445
            Top = 14
            Width = 576
            Height = 627
            Hint = ''
            Enabled = False
            ParentColor = False
            Color = 15658734
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 17
            object cDescargaLT: TUniFormattedNumberEdit
              Left = 14
              Top = 312
              Width = 160
              Height = 50
              Hint = ''
              Alignment = taRightJustify
              TabOrder = 1
              TabStop = False
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Descarga em LT'
              FieldLabelAlign = laTop
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cVariacao_Termica: TUniDBEdit
              Left = 14
              Top = 264
              Width = 160
              Height = 50
              Hint = ''
              DataField = 'Variacao_Termica'
              DataSource = dsEmbarques
              Alignment = taRightJustify
              TabOrder = 2
              TabStop = False
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Varia'#231#227'o T'#233'rmica'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTotal_ME: TUniDBEdit
              Left = 14
              Top = 408
              Width = 160
              Height = 50
              Hint = ''
              DataField = 'Custo_Navio'
              DataSource = dsEmbarques
              Alignment = taRightJustify
              TabOrder = 3
              TabStop = False
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Custo Navio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit1: TUniDBEdit
              Left = 14
              Top = 360
              Width = 160
              Height = 50
              Hint = ''
              DataField = 'Total_ME'
              DataSource = dsEmbarques
              Alignment = taRightJustify
              TabOrder = 4
              TabStop = False
              Color = 16771255
              ReadOnly = True
              FieldLabel = 'Total ME'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object GradeSoma: TUniDBGrid
              Left = 12
              Top = 9
              Width = 550
              Height = 234
              Hint = ''
              Enabled = False
              DataSource = dstSoma
              Options = [dgTitles, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgDontShowSelected]
              ReadOnly = True
              WebOptions.Paged = False
              WebOptions.PageSize = 30
              WebOptions.KeyNavigation = knDisabled
              LoadMask.Message = 'Totalizando navio...'
              RowHeight = 20
              ForceFit = True
              BorderStyle = ubsNone
              TrackOver = False
              TabOrder = 5
              TabStop = False
              ParentColor = False
              Color = 16771255
              Columns = <
                item
                  FieldName = 'Descricao'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Color = 7293440
                  Width = 243
                  ReadOnly = True
                end
                item
                  FieldName = 'M3'
                  Title.Alignment = taCenter
                  Title.Caption = 'Volume em M'#179
                  Title.Color = 7293440
                  Width = 136
                  ReadOnly = True
                end
                item
                  FieldName = 'LITROS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Volume em Litros'
                  Title.Color = 7293440
                  Width = 136
                  ReadOnly = True
                end>
            end
          end
          object cNavio: TUniDBLookupComboBox
            Left = 13
            Top = 62
            Width = 409
            Height = 50
            Hint = ''
            ListField = 'Codigo;Nome'
            ListSource = dsNavios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Navio'
            DataSource = dsEmbarques
            AnyMatch = True
            TabOrder = 0
            Color = clWindow
            FieldLabel = 'Navio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cProcesso: TUniDBEdit
            Left = 13
            Top = 162
            Width = 409
            Height = 50
            Hint = ''
            DataField = 'Processo'
            DataSource = dsEmbarques
            TabOrder = 19
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cFilial: TUniDBLookupComboBox
            Left = 13
            Top = 12
            Width = 409
            Height = 50
            Hint = ''
            ListField = 'CNPJ;Filial;Nome;Estado;Cidade'
            ListSource = dstFiliais
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            DataField = 'Empresa'
            DataSource = dsEmbarques
            AnyMatch = True
            TabOrder = 20
            Color = clWindow
            FieldLabel = 'Filial de Destino'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
        end
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'BL'#39's'
      object Panel6: TUniPanel
        AlignWithMargins = True
        Left = 446
        Top = 3
        Width = 938
        Height = 700
        Hint = ''
        Align = alClient
        TabOrder = 0
        Caption = ''
        object GradeBL: TUniDBGrid
          Left = 1
          Top = 1
          Width = 936
          Height = 698
          Hint = ''
          Margins.Top = 1
          DataSource = dsBL
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.PageSize = 30
          LoadMask.Message = 'Buscando BL'#39's...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          Columns = <
            item
              FieldName = 'BL'
              Title.Alignment = taCenter
              Title.Caption = 'BL'
              Width = 72
            end
            item
              FieldName = 'Data_Emissao'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Width = 65
              Alignment = taCenter
            end
            item
              FieldName = 'Ton_Vac'
              Title.Alignment = taCenter
              Title.Caption = 'Ton Vac'
              Width = 95
            end
            item
              FieldName = 'Ton_Air'
              Title.Alignment = taCenter
              Title.Caption = 'Ton Air'
              Width = 95
            end
            item
              FieldName = 'Quantidade_LT15'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde LT 15'#186
              Width = 108
            end
            item
              FieldName = 'Quantidade_LT20'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde LT 20'#186
              Width = 108
            end
            item
              FieldName = 'DI'
              Title.Alignment = taCenter
              Title.Caption = 'DI'
              Width = 73
              Alignment = taCenter
            end
            item
              FieldName = 'Endossado'
              Title.Alignment = taCenter
              Title.Caption = 'Endossado'
              Title.Color = clBlack
              Width = 60
              Alignment = taCenter
            end
            item
              FieldName = 'Bloqueado'
              Title.Alignment = taCenter
              Title.Caption = 'Bloqueado'
              Title.Color = clBlack
              Width = 60
              Alignment = taCenter
            end
            item
              FieldName = 'Entreposto'
              Title.Alignment = taCenter
              Title.Caption = 'Entreposto'
              Width = 60
              Alignment = taCenter
            end
            item
              FieldName = 'Laudo'
              Title.Alignment = taCenter
              Title.Caption = 'Laudo'
              Width = 100
            end>
        end
      end
      object Panel7: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 437
        Height = 700
        Hint = ''
        Align = alLeft
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        ParentColor = True
        object PanelBL: TUniContainerPanel
          Left = 0
          Top = 35
          Width = 437
          Height = 665
          Hint = ''
          ParentColor = False
          Align = alClient
          TabOrder = 1
          object cBL: TUniDBEdit
            Left = 13
            Top = 159
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'BL'
            DataSource = dsBL
            TabOrder = 3
            FieldLabel = 'N'#186' do BL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cData_Emissao: TUniDBDateTimePicker
            Left = 152
            Top = 159
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Data_Emissao'
            DataSource = dsBL
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            FieldLabel = 'Data do BL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTon_Vac: TUniDBEdit
            Left = 13
            Top = 208
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Ton_Vac'
            DataSource = dsBL
            TabOrder = 6
            FieldLabel = 'Ton Vac'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTon_Air: TUniDBEdit
            Left = 13
            Top = 257
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Ton_Air'
            DataSource = dsBL
            TabOrder = 7
            FieldLabel = 'Ton Air'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_M315: TUniDBEdit
            Left = 13
            Top = 306
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_M315'
            DataSource = dsBL
            TabOrder = 8
            FieldLabel = 'Quantidade BL M'#179' (15'#176') '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnExit = cQuantidade_M315Exit
          end
          object cQuantidade_LT20: TUniDBEdit
            Left = 148
            Top = 355
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_LT20'
            DataSource = dsBL
            TabOrder = 13
            TabStop = False
            Color = 16771255
            ReadOnly = True
            FieldLabel = 'Quantidade BL LT (20'#186')'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_M320: TUniDBEdit
            Left = 13
            Top = 355
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_M320'
            DataSource = dsBL
            TabOrder = 9
            FieldLabel = 'Quantidade BL M'#179' (20'#176') '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnExit = cQuantidade_M320Exit
          end
          object cQuantidade_LT15: TUniDBEdit
            Left = 148
            Top = 306
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_LT15'
            DataSource = dsBL
            ParentFont = False
            Font.Color = clBlack
            TabOrder = 12
            TabStop = False
            Color = 16771255
            ReadOnly = True
            FieldLabel = 'Quantidade BL LT (15'#186')'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPorto: TUniDBComboBox
            Left = 13
            Top = 12
            Width = 408
            Height = 50
            Hint = ''
            DataField = 'Porto'
            DataSource = dsBL
            TabOrder = 0
            FieldLabel = 'Porto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cArmazem: TUniDBLookupComboBox
            Left = 13
            Top = 61
            Width = 408
            Height = 50
            Hint = ''
            ListField = 'CNPJ;Nome'
            ListSource = dsArmazens
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Armazem'
            DataSource = dsBL
            TabOrder = 1
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Armaz'#233'm'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_EmbM315: TUniDBEdit
            Left = 13
            Top = 404
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_EmbM315'
            DataSource = dsBL
            TabOrder = 10
            FieldLabel = 'Quantidade Emb M'#179' (15'#176') '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_EmbLT20: TUniDBEdit
            Left = 148
            Top = 453
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_EmbLT20'
            DataSource = dsBL
            TabOrder = 15
            TabStop = False
            Color = 16771255
            ReadOnly = True
            FieldLabel = 'Quantidade Emb LT (20'#186')'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_EmbM320: TUniDBEdit
            Left = 13
            Top = 453
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_EmbM320'
            DataSource = dsBL
            TabOrder = 11
            FieldLabel = 'Quantidade Emb M'#179' (20'#176') '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQuantidade_EmbLT15: TUniDBEdit
            Left = 148
            Top = 404
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'Quantidade_EmbLT15'
            DataSource = dsBL
            TabOrder = 14
            TabStop = False
            Color = 16771255
            ReadOnly = True
            FieldLabel = 'Quantidade Emb LT (15'#186')'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProduto: TUniDBLookupComboBox
            Left = 13
            Top = 110
            Width = 408
            Height = 50
            Hint = ''
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_Mercadoria'
            DataSource = dsBL
            ParentFont = False
            Font.Color = clBlack
            TabOrder = 2
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDI: TUniDBEdit
            Left = 291
            Top = 159
            Width = 130
            Height = 50
            Hint = ''
            DataField = 'DUIMP'
            DataSource = dsBL
            TabOrder = 5
            FieldLabel = 'N'#186' do DUIMP '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 165
            Top = 13
            Width = 80
            Height = 17
            Hint = ''
            DataField = 'Endossado'
            DataSource = dsBL
            Caption = 'Endossado'
            TabOrder = 17
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBCheckBox2: TUniDBCheckBox
            Left = 258
            Top = 13
            Width = 77
            Height = 17
            Hint = ''
            DataField = 'Bloqueado'
            DataSource = dsBL
            Caption = 'Bloqueado'
            TabOrder = 18
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBCheckBox3: TUniDBCheckBox
            Left = 346
            Top = 13
            Width = 77
            Height = 17
            Hint = ''
            DataField = 'Entreposto'
            DataSource = dsBL
            Caption = 'Entreposto'
            TabOrder = 19
            ParentColor = False
            Color = clBtnFace
          end
        end
        object UniPanel1: TUniPanel
          Left = 0
          Top = 0
          Width = 437
          Height = 35
          Hint = ''
          Align = alTop
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = 5526569
          object NavegaBL: TUniDBNavigator
            Left = 0
            Top = 0
            Width = 143
            Height = 35
            Cursor = crHandPoint
            Hint = ''
            DataSource = dsBL
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            IconSet = icsFontAwesome
            TabOrder = 1
          end
          object bAdicionarBL: TUniSpeedButton
            Left = 140
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Adicionar novo BL'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 0
            TabOrder = 2
            OnClick = bAdicionarBLClick
          end
          object bEditarBL: TUniSpeedButton
            Left = 181
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Editar BL corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 1
            TabOrder = 3
            OnClick = bEditarBLClick
          end
          object bExcluirBL: TUniSpeedButton
            Left = 222
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Excluir BL corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 2
            TabOrder = 4
            OnClick = bExcluirBLClick
          end
          object bCancelarBL: TUniSpeedButton
            Left = 304
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Cancelar modifica'#231#245'es feitas no BL corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 6
            OnClick = bCancelarBLClick
          end
          object bGravarBL: TUniSpeedButton
            Left = 263
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Salva o BL corrente.'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 5
            OnClick = bGravarBLClick
          end
        end
      end
    end
    object TabSheet5: TUniTabSheet
      Hint = ''
      ImageIndex = 4
      Caption = 'Laudos'
      object Panel4: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 357
        Height = 700
        Hint = ''
        Margins.Right = 1
        Align = alLeft
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clTeal
        object PanelLaudo: TUniContainerPanel
          Left = 0
          Top = 35
          Width = 357
          Height = 665
          Hint = ''
          ParentColor = False
          Align = alClient
          TabOrder = 1
          object cVariacao_EmbLT: TUniDBEdit
            Left = 13
            Top = 259
            Width = 200
            Height = 50
            Hint = ''
            Enabled = False
            DataField = 'Variacao_EmbLT'
            DataSource = dsLaudos
            TabOrder = 1
            Color = 16771255
            FieldLabel = 'Varia'#231#227'o Embarque (LT)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDataOper: TUniDBDateTimePicker
            Left = 13
            Top = 112
            Width = 200
            Height = 50
            Hint = ''
            DataField = 'Data_Operacao'
            DataSource = dsLaudos
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
            FieldLabel = 'Data da Opera'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVariacao_EmbPerc: TUniDBEdit
            Left = 13
            Top = 306
            Width = 200
            Height = 50
            Hint = ''
            Enabled = False
            DataField = 'Variacao_EmbPerc'
            DataSource = dsLaudos
            TabOrder = 3
            Color = 16771255
            FieldLabel = 'Varia'#231#227'o Embarque (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cLaudo: TUniDBEdit
            Left = 13
            Top = 14
            Width = 200
            Height = 50
            Hint = ''
            DataField = 'Laudo'
            DataSource = dsLaudos
            TabOrder = 4
            FieldLabel = 'N'#186' Laudo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVariacao_DesLT: TUniDBEdit
            Left = 13
            Top = 354
            Width = 200
            Height = 50
            Hint = ''
            Enabled = False
            DataField = 'Variacao_DesLT'
            DataSource = dsLaudos
            TabOrder = 5
            Color = 16771255
            FieldLabel = 'Varia'#231#227'o Desembarque (LT)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVariacao_DesPerc: TUniDBEdit
            Left = 13
            Top = 403
            Width = 200
            Height = 50
            Hint = ''
            Enabled = False
            DataField = 'Variacao_DesPerc'
            DataSource = dsLaudos
            TabOrder = 6
            Color = 16771255
            FieldLabel = 'Varia'#231#227'o Desembarque (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDataAtr: TUniDBDateTimePicker
            Left = 13
            Top = 63
            Width = 200
            Height = 50
            Hint = ''
            DataField = 'Data_Atracacao'
            DataSource = dsLaudos
            DateTime = 45656.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 7
            FieldLabel = 'Data da Atraca'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cQtdeRecM320: TUniDBFormattedNumberEdit
            Left = 13
            Top = 162
            Width = 200
            Height = 50
            Hint = ''
            DataField = 'Quantidade_RecebidaM320'
            DataSource = dsLaudos
            TabOrder = 8
            FieldLabel = 'Quantidade Recebida (M'#179')'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            OnExit = cQtdeRecM320Exit
          end
          object cQtdeRecLT20: TUniDBFormattedNumberEdit
            Left = 13
            Top = 211
            Width = 200
            Height = 50
            Hint = ''
            DataField = 'Quantidade_RecebidaLT20'
            DataSource = dsLaudos
            TabOrder = 9
            FieldLabel = 'Quantidade Recebida (LT)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
        object PanelLaudoBotoes: TUniPanel
          Left = 0
          Top = 0
          Width = 357
          Height = 35
          Hint = ''
          Align = alTop
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = 5526569
          object NavegaLaudo: TUniDBNavigator
            Left = 0
            Top = 0
            Width = 140
            Height = 35
            Cursor = crHandPoint
            Hint = ''
            DataSource = dsLaudos
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            IconSet = icsFontAwesome
            Align = alLeft
            TabOrder = 1
          end
          object bAdicionarLaudo: TUniSpeedButton
            Left = 139
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Adicionar novo Laudo'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 0
            TabOrder = 2
            OnClick = bAdicionarLaudoClick
          end
          object bEditarLaudo: TUniSpeedButton
            Left = 180
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Editar o Laudo corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 1
            TabOrder = 3
            OnClick = bEditarLaudoClick
          end
          object bExcluirLaudo: TUniSpeedButton
            Left = 221
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Excluir o Laudo corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 2
            TabOrder = 4
            OnClick = bExcluirLaudoClick
          end
          object bCancelarLaudo: TUniSpeedButton
            Left = 303
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Cancelar modifica'#231#245'es feitas no Laudo corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 5
            OnClick = bCancelarLaudoClick
          end
          object bGravarLaudo: TUniSpeedButton
            Left = 262
            Top = 0
            Width = 41
            Height = 35
            Hint = 'Salva o Laudo corrente'
            Caption = ''
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 6
            OnClick = bGravarLaudoClick
          end
        end
      end
      object Panel9: TUniPanel
        AlignWithMargins = True
        Left = 364
        Top = 3
        Width = 655
        Height = 700
        Hint = ''
        Margins.Right = 1
        Align = alLeft
        TabOrder = 1
        BorderStyle = ubsSolid
        Caption = ''
        Color = clNone
        object GradeLaudos: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 1
          Width = 649
          Height = 696
          Hint = ''
          Margins.Top = 1
          DataSource = dsLaudos
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.PageSize = 30
          LoadMask.Message = 'Buscando laudos...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = 15198155
          Columns = <
            item
              FieldName = 'Laudo'
              Title.Alignment = taCenter
              Title.Caption = 'Laudo'
              Width = 105
            end
            item
              FieldName = 'Data_Atracacao'
              Title.Alignment = taCenter
              Title.Caption = 'Atraca'#231#227'o'
              Width = 80
              Alignment = taCenter
            end
            item
              FieldName = 'Data_Operacao'
              Title.Alignment = taCenter
              Title.Caption = 'Opera'#231#227'o'
              Width = 80
              Alignment = taCenter
            end
            item
              FieldName = 'Variacao_DesLT'
              Title.Alignment = taCenter
              Title.Caption = 'Varia'#231#227'o (LT)'
              Width = 119
            end
            item
              FieldName = 'Variacao_DesPerc'
              Title.Alignment = taCenter
              Title.Caption = 'Varia'#231#227'o (M'#179')'
              Width = 119
            end>
        end
      end
      object Panel13: TUniPanel
        AlignWithMargins = True
        Left = 1021
        Top = 3
        Width = 363
        Height = 700
        Hint = ''
        Margins.Left = 1
        Align = alClient
        TabOrder = 2
        BorderStyle = ubsSolid
        Caption = ''
        object GradeLaudosComBL: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 42
          Width = 357
          Height = 655
          Hint = ''
          Margins.Top = 1
          DataSource = dstLaudosComBL
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.PageSize = 30
          LoadMask.Message = 'Buscando BL'#39's do laudo...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 2
          ParentColor = False
          Color = clBtnFace
          Columns = <
            item
              FieldName = 'BL'
              Title.Alignment = taCenter
              Title.Caption = 'BL'
              Title.Font.Style = [fsBold]
              Width = 76
            end
            item
              FieldName = 'Data_Emissao'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Font.Style = [fsBold]
              Width = 88
              Alignment = taCenter
            end
            item
              FieldName = 'Endossado'
              Title.Alignment = taCenter
              Title.Caption = 'End'
              Title.Font.Style = [fsBold]
              Width = 30
              Alignment = taCenter
            end
            item
              FieldName = 'Bloqueado'
              Title.Alignment = taCenter
              Title.Caption = 'Blq'
              Title.Font.Style = [fsBold]
              Width = 30
              Alignment = taCenter
            end
            item
              FieldName = 'Entreposto'
              Title.Alignment = taCenter
              Title.Caption = 'Ent'
              Title.Font.Style = [fsBold]
              Width = 30
            end>
        end
        object Panel10: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 357
          Height = 35
          Hint = ''
          Align = alTop
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object bAddLaudoBL: TUniButton
            Left = 1
            Top = 1
            Width = 89
            Height = 33
            Hint = 'Adicionar BL'#39's ao Laudo   '
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            Caption = 'Adicionar BL'
            Align = alLeft
            TabOrder = 0
            OnClick = bAddLaudoBLClick
          end
          object bRemLaudoBL: TUniButton
            Left = 90
            Top = 1
            Width = 89
            Height = 33
            Hint = 'Remover BL'#39's do Laudo   '
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            Caption = 'Remover BL'
            Align = alLeft
            TabOrder = 1
            OnClick = bRemLaudoBLClick
          end
        end
      end
    end
    object TabSheet2: TUniTabSheet
      AlignWithMargins = True
      Hint = ''
      ImageIndex = 4
      Caption = 'Notas Fiscais'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1387
        Height = 680
        Hint = ''
        DataSource = dstNotas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Buscando as notas fiscais...'
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        StripeRows = False
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Title.Font.Style = [fsBold]
            Width = 64
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 64
            Alignment = taCenter
          end
          item
            FieldName = 'SE'
            Title.Alignment = taCenter
            Title.Caption = 'ENT/SA'#205
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Emissao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Style = [fsBold]
            Width = 90
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Destinatario'
            Title.Alignment = taCenter
            Title.Caption = 'Destinat'#225'rio'
            Title.Font.Style = [fsBold]
            Width = 364
          end
          item
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Style = [fsBold]
            Width = 120
            Alignment = taCenter
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 94
          end
          item
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Font.Style = [fsBold]
            Width = 106
          end
          item
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 120
          end>
      end
      object UniPanel4: TUniPanel
        Left = 0
        Top = 680
        Width = 1387
        Height = 26
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alBottom
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
            ' = '#39'Pasta'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object brTotais: TUniSegmentedButton
          Left = 0
          Top = 0
          Width = 1387
          Height = 26
          Hint = ''
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
            end>
          Align = alClient
        end
      end
    end
  end
  object tTmp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fabricantes')
    Left = 203
    Top = 200
  end
  object tFiliais: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select distinct'
      '       CNPJ'
      '      ,Filial = Numero_Filial'
      
        '      ,Nome   = cast(iif(Numero_Filial > 0, '#39'FILIAL '#39'+cast(Numer' +
        'o_Filial as varchar(6)), '#39'MATRIZ'#39') as varchar(10))'
      
        '      ,Cidade = cast(upper((select Nome from Municipios where Co' +
        'digo = Municipio_Codigo)) as varchar(30))'
      '      ,Estado = cast(Estado as varchar(4))'
      'from Empresas'
      'where Razao_Social like '#39'%NIMOFAST%'#39
      'order by Numero_Filial')
    Left = 38
    Top = 352
    object tFiliaisNome: TStringField
      FieldName = 'Nome'
      ReadOnly = True
      Size = 13
    end
    object tFiliaisCidade: TStringField
      DisplayWidth = 15
      FieldName = 'Cidade'
      ReadOnly = True
      Size = 50
    end
    object tFiliaisEstado: TStringField
      DisplayWidth = 2
      FieldName = 'Estado'
      ReadOnly = True
      Size = 4
    end
    object tFiliaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object tFiliaisFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Filial'
    end
  end
  object dstFiliais: TDataSource
    DataSet = tFiliais
    Left = 38
    Top = 403
  end
  object tNavios: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Navios'
      '')
    Left = 38
    Top = 249
  end
  object dsNavios: TDataSource
    DataSet = tNavios
    Left = 38
    Top = 299
  end
  object tNotas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Nota'
      '      ,Data = Data_Emissao'
      
        '      ,SE = case when Saida_Entrada = 0 then '#39'ENTRADA'#39' else '#39'SA'#205 +
        'DA'#39' end'
      '      ,Emissao = '#39'PROPRIA'#39
      '      ,Destinatario = Destinatario_Nome'
      '      ,CNPJ = Destinatario_CNPJ_CPF'
      '      ,Processo'
      '      ,Total = Valor_TotalNota'
      '      ,Quantidade = Volume_Quantidade'
      'from  NotasFiscais'
      'order by Data, SE')
    Left = 117
    Top = 153
    object tNotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
      DisplayFormat = '000000000'
    end
    object tNotasData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object tNotasSE: TStringField
      FieldName = 'SE'
      Origin = 'SE'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object tNotasEmissao: TStringField
      FieldName = 'Emissao'
      Origin = 'Emissao'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object tNotasDestinatario: TStringField
      FieldName = 'Destinatario'
      Origin = 'Destinatario'
      Size = 60
    end
    object tNotasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object tNotasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object tNotasTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
      DisplayFormat = ',##0.00'
    end
    object tNotasQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 117
    Top = 203
  end
  object tPortos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select distinct Porto from ControleNavios')
    Left = 37
    Top = 454
  end
  object dsPortos: TDataSource
    DataSet = tPortos
    Left = 38
    Top = 505
  end
  object dsArmazens: TDataSource
    DataSet = tArmazens
    Left = 38
    Top = 605
  end
  object tArmazens: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,CNPJ'
      '      ,Nome'
      'from Destinatarios'
      'where Armazem = 1'
      'order by Nome')
    Left = 38
    Top = 554
  end
  object tLaudosComBL: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from EmbarquesBL')
    Left = 117
    Top = 462
  end
  object dstLaudosComBL: TDataSource
    DataSet = tLaudosComBL
    Left = 117
    Top = 512
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 157
    object ATIVO1: TUniMenuItem
      Caption = 'ATIVO'
      ImageIndex = 2
    end
    object EMANDAMENTO1: TUniMenuItem
      Caption = 'EM ANDAMENTO'
      ImageIndex = 3
    end
    object ENCERRADO1: TUniMenuItem
      Caption = 'ENCERRADO'
      ImageIndex = 4
    end
  end
  object tTerminal: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select distinct Terminal_Destino from ControleNavios')
    Left = 203
    Top = 249
  end
  object tTmp2: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fabricantes')
    Left = 203
    Top = 150
  end
  object tSoma: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        '--[15'#186' GRAUS ---------------------------------------------------' +
        '-------------------------------------------------------'
      'select Descricao = '#39'Total 15'#186#39
      
        '      ,M3 = (select sum(Quantidade_m315) from  EmbarquesBL where' +
        ' Navio = 1011)'
      
        '      ,LITROS = (select sum(Quantidade_m315*1000) from Embarques' +
        'BL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total N'#227'o Endossado 15'#186#39
      
        '      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m315, 0)) ' +
        'from  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m315*1' +
        '000, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total Endossado 15'#186#39
      
        '      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m315, 0)) ' +
        'from  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m315*1' +
        '000, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total n'#227'o Bloqueado 15'#186#39
      
        '      ,M3 = (select sum(iif(Bloqueado = 0, Quantidade_m315, 0)) ' +
        'from  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Bloqueado = 0, Quantidade_m315*1' +
        '000, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total Bloqueado 15'#186#39
      
        '      ,M3 = (select sum(iif(Bloqueado= 1, Quantidade_m315, 0)) f' +
        'rom  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Bloqueado= 1, Quantidade_m315*10' +
        '00, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      
        '--[20'#186' GRAUS ---------------------------------------------------' +
        '-------------------------------------------------------'
      'select Descricao = '#39'Total 20'#186#39
      
        '      ,M3 = (select sum(Quantidade_m320) from  EmbarquesBL where' +
        ' Navio = 1011)'
      
        '      ,LITROS = (select sum(Quantidade_m320*1000) from Embarques' +
        'BL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total N'#227'o Endossado 20'#186#39
      
        '      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m320, 0)) ' +
        'from  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m320*1' +
        '000, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total Endossado 20'#186#39
      
        '      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m320, 0)) ' +
        'from  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m320*1' +
        '000, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total n'#227'o Bloqueado 20'#186#39
      
        '      ,M3 = (select sum(iif(Bloqueado= 1, Quantidade_m320, 0)) f' +
        'rom  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Bloqueado= 1, Quantidade_m320*10' +
        '00, 0)) from  EmbarquesBL where Navio = 1011)'
      'union all'
      'select Descricao = '#39'Total Bloqueado 20'#186#39
      
        '      ,M3 = (select sum(iif(Bloqueado= 1, Quantidade_m320, 0)) f' +
        'rom  EmbarquesBL where Navio = 1011)'
      
        '      ,LITROS = (select sum(iif(Bloqueado= 1, Quantidade_m320*10' +
        '00, 0)) from  EmbarquesBL where Navio = 1011)'
      '')
    Left = 115
    Top = 254
    object tSomaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ReadOnly = True
      Required = True
      Size = 23
    end
    object tSomaM3: TFloatField
      FieldName = 'M3'
      Origin = 'M3'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tSomaLITROS: TFloatField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
  end
  object dstSoma: TDataSource
    DataSet = tSoma
    Left = 117
    Top = 307
  end
  object tProdutos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao_Reduzida'
      'from Produtos'
      'where isnull(Desativado, 0) = 0')
    Left = 116
    Top = 358
    object tProdutosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutosDescricao_Reduzida: TStringField
      FieldName = 'Descricao_Reduzida'
      Size = 60
    end
  end
  object dsProdutos: TDataSource
    DataSet = tProdutos
    Left = 117
    Top = 409
  end
  object tEmbarques: TFDQuery
    BeforePost = tEmbarquesBeforePost
    BeforeDelete = tEmbarquesBeforeDelete
    AfterScroll = tEmbarquesAfterScroll
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      'from Embarques')
    Left = 37
    Top = 148
    object tEmbarquesRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object tEmbarquesEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 50
    end
    object tEmbarquesNavio: TSmallintField
      FieldName = 'Navio'
      Origin = 'Navio'
    end
    object tEmbarquesNavio_Nome: TStringField
      FieldName = 'Navio_Nome'
      Origin = 'Navio_Nome'
      ReadOnly = True
      Size = 60
    end
    object tEmbarquesOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object tEmbarquesProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object tEmbarquesPremium: TFloatField
      FieldName = 'Premium'
      Origin = 'Premium'
    end
    object tEmbarquesTranshipment: TFloatField
      FieldName = 'Transhipment'
      Origin = 'Transhipment'
    end
    object tEmbarquesFator_Conversao: TFloatField
      FieldName = 'Fator_Conversao'
      Origin = 'Fator_Conversao'
    end
    object tEmbarquesDescarga_Trigger: TFloatField
      FieldName = 'Descarga_Trigger'
      Origin = 'Descarga_Trigger'
    end
    object tEmbarquesVariacao_Termica: TIntegerField
      FieldName = 'Variacao_Termica'
      Origin = 'Variacao_Termica'
      DisplayFormat = ',##0.000'
    end
    object tEmbarquesData_Chegada: TSQLTimeStampField
      FieldName = 'Data_Chegada'
      Origin = 'Data_Chegada'
    end
    object tEmbarquesData_Estimada: TSQLTimeStampField
      FieldName = 'Data_Estimada'
      Origin = 'Data_Estimada'
    end
    object tEmbarquesData_Atracacao: TSQLTimeStampField
      FieldName = 'Data_Atracacao'
      Origin = 'Data_Atracacao'
    end
    object tEmbarquesData_Descarga: TSQLTimeStampField
      FieldName = 'Data_Descarga'
      Origin = 'Data_Descarga'
    end
    object tEmbarquesFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Filial'
    end
    object tEmbarquesQuantidade_15: TFloatField
      FieldName = 'Quantidade_15'
      Origin = 'Quantidade_15'
      DisplayFormat = ',##0.000'
    end
    object tEmbarquesQuantidade_20: TFloatField
      FieldName = 'Quantidade_20'
      Origin = 'Quantidade_20'
      DisplayFormat = ',##0.000'
    end
    object tEmbarquesTipo_Descarga: TStringField
      FieldName = 'Tipo_Descarga'
      Origin = 'Tipo_Descarga'
      Size = 30
    end
    object tEmbarquesValor_Demurrage: TCurrencyField
      FieldName = 'Valor_Demurrage'
      Origin = 'Valor_Demurrage'
      DisplayFormat = ',##0.00'
    end
    object tEmbarquesTempo_Demurrage: TFloatField
      FieldName = 'Tempo_Demurrage'
      Origin = 'Tempo_Demurrage'
    end
    object tEmbarquesTotal_ME: TCurrencyField
      FieldName = 'Total_ME'
      Origin = 'Total_ME'
      DisplayFormat = ',##0.00'
    end
    object tEmbarquesCusto_Navio: TCurrencyField
      FieldName = 'Custo_Navio'
      Origin = 'Custo_Navio'
      DisplayFormat = ',##0.00'
    end
    object tEmbarquesObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object tEmbarquesStatus: TStringField
      FieldName = 'Status'
      Origin = 'Status'
      Size = 15
    end
    object tEmbarquesData_Partida: TSQLTimeStampField
      FieldName = 'Data_Partida'
      Origin = 'Data_Partida'
    end
    object tEmbarquesQuantidade_Carga: TFloatField
      FieldName = 'Quantidade_Carga'
      Origin = 'Quantidade_Carga'
      DisplayFormat = ',##0.000'
    end
    object tEmbarquesReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'Referencia'
      Size = 15
    end
  end
  object dsEmbarques: TDataSource
    DataSet = tEmbarques
    Left = 38
    Top = 200
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 297
    Top = 159
  end
  object tBL: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from EmbarquesBL')
    Left = 202
    Top = 298
    object tBLRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object tBLNavio1: TIntegerField
      FieldName = 'Navio1'
      Origin = 'Navio1'
    end
    object tBLNavio: TIntegerField
      FieldName = 'Navio'
      Origin = 'Navio'
    end
    object tBLBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object tBLData_Emissao: TSQLTimeStampField
      FieldName = 'Data_Emissao'
      Origin = 'Data_Emissao'
    end
    object tBLTon_Vac: TFloatField
      FieldName = 'Ton_Vac'
      Origin = 'Ton_Vac'
      DisplayFormat = ',##0.000'
    end
    object tBLTon_Air: TFloatField
      FieldName = 'Ton_Air'
      Origin = 'Ton_Air'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_M315: TFloatField
      FieldName = 'Quantidade_M315'
      Origin = 'Quantidade_M315'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_M320: TFloatField
      FieldName = 'Quantidade_M320'
      Origin = 'Quantidade_M320'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_LT20: TFloatField
      FieldName = 'Quantidade_LT20'
      Origin = 'Quantidade_LT20'
      DisplayFormat = ',##0.000'
    end
    object tBLEndossado: TBooleanField
      FieldName = 'Endossado'
      Origin = 'Endossado'
    end
    object tBLBloqueado: TBooleanField
      FieldName = 'Bloqueado'
      Origin = 'Bloqueado'
    end
    object tBLObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object tBLLaudo: TStringField
      FieldName = 'Laudo'
      Origin = 'Laudo'
      Size = 15
    end
    object tBLQuantidade_LT15: TFloatField
      FieldName = 'Quantidade_LT15'
      Origin = 'Quantidade_LT15'
      DisplayFormat = ',##0.000'
    end
    object tBLPorto: TStringField
      FieldName = 'Porto'
      Origin = 'Porto'
      Size = 30
    end
    object tBLArmazem: TSmallintField
      FieldName = 'Armazem'
      Origin = 'Armazem'
    end
    object tBLQuantidade_EmbM315: TFloatField
      FieldName = 'Quantidade_EmbM315'
      Origin = 'Quantidade_EmbM315'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_EmbLT15: TFloatField
      FieldName = 'Quantidade_EmbLT15'
      Origin = 'Quantidade_EmbLT15'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_EmbM320: TFloatField
      FieldName = 'Quantidade_EmbM320'
      Origin = 'Quantidade_EmbM320'
      DisplayFormat = ',##0.000'
    end
    object tBLQuantidade_EmbLT20: TFloatField
      FieldName = 'Quantidade_EmbLT20'
      Origin = 'Quantidade_EmbLT20'
      DisplayFormat = ',##0.000'
    end
    object tBLCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object tBLEntreposto: TBooleanField
      FieldName = 'Entreposto'
      Origin = 'Entreposto'
    end
    object tBLDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object tBLEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
  end
  object dsBL: TDataSource
    DataSet = tBL
    Left = 202
    Top = 349
  end
  object dsLaudos: TDataSource
    DataSet = tLaudos
    Left = 201
    Top = 450
  end
  object tLaudos: TFDQuery
    AfterScroll = tLaudosAfterScroll
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select * from EmbarquesLaudo')
    Left = 201
    Top = 399
    object tLaudosRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object tLaudosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object tLaudosLaudo: TStringField
      FieldName = 'Laudo'
      Origin = 'Laudo'
      Size = 15
    end
    object tLaudosNavio: TIntegerField
      FieldName = 'Navio'
      Origin = 'Navio'
    end
    object tLaudosData_Atracacao: TDateField
      FieldName = 'Data_Atracacao'
      Origin = 'Data_Atracacao'
    end
    object tLaudosData_Operacao: TDateField
      FieldName = 'Data_Operacao'
      Origin = 'Data_Operacao'
    end
    object tLaudosQuantidade_M320: TFloatField
      FieldName = 'Quantidade_M320'
      Origin = 'Quantidade_M320'
      DisplayFormat = ',##0.000'
    end
    object tLaudosQuantidade_LT20: TFloatField
      FieldName = 'Quantidade_LT20'
      Origin = 'Quantidade_LT20'
      DisplayFormat = ',##0.000'
    end
    object tLaudosQuantidade_RecebidaM320: TFloatField
      FieldName = 'Quantidade_RecebidaM320'
      Origin = 'Quantidade_RecebidaM320'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object tLaudosQuantidade_RecebidaLT20: TFloatField
      FieldName = 'Quantidade_RecebidaLT20'
      Origin = 'Quantidade_RecebidaLT20'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object tLaudosVariacao_DesLT: TFloatField
      FieldName = 'Variacao_DesLT'
      Origin = 'Variacao_DesLT'
      DisplayFormat = ',##0.000'
    end
    object tLaudosVariacao_DesPerc: TFloatField
      FieldName = 'Variacao_DesPerc'
      Origin = 'Variacao_DesPerc'
      DisplayFormat = ',##0.000'
    end
    object tLaudosObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      BlobType = ftMemo
    end
    object tLaudosVariacao_EmbLT: TFloatField
      FieldName = 'Variacao_EmbLT'
      Origin = 'Variacao_EmbLT'
      DisplayFormat = ',##0.000'
    end
    object tLaudosVariacao_EmbPerc: TFloatField
      FieldName = 'Variacao_EmbPerc'
      Origin = 'Variacao_EmbPerc'
      DisplayFormat = ',##0.000'
    end
  end
end
