object fCadPlanoContas: TfCadPlanoContas
  Left = 0
  Top = 0
  Width = 1187
  Height = 927
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1187
    Height = 892
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet2
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1179
        Height = 837
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsPlanoContas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Carregando dados...'
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Conta'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Title.Font.Style = [fsBold]
            Width = 117
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 65
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome_Contabil'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Contabil'
            Title.Font.Style = [fsBold]
            Width = 300
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome_Financeiro'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Financeiro'
            Title.Font.Style = [fsBold]
            Width = 300
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 35
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Ent'
            Title.Font.Style = [fsBold]
            Width = 62
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Seletivo'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Sel'
            Title.Font.Style = [fsBold]
            Width = 62
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Outros'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Out'
            Title.Font.Style = [fsBold]
            Width = 62
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Saida'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Sai'
            Title.Font.Style = [fsBold]
            Width = 62
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Desativada'
            Title.Alignment = taCenter
            Title.Caption = 'Desat'
            Title.Font.Style = [fsBold]
            Width = 44
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1179
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
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
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Plano de Contas'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1179
        Height = 864
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1177
          862)
        ScrollHeight = 670
        object pFicha2: TUniPanel
          Left = 176
          Top = 7
          Width = 760
          Height = 663
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
          Title = 'Plano Financeiro / Contabil (Plano Contas)'
          Caption = ''
          Color = clTeal
          object UniGroupBox3: TUniGroupBox
            Left = 16
            Top = 302
            Width = 500
            Height = 145
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amento Contabil Provis'#227'o [Contra Partida]'
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cProvisao_ContaC: TUniDBLookupComboBox
              Left = 175
              Top = 17
              Width = 313
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dstContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              ClearButton = True
              DataField = 'Provisao_Contrapartida'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Conta'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cProvisao_Historico: TUniDBLookupComboBox
              Left = 13
              Top = 72
              Width = 475
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Provisao_Historico'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Hist'#243'rico:'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cProvisao_ContraPartida: TUniDBComboBox
              Left = 13
              Top = 17
              Width = 156
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Provisao_Contrapartida'
              DataSource = dsPlanoContas
              Items.Strings = (
                'BENEFICI'#193'RIO'
                'PROCESSO'
                'BANCO')
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Campo'#39';'#13#10'}')
              FieldLabel = 'Conta'
              FieldLabelAlign = laTop
              ClearButton = True
              IconItems = <>
            end
          end
          object UniGroupBox4: TUniGroupBox
            Left = 16
            Top = 466
            Width = 500
            Height = 146
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amento Contabil Liquida'#231#227'o - [Contra-Partida Banco]'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cLiquidacao_Historico: TUniDBLookupComboBox
              Left = 13
              Top = 72
              Width = 475
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 2
              ClearButton = True
              DataField = 'Liquidacao_Historico'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Hist'#243'rico:'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object UniDBLookupComboBox6: TUniDBLookupComboBox
              Left = 175
              Top = 17
              Width = 313
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dstContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              ClearButton = True
              DataField = 'Liquidacao_ContraPartida'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Contas:'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cLiquidacao_ContraPartida: TUniDBComboBox
              Left = 13
              Top = 17
              Width = 156
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Liquidacao_ContraPartida'
              DataSource = dsPlanoContas
              Items.Strings = (
                'BENEFICI'#193'RIO'
                'PROCESSO'
                'BANCO')
              TabOrder = 3
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Campo'#39';'#13#10'}')
              FieldLabel = 'Conta'
              FieldLabelAlign = laTop
              ClearButton = True
              IconItems = <>
            end
          end
          object cTipo_Partida: TUniDBRadioGroup
            Left = 536
            Top = 8
            Width = 209
            Height = 46
            Hint = ''
            ShowHint = True
            DataField = 'Partida'
            DataSource = dsPlanoContas
            Caption = 'Partida'
            TabOrder = 10
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Dobrada'
              'Multipla')
            Columns = 2
            Values.Strings = (
              'D'
              'M')
          end
          object UniDBRadioGroup2: TUniDBRadioGroup
            Left = 537
            Top = 108
            Width = 208
            Height = 95
            Hint = ''
            ShowHint = True
            DataField = 'Natureza'
            DataSource = dsPlanoContas
            Caption = 'Natureza'
            TabOrder = 12
            ParentColor = False
            Color = clWindow
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Credora'
              'Devedora'
              'Indefinida')
            Values.Strings = (
              'C'
              'D'
              'I')
          end
          object cConta: TUniDBEdit
            Left = 16
            Top = 16
            Width = 148
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 0
            InputMask.MaskChar = ' '
            InputType = 'text'
            FieldLabel = 'Conta Contabil'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNomeContabil: TUniDBEdit
            Left = 16
            Top = 71
            Width = 500
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Contabil'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome Contabil'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCodigo: TUniDBEdit
            Left = 169
            Top = 16
            Width = 104
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo Reduzido:'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit3: TUniDBEdit
            Left = 279
            Top = 16
            Width = 148
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta_ECF'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            InputMask.MaskChar = ' '
            InputType = 'text'
            FieldLabel = 'Conta Contabil (ECF)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNomeFinanceiro: TUniDBEdit
            Left = 16
            Top = 126
            Width = 500
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Financeiro'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Nome Financeiro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            OnExit = cNomeExit
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 537
            Top = 56
            Width = 208
            Height = 46
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsPlanoContas
            Caption = 'Tipo'
            TabOrder = 11
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pagamento'
              'Recebimento')
            Columns = 2
            Values.Strings = (
              'P'
              'R')
          end
          object UniGroupBox1: TUniGroupBox
            Left = 536
            Top = 210
            Width = 209
            Height = 441
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros'
            TabOrder = 14
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cRelatorio: TUniDBCheckBox
              Left = 12
              Top = 77
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Relatorio'
              DataSource = dsPlanoContas
              Caption = 'N'#227'o listar nos Relat'#243'rios'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCambio: TUniDBCheckBox
              Left = 12
              Top = 61
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Cambio'
              DataSource = dsPlanoContas
              Caption = 'C'#226'mbio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto: TUniDBCheckBox
              Left = 12
              Top = 237
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Saida'
              DataSource = dsPlanoContas
              Caption = 'Custo de Sa'#237'da'
              ParentFont = False
              Font.Height = -13
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cSomente_Faturamento: TUniDBCheckBox
              Left = 12
              Top = 93
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Somente_Faturamento'
              DataSource = dsPlanoContas
              Caption = 'Somente Faturamento'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cAdiantamento: TUniDBCheckBox
              Left = 12
              Top = 125
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Adiantamento'
              DataSource = dsPlanoContas
              Caption = 'Adiantamento'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cAdiantamentoClick
            end
            object cDevolucao: TUniDBCheckBox
              Left = 12
              Top = 109
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Devolucao'
              DataSource = dsPlanoContas
              Caption = 'Devolu'#231#227'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cDevolucaoClick
            end
            object cCusto_Seletivo: TUniDBCheckBox
              Left = 12
              Top = 253
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Seletivo'
              DataSource = dsPlanoContas
              Caption = 'Custo Seletivo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTransferencia: TUniDBCheckBox
              Left = 12
              Top = 173
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Transferencia'
              DataSource = dsPlanoContas
              Caption = 'Transfer'#234'ncia'
              ParentFont = False
              Font.Height = -13
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFechamento_Processo: TUniDBCheckBox
              Left = 12
              Top = 205
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Fechamento_Processo'
              DataSource = dsPlanoContas
              Caption = 'Fechamento do Processo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto_Entrada: TUniDBCheckBox
              Left = 12
              Top = 221
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Entrada'
              DataSource = dsPlanoContas
              Caption = 'Custo Entrada'
              ParentFont = False
              Font.Height = -13
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cBoleto: TUniDBCheckBox
              Left = 12
              Top = 285
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Boleto'
              DataSource = dsPlanoContas
              Caption = 'Boleto'
              ParentFont = False
              Font.Height = -13
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cDespesa_Fixa: TUniDBCheckBox
              Left = 12
              Top = 141
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Despesa_Fixa'
              DataSource = dsPlanoContas
              Caption = 'Despesa Fixa'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cNota_Referencia: TUniDBCheckBox
              Left = 12
              Top = 157
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Nota_Referencia'
              DataSource = dsPlanoContas
              Caption = 'Nota Refer'#234'ncia'
              ParentFont = False
              Font.Height = -13
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cProcesso_Obrigatorio: TUniDBCheckBox
              Left = 12
              Top = 189
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Processo_Obrigatorio'
              DataSource = dsPlanoContas
              Caption = 'Processo Obrigat'#243'rio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 14
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cDesativada: TUniDBCheckBox
              Left = 12
              Top = 12
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Desativada'
              DataSource = dsPlanoContas
              Caption = 'Desativada'
              ParentFont = False
              Font.Height = -13
              TabOrder = 13
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto_Outros: TUniDBCheckBox
              Left = 12
              Top = 269
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Outros'
              DataSource = dsPlanoContas
              Caption = 'Custo Outros'
              ParentFont = False
              Font.Height = -13
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTributo: TUniDBCheckBox
              Left = 12
              Top = 301
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Tributo'
              DataSource = dsPlanoContas
              Caption = 'Tributo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 17
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTaxa: TUniDBCheckBox
              Left = 12
              Top = 317
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Taxa'
              DataSource = dsPlanoContas
              Caption = 'Taxa'
              ParentFont = False
              Font.Height = -13
              TabOrder = 18
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 12
              Top = 29
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Plano_Financeiro'
              DataSource = dsPlanoContas
              Caption = 'Plano Financeiro'
              ParentFont = False
              Font.Height = -13
              TabOrder = 19
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 12
              Top = 333
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Resultado'
              DataSource = dsPlanoContas
              Caption = 'Conta de Resultado'
              ParentFont = False
              Font.Height = -13
              TabOrder = 20
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 12
              Top = 45
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Sintetica'
              DataSource = dsPlanoContas
              Caption = 'Sint'#233'tica'
              ParentFont = False
              Font.Height = -13
              TabOrder = 21
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 12
              Top = 349
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'LALUR'
              DataSource = dsPlanoContas
              Caption = 'LALUR'
              ParentFont = False
              Font.Height = -13
              TabOrder = 22
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 12
              Top = 381
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Balanco'
              DataSource = dsPlanoContas
              Caption = 'Mostrar no Balan'#231'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 23
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cAdiantamentoClick
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 12
              Top = 365
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'DRE'
              DataSource = dsPlanoContas
              Caption = 'DRE'
              ParentFont = False
              Font.Height = -13
              TabOrder = 24
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cDevolucaoClick
            end
            object UniDBCheckBox13: TUniDBCheckBox
              Left = 12
              Top = 397
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Detalha_Beneficiario'
              DataSource = dsPlanoContas
              Caption = 'Detalhar Benefici'#225'rio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 25
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox14: TUniDBCheckBox
              Left = 12
              Top = 413
              Width = 180
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Detalha_Processo'
              DataSource = dsPlanoContas
              Caption = 'Detalhar Processo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 26
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object cModalidade_Importacao: TUniDBLookupComboBox
            Left = 16
            Top = 181
            Width = 257
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalidade
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Modalidade_Importacao'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Modalidade de Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cNivel: TUniDBLookupComboBox
            Left = 279
            Top = 181
            Width = 237
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsNivel
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Nivel'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'N'#237'vel de Acesso'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cTipo_Documento: TUniDBLookupComboBox
            Left = 16
            Top = 236
            Width = 500
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTiposDoc
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Tipo_Documento'
            DataSource = dsPlanoContas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Par'#226'metros'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1179
        Height = 864
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1177
          862)
        ScrollHeight = 494
        object pFicha1: TUniPanel
          Left = 176
          Top = 25
          Width = 975
          Height = 469
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
          Title = 'Plano Financeiro / Contabil (Plano Financeiro)'
          Caption = ''
          Color = clTeal
          object UniGroupBox2: TUniGroupBox
            Left = 10
            Top = 211
            Width = 616
            Height = 249
            Hint = ''
            ShowHint = True
            Caption = 'Apura'#231#227'o PIS/COFINS'
            TabOrder = 0
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cCST_PIS: TUniDBLookupComboBox
              Left = 9
              Top = 18
              Width = 464
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsCSTPIS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'CST_PIS'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'CST do PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cAliquota_PIS: TUniDBFormattedNumberEdit
              Left = 479
              Top = 18
              Width = 123
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Aliquota_PIS'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Al'#237'quota do PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cAliquota_COFINS: TUniDBFormattedNumberEdit
              Left = 479
              Top = 73
              Width = 123
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Aliquota_COFINS'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Al'#237'quota da COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cBCCredito: TUniDBLookupComboBox
              Left = 9
              Top = 128
              Width = 593
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsCredPIS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'BCCredito'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Base de C'#225'lculo do Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cCST_COFINS: TUniDBLookupComboBox
              Left = 9
              Top = 73
              Width = 464
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsCSTCOFINS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'CST_COFINS'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'CST da COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cNatureza_Receita: TUniDBEdit
              Left = 9
              Top = 184
              Width = 135
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Natureza_Receita'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'Natureza da Receita'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object gTributo: TUniGroupBox
            Left = 10
            Top = 7
            Width = 616
            Height = 195
            Hint = ''
            ShowHint = True
            Caption = 'Tributo / Taxa'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cOrgao: TUniDBLookupComboBox
              Left = 9
              Top = 19
              Width = 593
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsDestinatarios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Orgao'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cCodigo_RFB: TUniDBLookupComboBox
              Left = 9
              Top = 74
              Width = 593
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsCodigosRFB
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Codigo_RFB'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'C'#243'digo da Receita Federal'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cValor: TUniDBFormattedNumberEdit
              Left = 9
              Top = 130
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Al'#237'quota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalPrecision = 0
              DecimalSeparator = #0
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cDia_Vencimento: TUniDBFormattedNumberEdit
              Left = 136
              Top = 130
              Width = 121
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Dia_Vencimento'
              DataSource = dsPlanoContas
              TabOrder = 4
              MaxValue = 1.000000000000000000
              MinValue = 31.000000000000000000
              FieldLabel = 'Vencimento (Dia)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              DecimalPrecision = 0
              DecimalSeparator = #0
              ThousandSeparator = '.'
            end
          end
          object UniGroupBox5: TUniGroupBox
            Left = 642
            Top = 7
            Width = 320
            Height = 250
            Hint = ''
            ShowHint = True
            Caption = 'DRE Gerencial'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            DesignSize = (
              320
              250)
            object cDRE_Principal: TUniDBLookupComboBox
              Left = 13
              Top = 18
              Width = 291
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'DRE_Principal'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              Anchors = [akLeft, akTop, akRight]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Valor Principal'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDRE_Desconto: TUniDBLookupComboBox
              Left = 13
              Top = 128
              Width = 291
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'DRE_Desconto'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              Anchors = [akLeft, akTop, akRight]
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Descontos'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDRE_DescontoDupl: TUniDBLookupComboBox
              Left = 13
              Top = 183
              Width = 291
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'DRE_DescontoDupl'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              Anchors = [akLeft, akTop, akRight]
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Desconto de Duplicata'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cDRE_Juros: TUniDBLookupComboBox
              Left = 13
              Top = 73
              Width = 291
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'DRE_Juros'
              DataSource = dsPlanoContas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              Anchors = [akLeft, akTop, akRight]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Multa/Juros'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1187
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
    object bSalvar: TUniSpeedButton
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
      OnClick = bSalvarClick
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
  object dsDRE: TDataSource
    DataSet = DRE
    Left = 117
    Top = 152
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 117
    Top = 101
  end
  object dsHistoricos: TDataSource
    DataSet = Historicos
    Left = 117
    Top = 211
  end
  object dsModalidade: TDataSource
    DataSet = ModalidadeImp
    Left = 117
    Top = 258
  end
  object dsNivel: TDataSource
    DataSet = Niveis
    Left = 117
    Top = 306
  end
  object dsTiposDoc: TDataSource
    DataSet = TiposDoc
    Left = 117
    Top = 352
  end
  object dsCodigosRFB: TDataSource
    DataSet = CodigosRFB
    Left = 117
    Top = 397
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 117
    Top = 445
  end
  object dsCredPIS: TDataSource
    DataSet = CredPIS
    Left = 117
    Top = 541
  end
  object dsGrupos: TDataSource
    DataSet = Grupos
    Left = 117
    Top = 588
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evUnidirectional, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM PlanoContas')
    Left = 38
    Top = 101
  end
  object Historicos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Historicos')
    Left = 38
    Top = 211
  end
  object ModalidadeImp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadeImportacao')
    Left = 38
    Top = 258
  end
  object Niveis: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM UsuariosNivel')
    Left = 38
    Top = 306
  end
  object TiposDoc: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposDocumentos')
    Left = 38
    Top = 352
  end
  object Grupos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoFinanceiroGrupos')
    Left = 38
    Top = 588
  end
  object CredPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM BCCreditoPISCOFINS')
    Left = 38
    Top = 541
  end
  object CodigosRFB: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CodigosRFB')
    Left = 38
    Top = 397
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CSTPIS')
    Left = 38
    Top = 445
  end
  object DRE: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM DRE')
    Left = 38
    Top = 152
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios'
      '')
    Left = 38
    Top = 636
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 117
    Top = 636
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios'
      '')
    Left = 38
    Top = 730
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CSTCOFINS')
    Left = 38
    Top = 493
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 117
    Top = 493
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 444
    Top = 3
  end
  object tContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Conta'
      '     , Codigo'
      '     , Nome = Nome_Contabil'
      'from PlanoContas'
      'where isnull(Sintetica, 0) = 0')
    Left = 38
    Top = 684
  end
  object dstContas: TDataSource
    DataSet = tContas
    Left = 117
    Top = 684
  end
end
