object TelaLogin: TTelaLogin
  Left = 0
  Top = 0
  Cursor = crHandPoint
  VertScrollBar.ParentColor = False
  VertScrollBar.Tracking = True
  ClientHeight = 715
  ClientWidth = 1075
  Caption = 'TelaLogin'
  Color = clWhite
  OnShow = UniLoginFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poOwnerFormCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Movable = False
  Visible = True
  PageMode = True
  ClientEvents.ExtEvents.Strings = (
    
      'window.afterrender=function window.afterrender(sender, eOpts)'#13#10'{' +
      #13#10'  Ext.get(sender.id).el.setStyle("padding", 0);'#13#10'  Ext.get(sen' +
      'der.id).el.setStyle("border-width", 0);'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 715
    Cursor = crArrow
    Hint = ''
    ParentColor = False
    Color = clWhite
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'Fundo'#39';'#13#10'}')
    TabOrder = 0
    DesignSize = (
      1075
      715)
    object UniHTMLFrame1: TUniHTMLFrame
      Left = 0
      Top = 0
      Width = 1075
      Height = 715
      Cursor = crHandPoint
      Hint = ''
      Enabled = False
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'video'#39';'#13#10'}')
    end
    object pLogin: TUniContainerPanel
      Left = 240
      Top = 136
      Width = 417
      Height = 361
      Cursor = crHandPoint
      Hint = ''
      ParentColor = False
      Color = clWhite
      Anchors = []
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CaixaLog'#39';'#13#10'}')
      TabOrder = 1
      DesignSize = (
        417
        361)
      object UniImage1: TUniImage
        Left = 0
        Top = 161
        Width = 417
        Height = 200
        Hint = ''
        Center = True
        Stretch = True
        Align = alClient
        FitWidth = True
      end
      object iLogoCyber: TUniImage
        Left = 0
        Top = 0
        Width = 417
        Height = 161
        Hint = ''
        Center = True
        Stretch = True
        Align = alTop
        Transparent = True
        FitWidth = True
      end
      object cLogSenha: TUniEdit
        Left = 25
        Top = 245
        Width = 366
        Height = 30
        Hint = ''
        PasswordChar = #186
        BorderStyle = ubsInset
        Text = 'Cybersoft@123'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
        EmptyText = 'Senha'
        ClearButton = True
        FieldLabelSeparator = ' '
      end
      object bEntrar: TUniBitBtn
        Left = 117
        Top = 306
        Width = 84
        Height = 31
        Hint = ''
        Caption = 'Entrar'
        Anchors = [akRight, akBottom]
        TabOrder = 2
        Scale = bbsSmall
        IconPosition = ipButtonEdge
        Images = UniMainModule.imgBotoes
        OnClick = bEntrarClick
      end
      object bCancelar: TUniBitBtn
        Left = 215
        Top = 306
        Width = 84
        Height = 31
        Hint = ''
        Caption = 'Cancelar'
        Anchors = [akRight, akBottom]
        TabOrder = 3
        Scale = bbsSmall
        IconPosition = ipButtonEdge
        Images = UniMainModule.imgBotoes
        OnClick = bCancelarClick
      end
      object cLogUser: TUniEdit
        Left = 25
        Top = 207
        Width = 366
        Height = 32
        Hint = ''
        BorderStyle = ubsInset
        Text = 'eder@cybersoftsistemas.com.br'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
        Color = clWhite
        EmptyText = 'Us'#250'ario'
        ClearButton = True
        FieldLabelSeparator = ' '
      end
    end
  end
  object Clientes: TFDQuery
    Connection = UniMainModule.AtlasConect
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Clientes')
    Left = 150
    Top = 251
  end
end
