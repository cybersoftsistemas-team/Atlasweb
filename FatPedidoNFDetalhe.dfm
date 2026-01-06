object fFatPedidoNFDetalhe: TfFatPedidoNFDetalhe
  Left = 0
  Top = 0
  ClientHeight = 258
  ClientWidth = 710
  Caption = 'fFatPedidoNFDetalhe'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Visible = True
  PageMode = True
  ClientEvents.Enabled = False
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.cls = '#39'Ficha'#39';'#13#10'}')
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pBarraNav: TUniPanel
    Left = 0
    Top = 223
    Width = 710
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
    object bFechar: TUniSpeedButton
      AlignWithMargins = True
      Left = 669
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bFecharClick
    end
    object bAdicionar: TUniSpeedButton
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Adicionar novo item ao pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
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
      AlignWithMargins = True
      Left = 43
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Editar o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
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
      AlignWithMargins = True
      Left = 85
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Excluir o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
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
      AlignWithMargins = True
      Left = 127
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Cancelar modifica'#231#245'es feitas no item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 5
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      AlignWithMargins = True
      Left = 169
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Salva o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 6
      OnClick = bGravarClick
    end
  end
  object PanelDados: TUniPanel
    Left = 8
    Top = 8
    Width = 694
    Height = 199
    Hint = ''
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'CaixaSimples'#39';'#13#10'}')
    BorderStyle = ubsInset
    TitleVisible = True
    Title = 'Detalhameto do Produto'
    Caption = ''
    object cQtde: TUniDBFormattedNumberEdit
      Left = 8
      Top = 62
      Width = 240
      Height = 25
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      DataField = 'Quantidade'
      DataSource = dstItensDetalhe
      Alignment = taRightJustify
      TabOrder = 3
      SelectOnFocus = True
      FieldLabel = 'Quantidade'
      FieldLabelSeparator = ' '
      DecimalPrecision = 3
      DecimalSeparator = ','
      ThousandSeparator = '.'
      BorderStyle = ubsInset
    end
    object cDetalhe: TUniDBLookupComboBox
      Left = 8
      Top = 8
      Width = 450
      Height = 25
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      ListField = 'Codigo;NCM;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 2
      BorderStyle = ubsInset
      ClearButton = True
      DataField = 'Detalhe'
      DataSource = dstItensDetalhe
      AnyMatch = True
      TabOrder = 1
      Color = clWindow
      MatchFieldWidth = False
      FieldLabel = 'Detalhe'
      FieldLabelSeparator = ' '
      ForceSelection = True
      NormalizeString = True
      Style = csDropDown
      Mode = umNameValue
    end
    object cLote: TUniDBLookupComboBox
      Left = 8
      Top = 35
      Width = 450
      Height = 25
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      DataField = 'Lote'
      DataSource = dstItensDetalhe
      AnyMatch = True
      TabOrder = 2
      Color = clWindow
      FieldLabel = 'Lote'
      FieldLabelSeparator = ' '
      ForceSelection = True
      NormalizeString = True
      Style = csDropDown
    end
    object UniPanel2: TUniPanel
      Left = 464
      Top = 8
      Width = 220
      Height = 142
      Hint = ''
      TabOrder = 4
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'CaixaSimples'#39';'#13#10'}')
      BorderStyle = ubsInset
      Caption = ''
      object cEstoqueMinimo: TUniFormattedNumberEdit
        AlignWithMargins = True
        Left = 5
        Top = 4
        Width = 210
        Height = 25
        Hint = ''
        Margins.Left = 4
        Margins.Right = 4
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsInset
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        Align = alTop
        TabOrder = 1
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabel = 'Estoque Min'#237'mo'
        FieldLabelWidth = 80
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cDisponivel: TUniFormattedNumberEdit
        AlignWithMargins = True
        Left = 5
        Top = 112
        Width = 210
        Height = 25
        Hint = ''
        Margins.Left = 4
        Margins.Top = 1
        Margins.Right = 4
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsInset
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        Align = alTop
        TabOrder = 2
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabel = 'Estoque Atual'
        FieldLabelWidth = 80
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cInventario: TUniFormattedNumberEdit
        AlignWithMargins = True
        Left = 5
        Top = 85
        Width = 210
        Height = 25
        Hint = ''
        Margins.Left = 4
        Margins.Top = 1
        Margins.Right = 4
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsInset
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        Align = alTop
        TabOrder = 3
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabel = 'Invent'#225'rio Atual'
        FieldLabelWidth = 80
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cEstoqueLote: TUniFormattedNumberEdit
        AlignWithMargins = True
        Left = 5
        Top = 31
        Width = 210
        Height = 25
        Hint = ''
        Margins.Left = 4
        Margins.Top = 1
        Margins.Right = 4
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsInset
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        Align = alTop
        TabOrder = 4
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabel = 'Detalhe/Lote'
        FieldLabelWidth = 80
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cEstoqueNavio: TUniFormattedNumberEdit
        AlignWithMargins = True
        Left = 5
        Top = 58
        Width = 210
        Height = 25
        Hint = ''
        Margins.Left = 4
        Margins.Top = 1
        Margins.Right = 4
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsInset
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        Align = alTop
        TabOrder = 5
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabel = 'Estoque Navio'
        FieldLabelWidth = 80
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
    end
  end
  object dstProdutosDetalhe: TDataSource
    DataSet = tProdutosDetalhe
    Left = 145
    Top = 156
  end
  object dstItensDetalhe: TDataSource
    DataSet = tItensDetalhe
    Left = 44
    Top = 156
  end
  object tItensDetalhe: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from PedidosItensDetalhe')
    Left = 44
    Top = 109
  end
  object tProdutosDetalhe: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosDetalhe')
    Left = 145
    Top = 109
  end
  object tProdutosLote: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosDetalhe')
    Left = 245
    Top = 109
  end
  object dstProdutosLote: TDataSource
    DataSet = tProdutosLote
    Left = 245
    Top = 155
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 343
    Top = 111
  end
end
