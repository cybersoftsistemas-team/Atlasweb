object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 766
  ClientWidth = 1226
  Caption = 'MainForm'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  KeyPreview = True
  MonitoredKeys.Keys = <>
  PageMode = True
  ScreenMask.Color = clRed
  OnBeforeShow = UniFormBeforeShow
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object unipane: TUniContainerPanel
    Left = 350
    Top = 68
    Width = 876
    Height = 698
    Hint = ''
    ParentColor = False
    Align = alClient
    ScreenMask.ShowMessage = False
    ScreenMask.Color = clRed
    TabOrder = 0
    ExplicitLeft = 300
    ExplicitWidth = 926
    object PagePrincipal: TUniPageControl
      Left = 0
      Top = 50
      Width = 876
      Height = 648
      Hint = ''
      ActivePage = pInicio
      Plain = True
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Pasta'#39';'#13#10'}')
      TabOrder = 1
      ExplicitTop = 0
      ExplicitWidth = 926
      ExplicitHeight = 698
      object pInicio: TUniTabSheet
        Hint = ''
        Caption = 'Inicio'
        ScreenMask.WaitData = True
        ScreenMask.Message = 'A G U A R D E . . .'
        ScreenMask.Target = pInicio
        ScreenMask.Color = clRed
        ExplicitWidth = 918
        ExplicitHeight = 670
        object ScrollPrincipal: TUniScrollBox
          Left = 0
          Top = 0
          Width = 868
          Height = 620
          Hint = ''
          Align = alClient
          Color = 4730899
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'PastaInterna'#39';'#13#10'}')
          TabOrder = 0
          ScrollDirection = sdVertical
          ExplicitWidth = 918
          ExplicitHeight = 670
          ScrollHeight = 140
          ScrollWidth = 135
          object UniButton1: TUniButton
            Left = 20
            Top = 74
            Width = 115
            Height = 66
            Hint = ''
            Caption = 'Buscar DUIMP'
            TabOrder = 0
            OnClick = UniButton1Click
          end
        end
      end
    end
    object pAtalhos: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 876
      Height = 50
      Hint = ''
      ParentColor = False
      Color = 4730899
      Align = alTop
      TabOrder = 2
      ExplicitTop = 8
      ExplicitWidth = 926
    end
  end
  object pTitulo: TUniPanel
    Left = 0
    Top = 0
    Width = 1226
    Height = 68
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    ParentFont = False
    Font.Height = -35
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'BarraPrincipal'#39';'#13#10'}')
    BorderStyle = ubsNone
    Alignment = taLeftJustify
    Caption = ''
    Color = clNone
    DesignSize = (
      1226
      68)
    object pUser: TUniPanel
      Left = 535
      Top = 0
      Width = 691
      Height = 68
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'BarraPrincipal'#39';'#13#10'}')
      BorderStyle = ubsNone
      Alignment = taRightJustify
      Caption = ''
      Color = clNone
      object lUser: TUniLabel
        Left = 32
        Top = 15
        Width = 453
        Height = 15
        Hint = ''
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lUser'
        ParentFont = False
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsUnderline]
        ParentColor = False
        Color = 12615680
        TabOrder = 1
      end
      object pFoto: TUniPanel
        Left = 499
        Top = 3
        Width = 61
        Height = 61
        Hint = ''
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaCirculo'#39';'#13#10'}')
        Caption = 'pFoto'
        object iFoto: TUniImage
          Left = 1
          Top = 1
          Width = 59
          Height = 59
          Hint = ''
          Center = True
          Stretch = True
          Align = alClient
        end
      end
      object lEmpresa: TUniLabel
        Left = 32
        Top = 38
        Width = 453
        Height = 15
        Hint = ''
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          '14.123.456/0001-48 - XGMA Participa'#231#245'es Com'#233'rcio Importa'#231#227'o e Ex' +
          'porta'#231#227'o'
        ParentFont = False
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentColor = False
        Color = 12615680
        TabOrder = 3
      end
    end
    object UniPanel1: TUniPanel
      AlignWithMargins = True
      Left = 1099
      Top = 2
      Width = 124
      Height = 63
      Hint = ''
      Anchors = [akTop, akRight]
      TabOrder = 2
      Caption = 'pFoto'
      object iLogoEmpresa: TUniImage
        Left = 1
        Top = 1
        Width = 122
        Height = 61
        Hint = ''
        Center = True
        Stretch = True
        Align = alClient
        Transparent = True
      end
    end
    object iLogoAtlas: TUniImage
      Left = 157
      Top = 0
      Width = 259
      Height = 68
      Hint = ''
      Stretch = True
      Align = alLeft
      ScreenMask.Enabled = True
    end
    object iLogoCyber: TUniImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 151
      Height = 62
      Hint = ''
      Center = True
      Stretch = True
      Proportional = True
      Align = alLeft
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Painel'#39';'#13#10'}')
      ScreenMask.Enabled = True
    end
    object lVersao: TUniLabel
      Left = 232
      Top = 49
      Width = 172
      Height = 16
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Vers'#227'o 1.00'
      ParentFont = False
      Font.Color = clInactiveBorder
      Font.Height = -13
      Font.Name = 'Calibri'
      ParentColor = False
      Color = 4227327
      Transparent = False
      TabOrder = 5
    end
  end
  object pMenu: TUniContainerPanel
    Left = 0
    Top = 68
    Width = 350
    Height = 698
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 2
    object UniContainerPanel2: TUniContainerPanel
      Left = 0
      Top = 32
      Width = 350
      Height = 32
      Hint = ''
      ParentColor = False
      Color = 7293440
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 300
      object cPesquisa: TUniEdit
        Left = 0
        Top = 0
        Width = 350
        Height = 32
        Hint = ''
        BodyRTL = False
        AllowTextDrop = True
        Text = ''
        ParentFont = False
        Align = alClient
        TabOrder = 1
        EmptyText = 'Pesquisa'
        FieldLabelWidth = 0
        InputType = 'search'
        Images = ImgMenu
        OnChange = cPesquisaChange
        ExplicitWidth = 300
      end
    end
    object Menu: TUniTreeMenu
      Left = 0
      Top = 64
      Width = 350
      Height = 634
      Hint = ''
      Align = alClient
      Items.FontData = {0100000000}
      LayoutConfig.Split = True
      SourceMenu = MenuPrincipal
      Color = 4730899
      SingleExpand = True
      ExpanderOnly = False
      ExplicitWidth = 300
    end
    object UniPanel3: TUniPanel
      Left = 0
      Top = 0
      Width = 350
      Height = 32
      Hint = ''
      Align = alTop
      TabOrder = 3
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  /*config.cl' +
          's = '#39'BarraPrincipal'#39';*/'#13#10'}')
      BorderStyle = ubsNone
      Caption = ''
      Color = clNone
      ExplicitWidth = 300
      object bFecharTodos: TUniButton
        Left = 47
        Top = 0
        Width = 108
        Height = 32
        Hint = ''
        Caption = 'Fechar Abas'
        Align = alLeft
        TabOrder = 1
        Scale = bbsSmall
        IconCls = 'delete'
        OnClick = bFecharTodosClick
        ExplicitLeft = 176
      end
      object bMudarEmpresa: TUniButton
        Left = 155
        Top = 0
        Width = 154
        Height = 32
        Hint = ''
        Caption = 'Trocar Empresa'
        Align = alLeft
        TabOrder = 2
        Scale = bbsSmall
        ScaleButton = False
        IconCls = 'team'
        OnClick = bMudarEmpresaClick
        ExplicitLeft = -18
        ExplicitTop = 3
      end
      object bMenu: TUniButton
        Left = 0
        Top = 0
        Width = 47
        Height = 32
        Hint = ''
        Caption = '<i class="fa fa-bars" aria-hidden="true"></i>'
        Align = alLeft
        TabOrder = 3
        Scale = bbsSmall
        ScaleButton = False
        OnClick = bMenuClick
      end
      object bFechar: TUniSpeedButton
        Left = 309
        Top = 0
        Width = 41
        Height = 32
        Hint = 'Fecha a tela de cadastro atual.'
        Caption = ''
        Align = alClient
        ParentColor = False
        IconAlign = iaCenter
        Images = UniMainModule.imgBotoes
        ImageIndex = 7
        TabOrder = 4
        OnClick = bFecharClick
        ExplicitTop = -6
      end
    end
  end
  object ImgMenu: TUniNativeImageList
    ImageFilesFolderName = '/'
    Left = 175
    Top = 158
    Images = {
      11000000FFFFFF1F060C000000636F6D706F73653B66615F3BFFFFFF1F061200
      000077696E646F772D726573746F72653B66613BFFFFFF1F06090000006D6F6E
      65793B66613BFFFFFF1F06090000007072696E743B66613BFFFFFF1F060A0000
      007772656E63683B66613BFFFFFF1F0607000000636F673B66613BFFFFFF1F06
      0F00000063616C63756C61746F723B66615F3BFFFFFF1F060D000000706F7765
      722D6F66663B66613BFFFFFF1F060A00000061746C61733B66615F3BFFFFFF1F
      060E000000626F6F6B2D6F70656E3B66615F3BFFFFFF1F060C00000062617263
      6F64653B66615F3BFFFFFF1F0612000000636173682D72656769737465723B66
      615F3BFFFFFF1F0609000000747275636B3B66613BFFFFFF1F060E0000006272
      696566636173653B66615F3BFFFFFF1F060D000000636172742D706C75733B66
      613BFFFFFF1F0609000000736869703B66615F3BFFFFFF1F0609000000746167
      733B66615F3B}
  end
  object tEmpresas: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 124
    Top = 333
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    DisplayMessage = 'Aguarde...'
    TargetControl = PagePrincipal
    Left = 124
    Top = 389
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 124
    Top = 501
  end
  object UniScreenMask2: TUniScreenMask
    Enabled = True
    DisplayMessage = 'Aguarde..Testando'
    TargetControl = PagePrincipal
    Left = 124
    Top = 446
  end
  object TabMenu: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Menuprincipal')
    Left = 231
    Top = 157
  end
  object dstMenu: TDataSource
    DataSet = TabMenu
    Left = 231
    Top = 209
  end
  object MenuPrincipal: TUniMenuItems
    AutoPopup = False
    Images = ImgMenu
    MenuAnimation = [maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop, maNone]
    Left = 58
    Top = 220
  end
end
