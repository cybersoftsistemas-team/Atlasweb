object fCadOperacaoFiscalFormula: TfCadOperacaoFiscalFormula
  Left = 0
  Top = 0
  ClientHeight = 730
  ClientWidth = 1238
  Caption = 'MANUTEN'#199#195'O DAS FORMULAS PARA C'#193'LCULO DOS PEDIDOS'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  CaptionAlign = taCenter
  MonitoredKeys.Keys = <>
  PageMode = True
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.cls = '#39'Ficha'#39';'#13#10'}')
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 695
    Width = 1238
    Height = 35
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    Color = 5526569
    object bSair: TUniSpeedButton
      Left = 1197
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      ShowHint = True
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bSairClick
    end
    object bGravar: TUniSpeedButton
      Left = 1156
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 2
      OnClick = bGravarClick
    end
  end
  object bAddCampo: TUniSpeedButton
    Left = 1124
    Top = 330
    Width = 28
    Height = 27
    Hint = 'Adicionar novo registro.'
    Caption = ''
    ParentColor = False
    IconAlign = iaCenter
    Images = UniMainModule.imgBotoes
    ImageIndex = 0
    TabOrder = 1
    OnClick = bAddCampoClick
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1238
    Height = 695
    Hint = ''
    ParentColor = False
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    TabOrder = 2
    object gCalculaveis: TUniDBGrid
      Left = 16
      Top = 32
      Width = 470
      Height = 319
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      HeaderTitleAlign = taCenter
      TitleFont.Height = -13
      TitleFont.Style = [fsBold]
      DataSource = dstCalculaveis
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
      ReadOnly = True
      WebOptions.Paged = False
      WebOptions.PageSize = 30
      LoadMask.Message = 'Carregando dados...'
      RowHeight = 24
      ForceFit = True
      BorderStyle = ubsInset
      TrackOver = False
      Font.Height = -13
      Font.Name = 'Calibri'
      ParentFont = False
      TabOrder = 1
      ParentColor = False
      Color = clBtnFace
      OnDblClick = gCalculaveisDblClick
      Columns = <
        item
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Style = [fsBold]
          Width = 74
          Font.Name = 'Calibri'
          Alignment = taCenter
          ReadOnly = True
        end
        item
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descricao'
          Title.Font.Style = [fsBold]
          Width = 304
          Font.Name = 'Calibri'
          ReadOnly = True
        end>
    end
    object gCampos: TUniDBGrid
      Left = 493
      Top = 32
      Width = 727
      Height = 289
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      HeaderTitleAlign = taCenter
      TitleFont.Height = -13
      TitleFont.Style = [fsBold]
      DataSource = dstCampos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
      ReadOnly = True
      WebOptions.Paged = False
      WebOptions.PageSize = 30
      LoadMask.Message = 'Carregando dados...'
      RowHeight = 24
      ForceFit = True
      BorderStyle = ubsInset
      TrackOver = False
      Font.Height = -13
      Font.Name = 'Calibri'
      ParentFont = False
      TabOrder = 2
      ParentColor = False
      Color = clBtnFace
      OnDblClick = gCamposDblClick
      Columns = <
        item
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Style = [fsBold]
          Width = 290
          Font.Name = 'Calibri'
          ReadOnly = True
        end
        item
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Tabela'
          Title.Font.Style = [fsBold]
          Width = 167
          Font.Name = 'Calibri'
          ReadOnly = True
        end
        item
          FieldName = 'Campo'
          Title.Alignment = taCenter
          Title.Caption = 'Vari'#225'vel'
          Title.Font.Style = [fsBold]
          Width = 245
          Font.Name = 'Calibri'
          ReadOnly = True
        end>
    end
    object cPesqCampos: TUniEdit
      Left = 493
      Top = 353
      Width = 600
      Height = 27
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      BorderStyle = ubsInset
      Text = ''
      TabOrder = 3
      EmptyText = 'Pesquisar'
      ClearButton = True
      OnChange = cPesqCamposChange
      OnKeyDown = cPesqCamposKeyDown
    end
    object cPesqCalc: TUniEdit
      Left = 16
      Top = 355
      Width = 347
      Height = 27
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      BorderStyle = ubsInset
      Text = ''
      TabOrder = 4
      EmptyText = 'Pesquisar'
      ClearButton = True
      OnChange = cPesqCalcChange
      OnKeyDown = cPesqCalcKeyDown
    end
    object bFiltraCalc: TUniSpeedButton
      Left = 365
      Top = 355
      Width = 28
      Height = 27
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 8
      TabOrder = 5
      OnClick = bFiltraCalcClick
    end
    object bFiltraCampos: TUniSpeedButton
      Left = 1095
      Top = 353
      Width = 28
      Height = 27
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 8
      TabOrder = 6
      OnClick = bFiltraCamposClick
    end
    object gFormulas: TUniDBGrid
      Left = 16
      Top = 428
      Width = 470
      Height = 218
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      HeaderTitleAlign = taCenter
      TitleFont.Height = -13
      TitleFont.Style = [fsBold]
      DataSource = dsOpFormulas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
      ReadOnly = True
      WebOptions.Paged = False
      WebOptions.PageSize = 30
      LoadMask.Message = 'Carregando dados...'
      RowHeight = 24
      ForceFit = True
      BorderStyle = ubsInset
      TrackOver = False
      Font.Height = -13
      Font.Name = 'Calibri'
      ParentFont = False
      TabOrder = 7
      ParentColor = False
      Color = clBtnFace
      Columns = <
        item
          FieldName = 'Ordem_Calculo'
          Title.Alignment = taCenter
          Title.Caption = 'Ordem'
          Title.Font.Style = [fsBold]
          Width = 45
          Font.Name = 'Calibri'
          ReadOnly = True
        end
        item
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Style = [fsBold]
          Width = 74
          Font.Name = 'Calibri'
          Alignment = taCenter
          ReadOnly = True
        end
        item
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Campo da Nota Fiscal'
          Title.Font.Style = [fsBold]
          Width = 313
          Font.Name = 'Calibri'
          ReadOnly = True
        end>
    end
    object bAdicionarCalc: TUniSpeedButton
      Left = 394
      Top = 355
      Width = 28
      Height = 27
      Hint = 'Adicionar novo registro.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 8
      OnClick = bAdicionarCalcClick
    end
    object cTabela: TUniComboBox
      Left = 493
      Top = 325
      Width = 600
      Height = 27
      Hint = ''
      Text = ''
      TabOrder = 9
      EmptyText = 'Tabela'
      ClearButton = True
      IconItems = <>
      OnChange = cTabelaChange
    end
    object cFormula: TUniMemo
      Left = 493
      Top = 455
      Width = 727
      Height = 191
      Hint = ''
      BorderStyle = ubsInset
      Lines.Strings = (
        'cFormula')
      ParentFont = False
      Font.Name = 'JetBrains Mono'
      Color = 16772292
      TabOrder = 10
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CampoDestaque'#39';'#13#10'}')
      ClearButton = True
      FieldLabel = 'FORMULA DO CAMPO'
      FieldLabelWidth = 120
      FieldLabelAlign = laTop
      OnAjaxEvent = cFormulaAjaxEvent
    end
    object cOrdem: TUniSpinEdit
      Left = 493
      Top = 427
      Width = 172
      Height = 27
      Hint = ''
      MaxValue = 99
      MinValue = 1
      TabOrder = 11
      FieldLabel = 'Ordem de Calculo'
      FieldLabelSeparator = ' '
    end
    object bExcluir: TUniSpeedButton
      Left = 394
      Top = 650
      Width = 28
      Height = 27
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 12
      OnClick = bExcluirClick
    end
    object cPesqForm: TUniEdit
      Left = 16
      Top = 650
      Width = 347
      Height = 27
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      BorderStyle = ubsInset
      Text = ''
      TabOrder = 13
      EmptyText = 'Pesquisar'
      ClearButton = True
      OnKeyDown = cPesqFormKeyDown
    end
    object bFiltraForm: TUniSpeedButton
      Left = 365
      Top = 650
      Width = 28
      Height = 27
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 8
      TabOrder = 14
      OnClick = bFiltraFormClick
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 9
      Width = 470
      Height = 21
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'CAMPOS CALCUL'#193'VEIS DA NOTA FISCAL'
      ParentFont = False
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'LabelDestaque'#39';'#13#10'}')
      Transparent = False
      TabOrder = 15
    end
    object UniLabel2: TUniLabel
      Left = 16
      Top = 403
      Width = 470
      Height = 21
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'CAMPOS CALCUL'#193'VEIS DA NOTA FISCAL (SELECIONADOS)'
      ParentFont = False
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'LabelDestaque'#39';'#13#10'}')
      Transparent = False
      TabOrder = 16
    end
    object UniLabel3: TUniLabel
      Left = 493
      Top = 9
      Width = 727
      Height = 21
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'VARI'#193'VEIS'
      ParentFont = False
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'LabelDestaque'#39';'#13#10'}')
      Transparent = False
      TabOrder = 17
    end
    object UniLabel4: TUniLabel
      Left = 493
      Top = 403
      Width = 727
      Height = 21
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'F'#211'RMULA'
      ParentFont = False
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'LabelDestaque'#39';'#13#10'}')
      Transparent = False
      TabOrder = 18
    end
  end
  object tOpFormulas: TFDQuery
    AfterScroll = tOpFormulasAfterScroll
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 709
    Top = 485
  end
  object dsOpFormulas: TDataSource
    DataSet = tOpFormulas
    Left = 708
    Top = 535
  end
  object tCampos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Campos order by Tabela, Descricao')
    Left = 637
    Top = 485
  end
  object dstCampos: TDataSource
    DataSet = tCampos
    Left = 637
    Top = 535
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 841
    Top = 485
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 884
    Top = 485
  end
  object tCalculaveis: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CamposCalculaveis')
    Left = 557
    Top = 485
  end
  object dstCalculaveis: TDataSource
    DataSet = tCalculaveis
    Left = 557
    Top = 535
  end
  object tmp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 781
    Top = 485
  end
end
