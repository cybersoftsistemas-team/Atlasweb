object fCadBancos: TfCadBancos
  Left = 0
  Top = 0
  Width = 1060
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1060
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
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
        Width = 1052
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsBancos
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
            Title.Caption = 'Codigo'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 313
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Conta'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taLeftJustify
          end
          item
            FieldName = 'Agencia'
            Title.Alignment = taCenter
            Title.Caption = 'Agencia'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
            Alignment = taLeftJustify
          end
          item
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Desativado'
            Title.Alignment = taCenter
            Title.Caption = 'Desativado'
            Title.Font.Style = [fsBold]
            Width = 76
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1052
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
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1052
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1050
          936)
        ScrollHeight = 608
        object pFicha1: TUniPanel
          Left = 217
          Top = 26
          Width = 480
          Height = 582
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
          object cCodigo: TUniDBNumberEdit
            Left = 16
            Top = 13
            Width = 112
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            InputRTL = False
            DataField = 'Codigo'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            SelectOnFocus = True
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cNome: TUniDBEdit
            Left = 16
            Top = 69
            Width = 448
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Nome'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cConta: TUniDBEdit
            Left = 16
            Top = 181
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Conta'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Conta Corrente'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAgencia: TUniDBEdit
            Left = 253
            Top = 181
            Width = 137
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Agencia'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Ag'#234'ncia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cSaldo: TUniDBFormattedNumberEdit
            Left = 16
            Top = 460
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Saldo'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            SelectOnFocus = True
            FieldLabel = 'Saldo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cNumero_Banco: TUniDBNumberEdit
            Left = 134
            Top = 13
            Width = 112
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'C'#243'digo do Banco'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cCheque: TUniDBNumberEdit
            Left = 16
            Top = 237
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Cheque'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            SelectOnFocus = True
            FieldLabel = 'N'#186' '#218'ltimo Cheque'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cCodigo_Destinatario: TUniDBLookupComboBox
            Left = 16
            Top = 404
            Width = 448
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsDest
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_Destinatario'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'C'#243'digo de Destinat'#225'rio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cData_Fechamento: TUniDBDateTimePicker
            Left = 320
            Top = 459
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Fechamento'
            DataSource = dsBancos
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 11
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data de Fechamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDesativado: TUniDBCheckBox
            Left = 367
            Top = 13
            Width = 92
            Height = 21
            Hint = ''
            ShowHint = True
            DataField = 'Desativado'
            DataSource = dsBancos
            Caption = 'Desativado'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cSwift_Code: TUniDBEdit
            Left = 16
            Top = 293
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Swift_Code'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Swift Code'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cIBAN: TUniDBEdit
            Left = 164
            Top = 293
            Width = 300
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'IBAN'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            FieldLabel = 'N'#186' IBAN'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cContaContabil: TUniDBLookupComboBox
            Left = 16
            Top = 348
            Width = 448
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome_Contabil;Conta;Codigo'
            ListSource = dsPlano
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Conta'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Conta Contabil'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTipoConta: TUniDBRadioGroup
            Left = 16
            Top = 518
            Width = 449
            Height = 48
            Hint = ''
            ShowHint = True
            DataField = 'Tipo_Conta'
            DataSource = dsBancos
            Caption = 'Tipo de Conta'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Corrente'
              'Investimentos'
              'Empr'#233'stimos'
              'Administrativa')
            Columns = 4
            Values.Strings = (
              'CORRENTE'
              'INVESTIMENTOS'
              'EMRPESTIMOS'
              'ADMINISTRATIVA')
          end
          object cDigito_cc: TUniDBEdit
            Left = 164
            Top = 181
            Width = 84
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Digito_cc'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'Digito CC'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cDigito_ag: TUniDBEdit
            Left = 395
            Top = 181
            Width = 69
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Digito_Ag'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 16
            FieldLabel = 'Digito Ag'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 16
            Top = 125
            Width = 448
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ.Razao_Social'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            DataField = 'Empresa'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'Empresa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Dados de Boleto'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1052
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1050
          936)
        ScrollHeight = 553
        object pFicha2: TUniPanel
          Left = 209
          Top = 13
          Width = 470
          Height = 540
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
          object cCarteira: TUniDBEdit
            Left = 22
            Top = 239
            Width = 157
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Carteira'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Carteira Boleto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCodigo_Cedente: TUniDBEdit
            Left = 22
            Top = 15
            Width = 157
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_Cedente'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'C'#243'digo Cedente'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNome_Boleto: TUniDBEdit
            Left = 22
            Top = 127
            Width = 426
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Boleto'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome Impress'#227'o Boleto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cConvenio: TUniDBEdit
            Left = 22
            Top = 71
            Width = 157
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Convenio'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Conv'#234'nio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cBoleto_LocalPagamento: TUniDBEdit
            Left = 22
            Top = 183
            Width = 426
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Boleto_LocalPgto'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Local Pagto.Boleto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cBoletos_Remessa: TUniDBNumberEdit
            Left = 22
            Top = 351
            Width = 157
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Ultima_Remessa'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'N'#186' '#218'ltima Remessa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cNome_Remessa: TUniDBEdit
            Left = 22
            Top = 295
            Width = 426
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Remessa'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Nome arquivo remessa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCarteira_Remessa: TUniDBEdit
            Left = 22
            Top = 407
            Width = 157
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Carteira_Remessa'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'Carteira Remessa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCodigo_Transmissao: TUniDBEdit
            Left = 22
            Top = 463
            Width = 426
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo_Transmissao'
            DataSource = dsBancos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Codigo de Transmiss'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1060
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
      DataSource = dsBancos
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
      Width = 45
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
      Left = 303
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
      Left = 262
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
      Left = 344
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
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = Bancos
    Left = 106
    Top = 88
  end
  object dsDest: TDataSource
    DataSet = Destinatarios
    Left = 106
    Top = 142
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 106
    Top = 190
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select top 1 * from destinatarios')
    Left = 38
    Top = 142
  end
  object Bancos: TFDQuery
    BeforePost = BancosBeforePost
    BeforeDelete = BancosBeforeDelete
    AfterDelete = BancosBeforePost
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Bancos order by nome')
    Left = 38
    Top = 88
    object BancosCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
    end
    object BancosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 30
    end
    object BancosDesativado: TBooleanField
      FieldName = 'Desativado'
      Origin = 'Desativado'
    end
    object BancosConta: TLargeintField
      FieldName = 'Conta'
      Origin = 'Conta'
    end
    object BancosDigito_cc: TStringField
      FieldName = 'Digito_cc'
      Origin = 'Digito_cc'
      FixedChar = True
      Size = 1
    end
    object BancosAgencia: TIntegerField
      FieldName = 'Agencia'
      Origin = 'Agencia'
    end
    object BancosDigito_Ag: TStringField
      FieldName = 'Digito_Ag'
      Origin = 'Digito_Ag'
      FixedChar = True
      Size = 1
    end
    object BancosSaldo: TCurrencyField
      FieldName = 'Saldo'
      Origin = 'Saldo'
      DisplayFormat = ',##0.00'
    end
    object BancosNumero_Banco: TSmallintField
      FieldName = 'Numero_Banco'
      Origin = 'Numero_Banco'
    end
    object BancosCheque: TIntegerField
      FieldName = 'Cheque'
      Origin = 'Cheque'
    end
    object BancosCodigo_Destinatario: TIntegerField
      FieldName = 'Codigo_Destinatario'
      Origin = 'Codigo_Destinatario'
    end
    object BancosData_Fechamento: TSQLTimeStampField
      FieldName = 'Data_Fechamento'
      Origin = 'Data_Fechamento'
    end
    object BancosCarteira: TStringField
      FieldName = 'Carteira'
      Origin = 'Carteira'
      Size = 15
    end
    object BancosCodigo_Cedente: TStringField
      FieldName = 'Codigo_Cedente'
      Origin = 'Codigo_Cedente'
      Size = 15
    end
    object BancosTipo_Conta: TStringField
      FieldName = 'Tipo_Conta'
      Origin = 'Tipo_Conta'
      Size = 15
    end
    object BancosNome_Boleto: TStringField
      FieldName = 'Nome_Boleto'
      Origin = 'Nome_Boleto'
      Size = 30
    end
    object BancosConvenio: TStringField
      FieldName = 'Convenio'
      Origin = 'Convenio'
      Size = 10
    end
    object BancosBoleto_LocalPgto: TStringField
      FieldName = 'Boleto_LocalPgto'
      Origin = 'Boleto_LocalPgto'
      Size = 120
    end
    object BancosUltima_Remessa: TIntegerField
      FieldName = 'Ultima_Remessa'
      Origin = 'Ultima_Remessa'
    end
    object BancosNome_Remessa: TStringField
      FieldName = 'Nome_Remessa'
      Origin = 'Nome_Remessa'
    end
    object BancosCarteira_Remessa: TStringField
      FieldName = 'Carteira_Remessa'
      Origin = 'Carteira_Remessa'
      Size = 15
    end
    object BancosCodigo_Transmissao: TStringField
      FieldName = 'Codigo_Transmissao'
      Origin = 'Codigo_Transmissao'
    end
    object BancosSwift_Code: TStringField
      FieldName = 'Swift_Code'
      Origin = 'Swift_Code'
      Size = 10
    end
    object BancosIBAN: TStringField
      FieldName = 'IBAN'
      Origin = 'IBAN'
      Size = 40
    end
    object BancosConta_Contabil: TIntegerField
      FieldName = 'Conta_Contabil'
      Origin = 'Conta_Contabil'
    end
    object BancosBoleto_CNPJ: TStringField
      FieldName = 'Boleto_CNPJ'
      Origin = 'Boleto_CNPJ'
      Size = 14
    end
    object BancosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
  end
  object Plano: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome_Contabil'
      '      ,Conta'
      'from PlanoContas')
    Left = 38
    Top = 190
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Config')
    Left = 38
    Top = 238
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 106
    Top = 238
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 460
    Top = 3
  end
  object Empresas: TFDQuery
    BeforePost = BancosBeforePost
    BeforeDelete = BancosBeforeDelete
    AfterDelete = BancosBeforePost
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Bancos order by nome')
    Left = 38
    Top = 288
  end
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = Empresas
    Left = 106
    Top = 288
  end
end
