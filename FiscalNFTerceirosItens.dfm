object fFiscalNFTerceirosItens: TfFiscalNFTerceirosItens
  Left = 0
  Top = 0
  Width = 997
  Height = 794
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
    ScrollHeight = 1853
    ScrollWidth = 997
    object UniPanel3: TUniPanel
      Left = 53
      Top = 15
      Width = 784
      Height = 1743
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
        1743)
      object UniPanel11: TUniPanel
        Left = 12
        Top = 1607
        Width = 761
        Height = 121
        Hint = ''
        TabOrder = 8
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Outros Valores / Rateios'
        Caption = ''
        object UniDBFormattedNumberEdit40: TUniDBFormattedNumberEdit
          Left = 8
          Top = 35
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Seguro'
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Seguro'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit38: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Frete'
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'Frete'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit39: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Despesa'
          Alignment = taRightJustify
          TabOrder = 5
          SelectOnFocus = True
          FieldLabel = 'Despesas'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalFrete: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 2
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
        object cTotalSeguro: TUniFormattedNumberEdit
          Left = 575
          Top = 35
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
        object cTotalDespesa: TUniFormattedNumberEdit
          Left = 575
          Top = 62
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
      end
      object UniPanel12: TUniPanel
        Left = 12
        Top = 1413
        Width = 761
        Height = 176
        Hint = ''
        TabOrder = 7
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Reforma Tribut'#225'ria - IS / CBS / IBS'
        Caption = ''
        object UniDBLookupComboBox1: TUniDBLookupComboBox
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
        object UniDBFormattedNumberEdit41: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_CBS'
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
        object UniDBFormattedNumberEdit42: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCBS'
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC CBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit43: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_CBS'
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
        object UniDBLookupComboBox9: TUniDBLookupComboBox
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
        object UniDBFormattedNumberEdit44: TUniDBFormattedNumberEdit
          Left = 397
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IBS'
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
        object UniDBFormattedNumberEdit45: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIBS'
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'BC IBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit46: TUniDBFormattedNumberEdit
          Left = 270
          Top = 62
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IBS'
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
        object UniDBFormattedNumberEdit47: TUniDBFormattedNumberEdit
          Left = 270
          Top = 116
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IS'
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit48: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIS'
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = 'BC IS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit49: TUniDBFormattedNumberEdit
          Left = 397
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IS'
          Alignment = taRightJustify
          TabOrder = 13
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIS: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 14
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
      object UniPanel13: TUniPanel
        Left = 12
        Top = 11
        Width = 761
        Height = 372
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
          Top = 170
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Quantidade'
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = 'Quantidade'
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit
          Left = 8
          Top = 224
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_Desconto'
          Alignment = taRightJustify
          TabOrder = 14
          SelectOnFocus = True
          FieldLabel = '% Desconto'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit18: TUniDBFormattedNumberEdit
          Left = 250
          Top = 224
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Desconto'
          Alignment = taRightJustify
          TabOrder = 15
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
          AnyMatch = True
          TabOrder = 3
          Color = clWindow
          FieldLabel = 'Processo'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBEdit1: TUniDBEdit
          Left = 8
          Top = 89
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'PO'
          TabOrder = 4
          FieldLabel = 'Pedido Compra'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit2: TUniDBEdit
          Left = 250
          Top = 89
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Ordem'
          TabOrder = 5
          FieldLabel = 'Ordem'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cValor_Produtos: TUniFormattedNumberEdit
          Left = 8
          Top = 251
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 16
          TabStop = False
          Color = 15720158
          ReadOnly = True
          FieldLabel = 'Total L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_Unitario: TUniDBFormattedNumberEdit
          Left = 8
          Top = 197
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Unitario'
          Alignment = taRightJustify
          TabOrder = 13
          SelectOnFocus = True
          FieldLabel = 'Valor Unit'#225'rio'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBEdit4: TUniDBEdit
          Left = 8
          Top = 278
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'NCM'
          TabOrder = 6
          TabStop = False
          ReadOnly = True
          FieldLabel = 'NCM'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit5: TUniDBEdit
          Left = 250
          Top = 278
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'UM'
          TabOrder = 7
          TabStop = False
          ReadOnly = True
          FieldLabel = 'Unidade Medida'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit20: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_Lucro'
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = '% Desconto'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit21: TUniDBFormattedNumberEdit
          Left = 250
          Top = 143
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Lucro'
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object bLoteDet: TUniButton
          Left = 250
          Top = 170
          Width = 87
          Height = 26
          Hint = ''
          Caption = 'Lote / Detalhe'
          TabOrder = 19
        end
        object bSerCha: TUniButton
          Left = 340
          Top = 170
          Width = 89
          Height = 26
          Hint = ''
          Caption = 'Serial / Chassi'
          TabOrder = 20
        end
        object UniDBEdit6: TUniDBEdit
          Left = 8
          Top = 305
          Width = 502
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'ChaveNF_Referencia'
          TabOrder = 17
          TabStop = False
          ReadOnly = True
          InputMask.MaskChar = #0
          InputMask.UnmaskText = True
          InputType = 'text'
          FieldLabel = 'Nota Refer'#234'ncia'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBDateTimePicker1: TUniDBDateTimePicker
          Left = 512
          Top = 305
          Width = 208
          Height = 25
          Hint = ''
          DataField = 'DataNF_Referencia'
          DateTime = 45988.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          ReadOnly = True
          TabOrder = 18
          TabStop = False
          BorderStyle = ubsInset
          FieldLabel = 'Data'
          FieldLabelWidth = 50
        end
        object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Liquido'
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
          Left = 250
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Bruto'
          Alignment = taRightJustify
          TabOrder = 9
          SelectOnFocus = True
          FieldLabel = 'Peso Bruto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniPanel2: TUniPanel
          Left = 528
          Top = 69
          Width = 220
          Height = 142
          Hint = ''
          TabOrder = 21
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CaixaSimples'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object cEstoqueMinimo: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 4
            Width = 208
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Right = 6
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
            Width = 208
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 6
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
            Width = 208
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 6
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
            Width = 208
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 6
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
            Width = 208
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 6
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
      object UniPanel5: TUniPanel
        Left = 12
        Top = 404
        Width = 761
        Height = 442
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
        object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSMono'
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Mono'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSMono: TUniFormattedNumberEdit
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
        object cTotalICMSMonoRet: TUniFormattedNumberEdit
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
        object UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit
          Left = 397
          Top = 170
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSMonoRet'
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
        object UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit
          Left = 270
          Top = 170
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_ICMSMonoRet'
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
        object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
          Left = 8
          Top = 170
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSMonoRet'
          Alignment = taRightJustify
          TabOrder = 14
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Mono Ret'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
          Left = 397
          Top = 143
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSMono'
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
        object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
          Left = 270
          Top = 143
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_ICMSMono'
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
        object cValor_ICMSST: TUniDBFormattedNumberEdit
          Left = 397
          Top = 197
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSST'
          Alignment = taRightJustify
          TabOrder = 20
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSSTAnt: TUniFormattedNumberEdit
          Left = 575
          Top = 224
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 25
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
        object cValor_ICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 397
          Top = 224
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSSTAnt'
          Alignment = taRightJustify
          TabOrder = 24
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 8
          Top = 224
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSSTAnt'
          Alignment = taRightJustify
          TabOrder = 22
          SelectOnFocus = True
          FieldLabel = 'BC - Recolhido Ant'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 270
          Top = 224
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSSTAnt'
          Alignment = taRightJustify
          TabOrder = 23
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSST: TUniFormattedNumberEdit
          Left = 575
          Top = 197
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 21
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
          Top = 197
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSST'
          Alignment = taRightJustify
          TabOrder = 18
          SelectOnFocus = True
          FieldLabel = 'BC ICMS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSST: TUniDBFormattedNumberEdit
          Left = 270
          Top = 197
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSST'
          Alignment = taRightJustify
          TabOrder = 19
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
          Top = 251
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_MVA'
          Alignment = taRightJustify
          TabOrder = 27
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
          Top = 251
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCMVA'
          Alignment = taRightJustify
          TabOrder = 26
          SelectOnFocus = True
          FieldLabel = 'BC MVA'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_MVA: TUniDBFormattedNumberEdit
          Left = 397
          Top = 251
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_MVA'
          Alignment = taRightJustify
          TabOrder = 28
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
          Top = 251
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 29
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
        object cAliquota_ICMSDif: TUniDBFormattedNumberEdit
          Left = 270
          Top = 278
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSDif'
          Alignment = taRightJustify
          TabOrder = 31
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSDif: TUniFormattedNumberEdit
          Left = 575
          Top = 278
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 33
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
        object cValor_ICMSDif: TUniDBFormattedNumberEdit
          Left = 397
          Top = 278
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSDif'
          Alignment = taRightJustify
          TabOrder = 32
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit22: TUniDBFormattedNumberEdit
          Left = 8
          Top = 278
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSDif'
          Alignment = taRightJustify
          TabOrder = 30
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Diferido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit23: TUniDBFormattedNumberEdit
          Left = 8
          Top = 305
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSAnt'
          Alignment = taRightJustify
          TabOrder = 34
          SelectOnFocus = True
          FieldLabel = 'ICMS Anterior'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cICMSAnt: TUniDBCheckBox
          Left = 273
          Top = 304
          Width = 296
          Height = 18
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'ICMSST_Anterior'
          Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
          TabOrder = 35
          ParentColor = False
          Color = clBtnFace
          FieldLabelAlign = laRight
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
          TabOrder = 42
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
        object UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit
          Left = 270
          Top = 331
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSPresumido'
          Alignment = taRightJustify
          TabOrder = 37
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSPresumido: TUniFormattedNumberEdit
          Left = 575
          Top = 331
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 39
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
        object UniDBFormattedNumberEdit31: TUniDBFormattedNumberEdit
          Left = 397
          Top = 331
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSPresumido'
          Alignment = taRightJustify
          TabOrder = 38
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit32: TUniDBFormattedNumberEdit
          Left = 8
          Top = 332
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSPresumido'
          Alignment = taRightJustify
          TabOrder = 36
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Presumido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMSDesonerado: TUniFormattedNumberEdit
          Left = 575
          Top = 358
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 41
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
        object UniDBFormattedNumberEdit37: TUniDBFormattedNumberEdit
          Left = 8
          Top = 359
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSDesonerado'
          Alignment = taRightJustify
          TabOrder = 40
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Presumido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBEdit3: TUniDBEdit
          Left = 8
          Top = 386
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Codigo_CredPres'
          TabOrder = 43
          FieldLabel = 'C'#243'd Cred.Pres.'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit7: TUniDBEdit
          Left = 270
          Top = 386
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Beneficio_Fiscal'
          TabOrder = 44
          FieldLabel = 'C'#243'd Benef'#237'cio Fiscal'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
      end
      object UniPanel6: TUniPanel
        Left = 12
        Top = 1140
        Width = 761
        Height = 120
        Hint = ''
        TabOrder = 5
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
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST PIS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_PISST'
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'PIS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalPISST: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 7
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
      object UniPanel7: TUniPanel
        Left = 12
        Top = 863
        Width = 761
        Height = 176
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
        object UniDBFormattedNumberEdit33: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IPIDevol'
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = '% IPI Devolu'#231#227'o'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniFormattedNumberEdit2: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 12
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
        object UniDBFormattedNumberEdit34: TUniDBFormattedNumberEdit
          Left = 270
          Top = 116
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_IPIDevol'
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = '% Devol'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel8: TUniPanel
        Left = 12
        Top = 1058
        Width = 761
        Height = 67
        Hint = ''
        TabOrder = 4
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Imposto de Importa'#231#227'o - II'
        Caption = ''
        object cTotalII: TUniFormattedNumberEdit
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
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_II: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_II'
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
        object cAliquota_II: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_II'
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
        object UniDBFormattedNumberEdit24: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCII'
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC II'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel9: TUniPanel
        Left = 12
        Top = 1275
        Width = 761
        Height = 120
        Hint = ''
        TabOrder = 6
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        TitleVisible = True
        Title = 'Contribui'#231#227'o para o Financiamento da Seguridade Social - COFINS'
        Caption = ''
        object UniDBFormattedNumberEdit25: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCOFINS'
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
        object UniDBFormattedNumberEdit26: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINS'
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
        object UniDBFormattedNumberEdit27: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_COFINS'
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
        object UniDBLookupComboBox7: TUniDBLookupComboBox
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
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST COFINS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINSST'
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'COFINS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalCOFINSST: TUniFormattedNumberEdit
          Left = 575
          Top = 62
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
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      Left = 309
      Top = 1836
      Width = 256
      Height = 17
      Hint = ''
      ParentColor = False
      TabOrder = 2
    end
  end
end
