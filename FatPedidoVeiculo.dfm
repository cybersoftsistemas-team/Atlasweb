object fFatPedidoVeiculo: TfFatPedidoVeiculo
  Left = 0
  Top = 0
  ClientHeight = 637
  ClientWidth = 558
  Caption = 'DADOS DO TRANSPORTE'
  Color = clWindow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pBarraNav: TUniPanel
    Left = 0
    Top = 602
    Width = 558
    Height = 35
    Hint = ''
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object bCancelar: TUniSpeedButton
      AlignWithMargins = True
      Left = 517
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 2
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      AlignWithMargins = True
      Left = 475
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Salva o registro corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 1
      OnClick = bGravarClick
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 602
    Hint = ''
    Align = alClient
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'FichaSSombra'#39';'#13#10'}')
    ShowCaption = False
    Caption = ''
    object UniPanel3: TUniPanel
      Left = 16
      Top = 359
      Width = 524
      Height = 222
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 7
      TabOrder = 3
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CaixaSimples'#39';'#13#10'}')
      BorderStyle = ubsInset
      ShowCaption = False
      TitleVisible = True
      Title = 'Dados do Reboque'
      Caption = ''
      object cRebPlaca: TUniEdit
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 514
        Height = 25
        Hint = ''
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 1
        ClearButton = True
        FieldLabel = 'Placa'
        FieldLabelWidth = 80
      end
      object cRebEstado: TUniEdit
        AlignWithMargins = True
        Left = 4
        Top = 31
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 2
        ClearButton = True
        FieldLabel = 'UF'
        FieldLabelWidth = 80
      end
      object cRebANTT: TUniEdit
        AlignWithMargins = True
        Left = 4
        Top = 58
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 3
        ClearButton = True
        FieldLabel = 'C'#243'digo ANTT'
        FieldLabelWidth = 80
      end
      object cRebLacre: TUniMemo
        AlignWithMargins = True
        Left = 4
        Top = 85
        Width = 514
        Height = 110
        Hint = ''
        Margins.Top = 1
        BorderStyle = ubsInset
        TabOrder = 4
        ClearButton = True
        FieldLabel = 'Lacre'
        FieldLabelWidth = 80
      end
    end
    object UniPanel2: TUniPanel
      Left = 16
      Top = 132
      Width = 524
      Height = 222
      Hint = ''
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 7
      TabOrder = 2
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CaixaSimples'#39';'#13#10'}')
      BorderStyle = ubsInset
      ShowCaption = False
      TitleVisible = True
      Title = 'Dados do Ve'#237'culo'
      Caption = ''
      object cVeiPlaca: TUniEdit
        Left = 4
        Top = 4
        Width = 514
        Height = 25
        Hint = ''
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 1
        ClearButton = True
        FieldLabel = 'Placa'
        FieldLabelWidth = 80
      end
      object cVeiEstado: TUniEdit
        Left = 4
        Top = 31
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 2
        ClearButton = True
        FieldLabel = 'UF'
        FieldLabelWidth = 80
      end
      object cVeiANTT: TUniEdit
        Left = 4
        Top = 58
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 3
        ClearButton = True
        FieldLabel = 'C'#243'digo ANTT'
        FieldLabelWidth = 80
      end
      object cVeiLacre: TUniMemo
        Left = 4
        Top = 85
        Width = 514
        Height = 110
        Hint = ''
        Margins.Top = 1
        BorderStyle = ubsInset
        TabOrder = 4
        ClearButton = True
        FieldLabel = 'Lacre'
        FieldLabelWidth = 80
      end
    end
    object UniPanel7: TUniPanel
      Left = 16
      Top = 18
      Width = 524
      Height = 109
      Hint = ''
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 7
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CaixaSimples'#39';'#13#10'}')
      BorderStyle = ubsInset
      ShowCaption = False
      TitleVisible = True
      Title = 'Dados do Motorista'
      Caption = ''
      object cCPF: TUniEdit
        Left = 4
        Top = 31
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 2
        ClearButton = True
        FieldLabel = 'CPF'
        FieldLabelWidth = 80
      end
      object cRG: TUniEdit
        Left = 4
        Top = 58
        Width = 514
        Height = 25
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 1
        CharCase = ecUpperCase
        BorderStyle = ubsInset
        Text = ''
        TabOrder = 3
        ClearButton = True
        FieldLabel = 'RG'
        FieldLabelWidth = 80
      end
      object cMotorista: TUniComboBox
        Left = 4
        Top = 4
        Width = 514
        Height = 25
        Hint = ''
        Margins.Bottom = 1
        Text = ''
        TabOrder = 1
        AnyMatch = True
        CharCase = ecUpperCase
        ClearButton = True
        FieldLabel = 'Motorista'
        FieldLabelWidth = 80
        IconItems = <>
        OnExit = cMotoristaExit
      end
    end
  end
  object Motoristas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      '      ,CNPJ'
      'from Destinatarios'
      'where isnull(Representante, 0) = 1')
    Left = 132
    Top = 121
  end
  object dsMotoristas: TDataSource
    DataSet = Motoristas
    Left = 132
    Top = 167
  end
end
