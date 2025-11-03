object fConfigAtalhos: TfConfigAtalhos
  Left = 0
  Top = 0
  Width = 1212
  Height = 751
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object sFicha: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1212
    Height = 751
    Hint = ''
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'Pasta'#39#13#10'}')
    TabOrder = 0
    DesignSize = (
      1210
      749)
    ScrollHeight = 577
    object pFicha: TUniPanel
      Left = 133
      Top = 6
      Width = 438
      Height = 571
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Anchors = [akTop]
      TabOrder = 0
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
          ' = '#39'Ficha'#39';'#13#10'}')
      BorderStyle = ubsNone
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'Selecione as op'#231#245'es para os Atalhos'
      Caption = ''
      Color = clTeal
      object tMenu: TUniTreeView
        Left = 0
        Top = 48
        Width = 438
        Height = 523
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Items.FontData = {0100000000}
        AutoExpand = True
        Font.Name = 'Calibri'
        ParentFont = False
        Align = alClient
        TabOrder = 1
        Color = clWindow
        BorderStyle = ubsNone
        UseCheckBox = True
        UseArrows = True
        OnClick = tMenuClick
      end
      object UniPanel3: TUniPanel
        Left = 0
        Top = 0
        Width = 438
        Height = 48
        Hint = ''
        ShowHint = True
        Align = alTop
        TabOrder = 2
        Caption = ''
        object bSelTudo: TUniSpeedButton
          Left = 39
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentFont = False
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 4
          TabOrder = 1
          OnClick = bSelTudoClick
        end
        object bDesTudo: TUniSpeedButton
          Left = 82
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentFont = False
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 6
          TabOrder = 2
          OnClick = bDesTudoClick
        end
        object bExpand: TUniSpeedButton
          Left = 129
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentFont = False
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 11
          TabOrder = 3
          OnClick = bExpandClick
        end
        object bRecolhe: TUniSpeedButton
          Left = 174
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentFont = False
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 12
          TabOrder = 4
          OnClick = bRecolheClick
        end
        object bRecarga: TUniSpeedButton
          Left = 219
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentFont = False
          ParentColor = False
          IconAlign = iaTop
          Images = UniMainModule.imgBotoes
          ImageIndex = 14
          TabOrder = 5
        end
        object bCriarAtalhos: TUniButton
          Left = 264
          Top = 6
          Width = 89
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = 'Criar Atalhos'
          TabOrder = 6
          OnClick = bCriarAtalhosClick
        end
        object bFechar: TUniSpeedButton
          Left = 359
          Top = 6
          Width = 41
          Height = 35
          Hint = ''
          ShowHint = True
          Caption = ''
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 7
          TabOrder = 7
          OnClick = bFecharClick
        end
      end
    end
  end
  object dsAtalhos: TDataSource
    DataSet = Atalhos
    Left = 36
    Top = 123
  end
  object Atalhos: TFDQuery
    BeforePost = AtalhosBeforePost
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Atalhos')
    Left = 36
    Top = 75
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 36
    Top = 179
  end
  object TabMenu: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Menuprincipal')
    Left = 39
    Top = 235
  end
  object dstMenu: TDataSource
    DataSet = TabMenu
    Left = 39
    Top = 287
  end
end
