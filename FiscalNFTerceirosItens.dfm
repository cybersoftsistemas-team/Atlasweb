object fFiscalNFTerceirosItens: TfFiscalNFTerceirosItens
  Left = 0
  Top = 0
  Width = 1119
  Height = 794
  OnCreate = UniFrameCreate
  TabOrder = 0
  object Painel: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1119
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
      1102
      777)
    ScrollHeight = 1616
    ScrollWidth = 1119
    object Ficha: TUniPanel
      Left = 29
      Top = 15
      Width = 784
      Height = 1351
      Hint = ''
      Anchors = [akTop]
      TabOrder = 1
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Ficha'#39';'#13#10'}')
      BorderStyle = ubsNone
      ShowCaption = False
      Caption = 'Ficha'
      Color = clTeal
      DesignSize = (
        784
        1351)
      object UniPanel11: TUniPanel
        Left = 12
        Top = 1181
        Width = 761
        Height = 148
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
        Top = 1020
        Width = 761
        Height = 150
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
          Left = 64
          Top = -60
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
          DataField = 'CSTCBS'
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          ListSource = dsCSTCBS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTIBS'
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTCBS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTCBS'
          DataSource = dsItensNF
          AnyMatch = True
          TabOrder = 11
          Color = clWindow
          FieldLabel = 'CST IBS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
      end
      object UniPanel13: TUniPanel
        Left = 12
        Top = 12
        Width = 761
        Height = 394
        Hint = ''
        Anchors = [akTop]
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 6
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
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
          ListSource = dsCFOP
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CFOP'
          DataSource = dsItensNF
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          FieldLabel = 'CFOP'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cProcesso_Imp: TUniDBLookupComboBox
          Left = 8
          Top = 62
          Width = 368
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Processo;DUIMP'
          ListSource = dsProcessoImp
          KeyField = 'Processo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Processo_Imp'
          DataSource = dsItensNF
          AnyMatch = True
          TabOrder = 2
          Color = clWindow
          FieldLabel = 'Processo (Imp)'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
          OnExit = cProcesso_ImpExit
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 7
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
          DataSource = dsItensNF
          TabOrder = 3
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPeso_Bruto: TUniDBFormattedNumberEdit
          Left = 252
          Top = 116
          Width = 258
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Bruto'
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 5
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
          ListField = 'Navio_Nome; Processo'
          ListSource = dsEmbarques
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Embarque'
          DataSource = dsItensNF
          AnyMatch = True
          TabOrder = 9
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 10
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 11
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
          TabOrder = 12
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
          TabOrder = 13
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 14
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
          DataSource = dsItensNF
          Alignment = taRightJustify
          TabOrder = 15
          SelectOnFocus = True
          FieldLabel = 'Consumo Energia'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cProcesso_Exp: TUniDBLookupComboBox
          Left = 382
          Top = 62
          Width = 368
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Processo;DUE'
          ListSource = dsProcessoExp
          KeyField = 'Processo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Processo_Exp'
          DataSource = dsItensNF
          AnyMatch = True
          TabOrder = 16
          Color = clWindow
          FieldLabel = 'Processo (Exp)'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
          OnExit = cProcesso_ExpExit
        end
        object cProduto: TUniDBLookupComboBox
          Left = 8
          Top = 8
          Width = 742
          Height = 25
          Hint = ''
          ListField = 'Codigo;NCM;Descricao_Reduzida'
          ListSource = dsProdutos
          KeyField = 'Codigo'
          ListFieldIndex = 2
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Codigo_Mercadoria'
          DataSource = dsItensNF
          ParentFont = False
          AnyMatch = True
          TabOrder = 17
          Color = clWindow
          AutoEdit = False
          FieldLabel = 'Produto'
          Style = csDropDown
        end
      end
      object UniPanel5: TUniPanel
        Left = 12
        Top = 416
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          ListSource = dsCSTICMSTabA
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTICMS_TabA'
          DataSource = dsItensNF
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
          ListSource = dsCSTICMSTabB
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTICMS_TabB'
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          Top = 170
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_MVA'
          DataSource = dsItensNF
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
          Top = 170
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCMVA'
          DataSource = dsItensNF
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
          Top = 170
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_MVA'
          DataSource = dsItensNF
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
          Top = 170
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
        Top = 811
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          ListSource = dsCSTPIS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTPIS'
          DataSource = dsItensNF
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
        Top = 654
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
          ListSource = dsCSTIPI
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTIPI'
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
        Top = 915
        Width = 761
        Height = 94
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
          DataSource = dsItensNF
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
          Left = 408
          Top = -155
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINS'
          DataSource = dsItensNF
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
          DataSource = dsItensNF
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
          ListSource = dsCSTCOFINS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CSTCOFINS'
          DataSource = dsItensNF
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
  object dsItensNF: TDataSource
    DataSet = ItensNF
    Left = 848
    Top = 71
  end
  object Produtos: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Codigo_Fabricante'
      '      ,NCM'
      '      ,Descricao_Reduzida'
      '      ,UM'
      'from Produtos'
      'where Desativado <> 1'
      'order by Descricao_Reduzida')
    Left = 848
    Top = 121
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 848
    Top = 170
  end
  object CFOP: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CFOP'
      '')
    Left = 848
    Top = 219
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 848
    Top = 263
  end
  object ProcessoImp: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProcessosImp'
      '')
    Left = 848
    Top = 312
  end
  object dsProcessoImp: TDataSource
    DataSet = ProcessoImp
    Left = 848
    Top = 359
  end
  object ProcessoExp: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ProcessosExp'
      '')
    Left = 848
    Top = 406
  end
  object dsProcessoExp: TDataSource
    DataSet = ProcessoExp
    Left = 848
    Top = 455
  end
  object NCM: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NCM'
      '')
    Left = 848
    Top = 501
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 848
    Top = 550
  end
  object ItensNF: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NotasItens ')
    Left = 848
    Top = 25
    object ItensNFNota_id: TIntegerField
      FieldName = 'Nota_id'
      Origin = 'Nota_id'
      Required = True
    end
    object ItensNFEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object ItensNFES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object ItensNFItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object ItensNFCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object ItensNFCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object ItensNFDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object ItensNFNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object ItensNFEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
    end
    object ItensNFUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object ItensNFQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
      Size = 6
    end
    object ItensNFCSTICMS_Terceiros: TStringField
      FieldName = 'CSTICMS_Terceiros'
      Origin = 'CSTICMS_Terceiros'
      FixedChar = True
      Size = 3
    end
    object ItensNFCSTICMS_TabA: TStringField
      FieldName = 'CSTICMS_TabA'
      Origin = 'CSTICMS_TabA'
      FixedChar = True
      Size = 2
    end
    object ItensNFCSTICMS_TabB: TStringField
      FieldName = 'CSTICMS_TabB'
      Origin = 'CSTICMS_TabB'
      FixedChar = True
      Size = 3
    end
    object ItensNFCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object ItensNFCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object ItensNFCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object ItensNFCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Origin = 'CSTCBS'
      FixedChar = True
      Size = 3
    end
    object ItensNFCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Origin = 'CSTIBS'
      FixedChar = True
      Size = 3
    end
    object ItensNFAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object ItensNFPeso_Liquido: TFMTBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      Precision = 18
      Size = 6
    end
    object ItensNFPeso_Bruto: TFMTBCDField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      Precision = 18
      Size = 6
    end
    object ItensNFVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object ItensNFICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'ICMSST_Anterior'
    end
    object ItensNFModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object ItensNFModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object ItensNFDeclaracao: TStringField
      FieldName = 'Declaracao'
      Origin = 'Declaracao'
      Size = 15
    end
    object ItensNFProcesso_Imp: TStringField
      FieldName = 'Processo_Imp'
      Origin = 'Processo_Imp'
      Size = 15
    end
    object ItensNFProcesso_Exp: TStringField
      FieldName = 'Processo_Exp'
      Origin = 'Processo_Exp'
      Size = 15
    end
    object ItensNFReducao_ICMSST: TFMTBCDField
      FieldName = 'Reducao_ICMSST'
      Origin = 'Reducao_ICMSST'
      Precision = 18
      Size = 6
    end
    object ItensNFNota_Referencia: TStringField
      FieldName = 'Nota_Referencia'
      Origin = 'Nota_Referencia'
      Size = 44
    end
    object ItensNFData_Referencia: TSQLTimeStampField
      FieldName = 'Data_Referencia'
      Origin = 'Data_Referencia'
    end
    object ItensNFNumero_Referencia: TIntegerField
      FieldName = 'Numero_Referencia'
      Origin = 'Numero_Referencia'
    end
    object ItensNFCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object ItensNFCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object ItensNFPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object ItensNFOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object ItensNFBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object ItensNFEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object ItensNFPercentual_Beneficio: TFMTBCDField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      Precision = 18
      Size = 6
    end
    object ItensNFPercentual_ICMSMono: TFMTBCDField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      Precision = 18
      Size = 6
    end
    object ItensNFPercentual_ICMSMonoRet: TFMTBCDField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      Precision = 18
      Size = 6
    end
    object ItensNFFator_Produto: TFMTBCDField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Unitario: TFMTBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_UnitarioOrig: TFMTBCDField
      FieldName = 'Valor_UnitarioOrig'
      Origin = 'Valor_UnitarioOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_IPI: TFMTBCDField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IPI: TFMTBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_II: TFMTBCDField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_II: TFMTBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSOp: TFMTBCDField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSOp: TFMTBCDField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSOp: TFMTBCDField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSST: TFMTBCDField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSST: TFMTBCDField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSST: TFMTBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_MVA: TFMTBCDField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_MVA: TFMTBCDField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSReducao: TFMTBCDField
      FieldName = 'Aliquota_ICMSReducao'
      Origin = 'Aliquota_ICMSReducao'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSReducao: TFMTBCDField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'Valor_ICMSReducao'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Seguro: TFMTBCDField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Frete: TFMTBCDField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Despesa: TFMTBCDField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_PIS: TFMTBCDField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_PIS: TFMTBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_COFINS: TFMTBCDField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_COFINS: TFMTBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IsentasICMS: TFMTBCDField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_OutrasICMS: TFMTBCDField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IsentasIPI: TFMTBCDField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_OutrasIPI: TFMTBCDField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      Precision = 18
      Size = 6
    end
    object ItensNFLucro: TFMTBCDField
      FieldName = 'Lucro'
      Origin = 'Lucro'
      Precision = 18
      Size = 6
    end
    object ItensNFLucro_Valor: TFMTBCDField
      FieldName = 'Lucro_Valor'
      Origin = 'Lucro_Valor'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCIPI: TFMTBCDField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      Precision = 18
      Size = 6
    end
    object ItensNFRateio_ICMSProcesso: TFMTBCDField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
      Precision = 18
      Size = 6
    end
    object ItensNFDesconto: TFMTBCDField
      FieldName = 'Desconto'
      Origin = 'Desconto'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Desconto: TFMTBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_PISRed: TFMTBCDField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_COFINSRed: TFMTBCDField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSIntegral: TFMTBCDField
      FieldName = 'Aliquota_ICMSIntegral'
      Origin = 'Aliquota_ICMSIntegral'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCMVA: TFMTBCDField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Dumping: TFMTBCDField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      Precision = 18
      Size = 6
    end
    object ItensNFTotal_Item: TFMTBCDField
      FieldName = 'Total_Item'
      Origin = 'Total_Item'
      Precision = 18
      Size = 6
    end
    object ItensNFRateio_SISCOMEX: TFMTBCDField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSOperApuracao: TFMTBCDField
      FieldName = 'Valor_BCICMSOperApuracao'
      Origin = 'Valor_BCICMSOperApuracao'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSOperApuracao: TFMTBCDField
      FieldName = 'Valor_ICMSOperApuracao'
      Origin = 'Valor_ICMSOperApuracao'
      Precision = 18
      Size = 6
    end
    object ItensNFMedia_BCR: TFMTBCDField
      FieldName = 'Media_BCR'
      Origin = 'Media_BCR'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_PIS2: TFMTBCDField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_COFINS2: TFMTBCDField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_DespesasOutros: TFMTBCDField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'Valor_DespesasOutros'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCPIS: TFMTBCDField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      Precision = 18
      Size = 6
    end
    object ItensNFTotal_Impostos: TFMTBCDField
      FieldName = 'Total_Impostos'
      Origin = 'Total_Impostos'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_IRPJ: TFMTBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IRPJ: TFMTBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_CSLL: TFMTBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_CSLL: TFMTBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      Precision = 18
      Size = 6
    end
    object ItensNFComissao: TFMTBCDField
      FieldName = 'Comissao'
      Origin = 'Comissao'
      Precision = 18
      Size = 6
    end
    object ItensNFComissao_Valor: TFMTBCDField
      FieldName = 'Comissao_Valor'
      Origin = 'Comissao_Valor'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Inventario: TFMTBCDField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSDest: TFMTBCDField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSDest: TFMTBCDField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSDest: TFMTBCDField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      Precision = 18
      Size = 6
    end
    object ItensNFDIFAL_Valor: TFMTBCDField
      FieldName = 'DIFAL_Valor'
      Origin = 'DIFAL_Valor'
      Precision = 18
      Size = 6
    end
    object ItensNFDIFAL_PercOrig: TFMTBCDField
      FieldName = 'DIFAL_PercOrig'
      Origin = 'DIFAL_PercOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFDIFAL_ValorOrig: TFMTBCDField
      FieldName = 'DIFAL_ValorOrig'
      Origin = 'DIFAL_ValorOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFDIFAL_PercDest: TFMTBCDField
      FieldName = 'DIFAL_PercDest'
      Origin = 'DIFAL_PercDest'
      Precision = 18
      Size = 6
    end
    object ItensNFDIFAL_ValorDest: TFMTBCDField
      FieldName = 'DIFAL_ValorDest'
      Origin = 'DIFAL_ValorDest'
      Precision = 18
      Size = 6
    end
    object ItensNFFCP_Aliquota: TFMTBCDField
      FieldName = 'FCP_Aliquota'
      Origin = 'FCP_Aliquota'
      Precision = 18
      Size = 6
    end
    object ItensNFFCP_ValorDest: TFMTBCDField
      FieldName = 'FCP_ValorDest'
      Origin = 'FCP_ValorDest'
      Precision = 18
      Size = 6
    end
    object ItensNFFCP_ICMSOrig: TFMTBCDField
      FieldName = 'FCP_ICMSOrig'
      Origin = 'FCP_ICMSOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFFCP_ICMSDest: TFMTBCDField
      FieldName = 'FCP_ICMSDest'
      Origin = 'FCP_ICMSDest'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCFCPST: TFMTBCDField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_FCPST: TFMTBCDField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCFCP: TFMTBCDField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_FCP: TFMTBCDField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSDesonerado: TFMTBCDField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSSubAnt: TFMTBCDField
      FieldName = 'Valor_ICMSSubAnt'
      Origin = 'Valor_ICMSSubAnt'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSSubAnt: TFMTBCDField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'Aliquota_ICMSSubAnt'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSAnt: TFMTBCDField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_CIF: TFMTBCDField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      Precision = 18
      Size = 6
    end
    object ItensNFFator_Cambio: TFMTBCDField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSEntrada: TFMTBCDField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_Pauta: TFMTBCDField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_AFRMM: TFMTBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      Precision = 18
      Size = 6
    end
    object ItensNFRateio_FreteTerrNac: TFMTBCDField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCII: TFMTBCDField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSDif: TFMTBCDField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSPresumido: TFMTBCDField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_ICMSReducao2: TFMTBCDField
      FieldName = 'Aliquota_ICMSReducao2'
      Origin = 'Aliquota_ICMSReducao2'
      Precision = 18
      Size = 6
    end
    object ItensNFCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object ItensNFDIFAL_ValorST: TFMTBCDField
      FieldName = 'DIFAL_ValorST'
      Origin = 'DIFAL_ValorST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCDIFAL: TFMTBCDField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCDIFALST: TFMTBCDField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSMono: TFMTBCDField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSMonoRet: TFMTBCDField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSPresumido: TFMTBCDField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_COFINSST: TFMTBCDField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSDif: TFMTBCDField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSMono: TFMTBCDField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSMonoRet: TFMTBCDField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSPresumido: TFMTBCDField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_PISST: TFMTBCDField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCIBS: TFMTBCDField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_IBS: TFMTBCDField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IBS: TFMTBCDField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCCBS: TFMTBCDField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_CBS: TFMTBCDField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_CBS: TFMTBCDField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCIS: TFMTBCDField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_IS: TFMTBCDField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IS: TFMTBCDField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
      Precision = 18
      Size = 6
    end
    object ItensNFConsumo_Energia: TFMTBCDField
      FieldName = 'Consumo_Energia'
      Origin = 'Consumo_Energia'
      Precision = 18
      Size = 6
    end
    object ItensNFCIAP_BCICMS: TFMTBCDField
      FieldName = 'CIAP_BCICMS'
      Origin = 'CIAP_BCICMS'
      Precision = 18
      Size = 6
    end
    object ItensNFCIAP_AliquotaICMS: TFMTBCDField
      FieldName = 'CIAP_AliquotaICMS'
      Origin = 'CIAP_AliquotaICMS'
      Precision = 18
      Size = 6
    end
    object ItensNFCIAP_ValorICMS: TFMTBCDField
      FieldName = 'CIAP_ValorICMS'
      Origin = 'CIAP_ValorICMS'
      Precision = 18
      Size = 6
    end
    object ItensNFCIAP_Parcela: TFMTBCDField
      FieldName = 'CIAP_Parcela'
      Origin = 'CIAP_Parcela'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSOpOrig: TFMTBCDField
      FieldName = 'Valor_ICMSOpOrig'
      Origin = 'Valor_ICMSOpOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_ICMSSTOrig: TFMTBCDField
      FieldName = 'Valor_ICMSSTOrig'
      Origin = 'Valor_ICMSSTOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_PISOrig: TFMTBCDField
      FieldName = 'Valor_PISOrig'
      Origin = 'Valor_PISOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_COFINSOrig: TFMTBCDField
      FieldName = 'Valor_COFINSOrig'
      Origin = 'Valor_COFINSOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_IPIOrig: TFMTBCDField
      FieldName = 'Valor_IPIOrig'
      Origin = 'Valor_IPIOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCCOFINS: TFMTBCDField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_TotalNota: TFMTBCDField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_PISOrig: TFMTBCDField
      FieldName = 'Aliquota_PISOrig'
      Origin = 'Aliquota_PISOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFAliquota_COFINSOrig: TFMTBCDField
      FieldName = 'Aliquota_COFINSOrig'
      Origin = 'Aliquota_COFINSOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFValor_BCICMSSTOrig: TFMTBCDField
      FieldName = 'Valor_BCICMSSTOrig'
      Origin = 'Valor_BCICMSSTOrig'
      Precision = 18
      Size = 6
    end
    object ItensNFCIAP_TipoItem: TSmallintField
      FieldName = 'CIAP_TipoItem'
      Origin = 'CIAP_TipoItem'
    end
    object ItensNFItem_Referencia: TSmallintField
      FieldName = 'Item_Referencia'
      Origin = 'Item_Referencia'
    end
  end
  object Embarques: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 25
  end
  object dsEmbarques: TDataSource
    DataSet = Embarques
    Left = 931
    Top = 71
  end
  object CSTICMSTabA: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 121
  end
  object dsCSTICMSTabA: TDataSource
    DataSet = CSTICMSTabA
    Left = 931
    Top = 170
  end
  object dsCSTICMSTabB: TDataSource
    DataSet = CSTICMSTabB
    Left = 931
    Top = 263
  end
  object CSTICMSTabB: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 217
  end
  object CSTIPI: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 313
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 931
    Top = 359
  end
  object CSTCBS: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 406
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 931
    Top = 455
  end
  object CSTIBS: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 931
    Top = 501
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 931
    Top = 550
  end
  object CSTPIS: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 1014
    Top = 26
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 1014
    Top = 75
  end
  object CSTCOFINS: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Navio'
      
        '      ,Navio_Nome = (select Nome from Navios where Codigo = Navi' +
        'o)'
      '      ,Processo'
      #9'  --,Empresa'
      'from Embarques'
      'where Empresa = '#39'07922103000158'#39
      'order by Processo')
    Left = 1014
    Top = 121
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 1014
    Top = 170
  end
end
