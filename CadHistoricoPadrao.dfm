object fCadHistoricoPadrao: TfCadHistoricoPadrao
  Left = 0
  Top = 0
  Width = 1121
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1121
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
      DataSource = dsHistoricos
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
    Left = 0
    Top = 35
    Width = 1121
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
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1113
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
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1113
        Height = 911
        Hint = ''
        DataSource = dsHistoricos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 503
          end
          item
            FieldName = 'Macro'
            Title.Alignment = taCenter
            Title.Caption = 'Macro'
            Title.Font.Style = [fsBold]
            Width = 302
          end
          item
            FieldName = 'Complemento'
            Title.Alignment = taCenter
            Title.Caption = 'Compl'
            Title.Font.Style = [fsBold]
            Width = 51
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1113
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1111
          936)
        ScrollHeight = 257
        object pFicha: TUniPanel
          Left = 102
          Top = 18
          Width = 691
          Height = 239
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
            Left = 13
            Top = 13
            Width = 66
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsHistoricos
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
            Left = 13
            Top = 69
            Width = 620
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsHistoricos
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
          object cComplemento: TUniDBCheckBox
            Left = 117
            Top = 46
            Width = 204
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Complemento'
            DataSource = dsHistoricos
            Caption = ''
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabel = 'Pedir complemento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object bMacro: TUniSpeedButton
            Left = 637
            Top = 151
            Width = 28
            Height = 29
            Hint = 'Adicionar macro'
            ShowHint = True
            Caption = '...'
            ParentColor = False
            IconAlign = iaCenter
            TabOrder = 4
            OnClick = bMacroClick
          end
          object cMacro: TUniDBMemo
            Left = 13
            Top = 124
            Width = 620
            Height = 89
            Hint = ''
            ShowHint = True
            DataField = 'Macro'
            DataSource = dsHistoricos
            TabOrder = 5
            FieldLabel = 'Complemento'
            FieldLabelAlign = laTop
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object tCodigo: TFDQuery
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM HistoricoPadrao')
    Left = 41
    Top = 248
  end
  object Historicos: TFDQuery
    BeforePost = HistoricosBeforePost
    BeforeDelete = HistoricosBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Historicos')
    Left = 40
    Top = 134
  end
  object dsHistoricos: TDataSource
    DataSet = Historicos
    Left = 42
    Top = 190
  end
  object mnMacro: TUniPopupMenu
    OnPopup = mnMacroPopup
    AlwaysOnTop = True
    Left = 41
    Top = 299
    object FORNECEDORES1: TUniMenuItem
      Caption = '<{BENEFICIARIO}>'
      OnClick = FORNECEDORES1Click
    end
    object PROCESSO1: TUniMenuItem
      Caption = '<{PROCESSO}>'
      OnClick = PROCESSO1Click
    end
    object DI1: TUniMenuItem
      Caption = '<{DI}>'
      OnClick = DI1Click
    end
    object DESCRIOCLASSIFICAOFINANCEIRA1: TUniMenuItem
      Caption = '<{CLASSIFICA'#199#195'O}>'
      OnClick = DESCRIOCLASSIFICAOFINANCEIRA1Click
    end
    object IPODEDOCUMENTO1: TUniMenuItem
      Caption = '<{TIPO DE DOCUMENTO}>'
      OnClick = IPODEDOCUMENTO1Click
    end
    object NDOCUMENTP1: TUniMenuItem
      Caption = '<{N'#186' DOCUMENTO}>'
      OnClick = NDOCUMENTP1Click
    end
    object DATADOCUMENTO1: TUniMenuItem
      Caption = '<{DATA DOCUMENTO}>'
      OnClick = DATADOCUMENTO1Click
    end
    object BANCO1: TUniMenuItem
      Caption = '<{BANCO}>'
      OnClick = BANCO1Click
    end
    object OBSERVAO1: TUniMenuItem
      Caption = '<{OBSERVA'#199#195'O}>'
      OnClick = OBSERVAO1Click
    end
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 592
    Top = 3
  end
end



