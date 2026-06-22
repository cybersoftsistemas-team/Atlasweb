object fCadLPCO: TfCadLPCO
  Left = 0
  Top = 0
  Width = 1075
  Height = 758
  OnCreate = uniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 165
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 165
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
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 206
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
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 247
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
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
      Left = 329
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
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bSalvar: TUniSpeedButton
      Left = 288
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
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Left = 370
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
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 35
    Width = 1075
    Height = 27
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'BarraPesquisa'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = clNone
    object cPesquisa: TUniEdit
      Left = 0
      Top = 0
      Width = 491
      Height = 27
      Hint = ''
      Margins.Bottom = 1
      CharCase = ecUpperCase
      BorderStyle = ubsInset
      Text = ''
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Align = alLeft
      TabOrder = 1
      ClearButton = True
      OnKeyDown = cPesquisaKeyDown
    end
    object bPesquisa: TUniSpeedButton
      Left = 491
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
  object pFicha: TUniPanel
    AlignWithMargins = True
    Left = 10
    Top = 72
    Width = 1055
    Height = 162
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ShowHint = True
    ParentShowHint = False
    Align = alTop
    TabOrder = 2
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'Ficha'#39';'#13#10'}')
    ScreenMask.Color = clBlack
    ScreenMask.Opacity = 1.000000000000000000
    BorderStyle = ubsSolid
    TitleAlign = taCenter
    Title = 'DADOS GERAIS'
    Caption = ''
    ParentAlignmentControl = False
    object cOrgao: TUniDBLookupComboBox
      Left = 15
      Top = 13
      Width = 723
      Height = 25
      Hint = ''
      ShowHint = True
      ListField = 'Abrev;Nome'
      ListSource = dsOrgaos
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      DataField = 'Orgao_Anuente'
      DataSource = dsLPCO
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
      Color = clWindow
      FieldLabel = 'Org'#227'o Anuente'
      FieldLabelSeparator = ' '
    end
    object cNumero: TUniDBEdit
      Left = 15
      Top = 40
      Width = 300
      Height = 25
      Hint = ''
      ShowHint = True
      DataField = 'Documento'
      DataSource = dsLPCO
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 2
      FieldLabel = 'Tipo de Documento'
      FieldLabelSeparator = ' '
      BorderStyle = ubsInset
    end
    object cDataIni: TUniDBDateTimePicker
      Left = 15
      Top = 94
      Width = 300
      Height = 25
      Hint = ''
      ShowHint = True
      DataField = 'Data_Inicio'
      DataSource = dsLPCO
      DateTime = 46170.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 3
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      BorderStyle = ubsInset
      FieldLabel = 'Data Inicio'
      FieldLabelSeparator = ' '
    end
    object cDataFim: TUniDBDateTimePicker
      Left = 15
      Top = 121
      Width = 300
      Height = 25
      Hint = ''
      ShowHint = True
      DataField = 'Data_Fim'
      DataSource = dsLPCO
      DateTime = 46170.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 4
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      BorderStyle = ubsInset
      FieldLabel = 'Data Fim'
      FieldLabelSeparator = ' '
    end
    object DBEdit1: TUniDBEdit
      Left = 15
      Top = 67
      Width = 300
      Height = 25
      Hint = ''
      ShowHint = True
      DataField = 'Numero'
      DataSource = dsLPCO
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      TabOrder = 5
      FieldLabel = 'N'#250'mero'
      FieldLabelSeparator = ' '
      BorderStyle = ubsInset
    end
  end
  object Grade: TUniDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 254
    Width = 1055
    Height = 494
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    DataSource = dsLPCO
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    ForceFit = True
    BorderStyle = ubsInset
    Align = alClient
    Font.Name = 'Calibri'
    ParentFont = False
    TabOrder = 3
    Columns = <
      item
        FieldName = 'Orgao_Anuente'
        Title.Alignment = taCenter
        Title.Caption = 'Org'#227'o Anuente'
        Title.Font.Style = [fsBold]
        Width = 118
        Font.Name = 'Calibri'
      end
      item
        FieldName = 'Documento'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo de Documento'
        Title.Font.Style = [fsBold]
        Width = 184
        Font.Name = 'Calibri'
      end
      item
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Title.Font.Style = [fsBold]
        Width = 203
        Font.Name = 'Calibri'
      end
      item
        FieldName = 'Data_Inicio'
        Title.Alignment = taCenter
        Title.Caption = 'Data Inicio'
        Title.Font.Style = [fsBold]
        Width = 80
        Font.Name = 'Calibri'
        Alignment = taCenter
      end
      item
        FieldName = 'Data_Fim'
        Title.Alignment = taCenter
        Title.Caption = 'Data Fim'
        Title.Font.Style = [fsBold]
        Width = 80
        Font.Name = 'Calibri'
        Alignment = taCenter
      end>
  end
  object ttmp: TFDQuery
    Left = 329
    Top = 300
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 539
    Top = 4
  end
  object LPCO: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM LPCO')
    Left = 243
    Top = 307
  end
  object dsLPCO: TDataSource
    DataSet = LPCO
    Left = 243
    Top = 357
  end
  object Orgaos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OrgaosAnuentes')
    Left = 243
    Top = 407
  end
  object dsOrgaos: TDataSource
    DataSet = Orgaos
    Left = 243
    Top = 457
  end
end
