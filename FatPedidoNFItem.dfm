object fFatPedidoNFItem: TfFatPedidoNFItem
  Left = 0
  Top = 0
  ClientHeight = 689
  ClientWidth = 1332
  Caption = 'Item do Pedido'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  CaptionAlign = taCenter
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 654
    Width = 1332
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
    object UniSpeedButton1: TUniSpeedButton
      AlignWithMargins = True
      Left = 1290
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = UniSpeedButton1Click
    end
    object bAddItem: TUniSpeedButton
      AlignWithMargins = True
      Left = 1198
      Top = 1
      Width = 90
      Height = 33
      Hint = 'Adicionar um Item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Salvar'
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 2
    end
    object bAddTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 1106
      Top = 1
      Width = 90
      Height = 33
      Hint = 'Cancelar opera'#231#227'o'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Cancelar'
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 3
    end
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 1332
    Height = 654
    Hint = ''
    ActivePage = UniTabSheet2
    Align = alClient
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Item'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Ficha'#39';'#13#10'}')
      object cCSTIPI: TUniDBLookupComboBox
        Left = 659
        Top = 226
        Width = 647
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTIPI
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTIPI'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 0
        Color = clWindow
        FieldLabel = 'CST IPI'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cCSTPIS: TUniDBLookupComboBox
        Left = 659
        Top = 307
        Width = 647
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTPIS
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTPIS'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 10
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST PIS'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cCSTCOFINS: TUniDBLookupComboBox
        Left = 659
        Top = 334
        Width = 647
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTCOFINS
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTCOFINS'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 11
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST COFINS'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cCSTICMS: TUniDBLookupComboBox
        Left = 984
        Top = 361
        Width = 322
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTICMSB
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTICMS_TabB'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 12
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST ICMS Tab.B'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cQtde: TUniDBFormattedNumberEdit
        Left = 19
        Top = 101
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Quantidade'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 6
        SelectOnFocus = True
        FieldLabel = 'Quantidade'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
        OnExit = cQtdeExit
      end
      object cPercentual_Desconto: TUniDBFormattedNumberEdit
        Left = 19
        Top = 128
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Percentual_Desconto'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 8
        SelectOnFocus = True
        FieldLabel = '% Desconto'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_Desconto: TUniDBFormattedNumberEdit
        Left = 229
        Top = 128
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_Desconto'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 9
        SelectOnFocus = True
        FieldLabel = 'Valor Desconto'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cProduto: TUniDBLookupComboBox
        Left = 19
        Top = 19
        Width = 1287
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;NCM;Descricao'
        ListSource = dsProdutos
        KeyField = 'Codigo'
        ListFieldIndex = 2
        ClearButton = True
        DataField = 'Codigo_Mercadoria'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 1
        Color = clWindow
        FieldLabel = 'Produto'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
        OnExit = cProdutoExit
      end
      object cCFOP: TUniDBLookupComboBox
        Left = 19
        Top = 46
        Width = 1287
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCFOP
        KeyField = 'Codigo'
        ListFieldIndex = 1
        ClearButton = True
        DataField = 'CFOP'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 2
        Color = clWindow
        FieldLabel = 'CFOP'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cProcesso: TUniDBLookupComboBox
        Left = 19
        Top = 73
        Width = 410
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Tipo;Processo'
        ListSource = dsProcessos
        KeyField = 'Processo'
        ListFieldIndex = 1
        DataField = 'Processo'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 3
        Color = clWindow
        FieldLabel = 'Processo'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cPO: TUniDBEdit
        Left = 442
        Top = 73
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'PO'
        DataSource = dsPedidosNFItens
        TabOrder = 4
        FieldLabel = 'Pedido Compra'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
      end
      object cOrdem: TUniDBEdit
        Left = 653
        Top = 73
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Ordem'
        DataSource = dsPedidosNFItens
        TabOrder = 5
        FieldLabel = 'Ordem'
        FieldLabelWidth = 40
        FieldLabelSeparator = ' '
      end
      object cAliquota_II: TUniDBFormattedNumberEdit
        Left = 289
        Top = 199
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_II'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 13
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCII: TUniDBFormattedNumberEdit
        Left = 147
        Top = 199
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCII'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 14
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_II: TUniDBFormattedNumberEdit
        Left = 371
        Top = 199
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_II'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 15
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_IPI: TUniDBFormattedNumberEdit
        Left = 289
        Top = 226
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_IPI'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 16
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCIPI: TUniDBFormattedNumberEdit
        Left = 147
        Top = 226
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCIPI'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 17
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_IPI: TUniDBFormattedNumberEdit
        Left = 371
        Top = 226
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_IPI'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 18
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_OutrasIPI: TUniDBFormattedNumberEdit
        Left = 147
        Top = 253
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_OutrasIPI'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 19
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_PIS: TUniDBFormattedNumberEdit
        Left = 289
        Top = 307
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_PIS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 20
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCPIS: TUniDBFormattedNumberEdit
        Left = 147
        Top = 307
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCPIS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 21
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_PIS: TUniDBFormattedNumberEdit
        Left = 371
        Top = 307
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_PIS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 22
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_COFINS: TUniDBFormattedNumberEdit
        Left = 289
        Top = 334
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_COFINS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 23
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCCOFINS: TUniDBFormattedNumberEdit
        Left = 147
        Top = 334
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCCOFINS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 24
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_COFINS: TUniDBFormattedNumberEdit
        Left = 371
        Top = 334
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_COFINS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 25
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_ICMSOp: TUniDBFormattedNumberEdit
        Left = 289
        Top = 361
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_ICMSOp'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 26
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCICMSOp: TUniDBFormattedNumberEdit
        Left = 147
        Top = 361
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCICMSOp'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 27
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_ICMS: TUniDBFormattedNumberEdit
        Left = 371
        Top = 361
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_ICMSOp'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 28
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_ICMSDif: TUniDBFormattedNumberEdit
        Left = 147
        Top = 415
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_ICMSDif'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 29
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_ICMSDif: TUniDBFormattedNumberEdit
        Left = 371
        Top = 415
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_ICMSDif'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 30
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_OutrasICMS: TUniDBFormattedNumberEdit
        Left = 147
        Top = 442
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_OutrasICMS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 31
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_IsentasICMS: TUniDBFormattedNumberEdit
        Left = 147
        Top = 469
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_IsentasICMS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 32
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_ICMSST: TUniDBFormattedNumberEdit
        Left = 289
        Top = 388
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_ICMSST'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 33
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCICMSST: TUniDBFormattedNumberEdit
        Left = 147
        Top = 388
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCICMSST'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 34
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_ICMSST: TUniDBFormattedNumberEdit
        Left = 371
        Top = 388
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_ICMSST'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 35
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cAliquota_MVA: TUniDBFormattedNumberEdit
        Left = 289
        Top = 496
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_MVA'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 36
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_BCMVA: TUniDBFormattedNumberEdit
        Left = 147
        Top = 496
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCMVA'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 37
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_MVA: TUniDBFormattedNumberEdit
        Left = 371
        Top = 496
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_MVA'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 38
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_Total: TUniFormattedNumberEdit
        Left = 442
        Top = 104
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 39
        TabStop = False
        Color = 15720158
        ReadOnly = True
        FieldLabel = 'Total'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cValor_Unitario: TUniDBFormattedNumberEdit
        Left = 229
        Top = 101
        Width = 200
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_Unitario'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 7
        SelectOnFocus = True
        FieldLabel = 'Valor Unit'#225'rio'
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
        OnExit = cValor_UnitarioExit
        OnEnter = cValor_UnitarioEnter
      end
      object cTotalIPI: TUniFormattedNumberEdit
        Left = 513
        Top = 226
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 40
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalOutrasIPI: TUniFormattedNumberEdit
        Left = 513
        Top = 253
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 41
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalPIS: TUniFormattedNumberEdit
        Left = 513
        Top = 307
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 42
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalCOFINS: TUniFormattedNumberEdit
        Left = 513
        Top = 334
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 43
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalICMSOp: TUniFormattedNumberEdit
        Left = 513
        Top = 361
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 44
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalICMSST: TUniFormattedNumberEdit
        Left = 513
        Top = 388
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 45
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalOutrasICMS: TUniFormattedNumberEdit
        Left = 513
        Top = 442
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 46
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalIsentasICMS: TUniFormattedNumberEdit
        Left = 513
        Top = 469
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 47
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalMVA: TUniFormattedNumberEdit
        Left = 513
        Top = 496
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 48
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalII: TUniFormattedNumberEdit
        Left = 513
        Top = 199
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 49
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cICMSAnt: TUniDBCheckBox
        Left = 659
        Top = 392
        Width = 297
        Height = 17
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'ICMSST_Anterior'
        DataSource = dsPedidosNFItens
        Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
        TabOrder = 50
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel16: TUniLabel
        Left = 19
        Top = 171
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Alignment = taCenter
        AutoSize = False
        Caption = 'IMPOSTO'
        ParentFont = False
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 51
      end
      object UniLabel17: TUniLabel
        Left = 19
        Top = 199
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'II'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 52
      end
      object UniLabel18: TUniLabel
        Left = 19
        Top = 226
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'IPI'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 53
      end
      object UniLabel19: TUniLabel
        Left = 19
        Top = 253
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'Outras de IPI'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 54
      end
      object UniLabel20: TUniLabel
        Left = 19
        Top = 307
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'PIS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 55
      end
      object UniLabel21: TUniLabel
        Left = 19
        Top = 334
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'COFINS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 56
      end
      object UniLabel22: TUniLabel
        Left = 19
        Top = 361
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'ICMS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 57
      end
      object UniLabel23: TUniLabel
        Left = 19
        Top = 388
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'ICMS ST'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 58
      end
      object UniLabel24: TUniLabel
        Left = 19
        Top = 415
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'ICMS Diferimento'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 59
      end
      object UniLabel25: TUniLabel
        Left = 19
        Top = 442
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'Outras ICMS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 60
      end
      object UniLabel26: TUniLabel
        Left = 19
        Top = 496
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'MVA'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 61
      end
      object UniLabel27: TUniLabel
        Left = 147
        Top = 171
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Alignment = taCenter
        AutoSize = False
        Caption = 'BASE DE C'#193'LCULO'
        ParentFont = False
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 62
      end
      object UniLabel28: TUniLabel
        Left = 289
        Top = 171
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Alignment = taCenter
        AutoSize = False
        Caption = 'AL'#205'QUOTA'
        ParentFont = False
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 63
      end
      object UniLabel29: TUniLabel
        Left = 371
        Top = 171
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR'
        ParentFont = False
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 64
      end
      object UniLabel30: TUniLabel
        Left = 513
        Top = 171
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Alignment = taCenter
        AutoSize = False
        Caption = 'TOTAIS'
        ParentFont = False
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 65
      end
      object cValor_IsentasIPI: TUniDBFormattedNumberEdit
        Left = 147
        Top = 280
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_IsentasIPI'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 66
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cTotalIsentasIPI: TUniFormattedNumberEdit
        Left = 513
        Top = 280
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 67
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel31: TUniLabel
        Left = 19
        Top = 280
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'Isentas de IPI'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 68
      end
      object UniLabel32: TUniLabel
        Left = 19
        Top = 469
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'Isentas ICMS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 69
      end
      object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
        Left = 289
        Top = 523
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_IS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 70
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
        Left = 147
        Top = 523
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCIS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 71
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit
        Left = 371
        Top = 523
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_IS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 72
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
        Left = 289
        Top = 550
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_IBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 73
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit
        Left = 147
        Top = 550
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCIBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 74
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit
        Left = 371
        Top = 550
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_IBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 75
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit11: TUniDBFormattedNumberEdit
        Left = 289
        Top = 577
        Width = 80
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Aliquota_CBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 76
        SelectOnFocus = True
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit12: TUniDBFormattedNumberEdit
        Left = 147
        Top = 577
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_BCCBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 77
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object UniDBFormattedNumberEdit13: TUniDBFormattedNumberEdit
        Left = 371
        Top = 577
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_CBS'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 78
        SelectOnFocus = True
        FieldLabelWidth = 70
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cTotalIS: TUniFormattedNumberEdit
        Left = 513
        Top = 523
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 79
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalIBS: TUniFormattedNumberEdit
        Left = 513
        Top = 550
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 80
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cTotalCBS: TUniFormattedNumberEdit
        Left = 513
        Top = 577
        Width = 140
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 81
        TabStop = False
        Color = 15720158
        ReadOnly = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'CampoDesativado'#39';'#13#10'}')
        FieldLabelWidth = 85
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel1: TUniLabel
        Left = 19
        Top = 523
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'IS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 82
      end
      object UniLabel2: TUniLabel
        Left = 19
        Top = 550
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'IBS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 83
      end
      object UniLabel3: TUniLabel
        Left = 19
        Top = 577
        Width = 126
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        AutoSize = False
        Caption = 'CBS'
        ParentFont = False
        Font.Name = 'Calibri'
        ParentColor = False
        Color = clWindow
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'LabelDestaque'#39';'#13#10'}')
        Transparent = False
        TabOrder = 84
      end
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 659
        Top = 550
        Width = 647
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTIBS
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTIBS'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 85
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST IBS'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object UniDBLookupComboBox2: TUniDBLookupComboBox
        Left = 659
        Top = 577
        Width = 647
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTCBS
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTCBS'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 86
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST CBS'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object UniDBLookupComboBox3: TUniDBLookupComboBox
        Left = 659
        Top = 361
        Width = 322
        Height = 25
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCSTICMSA
        KeyField = 'Codigo'
        ListFieldIndex = 1
        DataField = 'CSTICMS_TabA'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 87
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CST ICMS Tab.A'
        FieldLabelWidth = 75
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'F'#243'rmulas'
      object gFormula: TUniStringGrid
        Left = 0
        Top = 0
        Width = 1324
        Height = 506
        Hint = ''
        HeaderTitle = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
        HeaderTitleAlign = taCenter
        CellCursor = crHandPoint
        FixedColor = 15450856
        FixedRows = 0
        RowCount = 1
        ColCount = 4
        DefaultRowHeight = 20
        Options = [goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
        CustomizableCells = False
        ShowColumnTitles = True
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = 'Campo'
            Width = 140
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'F'#243'rmula'
            Width = 770
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Valores'
            Width = 180
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Resultado'
            Width = 100
          end>
        BorderStyle = ubsNone
        StripeRows = True
        ForceFit = True
        Align = alTop
        TabOrder = 0
      end
      object cLog: TUniMemo
        Left = 0
        Top = 506
        Width = 1324
        Height = 120
        Hint = ''
        BorderStyle = ubsNone
        ScrollBars = ssBoth
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'JetBrains Mono'
        Align = alClient
        Color = clWhite
        TabOrder = 1
        FieldLabel = 'LOG'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        ExplicitTop = 509
        ExplicitHeight = 117
      end
    end
  end
  object PedidosNFItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from PedidosNFitens'
      '')
    Left = 795
    Top = 107
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object PedidosNFItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PedidosNFItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object PedidosNFItensOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object PedidosNFItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object PedidosNFItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object PedidosNFItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object PedidosNFItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object PedidosNFItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object PedidosNFItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
    end
    object PedidosNFItensUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object PedidosNFItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object PedidosNFItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object PedidosNFItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object PedidosNFItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object PedidosNFItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object PedidosNFItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object PedidosNFItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object PedidosNFItensRateio_ICMSProcesso: TFloatField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
    end
    object PedidosNFItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object PedidosNFItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object PedidosNFItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
      Origin = 'Registro_Adicao'
    end
    object PedidosNFItensICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'ICMSST_Anterior'
    end
    object PedidosNFItensNumeroNF_Referencia: TIntegerField
      FieldName = 'NumeroNF_Referencia'
      Origin = 'NumeroNF_Referencia'
    end
    object PedidosNFItensChaveNF_Referencia: TStringField
      FieldName = 'ChaveNF_Referencia'
      Origin = 'ChaveNF_Referencia'
      Size = 44
    end
    object PedidosNFItensDataNF_Referencia: TDateField
      FieldName = 'DataNF_Referencia'
      Origin = 'DataNF_Referencia'
    end
    object PedidosNFItensNumeroNF_Terceiros: TStringField
      FieldName = 'NumeroNF_Terceiros'
      Origin = 'NumeroNF_Terceiros'
      Size = 44
    end
    object PedidosNFItensDataNF_Terceiros: TDateField
      FieldName = 'DataNF_Terceiros'
      Origin = 'DataNF_Terceiros'
    end
    object PedidosNFItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object PedidosNFItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object PedidosNFItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object PedidosNFItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object PedidosNFItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object PedidosNFItensFator_Cambio: TFloatField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
    end
    object PedidosNFItensOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object PedidosNFItensNumero_BL: TStringField
      FieldName = 'Numero_BL'
      Origin = 'Numero_BL'
      Size = 15
    end
    object PedidosNFItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object PedidosNFItensSequencia: TIntegerField
      FieldName = 'Sequencia'
      Origin = 'Sequencia'
    end
    object PedidosNFItensSequencia_SISCOMEX: TIntegerField
      FieldName = 'Sequencia_SISCOMEX'
      Origin = 'Sequencia_SISCOMEX'
      DisplayFormat = ',##0.0000'
    end
    object PedidosNFItensValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensFator_Produto: TFloatField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
    end
    object PedidosNFItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Required = True
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object PedidosNFItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSST: TCurrencyField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCMVA: TCurrencyField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Despesa: TCurrencyField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDest: TFloatField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFAL: TCurrencyField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALOrig: TFloatField
      FieldName = 'Percentual_DIFALOrig'
      Origin = 'Percentual_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALOrig: TCurrencyField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALDest: TFloatField
      FieldName = 'Percentual_DIFALDest'
      Origin = 'Percentual_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALDest: TCurrencyField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALST: TCurrencyField
      FieldName = 'Valor_DIFALST'
      Origin = 'Valor_DIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPDest: TCurrencyField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_FCPICMSOrig: TFloatField
      FieldName = 'Percentual_FCPICMSOrig'
      Origin = 'Percentual_FCPICMSOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPICMSDest: TCurrencyField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSSTAnt: TCurrencyField
      FieldName = 'Valor_ICMSSTAnt'
      Origin = 'Valor_ICMSSTAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSAnt: TCurrencyField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSOp: TCurrencyField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object PedidosNFItensAliquota_ICMSOp: TFloatField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object PedidosNFItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDif: TFloatField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSSubAnt: TFloatField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'Aliquota_ICMSSubAnt'
    end
    object PedidosNFItensValor_ICMSOp: TCurrencyField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object PedidosNFItensValor_BCICMSApuracao: TCurrencyField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MediaBCR: TCurrencyField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Impostos: TCurrencyField
      FieldName = 'Valor_Impostos'
      Origin = 'Valor_Impostos'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Lucro: TFloatField
      FieldName = 'Percentual_Lucro'
      Origin = 'Percentual_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Lucro: TCurrencyField
      FieldName = 'Valor_Lucro'
      Origin = 'Valor_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_FreteTerrNac: TFloatField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Desconto: TFloatField
      FieldName = 'Percentual_Desconto'
      Origin = 'Percentual_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Desconto: TFloatField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PISRed: TFloatField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINSRed: TFloatField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_SISCOMEX: TFloatField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Comissao: TFloatField
      FieldName = 'Percentual_Comissao'
      Origin = 'Percentual_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Comissao: TCurrencyField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_RedICMSST: TFloatField
      FieldName = 'Percentual_RedICMSST'
      Origin = 'Percentual_RedICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Beneficio: TFloatField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMono: TFloatField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMonoRet: TFloatField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSOpRed: TFloatField
      FieldName = 'Aliquota_ICMSOpRed'
      Origin = 'Aliquota_ICMSOpRed'
    end
    object PedidosNFItensValor_ICMSOpRed: TCurrencyField
      FieldName = 'Valor_ICMSOpRed'
      Origin = 'Valor_ICMSOpRed'
    end
    object PedidosNFItensAliquota_ICMSOpIntegral: TFloatField
      FieldName = 'Aliquota_ICMSOpIntegral'
      Origin = 'Aliquota_ICMSOpIntegral'
    end
    object PedidosNFItensAliquota_ICMSOPRed2: TFloatField
      FieldName = 'Aliquota_ICMSOPRed2'
      Origin = 'Aliquota_ICMSOPRed2'
    end
    object PedidosNFItensCSTICMS_TabA: TStringField
      FieldName = 'CSTICMS_TabA'
      Origin = 'CSTICMS_TabA'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTICMS_TabB: TStringField
      FieldName = 'CSTICMS_TabB'
      Origin = 'CSTICMS_TabB'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object PedidosNFItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object PedidosNFItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object PedidosNFItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object PedidosNFItensValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
    end
    object PedidosNFItensAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
    end
    object PedidosNFItensValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
    end
    object PedidosNFItensValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
    end
    object PedidosNFItensAliquota_CBS: TFloatField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
    end
    object PedidosNFItensValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
    end
    object PedidosNFItensValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
    end
    object PedidosNFItensAliquota_IS: TFloatField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
    end
    object PedidosNFItensValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
    end
    object PedidosNFItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Origin = 'CSTIBS'
      Size = 3
    end
    object PedidosNFItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Origin = 'CSTCBS'
      Size = 3
    end
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 795
    Top = 151
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao = Descricao_Reduzida'
      '      ,NCM'
      '      ,Valor_Venda'
      '      ,Valor_ConsumidorFinal'
      '      ,Valor_CustoMedio'
      '      ,Valor_Entrada'
      '      ,Aliquota_IPI'
      '      ,Valor_IPI'
      '      ,Aliquota_II'
      '      ,Valor_II'
      '      ,Aliquota_PIS'
      '      ,Aliquota_COFINS'
      '      ,Aliquota_PISEntrada'
      '      ,Aliquota_COFINSEntrada'
      '      ,Aliquota_PISSaida'
      '      ,Aliquota_COFINSSaida'
      '      ,Reducao_PIS'
      '      ,Reducao_COFINS'
      '      ,CSTPIS_AliquotaUM'
      '      ,CSTPIS_Monofasica'
      '      ,CSTPIS_AliquotaZero'
      '      ,CSTPIS_Isenta'
      '      ,CSTPIS_SemIncidencia'
      '      ,CSTPIS_Suspensao'
      '      ,CSTPIS_Outras'
      '      ,Origem'
      '      ,ICMS_ForaEstadoEnt'
      '      ,ICMS_ForaEstadoSai'
      '      ,ICMS_DentroEstadoEnt'
      '      ,ICMS_DentroEstadoSai'
      '      ,ICMS_DentroEstadoSimples'
      '      ,Tabela_CAMEX'
      '      ,CSTICMS_Entrada'
      '      ,CSTICMS_Saida'
      '      ,Beneficio_FiscalEnt'
      '      ,Beneficio_FiscalSai'
      '      ,Codigo_Fabricante'
      '      ,UM'
      '      ,Peso_Liquido'
      '      ,Peso_Bruto'
      'from Produtos'
      'where Desativado <> 1'
      'and isnull(NCM, '#39#39') <> '#39#39' '
      'order by Descricao')
    Left = 961
    Top = 107
    object ProdutosCodigo: TIntegerField
      Alignment = taCenter
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      DisplayFormat = '0000000000;0'
    end
    object ProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 60
    end
    object ProdutosValor_Venda: TCurrencyField
      FieldName = 'Valor_Venda'
      Origin = 'Valor_Venda'
    end
    object ProdutosValor_ConsumidorFinal: TCurrencyField
      FieldName = 'Valor_ConsumidorFinal'
      Origin = 'Valor_ConsumidorFinal'
    end
    object ProdutosValor_CustoMedio: TCurrencyField
      FieldName = 'Valor_CustoMedio'
      Origin = 'Valor_CustoMedio'
    end
    object ProdutosValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
      Origin = 'Valor_Entrada'
    end
    object ProdutosValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object ProdutosNCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.####;0'
      Size = 10
    end
    object ProdutosAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object ProdutosAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object ProdutosValor_II: TCurrencyField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object ProdutosReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
      Origin = 'Reducao_PIS'
    end
    object ProdutosReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
      Origin = 'Reducao_COFINS'
    end
    object ProdutosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
    end
    object ProdutosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
    end
    object ProdutosAliquota_PISEntrada: TFloatField
      FieldName = 'Aliquota_PISEntrada'
      Origin = 'Aliquota_PISEntrada'
    end
    object ProdutosAliquota_COFINSEntrada: TFloatField
      FieldName = 'Aliquota_COFINSEntrada'
      Origin = 'Aliquota_COFINSEntrada'
    end
    object ProdutosAliquota_PISSaida: TFloatField
      FieldName = 'Aliquota_PISSaida'
      Origin = 'Aliquota_PISSaida'
    end
    object ProdutosAliquota_COFINSSaida: TFloatField
      FieldName = 'Aliquota_COFINSSaida'
      Origin = 'Aliquota_COFINSSaida'
    end
    object ProdutosCSTPIS_AliquotaUM: TBooleanField
      FieldName = 'CSTPIS_AliquotaUM'
      Origin = 'CSTPIS_AliquotaUM'
    end
    object ProdutosCSTPIS_Monofasica: TBooleanField
      FieldName = 'CSTPIS_Monofasica'
      Origin = 'CSTPIS_Monofasica'
    end
    object ProdutosCSTPIS_AliquotaZero: TBooleanField
      FieldName = 'CSTPIS_AliquotaZero'
      Origin = 'CSTPIS_AliquotaZero'
    end
    object ProdutosCSTPIS_Isenta: TBooleanField
      FieldName = 'CSTPIS_Isenta'
      Origin = 'CSTPIS_Isenta'
    end
    object ProdutosCSTPIS_SemIncidencia: TBooleanField
      FieldName = 'CSTPIS_SemIncidencia'
      Origin = 'CSTPIS_SemIncidencia'
    end
    object ProdutosCSTPIS_Suspensao: TBooleanField
      FieldName = 'CSTPIS_Suspensao'
      Origin = 'CSTPIS_Suspensao'
    end
    object ProdutosCSTPIS_Outras: TBooleanField
      FieldName = 'CSTPIS_Outras'
      Origin = 'CSTPIS_Outras'
    end
    object ProdutosOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      FixedChar = True
      Size = 1
    end
    object ProdutosICMS_ForaEstadoEnt: TFloatField
      FieldName = 'ICMS_ForaEstadoEnt'
      Origin = 'ICMS_ForaEstadoEnt'
    end
    object ProdutosICMS_ForaEstadoSai: TFloatField
      FieldName = 'ICMS_ForaEstadoSai'
      Origin = 'ICMS_ForaEstadoSai'
    end
    object ProdutosICMS_DentroEstadoEnt: TFloatField
      FieldName = 'ICMS_DentroEstadoEnt'
      Origin = 'ICMS_DentroEstadoEnt'
    end
    object ProdutosICMS_DentroEstadoSai: TFloatField
      FieldName = 'ICMS_DentroEstadoSai'
      Origin = 'ICMS_DentroEstadoSai'
    end
    object ProdutosICMS_DentroEstadoSimples: TFloatField
      FieldName = 'ICMS_DentroEstadoSimples'
      Origin = 'ICMS_DentroEstadoSimples'
    end
    object ProdutosTabela_CAMEX: TBooleanField
      FieldName = 'Tabela_CAMEX'
      Origin = 'Tabela_CAMEX'
    end
    object ProdutosCSTICMS_Entrada: TStringField
      FieldName = 'CSTICMS_Entrada'
      Origin = 'CSTICMS_Entrada'
      Size = 3
    end
    object ProdutosCSTICMS_Saida: TStringField
      FieldName = 'CSTICMS_Saida'
      Origin = 'CSTICMS_Saida'
      Size = 3
    end
    object ProdutosBeneficio_FiscalEnt: TStringField
      FieldName = 'Beneficio_FiscalEnt'
      Origin = 'Beneficio_FiscalEnt'
      Size = 8
    end
    object ProdutosBeneficio_FiscalSai: TStringField
      FieldName = 'Beneficio_FiscalSai'
      Origin = 'Beneficio_FiscalSai'
      Size = 8
    end
    object ProdutosCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object ProdutosUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      Size = 3
    end
    object ProdutosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object ProdutosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 963
    Top = 151
  end
  object CSTCBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCBS'
      '')
    Left = 1110
    Top = 203
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 1110
    Top = 249
  end
  object CSTIBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIBS')
    Left = 1107
    Top = 107
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 1107
    Top = 151
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      '      ,ES'
      'from CFOP '
      'where Desativada <> 1')
    Left = 652
    Top = 107
    object CFOPCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      EditMask = '#.###;0'
      FixedChar = True
      Size = 4
    end
    object CFOPDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 80
    end
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 652
    Top = 151
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Tipo = '#39'IMP'#39
      '      ,Processo'
      'from ProcessosImp'
      'where isnull(DUIMP, '#39#39') <> '#39#39
      'select Tipo = '#39'EXP'#39
      '      ,Processo'
      'from ProcessosExp'
      'where isnull(DE, '#39#39') <> '#39#39)
    Left = 710
    Top = 107
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 710
    Top = 151
  end
  object CSTIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIPI')
    Left = 710
    Top = 203
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 710
    Top = 249
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTPIS')
    Left = 795
    Top = 203
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 795
    Top = 249
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCOFINS')
    Left = 1031
    Top = 107
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 1031
    Top = 151
  end
  object CSTICMSB: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 1036
    Top = 203
  end
  object dsCSTICMSB: TDataSource
    DataSet = CSTICMSB
    Left = 1036
    Top = 249
  end
  object ICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ICMS')
    Left = 886
    Top = 203
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 886
    Top = 249
  end
  object CSTICMSA: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 965
    Top = 203
  end
  object dsCSTICMSA: TDataSource
    DataSet = CSTICMSA
    Left = 965
    Top = 249
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 886
    Top = 107
  end
  object dsTabPISCOFINS: TDataSource
    DataSet = TabPISCOFINS
    Left = 886
    Top = 151
  end
  object PedidosNF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 1174
    Top = 107
  end
  object dsPedidosNF: TDataSource
    DataSet = PedidosNF
    Left = 1174
    Top = 151
  end
  object OpFiscal: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscal')
    Left = 1229
    Top = 107
  end
  object dsOPFiscal: TDataSource
    DataSet = OpFiscal
    Left = 1229
    Top = 151
  end
  object tFormulas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 597
    Top = 108
  end
  object dstFormulas: TDataSource
    DataSet = tFormulas
    Left = 597
    Top = 150
  end
  object Campos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 601
    Top = 205
  end
  object dsCampos: TDataSource
    DataSet = Campos
    Left = 603
    Top = 255
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 654
    Top = 38
  end
  object tNCM: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 1176
    Top = 203
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 1176
    Top = 249
  end
  object tNCMICMS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 1236
    Top = 203
  end
  object dstNCMICMS: TDataSource
    DataSet = tNCMICMS
    Left = 1236
    Top = 249
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = iif(CNPJ <> '#39#39', replicate('#39'0'#39', 14-len(CNPJ))+C' +
        'NPJ, replicate('#39'0'#39', 14-len(CPF))+CPF)'
      'from Destinatarios')
    Left = 605
    Top = 315
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 605
    Top = 362
  end
  object ProdutosPauta: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosPauta')
    Left = 969
    Top = 304
  end
  object dsProdutosPauta: TDataSource
    DataSet = ProdutosPauta
    Left = 969
    Top = 350
  end
end
