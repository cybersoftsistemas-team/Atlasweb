object fCadPlanoFinanceiro: TfCadPlanoFinanceiro
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
    ExplicitTop = 34
    ExplicitHeight = 966
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1179
        Height = 837
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsPlano
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
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 145
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 448
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 51
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Ent'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Seletivo'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Sel'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Outros'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Out'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Custo_Saida'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Sai'
            Title.Font.Style = [fsBold]
            Width = 90
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
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Plano de Contas (Financeiro)'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
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
        ExplicitLeft = -16
        ExplicitTop = -144
        ExplicitHeight = 938
        DesignSize = (
          1177
          862)
        ScrollHeight = 771
        object pFicha1: TUniPanel
          Left = 176
          Top = 25
          Width = 837
          Height = 746
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
          object cCodigo: TUniDBEdit
            Left = 10
            Top = 6
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 0
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cNome: TUniDBEdit
            Left = 157
            Top = 6
            Width = 469
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Nome Financeiro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            OnExit = cNomeExit
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 645
            Top = 7
            Width = 182
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Tipo'
            DataSource = dsPlano
            Caption = 'Tipo de Movimento'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pagamento'
              'Recebimento')
            Values.Strings = (
              'P'
              'R')
          end
          object cModalidade_Importacao: TUniDBLookupComboBox
            Left = 10
            Top = 116
            Width = 616
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModalidade
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Modalidade_Importacao'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Modalidade de Importa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniGroupBox1: TUniGroupBox
            Left = 645
            Top = 84
            Width = 182
            Height = 430
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Financeiros'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cRelatorio: TUniDBCheckBox
              Left = 8
              Top = 82
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Relatorio'
              DataSource = dsPlano
              Caption = 'N'#227'o listar nos Relat'#243'rios'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCambio: TUniDBCheckBox
              Left = 8
              Top = 62
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Cambio'
              DataSource = dsPlano
              Caption = 'C'#226'mbio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTitulo: TUniDBCheckBox
              Left = 8
              Top = 42
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Titulo'
              DataSource = dsPlano
              Caption = 'T'#237'tulo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto: TUniDBCheckBox
              Left = 8
              Top = 282
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Saida'
              DataSource = dsPlano
              Caption = 'Custo de Sa'#237'da'
              ParentFont = False
              Font.Height = -13
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cSomente_Faturamento: TUniDBCheckBox
              Left = 8
              Top = 102
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Somente_Faturamento'
              DataSource = dsPlano
              Caption = 'Somente Faturamento'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cAdiantamento: TUniDBCheckBox
              Left = 8
              Top = 142
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Adiantamento'
              DataSource = dsPlano
              Caption = 'Adiantamento'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cAdiantamentoClick
            end
            object cDevolucao: TUniDBCheckBox
              Left = 8
              Top = 122
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Devolucao'
              DataSource = dsPlano
              Caption = 'Devolu'#231#227'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cDevolucaoClick
            end
            object cCusto_Seletivo: TUniDBCheckBox
              Left = 8
              Top = 302
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Seletivo'
              DataSource = dsPlano
              Caption = 'Custo Seletivo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTransferencia: TUniDBCheckBox
              Left = 8
              Top = 202
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Transferencia'
              DataSource = dsPlano
              Caption = 'Transfer'#234'ncia'
              ParentFont = False
              Font.Height = -13
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFechamento_Processo: TUniDBCheckBox
              Left = 8
              Top = 242
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Fechamento_Processo'
              DataSource = dsPlano
              Caption = 'Fechamento do Processo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto_Entrada: TUniDBCheckBox
              Left = 8
              Top = 262
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Entrada'
              DataSource = dsPlano
              Caption = 'Custo Entrada'
              ParentFont = False
              Font.Height = -13
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cBoleto: TUniDBCheckBox
              Left = 8
              Top = 342
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Boleto'
              DataSource = dsPlano
              Caption = 'Boleto'
              ParentFont = False
              Font.Height = -13
              TabOrder = 13
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cDespesa_Fixa: TUniDBCheckBox
              Left = 8
              Top = 162
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Despesa_Fixa'
              DataSource = dsPlano
              Caption = 'Despesa Fixa'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cNota_Referencia: TUniDBCheckBox
              Left = 8
              Top = 182
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Nota_Referencia'
              DataSource = dsPlano
              Caption = 'Nota Refer'#234'ncia'
              ParentFont = False
              Font.Height = -13
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cProcesso_Obrigatorio: TUniDBCheckBox
              Left = 8
              Top = 222
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Processo_Obrigatorio'
              DataSource = dsPlano
              Caption = 'Processo Obrigat'#243'rio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cDesativada: TUniDBCheckBox
              Left = 8
              Top = 402
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Desativada'
              DataSource = dsPlano
              Caption = 'Desativada'
              ParentFont = False
              Font.Height = -13
              TabOrder = 14
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCusto_Outros: TUniDBCheckBox
              Left = 8
              Top = 322
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Custo_Outros'
              DataSource = dsPlano
              Caption = 'Custo Outros'
              ParentFont = False
              Font.Height = -13
              TabOrder = 17
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTributo: TUniDBCheckBox
              Left = 8
              Top = 362
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Tributo'
              DataSource = dsPlano
              Caption = 'Tributo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 18
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cTaxa: TUniDBCheckBox
              Left = 8
              Top = 382
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Taxa'
              DataSource = dsPlano
              Caption = 'Taxa'
              ParentFont = False
              Font.Height = -13
              TabOrder = 19
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 8
              Top = 22
              Width = 166
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Plano_Financeiro'
              DataSource = dsPlano
              Caption = 'Plano Financeiro'
              ParentFont = False
              Font.Height = -13
              TabOrder = 20
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object cNivel: TUniDBLookupComboBox
            Left = 10
            Top = 171
            Width = 616
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsNivel
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Nivel'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'N'#237'vel de Acesso'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipo_Documento: TUniDBLookupComboBox
            Left = 10
            Top = 226
            Width = 616
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsTiposDoc
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Tipo_Documento'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniGroupBox2: TUniGroupBox
            Left = 10
            Top = 488
            Width = 616
            Height = 249
            Hint = ''
            ShowHint = True
            Caption = 'Apura'#231#227'o PIS/COFINS'
            TabOrder = 7
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
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'CST_PIS'
              DataSource = dsPlano
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
              DataSource = dsPlano
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
              DataSource = dsPlano
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
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'BCCredito'
              DataSource = dsPlano
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
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'CST_COFINS'
              DataSource = dsPlano
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
              DataSource = dsPlano
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
              BorderStyle = ubsSolid
            end
          end
          object cGrupo: TUniDBLookupComboBox
            Left = 10
            Top = 61
            Width = 616
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsGrupos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            ClearButton = True
            DataField = 'Grupo'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Grupo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object gTributo: TUniGroupBox
            Left = 10
            Top = 287
            Width = 616
            Height = 195
            Hint = ''
            ShowHint = True
            Caption = 'Tributo / Taxa'
            TabOrder = 10
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
              BorderStyle = ubsSolid
              DataField = 'Orgao'
              DataSource = dsPlano
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
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Codigo_RFB'
              DataSource = dsPlano
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
              DataSource = dsPlano
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
              DataSource = dsPlano
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
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Plano de Contas (Contabil)'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
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
        ExplicitTop = -8
        ExplicitHeight = 938
        DesignSize = (
          1177
          862)
        ScrollHeight = 699
        object pFicha2: TUniPanel
          Left = 176
          Top = 17
          Width = 854
          Height = 682
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
            Left = 10
            Top = 132
            Width = 648
            Height = 138
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amento Contabil Provis'#227'o [Contra Partida]'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cProvisao_ContaC: TUniDBLookupComboBox
              Left = 175
              Top = 17
              Width = 462
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome'
              ListSource = dsPlanoContas
              KeyField = 'Conta_CodigoRed'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Provisao_Contrapartida'
              DataSource = dsPlano
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
              Width = 624
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Provisao_Historico'
              DataSource = dsPlano
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
              DataSource = dsPlano
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
          object UniGroupBox4: TUniGroupBox
            Left = 10
            Top = 278
            Width = 648
            Height = 138
            Hint = ''
            ShowHint = True
            Caption = 
              'Lan'#231'amento Contabil Pagamento / Recebimento - [Contra-Partida Ba' +
              'nco]'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cLiquidacao_Historico: TUniDBLookupComboBox
              Left = 13
              Top = 72
              Width = 624
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Liquidacao_Historico'
              DataSource = dsPlano
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
              Style = csDropDown
            end
            object UniDBLookupComboBox6: TUniDBLookupComboBox
              Left = 175
              Top = 17
              Width = 462
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome'
              ListSource = dsPlanoContas
              KeyField = 'Conta_CodigoRed'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'Liquidacao_ContraPartida'
              DataSource = dsPlano
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
              DataSource = dsPlano
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
          object UniGroupBox5: TUniGroupBox
            Left = 10
            Top = 421
            Width = 312
            Height = 250
            Hint = ''
            ShowHint = True
            Caption = 'Parametriza'#231#227'o DRE Gerencial'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            DesignSize = (
              312
              250)
            object cDRE_Principal: TUniDBLookupComboBox
              Left = 13
              Top = 18
              Width = 288
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'DRE_Principal'
              DataSource = dsPlano
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
              Style = csDropDown
            end
            object cDRE_Desconto: TUniDBLookupComboBox
              Left = 13
              Top = 128
              Width = 288
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'DRE_Desconto'
              DataSource = dsPlano
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
              Style = csDropDown
            end
            object cDRE_DescontoDupl: TUniDBLookupComboBox
              Left = 13
              Top = 183
              Width = 288
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'DRE_DescontoDupl'
              DataSource = dsPlano
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
              Style = csDropDown
            end
            object cDRE_Juros: TUniDBLookupComboBox
              Left = 13
              Top = 73
              Width = 288
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsDRE
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              ClearButton = True
              DataField = 'DRE_Juros'
              DataSource = dsPlano
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
              Style = csDropDown
            end
          end
          object cTipo_Partida: TUniDBRadioGroup
            Left = 673
            Top = 7
            Width = 170
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Partida'
            DataSource = dsPlano
            Caption = 'Tipo de Partida'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Partida Dobrada'
              'Partida Multipla')
            Values.Strings = (
              'D'
              'M')
          end
          object UniGroupBox6: TUniGroupBox
            Left = 673
            Top = 228
            Width = 170
            Height = 188
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Contabeis'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 8
              Top = 60
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Resultado'
              DataSource = dsPlano
              Caption = 'Conta de Resultado'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 8
              Top = 40
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Sintetica'
              DataSource = dsPlano
              Caption = 'Sint'#233'tica'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 8
              Top = 20
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Titulo'
              DataSource = dsPlano
              Caption = 'Conta T'#237'tulo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 8
              Top = 80
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_LALUR'
              DataSource = dsPlano
              Caption = 'LALUR'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 8
              Top = 120
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Balanco'
              DataSource = dsPlano
              Caption = 'Mostrar no Balan'#231'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cAdiantamentoClick
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 8
              Top = 100
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_DRE'
              DataSource = dsPlano
              Caption = 'DRE'
              ParentFont = False
              Font.Height = -13
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              OnClick = cDevolucaoClick
            end
            object UniDBCheckBox13: TUniDBCheckBox
              Left = 8
              Top = 140
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_DetBeneficiario'
              DataSource = dsPlano
              Caption = 'Detalhar Benefici'#225'rio'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox14: TUniDBCheckBox
              Left = 8
              Top = 160
              Width = 154
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Conta_DetProcesso'
              DataSource = dsPlano
              Caption = 'Detalhar Processo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object UniDBRadioGroup2: TUniDBRadioGroup
            Left = 673
            Top = 105
            Width = 170
            Height = 92
            Hint = ''
            ShowHint = True
            DataField = 'Natureza'
            DataSource = dsPlano
            Caption = 'Natureza da Conta'
            TabOrder = 6
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
          object UniDBEdit1: TUniDBEdit
            Left = 10
            Top = 13
            Width = 148
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta_Contabil'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            InputMask.Mask = '99.99.99.99.99'
            InputMask.MaskChar = ' '
            InputType = 'text'
            FieldLabel = 'Conta Contabil'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cNomeContabil: TUniDBEdit
            Left = 10
            Top = 69
            Width = 648
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Contabil'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'Nome Contabil'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object UniDBEdit2: TUniDBEdit
            Left = 163
            Top = 13
            Width = 104
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta_CodigoRed'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'C'#243'digo Reduzido:'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object UniDBEdit3: TUniDBEdit
            Left = 272
            Top = 13
            Width = 148
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta_ECF'
            DataSource = dsPlano
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            InputMask.MaskChar = ' '
            InputType = 'text'
            FieldLabel = 'Conta Contabil (ECF)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
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
      DataSource = dsPlano
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
  object dsPlano: TDataSource
    DataSet = PlanoFinanceiro
    Left = 117
    Top = 73
  end
  object dsDRE: TDataSource
    DataSet = DRE
    Left = 117
    Top = 120
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 117
    Top = 165
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
  object PlanoFinanceiro: TFDQuery
    BeforePost = PlanoFinanceiroBeforePost
    BeforeDelete = PlanoFinanceiroBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evUnidirectional]
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoFinanceiro')
    Left = 38
    Top = 73
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evUnidirectional, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Conta_CodigoRed'
      '      ,Conta_Contabil'
      '      ,Nome_Contabil'
      'FROM PlanoFinanceiro')
    Left = 38
    Top = 165
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
    Top = 120
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
    Top = 682
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
end
