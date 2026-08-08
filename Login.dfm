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
      Left = 155
      Top = 135
      Width = 642
      Height = 374
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
        642
        374)
      object iLogoAtlas: TUniImage
        Left = 0
        Top = 0
        Width = 320
        Height = 374
        Hint = ''
        Margins.Left = 60
        Margins.Top = 0
        Margins.Right = 60
        Margins.Bottom = 0
        Center = True
        Proportional = True
        Align = alLeft
        Transparent = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'cybersoft-logo'#39';'#13#10'}')
        FitWidth = True
      end
      object iLogoCyber: TUniImage
        Left = 102
        Top = 302
        Width = 114
        Height = 69
        Hint = ''
        Visible = False
        Center = True
        Proportional = True
        Transparent = True
        FitWidth = True
      end
      object cLogUser: TUniEdit
        AlignWithMargins = True
        Left = 299
        Top = 144
        Width = 300
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Text = 'eder@cybersoftsistemas.com.br'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Aril'
        TabOrder = 3
        EmptyText = 'Us'#250'ario'
        FieldLabelSeparator = ' '
        SelectOnFocus = True
        InputType = 'text'
      end
      object cLogSenha: TUniEdit
        AlignWithMargins = True
        Left = 299
        Top = 184
        Width = 300
        Height = 25
        Hint = ''
        PasswordChar = #186
        BorderStyle = ubsInset
        Text = 'Cybersoft@123'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 4
        EmptyText = 'Senha'
        FieldLabelSeparator = ' '
        SelectOnFocus = True
      end
      object bEntrar: TUniBitBtn
        Left = 391
        Top = 234
        Width = 103
        Height = 36
        Hint = ''
        Caption = 'ENTRAR'
        Anchors = [akRight, akBottom]
        TabOrder = 5
        Scale = bbsSmall
        IconPosition = ipButtonEdge
        Images = UniMainModule.imgBotoes
        OnClick = bEntrarClick
      end
      object UniLabel1: TUniLabel
        Left = 299
        Top = 115
        Width = 53
        Height = 22
        Hint = ''
        Caption = 'Login'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        TabOrder = 6
      end
    end
  end
  object Clientes: TFDQuery
    Connection = UniMainModule.AtlasConect
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Clientes')
    Left = 60
    Top = 177
  end
end
