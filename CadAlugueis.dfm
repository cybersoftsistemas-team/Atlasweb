object fCadAlugueis: TfCadAlugueis
  Left = 0
  Top = 0
  Width = 991
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 991
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
        Width = 983
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsAlugueis
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
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Dia_Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dia de Vencimento'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Aliquota_COFINS'
            Title.Alignment = taCenter
            Title.Caption = 'Al'#237'quota da COFINS'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Aliquota_PIS'
            Title.Alignment = taCenter
            Title.Caption = 'Al'#237'quota do PIS'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Inicio'
            Title.Alignment = taCenter
            Title.Caption = 'Data de Inicio'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Termino'
            Title.Alignment = taCenter
            Title.Caption = 'Data de T'#233'rmino'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 983
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
        Width = 983
        Height = 938
        Hint = ''
        Align = alClient
        Color = clTeal
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          981
          936)
        ScrollHeight = 510
        object pFicha1: TUniPanel
          Left = 176
          Top = 26
          Width = 641
          Height = 484
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
          object cCodigo: TUniDBEdit
            Left = 17
            Top = 14
            Width = 112
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cDescricao: TUniDBEdit
            Left = 17
            Top = 70
            Width = 600
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cValor: TUniDBFormattedNumberEdit
            Left = 17
            Top = 126
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Valor'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cDia_Vencimento: TUniDBNumberEdit
            Left = 17
            Top = 182
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Dia_Vencimento'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Dia de Vencimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAliquota_COFINS: TUniDBFormattedNumberEdit
            Left = 17
            Top = 294
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aliquota_COFINS'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            SelectOnFocus = True
            FieldLabel = 'Al'#237'quota da COFINS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAliquota_PIS: TUniDBFormattedNumberEdit
            Left = 17
            Top = 238
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aliquota_PIS'
            DataSource = dsAlugueis
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Al'#237'quota do PIS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cInicio: TUniDBDateTimePicker
            Left = 17
            Top = 349
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Inicio'
            DataSource = dsAlugueis
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 7
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data de Inicio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cTermino: TUniDBDateTimePicker
            Left = 17
            Top = 403
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Termino'
            DataSource = dsAlugueis
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 8
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Data de T'#233'rmino'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 991
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
      DataSource = dsAlugueis
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
  object dsAlugueis: TDataSource
    DataSet = Alugueis
    Left = 81
    Top = 103
  end
  object Alugueis: TFDQuery
    BeforePost = AlugueisBeforePost
    BeforeDelete = AlugueisBeforeDelete
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Alugueis')
    Left = 25
    Top = 103
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 100
    Top = 75
  end
end



