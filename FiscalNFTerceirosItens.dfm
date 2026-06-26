object fFiscalNFTerceirosItens: TfFiscalNFTerceirosItens
  Left = 0
  Top = 0
  Width = 997
  Height = 794
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 794
    Hint = ''
    ParentColor = False
    Align = alClient
    AutoScroll = True
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    TabOrder = 0
    DesignSize = (
      980
      777)
    ScrollHeight = 1616
    ScrollWidth = 997
    object UniPanel3: TUniPanel
      Left = 54
      Top = 15
      Width = 784
      Height = 1410
      Hint = ''
      Anchors = [akTop]
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Ficha'#39';'#13#10'}')
      BorderStyle = ubsNone
      ShowCaption = False
      Caption = 'UniPanel3'
      Color = clNone
      DesignSize = (
        784
        1410)
      object UniPanel11: TUniPanel
        Left = 12
        Top = 1171
        Width = 761
        Height = 143
        Hint = ''
        TabOrder = 7
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Ativo Imobilizado - CIAP'
        Caption = ''
        object cCIAP_AliquotaICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 35
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'CIAP_AliquotaICMS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Percentual'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCIAP_BCICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'CIAP_BCICMS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'Base de C'#225'lculo'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCIAP_ValorICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'CIAP_ValorICMS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCIAP_TipoItem: TUniDBFormattedNumberEdit
          Left = 8
          Top = 90
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'CIAP_TipoItem'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'Tipo de Mercadoria'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel12: TUniPanel
        Left = 12
        Top = 1010
        Width = 761
        Height = 145
        Hint = ''
        TabOrder = 6
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Reforma Tribut'#225'ria - IS / CBS / IBS'
        Caption = ''
        object cCSTCBS: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTCBS'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST CBS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cTotalCBS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_CBS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_CBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCCBS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC CBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_CBS: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_CBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCSTIBS: TUniDBLookupComboBox
          Left = 8
          Top = 89
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTIBS'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 10
          Color = clWindow
          FieldLabel = 'CST IBS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cTotalIBS: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 9
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_IBS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCIBS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'BC IBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_IBS: TUniDBFormattedNumberEdit
          Left = 270
          Top = 62
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IBS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel13: TUniPanel
        Left = 12
        Top = 11
        Width = 761
        Height = 382
        Hint = ''
        Anchors = [akTop]
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        Title = 'Produto'
        Caption = ''
        object cQtde: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Quantidade'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'Quantidade'
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_Desconto: TUniDBFormattedNumberEdit
          Left = 8
          Top = 305
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Desconto'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 9
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cProduto: TUniDBLookupComboBox
          Left = 8
          Top = 8
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;NCM;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 2
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Codigo_Mercadoria'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Produto'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
          Mode = umNameValue
        end
        object cCFOP: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CFOP'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 2
          Color = clWindow
          FieldLabel = 'CFOP'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cProcesso: TUniDBLookupComboBox
          Left = 8
          Top = 62
          Width = 502
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Tipo;Declaracao;Processo'
          KeyField = 'Processo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Processo'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 3
          Color = clWindow
          FieldLabel = 'Processo'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cValor_Unitario: TUniDBFormattedNumberEdit
          Left = 8
          Top = 170
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Unitario'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Valor Unit'#225'rio'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cNCM: TUniDBEdit
          Left = 8
          Top = 332
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'NCM'
          DataSource = dsItens
          TabOrder = 4
          TabStop = False
          ReadOnly = True
          FieldLabel = 'NCM'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cPeso_Liquido: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Liquido'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 5
          SelectOnFocus = True
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPeso_Bruto: TUniDBFormattedNumberEdit
          Left = 250
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Bruto'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'Peso Bruto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cEmbarque: TUniDBLookupComboBox
          Left = 8
          Top = 89
          Width = 502
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Embarque'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 10
          Color = clWindow
          FieldLabel = 'Embarque'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cValor_UnitarioOrig: TUniDBFormattedNumberEdit
          Left = 8
          Top = 224
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_UnitarioOrig'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 11
          TabStop = False
          Color = 15720158
          ReadOnly = True
          SelectOnFocus = True
          FieldLabel = 'Valor Unit'#225'rio (NF)'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_Total: TUniDBFormattedNumberEdit
          Left = 8
          Top = 251
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Total'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 12
          TabStop = False
          Color = 15720158
          ReadOnly = True
          SelectOnFocus = True
          FieldLabel = 'Total'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object bDetalhe: TUniBitBtn
          Left = 254
          Top = 147
          Width = 88
          Height = 44
          Hint = ''
          Caption = 'Detalhe'
          TabOrder = 13
          ScaleButton = False
          IconAlign = iaCenter
        end
        object bSerial: TUniBitBtn
          Left = 344
          Top = 147
          Width = 115
          Height = 44
          Hint = ''
          Caption = 'Serial/Chassi'
          TabOrder = 14
          ScaleButton = False
          IconAlign = iaCenter
        end
        object cValor_Inventario: TUniDBFormattedNumberEdit
          Left = 8
          Top = 278
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Inventario'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 15
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cConsumo_Energia: TUniDBFormattedNumberEdit
          Left = 8
          Top = 197
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Consumo_Energia'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 16
          SelectOnFocus = True
          FieldLabel = 'Consumo Energia'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel5: TUniPanel
        Left = 12
        Top = 401
        Width = 761
        Height = 227
        Hint = ''
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Imposto sobre Circula'#231#227'o de Mercadorias e Servi'#231'os - ICMS'
        Caption = ''
        object cValor_BCICMSOp: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSOp'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Oper.'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSOp'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSOp: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBLookupComboBox3: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTICMS_TabA'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST - Tabela A'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cCSTICMS: TUniDBLookupComboBox
          Left = 8
          Top = 62
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTICMS_TabB'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 6
          Color = clWindow
          FieldLabel = 'CST -  Tabela B'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cAliquota_ICMSOp: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSOp'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMSST: TUniDBFormattedNumberEdit
          Left = 397
          Top = 143
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSST'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSST: TUniFormattedNumberEdit
          Left = 575
          Top = 143
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 13
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_BCICMSST: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSST'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = 'BC ICMS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSST: TUniDBFormattedNumberEdit
          Left = 270
          Top = 143
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSST'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_MVA: TUniDBFormattedNumberEdit
          Left = 270
          Top = 171
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_MVA'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 15
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCMVA: TUniDBFormattedNumberEdit
          Left = 8
          Top = 171
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCMVA'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 14
          SelectOnFocus = True
          FieldLabel = 'BC MVA'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_MVA: TUniDBFormattedNumberEdit
          Left = 397
          Top = 171
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_MVA'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 16
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalMVA: TUniFormattedNumberEdit
          Left = 575
          Top = 171
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 17
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_OutrasICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 89
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_OutrasICMS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'Outras de ICMS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_IsentasICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IsentasICMS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Isentas de ICMS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalOutrasICMS: TUniFormattedNumberEdit
          Left = 575
          Top = 89
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 18
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalIsentasICMS: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 9
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel6: TUniPanel
        Left = 12
        Top = 795
        Width = 761
        Height = 93
        Hint = ''
        TabOrder = 4
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Programa de Integra'#231#227'o Social - PIS'
        Caption = ''
        object cValor_BCPIS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCPIS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC PIS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalPIS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_PIS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_PIS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_PIS: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_PIS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCSTPIS: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTPIS'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST PIS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
      end
      object UniPanel7: TUniPanel
        Left = 12
        Top = 636
        Width = 761
        Height = 145
        Hint = ''
        TabOrder = 3
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Imposto sobre Produtos Industrializados - IPI'
        Caption = ''
        object cCSTIPI: TUniDBLookupComboBox
          Left = 8
          Top = 89
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTIPI'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 9
          Color = clWindow
          FieldLabel = 'CST IPI'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cAliquota_IPI: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IPI'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIPI'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_IPI: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IPI'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_OutrasIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 35
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_OutrasIPI'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 5
          SelectOnFocus = True
          FieldLabel = 'Outras de IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalOutrasIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 35
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 6
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_IsentasIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IsentasIPI'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'Isentas de IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIsentasIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 8
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel9: TUniPanel
        Left = 12
        Top = 902
        Width = 761
        Height = 93
        Hint = ''
        TabOrder = 5
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Contribui'#231#227'o para o Financiamento da Seguridade Social - COFINS'
        Caption = ''
        object cValor_BCCOFINS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCOFINS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC COFINS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalCOFINS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_COFINS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_COFINS: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_COFINS'
          DataSource = dsItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCSTCOFINS: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTCOFINS'
          DataSource = dsItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST COFINS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      Left = 336
      Top = 1599
      Width = 256
      Height = 17
      Hint = ''
      ParentColor = False
      TabOrder = 2
    end
  end
  object Itens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'Empresa;Chave'
    MasterFields = 'Empresa;Chave'
    DetailFields = 'Empresa;Chave'
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * '
      
        '      ,Estoque_Minimo = isnull((select Estoque_Minimo from Produ' +
        'tos where Codigo = NotasItens.Codigo_Mercadoria), 0)'
      'from NotasItens'
      '')
    Left = 863
    Top = 38
    object ItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object ItensNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
    end
    object ItensData_Emissao: TDateField
      FieldName = 'Data_Emissao'
    end
    object ItensDestinatario: TSmallintField
      FieldName = 'Destinatario'
    end
    object ItensES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object ItensEmissao: TStringField
      FieldName = 'Emissao'
      Origin = 'Emissao'
      FixedChar = True
      Size = 1
    end
    object ItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object ItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object ItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object ItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object ItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.##;0'
      FixedChar = True
      Size = 8
    end
    object ItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
    end
    object ItensUnidade_Medida: TStringField
      FieldName = 'Unidade_Medida'
      Origin = 'Unidade_Medida'
      FixedChar = True
      Size = 3
    end
    object ItensQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
    end
    object ItensCSTICMS_TabA: TStringField
      FieldName = 'CSTICMS_TabA'
      Origin = 'CSTICMS_TabA'
      FixedChar = True
      Size = 2
    end
    object ItensCSTICMS_TabB: TStringField
      FieldName = 'CSTICMS_TabB'
      Origin = 'CSTICMS_TabB'
      FixedChar = True
      Size = 3
    end
    object ItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object ItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object ItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object ItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object ItensPeso_Liquido: TBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      Precision = 18
    end
    object ItensPeso_Bruto: TBCDField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      Precision = 18
    end
    object ItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object ItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object ItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object ItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object ItensICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'ICMSST_Anterior'
    end
    object ItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object ItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object ItensCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'Cancelada'
    end
    object ItensDenegada: TBooleanField
      FieldName = 'Denegada'
      Origin = 'Denegada'
    end
    object ItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object ItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object ItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object ItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object ItensQuantidade_Original: TBCDField
      FieldName = 'Quantidade_Original'
      Origin = 'Quantidade_Original'
      Precision = 18
    end
    object ItensUnidade_Original: TStringField
      FieldName = 'Unidade_Original'
      Origin = 'Unidade_Original'
      Size = 3
    end
    object ItensReducao_ICMSST: TBCDField
      FieldName = 'Reducao_ICMSST'
      Origin = 'Reducao_ICMSST'
      Precision = 18
    end
    object ItensNota_Referencia: TStringField
      FieldName = 'Nota_Referencia'
      Origin = 'Nota_Referencia'
      Size = 44
    end
    object ItensData_Referencia: TSQLTimeStampField
      FieldName = 'Data_Referencia'
      Origin = 'Data_Referencia'
    end
    object ItensNumero_Referencia: TIntegerField
      FieldName = 'Numero_Referencia'
      Origin = 'Numero_Referencia'
    end
    object ItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object ItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object ItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object ItensChave: TStringField
      FieldName = 'Chave'
      Origin = 'Chave'
      Size = 44
    end
    object ItensBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
      Size = 10
    end
    object ItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object ItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object ItensPercentual_Beneficio: TBCDField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      Precision = 18
    end
    object ItensPercentual_ICMSMono: TBCDField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      Precision = 18
    end
    object ItensPercentual_ICMSMonoRet: TBCDField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      Precision = 18
    end
    object ItensFator_Produto: TBCDField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
      Precision = 18
    end
    object ItensValor_Unitario: TBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Precision = 18
    end
    object ItensValor_Total: TBCDField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      Precision = 18
    end
    object ItensAliquota_IPI: TBCDField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      Precision = 18
    end
    object ItensValor_IPI: TBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      Precision = 18
    end
    object ItensTotal_IPI: TBCDField
      FieldName = 'Total_IPI'
      Origin = 'Total_IPI'
      Precision = 18
    end
    object ItensAliquota_II: TBCDField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      Precision = 18
    end
    object ItensValor_II: TBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      Precision = 18
    end
    object ItensValor_BCICMSOp: TBCDField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
      Precision = 18
    end
    object ItensAliquota_ICMSOp: TBCDField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
      Precision = 18
    end
    object ItensValor_ICMSOp: TBCDField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
      Precision = 18
    end
    object ItensValor_BCICMSST: TBCDField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      Precision = 18
    end
    object ItensAliquota_ICMSST: TBCDField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      Precision = 18
    end
    object ItensValor_ICMSST: TBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      Precision = 18
    end
    object ItensAliquota_MVA: TBCDField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      Precision = 18
    end
    object ItensValor_MVA: TBCDField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      Precision = 18
    end
    object ItensAliquota_ICMSReducao: TBCDField
      FieldName = 'Aliquota_ICMSReducao'
      Origin = 'Aliquota_ICMSReducao'
      Precision = 18
    end
    object ItensValor_ICMSReducao: TBCDField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'Valor_ICMSReducao'
      Precision = 18
    end
    object ItensValor_Seguro: TBCDField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      Precision = 18
    end
    object ItensValor_Frete: TBCDField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      Precision = 18
    end
    object ItensValor_Despesa: TBCDField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      Precision = 18
    end
    object ItensAliquota_PIS: TBCDField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      Precision = 18
    end
    object ItensValor_PIS: TBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      Precision = 18
    end
    object ItensAliquota_COFINS: TBCDField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      Precision = 18
    end
    object ItensValor_COFINS: TBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      Precision = 18
    end
    object ItensValor_IsentasICMS: TBCDField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      Precision = 18
    end
    object ItensValor_OutrasICMS: TBCDField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      Precision = 18
    end
    object ItensValor_IsentasIPI: TBCDField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      Precision = 18
    end
    object ItensValor_OutrasIPI: TBCDField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      Precision = 18
    end
    object ItensLucro: TBCDField
      FieldName = 'Lucro'
      Origin = 'Lucro'
      Precision = 18
    end
    object ItensLucro_Valor: TBCDField
      FieldName = 'Lucro_Valor'
      Origin = 'Lucro_Valor'
      Precision = 18
    end
    object ItensValor_BCIPI: TBCDField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      Precision = 18
    end
    object ItensRateio_ICMSProcesso: TBCDField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
      Precision = 18
    end
    object ItensDesconto: TBCDField
      FieldName = 'Desconto'
      Origin = 'Desconto'
      Precision = 18
    end
    object ItensAliquota_PISRed: TBCDField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      Precision = 18
    end
    object ItensAliquota_COFINSRed: TBCDField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      Precision = 18
    end
    object ItensAliquota_ICMSIntegral: TBCDField
      FieldName = 'Aliquota_ICMSIntegral'
      Origin = 'Aliquota_ICMSIntegral'
      Precision = 18
    end
    object ItensValor_BCMVA: TBCDField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      Precision = 18
    end
    object ItensValor_Dumping: TBCDField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      Precision = 18
    end
    object ItensTotal_Item: TBCDField
      FieldName = 'Total_Item'
      Origin = 'Total_Item'
      Precision = 18
    end
    object ItensRateio_SISCOMEX: TBCDField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      Precision = 18
    end
    object ItensValor_BCICMSOperApuracao: TBCDField
      FieldName = 'Valor_BCICMSOperApuracao'
      Origin = 'Valor_BCICMSOperApuracao'
      Precision = 18
    end
    object ItensValor_ICMSOperApuracao: TBCDField
      FieldName = 'Valor_ICMSOperApuracao'
      Origin = 'Valor_ICMSOperApuracao'
      Precision = 18
    end
    object ItensMedia_BCR: TBCDField
      FieldName = 'Media_BCR'
      Origin = 'Media_BCR'
      Precision = 18
    end
    object ItensValor_PIS2: TBCDField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      Precision = 18
    end
    object ItensValor_COFINS2: TBCDField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      Precision = 18
    end
    object ItensValor_DespesasOutros: TBCDField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'Valor_DespesasOutros'
      Precision = 18
    end
    object ItensValor_BCPIS: TBCDField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      Precision = 18
    end
    object ItensTotal_Impostos: TBCDField
      FieldName = 'Total_Impostos'
      Origin = 'Total_Impostos'
      Precision = 18
    end
    object ItensAliquota_IRPJ: TBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      Precision = 18
    end
    object ItensValor_IRPJ: TBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      Precision = 18
    end
    object ItensAliquota_CSLL: TBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      Precision = 18
    end
    object ItensValor_CSLL: TBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      Precision = 18
    end
    object ItensComissao: TBCDField
      FieldName = 'Comissao'
      Origin = 'Comissao'
      Precision = 18
    end
    object ItensComissao_Valor: TBCDField
      FieldName = 'Comissao_Valor'
      Origin = 'Comissao_Valor'
      Precision = 18
    end
    object ItensValor_Inventario: TBCDField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      Precision = 18
    end
    object ItensValor_BCICMSDest: TBCDField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      Precision = 18
    end
    object ItensAliquota_ICMSDest: TBCDField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      Precision = 18
    end
    object ItensValor_ICMSDest: TBCDField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      Precision = 18
    end
    object ItensDIFAL_Valor: TBCDField
      FieldName = 'DIFAL_Valor'
      Origin = 'DIFAL_Valor'
      Precision = 18
    end
    object ItensDIFAL_PercOrig: TBCDField
      FieldName = 'DIFAL_PercOrig'
      Origin = 'DIFAL_PercOrig'
      Precision = 18
    end
    object ItensDIFAL_ValorOrig: TBCDField
      FieldName = 'DIFAL_ValorOrig'
      Origin = 'DIFAL_ValorOrig'
      Precision = 18
    end
    object ItensDIFAL_PercDest: TBCDField
      FieldName = 'DIFAL_PercDest'
      Origin = 'DIFAL_PercDest'
      Precision = 18
    end
    object ItensDIFAL_ValorDest: TBCDField
      FieldName = 'DIFAL_ValorDest'
      Origin = 'DIFAL_ValorDest'
      Precision = 18
    end
    object ItensFCP_Aliquota: TBCDField
      FieldName = 'FCP_Aliquota'
      Origin = 'FCP_Aliquota'
      Precision = 18
    end
    object ItensFCP_ValorDest: TBCDField
      FieldName = 'FCP_ValorDest'
      Origin = 'FCP_ValorDest'
      Precision = 18
    end
    object ItensFCP_ICMSOrig: TBCDField
      FieldName = 'FCP_ICMSOrig'
      Origin = 'FCP_ICMSOrig'
      Precision = 18
    end
    object ItensFCP_ICMSDest: TBCDField
      FieldName = 'FCP_ICMSDest'
      Origin = 'FCP_ICMSDest'
      Precision = 18
    end
    object ItensValor_BCFCPST: TBCDField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      Precision = 18
    end
    object ItensValor_FCPST: TBCDField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      Precision = 18
    end
    object ItensValor_BCFCP: TBCDField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      Precision = 18
    end
    object ItensValor_FCP: TBCDField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      Precision = 18
    end
    object ItensValor_ICMSDesonerado: TBCDField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      Precision = 18
    end
    object ItensValor_ICMSSubAnt: TBCDField
      FieldName = 'Valor_ICMSSubAnt'
      Origin = 'Valor_ICMSSubAnt'
      Precision = 18
    end
    object ItensAliquota_ICMSSubAnt: TBCDField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'Aliquota_ICMSSubAnt'
      Precision = 18
    end
    object ItensValor_ICMSAnt: TBCDField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      Precision = 18
    end
    object ItensValor_CIF: TBCDField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      Precision = 18
    end
    object ItensFator_Cambio: TBCDField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
      Precision = 18
    end
    object ItensAliquota_ICMSEntrada: TBCDField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      Precision = 18
    end
    object ItensValor_Pauta: TBCDField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      Precision = 18
    end
    object ItensValor_AFRMM: TBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      Precision = 18
    end
    object ItensRateio_FreteTerrNac: TBCDField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      Precision = 18
    end
    object ItensValor_BCII: TBCDField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      Precision = 18
    end
    object ItensAliquota_ICMSDif: TBCDField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      Precision = 18
    end
    object ItensAliquota_ICMSPresumido: TBCDField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      Precision = 18
    end
    object ItensAliquota_ICMSReducao2: TBCDField
      FieldName = 'Aliquota_ICMSReducao2'
      Origin = 'Aliquota_ICMSReducao2'
      Precision = 18
    end
    object ItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object ItensDIFAL_ValorST: TBCDField
      FieldName = 'DIFAL_ValorST'
      Origin = 'DIFAL_ValorST'
      Precision = 18
    end
    object ItensValor_BCDIFAL: TBCDField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      Precision = 18
    end
    object ItensValor_BCDIFALST: TBCDField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      Precision = 18
    end
    object ItensValor_BCICMSMono: TBCDField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      Precision = 18
    end
    object ItensValor_BCICMSMonoRet: TBCDField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      Precision = 18
    end
    object ItensValor_BCICMSPresumido: TBCDField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      Precision = 18
    end
    object ItensValor_COFINSST: TBCDField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      Precision = 18
    end
    object ItensValor_ICMSDif: TBCDField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      Precision = 18
    end
    object ItensValor_ICMSMono: TBCDField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      Precision = 18
    end
    object ItensValor_ICMSMonoRet: TBCDField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      Precision = 18
    end
    object ItensValor_ICMSPresumido: TBCDField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      Precision = 18
    end
    object ItensValor_PISST: TBCDField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      Precision = 18
    end
    object ItensValor_BCIBS: TBCDField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
      Precision = 18
    end
    object ItensAliquota_IBS: TBCDField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
      Precision = 18
    end
    object ItensValor_IBS: TBCDField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
      Precision = 18
    end
    object ItensValor_BCCBS: TBCDField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
      Precision = 18
    end
    object ItensAliquota_CBS: TBCDField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
      Precision = 18
    end
    object ItensValor_CBS: TBCDField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
      Precision = 18
    end
    object ItensValor_BCIS: TBCDField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
      Precision = 18
    end
    object ItensAliquota_IS: TBCDField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
      Precision = 18
    end
    object ItensValor_IS: TBCDField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
      Precision = 18
    end
    object ItensConsumo_Energia: TBCDField
      FieldName = 'Consumo_Energia'
      Origin = 'Consumo_Energia'
      Precision = 18
    end
    object ItensCIAP_BCICMS: TBCDField
      FieldName = 'CIAP_BCICMS'
      Origin = 'CIAP_BCICMS'
      Precision = 18
    end
    object ItensCIAP_AliquotaICMS: TBCDField
      FieldName = 'CIAP_AliquotaICMS'
      Origin = 'CIAP_AliquotaICMS'
      Precision = 18
    end
    object ItensCIAP_ValorICMS: TBCDField
      FieldName = 'CIAP_ValorICMS'
      Origin = 'CIAP_ValorICMS'
      Precision = 18
    end
    object ItensCIAP_Parcela: TBCDField
      FieldName = 'CIAP_Parcela'
      Origin = 'CIAP_Parcela'
      Precision = 18
    end
    object ItensValor_ICMSOpOrig: TBCDField
      FieldName = 'Valor_ICMSOpOrig'
      Origin = 'Valor_ICMSOpOrig'
      Precision = 18
    end
    object ItensValor_ICMSSTOrig: TBCDField
      FieldName = 'Valor_ICMSSTOrig'
      Origin = 'Valor_ICMSSTOrig'
      Precision = 18
    end
    object ItensValor_PISOrig: TBCDField
      FieldName = 'Valor_PISOrig'
      Origin = 'Valor_PISOrig'
      Precision = 18
    end
    object ItensValor_COFINSOrig: TBCDField
      FieldName = 'Valor_COFINSOrig'
      Origin = 'Valor_COFINSOrig'
      Precision = 18
    end
    object ItensValor_IPIOrig: TBCDField
      FieldName = 'Valor_IPIOrig'
      Origin = 'Valor_IPIOrig'
      Precision = 18
    end
    object ItensValor_BCCOFINS: TBCDField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      Precision = 18
    end
    object ItensAliquota_PISOrig: TBCDField
      FieldName = 'Aliquota_PISOrig'
      Origin = 'Aliquota_PISOrig'
      Precision = 18
    end
    object ItensAliquota_COFINSOrig: TBCDField
      FieldName = 'Aliquota_COFINSOrig'
      Origin = 'Aliquota_COFINSOrig'
      Precision = 18
    end
    object ItensValor_BCICMSSTOrig: TBCDField
      FieldName = 'Valor_BCICMSSTOrig'
      Origin = 'Valor_BCICMSSTOrig'
      Precision = 18
    end
    object ItensTrava_ValorInv: TBCDField
      FieldName = 'Trava_ValorInv'
      Origin = 'Trava_ValorInv'
      Precision = 18
    end
    object ItensValor_UnitarioOrig: TBCDField
      FieldName = 'Valor_UnitarioOrig'
      Origin = 'Valor_UnitarioOrig'
      Precision = 18
    end
    object ItensCIAP_TipoItem: TSmallintField
      FieldName = 'CIAP_TipoItem'
      Origin = 'CIAP_TipoItem'
    end
    object ItensInventario_Terceiros: TBooleanField
      FieldName = 'Inventario_Terceiros'
      Origin = 'Inventario_Terceiros'
    end
    object ItensItem_Referencia: TSmallintField
      FieldName = 'Item_Referencia'
      Origin = 'Item_Referencia'
    end
    object ItensOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object ItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      EditMask = '#.###;0'
      Size = 4
    end
    object ItensEstoque_Minimo: TBCDField
      FieldName = 'Estoque_Minimo'
      Origin = 'Estoque_Minimo'
      ReadOnly = True
      Required = True
      Precision = 18
    end
    object ItensData_ES: TDateField
      FieldName = 'Data_ES'
      Origin = 'Data_ES'
    end
    object ItensDeclaracao: TStringField
      FieldName = 'Declaracao'
      Origin = 'Declaracao'
      Size = 15
    end
    object ItensItem_Declaracao: TSmallintField
      FieldName = 'Item_Declaracao'
      Origin = 'Item_Declaracao'
    end
    object ItensComplementar: TBooleanField
      FieldName = 'Complementar'
    end
    object ItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Origin = 'CSTCBS'
      FixedChar = True
      Size = 3
    end
    object ItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Origin = 'CSTIBS'
      FixedChar = True
      Size = 3
    end
    object ItensValor_Desconto: TBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      Precision = 18
    end
    object ItensValor_TotalNota: TFMTBCDField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      Precision = 18
      Size = 2
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 863
    Top = 87
  end
end
