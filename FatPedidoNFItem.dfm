object fFatPedidoNFItem: TfFatPedidoNFItem
  Left = 0
  Top = 0
  Width = 968
  Height = 1900
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 968
    Height = 1900
    Hint = ''
    ActivePage = UniTabSheet3
    Plain = True
    Align = alClient
    TabOrder = 0
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Pedido'
      object UniContainerPanel1: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 960
        Height = 1872
        Hint = ''
        ParentColor = False
        Align = alClient
        AutoScroll = True
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          960
          1872)
        ScrollHeight = 1872
        ScrollWidth = 960
        object UniPanel3: TUniPanel
          Left = 43
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
          Color = clTeal
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTCBS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTCBS'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTIBS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTIBS'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              Top = 170
              Width = 240
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Quantidade'
              DataSource = dsPedidosNFItens
              Alignment = taRightJustify
              TabOrder = 12
              SelectOnFocus = True
              FieldLabel = 'Quantidade'
              FieldLabelSeparator = ' '
              DecimalPrecision = 3
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
              OnExit = cQtdeExit
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsProdutos
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsInset
              ClearButton = True
              DataField = 'Codigo_Mercadoria'
              DataSource = dsPedidosNFItens
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
              OnExit = cProdutoExit
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsProcessos
              KeyField = 'Processo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Processo'
              DataSource = dsPedidosNFItens
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Processo'
              FieldLabelSeparator = ' '
              ForceSelection = True
              NormalizeString = True
              Style = csDropDown
              OnExit = cProcessoExit
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
              Alignment = taRightJustify
              TabOrder = 13
              SelectOnFocus = True
              FieldLabel = 'Valor Unit'#225'rio'
              FieldLabelSeparator = ' '
              DecimalPrecision = 4
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
              OnExit = cValor_UnitarioExit
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              OnClick = bLoteDetClick
            end
            object bSerCha: TUniButton
              Left = 340
              Top = 170
              Width = 89
              Height = 26
              Hint = ''
              Caption = 'Serial / Chassi'
              TabOrder = 20
              OnClick = bSerChaClick
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTICMSA
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTICMS_TabA'
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTICMSB
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTICMS_TabB'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataField = 'CSTPIS'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTIPI
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTIPI'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
              ListSource = dsCSTPIS
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'CSTCOFINS'
              DataSource = dsPedidosNFItens
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
              DataSource = dsPedidosNFItens
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
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'F'#243'rmulas'
      object gFormula: TUniStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 954
        Height = 506
        Hint = ''
        HeaderTitle = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
        HeaderTitleAlign = taCenter
        CellCursor = crHandPoint
        FixedColor = 15263976
        FixedRows = 0
        RowCount = 1
        ColCount = 4
        DefaultRowHeight = 22
        Options = [goVertLine, goHorzLine, goDrawFocusSelected]
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
        BorderStyle = ubsInset
        StripeRows = True
        ForceFit = True
        Align = alTop
        TabOrder = 0
      end
      object cLog: TUniMemo
        AlignWithMargins = True
        Left = 3
        Top = 515
        Width = 954
        Height = 1354
        Hint = ''
        BorderStyle = ubsInset
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
    Left = 259
    Top = 149
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
    object PedidosNFItensPeso_Liquido: TBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object PedidosNFItensPeso_Bruto: TBCDField
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
    object PedidosNFItensRateio_ICMSProcesso: TBCDField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
    end
    object PedidosNFItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
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
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#'
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
    object PedidosNFItensFator_Cambio: TBCDField
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
    object PedidosNFItensValor_BCDIFAL: TBCDField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCDIFALST: TBCDField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMono: TBCDField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMonoRet: TBCDField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSPresumido: TBCDField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINSST: TBCDField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMono: TBCDField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMonoRet: TBCDField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSPresumido: TBCDField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PISST: TBCDField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensFator_Produto: TBCDField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
    end
    object PedidosNFItensValor_Unitario: TBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Required = True
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object PedidosNFItensValor_BCIPI: TBCDField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IPI: TBCDField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IPI: TBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_II: TBCDField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_II: TBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSST: TBCDField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSST: TBCDField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSST: TBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCMVA: TBCDField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_MVA: TBCDField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MVA: TBCDField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PIS: TBCDField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCPIS: TBCDField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS: TBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINS: TBCDField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCCOFINS: TBCDField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS: TBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Frete: TBCDField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Seguro: TBCDField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Despesa: TBCDField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCPST: TBCDField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPST: TBCDField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCP: TBCDField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCP: TBCDField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSDest: TBCDField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDest: TBCDField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDest: TBCDField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFAL: TBCDField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALOrig: TBCDField
      FieldName = 'Percentual_DIFALOrig'
      Origin = 'Percentual_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALOrig: TBCDField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALDest: TBCDField
      FieldName = 'Percentual_DIFALDest'
      Origin = 'Percentual_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALDest: TBCDField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALST: TBCDField
      FieldName = 'Valor_DIFALST'
      Origin = 'Valor_DIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_FCP: TBCDField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPDest: TBCDField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_FCPICMSOrig: TBCDField
      FieldName = 'Percentual_FCPICMSOrig'
      Origin = 'Percentual_FCPICMSOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPICMSDest: TBCDField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDesonerado: TBCDField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSSTAnt: TBCDField
      FieldName = 'Valor_ICMSSTAnt'
      Origin = 'Valor_ICMSSTAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSAnt: TBCDField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CIF: TBCDField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Pauta: TBCDField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_AFRMM: TBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCII: TBCDField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasICMS: TBCDField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasICMS: TBCDField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasIPI: TBCDField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasIPI: TBCDField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSOp: TBCDField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object PedidosNFItensAliquota_ICMSOp: TBCDField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object PedidosNFItensValor_ICMSOp: TBCDField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object PedidosNFItensAliquota_ICMSEntrada: TBCDField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSPresumido: TBCDField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDif: TBCDField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSApuracao: TBCDField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_ICMSApuracao: TBCDField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_MediaBCR: TBCDField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_TotalNota: TBCDField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_Inventario: TBCDField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_Dumping: TBCDField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensPercentual_Lucro: TBCDField
      FieldName = 'Percentual_Lucro'
      Origin = 'Percentual_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Lucro: TBCDField
      FieldName = 'Valor_Lucro'
      Origin = 'Valor_Lucro'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_PIS2: TBCDField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS2: TBCDField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IRPJ: TBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IRPJ: TBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_CSLL: TBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CSLL: TBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensRateio_FreteTerrNac: TBCDField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Desconto: TBCDField
      FieldName = 'Percentual_Desconto'
      Origin = 'Percentual_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Desconto: TBCDField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PISRed: TBCDField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINSRed: TBCDField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_SISCOMEX: TBCDField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Comissao: TBCDField
      FieldName = 'Percentual_Comissao'
      Origin = 'Percentual_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Comissao: TBCDField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensPercentual_RedICMSST: TBCDField
      FieldName = 'Percentual_RedICMSST'
      Origin = 'Percentual_RedICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDif: TBCDField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensPercentual_Beneficio: TBCDField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMono: TBCDField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMonoRet: TBCDField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSOpRed: TBCDField
      FieldName = 'Aliquota_ICMSOpRed'
      Origin = 'Aliquota_ICMSOpRed'
    end
    object PedidosNFItensValor_ICMSOpRed: TBCDField
      FieldName = 'Valor_ICMSOpRed'
      Origin = 'Valor_ICMSOpRed'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensAliquota_ICMSOpIntegral: TBCDField
      FieldName = 'Aliquota_ICMSOpIntegral'
      Origin = 'Aliquota_ICMSOpIntegral'
    end
    object PedidosNFItensAliquota_ICMSOPRed2: TBCDField
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
    object PedidosNFItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object PedidosNFItensValor_BCIBS: TBCDField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensAliquota_IBS: TBCDField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
      DisplayFormat = ',##0.00'
      currency = True
    end
    object PedidosNFItensValor_IBS: TBCDField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_BCCBS: TBCDField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensAliquota_CBS: TBCDField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
    end
    object PedidosNFItensValor_CBS: TBCDField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_BCIS: TBCDField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensAliquota_IS: TBCDField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
      DisplayFormat = ',##0.00'
      currency = True
    end
    object PedidosNFItensValor_IS: TBCDField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
      DisplayFormat = ',##0.00'
      currency = False
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
    object PedidosNFItensAliquota_ICMSSTAnt: TBCDField
      FieldName = 'Aliquota_ICMSSTAnt'
      Origin = 'Aliquota_ICMSSTAnt'
    end
    object PedidosNFItensValor_BCICMSSTAnt: TBCDField
      FieldName = 'Valor_BCICMSSTAnt'
      Origin = 'Valor_BCICMSSTAnt'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_BCICMSDif: TBCDField
      FieldName = 'Valor_BCICMSDif'
      Origin = 'Valor_BCICMSDif'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_IPIDevol: TBCDField
      FieldName = 'Valor_IPIDevol'
      Origin = 'Valor_IPIDevol'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensPercentual_IPIDevol: TBCDField
      FieldName = 'Percentual_IPIDevol'
      Origin = 'Percentual_IPIDevol'
    end
    object PedidosNFItensBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
      FixedChar = True
      Size = 10
    end
    object PedidosNFItensDeclaracao: TStringField
      FieldName = 'Declaracao'
      Origin = 'Declaracao'
      Size = 15
    end
    object PedidosNFItensMovimenta_EstoqueInd: TBooleanField
      FieldName = 'Movimenta_EstoqueInd'
      Origin = 'Movimenta_EstoqueInd'
    end
    object PedidosNFItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object PedidosNFItensValor_Produtos: TBCDField
      FieldName = 'Valor_Produtos'
      Origin = 'Valor_Produtos'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_FCPICMSOrig: TBCDField
      FieldName = 'Valor_FCPICMSOrig'
      Origin = 'Valor_FCPICMSOrig'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensValor_TotalImpostos: TBCDField
      FieldName = 'Valor_TotalImpostos'
      Origin = 'Valor_TotalImpostos'
      DisplayFormat = ',##0.00'
      currency = False
    end
    object PedidosNFItensFinalidade_Mercadoria: TStringField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object PedidosNFItensItem_DUIMP: TIntegerField
      FieldName = 'Item_DUIMP'
      Origin = 'Item_DUIMP'
    end
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 259
    Top = 191
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
      '      ,Aliquota_IBS'
      '      ,Tabela_CAMEX'
      '      ,CSTICMS_Entrada'
      '      ,CSTICMS_Saida'
      '      ,Beneficio_FiscalEnt'
      '      ,Beneficio_FiscalSai'
      '      ,Codigo_Fabricante'
      '      ,UM'
      '      ,Peso_Liquido'
      '      ,Peso_Bruto'
      '      ,Estoque_Minimo'
      '      ,Estoque_Navio'
      'from Produtos'
      'where Desativado <> 1'
      'and isnull(NCM, '#39#39') <> '#39#39' '
      'order by Descricao')
    Left = 426
    Top = 147
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
    object ProdutosValor_Venda: TBCDField
      FieldName = 'Valor_Venda'
      Origin = 'Valor_Venda'
    end
    object ProdutosValor_ConsumidorFinal: TBCDField
      FieldName = 'Valor_ConsumidorFinal'
      Origin = 'Valor_ConsumidorFinal'
    end
    object ProdutosValor_CustoMedio: TBCDField
      FieldName = 'Valor_CustoMedio'
      Origin = 'Valor_CustoMedio'
    end
    object ProdutosValor_Entrada: TBCDField
      FieldName = 'Valor_Entrada'
      Origin = 'Valor_Entrada'
    end
    object ProdutosValor_IPI: TBCDField
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
    object ProdutosAliquota_IPI: TBCDField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object ProdutosAliquota_II: TBCDField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object ProdutosValor_II: TBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object ProdutosReducao_PIS: TBCDField
      FieldName = 'Reducao_PIS'
      Origin = 'Reducao_PIS'
    end
    object ProdutosReducao_COFINS: TBCDField
      FieldName = 'Reducao_COFINS'
      Origin = 'Reducao_COFINS'
    end
    object ProdutosAliquota_PIS: TBCDField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
    end
    object ProdutosAliquota_COFINS: TBCDField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
    end
    object ProdutosAliquota_PISEntrada: TBCDField
      FieldName = 'Aliquota_PISEntrada'
      Origin = 'Aliquota_PISEntrada'
    end
    object ProdutosAliquota_COFINSEntrada: TBCDField
      FieldName = 'Aliquota_COFINSEntrada'
      Origin = 'Aliquota_COFINSEntrada'
    end
    object ProdutosAliquota_PISSaida: TBCDField
      FieldName = 'Aliquota_PISSaida'
      Origin = 'Aliquota_PISSaida'
    end
    object ProdutosAliquota_COFINSSaida: TBCDField
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
    object ProdutosICMS_ForaEstadoEnt: TBCDField
      FieldName = 'ICMS_ForaEstadoEnt'
      Origin = 'ICMS_ForaEstadoEnt'
    end
    object ProdutosICMS_ForaEstadoSai: TBCDField
      FieldName = 'ICMS_ForaEstadoSai'
      Origin = 'ICMS_ForaEstadoSai'
    end
    object ProdutosICMS_DentroEstadoEnt: TBCDField
      FieldName = 'ICMS_DentroEstadoEnt'
      Origin = 'ICMS_DentroEstadoEnt'
    end
    object ProdutosICMS_DentroEstadoSai: TBCDField
      FieldName = 'ICMS_DentroEstadoSai'
      Origin = 'ICMS_DentroEstadoSai'
    end
    object ProdutosICMS_DentroEstadoSimples: TBCDField
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
    object ProdutosPeso_Liquido: TBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object ProdutosPeso_Bruto: TBCDField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object ProdutosAliquota_IBS: TBCDField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
    end
    object ProdutosEstoque_Minimo: TBCDField
      FieldName = 'Estoque_Minimo'
      Origin = 'Estoque_Minimo'
    end
    object ProdutosEstoque_Navio: TBooleanField
      FieldName = 'Estoque_Navio'
      Origin = 'Estoque_Navio'
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 426
    Top = 191
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
    Left = 575
    Top = 243
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 575
    Top = 289
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
    Left = 575
    Top = 147
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 575
    Top = 191
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
    Left = 117
    Top = 147
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
    Left = 117
    Top = 191
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
      '      ,Declaracao = DUIMP'
      'from ProcessosImp'
      'where isnull(DUIMP, '#39#39') <> '#39#39
      'select Tipo = '#39'EXP'#39
      '      ,Processo'
      '      ,Declaracao = DE'
      'from ProcessosExp'
      'where isnull(DE, '#39#39') <> '#39#39)
    Left = 175
    Top = 147
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 175
    Top = 191
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
    Left = 175
    Top = 243
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 175
    Top = 289
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
    Left = 259
    Top = 243
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 259
    Top = 289
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
    Left = 496
    Top = 147
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 496
    Top = 191
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
    Left = 496
    Top = 243
  end
  object dsCSTICMSB: TDataSource
    DataSet = CSTICMSB
    Left = 496
    Top = 289
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
    Left = 351
    Top = 242
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 351
    Top = 289
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
    Left = 426
    Top = 243
  end
  object dsCSTICMSA: TDataSource
    DataSet = CSTICMSA
    Left = 426
    Top = 289
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 351
    Top = 147
  end
  object dsTabPISCOFINS: TDataSource
    DataSet = TabPISCOFINS
    Left = 351
    Top = 191
  end
  object PedidosNF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 639
    Top = 147
  end
  object dsPedidosNF: TDataSource
    DataSet = PedidosNF
    Left = 639
    Top = 191
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
    Left = 710
    Top = 147
  end
  object dsOPFiscal: TDataSource
    DataSet = OpFiscal
    Left = 710
    Top = 191
  end
  object tFormulasItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 600
    Top = 341
  end
  object dstFormulasItens: TDataSource
    DataSet = tFormulasItens
    Left = 600
    Top = 383
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
    Left = 62
    Top = 245
  end
  object dsCampos: TDataSource
    DataSet = Campos
    Left = 62
    Top = 295
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 427
    Top = 81
  end
  object tNCM: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 639
    Top = 243
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 639
    Top = 289
  end
  object tNCMICMS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 710
    Top = 243
  end
  object dstNCMICMS: TDataSource
    DataSet = tNCMICMS
    Left = 710
    Top = 289
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
    Left = 62
    Top = 347
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 62
    Top = 394
  end
  object ProdutosPauta: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosPauta')
    Left = 259
    Top = 347
  end
  object dsProdutosPauta: TDataSource
    DataSet = ProdutosPauta
    Left = 259
    Top = 394
  end
  object dstImpostos: TDataSource
    DataSet = tImpostos
    Left = 62
    Top = 506
  end
  object tImpostos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 62
    Top = 457
    object tImpostosOrdem_Calculo: TSmallintField
      FieldName = 'Ordem_Calculo'
    end
    object tImpostosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tImpostosCampo: TStringField
      FieldName = 'Campo'
      Size = 60
    end
    object tImpostosAliquota: TBCDField
      FieldName = 'Aliquota'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 480
    Top = 79
  end
  object ttmp: TFDQuery
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
    Left = 565
    Top = 79
  end
  object Empresas: TFDQuery
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
    Left = 175
    Top = 347
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 175
    Top = 394
  end
  object FichaEstoque: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 350
    Top = 347
  end
  object FichaInventario: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 430
    Top = 346
  end
  object dstFormulasTotais: TDataSource
    DataSet = tFormulasTotais
    Left = 515
    Top = 383
  end
  object tFormulasTotais: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 515
    Top = 341
  end
end
