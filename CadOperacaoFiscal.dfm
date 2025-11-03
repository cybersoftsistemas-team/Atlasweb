object fCadOperacaoFiscal: TfCadOperacaoFiscal
  Left = 0
  Top = 0
  Width = 1407
  Height = 822
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1407
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
    object bEditar: TUniSpeedButton
      Left = 205
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
      TabOrder = 2
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 246
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 3
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 328
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
      TabOrder = 5
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      Left = 287
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
      TabOrder = 4
      OnClick = bGravarClick
    end
    object bFechar: TUniSpeedButton
      Left = 454
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
      TabOrder = 6
      OnClick = bFecharClick
    end
    object bDuplicar: TUniButton
      Left = 369
      Top = 0
      Width = 85
      Height = 35
      Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
      ShowHint = True
      ParentShowHint = False
      Caption = 'Duplicar'
      Align = alLeft
      TabOrder = 7
      Images = UniMainModule.imgBotoes
      ImageIndex = 19
      OnClick = bDuplicarClick
    end
    object bAdicionar: TUniSpeedButton
      Left = 164
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
      TabOrder = 1
      OnClick = bAdicionarClick
    end
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 164
      Height = 35
      Hint = ''
      DataSource = dsOperacaoFiscal
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 8
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1407
    Height = 787
    Hint = ''
    ActivePage = UniTabSheet4
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1399
        Height = 732
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsOperacaoFiscal
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.PageSize = 30
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
            Width = 60
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 576
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'ES_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Title.Font.Style = [fsBold]
            Width = 67
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Emissao_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Style = [fsBold]
            Width = 70
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Finalidade'
            Title.Alignment = taCenter
            Title.Caption = 'Finalidade'
            Title.Font.Style = [fsBold]
            Width = 368
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Desativado'
            Title.Alignment = taCenter
            Title.Caption = 'Desat'
            Title.Font.Style = [fsBold]
            Width = 50
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1399
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
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Par'#226'metros Diversos'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 675
        object pFicha1: TUniPanel
          Left = 275
          Top = 20
          Width = 777
          Height = 655
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
          object cCodigo: TUniDBEdit
            Left = 14
            Top = 17
            Width = 87
            Height = 50
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsOperacaoFiscal
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDescricao: TUniDBEdit
            Left = 107
            Top = 17
            Width = 652
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsOperacaoFiscal
            TabOrder = 2
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cRateio_PISCOFINSEntrada: TUniDBRadioGroup
            Left = 17
            Top = 250
            Width = 180
            Height = 53
            Hint = ''
            ShowHint = True
            DataField = 'Rateio_PISCOFINSEntrada'
            DataSource = dsOperacaoFiscal
            Caption = ' PIS/COFINS Entrada'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Rateado'
              'Calculado')
            Columns = 2
            Values.Strings = (
              '0'
              '1')
          end
          object cSaida_Entrada: TUniDBRadioGroup
            Left = 17
            Top = 129
            Width = 180
            Height = 53
            Hint = ''
            ShowHint = True
            DataField = 'ES'
            DataSource = dsOperacaoFiscal
            Caption = ' Tipo de Nota Fiscal '
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Entrada'
              'Sa'#237'da')
            Columns = 2
            Values.Strings = (
              '0'
              '1')
          end
          object cOrigem_ValorUnitario: TUniDBRadioGroup
            Left = 498
            Top = 211
            Width = 261
            Height = 122
            Hint = ''
            ShowHint = True
            DataField = 'Origem_ValorUnitario'
            DataSource = dsOperacaoFiscal
            Caption = 'Valor Unit'#225'rio do Produto'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Utilizar valor de Entrada'
              'Utilizar valor de Venda'
              'Utilizar valor de Custo M'#233'dio'
              'Utilizar valor da Ficha de Estoque')
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object cOrigem_AliquotaICMS: TUniDBRadioGroup
            Left = 498
            Top = 129
            Width = 261
            Height = 74
            Hint = ''
            ShowHint = True
            DataField = 'Origem_AliquotaICMS'
            DataSource = dsOperacaoFiscal
            Caption = 'C'#225'lculo do ICMS Operacional'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Utilizar a al'#237'quota da tabela de ICMS'
              'Utilizar a al'#237'quota da Adi'#231#227'o / Nota Entrada')
            Values.Strings = (
              '0'
              '1')
          end
          object GroupBox3: TUniGroupBox
            Left = 17
            Top = 415
            Width = 180
            Height = 221
            Hint = ''
            ShowHint = True
            Caption = 'Campos Vis'#237'veis DANFE '
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cVisiveis_ICMSOper: TUniDBCheckBox
              Left = 7
              Top = 22
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_ICMSOper'
              DataSource = dsOperacaoFiscal
              Caption = 'ICMS Operacional'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_ICMSSub: TUniDBCheckBox
              Left = 7
              Top = 41
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_ICMSSub'
              DataSource = dsOperacaoFiscal
              Caption = 'ICMS Substitutivo'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_Frete: TUniDBCheckBox
              Left = 7
              Top = 60
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_Frete'
              DataSource = dsOperacaoFiscal
              Caption = 'Frete'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_Seguro: TUniDBCheckBox
              Left = 7
              Top = 79
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_Seguro'
              DataSource = dsOperacaoFiscal
              Caption = 'Seguro'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_Desconto: TUniDBCheckBox
              Left = 7
              Top = 98
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_Desconto'
              DataSource = dsOperacaoFiscal
              Caption = 'Desconto'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_Despesas: TUniDBCheckBox
              Left = 7
              Top = 117
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_Despesas'
              DataSource = dsOperacaoFiscal
              Caption = 'Despesas'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_IPI: TUniDBCheckBox
              Left = 7
              Top = 136
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_IPI'
              DataSource = dsOperacaoFiscal
              Caption = 'IPI'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_QuantidadeItem: TUniDBCheckBox
              Left = 7
              Top = 155
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_QuantidadeItem'
              DataSource = dsOperacaoFiscal
              Caption = 'Quantidade do Item'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_DIFAL: TUniDBCheckBox
              Left = 7
              Top = 174
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_DIFAL'
              DataSource = dsOperacaoFiscal
              Caption = 'DIFAL'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cVisiveis_AFRMM: TUniDBCheckBox
              Left = 7
              Top = 193
              Width = 122
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Visiveis_AFRMM'
              DataSource = dsOperacaoFiscal
              Caption = 'AFRMM'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cFinalidade_Mercadoria_Mercadoria: TUniDBRadioGroup
            Left = 498
            Top = 346
            Width = 261
            Height = 220
            Hint = ''
            ShowHint = True
            DataField = 'Finalidade_Mercadoria'
            DataSource = dsOperacaoFiscal
            Caption = ' Finalidade da Mercadoria '
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Revenda'
              'Consumo'
              'Devolu'#231#227'o'
              'Exporta'#231#227'o'
              'Pr'#243'pria em Terceiros'
              'Terceiros na Empresa'
              'Imobilizado'
              'Outras')
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '9')
          end
          object GroupBox2: TUniGroupBox
            Left = 207
            Top = 129
            Width = 281
            Height = 507
            Hint = ''
            ShowHint = True
            Caption = ' Par'#226'metros Diversos '
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cNota_Referencia: TUniDBCheckBox
              Left = 5
              Top = 105
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Nota_Referencia'
              DataSource = dsOperacaoFiscal
              Caption = 'Pedir NF de Refer'#234'ncia no Pedido'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cApuracao_PISCOFINS: TUniDBCheckBox
              Left = 5
              Top = 123
              Width = 269
              Height = 17
              Hint = ''
              HelpType = htKeyword
              ShowHint = True
              DataField = 'Apuracao_PISCOFINS'
              DataSource = dsOperacaoFiscal
              Caption = 'Gerar apura'#231#227'o de  PIS / COFINS'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cGerar_Financeiro: TUniDBCheckBox
              Left = 5
              Top = 141
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Gerar_Financeiro'
              DataSource = dsOperacaoFiscal
              Caption = 'Gerar contas  Pagar/Receber'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cComplementar: TUniDBCheckBox
              Left = 5
              Top = 51
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Complementar'
              DataSource = dsOperacaoFiscal
              Caption = 'Complementar'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cReceita: TUniDBCheckBox
              Left = 5
              Top = 159
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Receita'
              DataSource = dsOperacaoFiscal
              Caption = 'Gera Receita'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cRelatorio_Vendas: TUniDBCheckBox
              Left = 5
              Top = 177
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Relatorio_Vendas'
              DataSource = dsOperacaoFiscal
              Caption = 'Relat'#243'rio (Faturamento)'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cRelatorio_DestaqueICMS: TUniDBCheckBox
              Left = 5
              Top = 195
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Relatorio_DestaqueICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'Relat'#243'rio (Rel.NF S/destaque de ICMS origem)'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBaixa_Estoque: TUniDBCheckBox
              Left = 5
              Top = 69
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Baixa_Estoque'
              DataSource = dsOperacaoFiscal
              Caption = 'Baixa de Estoque'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cICMS_Destacar: TUniDBCheckBox
              Left = 5
              Top = 213
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'ICMS_Destacar'
              DataSource = dsOperacaoFiscal
              Caption = 'N'#227'o destacar ICMS nas obriga'#231#245'es fiscais'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cEmail_NFE: TUniDBCheckBox
              Left = 5
              Top = 231
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Email_NFE'
              DataSource = dsOperacaoFiscal
              Caption = 'N'#227'o enviar E-Mail na emiss'#227'o da NF-e'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cNFE_Estorno: TUniDBCheckBox
              Left = 5
              Top = 249
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'NFE_Estorno'
              DataSource = dsOperacaoFiscal
              Caption = 'Nota Fiscal de Estorno/Ajuste'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTransferencia: TUniDBCheckBox
              Left = 5
              Top = 267
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Transferencia'
              DataSource = dsOperacaoFiscal
              Caption = 'Nota Fiscal de Transfer'#234'ncia'
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDados_Veiculo: TUniDBCheckBox
              Left = 5
              Top = 285
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Dados_Veiculo'
              DataSource = dsOperacaoFiscal
              Caption = 'Obrigar dados do ve'#237'culo nos pedidos'
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBloqueio_Lucro: TUniDBCheckBox
              Left = 5
              Top = 303
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Bloqueio_Lucro'
              DataSource = dsOperacaoFiscal
              Caption = 'Bloqueio de lucro M'#237'nimo/M'#225'ximo'
              TabOrder = 13
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCalculo_CST: TUniDBCheckBox
              Left = 5
              Top = 321
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Calculo_CST'
              DataSource = dsOperacaoFiscal
              Caption = 'N'#227'o calcular CST'#39's Automaticamente'
              TabOrder = 14
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cFormula_Produto: TUniDBCheckBox
              Left = 5
              Top = 339
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Utilizar_FormulaProduto'
              DataSource = dsOperacaoFiscal
              Caption = 'Utilizar f'#243'rmula para o valor do produrto'
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cMostrar_Despesas: TUniDBCheckBox
              Left = 5
              Top = 357
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Mostrar_Despesas'
              DataSource = dsOperacaoFiscal
              Caption = 'Mostrar Despesas nas Informa'#231#245'es Complem.'
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cAtivo: TUniDBCheckBox
              Left = 5
              Top = 375
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Desativado'
              DataSource = dsOperacaoFiscal
              Caption = 'Desativado'
              TabOrder = 18
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox9: TUniDBCheckBox
              Left = 5
              Top = 15
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Movimenta_Estoque'
              DataSource = dsOperacaoFiscal
              Caption = 'Movimenta Estoque'
              TabOrder = 19
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox10: TUniDBCheckBox
              Left = 5
              Top = 33
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Movimenta_Inventario'
              DataSource = dsOperacaoFiscal
              Caption = 'Movimenta Invent'#225'rio'
              TabOrder = 20
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox19: TUniDBCheckBox
              Left = 5
              Top = 87
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Movimenta_EstoqueRep'
              DataSource = dsOperacaoFiscal
              Caption = 'Movimenta Estoque Representante'
              TabOrder = 21
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox17: TUniDBCheckBox
              Left = 5
              Top = 393
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Media_BCR'
              DataSource = dsOperacaoFiscal
              Caption = 'Calcular M'#233'dia BCR'
              TabOrder = 22
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox11: TUniDBCheckBox
              Left = 5
              Top = 411
              Width = 269
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Transportador'
              DataSource = dsOperacaoFiscal
              Caption = 'Transportador obrigat'#243'rio'
              TabOrder = 23
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 17
            Top = 189
            Width = 180
            Height = 53
            Hint = ''
            ShowHint = True
            DataField = 'Emissao'
            DataSource = dsOperacaoFiscal
            Caption = 'Emiss'#227'o'
            TabOrder = 10
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pr'#243'pria'
              'Terceiros')
            Columns = 2
            Values.Strings = (
              'P'
              'T')
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 14
            Top = 70
            Width = 742
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo; Nome'
            ListSource = dstBeneficio
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Beneficio_Fiscal'
            DataSource = dsOperacaoFiscal
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Beneficio Fiscal'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object UniDBRadioGroup2: TUniDBRadioGroup
            Left = 17
            Top = 311
            Width = 180
            Height = 100
            Hint = ''
            ShowHint = True
            DataField = 'Destino_Origem'
            DataSource = dsOperacaoFiscal
            Caption = 'Destino/Origem'
            TabOrder = 12
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Importa'#231#227'o'
              'Exporta'#231#227'o'
              'Distribui'#231#227'o')
            Values.Strings = (
              'I'
              'E'
              'D')
          end
        end
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Par'#226'metros NF Terceiros'
      object UniScrollBox7: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 648
        object pFicha7: TUniPanel
          AlignWithMargins = True
          Left = 332
          Top = 3
          Width = 722
          Height = 645
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
            Left = 15
            Top = 8
            Width = 569
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstServicos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Servico'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Servi'#231'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object cCFOPDentro: TUniDBLookupComboBox
            Left = 15
            Top = 58
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CFOP_Dentro'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'CFOP Dentro do Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBEdit1: TUniDBEdit
            Left = 600
            Top = 8
            Width = 104
            Height = 50
            Hint = ''
            ShowHint = True
            BodyRTL = True
            DataField = 'Aliquota_ISS'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Al'#237'quota ISS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBLookupComboBox5: TUniDBLookupComboBox
            Left = 15
            Top = 259
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dstTipoDoc
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Especie'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 4
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'Esp'#233'cie de Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBLookupComboBox6: TUniDBLookupComboBox
            Left = 15
            Top = 309
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCSTTabelaB
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CST_ICMS'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 5
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'CST ICMS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBListBox1: TUniDBListBox
            Left = 16
            Top = 368
            Width = 481
            Height = 257
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dstCFOP
            TabOrder = 6
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 15
            Top = 108
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CFOP_Fora'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 7
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'CFOP Dentro do Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 15
            Top = 158
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CFOP_IndEntrada'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'CFOP Dentro do Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
          object UniDBLookupComboBox4: TUniDBLookupComboBox
            Left = 15
            Top = 209
            Width = 689
            Height = 50
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dstCFOP
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'CFOP_IndSaida'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            RemoteQuery = True
            FieldLabel = 'CFOP Dentro do Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
            Style = csDropDown
          end
        end
      end
    end
    object TabSheet5: TUniTabSheet
      Hint = ''
      ImageIndex = 4
      Caption = 'Par'#226'metros Fiscais'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 705
        object pFicha2: TUniPanel
          AlignWithMargins = True
          Left = 253
          Top = 20
          Width = 1034
          Height = 685
          Hint = ''
          Enabled = False
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cCST: TUniGroupBox
            Left = 12
            Top = 65
            Width = 771
            Height = 182
            Hint = ''
            ShowHint = True
            Caption = ' C'#243'digos de Situa'#231#245'es Tribut'#225'rias (NF Entrada) '
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object clCST_PIS: TUniDBLookupComboBox
              Left = 10
              Top = 19
              Width = 746
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstCSTPIS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'CST_PIS'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object clCST_COFINS: TUniDBLookupComboBox
              Left = 10
              Top = 69
              Width = 746
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstCSTCOFINS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'CST_COFINS'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object cTipoCredito: TUniDBLookupComboBox
              Left = 10
              Top = 119
              Width = 746
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dstBCCredito
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Tipo_Credito'
              DataSource = dsOperacaoFiscal
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Tipo de B.C.Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
          end
          object GrupoPIS: TUniGroupBox
            Left = 473
            Top = 401
            Width = 272
            Height = 195
            Hint = ''
            ShowHint = True
            Caption = ' Situa'#231#227'o Tribut'#225'ria (PIS) '
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTPIS_AliquotaUM: TUniDBCheckBox
              Left = 10
              Top = 15
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaUM'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Monofasica: TUniDBCheckBox
              Left = 10
              Top = 34
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Monofasica'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_AliquotaZero: TUniDBCheckBox
              Left = 10
              Top = 53
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_AliquotaZero'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Isenta: TUniDBCheckBox
              Left = 10
              Top = 91
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Isenta'
              DataSource = dsOperacaoFiscal
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Suspensao: TUniDBCheckBox
              Left = 10
              Top = 72
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Suspensao'
              DataSource = dsOperacaoFiscal
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_SemIncidencia: TUniDBCheckBox
              Left = 10
              Top = 110
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_SemIncidencia'
              DataSource = dsOperacaoFiscal
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTPIS_Outras: TUniDBCheckBox
              Left = 10
              Top = 129
              Width = 251
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTPIS_Outras'
              DataSource = dsOperacaoFiscal
              Caption = 'Outras Opera'#231#245'es'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GrupoCOFINS: TUniGroupBox
            Left = 754
            Top = 401
            Width = 264
            Height = 195
            Hint = ''
            ShowHint = True
            Caption = ' Situa'#231#227'o Tribut'#225'ria (COFINS) '
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cCSTCOFINS_AliquotaUM: TUniDBCheckBox
              Left = 10
              Top = 15
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaUM'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Monofasica: TUniDBCheckBox
              Left = 10
              Top = 34
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Monofasica'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_AliquotaZero: TUniDBCheckBox
              Left = 10
              Top = 53
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_AliquotaZero'
              DataSource = dsOperacaoFiscal
              Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Isenta: TUniDBCheckBox
              Left = 10
              Top = 91
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Isenta'
              DataSource = dsOperacaoFiscal
              Caption = 'Isenta da Contribui'#231#227'o'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Suspensao: TUniDBCheckBox
              Left = 10
              Top = 72
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Suspensao'
              DataSource = dsOperacaoFiscal
              Caption = 'Suspens'#227'o da Contribui'#231#227'o'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_SemIncidencia: TUniDBCheckBox
              Left = 10
              Top = 110
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_SemIncidencia'
              DataSource = dsOperacaoFiscal
              Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCSTCOFINS_Outras: TUniDBCheckBox
              Left = 10
              Top = 129
              Width = 243
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'CSTCOFINS_Outras'
              DataSource = dsOperacaoFiscal
              Caption = 'Outras Opera'#231#245'es'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox4: TUniGroupBox
            Left = 12
            Top = 401
            Width = 160
            Height = 195
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria (IPI)'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cImune_IPI: TUniDBCheckBox
              Left = 10
              Top = 34
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Imune_IPI'
              DataSource = dsOperacaoFiscal
              Caption = 'Imune de IPI'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cNao_Tributada_IPI: TUniDBCheckBox
              Left = 10
              Top = 15
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Nao_Tributada_IPI'
              DataSource = dsOperacaoFiscal
              Caption = 'N'#227'o tributada para IPI'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cSuspensao_IPI: TUniDBCheckBox
              Left = 10
              Top = 53
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Suspensao_IPI'
              DataSource = dsOperacaoFiscal
              Caption = 'Suspens'#227'o de IPI'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cIsencao_IPI: TUniDBCheckBox
              Left = 10
              Top = 72
              Width = 140
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Isencao_IPI'
              DataSource = dsOperacaoFiscal
              Caption = 'Isen'#231#227'o de IPI'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox6: TUniGroupBox
            Left = 12
            Top = 253
            Width = 771
            Height = 131
            Hint = ''
            ShowHint = True
            Caption = 
              ' CSOSN para notas fiscais de empresas do regime do Simples Nacio' +
              'nal '
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object RxDBLookupCombo1: TUniDBLookupComboBox
              Left = 10
              Top = 19
              Width = 746
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstCSTTabelaB
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'CSOSN_Entrada'
              DataSource = dsOperacaoFiscal
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Entrada'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
            object RxDBLookupCombo2: TUniDBLookupComboBox
              Left = 10
              Top = 68
              Width = 746
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstCSTTabelaB
              KeyField = 'Codigo'
              ListFieldIndex = 0
              ClearButton = True
              DataField = 'CSOSN_Saida'
              DataSource = dsOperacaoFiscal
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Sa'#237'da'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
            end
          end
          object cEnquadra: TUniDBLookupComboBox
            Left = 12
            Top = 9
            Width = 766
            Height = 50
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ListField = 'Codigo; Descricao'
            ListSource = dstEnqIPI
            KeyField = 'Codigo'
            ListFieldIndex = 1
            ClearButton = True
            DataField = 'Enquadramento_IPI'
            DataSource = dsOperacaoFiscal
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'C'#243'd.Enquadram.Legal IPI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object UniGroupBox1: TUniGroupBox
            Left = 179
            Top = 401
            Width = 286
            Height = 224
            Hint = ''
            ShowHint = True
            Caption = 'Situa'#231#227'o Tribut'#225'ria (ICMS)'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 10
              Top = 15
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Nao_Tributada_ICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'N'#227'o tributada para ICMS'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 10
              Top = 129
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Monofasico_Comb'
              DataSource = dsOperacaoFiscal
              Caption = 'Trib.mono.pr'#243'pria (Combustiveis)'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 10
              Top = 110
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Media_BCR'
              DataSource = dsOperacaoFiscal
              Caption = 'Calcular M'#233'dia BCR'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 10
              Top = 34
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Suspensao_ICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'Suspens'#227'o de ICMS'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 10
              Top = 148
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Monofasico_CombRetencao'
              DataSource = dsOperacaoFiscal
              Caption = 'Trib.mono.pr'#243'pria c/resp reten'#231#227'o (Combust'#237'veis)'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 10
              Top = 53
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Isencao_ICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'Isen'#231#227'o de ICMS'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 10
              Top = 72
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Imune_ICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'Imune de ICMS'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox8: TUniDBCheckBox
              Left = 10
              Top = 167
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Monofasico_CombDiferido'
              DataSource = dsOperacaoFiscal
              Caption = 'Trib.mono.Rec.Difer (combust'#237'veis)'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox12: TUniDBCheckBox
              Left = 10
              Top = 186
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Monofasico_CombDiferido'
              DataSource = dsOperacaoFiscal
              Caption = 'Trib.mono.cobrada'#160'anteriormente((Combust'#237'veis)'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox13: TUniDBCheckBox
              Left = 11
              Top = 91
              Width = 264
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Diferido_ICMS'
              DataSource = dsOperacaoFiscal
              Caption = 'Imune de ICMS'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Formulas'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 603
        object UniPanel4: TUniPanel
          AlignWithMargins = True
          Left = 120
          Top = 41
          Width = 1177
          Height = 562
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object gFormulas: TUniDBGrid
            AlignWithMargins = True
            Left = 10
            Top = 48
            Width = 1157
            Height = 376
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Margins.Bottom = 2
            ShowHint = True
            ParentShowHint = False
            HeaderTitleAlign = taCenter
            TitleFont.Height = -13
            TitleFont.Style = [fsBold]
            DataSource = dstOpFormulas
            Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados...'
            RowHeight = 20
            ForceFit = True
            BorderStyle = ubsInset
            TrackOver = False
            Align = alTop
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 1
            OnDblClick = gFormulasDblClick
            Columns = <
              item
                FieldName = 'Ordem_Calculo'
                Title.Alignment = taCenter
                Title.Caption = 'Ordem Calc'
                Title.Font.Style = [fsBold]
                Width = 70
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Tipo'
                Title.Alignment = taCenter
                Title.Caption = 'Tipo'
                Title.Font.Style = [fsBold]
                Width = 66
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Campo'
                Title.Font.Style = [fsBold]
                Width = 256
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Formula'
                Title.Alignment = taCenter
                Title.Caption = 'F'#243'rmula'
                Title.Font.Style = [fsBold]
                Width = 823
                Font.Name = 'Calibri'
                DisplayMemo = True
              end
              item
                FieldName = 'Desativada'
                Title.Alignment = taCenter
                Title.Caption = 'Desat'
                Title.Font.Style = [fsBold]
                Width = 43
                Font.Name = 'Calibri'
              end>
          end
          object UniPanel3: TUniPanel
            AlignWithMargins = True
            Left = 10
            Top = 10
            Width = 1157
            Height = 35
            Hint = ''
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 0
            ShowHint = True
            ParentShowHint = False
            Align = alTop
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsSolid
            Caption = ''
            Color = 5526569
            object bNavegaFormula: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 141
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dstOpFormulas
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bEditFormula: TUniSpeedButton
              Left = 141
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Editar formula'
              ShowHint = True
              Caption = ''
              Align = alLeft
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 1
              TabOrder = 2
              OnClick = bEditFormulaClick
            end
            object bExcluirFormula: TUniSpeedButton
              Left = 182
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Excluir Formula'
              ShowHint = True
              Caption = ''
              Align = alLeft
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 3
              OnClick = bExcluirFormulaClick
            end
          end
          object cFormula: TUniMemo
            AlignWithMargins = True
            Left = 10
            Top = 428
            Width = 1157
            Height = 124
            Hint = ''
            Margins.Left = 10
            Margins.Top = 2
            Margins.Right = 10
            Margins.Bottom = 10
            ShowHint = True
            BorderStyle = ubsInset
            Lines.Strings = (
              'cFormula')
            ParentFont = False
            Font.Name = 'JetBrains Mono'
            Align = alClient
            ReadOnly = True
            Color = 16772292
            TabOrder = 3
            FieldLabel = 'F'#211'RMULA'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            FieldLabelFont.Height = -16
          end
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'Informa'#231#245'es Complementares'
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 622
        object pFicha3: TUniPanel
          AlignWithMargins = True
          Left = 319
          Top = 20
          Width = 750
          Height = 602
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
          object cInf_Complementares: TUniDBMemo
            Left = 11
            Top = 269
            Width = 724
            Height = 204
            Hint = ''
            ShowHint = True
            DataField = 'Inf_Complementares'
            DataSource = dsOperacaoFiscal
            ParentFont = False
            Font.Height = -12
            Font.Name = 'Courier New'
            TabOrder = 1
            ClearButton = True
            FieldLabel = 'Informa'#231#245'es Complementares:'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
          end
          object cPesqInf: TUniEdit
            Left = 11
            Top = 238
            Width = 724
            Height = 27
            Hint = ''
            ShowHint = True
            BorderStyle = ubsSolid
            Text = ''
            TabOrder = 2
            EmptyText = 'Pesquisar'
            ClearButton = True
            OnKeyDown = cPesquisaKeyDown
          end
          object GradeInf: TUniDBGrid
            Left = 11
            Top = 11
            Width = 724
            Height = 225
            Hint = ''
            ShowHint = True
            HeaderTitleAlign = taCenter
            TitleFont.Height = -13
            TitleFont.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados...'
            RowHeight = 24
            ForceFit = True
            TrackOver = False
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            OnDblClick = GradeInfDblClick
            Columns = <
              item
                FieldName = 'Descricao'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Font.Style = [fsBold]
                Width = 339
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Referencia'
                Title.Alignment = taCenter
                Title.Caption = 'Tabela'
                Title.Font.Style = [fsBold]
                Width = 133
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Campo'
                Title.Alignment = taCenter
                Title.Caption = 'Vari'#225'vel'
                Title.Font.Style = [fsBold]
                Width = 234
                Font.Name = 'Calibri'
              end>
          end
          object UniDBMemo1: TUniDBMemo
            Left = 11
            Top = 479
            Width = 724
            Height = 111
            Hint = ''
            ShowHint = True
            DataSource = dsOperacaoFiscal
            ParentFont = False
            Font.Height = -12
            Font.Name = 'Courier New'
            TabOrder = 4
            ClearButton = True
            FieldLabel = 'Informa'#231#245'es Complementares: (FISCO)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Parametriza'#231#227'o Financeira'
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 312
        object pFicha5: TUniPanel
          AlignWithMargins = True
          Left = 325
          Top = 29
          Width = 546
          Height = 283
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
          object GroupBox5: TUniGroupBox
            Left = 15
            Top = 11
            Width = 515
            Height = 232
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Caption = ' Lan'#231'amento Financeiro (Recebimento) '
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cClassificacao_Saida: TUniDBLookupComboBox
              Left = 11
              Top = 20
              Width = 488
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome_Financeiro'
              ListSource = dstPlano
              KeyField = 'Conta'
              ListFieldIndex = 1
              DataField = 'Classificacao_Saida'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o Financeira Pagar/Receber'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object clTipo_Documento: TUniDBLookupComboBox
              Left = 11
              Top = 120
              Width = 488
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dstTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Tipo_Documento'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object clCentro_Custo: TUniDBLookupComboBox
              Left = 11
              Top = 70
              Width = 488
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Nome'
              ListSource = dstCentroCusto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Centro_Custo'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
            end
            object clModalidade_Pagamento: TUniDBLookupComboBox
              Left = 11
              Top = 170
              Width = 488
              Height = 50
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dstModalidade
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Modalidade_Pagamento'
              DataSource = dsOperacaoFiscal
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Modalidade de Pagamento'
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
    object TabSheet4: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'Parametriza'#231#227'o Cont'#225'bil'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1399
        Height = 759
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1397
          757)
        ScrollHeight = 486
        object pFicha4: TUniPanel
          AlignWithMargins = True
          Left = 385
          Top = 14
          Width = 770
          Height = 472
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
          object GrupoCtb: TUniGroupBox
            Left = 13
            Top = 6
            Width = 743
            Height = 228
            Hint = ''
            Enabled = False
            ShowHint = True
            Caption = 'Lan'#231'amentos Contabeis'
            TabOrder = 1
            object UniDBEdit2: TUniDBEdit
              Left = 11
              Top = 64
              Width = 127
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Debito'
              DataSource = dstOperCtb
              TabOrder = 1
              FieldLabel = 'Conta D'#201'bito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cContaD_Ctb: TUniDBLookupComboBox
              Left = 140
              Top = 64
              Width = 585
              Height = 50
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Conta;Nome_Contabil'
              ListSource = dstPlano
              KeyField = 'Conta'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Conta_Debito'
              DataSource = dstOperCtb
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Plano de Contas'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              DontUpdateOnKeyEvents = True
            end
            object cContaC_Ctb: TUniDBLookupComboBox
              Left = 140
              Top = 114
              Width = 585
              Height = 50
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Conta;Nome_Contabil'
              ListSource = dstPlano
              KeyField = 'Conta'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Conta_Credito'
              DataSource = dstOperCtb
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Plano de Contas'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              DontUpdateOnKeyEvents = True
            end
            object UniDBEdit3: TUniDBEdit
              Left = 11
              Top = 114
              Width = 127
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Conta_Credito'
              DataSource = dstOperCtb
              TabOrder = 4
              FieldLabel = 'Conta Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit4: TUniDBEdit
              Left = 11
              Top = 164
              Width = 127
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Historico'
              DataSource = dstOperCtb
              TabOrder = 5
              FieldLabel = 'Hist'#243'rico'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cHistCtb: TUniDBLookupComboBox
              Left = 140
              Top = 164
              Width = 585
              Height = 50
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              ListField = 'Codigo;Descricao'
              ListSource = dstHistorico
              KeyField = 'Codigo'
              ListFieldIndex = 1
              ClearButton = True
              DataField = 'Historico'
              DataSource = dstOperCtb
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Hist'#243'rico Padr'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              DontUpdateOnKeyEvents = True
            end
            object cCampoCtb: TUniDBComboBox
              Left = 11
              Top = 14
              Width = 342
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Campo'
              DataSource = dstOperCtb
              Items.Strings = (
                'Valor do ICMS '
                'Valor do ICMS ST'
                'Valor do FCP'
                'Valor dos Produtos'
                'Valor do Frete'
                'Valor do Seguro'
                'Valor dos Descontos'
                'Valor do II'
                'Valor do IPI'
                'Valor do PIS'
                'Valor da COFINS'
                'Valor das Despesas'
                'Valor do  Total da Nota'
                'Valor do FOB Processo'
                'Valor do FOB Fornecedor'
                'Valor do Estoque')
              TabOrder = 7
              FieldLabel = 'Lan'#231'amento'
              FieldLabelAlign = laTop
              ClearButton = True
              IconItems = <>
            end
          end
          object UniPanel1: TUniPanel
            Left = 0
            Top = 437
            Width = 770
            Height = 35
            Hint = ''
            ShowHint = True
            Align = alBottom
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = 5526569
            object NavegaCtb: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 143
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dstOperCtb
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bEdCtb: TUniSpeedButton
              Left = 181
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
            end
            object bDelCtb: TUniSpeedButton
              Left = 222
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
            end
            object bCanCtb: TUniSpeedButton
              Left = 304
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
              OnClick = bCanCtbClick
            end
            object bSavCtb: TUniSpeedButton
              Left = 263
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
              OnClick = bSavCtbClick
            end
            object bAddCtb: TUniSpeedButton
              Left = 140
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
              OnClick = bAddCtbClick
            end
          end
          object GradeCtb: TUniDBGrid
            AlignWithMargins = True
            Left = 13
            Top = 240
            Width = 743
            Height = 184
            Hint = ''
            ShowHint = True
            HeaderTitleAlign = taCenter
            TitleFont.Height = -13
            TitleFont.Style = [fsBold]
            DataSource = dstOperCtb
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados...'
            RowHeight = 24
            ForceFit = True
            TrackOver = False
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            OnDblClick = GradeInfDblClick
            Columns = <
              item
                FieldName = 'Campo'
                Title.Alignment = taCenter
                Title.Caption = 'Lan'#231'amento'
                Width = 141
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Conta_Debito'
                Title.Alignment = taCenter
                Title.Caption = 'Conta (D)'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Conta_Credito'
                Title.Alignment = taCenter
                Title.Caption = 'Conta (C)'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Historico'
                Title.Alignment = taCenter
                Title.Caption = 'Hist'#243'rico'
                Width = 75
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'Historico_Desc'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o Hist'#243'rico'
                Width = 342
                Font.Name = 'Calibri'
              end>
          end
        end
      end
    end
  end
  object tCodigo: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM OperacaoFiscal')
    Left = 40
    Top = 667
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tCopia: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 40
    Top = 712
  end
  object mnVariavel: TPopupMenu
    Left = 40
    Top = 338
    object FORNECEDORES1: TUniMenuItem
      Caption = 'FORNECEDOR (Conta do cadastro do fornecedor)'
    end
    object Clientes1: TUniMenuItem
      Caption = 'CLIENTE (Conta do cadastro do cliente)'
    end
    object PROCESSO1: TUniMenuItem
      Caption = 'PROCESSO (Despesas)'
    end
    object PROCESSOImpostos1: TUniMenuItem
      Caption = 'PROCESSO (Impostos)'
    end
    object PROCESSOAdiantamento1: TUniMenuItem
      Caption = 'PROCESSO (Adiantamento)'
    end
    object DEVOLUO1: TUniMenuItem
      Caption = 'DEVOLU'#199#195'O (Saida/Entrada)'
    end
  end
  object tClassificacao: TFDQuery
    Left = 40
    Top = 157
  end
  object dstClassificacao: TDataSource
    DataSet = tClassificacao
    Left = 40
    Top = 204
  end
  object tQtde: TFDQuery
    Left = 40
    Top = 250
  end
  object tNotas: TFDQuery
    SQL.Strings = (
      '')
    Left = 40
    Top = 294
  end
  object OperacaoFiscal: TFDQuery
    BeforePost = OperacaoFiscalBeforePost
    BeforeDelete = OperacaoFiscalBeforeDelete
    AfterScroll = OperacaoFiscalAfterScroll
    OnCalcFields = OperacaoFiscalCalcFields
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      
        '      --,Emissao_Descricao = iif(Emissao = '#39'P'#39', '#39'PR'#211'PRIA'#39', '#39'TERC' +
        'EIROS'#39')'
      '      ,Finalidade = case Finalidade_Mercadoria'
      #9'                     when 0 then '#39'Revenda'#39
      #9'                     when 1 then '#39'Consumo'#39
      #9'                     when 2 then '#39'Devolu'#231#227'o'#39
      #9'                     when 3 then '#39'Exporta'#231#227'o'#39
      
        #9'                     when 4 then '#39'Pr'#243'pria em Poder de Terceiros' +
        #39
      
        #9'                     when 5 then '#39'Terceiros em Poder da Empresa' +
        #39
      #9'                     when 6 then '#39'Imobilizado'#39
      #9'                     when 9 then '#39'Outras'#39
      '                    end'
      'from OperacaoFiscal')
    Left = 40
    Top = 65
    object OperacaoFiscalCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
    end
    object OperacaoFiscalDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 60
    end
    object OperacaoFiscalInf_Complementares: TMemoField
      FieldName = 'Inf_Complementares'
      Origin = 'Inf_Complementares'
      BlobType = ftMemo
    end
    object OperacaoFiscalLinhas_Itens: TSmallintField
      FieldName = 'Linhas_Itens'
      Origin = 'Linhas_Itens'
    end
    object OperacaoFiscalLinhas: TSmallintField
      FieldName = 'Linhas'
      Origin = 'Linhas'
    end
    object OperacaoFiscalColunas: TSmallintField
      FieldName = 'Colunas'
      Origin = 'Colunas'
    end
    object OperacaoFiscalMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object OperacaoFiscalMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object OperacaoFiscalNota_Referencia: TBooleanField
      FieldName = 'Nota_Referencia'
      Origin = 'Nota_Referencia'
    end
    object OperacaoFiscalApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object OperacaoFiscalNao_Tributada_ICMS: TBooleanField
      FieldName = 'Nao_Tributada_ICMS'
      Origin = 'Nao_Tributada_ICMS'
    end
    object OperacaoFiscalNao_Tributada_IPI: TBooleanField
      FieldName = 'Nao_Tributada_IPI'
      Origin = 'Nao_Tributada_IPI'
    end
    object OperacaoFiscalImune_IPI: TBooleanField
      FieldName = 'Imune_IPI'
      Origin = 'Imune_IPI'
    end
    object OperacaoFiscalTamanho_Fonte: TStringField
      FieldName = 'Tamanho_Fonte'
      Origin = 'Tamanho_Fonte'
      FixedChar = True
      Size = 10
    end
    object OperacaoFiscalConta_ICMSOper_D: TStringField
      FieldName = 'Conta_ICMSOper_D'
      Origin = 'Conta_ICMSOper_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_ICMSOper_C: TStringField
      FieldName = 'Conta_ICMSOper_C'
      Origin = 'Conta_ICMSOper_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_ICMSOper: TSmallintField
      FieldName = 'Historico_ICMSOper'
      Origin = 'Historico_ICMSOper'
    end
    object OperacaoFiscalConta_ICMSST_D: TStringField
      FieldName = 'Conta_ICMSST_D'
      Origin = 'Conta_ICMSST_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_ICMSST_C: TStringField
      FieldName = 'Conta_ICMSST_C'
      Origin = 'Conta_ICMSST_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_ICMSST: TSmallintField
      FieldName = 'Historico_ICMSST'
      Origin = 'Historico_ICMSST'
    end
    object OperacaoFiscalConta_IPI_D: TStringField
      FieldName = 'Conta_IPI_D'
      Origin = 'Conta_IPI_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_IPI_C: TStringField
      FieldName = 'Conta_IPI_C'
      Origin = 'Conta_IPI_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_IPI: TSmallintField
      FieldName = 'Historico_IPI'
      Origin = 'Historico_IPI'
    end
    object OperacaoFiscalConta_Seguro_D: TStringField
      FieldName = 'Conta_Seguro_D'
      Origin = 'Conta_Seguro_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_Seguro_C: TStringField
      FieldName = 'Conta_Seguro_C'
      Origin = 'Conta_Seguro_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_Seguro: TSmallintField
      FieldName = 'Historico_Seguro'
      Origin = 'Historico_Seguro'
    end
    object OperacaoFiscalConta_Frete_D: TStringField
      FieldName = 'Conta_Frete_D'
      Origin = 'Conta_Frete_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_Frete_C: TStringField
      FieldName = 'Conta_Frete_C'
      Origin = 'Conta_Frete_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_Frete: TSmallintField
      FieldName = 'Historico_Frete'
      Origin = 'Historico_Frete'
    end
    object OperacaoFiscalConta_Despesas_D: TStringField
      FieldName = 'Conta_Despesas_D'
      Origin = 'Conta_Despesas_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_Despesas_C: TStringField
      FieldName = 'Conta_Despesas_C'
      Origin = 'Conta_Despesas_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_Despesas: TSmallintField
      FieldName = 'Historico_Despesas'
      Origin = 'Historico_Despesas'
    end
    object OperacaoFiscalConta_PIS_D: TStringField
      FieldName = 'Conta_PIS_D'
      Origin = 'Conta_PIS_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_PIS_C: TStringField
      FieldName = 'Conta_PIS_C'
      Origin = 'Conta_PIS_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_PIS: TSmallintField
      FieldName = 'Historico_PIS'
      Origin = 'Historico_PIS'
    end
    object OperacaoFiscalConta_COFINS_D: TStringField
      FieldName = 'Conta_COFINS_D'
      Origin = 'Conta_COFINS_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_COFINS_C: TStringField
      FieldName = 'Conta_COFINS_C'
      Origin = 'Conta_COFINS_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_COFINS: TSmallintField
      FieldName = 'Historico_COFINS'
      Origin = 'Historico_COFINS'
    end
    object OperacaoFiscalConta_II_D: TStringField
      FieldName = 'Conta_II_D'
      Origin = 'Conta_II_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_II_C: TStringField
      FieldName = 'Conta_II_C'
      Origin = 'Conta_II_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_II: TSmallintField
      FieldName = 'Historico_II'
      Origin = 'Historico_II'
    end
    object OperacaoFiscalConta_FOB_Fornecedor_D: TStringField
      FieldName = 'Conta_FOB_Fornecedor_D'
      Origin = 'Conta_FOB_Fornecedor_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_FOB_Fornecedor: TSmallintField
      FieldName = 'Historico_FOB_Fornecedor'
      Origin = 'Historico_FOB_Fornecedor'
    end
    object OperacaoFiscalConta_FOB_Processo_D: TStringField
      FieldName = 'Conta_FOB_Processo_D'
      Origin = 'Conta_FOB_Processo_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_FOB_Processo: TSmallintField
      FieldName = 'Historico_FOB_Processo'
      Origin = 'Historico_FOB_Processo'
    end
    object OperacaoFiscalConta_TotalProdutos_D: TStringField
      FieldName = 'Conta_TotalProdutos_D'
      Origin = 'Conta_TotalProdutos_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_TotalProdutos_C: TStringField
      FieldName = 'Conta_TotalProdutos_C'
      Origin = 'Conta_TotalProdutos_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_TotalProdutos: TSmallintField
      FieldName = 'Historico_TotalProdutos'
      Origin = 'Historico_TotalProdutos'
    end
    object OperacaoFiscalConta_FOB_Fornecedor_C: TStringField
      FieldName = 'Conta_FOB_Fornecedor_C'
      Origin = 'Conta_FOB_Fornecedor_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_FOB_Processo_C: TStringField
      FieldName = 'Conta_FOB_Processo_C'
      Origin = 'Conta_FOB_Processo_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_Estoque_D: TStringField
      FieldName = 'Conta_Estoque_D'
      Origin = 'Conta_Estoque_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_Estoque_C: TStringField
      FieldName = 'Conta_Estoque_C'
      Origin = 'Conta_Estoque_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_Estoque: TSmallintField
      FieldName = 'Historico_Estoque'
      Origin = 'Historico_Estoque'
    end
    object OperacaoFiscalConta_Desconto_D: TStringField
      FieldName = 'Conta_Desconto_D'
      Origin = 'Conta_Desconto_D'
      FixedChar = True
      Size = 11
    end
    object OperacaoFiscalConta_Desconto_C: TStringField
      FieldName = 'Conta_Desconto_C'
      Origin = 'Conta_Desconto_C'
      FixedChar = True
      Size = 11
    end
    object OperacaoFiscalHistorico_Desconto: TSmallintField
      FieldName = 'Historico_Desconto'
      Origin = 'Historico_Desconto'
    end
    object OperacaoFiscalConta_TotalNota_C: TStringField
      FieldName = 'Conta_TotalNota_C'
      Origin = 'Conta_TotalNota_C'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalConta_TotalNota_D: TStringField
      FieldName = 'Conta_TotalNota_D'
      Origin = 'Conta_TotalNota_D'
      FixedChar = True
      Size = 12
    end
    object OperacaoFiscalHistorico_TotalNota: TSmallintField
      FieldName = 'Historico_TotalNota'
      Origin = 'Historico_TotalNota'
    end
    object OperacaoFiscalVisiveis_ICMSOper: TBooleanField
      FieldName = 'Visiveis_ICMSOper'
      Origin = 'Visiveis_ICMSOper'
    end
    object OperacaoFiscalVisiveis_ICMSSub: TBooleanField
      FieldName = 'Visiveis_ICMSSub'
      Origin = 'Visiveis_ICMSSub'
    end
    object OperacaoFiscalVisiveis_Frete: TBooleanField
      FieldName = 'Visiveis_Frete'
      Origin = 'Visiveis_Frete'
    end
    object OperacaoFiscalVisiveis_Seguro: TBooleanField
      FieldName = 'Visiveis_Seguro'
      Origin = 'Visiveis_Seguro'
    end
    object OperacaoFiscalVisiveis_Desconto: TBooleanField
      FieldName = 'Visiveis_Desconto'
      Origin = 'Visiveis_Desconto'
    end
    object OperacaoFiscalVisiveis_Despesas: TBooleanField
      FieldName = 'Visiveis_Despesas'
      Origin = 'Visiveis_Despesas'
    end
    object OperacaoFiscalVisiveis_IPI: TBooleanField
      FieldName = 'Visiveis_IPI'
      Origin = 'Visiveis_IPI'
    end
    object OperacaoFiscalClassificacao_Saida: TStringField
      FieldName = 'Classificacao_Saida'
      Origin = 'Classificacao_Saida'
      FixedChar = True
      Size = 15
    end
    object OperacaoFiscalTipo_Documento: TStringField
      FieldName = 'Tipo_Documento'
      Origin = 'Tipo_Documento'
      FixedChar = True
      Size = 10
    end
    object OperacaoFiscalGerar_Financeiro: TBooleanField
      FieldName = 'Gerar_Financeiro'
      Origin = 'Gerar_Financeiro'
    end
    object OperacaoFiscalCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      FixedChar = True
      Size = 10
    end
    object OperacaoFiscalCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      FixedChar = True
      Size = 2
    end
    object OperacaoFiscalCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object OperacaoFiscalIPI_Imune: TBooleanField
      FieldName = 'IPI_Imune'
      Origin = 'IPI_Imune'
    end
    object OperacaoFiscalFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object OperacaoFiscalComplementar: TBooleanField
      FieldName = 'Complementar'
      Origin = 'Complementar'
    end
    object OperacaoFiscalSuspensao_ICMS: TBooleanField
      FieldName = 'Suspensao_ICMS'
      Origin = 'Suspensao_ICMS'
    end
    object OperacaoFiscalReceita: TBooleanField
      FieldName = 'Receita'
      Origin = 'Receita'
    end
    object OperacaoFiscalSuspensao_IPI: TBooleanField
      FieldName = 'Suspensao_IPI'
      Origin = 'Suspensao_IPI'
    end
    object OperacaoFiscalModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
      Origin = 'Modalidade_Pagamento'
    end
    object OperacaoFiscalIsencao_ICMS: TBooleanField
      FieldName = 'Isencao_ICMS'
      Origin = 'Isencao_ICMS'
    end
    object OperacaoFiscalRelatorio_Vendas: TBooleanField
      FieldName = 'Relatorio_Vendas'
      Origin = 'Relatorio_Vendas'
    end
    object OperacaoFiscalCSTPIS_AliquotaUM: TBooleanField
      FieldName = 'CSTPIS_AliquotaUM'
      Origin = 'CSTPIS_AliquotaUM'
    end
    object OperacaoFiscalCSTPIS_Monofasica: TBooleanField
      FieldName = 'CSTPIS_Monofasica'
      Origin = 'CSTPIS_Monofasica'
    end
    object OperacaoFiscalCSTPIS_AliquotaZero: TBooleanField
      FieldName = 'CSTPIS_AliquotaZero'
      Origin = 'CSTPIS_AliquotaZero'
    end
    object OperacaoFiscalCSTPIS_Isenta: TBooleanField
      FieldName = 'CSTPIS_Isenta'
      Origin = 'CSTPIS_Isenta'
    end
    object OperacaoFiscalCSTPIS_Suspensao: TBooleanField
      FieldName = 'CSTPIS_Suspensao'
      Origin = 'CSTPIS_Suspensao'
    end
    object OperacaoFiscalCSTPIS_SemIncidencia: TBooleanField
      FieldName = 'CSTPIS_SemIncidencia'
      Origin = 'CSTPIS_SemIncidencia'
    end
    object OperacaoFiscalCSTCOFINS_AliquotaUM: TBooleanField
      FieldName = 'CSTCOFINS_AliquotaUM'
      Origin = 'CSTCOFINS_AliquotaUM'
    end
    object OperacaoFiscalCSTCOFINS_Monofasica: TBooleanField
      FieldName = 'CSTCOFINS_Monofasica'
      Origin = 'CSTCOFINS_Monofasica'
    end
    object OperacaoFiscalCSTCOFINS_AliquotaZero: TBooleanField
      FieldName = 'CSTCOFINS_AliquotaZero'
      Origin = 'CSTCOFINS_AliquotaZero'
    end
    object OperacaoFiscalCSTCOFINS_Isenta: TBooleanField
      FieldName = 'CSTCOFINS_Isenta'
      Origin = 'CSTCOFINS_Isenta'
    end
    object OperacaoFiscalCSTCOFINS_Suspensao: TBooleanField
      FieldName = 'CSTCOFINS_Suspensao'
      Origin = 'CSTCOFINS_Suspensao'
    end
    object OperacaoFiscalCSTCOFINS_SemIncidencia: TBooleanField
      FieldName = 'CSTCOFINS_SemIncidencia'
      Origin = 'CSTCOFINS_SemIncidencia'
    end
    object OperacaoFiscalCSTPIS_Outras: TBooleanField
      FieldName = 'CSTPIS_Outras'
      Origin = 'CSTPIS_Outras'
    end
    object OperacaoFiscalCSTCOFINS_Outras: TBooleanField
      FieldName = 'CSTCOFINS_Outras'
      Origin = 'CSTCOFINS_Outras'
    end
    object OperacaoFiscalValoracao_Produto: TBooleanField
      FieldName = 'Valoracao_Produto'
      Origin = 'Valoracao_Produto'
    end
    object OperacaoFiscalRelatorio_DestaqueICMS: TBooleanField
      FieldName = 'Relatorio_DestaqueICMS'
      Origin = 'Relatorio_DestaqueICMS'
    end
    object OperacaoFiscalTipo_Credito: TSmallintField
      FieldName = 'Tipo_Credito'
      Origin = 'Tipo_Credito'
    end
    object OperacaoFiscalRateio_PISCOFINSEntrada: TSmallintField
      FieldName = 'Rateio_PISCOFINSEntrada'
      Origin = 'Rateio_PISCOFINSEntrada'
    end
    object OperacaoFiscalOrigem_AliquotaICMS: TSmallintField
      FieldName = 'Origem_AliquotaICMS'
      Origin = 'Origem_AliquotaICMS'
    end
    object OperacaoFiscalMedia_BCR: TBooleanField
      FieldName = 'Media_BCR'
      Origin = 'Media_BCR'
    end
    object OperacaoFiscalOrigem_ValorUnitario: TSmallintField
      FieldName = 'Origem_ValorUnitario'
      Origin = 'Origem_ValorUnitario'
    end
    object OperacaoFiscalVisiveis_QuantidadeItem: TBooleanField
      FieldName = 'Visiveis_QuantidadeItem'
      Origin = 'Visiveis_QuantidadeItem'
    end
    object OperacaoFiscalBaixa_Estoque: TBooleanField
      FieldName = 'Baixa_Estoque'
      Origin = 'Baixa_Estoque'
    end
    object OperacaoFiscalICMS_Destacar: TBooleanField
      FieldName = 'ICMS_Destacar'
      Origin = 'ICMS_Destacar'
    end
    object OperacaoFiscalEmail_NFE: TBooleanField
      FieldName = 'Email_NFE'
      Origin = 'Email_NFE'
    end
    object OperacaoFiscalNFE_Estorno: TBooleanField
      FieldName = 'NFE_Estorno'
      Origin = 'NFE_Estorno'
    end
    object OperacaoFiscalImune_ICMS: TBooleanField
      FieldName = 'Imune_ICMS'
      Origin = 'Imune_ICMS'
    end
    object OperacaoFiscalCSOSN_Entrada: TStringField
      FieldName = 'CSOSN_Entrada'
      Origin = 'CSOSN_Entrada'
      FixedChar = True
      Size = 3
    end
    object OperacaoFiscalCSOSN_Saida: TStringField
      FieldName = 'CSOSN_Saida'
      Origin = 'CSOSN_Saida'
      FixedChar = True
      Size = 3
    end
    object OperacaoFiscalMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object OperacaoFiscalEnquadramento_IPI: TStringField
      FieldName = 'Enquadramento_IPI'
      Origin = 'Enquadramento_IPI'
      FixedChar = True
      Size = 5
    end
    object OperacaoFiscalIsencao_IPI: TBooleanField
      FieldName = 'Isencao_IPI'
      Origin = 'Isencao_IPI'
    end
    object OperacaoFiscalTransferencia: TBooleanField
      FieldName = 'Transferencia'
      Origin = 'Transferencia'
    end
    object OperacaoFiscalVisiveis_DIFAL: TBooleanField
      FieldName = 'Visiveis_DIFAL'
      Origin = 'Visiveis_DIFAL'
    end
    object OperacaoFiscalFator_ICMS: TBooleanField
      FieldName = 'Fator_ICMS'
      Origin = 'Fator_ICMS'
    end
    object OperacaoFiscalFator_PIS: TBooleanField
      FieldName = 'Fator_PIS'
      Origin = 'Fator_PIS'
    end
    object OperacaoFiscalFator_COFINS: TBooleanField
      FieldName = 'Fator_COFINS'
      Origin = 'Fator_COFINS'
    end
    object OperacaoFiscalFator_IRPJ: TBooleanField
      FieldName = 'Fator_IRPJ'
      Origin = 'Fator_IRPJ'
    end
    object OperacaoFiscalFator_CSLL: TBooleanField
      FieldName = 'Fator_CSLL'
      Origin = 'Fator_CSLL'
    end
    object OperacaoFiscalFator_Lucro: TBooleanField
      FieldName = 'Fator_Lucro'
      Origin = 'Fator_Lucro'
    end
    object OperacaoFiscalDados_Veiculo: TBooleanField
      FieldName = 'Dados_Veiculo'
      Origin = 'Dados_Veiculo'
    end
    object OperacaoFiscalBloqueio_Lucro: TBooleanField
      FieldName = 'Bloqueio_Lucro'
      Origin = 'Bloqueio_Lucro'
    end
    object OperacaoFiscalCalculo_CST: TBooleanField
      FieldName = 'Calculo_CST'
      Origin = 'Calculo_CST'
    end
    object OperacaoFiscalArredondar_unitario: TBooleanField
      FieldName = 'Arredondar_unitario'
      Origin = 'Arredondar_unitario'
    end
    object OperacaoFiscalUtilizar_FormulaProduto: TBooleanField
      FieldName = 'Utilizar_FormulaProduto'
      Origin = 'Utilizar_FormulaProduto'
    end
    object OperacaoFiscalVisiveis_AFRMM: TBooleanField
      FieldName = 'Visiveis_AFRMM'
      Origin = 'Visiveis_AFRMM'
    end
    object OperacaoFiscalVisivel_AFRMM: TBooleanField
      FieldName = 'Visivel_AFRMM'
      Origin = 'Visivel_AFRMM'
    end
    object OperacaoFiscalEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object OperacaoFiscalAliquota_ISS: TFloatField
      FieldName = 'Aliquota_ISS'
      Origin = 'Aliquota_ISS'
    end
    object OperacaoFiscalPlano_COFINS: TStringField
      FieldName = 'Plano_COFINS'
      Origin = 'Plano_COFINS'
      Size = 15
    end
    object OperacaoFiscalPlano_ICMSOper: TStringField
      FieldName = 'Plano_ICMSOper'
      Origin = 'Plano_ICMSOper'
      Size = 15
    end
    object OperacaoFiscalPlano_ICMSST: TStringField
      FieldName = 'Plano_ICMSST'
      Origin = 'Plano_ICMSST'
      Size = 15
    end
    object OperacaoFiscalPlano_IPI: TStringField
      FieldName = 'Plano_IPI'
      Origin = 'Plano_IPI'
      Size = 15
    end
    object OperacaoFiscalPlano_ISS: TStringField
      FieldName = 'Plano_ISS'
      Origin = 'Plano_ISS'
      Size = 15
    end
    object OperacaoFiscalPlano_PIS: TStringField
      FieldName = 'Plano_PIS'
      Origin = 'Plano_PIS'
      Size = 15
    end
    object OperacaoFiscalPlano_TotalNota: TStringField
      FieldName = 'Plano_TotalNota'
      Origin = 'Plano_TotalNota'
      Size = 15
    end
    object OperacaoFiscalPlano_TotalProdutos: TStringField
      FieldName = 'Plano_TotalProdutos'
      Origin = 'Plano_TotalProdutos'
      Size = 15
    end
    object OperacaoFiscalCodigo_CSLL: TSmallintField
      FieldName = 'Codigo_CSLL'
      Origin = 'Codigo_CSLL'
    end
    object OperacaoFiscalCodigo_IRPJ: TSmallintField
      FieldName = 'Codigo_IRPJ'
      Origin = 'Codigo_IRPJ'
    end
    object OperacaoFiscalConta_ICMSSub_C: TStringField
      FieldName = 'Conta_ICMSSub_C'
      Origin = 'Conta_ICMSSub_C'
      Size = 10
    end
    object OperacaoFiscalConta_ICMSSub_D: TStringField
      FieldName = 'Conta_ICMSSub_D'
      Origin = 'Conta_ICMSSub_D'
      Size = 10
    end
    object OperacaoFiscalCSTCOFINS_Dif: TStringField
      FieldName = 'CSTCOFINS_Dif'
      Origin = 'CSTCOFINS_Dif'
      FixedChar = True
      Size = 3
    end
    object OperacaoFiscalCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      FixedChar = True
      Size = 4
    end
    object OperacaoFiscalCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      FixedChar = True
      Size = 3
    end
    object OperacaoFiscalCSTPIS_Dif: TStringField
      FieldName = 'CSTPIS_Dif'
      Origin = 'CSTPIS_Dif'
      FixedChar = True
      Size = 3
    end
    object OperacaoFiscalEspecie: TStringField
      FieldName = 'Especie'
      Origin = 'Especie'
      Size = 10
    end
    object OperacaoFiscalHistorico_ICMSSub: TSmallintField
      FieldName = 'Historico_ICMSSub'
      Origin = 'Historico_ICMSSub'
    end
    object OperacaoFiscalBeneficio_Fiscal: TSmallintField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
    end
    object OperacaoFiscalInventario_Estoque: TBooleanField
      FieldName = 'Inventario_Estoque'
      Origin = 'Inventario_Estoque'
    end
    object OperacaoFiscalInventario_Terceiros: TBooleanField
      FieldName = 'Inventario_Terceiros'
      Origin = 'Inventario_Terceiros'
    end
    object OperacaoFiscalMovimenta_EstoqueInd: TBooleanField
      FieldName = 'Movimenta_EstoqueInd'
      Origin = 'Movimenta_EstoqueInd'
    end
    object OperacaoFiscalCFOP_Dentro: TStringField
      FieldName = 'CFOP_Dentro'
      Origin = 'CFOP_Dentro'
      FixedChar = True
      Size = 4
    end
    object OperacaoFiscalCFOP_Fora: TStringField
      FieldName = 'CFOP_Fora'
      Origin = 'CFOP_Fora'
      FixedChar = True
      Size = 4
    end
    object OperacaoFiscalCFOP_IndEntrada: TStringField
      FieldName = 'CFOP_IndEntrada'
      Origin = 'CFOP_IndEntrada'
      FixedChar = True
      Size = 4
    end
    object OperacaoFiscalCFOP_IndSaida: TStringField
      FieldName = 'CFOP_IndSaida'
      Origin = 'CFOP_IndSaida'
      FixedChar = True
      Size = 4
    end
    object OperacaoFiscalProduto_NCM: TBooleanField
      FieldName = 'Produto_NCM'
      Origin = 'Produto_NCM'
    end
    object OperacaoFiscalRelaciona_Adicoes: TBooleanField
      FieldName = 'Relaciona_Adicoes'
      Origin = 'Relaciona_Adicoes'
    end
    object OperacaoFiscalRelaciona_Produtos: TBooleanField
      FieldName = 'Relaciona_Produtos'
      Origin = 'Relaciona_Produtos'
    end
    object OperacaoFiscalServico: TSmallintField
      FieldName = 'Servico'
      Origin = 'Servico'
    end
    object OperacaoFiscalSomar_ICMSST: TBooleanField
      FieldName = 'Somar_ICMSST'
      Origin = 'Somar_ICMSST'
    end
    object OperacaoFiscalSomar_ImpostosServico: TBooleanField
      FieldName = 'Somar_ImpostosServico'
      Origin = 'Somar_ImpostosServico'
    end
    object OperacaoFiscalZerar_IPI: TBooleanField
      FieldName = 'Zerar_IPI'
      Origin = 'Zerar_IPI'
    end
    object OperacaoFiscalMostrar_Despesas: TBooleanField
      FieldName = 'Mostrar_Despesas'
      Origin = 'Mostrar_Despesas'
    end
    object OperacaoFiscalEmissao: TStringField
      FieldName = 'Emissao'
      Origin = 'Emissao'
      FixedChar = True
      Size = 1
    end
    object OperacaoFiscalDesativado: TBooleanField
      FieldName = 'Desativado'
      Origin = 'Desativado'
    end
    object OperacaoFiscalFinalidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Finalidade'
      Size = 30
      Calculated = True
    end
    object OperacaoFiscalEmissao_Descricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Emissao_Descricao'
      Size = 15
      Calculated = True
    end
    object OperacaoFiscalES_Descricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'ES_Descricao'
      Size = 7
      Calculated = True
    end
    object OperacaoFiscalES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object OperacaoFiscalTransportador: TBooleanField
      FieldName = 'Transportador'
      Origin = 'Transportador'
    end
    object OperacaoFiscalDestino_Origem: TStringField
      FieldName = 'Destino_Origem'
      Origin = 'Destino_Origem'
      FixedChar = True
      Size = 1
    end
    object OperacaoFiscalMonofasico_Comb: TBooleanField
      FieldName = 'Monofasico_Comb'
    end
    object OperacaoFiscalMonofasico_CombRetencao: TBooleanField
      FieldName = 'Monofasico_CombRetencao'
    end
    object OperacaoFiscalMonofasico_CombDiferido: TBooleanField
      FieldName = 'Monofasico_CombDiferido'
    end
    object OperacaoFiscalMonofasico_CombAnterior: TBooleanField
      FieldName = 'Monofasico_CombAnterior'
    end
    object OperacaoFiscalDiferido_ICMS: TBooleanField
      FieldName = 'Diferido_ICMS'
      Origin = 'Diferido_ICMS'
    end
  end
  object dsOperacaoFiscal: TDataSource
    DataSet = OperacaoFiscal
    Left = 40
    Top = 109
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 544
    Top = 65532
  end
  object tBeneficio: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from BeneficioFiscal')
    Left = 40
    Top = 482
  end
  object dstBeneficio: TDataSource
    DataSet = tBeneficio
    Left = 40
    Top = 528
  end
  object tServicos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Servicos')
    Left = 120
    Top = 64
  end
  object dstServicos: TDataSource
    DataSet = tServicos
    Left = 120
    Top = 111
  end
  object tCFOP: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from CFOP order by Codigo')
    Left = 120
    Top = 155
  end
  object dstCFOP: TDataSource
    DataSet = tCFOP
    Left = 120
    Top = 200
  end
  object tEnqIPI: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from EnquadramentoIPI')
    Left = 120
    Top = 245
  end
  object dstEnqIPI: TDataSource
    DataSet = tEnqIPI
    Left = 120
    Top = 292
  end
  object tCSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from CSTPIS')
    Left = 120
    Top = 338
  end
  object dstCSTPIS: TDataSource
    DataSet = tCSTPIS
    Left = 120
    Top = 382
  end
  object tCSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from CSTCOFINS')
    Left = 120
    Top = 426
  end
  object dstCSTCOFINS: TDataSource
    DataSet = tCSTCOFINS
    Left = 120
    Top = 471
  end
  object tBCCredito: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from CSTCOFINS')
    Left = 120
    Top = 518
  end
  object dstBCCredito: TDataSource
    DataSet = tBCCredito
    Left = 120
    Top = 562
  end
  object tCSTTabelaB: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from CSTCOFINS')
    Left = 120
    Top = 608
  end
  object dstCSTTabelaB: TDataSource
    DataSet = tCSTTabelaB
    Left = 120
    Top = 652
  end
  object tTipoDoc: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome from TiposDocumentos')
    Left = 189
    Top = 66
  end
  object dstTipoDoc: TDataSource
    DataSet = tTipoDoc
    Left = 189
    Top = 111
  end
  object tPlano: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        'Select Conta, Nome_Financeiro, Nome_Contabil from PlanoContas wh' +
        'ere isnull(Sintetica, 0) = 0')
    Left = 189
    Top = 156
  end
  object dstPlano: TDataSource
    DataSet = tPlano
    Left = 189
    Top = 201
  end
  object tCentroCusto: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Nome from CentroCusto')
    Left = 189
    Top = 245
  end
  object dstCentroCusto: TDataSource
    DataSet = tCentroCusto
    Left = 189
    Top = 292
  end
  object tModalidade: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'Select Codigo, Descricao from ModalidadesPagamento')
    Left = 189
    Top = 338
  end
  object dstModalidade: TDataSource
    DataSet = tModalidade
    Left = 189
    Top = 382
  end
  object tOperCtb: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      
        '      ,Historico_Desc = (select Descricao from Historicos where ' +
        'Codigo = Historico)'
      'from OperacaoFiscalCtb')
    Left = 192
    Top = 426
  end
  object dstOperCtb: TDataSource
    DataSet = tOperCtb
    Left = 192
    Top = 471
  end
  object tHistorico: TFDQuery
    BeforePost = OperacaoFiscalBeforePost
    BeforeDelete = OperacaoFiscalBeforeDelete
    OnCalcFields = OperacaoFiscalCalcFields
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Historicos')
    Left = 192
    Top = 522
  end
  object dstHistorico: TDataSource
    DataSet = tHistorico
    Left = 192
    Top = 567
  end
  object tTmp: TFDQuery
    BeforePost = OperacaoFiscalBeforePost
    BeforeDelete = OperacaoFiscalBeforeDelete
    OnCalcFields = OperacaoFiscalCalcFields
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Historicos')
    Left = 192
    Top = 618
  end
  object tOpFormulas: TFDQuery
    AfterScroll = tOpFormulasAfterScroll
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 40
    Top = 570
  end
  object dstOpFormulas: TDataSource
    DataSet = tOpFormulas
    Left = 40
    Top = 616
  end
  object tCampos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Campos where Calculavel = 1')
    Left = 40
    Top = 391
  end
  object dstCampos: TDataSource
    DataSet = tCampos
    Left = 40
    Top = 436
  end
end
