object fComexSimulacaoImp: TfComexSimulacaoImp
  Left = 0
  Top = 0
  Width = 1291
  Height = 796
  OnCreate = UniFrameCreate
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1291
    Height = 761
    Hint = ''
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1283
        Height = 733
        Hint = ''
        DataSource = dsSimulaImp
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Simulacao'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 163
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Beneficio_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficio'
            Title.Font.Style = [fsBold]
            Width = 264
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Modal_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Title.Font.Style = [fsBold]
            Width = 170
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'INCOTERM'
            Title.Alignment = taCenter
            Title.Caption = 'INCOTERM'
            Title.Font.Style = [fsBold]
            Width = 76
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Cliente_ImpNome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Style = [fsBold]
            Width = 263
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Fornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Title.Font.Style = [fsBold]
            Width = 240
            Font.Name = 'Calibri'
          end>
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados da Importa'#231#227'o'
      AutoScroll = True
      DesignSize = (
        1266
        733)
      ScrollHeight = 1080
      ScrollWidth = 786
      object Ficha: TUniPanel
        Left = 27
        Top = 18
        Width = 1165
        Height = 671
        Hint = ''
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object cNumero: TUniDBEdit
          Left = 743
          Top = 18
          Width = 190
          Height = 25
          Hint = ''
          DataField = 'Simulacao'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 0
          TabStop = False
          Color = 16766421
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CamposDestaque'#39';'#13#10'}')
          FieldLabel = 'N'#250'mero'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
          OnChange = cNumeroChange
        end
        object cFornecedor: TUniDBEdit
          Left = 19
          Top = 153
          Width = 530
          Height = 25
          Hint = ''
          DataField = 'Fornecedor'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 10
          FieldLabel = 'Fornecedor'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cFOB: TUniDBFormattedNumberEdit
          Left = 767
          Top = 288
          Width = 230
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 20
          FieldLabel = 'Valor FOB (ME)'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPorto_Destino: TUniDBEdit
          Left = 560
          Top = 234
          Width = 581
          Height = 25
          Hint = ''
          DataField = 'Porto_Destino'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 15
          FieldLabel = 'Porto Destino'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cQtde_Container: TUniDBFormattedNumberEdit
          Left = 560
          Top = 261
          Width = 204
          Height = 25
          Hint = ''
          DataField = 'Qtde_Container'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 17
          FieldLabel = 'Qtde Containers'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cFrete_Internacional: TUniDBFormattedNumberEdit
          Left = 767
          Top = 315
          Width = 230
          Height = 25
          Hint = ''
          DataField = 'Frete_Internacional'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 24
          FieldLabel = 'Valor Frete (ME)'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTaxa_FOB: TUniDBFormattedNumberEdit
          Left = 560
          Top = 288
          Width = 204
          Height = 25
          Hint = ''
          DataField = 'Taxa_FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 19
          FieldLabel = 'Taxa FOB'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cFOB_Real: TUniDBFormattedNumberEdit
          Left = 1000
          Top = 288
          Width = 141
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 21
          Color = 16766421
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cFrete_Real: TUniDBFormattedNumberEdit
          Left = 1000
          Top = 315
          Width = 141
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Frete_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 25
          Color = 16766421
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTaxa_Adiministrativa: TUniDBFormattedNumberEdit
          Left = 832
          Top = 396
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Taxa_Adiministrativa'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 29
          FieldLabel = 'Taxa Administrativa'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cDataRegistro_DI: TUniDBDateTimePicker
          Left = 939
          Top = 18
          Width = 202
          Height = 25
          Hint = ''
          DataField = 'Data'
          DataSource = dsSimulaImp
          DateTime = 46308.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 1
          ParentFont = False
          Font.Color = clBlack
          Font.Style = [fsBold]
          BorderStyle = ubsInset
          FieldLabel = 'Data'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' '
        end
        object cMoeda_FOB: TUniDBLookupComboBox
          Left = 19
          Top = 288
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Nome'
          ListSource = dsMoedas
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 18
          Color = clWindow
          FieldLabel = 'Moeda FOB'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cBeneficio: TUniDBLookupComboBox
          Left = 19
          Top = 99
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Nome;Percentual_Beneficio'
          ListSource = dsBeneficios
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Beneficio'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 6
          Color = clWindow
          FieldLabel = 'Benef'#237'cio'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cAliquota_IRPJ: TUniDBFormattedNumberEdit
          Left = 19
          Top = 423
          Width = 269
          Height = 25
          Hint = ''
          DataField = 'Aliquota_IRPJ'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 30
          FieldLabel = 'Al'#237'quota IRPJ'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_CSLL: TUniDBFormattedNumberEdit
          Left = 19
          Top = 450
          Width = 269
          Height = 25
          Hint = ''
          DataField = 'Aliquota_CSLL'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 32
          FieldLabel = 'Al'#237'quota CSLL'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_IRPJ: TUniDBFormattedNumberEdit
          Left = 292
          Top = 423
          Width = 258
          Height = 25
          Hint = ''
          DataField = 'Valor_IRPJ'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 31
          FieldLabel = 'Valor IRPJ'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_CSLL: TUniDBFormattedNumberEdit
          Left = 292
          Top = 450
          Width = 258
          Height = 25
          Hint = ''
          DataField = 'Valor_CSLL'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 33
          FieldLabel = 'Valor CSLL'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPeso_Liquido: TUniDBFormattedNumberEdit
          Left = 19
          Top = 396
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Peso_Liquido'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 26
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPeso_Bruto: TUniDBFormattedNumberEdit
          Left = 292
          Top = 396
          Width = 258
          Height = 25
          Hint = ''
          DataField = 'Peso_Bruto'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 27
          FieldLabel = 'Peso Bruto'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cPais_Origem: TUniDBLookupComboBox
          Left = 19
          Top = 180
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Codigo;Nome'
          ListSource = dsPaises
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Pais_Origem'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 11
          Color = clWindow
          FieldLabel = 'Pa'#237's Origem'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cPais_Destino: TUniDBLookupComboBox
          Left = 19
          Top = 207
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Codigo;Nome'
          ListSource = dsPaises
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Pais_Destino'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 13
          Color = clWindow
          FieldLabel = 'Pa'#237's Destino'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cCidade_Origem: TUniDBEdit
          Left = 560
          Top = 180
          Width = 581
          Height = 25
          Hint = ''
          DataField = 'Cidade_Origem'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 12
          FieldLabel = 'Cidade Origem'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cCidade_Destino: TUniDBEdit
          Left = 560
          Top = 207
          Width = 581
          Height = 25
          Hint = ''
          DataField = 'Cidade_Destino'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 14
          FieldLabel = 'Cidade Destino'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cPorto_Origem: TUniDBEdit
          Left = 19
          Top = 234
          Width = 530
          Height = 25
          Hint = ''
          DataField = 'Porto_Origem'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 16
          FieldLabel = 'Porto Origem'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cMoeda_Frete: TUniDBLookupComboBox
          Left = 19
          Top = 315
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Nome'
          ListSource = dsMoedas
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Frete'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 22
          Color = clWindow
          FieldLabel = 'Moeda Frete'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cTaxa_Frete: TUniDBFormattedNumberEdit
          Left = 560
          Top = 315
          Width = 204
          Height = 25
          Hint = ''
          DataField = 'Taxa_Frete'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 23
          FieldLabel = 'Taxa Frete'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cOperacao_Entrada: TUniDBLookupComboBox
          Left = 19
          Top = 126
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Codigo;Descricao'
          ListSource = dsOperEnt
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Operacao_Entrada'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 8
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Opera'#231#227'o (Entrada)'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object GroupBox2: TUniGroupBox
          Left = 20
          Top = 552
          Width = 1121
          Height = 96
          Hint = ''
          Caption = 'Nota Fiscal'
          TabOrder = 37
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object cCliente_NotaNome: TUniDBEdit
            Left = 13
            Top = 21
            Width = 443
            Height = 25
            Hint = ''
            DataField = 'Cliente_NotaNome'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            FieldLabel = 'Cliente'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBCheckBox1: TUniDBCheckBox
            Left = 13
            Top = 61
            Width = 77
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaContrib'
            DataSource = dsSimulaImp
            Caption = 'Contribuinte'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox2: TUniDBCheckBox
            Left = 281
            Top = 61
            Width = 102
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaSimples'
            DataSource = dsSimulaImp
            Caption = 'Simples Nacional'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox3: TUniDBCheckBox
            Left = 136
            Top = 61
            Width = 95
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaJuridica'
            DataSource = dsSimulaImp
            Caption = 'Pessoa Juridica'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
          end
          object cCliente_NotaEstado: TUniDBLookupComboBox
            Left = 460
            Top = 21
            Width = 320
            Height = 25
            Hint = ''
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Cliente_NotaEstado'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Estado'
            FieldLabelSeparator = ' '
          end
          object DBCheckBox4: TUniDBCheckBox
            Left = 431
            Top = 61
            Width = 84
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaZonaFranca'
            DataSource = dsSimulaImp
            Caption = 'Zona Franca'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox5: TUniDBCheckBox
            Left = 567
            Top = 61
            Width = 102
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaConsumidorFinal'
            DataSource = dsSimulaImp
            Caption = 'Consumidor Final'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox6: TUniDBCheckBox
            Left = 729
            Top = 61
            Width = 184
            Height = 17
            Hint = ''
            DataField = 'Destacar_ImpCred'
            DataSource = dsSimulaImp
            Caption = 'N'#227'o destacar impostos creditaveis'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
          end
        end
        object cINCOTERM: TUniDBLookupComboBox
          Left = 560
          Top = 99
          Width = 581
          Height = 25
          Hint = ''
          ListField = 'Codigo;Descricao'
          ListSource = dsIncoterms
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'INCOTERM'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 7
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'INCOTERM'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cProcesso: TUniDBEdit
          Left = 19
          Top = 45
          Width = 367
          Height = 25
          Hint = ''
          DataField = 'Processo'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 2
          FieldLabel = 'Processo'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cTipo_Produto: TUniDBEdit
          Left = 19
          Top = 72
          Width = 530
          Height = 25
          Hint = ''
          DataField = 'Tipo_Produto'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 3
          FieldLabel = 'Tipo de Produto'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cFator: TUniDBFormattedNumberEdit
          Left = 560
          Top = 396
          Width = 268
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Fator'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 28
          FieldLabel = 'Fator'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cOperacao_Saida: TUniDBLookupComboBox
          Left = 560
          Top = 126
          Width = 581
          Height = 25
          Hint = ''
          ListField = 'Codigo;Descricao'
          ListSource = dsOperSair
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Operacao_Saida'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 9
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Opera'#231#227'o (Sa'#237'da)'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cAliquota_ICMSEntrada: TUniDBFormattedNumberEdit
          Left = 560
          Top = 450
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSEntrada'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 34
          FieldLabel = 'Al'#237'quota ICMS Entrada'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSSaida: TUniDBFormattedNumberEdit
          Left = 832
          Top = 450
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSSaida'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 35
          FieldLabel = 'Al'#237'quota ICMS Sa'#237'da'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cModalidade: TUniDBLookupComboBox
          Left = 560
          Top = 45
          Width = 581
          Height = 25
          Hint = ''
          ListField = 'Descricao'
          ListSource = dsModalidades
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Modalidade'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Modalidade Importa'#231#227'o'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cProduto_Destinado: TUniDBEdit
          Left = 560
          Top = 72
          Width = 581
          Height = 25
          Hint = ''
          DataField = 'Produto_Destinado'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          FieldLabel = 'Produto Destinado a'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object GroupBox3: TUniGroupBox
          Left = 19
          Top = 483
          Width = 1122
          Height = 63
          Hint = ''
          Caption = 'Servi'#231'os (Impostos e Taxas)'
          TabOrder = 36
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object cAliquota_PISServ: TUniDBFormattedNumberEdit
            Left = 193
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Aliquota_PISServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'PIS %'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cAliquota_CSLLServ: TUniDBFormattedNumberEdit
            Left = 742
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Aliquota_CSLLServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'CSLL %'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cAliquota_COFINSServ: TUniDBFormattedNumberEdit
            Left = 376
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Aliquota_COFINSServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'COFINS %'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cAliquota_IRPJServ: TUniDBFormattedNumberEdit
            Left = 559
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Aliquota_IRPJServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'IRPJ %'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cAliquota_ISSServ: TUniDBFormattedNumberEdit
            Left = 925
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Aliquota_ISSServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'ISS %'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cTaxa_Servico: TUniDBFormattedNumberEdit
            Left = 10
            Top = 23
            Width = 180
            Height = 25
            Hint = ''
            DataField = 'Taxa_Servico'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            FieldLabel = 'Taxa Servi'#231'o'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
        end
        object cValor_AFRMM: TUniDBFormattedNumberEdit
          Left = 560
          Top = 423
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Valor_AFRMM'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 38
          FieldLabel = 'Valor AFRMM'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cMoeda_Seguro: TUniDBLookupComboBox
          Left = 19
          Top = 342
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Nome'
          ListSource = dsMoedas
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Seguro'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 39
          Color = clWindow
          FieldLabel = 'Moeda Seguro'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cTaxa_Seguro: TUniDBFormattedNumberEdit
          Left = 560
          Top = 342
          Width = 204
          Height = 25
          Hint = ''
          DataField = 'Taxa_Seguro'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 40
          FieldLabel = 'Taxa Seguro'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cSeguro: TUniDBFormattedNumberEdit
          Left = 767
          Top = 342
          Width = 230
          Height = 25
          Hint = ''
          DataField = 'Seguro_PremioValor'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 41
          FieldLabel = 'Valor Seguro (ME)'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cSeguro_Real: TUniDBFormattedNumberEdit
          Left = 1000
          Top = 342
          Width = 141
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Seguro_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 42
          Color = 16766421
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cVia_Transporte: TUniDBLookupComboBox
          Left = 560
          Top = 153
          Width = 581
          Height = 25
          Hint = ''
          ListField = 'Codigo;Descricao'
          ListSource = dsViaTransporte
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Via_Transporte'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 44
          Color = clWindow
          FieldLabel = 'Via de Transporte'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cTipo_Container: TUniDBLookupComboBox
          Left = 19
          Top = 261
          Width = 530
          Height = 25
          Hint = ''
          ListField = 'Codigo;Descricao'
          ListSource = dsTipoContainer
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Tipo_Container'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 45
          Color = clWindow
          FieldLabel = 'Tipo de Container'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cCliente_ImpNome: TUniDBEdit
          Left = 19
          Top = 369
          Width = 530
          Height = 25
          Hint = ''
          DataField = 'Cliente_ImpNome'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 46
          FieldLabel = 'Cliente Importador'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cCliente_ImpEstado: TUniDBLookupComboBox
          Left = 560
          Top = 369
          Width = 437
          Height = 25
          Hint = ''
          ListField = 'UF;Nome'
          ListSource = dsEstados
          KeyField = 'UF'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Cliente_ImpEstado'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 47
          Color = clWindow
          FieldLabel = 'Estado'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cEmpresa: TUniDBLookupComboBox
          Left = 19
          Top = 18
          Width = 718
          Height = 25
          Hint = ''
          ListField = 'CNPJ;Razao_Social;Estado'
          ListSource = dsEmpresas
          KeyField = 'CNPJ'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Empresa'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 48
          Color = clWindow
          FieldLabel = 'Empresa'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 530
        Top = 1064
        Width = 256
        Height = 16
        Hint = ''
        ParentColor = False
        TabOrder = 1
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Produtos'
      AutoScroll = True
      DesignSize = (
        1283
        733)
      ScrollHeight = 681
      object Panel6: TUniPanel
        Left = 22
        Top = 16
        Width = 938
        Height = 665
        Hint = ''
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object GradeProd: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 523
          Width = 932
          Height = 139
          Hint = ''
          DataSource = dsItens
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          LoadMask.Target = Panel6
          ForceFit = True
          BorderStyle = ubsInset
          TrackOver = False
          Align = alClient
          Font.Name = 'Calibri'
          ParentFont = False
          TabOrder = 1
          ParentColor = False
          Color = clWhite
          Columns = <
            item
              FieldName = 'Item'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Style = [fsBold]
              Width = 56
              Font.Name = 'Calibri'
            end
            item
              FieldName = 'Produto'
              Title.Alignment = taCenter
              Title.Caption = 'Produto'
              Title.Font.Style = [fsBold]
              Width = 286
              Font.Name = 'Calibri'
            end
            item
              FieldName = 'NCM'
              Title.Alignment = taCenter
              Title.Caption = 'NCM'
              Title.Font.Style = [fsBold]
              Width = 70
              Font.Name = 'Calibri'
              Alignment = taCenter
            end
            item
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Font.Style = [fsBold]
              Width = 81
              Font.Name = 'Calibri'
            end
            item
              FieldName = 'Valor_UnitarioME'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (ME)'
              Title.Font.Style = [fsBold]
              Width = 120
              Font.Name = 'Calibri'
            end
            item
              FieldName = 'Valor_UnitarioReal'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (R$)'
              Title.Font.Style = [fsBold]
              Width = 120
              Font.Name = 'Calibri'
            end>
        end
        object pBarraNavItem: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 482
          Width = 932
          Height = 35
          Hint = ''
          Align = alTop
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object NavegaItem: TUniDBNavigator
            Tag = 1
            Left = 1
            Top = 1
            Width = 156
            Height = 33
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataSource = dsItens
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            IconSet = icsFontAwesome
            Align = alLeft
            TabOrder = 0
          end
          object bDuplicarItem: TUniButton
            AlignWithMargins = True
            Left = 899
            Top = 3
            Width = 29
            Height = 29
            Hint = ''
            Margins.Left = 1
            Margins.Top = 2
            Margins.Bottom = 2
            Caption = ''
            Align = alRight
            TabOrder = 1
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            OnClick = bDuplicarItemClick
          end
          object bAdicionarItem: TUniSpeedButton
            Tag = 1
            Left = 157
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Adicionar novo registro.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 0
            TabOrder = 3
            OnClick = bAdicionarItemClick
          end
          object bCancelarItem: TUniSpeedButton
            Tag = 1
            Left = 321
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 4
            OnClick = bCancelarItemClick
          end
          object bEditarItem: TUniSpeedButton
            Tag = 1
            Left = 198
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Editar registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 1
            TabOrder = 5
            OnClick = bEditarItemClick
          end
          object bExcluirItem: TUniSpeedButton
            Tag = 1
            Left = 239
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Excluir reegistro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 2
            TabOrder = 6
            OnClick = bExcluirItemClick
          end
          object bSalvarItem: TUniSpeedButton
            Tag = 1
            Left = 280
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Salva o registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 7
            OnClick = bSalvarItemClick
          end
          object cQtdeDup: TUniSpinEdit
            AlignWithMargins = True
            Left = 745
            Top = 5
            Width = 150
            Height = 25
            Hint = ''
            Margins.Top = 4
            Margins.Bottom = 4
            MaxValue = 100
            TabOrder = 8
            Align = alRight
            FieldLabel = 'Duplicar Itens'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
          end
        end
        object FichaItem: TUniContainerPanel
          Tag = 1
          Left = 0
          Top = 0
          Width = 938
          Height = 479
          Hint = ''
          Enabled = False
          ParentColor = False
          Align = alTop
          TabOrder = 3
          object cProduto: TUniDBEdit
            Left = 20
            Top = 18
            Width = 741
            Height = 25
            Hint = ''
            DataField = 'Produto'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Produto'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cNCM: TUniDBEdit
            Left = 20
            Top = 45
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'NCM'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'NCM'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
            OnExit = cNCMExit
          end
          object cItemPeso_Liquido: TUniDBFormattedNumberEdit
            Left = 20
            Top = 72
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'Peso_Liquido'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cUnitarioME: TUniDBFormattedNumberEdit
            Left = 20
            Top = 126
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'Valor_UnitarioME'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Valor Unit'#225'rio (ME)'
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
            OnChange = cUnitarioMEChange
          end
          object cQuantidade: TUniDBFormattedNumberEdit
            Left = 20
            Top = 99
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'Quantidade'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Quantidade'
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
            OnChange = cQuantidadeChange
          end
          object cItemPeso_Bruto: TUniDBFormattedNumberEdit
            Left = 263
            Top = 72
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'Peso_Bruto'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Peso Bruto'
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object UniPanel2: TUniPanel
            Tag = 1
            Left = 10
            Top = 163
            Width = 455
            Height = 308
            Hint = ''
            TabOrder = 8
            BorderStyle = ubsInset
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'VALORES NA ENTRADA'
            Caption = ''
            object cAliquotaIIE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 8
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_II'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquotaIPIE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 35
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_IPI'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_PISEntE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 62
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_PIS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_COFINSEntE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 89
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_COFINS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IIItemE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 8
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_II'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 5
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IPIIPIE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 35
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_IPI'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 6
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_PISEntE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 62
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_PIS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 7
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_COFINSEntE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 89
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_COFINS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 8
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_ICMSEntradaItemE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 116
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSOp'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 9
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSEntE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 116
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSOp'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_ICMSSTItemE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 143
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_ICMSST'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 11
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cICMSSTItemE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 143
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSST'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 12
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_MVAE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 170
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_MVA'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSRed2E: TUniDBFormattedNumberEdit
              Left = 309
              Top = 197
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'ICMS_Reducao'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 14
              TabStop = False
              ReadOnly = True
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSRedE: TUniDBFormattedNumberEdit
              Left = 206
              Top = 197
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSRed'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 15
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_MVAE: TUniDBFormattedNumberEdit
              Left = 309
              Top = 170
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_MVA'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 16
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_IBSe: TUniDBFormattedNumberEdit
              Left = 206
              Top = 224
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_IBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 17
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IBSe: TUniDBFormattedNumberEdit
              Left = 309
              Top = 224
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_IBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 18
              TabStop = False
              ReadOnly = True
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_CBSe: TUniDBFormattedNumberEdit
              Left = 206
              Top = 251
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_CBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 19
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_CBSe: TUniDBFormattedNumberEdit
              Left = 309
              Top = 251
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_CBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 20
              TabStop = False
              ReadOnly = True
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCIPI: TUniDBFormattedNumberEdit
              Left = 13
              Top = 35
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCIPI'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 21
              FieldLabel = 'BC IPI'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCII: TUniDBFormattedNumberEdit
              Left = 13
              Top = 8
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCII'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 22
              FieldLabel = 'BC II'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCCOFINSE: TUniDBFormattedNumberEdit
              Left = 13
              Top = 89
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCCOFINS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 23
              FieldLabel = 'BC COFINS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object Valor_BCPISE: TUniDBFormattedNumberEdit
              Left = 13
              Top = 62
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCPIS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 24
              FieldLabel = 'BC PIS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object CValor_BCICMSSTe: TUniDBFormattedNumberEdit
              Left = 13
              Top = 143
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCICMSST'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 25
              FieldLabel = 'BC ICMS ST'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object CValor_BCICMSOpe: TUniDBFormattedNumberEdit
              Left = 13
              Top = 116
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCICMSOp'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 26
              FieldLabel = 'BC ICMS '
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCMVAe: TUniDBFormattedNumberEdit
              Left = 13
              Top = 170
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCMVA'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 27
              FieldLabel = 'BC MVA'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCCBSe: TUniDBFormattedNumberEdit
              Left = 13
              Top = 251
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCCBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 28
              FieldLabel = 'BC CBS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCIBSe: TUniDBFormattedNumberEdit
              Left = 13
              Top = 224
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCIBS'
              DataSource = dsValoresEnt
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 29
              FieldLabel = 'BC IBS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
          end
          object UniPanel3: TUniPanel
            Tag = 1
            Left = 470
            Top = 163
            Width = 455
            Height = 308
            Hint = ''
            TabOrder = 9
            BorderStyle = ubsInset
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'VALORES NA SA'#205'DA'
            Caption = ''
            object cAliquota_IIS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 7
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_II'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_IPIS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 34
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_IPI'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_PISS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 61
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_PIS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_COFINSS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 88
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_COFINS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IIS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 7
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_II'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 5
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IPIS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 34
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_IPI'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 6
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_PISS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 61
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_PIS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 7
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_COFINSS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 88
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_COFINS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 8
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_ICMSOpS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 115
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_ICMSOp'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 9
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSOpS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 115
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSOp'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_ICMSSTS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 142
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_ICMSST'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 11
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSSTS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 142
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSST'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 12
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_MVAS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 169
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_MVA'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cICMS_Reducao: TUniDBFormattedNumberEdit
              Left = 309
              Top = 196
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'ICMS_Reducao'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 14
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_ICMSRed: TUniDBFormattedNumberEdit
              Left = 206
              Top = 196
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_ICMSRed'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 15
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_MVAS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 169
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_MVA'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 16
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_IBSS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 223
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_IBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 17
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_IBSS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 223
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_IBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 18
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cAliquota_CBSS: TUniDBFormattedNumberEdit
              Left = 206
              Top = 250
              Width = 100
              Height = 25
              Hint = ''
              DataField = 'Aliquota_CBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 19
              FieldLabel = '%'
              FieldLabelWidth = 30
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_CBSS: TUniDBFormattedNumberEdit
              Left = 309
              Top = 250
              Width = 130
              Height = 25
              Hint = ''
              DataField = 'Valor_CBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 20
              TabStop = False
              ReadOnly = True
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCIPIs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 35
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCIPI'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 21
              FieldLabel = 'BC IPI'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCIIs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 8
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCII'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 22
              FieldLabel = 'BC II'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCCOFINSs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 89
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCCOFINS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 23
              FieldLabel = 'BC COFINS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCPISs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 62
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCPIS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 24
              FieldLabel = 'BC PIS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCICMSSTs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 143
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCICMSST'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 25
              FieldLabel = 'BC ICMS ST'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCICMSOps: TUniDBFormattedNumberEdit
              Left = 13
              Top = 116
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCICMSOp'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 26
              FieldLabel = 'BC ICMS '
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCMVAs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 170
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCMVA'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 27
              FieldLabel = 'BC MVA'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCCBSs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 251
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCCBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 28
              FieldLabel = 'BC CBS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
            object cValor_BCIBSs: TUniDBFormattedNumberEdit
              Left = 13
              Top = 224
              Width = 190
              Height = 25
              Hint = ''
              DataField = 'Valor_BCIBS'
              DataSource = dsValoresSai
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 29
              FieldLabel = 'BC IBS'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsInset
            end
          end
          object CValor_Unitario: TUniDBFormattedNumberEdit
            Left = 263
            Top = 126
            Width = 240
            Height = 25
            Hint = ''
            DataField = 'Valor_Unitario'
            DataSource = dsItens
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Valor Unit'#225'rio (R$)'
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cTotalItem: TUniFormattedNumberEdit
            Left = 506
            Top = 126
            Width = 140
            Height = 25
            Hint = ''
            BorderStyle = ubsInset
            Alignment = taRightJustify
            TabOrder = 10
            BlankValue = 0
            FieldLabelWidth = 0
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
      end
    end
    object TabSheet3: TUniTabSheet
      Tag = 1
      Hint = ''
      Caption = 'Despesas'
      DesignSize = (
        1283
        733)
      object UniPanel1: TUniPanel
        Left = 80
        Top = 16
        Width = 831
        Height = 585
        Hint = ''
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object pBarraNavDesp: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 206
          Width = 825
          Height = 35
          Hint = ''
          Align = alTop
          TabOrder = 1
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object bRemoveTudo: TUniButton
            Left = 362
            Top = 1
            Width = 95
            Height = 33
            Hint = ''
            Caption = 'Remover &Tudo'
            Align = alLeft
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 1
            OnClick = bRemoveTudoClick
          end
          object bBuscar: TUniButton
            Left = 457
            Top = 1
            Width = 104
            Height = 33
            Hint = ''
            Caption = 'Buscar Processo'
            Align = alLeft
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 0
            OnClick = bBuscarClick
          end
          object bMarinha: TUniButton
            Left = 561
            Top = 1
            Width = 113
            Height = 33
            Hint = ''
            Caption = '&Marinha Mercante'
            Align = alLeft
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 2
            OnClick = bMarinhaClick
          end
          object NavegaDesp: TUniDBNavigator
            Left = 1
            Top = 1
            Width = 156
            Height = 33
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataSource = dsDespesas
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            ConfirmDelete = False
            IconSet = icsFontAwesome
            Align = alLeft
            TabOrder = 3
          end
          object bPISCOFINS: TUniButton
            Left = 674
            Top = 1
            Width = 132
            Height = 33
            Hint = ''
            Caption = '&Diferen'#231'a PIS/COFINS'
            Align = alLeft
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 4
            OnClick = bPISCOFINSClick
          end
          object bAdicionarDesp: TUniSpeedButton
            Tag = 1
            Left = 157
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Adicionar novo registro.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 0
            TabOrder = 6
            OnClick = bAdicionarDespClick
          end
          object bEditarDesp: TUniSpeedButton
            Tag = 1
            Left = 198
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Editar registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 1
            TabOrder = 7
            OnClick = bEditarDespClick
          end
          object bExcluirDesp: TUniSpeedButton
            Tag = 1
            Left = 239
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Excluir reegistro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 2
            TabOrder = 8
            OnClick = bExcluirDespClick
          end
          object bSalvarDesp: TUniSpeedButton
            Tag = 1
            Left = 280
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Salva o registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 9
            OnClick = bSalvarDespClick
          end
          object bCancelarDesp: TUniSpeedButton
            Tag = 1
            Left = 321
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
            ShowHint = True
            ParentShowHint = False
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 10
            OnClick = bCancelarDespClick
          end
        end
        object gDespesas: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 247
          Width = 825
          Height = 335
          Hint = ''
          DataSource = dsDespesas
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          TrackOver = False
          Align = alClient
          Font.Name = 'Calibri'
          ParentFont = False
          TabOrder = 2
          Columns = <
            item
              FieldName = 'Conta'
              Title.Alignment = taCenter
              Title.Caption = 'Conta'
              Title.Font.Style = [fsBold]
              Width = 94
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Despesa'
              Title.Font.Style = [fsBold]
              Width = 304
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Taxa'
              Title.Alignment = taCenter
              Title.Caption = 'Taxa'
              Title.Font.Style = [fsBold]
              Width = 64
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Valor_ME'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (ME)'
              Title.Font.Style = [fsBold]
              Width = 64
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Valor_Real'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (R$)'
              Title.Font.Style = [fsBold]
              Width = 64
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Custo_Entrada'
              Title.Alignment = taCenter
              Title.Caption = 'C/E'
              Title.Font.Style = [fsBold]
              Width = 34
              Font.Name = 'Calibri'
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'Custo_Saida'
              Title.Alignment = taCenter
              Title.Caption = 'C/S'
              Title.Font.Style = [fsBold]
              Width = 34
              Font.Name = 'Calibri'
              Alignment = taCenter
              ReadOnly = True
            end>
        end
        object FichaDesp: TUniContainerPanel
          Tag = 1
          Left = 0
          Top = 0
          Width = 831
          Height = 203
          Hint = ''
          Enabled = False
          ParentColor = False
          Align = alTop
          TabOrder = 3
          object cValor: TUniRadioGroup
            Left = 257
            Top = 14
            Width = 317
            Height = 51
            Hint = ''
            Items.Strings = (
              'Menor'
              'Media'
              'Maior')
            ItemIndex = 2
            Caption = 'Buscar valor utilizado anteriormente'
            TabOrder = 1
            Columns = 3
          end
          object cConta: TUniDBLookupComboBox
            Left = 19
            Top = 78
            Width = 782
            Height = 25
            Hint = ''
            ListField = 'Conta;Nome'
            ListSource = dsContas
            KeyField = 'Conta'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Conta'
            DataSource = dsDespesas
            ParentFont = False
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Despesa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnCloseUp = cContaCloseUp
          end
          object cTaxa: TUniDBFormattedNumberEdit
            Left = 19
            Top = 105
            Width = 252
            Height = 25
            Hint = ''
            DataField = 'Taxa'
            DataSource = dsDespesas
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Taxa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
          end
          object cValor_ME: TUniDBFormattedNumberEdit
            Left = 19
            Top = 132
            Width = 252
            Height = 25
            Hint = ''
            DataField = 'Valor_ME'
            DataSource = dsDespesas
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Valor Unitario (ME)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
            OnChange = cValor_MEChange
          end
          object cValor_Real: TUniDBFormattedNumberEdit
            Left = 19
            Top = 159
            Width = 252
            Height = 25
            Hint = ''
            DataField = 'Valor_Real'
            DataSource = dsDespesas
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Valor Unitario (ME)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            DecimalPrecision = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsInset
            OnChange = cValor_MEChange
          end
        end
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Formulas dos C'#225'lculos'
      object gFormula: TUniStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1277
        Height = 463
        Hint = ''
        Margins.Bottom = 1
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
        Top = 472
        Width = 1277
        Height = 258
        Hint = ''
        Margins.Top = 1
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
      object UniSplitter1: TUniSplitter
        Left = 0
        Top = 467
        Width = 1283
        Height = 4
        Cursor = crVSplit
        Hint = ''
        Align = alTop
        ParentColor = False
        Color = clBtnFace
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1291
    Height = 35
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      Tag = 1
      Left = 0
      Top = 0
      Width = 156
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      DataSource = dsSimulaImp
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      ConfirmDelete = False
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Tag = 1
      Left = 156
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      ShowHint = True
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
      Tag = 1
      Left = 197
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      ShowHint = True
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
      Tag = 1
      Left = 238
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
    end
    object bCancelar: TUniSpeedButton
      Tag = 1
      Left = 320
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bSalvar: TUniSpeedButton
      Tag = 1
      Left = 279
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Tag = 1
      Left = 693
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
    object bCalcular: TUniSpeedButton
      Left = 361
      Top = 0
      Width = 73
      Height = 35
      Hint = '  Recalcula todos os totais  '
      ShowHint = True
      ParentShowHint = False
      Caption = 'Calcular'
      Align = alLeft
      ParentColor = False
      ImageIndex = 6
      TabOrder = 8
      OnClick = bCalcularClick
    end
    object bImprimir: TUniButton
      Left = 562
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      ShowHint = True
      Caption = ''
      Align = alLeft
      TabOrder = 9
      ScaleButton = False
      Images = UniMainModule.imgBotoes
      ImageIndex = 28
      OnClick = bImprimirClick
    end
    object bExcel: TUniButton
      Left = 603
      Top = 0
      Width = 90
      Height = 35
      Hint = ''
      ShowHint = True
      Caption = 'Gerar Excel'
      Align = alLeft
      TabOrder = 10
      OnClick = bExcelClick
    end
    object bDuplicar: TUniButton
      Left = 434
      Top = 0
      Width = 128
      Height = 35
      Hint = ''
      ShowHint = True
      Caption = 'Duplicar Simula'#231#227'o'
      Align = alLeft
      TabOrder = 11
      OnClick = bDuplicarClick
    end
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 534
    Top = 120
  end
  object SimulaImp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 100
    SQL.Strings = (
      'select s.*'
      '      ,Pais_OrigemNome = po.Nome'
      '      ,Pais_DestinoNome = pd.Nome'
      '      ,Modal_Nome = m.Descricao'
      '      ,Beneficio_Nome = b.Nome'
      'from SimulaImp s'
      'left join Paises po on po.Codigo = s.Pais_Origem'
      'left join Paises pd on pd.Codigo = s.Pais_Destino'
      'left join ModalidadeImportacao m on m.Codigo = s.Modalidade'
      'left join BeneficioFiscal b on b.Codigo = s.Beneficio'
      'where s.SImulacao =1'
      'order by Simulacao')
    Left = 62
    Top = 88
    object SimulaImpSimulacao: TFDAutoIncField
      FieldName = 'Simulacao'
      Origin = 'Simulacao'
    end
    object SimulaImpEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object SimulaImpData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object SimulaImpModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
    object SimulaImpFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'Fornecedor'
      Size = 50
    end
    object SimulaImpBeneficio: TSmallintField
      FieldName = 'Beneficio'
      Origin = 'Beneficio'
    end
    object SimulaImpPeso_Bruto: TFMTBCDField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      Precision = 18
      Size = 6
    end
    object SimulaImpFOB: TFMTBCDField
      FieldName = 'FOB'
      Origin = 'FOB'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_II: TFMTBCDField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_IPI: TFMTBCDField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      Precision = 18
      Size = 6
    end
    object SimulaImpFrete_Internacional: TFMTBCDField
      FieldName = 'Frete_Internacional'
      Origin = 'Frete_Internacional'
      Precision = 18
      Size = 6
    end
    object SimulaImpSeguro_PremioPercentual: TFMTBCDField
      FieldName = 'Seguro_PremioPercentual'
      Origin = 'Seguro_PremioPercentual'
      Precision = 18
      Size = 6
    end
    object SimulaImpSeguro_PremioValor: TFMTBCDField
      FieldName = 'Seguro_PremioValor'
      Origin = 'Seguro_PremioValor'
      Precision = 18
      Size = 6
    end
    object SimulaImpFOB_Real: TFMTBCDField
      FieldName = 'FOB_Real'
      Origin = 'FOB_Real'
      Precision = 18
      Size = 6
    end
    object SimulaImpFrete_Real: TFMTBCDField
      FieldName = 'Frete_Real'
      Origin = 'Frete_Real'
      Precision = 18
      Size = 6
    end
    object SimulaImpSeguro_Real: TFMTBCDField
      FieldName = 'Seguro_Real'
      Origin = 'Seguro_Real'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_PIS: TFMTBCDField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_COFINS: TFMTBCDField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_ICMSEntrada: TFMTBCDField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_ICMSEntrada: TFMTBCDField
      FieldName = 'Valor_ICMSEntrada'
      Origin = 'Valor_ICMSEntrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_ICMSSaida: TFMTBCDField
      FieldName = 'Aliquota_ICMSSaida'
      Origin = 'Aliquota_ICMSSaida'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_ICMSSaida: TFMTBCDField
      FieldName = 'Valor_ICMSSaida'
      Origin = 'Valor_ICMSSaida'
      Precision = 18
      Size = 6
    end
    object SimulaImpTaxa_Adiministrativa: TFMTBCDField
      FieldName = 'Taxa_Adiministrativa'
      Origin = 'Taxa_Adiministrativa'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCICMS_Entrada: TFMTBCDField
      FieldName = 'BCICMS_Entrada'
      Origin = 'BCICMS_Entrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCICMS_Saida: TFMTBCDField
      FieldName = 'BCICMS_Saida'
      Origin = 'BCICMS_Saida'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_IRPJ: TFMTBCDField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_IRPJ: TFMTBCDField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_CSLL: TFMTBCDField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_CSLL: TFMTBCDField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      Precision = 18
      Size = 6
    end
    object SimulaImpPeso_Liquido: TFMTBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      Precision = 18
      Size = 6
    end
    object SimulaImpPorto_Origem: TStringField
      FieldName = 'Porto_Origem'
      Origin = 'Porto_Origem'
      Size = 30
    end
    object SimulaImpPorto_Destino: TStringField
      FieldName = 'Porto_Destino'
      Origin = 'Porto_Destino'
      Size = 30
    end
    object SimulaImpPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'Pais_Origem'
      Size = 4
    end
    object SimulaImpCidade_Origem: TStringField
      FieldName = 'Cidade_Origem'
      Origin = 'Cidade_Origem'
      Size = 30
    end
    object SimulaImpPais_Destino: TStringField
      FieldName = 'Pais_Destino'
      Origin = 'Pais_Destino'
      Size = 4
    end
    object SimulaImpCidade_Destino: TStringField
      FieldName = 'Cidade_Destino'
      Origin = 'Cidade_Destino'
      Size = 30
    end
    object SimulaImpMoeda_FOB: TSmallintField
      FieldName = 'Moeda_FOB'
      Origin = 'Moeda_FOB'
    end
    object SimulaImpTaxa_FOB: TFMTBCDField
      FieldName = 'Taxa_FOB'
      Origin = 'Taxa_FOB'
      Precision = 18
      Size = 6
    end
    object SimulaImpMoeda_Seguro: TSmallintField
      FieldName = 'Moeda_Seguro'
      Origin = 'Moeda_Seguro'
    end
    object SimulaImpTaxa_Seguro: TFMTBCDField
      FieldName = 'Taxa_Seguro'
      Origin = 'Taxa_Seguro'
      Precision = 18
      Size = 6
    end
    object SimulaImpMoeda_Frete: TSmallintField
      FieldName = 'Moeda_Frete'
      Origin = 'Moeda_Frete'
    end
    object SimulaImpTaxa_Frete: TFMTBCDField
      FieldName = 'Taxa_Frete'
      Origin = 'Taxa_Frete'
      Precision = 18
      Size = 6
    end
    object SimulaImpOperacao_Entrada: TSmallintField
      FieldName = 'Operacao_Entrada'
      Origin = 'Operacao_Entrada'
    end
    object SimulaImpOperacao_Saida: TSmallintField
      FieldName = 'Operacao_Saida'
      Origin = 'Operacao_Saida'
    end
    object SimulaImpCliente_NotaZonaFranca: TBooleanField
      FieldName = 'Cliente_NotaZonaFranca'
      Origin = 'Cliente_NotaZonaFranca'
    end
    object SimulaImpCliente_NotaConsumidorFinal: TBooleanField
      FieldName = 'Cliente_NotaConsumidorFinal'
      Origin = 'Cliente_NotaConsumidorFinal'
    end
    object SimulaImpINCOTERM: TStringField
      FieldName = 'INCOTERM'
      Origin = 'INCOTERM'
      Size = 3
    end
    object SimulaImpProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object SimulaImpDI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Size = 15
    end
    object SimulaImpQtde_Container: TIntegerField
      FieldName = 'Qtde_Container'
      Origin = 'Qtde_Container'
    end
    object SimulaImpCliente_ImpNome: TStringField
      FieldName = 'Cliente_ImpNome'
      Origin = 'Cliente_ImpNome'
      Size = 50
    end
    object SimulaImpCliente_ImpEstado: TStringField
      FieldName = 'Cliente_ImpEstado'
      Origin = 'Cliente_ImpEstado'
      Size = 2
    end
    object SimulaImpCliente_NotaNome: TStringField
      FieldName = 'Cliente_NotaNome'
      Origin = 'Cliente_NotaNome'
      Size = 50
    end
    object SimulaImpCliente_NotaEstado: TStringField
      FieldName = 'Cliente_NotaEstado'
      Origin = 'Cliente_NotaEstado'
      Size = 2
    end
    object SimulaImpCliente_NotaContrib: TBooleanField
      FieldName = 'Cliente_NotaContrib'
      Origin = 'Cliente_NotaContrib'
    end
    object SimulaImpCliente_NotaSimples: TBooleanField
      FieldName = 'Cliente_NotaSimples'
      Origin = 'Cliente_NotaSimples'
    end
    object SimulaImpCliente_NotaJuridica: TBooleanField
      FieldName = 'Cliente_NotaJuridica'
      Origin = 'Cliente_NotaJuridica'
    end
    object SimulaImpTipo_Produto: TStringField
      FieldName = 'Tipo_Produto'
      Origin = 'Tipo_Produto'
      Size = 60
    end
    object SimulaImpFator: TFMTBCDField
      FieldName = 'Fator'
      Origin = 'Fator'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_IPISai: TFMTBCDField
      FieldName = 'Valor_IPISai'
      Origin = 'Valor_IPISai'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_PISSai: TFMTBCDField
      FieldName = 'Valor_PISSai'
      Origin = 'Valor_PISSai'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_COFINSSai: TFMTBCDField
      FieldName = 'Valor_COFINSSai'
      Origin = 'Valor_COFINSSai'
      Precision = 18
      Size = 6
    end
    object SimulaImpTotal_NFSaida: TFMTBCDField
      FieldName = 'Total_NFSaida'
      Origin = 'Total_NFSaida'
      Precision = 18
      Size = 6
    end
    object SimulaImpTotal_Produtos: TFMTBCDField
      FieldName = 'Total_Produtos'
      Origin = 'Total_Produtos'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_Despesas: TFMTBCDField
      FieldName = 'Valor_Despesas'
      Origin = 'Valor_Despesas'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCIPI_Entrada: TFMTBCDField
      FieldName = 'BCIPI_Entrada'
      Origin = 'BCIPI_Entrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCIPI_Saida: TFMTBCDField
      FieldName = 'BCIPI_Saida'
      Origin = 'BCIPI_Saida'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCII_Entrada: TFMTBCDField
      FieldName = 'BCII_Entrada'
      Origin = 'BCII_Entrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpBCICMSST: TFMTBCDField
      FieldName = 'BCICMSST'
      Origin = 'BCICMSST'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_ICMSST: TFMTBCDField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      Precision = 18
      Size = 6
    end
    object SimulaImpTotal_NFEntrada: TFMTBCDField
      FieldName = 'Total_NFEntrada'
      Origin = 'Total_NFEntrada'
      Precision = 18
      Size = 6
    end
    object SimulaImpValor_DespesasSai: TFMTBCDField
      FieldName = 'Valor_DespesasSai'
      Origin = 'Valor_DespesasSai'
      Precision = 18
      Size = 6
    end
    object SimulaImpProduto_Destinado: TStringField
      FieldName = 'Produto_Destinado'
      Origin = 'Produto_Destinado'
      Size = 50
    end
    object SimulaImpTaxa_Servico: TFMTBCDField
      FieldName = 'Taxa_Servico'
      Origin = 'Taxa_Servico'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_PISServ: TFMTBCDField
      FieldName = 'Aliquota_PISServ'
      Origin = 'Aliquota_PISServ'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_COFINSServ: TFMTBCDField
      FieldName = 'Aliquota_COFINSServ'
      Origin = 'Aliquota_COFINSServ'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_IRPJServ: TFMTBCDField
      FieldName = 'Aliquota_IRPJServ'
      Origin = 'Aliquota_IRPJServ'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_CSLLServ: TFMTBCDField
      FieldName = 'Aliquota_CSLLServ'
      Origin = 'Aliquota_CSLLServ'
      Precision = 18
      Size = 6
    end
    object SimulaImpAliquota_ISSServ: TFMTBCDField
      FieldName = 'Aliquota_ISSServ'
      Origin = 'Aliquota_ISSServ'
      Precision = 18
      Size = 6
    end
    object SimulaImpDestacar_ImpCred: TBooleanField
      FieldName = 'Destacar_ImpCred'
      Origin = 'Destacar_ImpCred'
    end
    object SimulaImpValor_AFRMM: TFMTBCDField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      Precision = 18
      Size = 6
    end
    object SimulaImpVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'Via_Transporte'
    end
    object SimulaImpTipo_Container: TSmallintField
      FieldName = 'Tipo_Container'
      Origin = 'Tipo_Container'
    end
    object SimulaImpPais_OrigemNome: TStringField
      FieldName = 'Pais_OrigemNome'
      Origin = 'Pais_OrigemNome'
      Size = 50
    end
    object SimulaImpPais_DestinoNome: TStringField
      FieldName = 'Pais_DestinoNome'
      Origin = 'Pais_DestinoNome'
      Size = 50
    end
    object SimulaImpModal_Nome: TStringField
      FieldName = 'Modal_Nome'
      Origin = 'Modal_Nome'
      Size = 30
    end
    object SimulaImpBeneficio_Nome: TStringField
      FieldName = 'Beneficio_Nome'
      Origin = 'Beneficio_Nome'
      Size = 15
    end
  end
  object dsSimulaImp: TDataSource
    DataSet = SimulaImp
    Left = 62
    Top = 140
  end
  object Itens: TFDQuery
    AfterScroll = ItensAfterScroll
    MasterSource = dsSimulaImp
    MasterFields = 'Simulacao'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      'from SimulaProdutos '
      'where Simulacao = :Simulacao '
      '')
    Left = 158
    Top = 88
    ParamData = <
      item
        Name = 'SIMULACAO'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object ItensSimulacao: TIntegerField
      FieldName = 'Simulacao'
      Origin = 'Simulacao'
    end
    object ItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object ItensProduto: TStringField
      FieldName = 'Produto'
      Origin = 'Produto'
      Size = 60
    end
    object ItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object ItensQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
      Size = 3
    end
    object ItensValor_UnitarioME: TFMTBCDField
      FieldName = 'Valor_UnitarioME'
      Origin = 'Valor_UnitarioME'
      Precision = 18
      Size = 6
    end
    object ItensValor_Unitario: TFMTBCDField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Precision = 18
      Size = 6
    end
    object ItensPeso_Liquido: TFMTBCDField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      Precision = 18
      Size = 3
    end
    object ItensPeso_Bruto: TFMTBCDField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      Precision = 18
      Size = 3
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 158
    Top = 140
  end
  object Despesas: TFDQuery
    MasterSource = dsSimulaImp
    MasterFields = 'Simulacao'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaDespesas')
    Left = 255
    Top = 88
    object DespesasRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object DespesasSimulacao: TIntegerField
      FieldName = 'Simulacao'
      Origin = 'Simulacao'
    end
    object DespesasConta: TStringField
      FieldName = 'Conta'
      Origin = 'Conta'
      Size = 15
    end
    object DespesasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 50
    end
    object DespesasTaxa: TFloatField
      FieldName = 'Taxa'
      Origin = 'Taxa'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object DespesasValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      Origin = 'Valor_ME'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object DespesasValor_Real: TCurrencyField
      FieldName = 'Valor_Real'
      Origin = 'Valor_Real'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object DespesasCusto_Entrada: TBooleanField
      FieldName = 'Custo_Entrada'
      Origin = 'Custo_Entrada'
    end
    object DespesasCusto_Saida: TBooleanField
      FieldName = 'Custo_Saida'
      Origin = 'Custo_Saida'
    end
  end
  object dsDespesas: TDataSource
    DataSet = Despesas
    Left = 255
    Top = 140
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select CNPJ, Razao_Social from Empresas ')
    Left = 158
    Top = 612
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 158
    Top = 664
  end
  object Contas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Conta'
      '      ,Nome = Nome_Financeiro'
      '      ,Custo_Entrada'
      '      ,Custo_Saida'
      'from PlanoContas'
      'where Desativada <> 1'
      'and Tipo = '#39'P'#39)
    Left = 255
    Top = 192
  end
  object dsContas: TDataSource
    DataSet = Contas
    Left = 255
    Top = 244
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Moedas order by Nome')
    Left = 158
    Top = 403
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 158
    Top = 455
  end
  object OperEnt: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao '
      'from OperacaoFiscal '
      'where ES = 0 '
      'and Desativado <> 1 '
      'order by Descricao')
    Left = 62
    Top = 403
  end
  object dsOperEnt: TDataSource
    DataSet = OperEnt
    Left = 62
    Top = 455
  end
  object Beneficios: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        'select Codigo, Nome, Percentual_Beneficio from BeneficioFiscal o' +
        'rder by Nome')
    Left = 62
    Top = 296
  end
  object dsBeneficios: TDataSource
    DataSet = Beneficios
    Left = 62
    Top = 349
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Paises order by Nome')
    Left = 62
    Top = 612
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 62
    Top = 664
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select UF, Nome from Estados ')
    Left = 158
    Top = 507
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 158
    Top = 560
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 595
    Top = 50
  end
  object Modalidades: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ModalidadeImportacao')
    Left = 62
    Top = 192
  end
  object dsModalidades: TDataSource
    DataSet = Modalidades
    Left = 62
    Top = 244
  end
  object dsOperSair: TDataSource
    DataSet = OperSai
    Left = 62
    Top = 560
  end
  object OperSai: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao '
      'from OperacaoFiscal '
      'where ES = 1'
      'and Desativado <> 1 '
      'order by Descricao')
    Left = 62
    Top = 507
  end
  object ViaTransporte: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from ViaTransporte')
    Left = 158
    Top = 192
  end
  object dsViaTransporte: TDataSource
    DataSet = ViaTransporte
    Left = 158
    Top = 244
  end
  object TipoContainer: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Descricao from TipoContainer')
    Left = 158
    Top = 298
  end
  object dsTipoContainer: TDataSource
    DataSet = TipoContainer
    Left = 158
    Top = 350
  end
  object Alerta: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 544
    Top = 51
  end
  object dsIncoterms: TDataSource
    DataSet = Incoterms
    Left = 255
    Top = 350
  end
  object Incoterms: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from INCOTERMS order by Codigo')
    Left = 255
    Top = 298
  end
  object SimulaNFItensEnt: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from INCOTERMS order by Codigo')
    Left = 255
    Top = 403
  end
  object dsSimulaNFItensEnt: TDataSource
    DataSet = SimulaNFItensEnt
    Left = 255
    Top = 455
  end
  object NCM: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select Codigo, Nome from Paises order by Nome')
    Left = 255
    Top = 507
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 255
    Top = 560
  end
  object ValoresEnt: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaValores where ES = 0')
    Left = 332
    Top = 88
  end
  object dsValoresEnt: TDataSource
    DataSet = ValoresEnt
    Left = 332
    Top = 140
  end
  object NCMICMS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCMICMS')
    Left = 255
    Top = 612
  end
  object dsNCMICMS: TDataSource
    DataSet = NCMICMS
    Left = 255
    Top = 664
  end
  object dsValoresSai: TDataSource
    DataSet = ValoresSai
    Left = 332
    Top = 244
  end
  object ValoresSai: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaValores where ES = 1')
    Left = 332
    Top = 192
  end
  object rSimulacaoRadar: TppReport
    AutoStop = False
    DataPipeline = pSimulacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Simula'#231#227'o de calculo de importa'#231#227'o'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\SimulacaoImpo' +
      'rtacao_Radar.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'TextFile'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = False
    PDFSettings.Outline = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.txt'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'Cybersoft ERP Importa'
    XLSSettings.Author = 'Cybersoft'
    XLSSettings.DefaultBands = [btHeader, btTitle, btColumnHeader, btGroupHeader, btDetail, btGroupFooter, btColumnFooter, btSummary, btFooter, btPageSummary, btPageStyle, btNotKnown]
    XLSSettings.ExportFormattedStrings = True
    XLSSettings.IgnorePageHeight = True
    XLSSettings.MergeAdjacentCells = False
    XLSSettings.PreserveLineBreaks = True
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Simula'#231#227'o de Importa'#231#227'o'
    XLSSettings.Title = 'Simula'#231#227'o de Importa'#231#227'o'
    XLSSettings.WorksheetName = 'Simula'#231#227'o'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 536
    Top = 205
    Version = '23.05'
    mmColumnWidth = 0
    DataPipelineName = 'pSimulacao'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppLabel175: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vit'#243'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object iLogoRadar: TppImage
        DesignLayer = ppDesignLayer18
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000E00000
          004C080600000074F3BB74000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000025
          AB4944415478DAEDDD07BC5D55B106F0496E424802E99D347A8906A952A57790
          2E08D2042C808028A2A288A8A022A828168A3445295244419A60A40AD2416A20
          242421ED8650420849DEFD6F5879278773EEDDA7DCE4E57186DF21C93D77B7B5
          E65B33F3CDCCDA1D16B44834A4210D5922D2A101C0863464C94903800D69C812
          94A50E803367CE8C77DF7D375E7FFDF578EDB5D7C2ED77EFDE3D7AF4E811CB2E
          BB6CBCF3CE3B3179F2E4E8D0A143F6FB9D3B77CEBEEFD6AD5BF6EFB7DE7A2BBA
          74E912CB2CB34CF4EAD52B66CC9811B367CFCECEE9F8575F7D353BD6C7B15DBB
          76CD8EEFDBB76F76EDB7DF7E3BBBAEF3343535C5F2CB2F9F7DFAF5EBB7A487A6
          214BA12C75007CE59557E2B9E79E8BE79F7F3E030CA0CC9B372F565A69A5587D
          F5D563D2A44971C10517C4061B6C90810CB03A75EA1423468C88C18307C7238F
          3C92FDAEBF03CD840913E2A9A79E8AE9D3A7C7AAABAE1A975E7A69762C903A16
          C8860E1D9A7D07A8FFFEF7BF331076ECD831E6CF9F9F2D00CEB3EEBAEBC6A041
          8396F4F034642993A50A80ACD54B2FBD14B7DD765B0C183020030620BCF9E69B
          3170E0C0183972643CF3CC33F1A52F7D294E3DF5D4E8D9B367069A679F7D36B3
          52EBACB34EFCF39FFFCC00B6DA6AAB65E700E43BEFBC33C68F1F1F9B6CB2497C
          FDEB5F8F6F7FFBDBD1A74F9FCCCAB91E30FA6EECD8B1F1C4134FC42AABAC12BD
          7BF7CE000AC02C23007EEC631FCBAC6A431A9257962A00B26E8F3EFA6806A2CF
          7DEE7399B203C2934F3E9981819BE977BEFCE52FC79FFEF4A7CC6A91DFFFFEF7
          995BBADE7AEBC5C30F3FBC1080400B80FFF8C73FE2E5975F8ECD37DF3C4E3EF9
          E4ECF7D758638DECD86BAFBD36FB2E8177E595578E4D37DD34B3A8E4F1C71F8F
          FFFCE73FD1DCDC1C071D7450C3156D4845B25401F0C5175F8C871E7A289E7EFA
          E90C2849FEF6B7BF65C00346B1DAF1C71F1FBFFBDDEF32ABF4DFFFFE37EEBEFB
          EECC9AB1500F3EF8E02200E4CEDE71C71D0B01F88D6F7C237EFBDBDF66D6D131
          095C1FF9C847E29A6BAE89BDF7DE3BB6DC72CB45EE8B451E33664C7CF18B5FCC
          62C686156C485E59AA000824623820E46216CA4F7EF2939833674E6CBCF1C671
          F4D147C757BFFAD58C98993871624C9B362DB368ACD8CD37DF1CA3478F8E51A3
          466531A4981278A64E9D1A1B6EB8619C70C20919808119F07C56586185586BAD
          B5E28A2BAEC840BAEBAEBB2E726D56521C79E491472E24771AD2903CB2540110
          51C2A2DD70C30DB1FBEEBB677159925FFDEA5759BC07649FFFFCE7E3939FFC64
          C65EB28CDCC66DB7DD3603C6EDB7DF9EC5741B6DB451F6FD638F3D9681C77762
          4AE075EEE5965B2E73273FFAD18F66E0036EB1225776FBEDB78FFEFDFB67BF7F
          D34D37C5030F3C9011403BECB043037C0DA948962A0012A408B7F05FFFFA57E6
          2612160E1836DB6CB38C113DE5945332371291326EDCB88CB9E41A6EB5D55619
          D9F2E73FFF39236510380814A40AB792B53CE38C333230A7F8310902C802E058
          AE694A79CC9D3B378B0777D96597CC5236A42195489B009CD63C3D26BE3D231E
          7DFDF998B3E0DD7C675DD0213A75688ABECBF488757BAC12DD9ABA44EF3A5906
          2E216BE44F0020F2752C168B868C61F5860F1F9E011068DE78E38D2C5D801505
          50A003223FE332022302C779E501870D1B96C592A5AE2DFFE87C80270502888E
          6FC47E0DA946DA04E0F4993362F29CE638FEF9F3E2E5395362DE8279F1DE010B
          22CA1ED9213A47A718D6A57F7C6DC43E317AF9156360EFFAB183009472703E2C
          990F00F80EC80A010438445C97FE9D8E6FEBD872D7F60140C7A6F336A421954A
          9B009CF9DACC983DEF9D3863DC5571DDF47B63FADCD75A70D71AF89CB445315B
          40D8BBD37271F0A0ADE3C8A13BC588BE0DF7AC210D29965C316073CBAA7FD7CC
          A7E28C97AF8A27DF1A1773E7CF8D720804BEEC4F56B043A758B9DBA0387FF5E3
          6244D701D1A757C35234A42185920B80ACE0D47766C5E92F5D19B7CD7C24B382
          7900489A3A36C5F7471E143BF75B3F56EE3F7C493F6F431AF27F4A72B3A0539B
          A7C7E593EF8CCBA6FC239E7E6B7CCC5F30BFCC09FF17804ECC5DDDBCE7A83871
          F8DEF1B11E2B47BF5E7DAABE59B19B426809F9BCE4AD5A4E440B920551E3230D
          B1240813F1A35CA66B2389EA7D6E0412461899D496885D9157482463E38348F2
          B32515D3A6F9155B23D4EA5D55A4E862CA9429B9C687A4827C6383684BBA83DC
          AB975494861833E1E1F8D984EBE28E998FC59CCC0D2D75C2452D2000F6ECD43D
          4E1AB16FECDA77C3162B38ACEA9BA55CF276AA5C90256D89474B4A26296FE0E4
          EFA40B0000D9E2BB7A0E683901100AA6444E55CDFAEBAF9F1584D74BA4496EBD
          F5D6ACEA8792B526142B2D4C94CAD860882D0CC64751B9140F10F89DC5054839
          D65B6EB925BB0FF9D715575CB1AEE75730A1EC50D1451EB148011CF0D1159F21
          4386642CB931323EB5EA4E45009C34634A9C3BE186B862CA9878E59DE9654EB8
          2800495387A6D86BC0A671E8E06D6274F791D1BBCA58906229FB52A922DD5089
          784C8A67954FF59C6BAFBD76F67740A088ED691501E49E7BEE8933CF3C332B91
          DB6FBFFDB2EA9C7A5DD3E274FEF9E767D53A729FD588B1B138A914F201006303
          94A930A1BD44BA4861FB49279D94CDC921871C92950BD6734E7EF6B39FC54517
          5D947921D588C55CCE5729A38FE20BF96700AD7691AA38117FF3CBF7C785936E
          8E9B663C18F34AB8A1A50048F1472D3722BE3864E7D8AECF3A31A4CFC0AA6E96
          8BA592E5B8E38EAB1880C5627563053FFEF18F67097A85DA14AC3D4098F28EE7
          9E7B6E96C8771D85DBAA75EA6505EB01C024C9F5323E2C91123D8B867FB757CB
          95B082055744617CBEF5AD6F65C511F5BC1E005E7CF1C5358F0FEF81353426DB
          6CB34D569EE89E5B4B5F95938A01386366735C3CE996CC159D36F7F51227FC20
          00FD68D9A62EF1F9213BC68103B78C510356AEEAC1CB01901B4961B2EB76E8B0
          C8311E2FE5EDB8AD3E290798F27856FA3DF6D8233EF399CF2CEC72A8A758DDD5
          9CB2DC3A37DCEF9E7BEE99ADF24AE7EA21E500A817D2A7785CD2D8147ED23825
          95487952F7BBC5165B64561B1859CA7ABAA55C735D25EA7BD5FABAEEA73EF5A9
          38F8E083B39ADD7A2D8A3FFFF9CF330B98C627B9E2A9AFB4708CD218A43129D4
          9FF45DF2A8B4BFA90FE69E56EA9256558A76E3CBF7C6F9136F8A5B663CFC5E4E
          7091137E1080F1FE836DDC63CD387CC8F6B1FF4A5B573580A50048B90047ADA7
          78A558D4873A8EDB61E0F5F4F968AA4D8F6E12F4129AF4238E38A2EE31A1EB5E
          7FFDF5F1D39FFE34B386268E221F76D8619952D7434A01D078A43E458A92C473
          1B3F6404CBACB2C7222106E3E6FB37855B645E5BEE392D549FFEF4A7EBEA2DB0
          7E62BF1FFCE00759A51111936A2B3327F5F2128A01885C51E7ABB5CDF58A01A8
          D2CAB8D01D258C481C7F4FC518492CFEE652A78CB2C64AF4A72A003EF1EAF371
          D5D4312D20BC3966BEFB66D1094B00F07DE9D1D4ADC5026E15470FDD2546F61F
          5AF10096022025FBDAD7BE964D9495AC58D2CA6EE5024696C82A7BF9E5976775
          A5A99CCD7980504B91A2EA7A4DBAD84F93F0B1C71E9B5D2FDD3777659F7DF6C9
          BA36EA115B9502200563650F38E08092162B593EF70474C809E3E37E01C2FD2A
          B94B42D18C0BB74BD70812A2564B489915D85F76D96571E595572E24D78061AF
          BDF6CAEE9F8B570F2906A0D84D08F2DDEF7E379B0FD6BE58E88EF1310E4A1CF5
          93E221EEBDF7DE6C114F227636CE1628A0CE2B550110197347F3A3F1F309D7C7
          136F8D5B2425500E800BDEFFD9A63DD78C2387EC10FBACB455C503580E807AF8
          F6DF7FFF36E305936D20ADFA26FDBCF3CECB0AB575D4A7B8C7409E73CE395980
          8D7CA85574E3B37EC817F75C687505F2471D7554ECB6DB6E355FA71400018445
          E7CAD986A335B150B83F0B92858A35D475F2F7BFFF3D53BC428F83B2F2382C56
          DCAE5A4008F4145A7C66AC0A055B7CE0810766EEBADECD5AA5140075C5B0BC16
          C1D69E23ED45445774CF88E5AFBBEEBA850B8671C12354EAD55405409531CFBC
          353E2E9D747B5CF2EAED8BB8A1AD5940326499BEB147FF8DE298A1BBC6F07E95
          95A7D50AC0E27351AE3FFEF18F597F615AE901E32B5FF94AE64EA0E26B71B328
          176BFBCB5FFE32EB392C96A4C89A8B29432DD7AA1580C50290BA43EEBBEFBEB8
          F1C61BB33192A3232C857BFFC217BE103BEFBC73068E6A41C8A248CDD88BA7D0
          A210E744547DF6B39FCD58D95AA51600164ADA99C1CE09DAD1923BCA8DB56018
          F3BC2994AADB91C64F9F1477363F1E27BD7071CC9AF766CBCA5E1433940160D7
          8E5D62939E6BC4F1C3F788AD86AE57D135EB094062C5C58A59CD52EE8C25040A
          2EE39A6BAE5915B39544CCA0011800DD7BBADF14CC033BAA1D0029422DD7AA37
          00937043ED22E0BC5AC052121B081148FA27B9712C61A522BEB2CB0050F048D2
          79CD01A5363E6258F74FB16B957A01908805B9A18E4D1E827B97DE620559ED3C
          52350059C1B1B327C799E3AE8D5B663C18EF2C989BEBB88E2DFFADD26D701C3C
          689B3878F03615D587D61B80D837D4F725975C92E5E8B20169997CA0704E4449
          2DB1208515DB70555858F78A5A473A208280909B2BD6E1CE4988576B49DA0B80
          447E4E33B2188DD2A5B117631A77F13710562ABC83DFFCE63759829CEB2B0430
          F6FECEFA72F72C4A3BEDB453961F9473AB45EA09401E8271D13F6AAF206E3BB1
          1089ED1148793C9A9A1A72274C9F1C77CFFC6F7C7BECA5F1EADCE69279C152D2
          AB53F7D8A2D7E8387DE583A347CBDFF3F60AD61B80840BC40A728192703D5925
          60A9B664CCBD72DD28184B0BD8408074D141EF3B71167612D58E82D7049C9A8C
          2B95F60420B16888D55421D9932709D60F8BA821B9122BC83D17635AA000D1F8
          50D8638E39261B17E101E69155313E145ABEB61637BD9E004C954DCE4777927B
          AE72865BFEA31FFD281787501300E504A7CE7D2DBEFEFCC571CF6B4FC59BF3DE
          CE755C53878EB1E2B203E3B4150F8A8D7BAD19FD7BE773BDDA03802699053CFB
          ECB317122426462278BBEDB6ABBA1C8AA51023706FB96DEE93A5B36F0CB7CE77
          E242D734F15C396E0B26B61A696F00128B152B68BCD28ACF4DB4E2632BEDC793
          57B89CBFFEF5AFB385882B8AC146BAFCE217BFC8E6E4C73FFE71167772458DCF
          D65B6F9D25E96BA93AA92700090BC87ABB67E39F72CB4218FA94C762D7BC2505
          465491F679136F8A497366C4FCC877BAE59A968D6DFBAC13A7AE7860D639DFBB
          67DB2B5B7B0090FF6E05B362A5A15076C502DAFBA51AC5154F3AE71FFEF0870C
          6CA969F79BDFFC6646E1535E00F4BD9594EB259EFADEF7BE57711E29C9E200A0
          140552E6873FFC61BCF0C20B0BC70B705C0310F32A31EB0780E24B734959E573
          2D505CF3D34E3B2DFEFAD7BF665606C3685C0010D358AD97D01E00748FF2BBC6
          3F9131E6F8ACB3CECA55D451330075CC3FF9C6B83865ECEFE389375F8AB7E7E7
          8B059134CB75EA1A17AC716CACBBFC2A31B84FDB83DA1E00148B59D1AD626928
          B8392CA081ACC622496D9814048C73A6D51DC84D8A7BF71DD7975521400880AC
          6E3560591C0014F7009E9481FB4F143CE545BDDB0C4BA1729E7B959601420BA0
          F1116F73C3791CC6DFF9B9EFE2688A6D51DA77DF7D33771750AA7145EB0D4096
          9A47600F210B45AA1CB27003601E97BC6600EA159C336F6E7C67EC6571F38C87
          5A5CD259B98E73D18E1D9AE2B041DBC4E756D831862EDB3F7AF5ECD9EA31ED01
          40DD038070F5D557BF37202D2E84D5D8396DF29447A10A8592A2D559B8C4ECA1
          E9E5FB588834292C89F8471A244D0122430A44A744A5CAB03800486C648CB94C
          794DC26310F70020D6B235A1A8163DCF993654362672A14AF5D21C8A115948E3
          E8EF622B048DED273D4B35C50BF58E018DB9CDBFCCB7428634165227DFFFFEF7
          739DAF6EBBA25D37764C9C3DE1DA78E8F51716E605CBA522165EBC25161CDD7D
          449C3C72FF58AFC72A31B077EB416B7BB0A029A649600140EE20D64D0957A5EE
          0E8282F5C3AE3A3FCBA6A0994B0A1069E5F62C7FF9CB5FB22A0C6C1FC1825242
          CAC8E5AA44161700592C24124B945212C081B0F233B15A5BC79F7EFAE9D966CA
          C627A533E4FA5492140AA05B1CEFBAEBAE6C91729DEF7CE73B192B5A8D67524F
          008A5B11535E63C08B4963A180C3734863E591BA011023AA63FE2FD3EF8BE6F7
          8BB4DB0460CB7F3D3B778BAF0EDB3B76E9B741ACDABF759FB9DE00147F78910B
          65482B188540AB5326935CA925A234F27E8A8BDD230B2A87C53A14BA4DA9040B
          F881868875804F2C44292BB9F6E20220C5E386228CC4B2D4071183803166AD55
          F5888D2D50E64FFC647CB0C018542C67710917769487C0C2CC9A352B9B1B8B99
          F8904B5F69AC5C4F00F20410483C019555296F694F59DE8E58358FD40D8014EA
          C6690FC485936E89FB673D93FB388CE86E7D378C2F0CDD25365B61ED567FB79E
          00A400287565628892144003817890FB594DDE497508EBC7154DB10DE52ADECE
          9EB0065CD1134F3C31FB7D221571F8E187676E4C25CFB3B800689EA509281A30
          8A03790DCAEA1028DCEC72426953CC94B68504280B94E38A0B115CC7E2A86430
          95A91953EEABEE83F4FE8EBC522F0072A1E9A118B57077060BB624BC62F5BC65
          8C75DD98F7D1C9CF6600BC7ACADD31ABA848BB9CB8F8D02E7DE39B23F78B1DFB
          AED7AA1B5A2B00B93CDC3D8A2FE6732E81B4C46FCA43EDB8E38E597B89B8AD92
          15569CC2EA79BB524AB24BE25BDDAD88A5D2199419F8C53540EB3E588444EBE7
          5D45C9E2022051E18310C18A9A076327F6B370700F4B1124C687F5633152329F
          4BC95DA3B480586A7CC489D8625630A96A72772D6E95540FD50A400B8263A58F
          2C0CDE949588A864C9792F5AB7F24A5D01282571DDD4FBE292C9B7C5936FBCF4
          8156A5D2B2203A75E8149F1AB0451C34689BD87C68F99ABF52001463018C2AF4
          52DD10945A9294FB93DA6DACA6DC4F2B785220605375CF82E9C8AE24C8076C0A
          26F76362B4D43827328572E9AE28A7280028E92C6E4C16C5CA0E345CE1BC0AB6
          B801E8DE00306D509C0068F52F25AC9F443E76D073523B0976AE3902A7DC73F2
          546C238141561D432CB4AC2D77B77807F3D6A418800813F76DD134FF85DD10EE
          CF5CB0D4496FE89F4E11C0738E543FECF9818E11E08A5752BC515700BE579E36
          291E7EE38578F9ED29B9374E120D0E5F7640ACB7FCAAB1EEE0D5CBFE562900F2
          BBC54B2682FB582CE96DBA26DDC7DF296BEA4C3078563E03A74B1D582A158A21
          69CC129B2C136331907857D9D15A7B0AE0B298827916544132CB902C715E2BB8
          38014809B9A0AE995C508B8D6B0166B1B0648A97B99E40C8DDF78C2C3DF7B3B5
          04BE6381F7C20B2FCC9E2DEDF3C305656DDA227D0AA51880CE03CCD8E7C27EC9
          249ECD7C784EBA63214F5E14490DBDC215CF9D2C7225299276793784D444CE7C
          7CD1DD44F46A2521DFDA9614094C95081704056E15A4F00A692B2D88A6202C81
          D846AC92D830ABFBA1871E9A7555B436218E37A1E209848389260AC129A789CD
          134F2C2E008A55C53D4898B4E53FCB0144AC1260168BFB91B066FDD22EE5E26B
          AEB9716FABDA881554ABAB38C2F501584A02736A91CB1B6F1503B05A49AF2400
          5E0B7F22CDAAE10C96AA97B3D46B4F9854704DC9814F1C6020AB49EEB260766A
          13DB48C01B4E45CA945E7C532AB62996F4D6279532E22416945556FB8870C8D3
          E0B9B800C8C27B390E77332D36E2702E187752F142A1001C771FDBCB3D4FA2E0
          0060296E5BEE7E02BDC26779DBE425083B3C1FEB9B47EA0140CF2A35957487F5
          4B6F5BAE461601E094E669D97E9F952092CDE9D4B1297B194BAF1CE564B54839
          00527803536EDF138AE293984E6E83735082F4EEF86A0525AF7B5C6E2BA5324C
          8EF3AB88C8CBAC01A1E4ADFE32CFC99D063C2E2CC2A32D595C00E42ECB5F222E
          D21CB80E4B267E2E0683B61D8417C699A7403C9B3CAB184EDE2C8F00A0AE126E
          6CB282627571174F234FCC5E6A4F18F7427F4A75C393B45B4082495A18792762
          F56ADAB00A651100DEF3CA63316DEEAC98BBA0ED3D3793746C7988215DFAC6C8
          9618AEAD447AAD520A8006CEA45B85CAC5806208162655AC13E0B3626BF4ACB6
          F3DDEACEEA713D1105C43D701BB92595142713F11132C639DDB7FBC2ACA577D6
          B7268B03809E1769244D03848901E4B6A732B1627732B564293B63B9D26E7476
          1DE0A6E7659A9120E61170916889B9667925E7154DB425E56240EF994C1B3325
          F177CF07ECDA8D840940EF18F3CA0360FDEAB62FA858E4C72F5D1D7F9E7E774C
          7C6746EE132CD3B153ECD47BFD3861D89E31B2EBC0767DFF43B93404160BFB56
          2A0DC145441B53020399C4AA6710C5107926AF945895AFBAEAAAAC3632750770
          459027005EE9E42088283757CD7D0333E02816B0D2B6169F2E0E004ADF7027B9
          825CE5B476B362082C7350F8CC9457378872326E3A4176983FEE63A5E3C38BC1
          864A8017E64D594096B0ADF3559A86B0E0185735AA742879382A9658418B016F
          A71659C4023E3EF9B9F8CA0B17C4DDAF3D953385F05E227DE832FDE2CC550ECF
          58CC3C45D5D54AB57940B93E6D23260FAD9C3D78CB0A67F0ACDADCA76AF61C61
          054C2860A761046C2BBC7892AB5B89586129B9D53EDD27AA1CE12199DF1A59B1
          3800682F14CF4C910BB78F40BC004171B1416A2B4A2F354D2E1FD7CD73553A3E
          C6D8C2E4BCE9FA40070C36E6E231B4E6F25793074C31BEEA1B8B4EB2BCAE25E7
          C9FAD6B227CE2200D4D970F6CBD7C49553FF1513E64C8FBC9C6253874EF1A521
          BBC6FE83B688D103F3E7652A956A0168253369AA5E14CF261AD9B1268FBBC89D
          A8848461FDB0963E58BA8503FABE92958B29DA92E2BD279DC78A2BF64158947B
          C6F60620F24557BCFB90074BF7E77EF432627B8B6369719F5A4EE995C452A7CD
          AF2A65AC93A45DCAD2F58D350BACD1591EB7352FA11A00F20C79378E33B66957
          6DCFA0F2C5C2C80DAE3616FC000B7AED8B63B2DEBEBB673D15EFE6880517BCFF
          BF51CB0D8F53461E109BF51CD56E6E682D95301454FE8A02214DD2F1565016D0
          0AAE9C2AAFDC71C71DD9A4A86029DE4CA8DE42596D59C1C54375975A28DA1380
          CE0D7C161BE980F4BC945FEC879028DE4057BCC63A14BA6EED3536AEAB099695
          6A4D07AAAD8401420BAEF8DC38A4420BDE8E3CAD3E45645E351D1A1F00A03D3F
          EDF779DDB47BB26EF75CD272862E4D9DE3D815768F7D076C1E1F1958DDCED76D
          49ADA568AC205240CAA0B08A836B2716CCBB33B60911532A914A358A2C15B7AA
          7887E56A85AB93EA2589C5C173239C4AB9CBED05402ED8FDF7DF9F9D17981445
          27013AD6AFB86D8BC7C15515CF624D53C1B6D4814FAD9236CD1513F2162C042C
          903CA3B44FB970A2965234E32BFE75BCC597EE987320B478EB872CB738B6261F
          00E0ABCD53B372B24B27DF9E55B454229BF51A15470CDE21B6EE353AFAE5DC66
          A212A915800277F115F05028FF4E0DB3DC3BA40C57AA2D519FA8EC8C25B5BA53
          2A0AE8D8D628EDBCE29EB0B658D1F4261F965AE25A054829EABEDE00042263A5
          D506E9A1683CDD4B728B25C2C57F142F1120C6D40225DE363EFE4EC4C5DCFD4A
          DBACCA8D0F37D8C2909ED51CAAACC16CDBDBB514986AAD05A57FB884D4EB99D2
          5A5C51291839D04A9FAF6422FE9E898FC5EF26DE127F9C32263719430676E915
          870CDC260E18B865ACD67F64CD035D6A006AED8648ED34564B4A65454FB5A07C
          798CAA38A21CA346A12495593F6E96E1F3FB584F7148BD00A8B44D0C25BD91AA
          4D945D5130EE56B1D40B8080674C948EE9FBB3EAB3F2851DDF56791E0385E73D
          1426A1CD913622EEA09A5196C202656C1515D4E3DD1B697CCC03901316D622C8
          EDE52D0061B1D4A31BC298C86BFA242696FE20A030C1CE57495EB9240015555F
          3DE5AE3867FC0DF1CADCE9B94FD6A5A953ECD467BD386CD076B1418FD5EA9E98
          AF573B126552004DC111045C198A4591144F532EA02A454B2323B40FA9064979
          2D09612B6035D47A39C138CA9DE92D4C31142591E2C08A1677EAB7B6357D717A
          8014BFB4C6B35028CF27DED104CBD2036361E1BB31E2722A10A068C5A4079793
          92B312C9FA015DDAB2A25EE393B61271AD1493D105D7E0892426BA50EA01403A
          68E1462E0967522E342D4AE9053679A56C29DA98098FC445936E8BABA6DD956D
          379827AAF13B6B751F16870EDA36F61BB8454D6FC32DF7F0F5EC0754E08B1935
          21A9A19282D89B45B2959B95269132016ADA842755755072C5BCCAC8B81FF57A
          6189026F2E96562560CCC6B745C9B8A02C9AE0BF50614A0190E561353FF1894F
          64F169A1785E71940FF0793E4A8DA832369EB550355853A0572FABD0A0D4BBFB
          B8A88E9712E01DB07E40EB1EB8F7BC847A8AE66773A8BD29DDABFB13978A958B
          0B2CEAD90F283C48FD80696EA45710522A7CF276449405E0841993E3B6198FC4
          A92F5E1EAFCE9D993B25B17C53D7D8BBFF2671FCB0DDEBEE86D61380148EAB64
          2533988515EE3A22583479C2E45EA5F8D18E6082F04446504A168945A8C7BB24
          92B0B65C6549F8D4314F581335A63E85C5BFA500E8592C2214ADD82D4E000434
          7F024B61FA2349DAD14DC590188E2B59CABA1071917231F1719A1F8488B9E19E
          F114EA29C6275D2FE54DDDABED202C54C5F158BD00980AF01561989F4496596C
          54D520F38C559EC2FEB2006C9ED91C8FBF312E7E3AFEFAB8B9F9A1C8DFDEB020
          D65B6EE53872C88EB15BFF8D726D379857EABD25055059459132DCADE44E58ED
          5D236D364BD9D29B7154E4270695725248BF5B4913665E51F605EC2C4A02078B
          6B814080700593D4EB059D9E89278059A4509E5DBF1EB205F9534E49C5D62C11
          4ABED02AB0442CB6544F7BBC615728A10EB73037C9D20A2580ABF07EEBBD278C
          9CA098539C5CB84F2A5D48A989B63CA256BB219E9DFA52C688FE64C235F1E6BB
          737237D876EBD825B6EA353ACE5AE5C818DEAF7EEF414F002C7C453525014071
          4E35D52CDC2DABA81DB8802C09D282554BAF2AE35A59ED8035BDD28C75745D71
          597BBC679E15747F8894C25785A1FF5940F146BA2E00266B59290053DA04E828
          2502438997123D2B3A4BDB56B53F00A87891674DF7E97C16466E59355BD7E711
          8BA257CD89070B8BC3755A887F0B491F002C7C436E02A022F86AB625A42F6265
          0B80794A0BB845DB962258EBB65E7DDE2A005F6D9E168FBE3E364E78FEC218FF
          F6D4981BF95A801468AFD16D589C38AC2528ADF2659CA5448C915E885108C0B4
          357A35004C4956B11DD2A3F0355C8269C48AB6138C9E1DCCDC03F72DADEE026F
          5D0FED2562414C1FE0A762728A6395E52627AB0F8098392983149F9693F46660
          D43DC5A33040E74F40F333C0A63CC637319FE5842781CC02C0C278CCF12C118B
          546BD7403961859022161F73992A6E00CBDC1496C7B17ED208697C0075EDB5D7
          CEDE75E8F92A05A00592E5130B02627AF92AAFCC024E2F6D1ED59A2BDA2A0035
          D64E9ED31CBF9AF0B7F8D39431F1FAFCD96DEE749664C0323D6397BEEBC5C923
          3E1D5D9BBAD4C5154DEF5A0782C2D70453965A5EEF45793169E2BAC2E150382C
          866201D39604699523DC41DFB7D77BD38949F6CC943C5D1B20288FE74E4A636C
          0014635AF852CD729240985E610D683EE9DF29F6CB2BD853D74FAE58BACF04E4
          7A9153E5C6C79F8531ACB9F3BAB0C2B95188618ED3F8142E42D57A30C6DDDCE0
          100A5F2E6A2C9DD3F9ABB6804462FEB1D75F8AE39EFB4D8C9F332DE6E58C05BB
          B5806E54F761F1C3150F8D55BAAD90FBFD0F0D69C88749DA04A07D5EDE98373B
          BE3BF60F7153F343D1FC6EBEBA3E5D12FD3BF78CE3877E32F61AD01247F4A95F
          2CD89086FC7F915C5B52780BD2ADD31F8EB3265C1B4FBF3521579136E9DA7199
          EC659C67AC7468ACD0A55FEED79035A4211F16C90540B1A0371FFD60DC1571C7
          CCC763E6BB5AF4DB3E79C7967871F94E5DE3AC958E88CD7A8F8AE17D1B56B021
          0D2994DC9B32D92FE69249B765F5A1CFCD9E986BEF9805EFFF7FCFBE1BC73143
          778B35BB0F6DB182EDD731DF900FA72042B0D7C89554D18404490DBFC811A923
          DF215E12D944D2FE9FFE5D4896245227BD32DBF17EB790FCF35DFADEB51CEF5E
          52895F9EBC6745BBA2DD3EFE81F8C584BFC698994FC69C05EFE40660DF4ECBC7
          692B7E26B6EFB34E0C6D58C186D4513090186CA985F4AE0AA0509584FE074CDF
          15BEBF012BEB7B7F626EE505959161B531BFC027D18ED99596C164A6F7212650
          032C26DA9FCE2DCDE2DF5856F7948AC3DB62922B02E02BD327C7B92D00D4313F
          E99DE6DCB5314D1D9AE290415BC74103B78AD55BAC607BEF9ED6900F8F008F2D
          2354A35076600144E572000044F284002735E13B96326D4B095872AC8A1AD4D7
          4A670191426B1FDB4E00A1620D698564255D07C0E5FCE400552549FA2BC753B4
          01D03AF4DB4A6F54BC2FE88DE3EE8D0B26DE1CB7343F9CFB6DB8CAB437ECB15A
          1C3564E7D8A2D74763609FFA972435E4C3290AD6B56CD9C251B54D61DE4F999A
          1DE6004DE1026BC595F4FB72BFA95654E7064B687B095546009D36C6024C0054
          60A0405F6510510593DA8ECE3DF7DC2C470CBCF2811602155279F60AAD188053
          664C8B8B26DD1AE74CB82166BCFB46E46AFE6EB9449FCECBC7512BEC9275CCAF
          DA3FFFDEF90D69486BA24B5F79A2D23C0A9F5C3E00B17D860A26154385F11DD0
          02264BA8C89C854CAE25579255555AA6F6550139EBA9F0DA9FC9A249F203AB4A
          1A62E7343D8A9A7295DFE5ADCAAA1880335B568A31CD8FC76F27FE3DEE6C7E2C
          16E46C93C088EED467FDF8ECE0ED62A7111B2DD9596BC8FF1BA916803E000840
          DC57656BCA11593FA0540BABCC4D891EE0D930D9CF9285E5CEFA0E405953E568
          9A98B57E6954CEDB945BD5D6F45E4376C5943171618B257C7DDEECDCC7F5EBDC
          338E18BC7D1CDD6209FBF6AE7FF172433E7CC2350440EEA79ADD54770914BAD7
          59371DF2DA930882C4EF236674F3234E0050C7865235DF031970FA79AA8F0566
          BD86A5365BB631B3F339174206FBA900BDDD5E513D69C6ABF1DC5B13E3E15963
          63F6FC39B98F531DB356F711B1418F556340230E6C481D0489C2F5B367A702E8
          C444A61A4C8CA68E093122B7D177E235048D4269719EE3C56CDC50A907690A2E
          28000323408927113BA9E713D39A3699522CAFF8DBDE30DADADC13D02375EA4E
          C210E56973E6CF8DD9F3E6C4BC985FD1B1CB76EC1CDD9A966DD71DB41BF2E191
          F4DA39AEA6E66239392A4DF15307065612F902345211C8122D56AC25807257ED
          A65698B7D3FEA51305A07DB897A9C89AA45DDE7C87C0493B0400B4E3B0A398D0
          760160431AF27F498008F87482240B26A7072029892E572827985EC6E23B804C
          097C315D619CC8154DA005B6747C6122DECF01CD39FD997288CEE7039C3535E4
          36A4210D695F6900B0210D5982D20060431AB204A501C0863464094A03800D69
          C8129406001BD2902528FF038E58A1A3A4C9DC430000000049454E44AE426082}
        mmHeight = 12700
        mmLeft = 5823
        mmTop = 2113
        mmWidth = 33867
        BandType = 0
        LayerName = BandLayer22
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer18
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 46567
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel263: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pra'#231'a San Martin, 84 - Sala 509'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 8122
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel264: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label264'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Praia do Canto - Vit'#243'ria - ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 12092
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel265: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'lTitulo2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Macei'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object ppImage4: TppImage
        DesignLayer = ppDesignLayer18
        UserName = 'Image4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 122502
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel266: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label266'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rua desembargador Artur Juca, 76 - Sala 102'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 8101
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel267: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label267'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEntro - Macei'#243' - AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 12070
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer22
      end
      object ppDBText264: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText264'
        HyperlinkColor = clWindowText
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 2646
        mmLeft = 1911
        mmTop = 15604
        mmWidth = 42333
        BandType = 0
        LayerName = BandLayer22
      end
      object ppShape225: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape225'
        Brush.Color = 4160768
        Gradient.EndColor = 49408
        Gradient.StartColor = 4227072
        ParentWidth = True
        Pen.Color = clWhite
        Shape = stRoundRect
        mmHeight = 8205
        mmLeft = 0
        mmTop = 23015
        mmWidth = 197300
        BandType = 0
        LayerName = BandLayer22
      end
      object ppLabel176: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label176'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTIMATIVA DE CUSTOS DE IMPORTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3403
        mmLeft = -4
        mmTop = 23539
        mmWidth = 197272
        BandType = 0
        LayerName = BandLayer22
      end
      object ppDBText177: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText177'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3668
        mmLeft = 0
        mmTop = 27130
        mmWidth = 197380
        BandType = 0
        LayerName = BandLayer22
      end
    end
    object ppDetailBand13: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 80433
      mmPrintPosition = 0
      object ppShape231: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape231'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 18081
        mmLeft = 0
        mmTop = 49631
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape227: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape227'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 25316
        mmLeft = 0
        mmTop = 3760
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape230: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape230'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3440
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape226: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape226'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        ParentWidth = True
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3625
        mmLeft = 0
        mmTop = 112
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText179: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText179'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 117740
        mmTop = 529
        mmWidth = 14552
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel178: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label178'
        Border.mmPadding = 0
        Caption = 'PROCESSO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 104511
        mmTop = 646
        mmWidth = 12435
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3563
        mmLeft = 102877
        mmTop = 115
        mmWidth = 1318
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel179: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label179'
        Border.mmPadding = 0
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 4121
        mmWidth = 9260
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel180: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label180'
        Border.mmPadding = 0
        Caption = 'PRODUTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 7385
        mmWidth = 11112
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel256: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label256'
        Border.mmPadding = 0
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 10605
        mmWidth = 5027
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel258: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label258'
        Border.mmPadding = 0
        Caption = 'ORIGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2644
        mmLeft = 1323
        mmTop = 13716
        mmWidth = 8467
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel259: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label259'
        Border.mmPadding = 0
        Caption = 'QUANTIDADE DE CONTAINER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 16825
        mmWidth = 30162
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel260: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label260'
        Border.mmPadding = 0
        Caption = 'DATA DE CONVERS'#195'O ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 19977
        mmWidth = 26458
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 25426
        mmLeft = 51858
        mmTop = 3646
        mmWidth = 749
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 25426
        mmLeft = 120894
        mmTop = 3646
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText180: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText180'
        Border.mmPadding = 0
        DataField = 'Cliente_ImpNome'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3664
        mmLeft = 52917
        mmTop = 4130
        mmWidth = 66922
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 64
        mmTop = 7004
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 64
        mmTop = 10204
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 60
        mmTop = 13456
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 16660
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 19716
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = -1471
        mmLeft = 64
        mmTop = 25370
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line18'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1059
        mmLeft = 64
        mmTop = 25902
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel268: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label268'
        Border.mmPadding = 0
        Caption = 'DESTINADO A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 121709
        mmTop = 4166
        mmWidth = 14023
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel269: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label1801'
        Border.mmPadding = 0
        Caption = 'INCOTERM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 121709
        mmTop = 7385
        mmWidth = 11377
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel270: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label270'
        Border.mmPadding = 0
        Caption = 'PESO BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 121709
        mmTop = 10605
        mmWidth = 13493
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel271: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label271'
        Border.mmPadding = 0
        Caption = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2644
        mmLeft = 121709
        mmTop = 13716
        mmWidth = 13758
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel272: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label272'
        Border.mmPadding = 0
        Caption = 'UNIDADE MEDIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 121709
        mmTop = 16825
        mmWidth = 18256
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel273: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label2603'
        Border.mmPadding = 0
        Caption = 'VALOR DO FRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 121709
        mmTop = 19977
        mmWidth = 17991
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel274: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label274'
        Border.mmPadding = 0
        Caption = 'VALOR UNIT MERCADORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 121709
        mmTop = 22978
        mmWidth = 27252
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel275: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label275'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TAXA DE CONVERS'#195'O ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 121654
        mmTop = 26238
        mmWidth = 36513
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line102'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 25426
        mmLeft = 159428
        mmTop = 3646
        mmWidth = 1174
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText181: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText1801'
        Border.mmPadding = 0
        DataField = 'Tipo_Produto'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3664
        mmLeft = 52832
        mmTop = 7615
        mmWidth = 66922
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText182: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText182'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Pais_OrigemNome'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 52917
        mmTop = 13758
        mmWidth = 18521
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText183: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText183'
        Border.mmPadding = 0
        DataField = 'Qtde_Container'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 52917
        mmTop = 16825
        mmWidth = 66922
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText184: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText184'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 52832
        mmTop = 19977
        mmWidth = 66922
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText185: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText1802'
        Border.mmPadding = 0
        DataField = 'Produto_Destinado'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3326
        mmLeft = 160531
        mmTop = 4142
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText186: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText186'
        Border.mmPadding = 0
        DataField = 'INCOTERM'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2604
        mmLeft = 160562
        mmTop = 7393
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText187: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText187'
        Border.mmPadding = 0
        DataField = 'Peso_Bruto'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160582
        mmTop = 10605
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText188: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText188'
        Border.mmPadding = 0
        DataField = 'Frete_Real'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160518
        mmTop = 19977
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText189: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText189'
        Border.mmPadding = 0
        DataField = 'Unitario_Descricao'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3704
        mmLeft = 160518
        mmTop = 23022
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText190: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText190'
        Border.mmPadding = 0
        DataField = 'Taxa_FOB'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 26183
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape229: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape229'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 11702
        mmLeft = 0
        mmTop = 30902
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape228: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape228'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        ParentWidth = True
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3625
        mmLeft = 0
        mmTop = 29468
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel261: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label261'
        Border.mmPadding = 0
        Caption = 'COMPOSI'#199#195'O DO VALOR ADUANEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1269
        mmTop = 29898
        mmWidth = 38894
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel262: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label262'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3093
        mmLeft = 121709
        mmTop = 29777
        mmWidth = 37425
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel276: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label276'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3093
        mmLeft = 160158
        mmTop = 29809
        mmWidth = 37425
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel177: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label177'
        Border.mmPadding = 0
        Caption = 'OPERA'#199#195'O VIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1270
        mmTop = 646
        mmWidth = 16404
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText178: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText178'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Porto_Destino'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 17992
        mmTop = 529
        mmWidth = 8202
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel277: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label277'
        Border.mmPadding = 0
        Caption = 'VALOR DA MERCADORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 33597
        mmWidth = 25135
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 64
        mmTop = 36399
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel278: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label278'
        Border.mmPadding = 0
        Caption = 'FRETE INTERNACIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2644
        mmLeft = 1323
        mmTop = 36575
        mmWidth = 24342
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 60
        mmTop = 39455
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel279: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label279'
        Border.mmPadding = 0
        Caption = 'SEGURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 39657
        mmWidth = 8996
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line202'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 16197
        mmLeft = 120912
        mmTop = 29485
        mmWidth = 1890
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line25'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 16197
        mmLeft = 159428
        mmTop = 29485
        mmWidth = 1890
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText191: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText191'
        Border.mmPadding = 0
        DataField = 'FOB_Real'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160518
        mmTop = 33597
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText192: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText192'
        Border.mmPadding = 0
        DataField = 'FOB'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 33597
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText193: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText193'
        Border.mmPadding = 0
        DataField = 'Frete_Internacional'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2644
        mmLeft = 122502
        mmTop = 36575
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText194: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText194'
        Border.mmPadding = 0
        DataField = 'Frete_Real'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2644
        mmLeft = 160518
        mmTop = 36575
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText195: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText195'
        Border.mmPadding = 0
        DataField = 'Seguro_PremioValor'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 39657
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText196: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText196'
        Border.mmPadding = 0
        DataField = 'Seguro_Real'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160518
        mmTop = 39657
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel280: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label280'
        Border.mmPadding = 0
        Caption = 'TOTAL 01 (VALOR ADUANEIRO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1323
        mmTop = 42863
        mmWidth = 31750
        BandType = 4
        LayerName = BandLayer22
      end
      object Total01_ME: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Total01_ME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 42780
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object Total01_Real: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Total01_Real'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2499
        mmLeft = 160518
        mmTop = 42780
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText197: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText197'
        Border.mmPadding = 0
        DataField = 'NCM_Descricao'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 52837
        mmTop = 10605
        mmWidth = 66922
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText198: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText198'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Volumes'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 189442
        mmTop = 13758
        mmWidth = 6879
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText199: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText199'
        Border.mmPadding = 0
        DataField = 'Unidade_Descricao'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160535
        mmTop = 16825
        mmWidth = 35652
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape232: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape232'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3625
        mmLeft = 0
        mmTop = 46044
        mmWidth = 121107
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel281: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label281'
        Border.mmPadding = 0
        Caption = 'IMPOSTOS DE NACIONALIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1270
        mmTop = 46598
        mmWidth = 33602
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel284: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label284'
        Border.mmPadding = 0
        Caption = 'II - IMPOSTO DE IMPORTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 49946
        mmWidth = 30427
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line28'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 52767
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel285: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label285'
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 53033
        mmWidth = 2381
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line29'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 55746
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel286: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label286'
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 55895
        mmWidth = 3175
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText200: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText200'
        Border.mmPadding = 0
        DataField = 'Valor_II'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160518
        mmTop = 49946
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText203: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText203'
        Border.mmPadding = 0
        DataField = 'Valor_IPI'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160338
        mmTop = 53033
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText205: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText205'
        Border.mmPadding = 0
        DataField = 'Valor_PIS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160338
        mmTop = 55895
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_II: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_II'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 49946
        mmWidth = 35720
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_IPI: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_II1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 53033
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_PIS: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_PIS'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 55895
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line301'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 22718
        mmLeft = 107584
        mmTop = 46040
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText201: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText2001'
        Border.mmPadding = 0
        DataField = 'Aliquota_II'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 49946
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText202: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText202'
        Border.mmPadding = 0
        DataField = 'Aliquota_IPI'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 53033
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText204: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText204'
        Border.mmPadding = 0
        DataField = 'Aliquota_PIS'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 55895
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object pDespesasMM: TppSubReport
        DesignLayer = ppDesignLayer18
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 3704
        mmLeft = 0
        mmTop = 72335
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport11: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Simula'#231#227'o de calculo de importa'#231#227'o'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '23.05'
          mmColumnWidth = 0
          object ppTitleBand11: TppTitleBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppShape234: TppShape
              DesignLayer = ppDesignLayer13
              UserName = 'Shape234'
              Brush.Color = 16769505
              Gradient.EndColor = 16053248
              Gradient.StartColor = 16760115
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3625
              mmLeft = 0
              mmTop = 0
              mmWidth = 121179
              BandType = 1
              LayerName = Foreground6
            end
            object ppLabel290: TppLabel
              DesignLayer = ppDesignLayer13
              UserName = 'Label290'
              Border.mmPadding = 0
              Caption = 'DESPESAS DE AG'#202'NCIA MAR'#205'TIMA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2645
              mmLeft = 1270
              mmTop = 561
              mmWidth = 34925
              BandType = 1
              LayerName = Foreground6
            end
          end
          object ppDetailBand14: TppDetailBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 2381
            mmPrintPosition = 0
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line302'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2600
              mmLeft = 120915
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = Foreground6
            end
            object ppLine35: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line35'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2688
              mmLeft = 159544
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText212: TppDBText
              DesignLayer = ppDesignLayer13
              UserName = 'DBText2002'
              Border.mmPadding = 0
              DataField = 'Valor'
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2566
              mmLeft = 160602
              mmTop = 0
              mmWidth = 35719
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText214: TppDBText
              DesignLayer = ppDesignLayer13
              UserName = 'DBText214'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'Despesa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2646
              mmLeft = 1058
              mmTop = 0
              mmWidth = 530
              BandType = 4
              LayerName = Foreground6
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line36'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentWidth = True
              mmHeight = 865
              mmLeft = 0
              mmTop = -100
              mmWidth = 197300
              BandType = 4
              LayerName = Foreground6
            end
            object ppLine37: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line37'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2600
              mmLeft = -51
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = Foreground6
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line38'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 2600
              mmLeft = 195392
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText213: TppDBText
              DesignLayer = ppDesignLayer13
              UserName = 'DBText213'
              Border.mmPadding = 0
              DataField = 'Valor_ME'
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2566
              mmLeft = 122659
              mmTop = 0
              mmWidth = 35719
              BandType = 4
              LayerName = Foreground6
            end
          end
          object ppSummaryBand13: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppShape235: TppShape
              DesignLayer = ppDesignLayer13
              UserName = 'Shape235'
              Brush.Color = 13434879
              ParentWidth = True
              Pen.Width = 0
              mmHeight = 3383
              mmLeft = -110
              mmTop = -110
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground6
            end
            object ppLine39: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line303'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2763
              mmLeft = 120915
              mmTop = -8024
              mmWidth = 1890
              BandType = 7
              LayerName = Foreground6
            end
            object ppLabel289: TppLabel
              DesignLayer = ppDesignLayer13
              UserName = 'Label289'
              Border.mmPadding = 0
              Caption = 'TOTAL 03'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2646
              mmLeft = 1058
              mmTop = 529
              mmWidth = 9525
              BandType = 7
              LayerName = Foreground6
            end
            object ppLine40: TppLine
              DesignLayer = ppDesignLayer13
              UserName = 'Line40'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3480
              mmLeft = 159544
              mmTop = 0
              mmWidth = 1890
              BandType = 7
              LayerName = Foreground6
            end
            object Total03_ME: TppDBCalc
              DesignLayer = ppDesignLayer13
              UserName = 'Total03_ME'
              Border.mmPadding = 0
              DataField = 'Valor_ME'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2647
              mmLeft = 122657
              mmTop = 414
              mmWidth = 35698
              BandType = 7
              LayerName = Foreground6
            end
            object Total03_Real: TppDBCalc
              DesignLayer = ppDesignLayer13
              UserName = 'Total03_Real'
              Border.mmPadding = 0
              DataField = 'Valor'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2647
              mmLeft = 160602
              mmTop = 414
              mmWidth = 35698
              BandType = 7
              LayerName = Foreground6
            end
          end
          object ppDesignLayers13: TppDesignLayers
            object ppDesignLayer13: TppDesignLayer
              UserName = 'Foreground6'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object pDespesaNac: TppSubReport
        DesignLayer = ppDesignLayer18
        UserName = 'pDespesaNac'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = pDespesasMM
        TraverseAllData = False
        mmHeight = 3704
        mmLeft = 0
        mmTop = 76136
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport12: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Simula'#231#227'o de calculo de importa'#231#227'o'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '23.05'
          mmColumnWidth = 0
          object ppTitleBand12: TppTitleBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppShape238: TppShape
              DesignLayer = ppDesignLayer14
              UserName = 'Shape234'
              Brush.Color = 16769505
              Gradient.EndColor = 16053248
              Gradient.StartColor = 16760115
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3625
              mmLeft = 0
              mmTop = 0
              mmWidth = 121179
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel295: TppLabel
              DesignLayer = ppDesignLayer14
              UserName = 'Label290'
              Border.mmPadding = 0
              Caption = 'DESPESAS DE NACIONALIZA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2645
              mmLeft = 1270
              mmTop = 561
              mmWidth = 33602
              BandType = 1
              LayerName = PageLayer2
            end
          end
          object ppDetailBand15: TppDetailBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 2646
            mmPrintPosition = 0
            object ppLine47: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line302'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2600
              mmLeft = 120915
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = PageLayer2
            end
            object ppLine48: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line35'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2578
              mmLeft = 159544
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText221: TppDBText
              DesignLayer = ppDesignLayer14
              UserName = 'DBText2002'
              Border.mmPadding = 0
              DataField = 'Valor'
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2565
              mmLeft = 160602
              mmTop = 0
              mmWidth = 35719
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText222: TppDBText
              DesignLayer = ppDesignLayer14
              UserName = 'DBText214'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'Despesa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2646
              mmLeft = 1058
              mmTop = 0
              mmWidth = 530
              BandType = 4
              LayerName = PageLayer2
            end
            object ppLine49: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line36'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentWidth = True
              mmHeight = 1305
              mmLeft = 0
              mmTop = -100
              mmWidth = 197300
              BandType = 4
              LayerName = PageLayer2
            end
            object ppLine50: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line37'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2600
              mmLeft = -51
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = PageLayer2
            end
            object ppLine51: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line38'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 2600
              mmLeft = 195392
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText223: TppDBText
              DesignLayer = ppDesignLayer14
              UserName = 'DBText213'
              Border.mmPadding = 0
              DataField = 'Valor_ME'
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2565
              mmLeft = 122659
              mmTop = 0
              mmWidth = 35719
              BandType = 4
              LayerName = PageLayer2
            end
          end
          object ppSummaryBand14: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppShape239: TppShape
              DesignLayer = ppDesignLayer14
              UserName = 'Shape235'
              Brush.Color = 13434879
              ParentWidth = True
              Pen.Width = 0
              mmHeight = 3383
              mmLeft = -110
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLabel296: TppLabel
              DesignLayer = ppDesignLayer14
              UserName = 'Label289'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL 04'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2647
              mmLeft = 1027
              mmTop = 413
              mmWidth = 118820
              BandType = 7
              LayerName = PageLayer2
            end
            object Total04_ME: TppDBCalc
              DesignLayer = ppDesignLayer14
              UserName = 'Total04_ME'
              Border.mmPadding = 0
              DataField = 'Valor_ME'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2647
              mmLeft = 122657
              mmTop = 413
              mmWidth = 35698
              BandType = 7
              LayerName = PageLayer2
            end
            object Total04_Real: TppDBCalc
              DesignLayer = ppDesignLayer14
              UserName = 'Total04_Real'
              Border.mmPadding = 0
              DataField = 'Valor'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2647
              mmLeft = 160602
              mmTop = 413
              mmWidth = 35697
              BandType = 7
              LayerName = PageLayer2
            end
            object ppShape236: TppShape
              DesignLayer = ppDesignLayer14
              UserName = 'Shape236'
              Brush.Color = 13434879
              ParentWidth = True
              Pen.Width = 0
              mmHeight = 3383
              mmLeft = -110
              mmTop = 3419
              mmWidth = 197300
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLine41: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line41'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 6723
              mmLeft = 120915
              mmTop = 0
              mmWidth = 1890
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLabel291: TppLabel
              DesignLayer = ppDesignLayer14
              UserName = 'Label291'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 
                'DESEMBOLSO TOTAL P/NACIONALIZA'#199#195'O (TOTAL 1+TOTAL 2+TOTAL 3+TOTAL' +
                ' 4)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2867
              mmLeft = 1058
              mmTop = 3818
              mmWidth = 118820
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLine42: TppLine
              DesignLayer = ppDesignLayer14
              UserName = 'Line401'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 6864
              mmLeft = 159544
              mmTop = 0
              mmWidth = 1890
              BandType = 7
              LayerName = PageLayer2
            end
            object TotalDesemb_Real: TppVariable
              DesignLayer = ppDesignLayer14
              UserName = 'TotalDesemb_Real'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              ResetType = veReportStart
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2647
              mmLeft = 160602
              mmTop = 3903
              mmWidth = 35697
              BandType = 7
              LayerName = PageLayer2
            end
            object TotalDesemb_ME: TppVariable
              DesignLayer = ppDesignLayer14
              UserName = 'TotalDesemb_ME'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              ResetType = veReportStart
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2647
              mmLeft = 122619
              mmTop = 3904
              mmWidth = 35719
              BandType = 7
              LayerName = PageLayer2
            end
          end
          object ppDesignLayers14: TppDesignLayers
            object ppDesignLayer14: TppDesignLayer
              UserName = 'PageLayer2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line43'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 22760
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel315: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label315'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3094
        mmLeft = 108484
        mmTop = 46350
        mmWidth = 11712
        BandType = 4
        LayerName = BandLayer22
      end
      object ppShape233: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape2301'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 67772
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel287: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label2801'
        Border.mmPadding = 0
        Caption = 'TOTAL 02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 68316
        mmWidth = 9525
        BandType = 4
        LayerName = BandLayer22
      end
      object Total02_ME: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Total02_ME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 68234
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object Total02_Real: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Total02_Real'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 183886
        mmTop = 68234
        mmWidth = 12435
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel282: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label282'
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 58866
        mmWidth = 7938
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText207: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText207'
        Border.mmPadding = 0
        DataField = 'Valor_COFINS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160338
        mmTop = 58866
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText208: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText208'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSEntrada'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160338
        mmTop = 62059
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel283: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label283'
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 62059
        mmWidth = 5292
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText210: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText210'
        Border.mmPadding = 0
        DataField = 'Valor_AFRMM'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160338
        mmTop = 64983
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLabel288: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label288'
        Border.mmPadding = 0
        Caption = 'AFRMM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 64983
        mmWidth = 7938
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line26'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 58665
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line27'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 61564
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line32'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 64539
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_COFINS: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_PIS1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 58866
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_ICMSEnt: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_PIS2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 62059
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ImpostoME_AFRMM: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'ImpostoME_PIS3'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 9
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2647
        mmLeft = 122502
        mmTop = 64983
        mmWidth = 35719
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText206: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText206'
        Border.mmPadding = 0
        DataField = 'Aliquota_COFINS'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 58866
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText211: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText211'
        Border.mmPadding = 0
        DataField = 'Aliquota_AFRMM'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 64983
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object ppDBText209: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText209'
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSEnt'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108626
        mmTop = 62059
        mmWidth = 11613
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line30'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21352
        mmLeft = 120912
        mmTop = 49830
        mmWidth = 1852
        BandType = 4
        LayerName = BandLayer22
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line31'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21352
        mmLeft = 159544
        mmTop = 49830
        mmWidth = 1852
        BandType = 4
        LayerName = BandLayer22
      end
    end
    object ppPageSummaryBand3: TppPageSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 118798
      mmPrintPosition = 0
      object ppShape251: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape251'
        Brush.Color = 16772332
        ParentWidth = True
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 17760
        mmLeft = 0
        mmTop = 100426
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape242: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape242'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 12046
        mmLeft = 0
        mmTop = 4142
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape237: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape237'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 16187
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape241: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape241'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3625
        mmLeft = -110
        mmTop = 293
        mmWidth = 121070
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel294: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label294'
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3703
        mmLeft = 1323
        mmTop = 4351
        mmWidth = 2381
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line44'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 7256
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel297: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label297'
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 7478
        mmWidth = 3175
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText216: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText216'
        Border.mmPadding = 0
        DataField = 'Credito_IPI'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 4351
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText217: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText217'
        Border.mmPadding = 0
        DataField = 'Credito_PIS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 7478
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel298: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label298'
        Border.mmPadding = 0
        Caption = 'TOTAL DE CR'#201'DITOS DE NACIONALIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 16756
        mmWidth = 44450
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel299: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label299'
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 10521
        mmWidth = 7937
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText218: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText218'
        Border.mmPadding = 0
        DataField = 'Credito_COFINS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 10500
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText219: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText219'
        Border.mmPadding = 0
        DataField = 'Credito_ICMS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 13452
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel300: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label300'
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 13452
        mmWidth = 5292
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line54'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 10301
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line55'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 13275
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel293: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label293'
        Border.mmPadding = 0
        Caption = 'TOTAL DE CR'#201'DITOS DE NACIONALIZA'#199#195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 20325
        mmWidth = 42863
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape243: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape243'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 19679
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCustoNac_ME: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCustoNac_ME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3703
        mmLeft = 122767
        mmTop = 19944
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCustoNac_Real: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCustoNac_Real'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 160602
        mmTop = 19944
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line304'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 18797
        mmLeft = 120915
        mmTop = 4228
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line46'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 18790
        mmLeft = 159544
        mmTop = 4282
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel302: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CUSTO DE AQUISI'#199#195'O DA MERCADORIA IMPORTADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 20081
        mmWidth = 54240
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCredImp_Real: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCredImp_Real'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3703
        mmLeft = 160577
        mmTop = 16473
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText215: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText215'
        Border.mmPadding = 0
        DataField = 'Credito_IPIME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122792
        mmTop = 4351
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText224: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText224'
        Border.mmPadding = 0
        DataField = 'Credito_PISME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122792
        mmTop = 7478
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText225: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText225'
        Border.mmPadding = 0
        DataField = 'Credito_COFINSME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122792
        mmTop = 10373
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText226: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText226'
        Border.mmPadding = 0
        DataField = 'Credito_ICMSME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122791
        mmTop = 13452
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCredImp_ME: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCredImp_ME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 122791
        mmTop = 16756
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel292: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label292'
        Border.mmPadding = 0
        Caption = 'CR'#201'DITO IMPOSTOS DE NACIONALIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1270
        mmTop = 825
        mmWidth = 43657
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape240: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape240'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 18165
        mmLeft = 0
        mmTop = 27423
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape244: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape244'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 45618
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape245: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape245'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3625
        mmLeft = 0
        mmTop = 23559
        mmWidth = 121070
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel301: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 27526
        mmWidth = 2381
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line20'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 30438
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel303: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label303'
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 30701
        mmWidth = 3175
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText220: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText220'
        Border.mmPadding = 0
        DataField = 'Valor_IPISai'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 27526
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText227: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText227'
        Border.mmPadding = 0
        DataField = 'Valor_PISSai'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 30701
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel304: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label304'
        Border.mmPadding = 0
        Caption = 'TOTAL DA NOTA FISCAL DE SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1323
        mmTop = 46038
        mmWidth = 34660
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel305: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label305'
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 33876
        mmWidth = 7937
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText228: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText228'
        Border.mmPadding = 0
        DataField = 'Valor_COFINSSai'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 33876
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText229: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText229'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSSaida'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 36787
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel306: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label3001'
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 36787
        mmWidth = 5292
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line21'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 33613
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line52'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 36523
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel308: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label308'
        Border.mmPadding = 0
        Caption = 'TOTAL DE CR'#201'DITOS DE NACIONALIZA'#199#195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 49519
        mmWidth = 42863
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape246: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape246'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 49555
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line53'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21435
        mmLeft = 120915
        mmTop = 27527
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel309: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label309'
        Border.mmPadding = 0
        Caption = 'ASSESSORIA DE IMPORTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 50006
        mmWidth = 30956
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText230: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText230'
        Border.mmPadding = 0
        DataField = 'Valor_IPISaiME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 27526
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText231: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText231'
        Border.mmPadding = 0
        DataField = 'Valor_PISSaiME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 30701
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText232: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText232'
        Border.mmPadding = 0
        DataField = 'Valor_COFINSSaiME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 33876
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText233: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText233'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSSaiME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 36787
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel310: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label310'
        Border.mmPadding = 0
        Caption = 'FOMA'#199#195'O DO VALOR DE SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1270
        mmTop = 24109
        mmWidth = 32279
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText234: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText234'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSST'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 39868
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel311: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label311'
        Border.mmPadding = 0
        Caption = 'ICMS ST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 39868
        mmWidth = 8467
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line57'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 39605
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText235: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText235'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSSTME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 39868
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText236: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText236'
        Border.mmPadding = 0
        DataField = 'Valor_MarkupReal'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 42850
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel312: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label312'
        Border.mmPadding = 0
        Caption = 'MARKUP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 42850
        mmWidth = 8996
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line58'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 42587
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText237: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText237'
        Border.mmPadding = 0
        DataField = 'Valor_MarkupME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122766
        mmTop = 42850
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel313: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label313'
        Border.mmPadding = 0
        Caption = 'TOTAL DE CR'#201'DITOS DE NACIONALIZA'#199#195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 70217
        mmWidth = 42863
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape247: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape247'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 69423
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line59'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 7379
        mmLeft = 120915
        mmTop = 31060
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line60'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21180
        mmLeft = 159544
        mmTop = 27574
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel314: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label314'
        Border.mmPadding = 0
        Caption = 'TOTAL DA NOTA FISCAL DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 69850
        mmWidth = 37835
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalNFSaida_Real: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'TotalNFSaida_Real'
        Border.mmPadding = 0
        DataField = 'Total_NFSaida'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160725
        mmTop = 46038
        mmWidth = 35276
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalNFSaida_ME: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'TotalNFSaida_ME'
        Border.mmPadding = 0
        DataField = 'Total_NFSaidaME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122766
        mmTop = 46038
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object Total_AssImpME: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'Total_AssImpME'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122766
        mmTop = 49975
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object Total_AssImpReal: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'Total_AssImpReal'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpReal'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160622
        mmTop = 49975
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object Total_ImpME: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'Valor_TotalImpME'
        Border.mmPadding = 0
        DataField = 'Valor_TotalImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122766
        mmTop = 69880
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape248: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape248'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 12046
        mmLeft = 0
        mmTop = 83783
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape249: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape249'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 95856
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape250: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape250'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 67
        mmTop = 80288
        mmWidth = 121179
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel316: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label316'
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3703
        mmLeft = 1323
        mmTop = 83783
        mmWidth = 2381
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line61'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 86694
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel317: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label317'
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 86958
        mmWidth = 3175
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText242: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText242'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribIPI'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 83783
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText243: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText243'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribPIS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 86958
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel318: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label318'
        Border.mmPadding = 0
        Caption = 'TOTAL DE CR'#201'DITOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1323
        mmTop = 96167
        mmWidth = 21696
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel319: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label319'
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 90133
        mmWidth = 7937
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText244: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText244'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribCOFINS'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 90133
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText245: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText245'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSSaida'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 93044
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel320: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label3002'
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2647
        mmLeft = 1323
        mmTop = 93044
        mmWidth = 5292
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line62'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 89869
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line63'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 739
        mmLeft = 0
        mmTop = 92779
        mmWidth = 197317
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line64'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15245
        mmLeft = 120915
        mmTop = 83783
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line65'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15238
        mmLeft = 159544
        mmTop = 83783
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCreditos_Real: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCreditos_Real'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2707
        mmLeft = 160602
        mmTop = 96286
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText246: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText246'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribIPIME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 83783
        mmWidth = 35719
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText247: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText247'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribPISME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 86958
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText248: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText248'
        Border.mmPadding = 0
        DataField = 'Valor_CredTribCOFINSME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 89869
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText249: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText249'
        Border.mmPadding = 0
        DataField = 'Valor_ICMSSaiME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122766
        mmTop = 93044
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object TotalCreditos_ME: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'TotalCreditos_ME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2708
        mmLeft = 122766
        mmTop = 96237
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel321: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label321'
        Border.mmPadding = 0
        Caption = 'CR'#201'DITOS TRIBUT'#193'RIOS (DEVEM SER VERIFICADOS COM A CONTABILIDADE)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1436
        mmTop = 80673
        mmWidth = 79904
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel323: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label323'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          '"A cota'#231#227'o apresentadada foi baseada nas regras tribut'#225'rias vige' +
          'ntes nesta data. Eventuais altera'#231#245'es na legisla'#231#227'o ser'#227'o ajusta' +
          'das automaticamente ao cliente no momento da importa'#231#227'o".'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2837
        mmLeft = 1944
        mmTop = 104474
        mmWidth = 194332
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel324: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label324'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 254001
        Caption = 
          'O cliente dever'#225' estar habilitado no radar da receita federal e ' +
          'vinculado ao radar de uma de nossas empresas.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 2837
        mmLeft = 1944
        mmTop = 111394
        mmWidth = 194332
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel325: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label325'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 254001
        Caption = 
          'A taxa de convers'#227'o de dolar para Reais foi estimada e n'#227'o repre' +
          'senta uma trava c'#226'mbial.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 2837
        mmLeft = 1944
        mmTop = 107998
        mmWidth = 194332
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel326: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label326'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 254001
        Caption = 
          'O cliente dever'#225' consultar sua contabilidade para verificar a ne' +
          'cessidade de recolhimento do ICMS Difal, caso a mercadoria seja ' +
          'enviada para estado diferente do importador.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 2837
        mmLeft = 1944
        mmTop = 115017
        mmWidth = 194332
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentWidth = True
        mmHeight = 861
        mmLeft = 0
        mmTop = 107702
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line67'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentWidth = True
        mmHeight = 713
        mmLeft = 0
        mmTop = 111097
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine68: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line68'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentWidth = True
        mmHeight = 565
        mmLeft = 0
        mmTop = 114650
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel327: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label327'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'Os cr'#233'ditos apresentados acima devem ser consultados pela contab' +
          'ilidade do cliente, pois variam de acordo com regime tribut'#225'rio ' +
          'de cada um (MEI, SIMPLES NACIONAL, LUCRO REAL ou LUCRO PRESUMIDO' +
          ').'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2837
        mmLeft = 1944
        mmTop = 100942
        mmWidth = 194332
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine69: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line69'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentWidth = True
        mmHeight = 861
        mmLeft = 0
        mmTop = 104153
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel322: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label322'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3094
        mmLeft = 108479
        mmTop = 23999
        mmWidth = 11712
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine70: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line70'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 22144
        mmLeft = 107686
        mmTop = 23587
        mmWidth = 1588
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText251: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText251'
        Border.mmPadding = 0
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108744
        mmTop = 30614
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText252: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText252'
        Border.mmPadding = 0
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108744
        mmTop = 33524
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText253: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText253'
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSSaida'
        DataPipeline = pSimulacao
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108744
        mmTop = 36435
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText254: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText254'
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSST'
        DataPipeline = pSimulacao
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = -41275
        mmTop = 41010
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText250: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText250'
        Border.mmPadding = 0
        DataField = 'Aliquota_IPI'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108744
        mmTop = 27703
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape259: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape259'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 52828
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText274: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'Total_AssImpReal1'
        Border.mmPadding = 0
        DataField = 'Valor_PISServ'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 53093
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText275: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'Total_AssImpME1'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 53093
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel364: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label364'
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 53181
        mmWidth = 3175
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape260: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape260'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 56169
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel365: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label365'
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 56621
        mmWidth = 7937
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText276: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText276'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 56434
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText277: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText277'
        Border.mmPadding = 0
        DataField = 'Valor_COFINSServ'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 56434
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape261: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape261'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 59489
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel366: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label366'
        Border.mmPadding = 0
        Caption = 'IRPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 59796
        mmWidth = 4498
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText278: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText278'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 59754
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText279: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText279'
        Border.mmPadding = 0
        DataField = 'Valor_IRPJServ'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 59754
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape262: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape262'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 62643
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel367: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label367'
        Border.mmPadding = 0
        Caption = 'CSLL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1323
        mmTop = 63236
        mmWidth = 5027
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText280: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText280'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 63074
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText281: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText281'
        Border.mmPadding = 0
        DataField = 'Valor_CSLLServ'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 63074
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape263: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape263'
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 65963
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel368: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label368'
        Border.mmPadding = 0
        Caption = 'ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2645
        mmLeft = 1323
        mmTop = 66411
        mmWidth = 3175
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText282: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText282'
        Border.mmPadding = 0
        DataField = 'Valor_AssImpME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 66394
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText283: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText283'
        Border.mmPadding = 0
        DataField = 'Valor_ISSServ'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 160602
        mmTop = 66394
        mmWidth = 35423
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine110: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line701'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 19654
        mmLeft = 107686
        mmTop = 49776
        mmWidth = 1588
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine111: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line111'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 22974
        mmLeft = 120966
        mmTop = 49674
        mmWidth = 1588
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line601'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 23172
        mmLeft = 159503
        mmTop = 49548
        mmWidth = 1890
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText285: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText285'
        Border.mmPadding = 0
        DataField = 'Aliquota_PISServ'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108407
        mmTop = 53154
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText284: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText284'
        Border.mmPadding = 0
        DataField = 'Aliquota_COFINSServ'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 108646
        mmTop = 56648
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText286: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText286'
        Border.mmPadding = 0
        DataField = 'Aliquota_IRPJServ'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 108480
        mmTop = 59802
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText287: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText287'
        Border.mmPadding = 0
        DataField = 'Aliquota_CSLLServ'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 108739
        mmTop = 63168
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText288: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText288'
        Border.mmPadding = 0
        DataField = 'Aliquota_ISSServ'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2646
        mmLeft = 108526
        mmTop = 66276
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText289: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'DBText289'
        Border.mmPadding = 0
        DataField = 'Taxa_Servico'
        DataPipeline = pSimulacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 108573
        mmTop = 50053
        mmWidth = 11613
        BandType = 11
        LayerName = BandLayer22
      end
      object ppShape264: TppShape
        DesignLayer = ppDesignLayer18
        UserName = 'Shape264'
        Brush.Color = 13434879
        ParentWidth = True
        Pen.Width = 0
        mmHeight = 3383
        mmLeft = 0
        mmTop = 72898
        mmWidth = 197300
        BandType = 11
        LayerName = BandLayer22
      end
      object ppLabel369: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label369'
        Border.mmPadding = 0
        Caption = 'TOTAL DA NOTA FISCAL DE SA'#205'DA + NOTA FISCAL  DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 73554
        mmWidth = 64558
        BandType = 11
        LayerName = BandLayer22
      end
      object ppDBText291: TppDBText
        DesignLayer = ppDesignLayer18
        UserName = 'TotalNFSaida_ME1'
        Border.mmPadding = 0
        DataField = 'Total_NFSaidaME'
        DataPipeline = pSimulacao
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 2647
        mmLeft = 122767
        mmTop = 73428
        mmWidth = 35720
        BandType = 11
        LayerName = BandLayer22
      end
      object Valor_TotalNFServ: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Valor_TotalNFServ'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2646
        mmLeft = 161065
        mmTop = 69850
        mmWidth = 35388
        BandType = 11
        LayerName = BandLayer22
      end
      object Valor_TotalNFSaiServ: TppVariable
        DesignLayer = ppDesignLayer18
        UserName = 'Valor_TotalNFServ1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2646
        mmLeft = 160665
        mmTop = 73367
        mmWidth = 35388
        BandType = 11
        LayerName = BandLayer22
      end
    end
    object ppFooterBand3: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel307: TppLabel
        DesignLayer = ppDesignLayer18
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 529
        mmWidth = 35454
        BandType = 8
        LayerName = BandLayer22
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer18
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 84931
        mmTop = 529
        mmWidth = 31750
        BandType = 8
        LayerName = BandLayer22
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer18
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 122502
        mmTop = 529
        mmWidth = 17463
        BandType = 8
        LayerName = BandLayer22
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = BandLayer22
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer18
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2645
        mmLeft = 185209
        mmTop = 265
        mmWidth = 12171
        BandType = 8
        LayerName = BandLayer22
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = BandLayer22
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer18
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = BandLayer22
      end
    end
    object ppDesignLayers18: TppDesignLayers
      object ppDesignLayer18: TppDesignLayer
        UserName = 'BandLayer22'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object rSimulacaoRadarProd: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Simula'#231#227'o de calculo de importa'#231#227'o'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\SimulacaoImpo' +
      'rtacao_Radar.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'TextFile'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = True
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = False
    PDFSettings.Outline = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.txt'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'Cybersoft ERP Importa'
    XLSSettings.Author = 'Cybersoft'
    XLSSettings.DefaultBands = [btHeader, btTitle, btColumnHeader, btGroupHeader, btDetail, btGroupFooter, btColumnFooter, btSummary, btFooter, btPageSummary, btPageStyle, btNotKnown]
    XLSSettings.ExportFormattedStrings = True
    XLSSettings.IgnorePageHeight = True
    XLSSettings.MergeAdjacentCells = False
    XLSSettings.PreserveLineBreaks = True
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Simula'#231#227'o de Importa'#231#227'o'
    XLSSettings.Title = 'Simula'#231#227'o de Importa'#231#227'o'
    XLSSettings.WorksheetName = 'Simula'#231#227'o'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 672
    Top = 204
    Version = '23.05'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 54240
      mmPrintPosition = 0
      object ppShape252: TppShape
        DesignLayer = ppDesignLayer17
        UserName = 'Shape225'
        Brush.Color = 4160768
        Gradient.EndColor = 49408
        Gradient.StartColor = 4227072
        ParentWidth = True
        Pen.Color = clWhite
        Shape = stRoundRect
        mmHeight = 8205
        mmLeft = 0
        mmTop = 23015
        mmWidth = 284300
        BandType = 0
        LayerName = BandLayer20
      end
      object ppShape253: TppShape
        DesignLayer = ppDesignLayer17
        UserName = 'Shape253'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 13758
        mmLeft = 0
        mmTop = 31576
        mmWidth = 97768
        BandType = 0
        LayerName = BandLayer20
      end
      object ppShape254: TppShape
        DesignLayer = ppDesignLayer17
        UserName = 'Shape254'
        Brush.Color = 16769505
        Gradient.EndColor = 16053248
        Gradient.StartColor = 16760115
        ParentWidth = True
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6377
        mmLeft = 0
        mmTop = 47376
        mmWidth = 284300
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel328: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vit'#243'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 98385
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer17
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000E00000
          004C080600000074F3BB74000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000025
          AB4944415478DAEDDD07BC5D55B106F0496E424802E99D347A8906A952A57790
          2E08D2042C808028A2A288A8A022A828168A3445295244419A60A40AD2416A20
          242421ED8650420849DEFD6F5879278773EEDDA7DCE4E57186DF21C93D77B7B5
          E65B33F3CDCCDA1D16B44834A4210D5922D2A101C0863464C94903800D69C812
          94A50E803367CE8C77DF7D375E7FFDF578EDB5D7C2ED77EFDE3D7AF4E811CB2E
          BB6CBCF3CE3B3179F2E4E8D0A143F6FB9D3B77CEBEEFD6AD5BF6EFB7DE7A2BBA
          74E912CB2CB34CF4EAD52B66CC9811B367CFCECEE9F8575F7D353BD6C7B15DBB
          76CD8EEFDBB76F76EDB7DF7E3BBBAEF3343535C5F2CB2F9F7DFAF5EBB7A487A6
          214BA12C75007CE59557E2B9E79E8BE79F7F3E030CA0CC9B372F565A69A5587D
          F5D563D2A44971C10517C4061B6C90810CB03A75EA1423468C88C18307C7238F
          3C92FDAEBF03CD840913E2A9A79E8AE9D3A7C7AAABAE1A975E7A69762C903A16
          C8860E1D9A7D07A8FFFEF7BF331076ECD831E6CF9F9F2D00CEB3EEBAEBC6A041
          8396F4F034642993A50A80ACD54B2FBD14B7DD765B0C183020030620BCF9E69B
          3170E0C0183972643CF3CC33F1A52F7D294E3DF5D4E8D9B367069A679F7D36B3
          52EBACB34EFCF39FFFCC00B6DA6AAB65E700E43BEFBC33C68F1F1F9B6CB2497C
          FDEB5F8F6F7FFBDBD1A74F9FCCCAB91E30FA6EECD8B1F1C4134FC42AABAC12BD
          7BF7CE000AC02C23007EEC631FCBAC6A431A9257962A00B26E8F3EFA6806A2CF
          7DEE7399B203C2934F3E9981819BE977BEFCE52FC79FFEF4A7CC6A91DFFFFEF7
          995BBADE7AEBC5C30F3FBC1080400B80FFF8C73FE2E5975F8ECD37DF3C4E3EF9
          E4ECF7D758638DECD86BAFBD36FB2E8177E595578E4D37DD34B3A8E4F1C71F8F
          FFFCE73FD1DCDC1C071D7450C3156D4845B25401F0C5175F8C871E7A289E7EFA
          E90C2849FEF6B7BF65C00346B1DAF1C71F1FBFFBDDEF32ABF4DFFFFE37EEBEFB
          EECC9AB1500F3EF8E02200E4CEDE71C71D0B01F88D6F7C237EFBDBDF66D6D131
          095C1FF9C847E29A6BAE89BDF7DE3BB6DC72CB45EE8B451E33664C7CF18B5FCC
          62C686156C485E59AA000824623820E46216CA4F7EF2939833674E6CBCF1C671
          F4D147C757BFFAD58C98993871624C9B362DB368ACD8CD37DF1CA3478F8E51A3
          466531A4981278A64E9D1A1B6EB8619C70C20919808119F07C56586185586BAD
          B5E28A2BAEC840BAEBAEBB2E726D56521C79E491472E24771AD2903CB2540110
          51C2A2DD70C30DB1FBEEBB677159925FFDEA5759BC07649FFFFCE7E3939FFC64
          C65EB28CDCC66DB7DD3603C6EDB7DF9EC5741B6DB451F6FD638F3D9681C77762
          4AE075EEE5965B2E73273FFAD18F66E0036EB1225776FBEDB78FFEFDFB67BF7F
          D34D37C5030F3C9011403BECB043037C0DA948962A0012A408B7F05FFFFA57E6
          2612160E1836DB6CB38C113DE5945332371291326EDCB88CB9E41A6EB5D55619
          D9F2E73FFF39236510380814A40AB792B53CE38C333230A7F8310902C802E058
          AE694A79CC9D3B378B0777D96597CC5236A42195489B009CD63C3D26BE3D231E
          7DFDF998B3E0DD7C675DD0213A75688ABECBF488757BAC12DD9ABA44EF3A5906
          2E216BE44F0020F2752C168B868C61F5860F1F9E011068DE78E38D2C5D801505
          50A003223FE332022302C779E501870D1B96C592A5AE2DFFE87C80270502888E
          6FC47E0DA946DA04E0F4993362F29CE638FEF9F3E2E5395362DE8279F1DE010B
          22CA1ED9213A47A718D6A57F7C6DC43E317AF9156360EFFAB183009472703E2C
          990F00F80EC80A010438445C97FE9D8E6FEBD872D7F60140C7A6F336A421954A
          9B009CF9DACC983DEF9D3863DC5571DDF47B63FADCD75A70D71AF89CB445315B
          40D8BBD37271F0A0ADE3C8A13BC588BE0DF7AC210D29965C316073CBAA7FD7CC
          A7E28C97AF8A27DF1A1773E7CF8D720804BEEC4F56B043A758B9DBA0387FF5E3
          6244D701D1A757C35234A42185920B80ACE0D47766C5E92F5D19B7CD7C24B382
          7900489A3A36C5F7471E143BF75B3F56EE3F7C493F6F431AF27F4A72B3A0539B
          A7C7E593EF8CCBA6FC239E7E6B7CCC5F30BFCC09FF17804ECC5DDDBCE7A83871
          F8DEF1B11E2B47BF5E7DAABE59B19B426809F9BCE4AD5A4E440B920551E3230D
          B1240813F1A35CA66B2389EA7D6E0412461899D496885D9157482463E38348F2
          B32515D3A6F9155B23D4EA5D55A4E862CA9429B9C687A4827C6383684BBA83DC
          AB975494861833E1E1F8D984EBE28E998FC59CCC0D2D75C2452D2000F6ECD43D
          4E1AB16FECDA77C3162B38ACEA9BA55CF276AA5C90256D89474B4A26296FE0E4
          EFA40B0000D9E2BB7A0E683901100AA6444E55CDFAEBAF9F1584D74BA4496EBD
          F5D6ACEA8792B526142B2D4C94CAD860882D0CC64751B9140F10F89DC5054839
          D65B6EB925BB0FF9D715575CB1AEE75730A1EC50D1451EB148011CF0D1159F21
          4386642CB931323EB5EA4E45009C34634A9C3BE186B862CA9878E59DE9654EB8
          2800495387A6D86BC0A671E8E06D6274F791D1BBCA58906229FB52A922DD5089
          784C8A67954FF59C6BAFBD76F67740A088ED691501E49E7BEE8933CF3C332B91
          DB6FBFFDB2EA9C7A5DD3E274FEF9E767D53A729FD588B1B138A914F201006303
          94A930A1BD44BA4861FB49279D94CDC921871C92950BD6734E7EF6B39FC54517
          5D947921D588C55CCE5729A38FE20BF96700AD7691AA38117FF3CBF7C785936E
          8E9B663C18F34AB8A1A50048F1472D3722BE3864E7D8AECF3A31A4CFC0AA6E96
          8BA592E5B8E38EAB1880C5627563053FFEF18F67097A85DA14AC3D4098F28EE7
          9E7B6E96C8771D85DBAA75EA6505EB01C024C9F5323E2C91123D8B867FB757CB
          95B082055744617CBEF5AD6F65C511F5BC1E005E7CF1C5358F0FEF81353426DB
          6CB34D569EE89E5B4B5F95938A01386366735C3CE996CC159D36F7F51227FC20
          00FD68D9A62EF1F9213BC68103B78C510356AEEAC1CB01901B4961B2EB76E8B0
          C8311E2FE5EDB8AD3E290798F27856FA3DF6D8233EF399CF2CEC72A8A758DDD5
          9CB2DC3A37DCEF9E7BEE99ADF24AE7EA21E500A817D2A7785CD2D8147ED23825
          95487952F7BBC5165B64561B1859CA7ABAA55C735D25EA7BD5FABAEEA73EF5A9
          38F8E083B39ADD7A2D8A3FFFF9CF330B98C627B9E2A9AFB4708CD218A43129D4
          9FF45DF2A8B4BFA90FE69E56EA9256558A76E3CBF7C6F9136F8A5B663CFC5E4E
          7091137E1080F1FE836DDC63CD387CC8F6B1FF4A5B573580A50048B90047ADA7
          78A558D4873A8EDB61E0F5F4F968AA4D8F6E12F4129AF4238E38A2EE31A1EB5E
          7FFDF5F1D39FFE34B386268E221F76D8619952D7434A01D078A43E458A92C473
          1B3F6404CBACB2C7222106E3E6FB37855B645E5BEE392D549FFEF4A7EBEA2DB0
          7E62BF1FFCE00759A51111936A2B3327F5F2128A01885C51E7ABB5CDF58A01A8
          D2CAB8D01D258C481C7F4FC518492CFEE652A78CB2C64AF4A72A003EF1EAF371
          D5D4312D20BC3966BEFB66D1094B00F07DE9D1D4ADC5026E15470FDD2546F61F
          5AF10096022025FBDAD7BE964D9495AC58D2CA6EE5024696C82A7BF9E5976775
          A5A99CCD7980504B91A2EA7A4DBAD84F93F0B1C71E9B5D2FDD3777659F7DF6C9
          BA36EA115B9502200563650F38E08092162B593EF70474C809E3E37E01C2FD2A
          B94B42D18C0BB74BD70812A2564B489915D85F76D96571E595572E24D78061AF
          BDF6CAEE9F8B570F2906A0D84D08F2DDEF7E379B0FD6BE58E88EF1310E4A1CF5
          93E221EEBDF7DE6C114F227636CE1628A0CE2B550110197347F3A3F1F309D7C7
          136F8D5B2425500E800BDEFFD9A63DD78C2387EC10FBACB455C503580E807AF8
          F6DF7FFF36E305936D20ADFA26FDBCF3CECB0AB575D4A7B8C7409E73CE395980
          8D7CA85574E3B37EC817F75C687505F2471D7554ECB6DB6E355FA71400018445
          E7CAD986A335B150B83F0B92858A35D475F2F7BFFF3D53BC428F83B2F2382C56
          DCAE5A4008F4145A7C66AC0A055B7CE0810766EEBADECD5AA5140075C5B0BC16
          C1D69E23ED45445774CF88E5AFBBEEBA850B8671C12354EAD55405409531CFBC
          353E2E9D747B5CF2EAED8BB8A1AD5940326499BEB147FF8DE298A1BBC6F07E95
          95A7D50AC0E27351AE3FFEF18F597F615AE901E32B5FF94AE64EA0E26B71B328
          176BFBCB5FFE32EB392C96A4C89A8B29432DD7AA1580C50290BA43EEBBEFBEB8
          F1C61BB33192A3232C857BFFC217BE103BEFBC73068E6A41C8A248CDD88BA7D0
          A210E744547DF6B39FCD58D95AA51600164ADA99C1CE09DAD1923BCA8DB56018
          F3BC2994AADB91C64F9F1477363F1E27BD7071CC9AF766CBCA5E1433940160D7
          8E5D62939E6BC4F1C3F788AD86AE57D135EB094062C5C58A59CD52EE8C25040A
          2EE39A6BAE5915B39544CCA0011800DD7BBADF14CC033BAA1D0029422DD7AA37
          00937043ED22E0BC5AC052121B081148FA27B9712C61A522BEB2CB0050F048D2
          79CD01A5363E6258F74FB16B957A01908805B9A18E4D1E827B97DE620559ED3C
          52350059C1B1B327C799E3AE8D5B663C18EF2C989BEBB88E2DFFADD26D701C3C
          689B3878F03615D587D61B80D837D4F725975C92E5E8B20169997CA0704E4449
          2DB1208515DB70555858F78A5A473A208280909B2BD6E1CE4988576B49DA0B80
          447E4E33B2188DD2A5B117631A77F13710562ABC83DFFCE63759829CEB2B0430
          F6FECEFA72F72C4A3BEDB453961F9473AB45EA09401E8271D13F6AAF206E3BB1
          1089ED1148793C9A9A1A72274C9F1C77CFFC6F7C7BECA5F1EADCE69279C152D2
          AB53F7D8A2D7E8387DE583A347CBDFF3F60AD61B80840BC40A728192703D5925
          60A9B664CCBD72DD28184B0BD8408074D141EF3B71167612D58E82D7049C9A8C
          2B95F60420B16888D55421D9932709D60F8BA821B9122BC83D17635AA000D1F8
          50D8638E39261B17E101E69155313E145ABEB61637BD9E004C954DCE4777927B
          AE72865BFEA31FFD281787501300E504A7CE7D2DBEFEFCC571CF6B4FC59BF3DE
          CE755C53878EB1E2B203E3B4150F8A8D7BAD19FD7BE773BDDA03802699053CFB
          ECB317122426462278BBEDB6ABBA1C8AA51023706FB96DEE93A5B36F0CB7CE77
          E242D734F15C396E0B26B61A696F00128B152B68BCD28ACF4DB4E2632BEDC793
          57B89CBFFEF5AFB385882B8AC146BAFCE217BFC8E6E4C73FFE71167772458DCF
          D65B6F9D25E96BA93AA92700090BC87ABB67E39F72CB4218FA94C762D7BC2505
          465491F679136F8A497366C4FCC877BAE59A968D6DFBAC13A7AE7860D639DFBB
          67DB2B5B7B0090FF6E05B362A5A15076C502DAFBA51AC5154F3AE71FFEF0870C
          6CA969F79BDFFC6646E1535E00F4BD9594EB259EFADEF7BE57711E29C9E200A0
          140552E6873FFC61BCF0C20B0BC70B705C0310F32A31EB0780E24B734959E573
          2D505CF3D34E3B2DFEFAD7BF665606C3685C0010D358AD97D01E00748FF2BBC6
          3F9131E6F8ACB3CECA55D451330075CC3FF9C6B83865ECEFE389375F8AB7E7E7
          8B059134CB75EA1A17AC716CACBBFC2A31B84FDB83DA1E00148B59D1AD626928
          B8392CA081ACC622496D9814048C73A6D51DC84D8A7BF71DD7975521400880AC
          6E3560591C0014F7009E9481FB4F143CE545BDDB0C4BA1729E7B959601420BA0
          F1116F73C3791CC6DFF9B9EFE2688A6D51DA77DF7D33771750AA7145EB0D4096
          9A47600F210B45AA1CB27003601E97BC6600EA159C336F6E7C67EC6571F38C87
          5A5CD259B98E73D18E1D9AE2B041DBC4E756D831862EDB3F7AF5ECD9EA31ED01
          40DD038070F5D557BF37202D2E84D5D8396DF29447A10A8592A2D559B8C4ECA1
          E9E5FB588834292C89F8471A244D0122430A44A744A5CAB03800486C648CB94C
          794DC26310F70020D6B235A1A8163DCF993654362672A14AF5D21C8A115948E3
          E8EF622B048DED273D4B35C50BF58E018DB9CDBFCCB7428634165227DFFFFEF7
          739DAF6EBBA25D37764C9C3DE1DA78E8F51716E605CBA522165EBC25161CDD7D
          449C3C72FF58AFC72A31B077EB416B7BB0A029A649600140EE20D64D0957A5EE
          0E8282F5C3AE3A3FCBA6A0994B0A1069E5F62C7FF9CB5FB22A0C6C1FC1825242
          CAC8E5AA44161700592C24124B945212C081B0F233B15A5BC79F7EFAE9D966CA
          C627A533E4FA5492140AA05B1CEFBAEBAE6C91729DEF7CE73B192B5A8D67524F
          008A5B11535E63C08B4963A180C3734863E591BA011023AA63FE2FD3EF8BE6F7
          8BB4DB0460CB7F3D3B778BAF0EDB3B76E9B741ACDABF759FB9DE00147F78910B
          65482B188540AB5326935CA925A234F27E8A8BDD230B2A87C53A14BA4DA9040B
          F881868875804F2C44292BB9F6E20220C5E386228CC4B2D4071183803166AD55
          F5888D2D50E64FFC647CB0C018542C67710917769487C0C2CC9A352B9B1B8B99
          F8904B5F69AC5C4F00F20410483C019555296F694F59DE8E58358FD40D8014EA
          C6690FC485936E89FB673D93FB388CE86E7D378C2F0CDD25365B61ED567FB79E
          00A400287565628892144003817890FB594DDE497508EBC7154DB10DE52ADECE
          9EB0065CD1134F3C31FB7D221571F8E187676E4C25CFB3B800689EA509281A30
          8A03790DCAEA1028DCEC72426953CC94B68504280B94E38A0B115CC7E2A86430
          95A91953EEABEE83F4FE8EBC522F0072A1E9A118B57077060BB624BC62F5BC65
          8C75DD98F7D1C9CF6600BC7ACADD31ABA848BB9CB8F8D02E7DE39B23F78B1DFB
          AED7AA1B5A2B00B93CDC3D8A2FE6732E81B4C46FCA43EDB8E38E597B89B8AD92
          15569CC2EA79BB524AB24BE25BDDAD88A5D2199419F8C53540EB3E588444EBE7
          5D45C9E2022051E18310C18A9A076327F6B370700F4B1124C687F5633152329F
          4BC95DA3B480586A7CC489D8625630A96A72772D6E95540FD50A400B8263A58F
          2C0CDE949588A864C9792F5AB7F24A5D01282571DDD4FBE292C9B7C5936FBCF4
          8156A5D2B2203A75E8149F1AB0451C34689BD87C68F99ABF52001463018C2AF4
          52DD10945A9294FB93DA6DACA6DC4F2B785220605375CF82E9C8AE24C8076C0A
          26F76362B4D43827328572E9AE28A7280028E92C6E4C16C5CA0E345CE1BC0AB6
          B801E8DE00306D509C0068F52F25AC9F443E76D073523B0976AE3902A7DC73F2
          546C238141561D432CB4AC2D77B77807F3D6A418800813F76DD134FF85DD10EE
          CF5CB0D4496FE89F4E11C0738E543FECF9818E11E08A5752BC515700BE579E36
          291E7EE38578F9ED29B9374E120D0E5F7640ACB7FCAAB1EEE0D5CBFE562900F2
          BBC54B2682FB582CE96DBA26DDC7DF296BEA4C3078563E03A74B1D582A158A21
          69CC129B2C136331907857D9D15A7B0AE0B298827916544132CB902C715E2BB8
          38014809B9A0AE995C508B8D6B0166B1B0648A97B99E40C8DDF78C2C3DF7B3B5
          04BE6381F7C20B2FCC9E2DEDF3C305656DDA227D0AA51880CE03CCD8E7C27EC9
          249ECD7C784EBA63214F5E14490DBDC215CF9D2C7225299276793784D444CE7C
          7CD1DD44F46A2521DFDA9614094C95081704056E15A4F00A692B2D88A6202C81
          D846AC92D830ABFBA1871E9A7555B436218E37A1E209848389260AC129A789CD
          134F2C2E008A55C53D4898B4E53FCB0144AC1260168BFB91B066FDD22EE5E26B
          AEB9716FABDA881554ABAB38C2F501584A02736A91CB1B6F1503B05A49AF2400
          5E0B7F22CDAAE10C96AA97B3D46B4F9854704DC9814F1C6020AB49EEB260766A
          13DB48C01B4E45CA945E7C532AB62996F4D6279532E22416945556FB8870C8D3
          E0B9B800C8C27B390E77332D36E2702E187752F142A1001C771FDBCB3D4FA2E0
          0060296E5BEE7E02BDC26779DBE425083B3C1FEB9B47EA0140CF2A35957487F5
          4B6F5BAE461601E094E669D97E9F952092CDE9D4B1297B194BAF1CE564B54839
          00527803536EDF138AE293984E6E83735082F4EEF86A0525AF7B5C6E2BA5324C
          8EF3AB88C8CBAC01A1E4ADFE32CFC99D063C2E2CC2A32D595C00E42ECB5F222E
          D21CB80E4B267E2E0683B61D8417C699A7403C9B3CAB184EDE2C8F00A0AE126E
          6CB282627571174F234FCC5E6A4F18F7427F4A75C393B45B4082495A18792762
          F56ADAB00A651100DEF3CA63316DEEAC98BBA0ED3D3793746C7988215DFAC6C8
          9618AEAD447AAD520A8006CEA45B85CAC5806208162655AC13E0B3626BF4ACB6
          F3DDEACEEA713D1105C43D701BB92595142713F11132C639DDB7FBC2ACA577D6
          B7268B03809E1769244D03848901E4B6A732B1627732B564293B63B9D26E7476
          1DE0A6E7659A9120E61170916889B9667925E7154DB425E56240EF994C1B3325
          F177CF07ECDA8D840940EF18F3CA0360FDEAB62FA858E4C72F5D1D7F9E7E774C
          7C6746EE132CD3B153ECD47BFD3861D89E31B2EBC0767DFF43B93404160BFB56
          2A0DC145441B53020399C4AA6710C5107926AF945895AFBAEAAAAC3632750770
          459027005EE9E42088283757CD7D0333E02816B0D2B6169F2E0E004ADF7027B9
          825CE5B476B362082C7350F8CC9457378872326E3A4176983FEE63A5E3C38BC1
          864A8017E64D594096B0ADF3559A86B0E0185735AA742879382A9658418B016F
          A71659C4023E3EF9B9F8CA0B17C4DDAF3D953385F05E227DE832FDE2CC550ECF
          58CC3C45D5D54AB57940B93E6D23260FAD9C3D78CB0A67F0ACDADCA76AF61C61
          054C2860A761046C2BBC7892AB5B89586129B9D53EDD27AA1CE12199DF1A59B1
          3800682F14CF4C910BB78F40BC004171B1416A2B4A2F354D2E1FD7CD73553A3E
          C6D8C2E4BCE9FA40070C36E6E231B4E6F25793074C31BEEA1B8B4EB2BCAE25E7
          C9FAD6B227CE2200D4D970F6CBD7C49553FF1513E64C8FBC9C6253874EF1A521
          BBC6FE83B688D103F3E7652A956A0168253369AA5E14CF261AD9B1268FBBC89D
          A8848461FDB0963E58BA8503FABE92958B29DA92E2BD279DC78A2BF64158947B
          C6F60620F24557BCFB90074BF7E77EF432627B8B6369719F5A4EE995C452A7CD
          AF2A65AC93A45DCAD2F58D350BACD1591EB7352FA11A00F20C79378E33B66957
          6DCFA0F2C5C2C80DAE3616FC000B7AED8B63B2DEBEBB673D15EFE6880517BCFF
          BF51CB0D8F53461E109BF51CD56E6E682D95301454FE8A02214DD2F1565016D0
          0AAE9C2AAFDC71C71DD9A4A86029DE4CA8DE42596D59C1C54375975A28DA1380
          CE0D7C161BE980F4BC945FEC879028DE4057BCC63A14BA6EED3536AEAB099695
          6A4D07AAAD8401420BAEF8DC38A4420BDE8E3CAD3E45645E351D1A1F00A03D3F
          EDF779DDB47BB26EF75CD272862E4D9DE3D815768F7D076C1E1F1958DDCED76D
          49ADA568AC205240CAA0B08A836B2716CCBB33B60911532A914A358A2C15B7AA
          7887E56A85AB93EA2589C5C173239C4AB9CBED05402ED8FDF7DF9F9D17981445
          27013AD6AFB86D8BC7C15515CF624D53C1B6D4814FAD9236CD1513F2162C042C
          903CA3B44FB970A2965234E32BFE75BCC597EE987320B478EB872CB738B6261F
          00E0ABCD53B372B24B27DF9E55B454229BF51A15470CDE21B6EE353AFAE5DC66
          A212A915800277F115F05028FF4E0DB3DC3BA40C57AA2D519FA8EC8C25B5BA53
          2A0AE8D8D628EDBCE29EB0B658D1F4261F965AE25A054829EABEDE00042263A5
          D506E9A1683CDD4B728B25C2C57F142F1120C6D40225DE363EFE4EC4C5DCFD4A
          DBACCA8D0F37D8C2909ED51CAAACC16CDBDBB514986AAD05A57FB884D4EB99D2
          5A5C51291839D04A9FAF6422FE9E898FC5EF26DE127F9C32263719430676E915
          870CDC260E18B865ACD67F64CD035D6A006AED8648ED34564B4A65454FB5A07C
          798CAA38A21CA346A12495593F6E96E1F3FB584F7148BD00A8B44D0C25BD91AA
          4D945D5130EE56B1D40B8080674C948EE9FBB3EAB3F2851DDF56791E0385E73D
          1426A1CD913622EEA09A5196C202656C1515D4E3DD1B697CCC03901316D622C8
          EDE52D0061B1D4A31BC298C86BFA242696FE20A030C1CE57495EB9240015555F
          3DE5AE3867FC0DF1CADCE9B94FD6A5A953ECD467BD386CD076B1418FD5EA9E98
          AF573B126552004DC111045C198A4591144F532EA02A454B2323B40FA9064979
          2D09612B6035D47A39C138CA9DE92D4C31142591E2C08A1677EAB7B6357D717A
          8014BFB4C6B35028CF27DED104CBD2036361E1BB31E2722A10A068C5A4079793
          92B312C9FA015DDAB2A25EE393B61271AD1493D105D7E0892426BA50EA01403A
          68E1462E0967522E342D4AE9053679A56C29DA98098FC445936E8BABA6DD956D
          379827AAF13B6B751F16870EDA36F61BB8454D6FC32DF7F0F5EC0754E08B1935
          21A9A19282D89B45B2959B95269132016ADA842755755072C5BCCAC8B81FF57A
          6189026F2E96562560CCC6B745C9B8A02C9AE0BF50614A0190E561353FF1894F
          64F169A1785E71940FF0793E4A8DA832369EB550355853A0572FABD0A0D4BBFB
          B8A88E9712E01DB07E40EB1EB8F7BC847A8AE66773A8BD29DDABFB13978A958B
          0B2CEAD90F283C48FD80696EA45710522A7CF276449405E0841993E3B6198FC4
          A92F5E1EAFCE9D993B25B17C53D7D8BBFF2671FCB0DDEBEE86D61380148EAB64
          2533988515EE3A22583479C2E45EA5F8D18E6082F04446504A168945A8C7BB24
          92B0B65C6549F8D4314F581335A63E85C5BFA500E8592C2214ADD82D4E000434
          7F024B61FA2349DAD14DC590188E2B59CABA1071917231F1719A1F8488B9E19E
          F114EA29C6275D2FE54DDDABED202C54C5F158BD00980AF01561989F4496596C
          54D520F38C559EC2FEB2006C9ED91C8FBF312E7E3AFEFAB8B9F9A1C8DFDEB020
          D65B6EE53872C88EB15BFF8D726D379857EABD25055059459132DCADE44E58ED
          5D236D364BD9D29B7154E4270695725248BF5B4913665E51F605EC2C4A02078B
          6B814080700593D4EB059D9E89278059A4509E5DBF1EB205F9534E49C5D62C11
          4ABED02AB0442CB6544F7BBC615728A10EB73037C9D20A2580ABF07EEBBD278C
          9CA098539C5CB84F2A5D48A989B63CA256BB219E9DFA52C688FE64C235F1E6BB
          737237D876EBD825B6EA353ACE5AE5C818DEAF7EEF414F002C7C453525014071
          4E35D52CDC2DABA81DB8802C09D282554BAF2AE35A59ED8035BDD28C75745D71
          597BBC679E15747F8894C25785A1FF5940F146BA2E00266B59290053DA04E828
          2502438997123D2B3A4BDB56B53F00A87891674DF7E97C16466E59355BD7E711
          8BA257CD89070B8BC3755A887F0B491F002C7C436E02A022F86AB625A42F6265
          0B80794A0BB845DB962258EBB65E7DDE2A005F6D9E168FBE3E364E78FEC218FF
          F6D4981BF95A801468AFD16D589C38AC2528ADF2659CA5448C915E885108C0B4
          357A35004C4956B11DD2A3F0355C8269C48AB6138C9E1DCCDC03F72DADEE026F
          5D0FED2562414C1FE0A762728A6395E52627AB0F8098392983149F9693F46660
          D43DC5A33040E74F40F333C0A63CC637319FE5842781CC02C0C278CCF12C118B
          546BD7403961859022161F73992A6E00CBDC1496C7B17ED208697C0075EDB5D7
          CEDE75E8F92A05A00592E5130B02627AF92AAFCC024E2F6D1ED59A2BDA2A0035
          D64E9ED31CBF9AF0B7F8D39431F1FAFCD96DEE749664C0323D6397BEEBC5C923
          3E1D5D9BBAD4C5154DEF5A0782C2D70453965A5EEF45793169E2BAC2E150382C
          866201D39604699523DC41DFB7D77BD38949F6CC943C5D1B20288FE74E4A636C
          0014635AF852CD729240985E610D683EE9DF29F6CB2BD853D74FAE58BACF04E4
          7A9153E5C6C79F8531ACB9F3BAB0C2B95188618ED3F8142E42D57A30C6DDDCE0
          100A5F2E6A2C9DD3F9ABB6804462FEB1D75F8AE39EFB4D8C9F332DE6E58C05BB
          B5806E54F761F1C3150F8D55BAAD90FBFD0F0D69C88749DA04A07D5EDE98373B
          BE3BF60F7153F343D1FC6EBEBA3E5D12FD3BF78CE3877E32F61AD01247F4A95F
          2CD89086FC7F915C5B52780BD2ADD31F8EB3265C1B4FBF3521579136E9DA7199
          EC659C67AC7468ACD0A55FEED79035A4211F16C90540B1A0371FFD60DC1571C7
          CCC763E6BB5AF4DB3E79C7967871F94E5DE3AC958E88CD7A8F8AE17D1B56B021
          0D2994DC9B32D92FE69249B765F5A1CFCD9E986BEF9805EFFF7FCFBE1BC73143
          778B35BB0F6DB182EDD731DF900FA72042B0D7C89554D18404490DBFC811A923
          DF215E12D944D2FE9FFE5D4896245227BD32DBF17EB790FCF35DFADEB51CEF5E
          52895F9EBC6745BBA2DD3EFE81F8C584BFC698994FC69C05EFE40660DF4ECBC7
          692B7E26B6EFB34E0C6D58C186D4513090186CA985F4AE0AA0509584FE074CDF
          15BEBF012BEB7B7F626EE505959161B531BFC027D18ED99596C164A6F7212650
          032C26DA9FCE2DCDE2DF5856F7948AC3DB62922B02E02BD327C7B92D00D4313F
          E99DE6DCB5314D1D9AE290415BC74103B78AD55BAC607BEF9ED6900F8F008F2D
          2354A35076600144E572000044F284002735E13B96326D4B095872AC8A1AD4D7
          4A670191426B1FDB4E00A1620D698564255D07C0E5FCE400552549FA2BC753B4
          01D03AF4DB4A6F54BC2FE88DE3EE8D0B26DE1CB7343F9CFB6DB8CAB437ECB15A
          1C3564E7D8A2D74763609FFA972435E4C3290AD6B56CD9C251B54D61DE4F999A
          1DE6004DE1026BC595F4FB72BFA95654E7064B687B095546009D36C6024C0054
          60A0405F6510510593DA8ECE3DF7DC2C470CBCF2811602155279F60AAD188053
          664C8B8B26DD1AE74CB82166BCFB46E46AFE6EB9449FCECBC7512BEC9275CCAF
          DA3FFFDEF90D69486BA24B5F79A2D23C0A9F5C3E00B17D860A26154385F11DD0
          02264BA8C89C854CAE25579255555AA6F6550139EBA9F0DA9FC9A249F203AB4A
          1A62E7343D8A9A7295DFE5ADCAAA1880335B568A31CD8FC76F27FE3DEE6C7E2C
          16E46C93C088EED467FDF8ECE0ED62A7111B2DD9596BC8FF1BA916803E000840
          DC57656BCA11593FA0540BABCC4D891EE0D930D9CF9285E5CEFA0E405953E568
          9A98B57E6954CEDB945BD5D6F45E4376C5943171618B257C7DDEECDCC7F5EBDC
          338E18BC7D1CDD6209FBF6AE7FF172433E7CC2350440EEA79ADD54770914BAD7
          59371DF2DA930882C4EF236674F3234E0050C7865235DF031970FA79AA8F0566
          BD86A5365BB631B3F339174206FBA900BDDD5E513D69C6ABF1DC5B13E3E15963
          63F6FC39B98F531DB356F711B1418F556340230E6C481D0489C2F5B367A702E8
          C444A61A4C8CA68E093122B7D177E235048D4269719EE3C56CDC50A907690A2E
          28000323408927113BA9E713D39A3699522CAFF8DBDE30DADADC13D02375EA4E
          C210E56973E6CF8DD9F3E6C4BC985FD1B1CB76EC1CDD9A966DD71DB41BF2E191
          F4DA39AEA6E66239392A4DF15307065612F902345211C8122D56AC25807257ED
          A65698B7D3FEA51305A07DB897A9C89AA45DDE7C87C0493B0400B4E3B0A398D0
          760160431AF27F498008F87482240B26A7072029892E572827985EC6E23B804C
          097C315D619CC8154DA005B6747C6122DECF01CD39FD997288CEE7039C3535E4
          36A4210D695F6900B0210D5982D20060431AB204A501C0863464094A03800D69
          C8129406001BD2902528FF038E58A1A3A4C9DC430000000049454E44AE426082}
        mmHeight = 12700
        mmLeft = 5823
        mmTop = 2113
        mmWidth = 33867
        BandType = 0
        LayerName = BandLayer20
      end
      object ppImage5: TppImage
        DesignLayer = ppDesignLayer17
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 79335
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel329: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pra'#231'a San Martin, 84 - Sala 509'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 98385
        mmTop = 8122
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel330: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label264'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Praia do Canto - Vit'#243'ria - ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 98385
        mmTop = 12092
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel331: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'lTitulo2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Macei'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 174320
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppImage6: TppImage
        DesignLayer = ppDesignLayer17
        UserName = 'Image4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 155270
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel332: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label266'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rua desembargador Artur Juca, 76 - Sala 102'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 174320
        mmTop = 8101
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel333: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label267'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEntro - Macei'#243' - AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 174320
        mmTop = 12070
        mmWidth = 50800
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText238: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText264'
        HyperlinkColor = clWindowText
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 2646
        mmLeft = 1911
        mmTop = 15604
        mmWidth = 42333
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel334: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label176'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTIMATIVA DE CUSTO UNIT'#193'RIO DE IMPORTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3403
        mmLeft = 0
        mmTop = 23539
        mmWidth = 283501
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText239: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText177'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3668
        mmLeft = 0
        mmTop = 27130
        mmWidth = 283501
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel335: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label335'
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 31966
        mmWidth = 8731
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel336: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label1802'
        Border.mmPadding = 0
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 35421
        mmWidth = 10583
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line103'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 13511
        mmLeft = 27532
        mmTop = 31702
        mmWidth = 696
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText240: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText1803'
        Border.mmPadding = 0
        DataField = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 2684
        mmLeft = 28486
        mmTop = 32052
        mmWidth = 66922
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line72'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 34978
        mmWidth = 97784
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText241: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText241'
        Border.mmPadding = 0
        DataField = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 2684
        mmLeft = 28486
        mmTop = 35352
        mmWidth = 66922
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel337: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label337'
        Border.mmPadding = 0
        Caption = 'PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 38845
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line73'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 38292
        mmWidth = 97784
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText255: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText255'
        Border.mmPadding = 0
        DataField = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 2684
        mmLeft = 28486
        mmTop = 38852
        mmWidth = 66922
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel338: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label338'
        Border.mmPadding = 0
        Caption = 'TAXA ME CONSIDERADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 1323
        mmTop = 42333
        mmWidth = 24871
        BandType = 0
        LayerName = BandLayer20
      end
      object ppDBText256: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText256'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Taxa'
        DisplayFormat = '##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 42333
        mmTop = 42069
        mmWidth = 530
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine74: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line74'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 0
        mmTop = 41780
        mmWidth = 97784
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line75'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 53844
        mmTop = 47625
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel340: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label340'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CUSTO UNIT (EXCLUSIVE IPI) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 54488
        mmTop = 47890
        mmWidth = 30203
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel341: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label3401'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 54488
        mmTop = 50961
        mmWidth = 13925
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel342: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label342'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 69163
        mmTop = 50928
        mmWidth = 15585
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line76'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3105
        mmLeft = 68566
        mmTop = 50536
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line77'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 53909
        mmTop = 50448
        mmWidth = 31087
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine78: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line78'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6307
        mmLeft = 84713
        mmTop = 47336
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine80: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line80'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 96472
        mmTop = 47504
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel343: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label343'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 85286
        mmTop = 49417
        mmWidth = 10871
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel344: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label3402'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CUSTO TOTAL (EXCLUSIVE IPI)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 97215
        mmTop = 47724
        mmWidth = 31375
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel345: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label345'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 97049
        mmTop = 50899
        mmWidth = 15586
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel346: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label346'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 113297
        mmTop = 50839
        mmWidth = 15128
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine86: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line86'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1499
        mmLeft = 96604
        mmTop = 50498
        mmWidth = 187562
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine87: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line87'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 128730
        mmTop = 47442
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine88: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line88'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3105
        mmLeft = 112733
        mmTop = 50459
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel347: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label347'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 129680
        mmTop = 47724
        mmWidth = 26083
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel348: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label348'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 129680
        mmTop = 50899
        mmWidth = 12257
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel349: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label349'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 143156
        mmTop = 50899
        mmWidth = 12589
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine92: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line92'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 156172
        mmTop = 47459
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine93: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line93'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3105
        mmLeft = 142394
        mmTop = 50575
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel350: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label350'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS ST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 156634
        mmTop = 47724
        mmWidth = 31063
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel351: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label351'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 156634
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel352: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label352'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 172639
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine95: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line95'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 188016
        mmTop = 47459
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine96: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line96'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3105
        mmLeft = 172146
        mmTop = 50468
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel353: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label3501'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 188865
        mmTop = 47724
        mmWidth = 31395
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel354: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label354'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 188865
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel355: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label355'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 205036
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine97: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line97'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 220579
        mmTop = 47459
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine98: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line98'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 2939
        mmLeft = 204377
        mmTop = 50634
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel356: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label356'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CUSTO UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 221239
        mmTop = 47724
        mmWidth = 31229
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel357: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label357'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 221239
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel358: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label358'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 237244
        mmTop = 50899
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine99: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line99'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6141
        mmLeft = 252621
        mmTop = 47293
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine100: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line100'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 2939
        mmLeft = 236751
        mmTop = 50634
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel359: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label359'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 253672
        mmTop = 47558
        mmWidth = 30283
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel360: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label360'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 253573
        mmTop = 50930
        mmWidth = 15245
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel361: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label361'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 269609
        mmTop = 50930
        mmWidth = 14485
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLine108: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line108'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 2973
        mmLeft = 269212
        mmTop = 50639
        mmWidth = 794
        BandType = 0
        LayerName = BandLayer20
      end
      object ppLabel339: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label339'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2479
        mmLeft = 264
        mmTop = 49212
        mmWidth = 53312
        BandType = 0
        LayerName = BandLayer20
      end
    end
    object ppDetailBand16: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLine79: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = -1471
        mmLeft = 64
        mmTop = 2540
        mmWidth = 197317
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText257: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText257'
        CharWrap = True
        Border.mmPadding = 0
        DataField = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 820
        mmTop = 0
        mmWidth = 52707
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText258: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText258'
        Border.mmPadding = 0
        DataField = 'Valor_UnitarioME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 54376
        mmTop = 0
        mmWidth = 13968
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText259: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText259'
        Border.mmPadding = 0
        DataField = 'Valor_UniExReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 69059
        mmTop = 0
        mmWidth = 15020
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText260: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText260'
        Border.mmPadding = 0
        DataField = 'Quantidade'
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 85286
        mmTop = 0
        mmWidth = 10539
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine85: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line85'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 4208
        mmLeft = -104
        mmTop = -830
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText261: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText261'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 97215
        mmTop = 0
        mmWidth = 15020
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText262: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText262'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 113328
        mmTop = 0
        mmWidth = 14854
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText263: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText263'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExIPIME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 129602
        mmTop = 0
        mmWidth = 12198
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText265: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText265'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExIPIReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 143216
        mmTop = 0
        mmWidth = 12530
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText266: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText266'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSSTME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 156707
        mmTop = 0
        mmWidth = 14983
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText267: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText267'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSSTReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 172680
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText268: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText268'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 188812
        mmTop = 0
        mmWidth = 14983
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText269: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText269'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 204952
        mmTop = 0
        mmWidth = 14983
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText270: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText270'
        Border.mmPadding = 0
        DataField = 'Valor_UnitarioME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 221167
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer20
      end
      object ppDBText271: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText271'
        Border.mmPadding = 0
        DataField = 'Valor_UnitarioReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2540
        mmLeft = 237171
        mmTop = 0
        mmWidth = 14816
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine83: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line83'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3603
        mmLeft = 84701
        mmTop = -166
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line84'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3437
        mmLeft = 96688
        mmTop = -166
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine89: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line89'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 112841
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine90: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line90'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 128815
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine91: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line901'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 142298
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine94: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line902'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 156242
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine101: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 172139
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine102: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 188014
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine103: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 204387
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine104: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line104'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 220527
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine105: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line105'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 236666
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine106: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line106'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 252640
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine107: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line107'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3420
        mmLeft = 269240
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine109: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line109'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 4250
        mmLeft = 284120
        mmTop = -830
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine81: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line81'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3436
        mmLeft = 53868
        mmTop = -166
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line82'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3602
        mmLeft = 68645
        mmTop = -166
        mmWidth = 794
        BandType = 4
        LayerName = BandLayer20
      end
      object pUnitario: TppVariable
        DesignLayer = ppDesignLayer17
        UserName = 'pUnitario'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 269567
        mmTop = 0
        mmWidth = 14007
        BandType = 4
        LayerName = BandLayer20
      end
      object pUnitarioME: TppVariable
        DesignLayer = ppDesignLayer17
        UserName = 'pUnitario1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 253559
        mmTop = 0
        mmWidth = 15063
        BandType = 4
        LayerName = BandLayer20
      end
    end
    object ppPageSummaryBand4: TppPageSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape255: TppShape
        DesignLayer = ppDesignLayer17
        UserName = 'Shape255'
        Brush.Color = 16769505
        Pen.Width = 0
        mmHeight = 3468
        mmLeft = -42
        mmTop = -109
        mmWidth = 54199
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBText331: TppDBText
        DesignLayer = ppDesignLayer17
        UserName = 'DBText254'
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSST'
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = -41275
        mmTop = 2380
        mmWidth = 11642
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLabel362: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label362'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2381
        mmLeft = 721
        mmTop = 323
        mmWidth = 52883
        BandType = 11
        LayerName = BandLayer20
      end
      object ppShape257: TppShape
        DesignLayer = ppDesignLayer17
        UserName = 'Shape257'
        Brush.Color = 16769505
        Pen.Width = 0
        mmHeight = 3468
        mmLeft = 53909
        mmTop = -109
        mmWidth = 230348
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 97188
        mmTop = 268
        mmWidth = 14910
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc31'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 113241
        mmTop = 268
        mmWidth = 15169
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc32'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExIPIME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 129646
        mmTop = 268
        mmWidth = 12177
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc33: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc33'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExIPIReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 143227
        mmTop = 268
        mmWidth = 12529
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc34: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc34'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSSTME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 156638
        mmTop = 268
        mmWidth = 15163
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc35: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc35'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSSTReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 172773
        mmTop = 268
        mmWidth = 14987
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc36'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSReal'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 204967
        mmTop = 268
        mmWidth = 15081
        BandType = 11
        LayerName = BandLayer20
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer17
        UserName = 'DBCalc37'
        Border.mmPadding = 0
        DataField = 'Valor_TotalExICMSME'
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 188916
        mmTop = 268
        mmWidth = 14729
        BandType = 11
        LayerName = BandLayer20
      end
      object pTotalME: TppVariable
        DesignLayer = ppDesignLayer17
        UserName = 'pTotalME'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 253736
        mmTop = 268
        mmWidth = 15081
        BandType = 11
        LayerName = BandLayer20
      end
      object pTotalReal: TppVariable
        DesignLayer = ppDesignLayer17
        UserName = 'pUnitario2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2563
        mmLeft = 269876
        mmTop = 268
        mmWidth = 14023
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine112: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line112'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3389
        mmLeft = 96521
        mmTop = 0
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine113: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line113'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 112809
        mmTop = -265
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine114: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line114'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 128841
        mmTop = -265
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine115: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line115'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 142191
        mmTop = -265
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine116: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line116'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 156491
        mmTop = -74
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine117: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line117'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 172104
        mmTop = -251
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine118: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line118'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 187943
        mmTop = -231
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine119: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line119'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 204500
        mmTop = -339
        mmWidth = 1852
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine120: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line120'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3509
        mmLeft = 252633
        mmTop = -231
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine121: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line1201'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3675
        mmLeft = 269265
        mmTop = -576
        mmWidth = 1823
        BandType = 11
        LayerName = BandLayer20
      end
      object ppLine122: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line122'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 220527
        mmTop = -265
        mmWidth = 1852
        BandType = 11
        LayerName = BandLayer20
      end
    end
    object ppFooterBand4: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel404: TppLabel
        DesignLayer = ppDesignLayer17
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 0
        mmTop = 529
        mmWidth = 35454
        BandType = 8
        LayerName = BandLayer20
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer17
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 125891
        mmTop = 529
        mmWidth = 31750
        BandType = 8
        LayerName = BandLayer20
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer17
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 163462
        mmTop = 529
        mmWidth = 17463
        BandType = 8
        LayerName = BandLayer20
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer17
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2645
        mmLeft = 270815
        mmTop = 265
        mmWidth = 12171
        BandType = 8
        LayerName = BandLayer20
      end
      object ppLine134: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 204
        mmLeft = 0
        mmTop = 0
        mmWidth = 283512
        BandType = 8
        LayerName = BandLayer20
      end
      object ppLine135: TppLine
        DesignLayer = ppDesignLayer17
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 268561
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = BandLayer20
      end
    end
    object ppDesignLayers17: TppDesignLayers
      object ppDesignLayer17: TppDesignLayer
        UserName = 'BandLayer20'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object pSimulacao: TppDBPipeline
    DataSource = dsSimulaImp
    OpenDataSource = False
    UserName = 'pSimulacao'
    Left = 536
    Top = 258
  end
  object pEmpresas: TppDBPipeline
    DataSource = dsEmpresas
    UserName = 'pEmpresas'
    Left = 536
    Top = 311
  end
  object pDespesas: TppDBPipeline
    UserName = 'pDespesas'
    Left = 536
    Top = 364
    object pDespesasppField1: TppField
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object pDespesasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Simulacao'
      FieldName = 'Simulacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Despesa'
      FieldName = 'Despesa'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pDespesasppField5: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pDespesasppField6: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object pDespesasppField7: TppField
      FieldAlias = 'Custo_Saida'
      FieldName = 'Custo_Saida'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object pDespesasppField8: TppField
      FieldAlias = 'Valor_ME'
      FieldName = 'Valor_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pDespesasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa'
      FieldName = 'Taxa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pDespesasppField10: TppField
      FieldAlias = 'Valor_ME_1'
      FieldName = 'Valor_ME_1'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
  end
  object pProdutos: TppDBPipeline
    UserName = 'pProdutos'
    Left = 672
    Top = 261
    object pProdutosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Simulacao'
      FieldName = 'Simulacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pProdutosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item'
      FieldName = 'Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pProdutosppField3: TppField
      FieldAlias = 'Produto'
      FieldName = 'Produto'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object pProdutosppField4: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object pProdutosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pProdutosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pProdutosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pProdutosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_II'
      FieldName = 'Aliquota_II'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pProdutosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IPI'
      FieldName = 'Aliquota_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pProdutosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_PIS'
      FieldName = 'Aliquota_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pProdutosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_COFINS'
      FieldName = 'Aliquota_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object pProdutosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pProdutosppField13: TppField
      FieldAlias = 'Valor_II'
      FieldName = 'Valor_II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object pProdutosppField14: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object pProdutosppField15: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pProdutosppField16: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pProdutosppField17: TppField
      FieldAlias = 'Valor_ICMSEntrada'
      FieldName = 'Valor_ICMSEntrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 16
    end
    object pProdutosppField18: TppField
      FieldAlias = 'Valor_ICMSSaida'
      FieldName = 'Valor_ICMSSaida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object pProdutosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_PISSai'
      FieldName = 'Aliquota_PISSai'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pProdutosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_COFINSSai'
      FieldName = 'Aliquota_COFINSSai'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object pProdutosppField21: TppField
      FieldAlias = 'Valor_PISSai'
      FieldName = 'Valor_PISSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 20
    end
    object pProdutosppField22: TppField
      FieldAlias = 'Valor_COFINSSai'
      FieldName = 'Valor_COFINSSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object pProdutosppField23: TppField
      FieldAlias = 'Valor_UnitarioSaida'
      FieldName = 'Valor_UnitarioSaida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object pProdutosppField24: TppField
      FieldAlias = 'Valor_BCICMS'
      FieldName = 'Valor_BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object pProdutosppField25: TppField
      FieldAlias = 'Valor_BCPISEnt'
      FieldName = 'Valor_BCPISEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object pProdutosppField26: TppField
      FieldAlias = 'Valor_BCIPI'
      FieldName = 'Valor_BCIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pProdutosppField27: TppField
      FieldAlias = 'Valor_IPISai'
      FieldName = 'Valor_IPISai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object pProdutosppField28: TppField
      FieldAlias = 'Valor_UnitarioReal'
      FieldName = 'Valor_UnitarioReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pProdutosppField29: TppField
      FieldAlias = 'Valor_CIFReal'
      FieldName = 'Valor_CIFReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object pProdutosppField30: TppField
      FieldAlias = 'BCII_Entrada'
      FieldName = 'BCII_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object pProdutosppField31: TppField
      FieldAlias = 'Valor_BCPISSai'
      FieldName = 'Valor_BCPISSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pProdutosppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator'
      FieldName = 'Fator'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object pProdutosppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSRed'
      FieldName = 'Aliquota_ICMSRed'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object pProdutosppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSST'
      FieldName = 'Aliquota_ICMSST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object pProdutosppField35: TppField
      FieldAlias = 'BCICMSST'
      FieldName = 'BCICMSST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object pProdutosppField36: TppField
      FieldAlias = 'Valor_ICMSST'
      FieldName = 'Valor_ICMSST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 35
    end
    object pProdutosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMS'
      FieldName = 'Aliquota_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object pProdutosppField38: TppField
      FieldAlias = 'Valor_UnitarioME'
      FieldName = 'Valor_UnitarioME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 37
    end
    object pProdutosppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_MVA'
      FieldName = 'Aliquota_MVA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object pProdutosppField40: TppField
      FieldAlias = 'Valor_BCMVA'
      FieldName = 'Valor_BCMVA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 39
    end
    object pProdutosppField41: TppField
      FieldAlias = 'Valor_MVA'
      FieldName = 'Valor_MVA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 40
    end
    object pProdutosppField42: TppField
      FieldAlias = 'Valor_BCIPISai'
      FieldName = 'Valor_BCIPISai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 41
    end
    object pProdutosppField43: TppField
      FieldAlias = 'Valor_UnitarioImpSai'
      FieldName = 'Valor_UnitarioImpSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 42
    end
    object pProdutosppField44: TppField
      FieldAlias = 'Valor_UnitarioimpEnt'
      FieldName = 'Valor_UnitarioimpEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 43
    end
    object pProdutosppField45: TppField
      FieldAlias = 'Valor_BCICMSEnt'
      FieldName = 'Valor_BCICMSEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 44
    end
    object pProdutosppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSRed2'
      FieldName = 'Aliquota_ICMSRed2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object pProdutosppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_Produtos'
      FieldName = 'Total_Produtos'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object pProdutosppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_ICMSSai'
      FieldName = 'Total_ICMSSai'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object pProdutosppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_ICMSSTSai'
      FieldName = 'Total_ICMSSTSai'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object pProdutosppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_ICMSSTEnt'
      FieldName = 'Total_ICMSSTEnt'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object pProdutosppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_II'
      FieldName = 'Total_II'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 50
    end
    object pProdutosppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_IPI'
      FieldName = 'Total_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object pProdutosppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_IPISai'
      FieldName = 'Total_IPISai'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object pProdutosppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_IPISaiME'
      FieldName = 'Total_IPISaiME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object pProdutosppField55: TppField
      FieldAlias = 'Total_PISEnt'
      FieldName = 'Total_PISEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 54
    end
    object pProdutosppField56: TppField
      FieldAlias = 'Total_COFINSEnt'
      FieldName = 'Total_COFINSEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 55
    end
    object pProdutosppField57: TppField
      FieldAlias = 'Total_PISSai'
      FieldName = 'Total_PISSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 56
    end
    object pProdutosppField58: TppField
      FieldAlias = 'Total_COFINSSai'
      FieldName = 'Total_COFINSSai'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 57
    end
    object pProdutosppField59: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 58
    end
    object pProdutosppField60: TppField
      FieldAlias = 'Modalidade'
      FieldName = 'Modalidade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 59
    end
    object pProdutosppField61: TppField
      FieldAlias = 'Produto_1'
      FieldName = 'Produto_1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 60
    end
    object pProdutosppField62: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 61
    end
    object pProdutosppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa'
      FieldName = 'Taxa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object pProdutosppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_UniExReal'
      FieldName = 'Valor_UniExReal'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object pProdutosppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExReal'
      FieldName = 'Valor_TotalExReal'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object pProdutosppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExME'
      FieldName = 'Valor_TotalExME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object pProdutosppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExIPIReal'
      FieldName = 'Valor_TotalExIPIReal'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object pProdutosppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExIPIME'
      FieldName = 'Valor_TotalExIPIME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pProdutosppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExICMSReal'
      FieldName = 'Valor_TotalExICMSReal'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object pProdutosppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExICMSME'
      FieldName = 'Valor_TotalExICMSME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object pProdutosppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExICMSSTReal'
      FieldName = 'Valor_TotalExICMSSTReal'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object pProdutosppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_TotalExICMSSTME'
      FieldName = 'Valor_TotalExICMSSTME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pProdutosppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_ICMSSTME'
      FieldName = 'Valor_ICMSSTME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object pProdutosppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_ICMSSaiME'
      FieldName = 'Valor_ICMSSaiME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 73
    end
  end
  object pDespesaAdm: TppDBPipeline
    UserName = 'pDespesas1'
    Left = 536
    Top = 418
  end
  object pDespesaSai: TppDBPipeline
    UserName = 'pDespesaSai'
    Left = 536
    Top = 471
    object pDespesaSaippField1: TppField
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField2: TppField
      FieldAlias = 'Simulacao'
      FieldName = 'Simulacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField3: TppField
      FieldAlias = 'Despesa'
      FieldName = 'Despesa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField4: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField5: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField6: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField7: TppField
      FieldAlias = 'Custo_Saida'
      FieldName = 'Custo_Saida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField8: TppField
      FieldAlias = 'Valor_ME'
      FieldName = 'Valor_ME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField9: TppField
      FieldAlias = 'Taxa'
      FieldName = 'Taxa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pDespesaSaippField10: TppField
      FieldAlias = 'Valor_ME_1'
      FieldName = 'Valor_ME_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object pDespesaMar: TppDBPipeline
    UserName = 'pDespesaMar'
    Left = 536
    Top = 524
    object pDespesaMarppField1: TppField
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object pDespesaMarppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Simulacao'
      FieldName = 'Simulacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pDespesaMarppField3: TppField
      FieldAlias = 'Despesa'
      FieldName = 'Despesa'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pDespesaMarppField4: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pDespesaMarppField5: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pDespesaMarppField6: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object pDespesaMarppField7: TppField
      FieldAlias = 'Custo_Saida'
      FieldName = 'Custo_Saida'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object pDespesaMarppField8: TppField
      FieldAlias = 'Valor_ME'
      FieldName = 'Valor_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pDespesaMarppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa'
      FieldName = 'Taxa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
  end
  object dsImpSimula: TDataSource
    DataSet = ImpSimula
    Left = 413
    Top = 140
  end
  object ImpSimula: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 100
    SQL.Strings = (
      'select s.*'
      '      ,Pais_OrigemNome = po.Nome'
      '      ,Pais_DestinoNome = pd.Nome'
      '      ,Modal_Nome = m.Descricao'
      '      ,Beneficio_Nome = b.Nome'
      'from SimulaImp s'
      'left join Paises po on po.Codigo = s.Pais_Origem'
      'left join Paises pd on pd.Codigo = s.Pais_Destino'
      'left join ModalidadeImportacao m on m.Codigo = s.Modalidade'
      'left join BeneficioFiscal b on b.Codigo = s.Beneficio'
      'order by Simulacao')
    Left = 413
    Top = 88
  end
  object rSimul: TppReport
    AutoStop = False
    DataPipeline = pSimulacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = False
    PDFSettings.Outline = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 780
    Top = 363
    Version = '23.05'
    mmColumnWidth = 0
    DataPipelineName = 'pSimulacao'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vit'#243'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000E00000
          004C080600000074F3BB74000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000025
          AB4944415478DAEDDD07BC5D55B106F0496E424802E99D347A8906A952A57790
          2E08D2042C808028A2A288A8A022A828168A3445295244419A60A40AD2416A20
          242421ED8650420849DEFD6F5879278773EEDDA7DCE4E57186DF21C93D77B7B5
          E65B33F3CDCCDA1D16B44834A4210D5922D2A101C0863464C94903800D69C812
          94A50E803367CE8C77DF7D375E7FFDF578EDB5D7C2ED77EFDE3D7AF4E811CB2E
          BB6CBCF3CE3B3179F2E4E8D0A143F6FB9D3B77CEBEEFD6AD5BF6EFB7DE7A2BBA
          74E912CB2CB34CF4EAD52B66CC9811B367CFCECEE9F8575F7D353BD6C7B15DBB
          76CD8EEFDBB76F76EDB7DF7E3BBBAEF3343535C5F2CB2F9F7DFAF5EBB7A487A6
          214BA12C75007CE59557E2B9E79E8BE79F7F3E030CA0CC9B372F565A69A5587D
          F5D563D2A44971C10517C4061B6C90810CB03A75EA1423468C88C18307C7238F
          3C92FDAEBF03CD840913E2A9A79E8AE9D3A7C7AAABAE1A975E7A69762C903A16
          C8860E1D9A7D07A8FFFEF7BF331076ECD831E6CF9F9F2D00CEB3EEBAEBC6A041
          8396F4F034642993A50A80ACD54B2FBD14B7DD765B0C183020030620BCF9E69B
          3170E0C0183972643CF3CC33F1A52F7D294E3DF5D4E8D9B367069A679F7D36B3
          52EBACB34EFCF39FFFCC00B6DA6AAB65E700E43BEFBC33C68F1F1F9B6CB2497C
          FDEB5F8F6F7FFBDBD1A74F9FCCCAB91E30FA6EECD8B1F1C4134FC42AABAC12BD
          7BF7CE000AC02C23007EEC631FCBAC6A431A9257962A00B26E8F3EFA6806A2CF
          7DEE7399B203C2934F3E9981819BE977BEFCE52FC79FFEF4A7CC6A91DFFFFEF7
          995BBADE7AEBC5C30F3FBC1080400B80FFF8C73FE2E5975F8ECD37DF3C4E3EF9
          E4ECF7D758638DECD86BAFBD36FB2E8177E595578E4D37DD34B3A8E4F1C71F8F
          FFFCE73FD1DCDC1C071D7450C3156D4845B25401F0C5175F8C871E7A289E7EFA
          E90C2849FEF6B7BF65C00346B1DAF1C71F1FBFFBDDEF32ABF4DFFFFE37EEBEFB
          EECC9AB1500F3EF8E02200E4CEDE71C71D0B01F88D6F7C237EFBDBDF66D6D131
          095C1FF9C847E29A6BAE89BDF7DE3BB6DC72CB45EE8B451E33664C7CF18B5FCC
          62C686156C485E59AA000824623820E46216CA4F7EF2939833674E6CBCF1C671
          F4D147C757BFFAD58C98993871624C9B362DB368ACD8CD37DF1CA3478F8E51A3
          466531A4981278A64E9D1A1B6EB8619C70C20919808119F07C56586185586BAD
          B5E28A2BAEC840BAEBAEBB2E726D56521C79E491472E24771AD2903CB2540110
          51C2A2DD70C30DB1FBEEBB677159925FFDEA5759BC07649FFFFCE7E3939FFC64
          C65EB28CDCC66DB7DD3603C6EDB7DF9EC5741B6DB451F6FD638F3D9681C77762
          4AE075EEE5965B2E73273FFAD18F66E0036EB1225776FBEDB78FFEFDFB67BF7F
          D34D37C5030F3C9011403BECB043037C0DA948962A0012A408B7F05FFFFA57E6
          2612160E1836DB6CB38C113DE5945332371291326EDCB88CB9E41A6EB5D55619
          D9F2E73FFF39236510380814A40AB792B53CE38C333230A7F8310902C802E058
          AE694A79CC9D3B378B0777D96597CC5236A42195489B009CD63C3D26BE3D231E
          7DFDF998B3E0DD7C675DD0213A75688ABECBF488757BAC12DD9ABA44EF3A5906
          2E216BE44F0020F2752C168B868C61F5860F1F9E011068DE78E38D2C5D801505
          50A003223FE332022302C779E501870D1B96C592A5AE2DFFE87C80270502888E
          6FC47E0DA946DA04E0F4993362F29CE638FEF9F3E2E5395362DE8279F1DE010B
          22CA1ED9213A47A718D6A57F7C6DC43E317AF9156360EFFAB183009472703E2C
          990F00F80EC80A010438445C97FE9D8E6FEBD872D7F60140C7A6F336A421954A
          9B009CF9DACC983DEF9D3863DC5571DDF47B63FADCD75A70D71AF89CB445315B
          40D8BBD37271F0A0ADE3C8A13BC588BE0DF7AC210D29965C316073CBAA7FD7CC
          A7E28C97AF8A27DF1A1773E7CF8D720804BEEC4F56B043A758B9DBA0387FF5E3
          6244D701D1A757C35234A42185920B80ACE0D47766C5E92F5D19B7CD7C24B382
          7900489A3A36C5F7471E143BF75B3F56EE3F7C493F6F431AF27F4A72B3A0539B
          A7C7E593EF8CCBA6FC239E7E6B7CCC5F30BFCC09FF17804ECC5DDDBCE7A83871
          F8DEF1B11E2B47BF5E7DAABE59B19B426809F9BCE4AD5A4E440B920551E3230D
          B1240813F1A35CA66B2389EA7D6E0412461899D496885D9157482463E38348F2
          B32515D3A6F9155B23D4EA5D55A4E862CA9429B9C687A4827C6383684BBA83DC
          AB975494861833E1E1F8D984EBE28E998FC59CCC0D2D75C2452D2000F6ECD43D
          4E1AB16FECDA77C3162B38ACEA9BA55CF276AA5C90256D89474B4A26296FE0E4
          EFA40B0000D9E2BB7A0E683901100AA6444E55CDFAEBAF9F1584D74BA4496EBD
          F5D6ACEA8792B526142B2D4C94CAD860882D0CC64751B9140F10F89DC5054839
          D65B6EB925BB0FF9D715575CB1AEE75730A1EC50D1451EB148011CF0D1159F21
          4386642CB931323EB5EA4E45009C34634A9C3BE186B862CA9878E59DE9654EB8
          2800495387A6D86BC0A671E8E06D6274F791D1BBCA58906229FB52A922DD5089
          784C8A67954FF59C6BAFBD76F67740A088ED691501E49E7BEE8933CF3C332B91
          DB6FBFFDB2EA9C7A5DD3E274FEF9E767D53A729FD588B1B138A914F201006303
          94A930A1BD44BA4861FB49279D94CDC921871C92950BD6734E7EF6B39FC54517
          5D947921D588C55CCE5729A38FE20BF96700AD7691AA38117FF3CBF7C785936E
          8E9B663C18F34AB8A1A50048F1472D3722BE3864E7D8AECF3A31A4CFC0AA6E96
          8BA592E5B8E38EAB1880C5627563053FFEF18F67097A85DA14AC3D4098F28EE7
          9E7B6E96C8771D85DBAA75EA6505EB01C024C9F5323E2C91123D8B867FB757CB
          95B082055744617CBEF5AD6F65C511F5BC1E005E7CF1C5358F0FEF81353426DB
          6CB34D569EE89E5B4B5F95938A01386366735C3CE996CC159D36F7F51227FC20
          00FD68D9A62EF1F9213BC68103B78C510356AEEAC1CB01901B4961B2EB76E8B0
          C8311E2FE5EDB8AD3E290798F27856FA3DF6D8233EF399CF2CEC72A8A758DDD5
          9CB2DC3A37DCEF9E7BEE99ADF24AE7EA21E500A817D2A7785CD2D8147ED23825
          95487952F7BBC5165B64561B1859CA7ABAA55C735D25EA7BD5FABAEEA73EF5A9
          38F8E083B39ADD7A2D8A3FFFF9CF330B98C627B9E2A9AFB4708CD218A43129D4
          9FF45DF2A8B4BFA90FE69E56EA9256558A76E3CBF7C6F9136F8A5B663CFC5E4E
          7091137E1080F1FE836DDC63CD387CC8F6B1FF4A5B573580A50048B90047ADA7
          78A558D4873A8EDB61E0F5F4F968AA4D8F6E12F4129AF4238E38A2EE31A1EB5E
          7FFDF5F1D39FFE34B386268E221F76D8619952D7434A01D078A43E458A92C473
          1B3F6404CBACB2C7222106E3E6FB37855B645E5BEE392D549FFEF4A7EBEA2DB0
          7E62BF1FFCE00759A51111936A2B3327F5F2128A01885C51E7ABB5CDF58A01A8
          D2CAB8D01D258C481C7F4FC518492CFEE652A78CB2C64AF4A72A003EF1EAF371
          D5D4312D20BC3966BEFB66D1094B00F07DE9D1D4ADC5026E15470FDD2546F61F
          5AF10096022025FBDAD7BE964D9495AC58D2CA6EE5024696C82A7BF9E5976775
          A5A99CCD7980504B91A2EA7A4DBAD84F93F0B1C71E9B5D2FDD3777659F7DF6C9
          BA36EA115B9502200563650F38E08092162B593EF70474C809E3E37E01C2FD2A
          B94B42D18C0BB74BD70812A2564B489915D85F76D96571E595572E24D78061AF
          BDF6CAEE9F8B570F2906A0D84D08F2DDEF7E379B0FD6BE58E88EF1310E4A1CF5
          93E221EEBDF7DE6C114F227636CE1628A0CE2B550110197347F3A3F1F309D7C7
          136F8D5B2425500E800BDEFFD9A63DD78C2387EC10FBACB455C503580E807AF8
          F6DF7FFF36E305936D20ADFA26FDBCF3CECB0AB575D4A7B8C7409E73CE395980
          8D7CA85574E3B37EC817F75C687505F2471D7554ECB6DB6E355FA71400018445
          E7CAD986A335B150B83F0B92858A35D475F2F7BFFF3D53BC428F83B2F2382C56
          DCAE5A4008F4145A7C66AC0A055B7CE0810766EEBADECD5AA5140075C5B0BC16
          C1D69E23ED45445774CF88E5AFBBEEBA850B8671C12354EAD55405409531CFBC
          353E2E9D747B5CF2EAED8BB8A1AD5940326499BEB147FF8DE298A1BBC6F07E95
          95A7D50AC0E27351AE3FFEF18F597F615AE901E32B5FF94AE64EA0E26B71B328
          176BFBCB5FFE32EB392C96A4C89A8B29432DD7AA1580C50290BA43EEBBEFBEB8
          F1C61BB33192A3232C857BFFC217BE103BEFBC73068E6A41C8A248CDD88BA7D0
          A210E744547DF6B39FCD58D95AA51600164ADA99C1CE09DAD1923BCA8DB56018
          F3BC2994AADB91C64F9F1477363F1E27BD7071CC9AF766CBCA5E1433940160D7
          8E5D62939E6BC4F1C3F788AD86AE57D135EB094062C5C58A59CD52EE8C25040A
          2EE39A6BAE5915B39544CCA0011800DD7BBADF14CC033BAA1D0029422DD7AA37
          00937043ED22E0BC5AC052121B081148FA27B9712C61A522BEB2CB0050F048D2
          79CD01A5363E6258F74FB16B957A01908805B9A18E4D1E827B97DE620559ED3C
          52350059C1B1B327C799E3AE8D5B663C18EF2C989BEBB88E2DFFADD26D701C3C
          689B3878F03615D587D61B80D837D4F725975C92E5E8B20169997CA0704E4449
          2DB1208515DB70555858F78A5A473A208280909B2BD6E1CE4988576B49DA0B80
          447E4E33B2188DD2A5B117631A77F13710562ABC83DFFCE63759829CEB2B0430
          F6FECEFA72F72C4A3BEDB453961F9473AB45EA09401E8271D13F6AAF206E3BB1
          1089ED1148793C9A9A1A72274C9F1C77CFFC6F7C7BECA5F1EADCE69279C152D2
          AB53F7D8A2D7E8387DE583A347CBDFF3F60AD61B80840BC40A728192703D5925
          60A9B664CCBD72DD28184B0BD8408074D141EF3B71167612D58E82D7049C9A8C
          2B95F60420B16888D55421D9932709D60F8BA821B9122BC83D17635AA000D1F8
          50D8638E39261B17E101E69155313E145ABEB61637BD9E004C954DCE4777927B
          AE72865BFEA31FFD281787501300E504A7CE7D2DBEFEFCC571CF6B4FC59BF3DE
          CE755C53878EB1E2B203E3B4150F8A8D7BAD19FD7BE773BDDA03802699053CFB
          ECB317122426462278BBEDB6ABBA1C8AA51023706FB96DEE93A5B36F0CB7CE77
          E242D734F15C396E0B26B61A696F00128B152B68BCD28ACF4DB4E2632BEDC793
          57B89CBFFEF5AFB385882B8AC146BAFCE217BFC8E6E4C73FFE71167772458DCF
          D65B6F9D25E96BA93AA92700090BC87ABB67E39F72CB4218FA94C762D7BC2505
          465491F679136F8A497366C4FCC877BAE59A968D6DFBAC13A7AE7860D639DFBB
          67DB2B5B7B0090FF6E05B362A5A15076C502DAFBA51AC5154F3AE71FFEF0870C
          6CA969F79BDFFC6646E1535E00F4BD9594EB259EFADEF7BE57711E29C9E200A0
          140552E6873FFC61BCF0C20B0BC70B705C0310F32A31EB0780E24B734959E573
          2D505CF3D34E3B2DFEFAD7BF665606C3685C0010D358AD97D01E00748FF2BBC6
          3F9131E6F8ACB3CECA55D451330075CC3FF9C6B83865ECEFE389375F8AB7E7E7
          8B059134CB75EA1A17AC716CACBBFC2A31B84FDB83DA1E00148B59D1AD626928
          B8392CA081ACC622496D9814048C73A6D51DC84D8A7BF71DD7975521400880AC
          6E3560591C0014F7009E9481FB4F143CE545BDDB0C4BA1729E7B959601420BA0
          F1116F73C3791CC6DFF9B9EFE2688A6D51DA77DF7D33771750AA7145EB0D4096
          9A47600F210B45AA1CB27003601E97BC6600EA159C336F6E7C67EC6571F38C87
          5A5CD259B98E73D18E1D9AE2B041DBC4E756D831862EDB3F7AF5ECD9EA31ED01
          40DD038070F5D557BF37202D2E84D5D8396DF29447A10A8592A2D559B8C4ECA1
          E9E5FB588834292C89F8471A244D0122430A44A744A5CAB03800486C648CB94C
          794DC26310F70020D6B235A1A8163DCF993654362672A14AF5D21C8A115948E3
          E8EF622B048DED273D4B35C50BF58E018DB9CDBFCCB7428634165227DFFFFEF7
          739DAF6EBBA25D37764C9C3DE1DA78E8F51716E605CBA522165EBC25161CDD7D
          449C3C72FF58AFC72A31B077EB416B7BB0A029A649600140EE20D64D0957A5EE
          0E8282F5C3AE3A3FCBA6A0994B0A1069E5F62C7FF9CB5FB22A0C6C1FC1825242
          CAC8E5AA44161700592C24124B945212C081B0F233B15A5BC79F7EFAE9D966CA
          C627A533E4FA5492140AA05B1CEFBAEBAE6C91729DEF7CE73B192B5A8D67524F
          008A5B11535E63C08B4963A180C3734863E591BA011023AA63FE2FD3EF8BE6F7
          8BB4DB0460CB7F3D3B778BAF0EDB3B76E9B741ACDABF759FB9DE00147F78910B
          65482B188540AB5326935CA925A234F27E8A8BDD230B2A87C53A14BA4DA9040B
          F881868875804F2C44292BB9F6E20220C5E386228CC4B2D4071183803166AD55
          F5888D2D50E64FFC647CB0C018542C67710917769487C0C2CC9A352B9B1B8B99
          F8904B5F69AC5C4F00F20410483C019555296F694F59DE8E58358FD40D8014EA
          C6690FC485936E89FB673D93FB388CE86E7D378C2F0CDD25365B61ED567FB79E
          00A400287565628892144003817890FB594DDE497508EBC7154DB10DE52ADECE
          9EB0065CD1134F3C31FB7D221571F8E187676E4C25CFB3B800689EA509281A30
          8A03790DCAEA1028DCEC72426953CC94B68504280B94E38A0B115CC7E2A86430
          95A91953EEABEE83F4FE8EBC522F0072A1E9A118B57077060BB624BC62F5BC65
          8C75DD98F7D1C9CF6600BC7ACADD31ABA848BB9CB8F8D02E7DE39B23F78B1DFB
          AED7AA1B5A2B00B93CDC3D8A2FE6732E81B4C46FCA43EDB8E38E597B89B8AD92
          15569CC2EA79BB524AB24BE25BDDAD88A5D2199419F8C53540EB3E588444EBE7
          5D45C9E2022051E18310C18A9A076327F6B370700F4B1124C687F5633152329F
          4BC95DA3B480586A7CC489D8625630A96A72772D6E95540FD50A400B8263A58F
          2C0CDE949588A864C9792F5AB7F24A5D01282571DDD4FBE292C9B7C5936FBCF4
          8156A5D2B2203A75E8149F1AB0451C34689BD87C68F99ABF52001463018C2AF4
          52DD10945A9294FB93DA6DACA6DC4F2B785220605375CF82E9C8AE24C8076C0A
          26F76362B4D43827328572E9AE28A7280028E92C6E4C16C5CA0E345CE1BC0AB6
          B801E8DE00306D509C0068F52F25AC9F443E76D073523B0976AE3902A7DC73F2
          546C238141561D432CB4AC2D77B77807F3D6A418800813F76DD134FF85DD10EE
          CF5CB0D4496FE89F4E11C0738E543FECF9818E11E08A5752BC515700BE579E36
          291E7EE38578F9ED29B9374E120D0E5F7640ACB7FCAAB1EEE0D5CBFE562900F2
          BBC54B2682FB582CE96DBA26DDC7DF296BEA4C3078563E03A74B1D582A158A21
          69CC129B2C136331907857D9D15A7B0AE0B298827916544132CB902C715E2BB8
          38014809B9A0AE995C508B8D6B0166B1B0648A97B99E40C8DDF78C2C3DF7B3B5
          04BE6381F7C20B2FCC9E2DEDF3C305656DDA227D0AA51880CE03CCD8E7C27EC9
          249ECD7C784EBA63214F5E14490DBDC215CF9D2C7225299276793784D444CE7C
          7CD1DD44F46A2521DFDA9614094C95081704056E15A4F00A692B2D88A6202C81
          D846AC92D830ABFBA1871E9A7555B436218E37A1E209848389260AC129A789CD
          134F2C2E008A55C53D4898B4E53FCB0144AC1260168BFB91B066FDD22EE5E26B
          AEB9716FABDA881554ABAB38C2F501584A02736A91CB1B6F1503B05A49AF2400
          5E0B7F22CDAAE10C96AA97B3D46B4F9854704DC9814F1C6020AB49EEB260766A
          13DB48C01B4E45CA945E7C532AB62996F4D6279532E22416945556FB8870C8D3
          E0B9B800C8C27B390E77332D36E2702E187752F142A1001C771FDBCB3D4FA2E0
          0060296E5BEE7E02BDC26779DBE425083B3C1FEB9B47EA0140CF2A35957487F5
          4B6F5BAE461601E094E669D97E9F952092CDE9D4B1297B194BAF1CE564B54839
          00527803536EDF138AE293984E6E83735082F4EEF86A0525AF7B5C6E2BA5324C
          8EF3AB88C8CBAC01A1E4ADFE32CFC99D063C2E2CC2A32D595C00E42ECB5F222E
          D21CB80E4B267E2E0683B61D8417C699A7403C9B3CAB184EDE2C8F00A0AE126E
          6CB282627571174F234FCC5E6A4F18F7427F4A75C393B45B4082495A18792762
          F56ADAB00A651100DEF3CA63316DEEAC98BBA0ED3D3793746C7988215DFAC6C8
          9618AEAD447AAD520A8006CEA45B85CAC5806208162655AC13E0B3626BF4ACB6
          F3DDEACEEA713D1105C43D701BB92595142713F11132C639DDB7FBC2ACA577D6
          B7268B03809E1769244D03848901E4B6A732B1627732B564293B63B9D26E7476
          1DE0A6E7659A9120E61170916889B9667925E7154DB425E56240EF994C1B3325
          F177CF07ECDA8D840940EF18F3CA0360FDEAB62FA858E4C72F5D1D7F9E7E774C
          7C6746EE132CD3B153ECD47BFD3861D89E31B2EBC0767DFF43B93404160BFB56
          2A0DC145441B53020399C4AA6710C5107926AF945895AFBAEAAAAC3632750770
          459027005EE9E42088283757CD7D0333E02816B0D2B6169F2E0E004ADF7027B9
          825CE5B476B362082C7350F8CC9457378872326E3A4176983FEE63A5E3C38BC1
          864A8017E64D594096B0ADF3559A86B0E0185735AA742879382A9658418B016F
          A71659C4023E3EF9B9F8CA0B17C4DDAF3D953385F05E227DE832FDE2CC550ECF
          58CC3C45D5D54AB57940B93E6D23260FAD9C3D78CB0A67F0ACDADCA76AF61C61
          054C2860A761046C2BBC7892AB5B89586129B9D53EDD27AA1CE12199DF1A59B1
          3800682F14CF4C910BB78F40BC004171B1416A2B4A2F354D2E1FD7CD73553A3E
          C6D8C2E4BCE9FA40070C36E6E231B4E6F25793074C31BEEA1B8B4EB2BCAE25E7
          C9FAD6B227CE2200D4D970F6CBD7C49553FF1513E64C8FBC9C6253874EF1A521
          BBC6FE83B688D103F3E7652A956A0168253369AA5E14CF261AD9B1268FBBC89D
          A8848461FDB0963E58BA8503FABE92958B29DA92E2BD279DC78A2BF64158947B
          C6F60620F24557BCFB90074BF7E77EF432627B8B6369719F5A4EE995C452A7CD
          AF2A65AC93A45DCAD2F58D350BACD1591EB7352FA11A00F20C79378E33B66957
          6DCFA0F2C5C2C80DAE3616FC000B7AED8B63B2DEBEBB673D15EFE6880517BCFF
          BF51CB0D8F53461E109BF51CD56E6E682D95301454FE8A02214DD2F1565016D0
          0AAE9C2AAFDC71C71DD9A4A86029DE4CA8DE42596D59C1C54375975A28DA1380
          CE0D7C161BE980F4BC945FEC879028DE4057BCC63A14BA6EED3536AEAB099695
          6A4D07AAAD8401420BAEF8DC38A4420BDE8E3CAD3E45645E351D1A1F00A03D3F
          EDF779DDB47BB26EF75CD272862E4D9DE3D815768F7D076C1E1F1958DDCED76D
          49ADA568AC205240CAA0B08A836B2716CCBB33B60911532A914A358A2C15B7AA
          7887E56A85AB93EA2589C5C173239C4AB9CBED05402ED8FDF7DF9F9D17981445
          27013AD6AFB86D8BC7C15515CF624D53C1B6D4814FAD9236CD1513F2162C042C
          903CA3B44FB970A2965234E32BFE75BCC597EE987320B478EB872CB738B6261F
          00E0ABCD53B372B24B27DF9E55B454229BF51A15470CDE21B6EE353AFAE5DC66
          A212A915800277F115F05028FF4E0DB3DC3BA40C57AA2D519FA8EC8C25B5BA53
          2A0AE8D8D628EDBCE29EB0B658D1F4261F965AE25A054829EABEDE00042263A5
          D506E9A1683CDD4B728B25C2C57F142F1120C6D40225DE363EFE4EC4C5DCFD4A
          DBACCA8D0F37D8C2909ED51CAAACC16CDBDBB514986AAD05A57FB884D4EB99D2
          5A5C51291839D04A9FAF6422FE9E898FC5EF26DE127F9C32263719430676E915
          870CDC260E18B865ACD67F64CD035D6A006AED8648ED34564B4A65454FB5A07C
          798CAA38A21CA346A12495593F6E96E1F3FB584F7148BD00A8B44D0C25BD91AA
          4D945D5130EE56B1D40B8080674C948EE9FBB3EAB3F2851DDF56791E0385E73D
          1426A1CD913622EEA09A5196C202656C1515D4E3DD1B697CCC03901316D622C8
          EDE52D0061B1D4A31BC298C86BFA242696FE20A030C1CE57495EB9240015555F
          3DE5AE3867FC0DF1CADCE9B94FD6A5A953ECD467BD386CD076B1418FD5EA9E98
          AF573B126552004DC111045C198A4591144F532EA02A454B2323B40FA9064979
          2D09612B6035D47A39C138CA9DE92D4C31142591E2C08A1677EAB7B6357D717A
          8014BFB4C6B35028CF27DED104CBD2036361E1BB31E2722A10A068C5A4079793
          92B312C9FA015DDAB2A25EE393B61271AD1493D105D7E0892426BA50EA01403A
          68E1462E0967522E342D4AE9053679A56C29DA98098FC445936E8BABA6DD956D
          379827AAF13B6B751F16870EDA36F61BB8454D6FC32DF7F0F5EC0754E08B1935
          21A9A19282D89B45B2959B95269132016ADA842755755072C5BCCAC8B81FF57A
          6189026F2E96562560CCC6B745C9B8A02C9AE0BF50614A0190E561353FF1894F
          64F169A1785E71940FF0793E4A8DA832369EB550355853A0572FABD0A0D4BBFB
          B8A88E9712E01DB07E40EB1EB8F7BC847A8AE66773A8BD29DDABFB13978A958B
          0B2CEAD90F283C48FD80696EA45710522A7CF276449405E0841993E3B6198FC4
          A92F5E1EAFCE9D993B25B17C53D7D8BBFF2671FCB0DDEBEE86D61380148EAB64
          2533988515EE3A22583479C2E45EA5F8D18E6082F04446504A168945A8C7BB24
          92B0B65C6549F8D4314F581335A63E85C5BFA500E8592C2214ADD82D4E000434
          7F024B61FA2349DAD14DC590188E2B59CABA1071917231F1719A1F8488B9E19E
          F114EA29C6275D2FE54DDDABED202C54C5F158BD00980AF01561989F4496596C
          54D520F38C559EC2FEB2006C9ED91C8FBF312E7E3AFEFAB8B9F9A1C8DFDEB020
          D65B6EE53872C88EB15BFF8D726D379857EABD25055059459132DCADE44E58ED
          5D236D364BD9D29B7154E4270695725248BF5B4913665E51F605EC2C4A02078B
          6B814080700593D4EB059D9E89278059A4509E5DBF1EB205F9534E49C5D62C11
          4ABED02AB0442CB6544F7BBC615728A10EB73037C9D20A2580ABF07EEBBD278C
          9CA098539C5CB84F2A5D48A989B63CA256BB219E9DFA52C688FE64C235F1E6BB
          737237D876EBD825B6EA353ACE5AE5C818DEAF7EEF414F002C7C453525014071
          4E35D52CDC2DABA81DB8802C09D282554BAF2AE35A59ED8035BDD28C75745D71
          597BBC679E15747F8894C25785A1FF5940F146BA2E00266B59290053DA04E828
          2502438997123D2B3A4BDB56B53F00A87891674DF7E97C16466E59355BD7E711
          8BA257CD89070B8BC3755A887F0B491F002C7C436E02A022F86AB625A42F6265
          0B80794A0BB845DB962258EBB65E7DDE2A005F6D9E168FBE3E364E78FEC218FF
          F6D4981BF95A801468AFD16D589C38AC2528ADF2659CA5448C915E885108C0B4
          357A35004C4956B11DD2A3F0355C8269C48AB6138C9E1DCCDC03F72DADEE026F
          5D0FED2562414C1FE0A762728A6395E52627AB0F8098392983149F9693F46660
          D43DC5A33040E74F40F333C0A63CC637319FE5842781CC02C0C278CCF12C118B
          546BD7403961859022161F73992A6E00CBDC1496C7B17ED208697C0075EDB5D7
          CEDE75E8F92A05A00592E5130B02627AF92AAFCC024E2F6D1ED59A2BDA2A0035
          D64E9ED31CBF9AF0B7F8D39431F1FAFCD96DEE749664C0323D6397BEEBC5C923
          3E1D5D9BBAD4C5154DEF5A0782C2D70453965A5EEF45793169E2BAC2E150382C
          866201D39604699523DC41DFB7D77BD38949F6CC943C5D1B20288FE74E4A636C
          0014635AF852CD729240985E610D683EE9DF29F6CB2BD853D74FAE58BACF04E4
          7A9153E5C6C79F8531ACB9F3BAB0C2B95188618ED3F8142E42D57A30C6DDDCE0
          100A5F2E6A2C9DD3F9ABB6804462FEB1D75F8AE39EFB4D8C9F332DE6E58C05BB
          B5806E54F761F1C3150F8D55BAAD90FBFD0F0D69C88749DA04A07D5EDE98373B
          BE3BF60F7153F343D1FC6EBEBA3E5D12FD3BF78CE3877E32F61AD01247F4A95F
          2CD89086FC7F915C5B52780BD2ADD31F8EB3265C1B4FBF3521579136E9DA7199
          EC659C67AC7468ACD0A55FEED79035A4211F16C90540B1A0371FFD60DC1571C7
          CCC763E6BB5AF4DB3E79C7967871F94E5DE3AC958E88CD7A8F8AE17D1B56B021
          0D2994DC9B32D92FE69249B765F5A1CFCD9E986BEF9805EFFF7FCFBE1BC73143
          778B35BB0F6DB182EDD731DF900FA72042B0D7C89554D18404490DBFC811A923
          DF215E12D944D2FE9FFE5D4896245227BD32DBF17EB790FCF35DFADEB51CEF5E
          52895F9EBC6745BBA2DD3EFE81F8C584BFC698994FC69C05EFE40660DF4ECBC7
          692B7E26B6EFB34E0C6D58C186D4513090186CA985F4AE0AA0509584FE074CDF
          15BEBF012BEB7B7F626EE505959161B531BFC027D18ED99596C164A6F7212650
          032C26DA9FCE2DCDE2DF5856F7948AC3DB62922B02E02BD327C7B92D00D4313F
          E99DE6DCB5314D1D9AE290415BC74103B78AD55BAC607BEF9ED6900F8F008F2D
          2354A35076600144E572000044F284002735E13B96326D4B095872AC8A1AD4D7
          4A670191426B1FDB4E00A1620D698564255D07C0E5FCE400552549FA2BC753B4
          01D03AF4DB4A6F54BC2FE88DE3EE8D0B26DE1CB7343F9CFB6DB8CAB437ECB15A
          1C3564E7D8A2D74763609FFA972435E4C3290AD6B56CD9C251B54D61DE4F999A
          1DE6004DE1026BC595F4FB72BFA95654E7064B687B095546009D36C6024C0054
          60A0405F6510510593DA8ECE3DF7DC2C470CBCF2811602155279F60AAD188053
          664C8B8B26DD1AE74CB82166BCFB46E46AFE6EB9449FCECBC7512BEC9275CCAF
          DA3FFFDEF90D69486BA24B5F79A2D23C0A9F5C3E00B17D860A26154385F11DD0
          02264BA8C89C854CAE25579255555AA6F6550139EBA9F0DA9FC9A249F203AB4A
          1A62E7343D8A9A7295DFE5ADCAAA1880335B568A31CD8FC76F27FE3DEE6C7E2C
          16E46C93C088EED467FDF8ECE0ED62A7111B2DD9596BC8FF1BA916803E000840
          DC57656BCA11593FA0540BABCC4D891EE0D930D9CF9285E5CEFA0E405953E568
          9A98B57E6954CEDB945BD5D6F45E4376C5943171618B257C7DDEECDCC7F5EBDC
          338E18BC7D1CDD6209FBF6AE7FF172433E7CC2350440EEA79ADD54770914BAD7
          59371DF2DA930882C4EF236674F3234E0050C7865235DF031970FA79AA8F0566
          BD86A5365BB631B3F339174206FBA900BDDD5E513D69C6ABF1DC5B13E3E15963
          63F6FC39B98F531DB356F711B1418F556340230E6C481D0489C2F5B367A702E8
          C444A61A4C8CA68E093122B7D177E235048D4269719EE3C56CDC50A907690A2E
          28000323408927113BA9E713D39A3699522CAFF8DBDE30DADADC13D02375EA4E
          C210E56973E6CF8DD9F3E6C4BC985FD1B1CB76EC1CDD9A966DD71DB41BF2E191
          F4DA39AEA6E66239392A4DF15307065612F902345211C8122D56AC25807257ED
          A65698B7D3FEA51305A07DB897A9C89AA45DDE7C87C0493B0400B4E3B0A398D0
          760160431AF27F498008F87482240B26A7072029892E572827985EC6E23B804C
          097C315D619CC8154DA005B6747C6122DECF01CD39FD997288CEE7039C3535E4
          36A4210D695F6900B0210D5982D20060431AB204A501C0863464094A03800D69
          C8129406001BD2902528FF038E58A1A3A4C9DC430000000049454E44AE426082}
        mmHeight = 12700
        mmLeft = 5821
        mmTop = 2117
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground
      end
      object ppImage7: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image7'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 46567
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pra'#231'a San Martin, 84 - Sala 509'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 8202
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Praia do Canto - Vit'#243'ria - ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 12171
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Macei'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 4233
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppImage8: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image8'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000006B0000
          00680802000000794999F5000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000E
          A24944415478DAED9B075453D91686135AA8A1D7D05B00419A20BD094AB337EC
          8E656C4F45C727169491B157666C282AA258B0A128082222BD497168D24BE825
          107AE76DF13D560C3A925C24E8BBFF62B12027B77D397BEF7F9F7B83C5ECD3C7
          A042202C4A10A15082488512442A942052A104910A2588542841A4420922154A
          10A95082488512442A942052A104910A2588542841A4420922154A10A9508248
          8512442A942052A104910A2588542841A4420922D58423C8CECA26CE2BAC2828
          05BFF1381EF8B7ABAF87D2D556D5529FD750DADCD5C6EC13A4D5042228C22360
          29AFAF2BA5AA24242D2B2029C4C5C7C9860382DD7DBD9DBD5DF5EDCD058DE545
          E48A948AEC7795B92DDDEDCC3EDFFF6A421014E0E4B35132705035992AADC9CD
          C1594CAE4CADCC2D69AA047618CC20068BE5E5E0268AC8EA48AA11F0A2756DE4
          C48ACCA0DCE8245256476F17B3CF9DD904D95858892272EB0CE6D8281AB06059
          228A925F17269328B5152DB54D9DAD0383039FDE063351845B808017531222CC
          54B3982AA3D9D8D1FC3437EA767A70756BC3C0E0E0FF29410E56363D2935378B
          55F0FB5D658E5F5A3084674D5BE330B891029432FCE2960A7AAB749DE18F5785
          4927A3FC4A29D583CC83C83482C0C29030C963DA7A15619980CCF0CB498F6136
          F5F4F78E665B1E0E2E28353B4C97D92A1B4697A4BB875F2AA3D4300B22730862
          B15845418297D3CEC9122AB7D283CFC6DD6DEA6CA1770FD278B18336EB1C55CD
          82F362DCC22ED0BB8731BB16A610E4E7E475B75AB344DBFE71D69BFDE197DA7A
          3A1839752C568247E8B483AB9982EE99187F9F77819DBDDDE37F2D4C2008F16B
          A764E8E5BCABACB97ACBB313F98DE548F666A5A07FD67147DF60FF823BBB4994
          BA41CC78C73213088277B936D71DEAE991285FEFA447234E08CB87E3865AE132
          7986A6B812171BAEB5A723B922FB56DA8BB4AA0FDD5F4A9410CB5B8C165D7FF7
          D4F3CD35B0DF3F3941B02F764A532FCDDE93D750B6FEC961524B2DF5282B9665
          0A41638FE56A30377D037D5097DB7B3A05B8F8C47884BAFABA1F64BEBE98F8A0
          A0914453AC01F4B5B90760F639FA6D1FFF6C38DE0439D9380EDAACFF456FE69F
          09F78F47DDA4816B283DC9DD7AAD8E2431B238E542E28384F24CCC47D3C33E43
          C5086699AE14F1657EFCA9E85BB9F5A534102FCCDC3D5FD3E640B8F7CDB4E77D
          03FD3F33416E76CEDB0B3DD544E5373E3B16539A4E3DA42C2CB3D772B5B5E294
          87591117131E94536AA847F509EAE01C8D65B46EA43EF34E7E02D6877A74B59E
          B3A7EDA627D96F7687FE354A4BF4A312841C17B1E632B9B3658EFF6FD4390BCA
          CB0C65E3E3F65BF3EBCB3C237D32AAF3476E3B5DD9C8C3663DFCB133E46C7245
          0E75D1D09524FA2D3C54DC58E112B06F9C53E1B812842A212B20FE72F579687B
          573C3C483D24C127BCD970818BF68CABC94F4EC7FA7F7173414E3E4FDB8DE0A2
          0FBEF67EFE21869A142487F035977AFB7B9D6EB98EB3A7195782AC2C2CD3958C
          2ECE760BCD8FDF1C74827A08ECB1ABC9127BA2C999587FDFD4E75FDBC37EAB35
          CB751C7D520221DF913F2F1A51EBAFF60FF4FFE40459B05808B7BB8B8F4414A5
          6C0E3A4E3D44C08B6D377171269A9D8BBBEBF3EEE9D7F600C665C964FBCB490F
          6FA5873477B50EBFCECEC216B1F63294EF9F9C20E67F79B0AAB561E15DB7DE81
          BEE1D785B905D6E8CF5C3765CE9D8C97300DDBBFB46C25C12B7CC87683918CD6
          EF115743F2E3BAA9A258555836C0E55819A5DAE5FE4F9D07413C1F6BF11F3202
          12AB1E79E4D4150FBF0E95649AA2C161BBCD0D1DCD8723AFC79665D06C085E67
          FE249B5DE62B2A5BEADDC32F65D516518F2ED3713862B739303BD22DECFC4F5E
          8B716C1CFF365FB14073DAA1089FC09C48EA21197EF1AD468BE769DAC496A67B
          C5DFA32EC780CF5C5E77A7E95229BCA857DCBD67B951346BD4A71CB62FD6B2F3
          787DE57646C84FEE0759B02C4AC2D24411D9ECDAE292A62AEA21C8653A92AADB
          4C5CCCE474326B0A430B12A064933B29B20212E0B4A7AB1889F208DE4C7DEE97
          1E5CDFDE44BDA19210E1EA5C777E1CAF4BC0DE2272E5382F734D8855FE618129
          218AC8C10C9DA361C587E301525016F0381E3C274F6163C59DF72F5FE6C5D777
          34D130023B0D7D4E5841C2CE9073E3BF3C33B10862865A63216E7E8868551159
          A0092D5D7367EB878652688749945A689369DE0FD0AFCCDE672C37D9F5C59957
          8589E31CC298094870589031A1050403D4DBDF07338BBA70530B5AE653F6AE05
          8DE59B828ED7B591C7FF3C272EC151EAC2CCDD33D52C8EBEBDE197FE62FC97B6
          303F3A411B258353F6DB295D6D2B1F1EAC6CA963CA8D1266128414A62048E8EE
          EF29265732B687338E3B1669DA82F5B992FCB86D448A1C1F3193A0A210E1C63C
          8F41CCC0AE10AFD4AA0FF46E3E43C5F8A4FDB686F66630E7152D75CCBA0A6612
          14E71572B75E374BCDFC6A4AE089683FBACA28D4E8734E3B9D89E667E3EEDC48
          7DD6DACDC8BDAA311173EFB8B383798676A2A5AB6DDFAB8B09A4CCD19E34160B
          1DDE41EB75E594DA2D4127CA9AAB99750998EF44908B0DC7C58E83EBA47E116C
          706B4F075813EA1745B805A00959A6ED1090F9EAE85BDF51DEF694E0153E3E63
          ABA99CF6C9985BF7FF0EA39E807C386EF860466ED23F38D0D9D3D5FD1D5AE631
          2648C08B49E3C5D444E521C741334B3D0441FABA3039A6ECB3957D68F2268B2B
          9F75DAC1C3C175E4ED8DA0DCE86F1E02C7CABE5A6FA6ABE9D2F4EA3CB7D0BFC0
          660F0F41DB07FD0C9CC0C8AD3AFBBA0B1A48858DA4724A0D4D53388108AA08CB
          6C337671249AC18483CEBF7FE0B39B410398C117B9D19E91D768B612E0E45BA1
          EBB8C568E1DBE2548F882BB5DF72C5D03B1F9AB6414E40D233D2E7657E3C751B
          6721AFBBDF6AAD3037FFC8AD585958F038DEEEBEEE7B7FBFF24D0BAAA08C59E5
          19338204BCE87EAB354E44B324527668413CB4B17D9F771103838390B068EE10
          7D12347047EC361345E5CFC707F86784C07CF9DA5100F7761397A5DAF6C179B1
          A7626ED3EC0DEC91869822FC1EB92184B6BAA8FC5C0D6B792129DFD4A08B890F
          C7EA09C4B1210801FBCB50649537D71C7CED9D519DFFB526EC8BE2E5E09EAB61
          F59BD9F292A6AAC391D7FEC1D9D8AB18EFB75E0B29D5E3B5775CF9FB9E7E3A8E
          02642DE4F5F65BAF81CD21638417264D20825AE2CA1059445139E8AE9EE646B5
          D36F6E6505245C4D9638A89ADE7B1F7A31E961630765E47BE40524DD2C565B28
          E85D4B09841E8E4CFFCDF58F1943C771E3D4F96F8A528E45F9567D2920984090
          1FC70BF574A5AE535449AAE79B6B34F77947298832A8AD07ACD741C23AF6D637
          B42081E60D9FA6F9BF8C1767D614C2C5E7D69730F0E025D8037D29B5BF9CFFCD
          C3CE7934CA3720337C4210B4539EEA61B39E930DE711E11D5194C2707B2FC485
          5FAEE3F8ABC1DC98D28CD3B1B78BC815D4A306040D77EBB5927C22C7A26E8615
          2430F6FCAF18AFD046C3F950CAC1F440153A12793DAFA18CC904A180406439AB
          99DD7B1F763E31A0A6B591F153C16227892AEEB658A92349BC9AF2E4567AF070
          B287A36C335E324BDDFC5156C4A5A447D50C451F7C42EBA6CC017C75ED64A8E0
          8A42D2171203BC931ED395B2C79EE0622DBB3D96AB2125FD1E7125A13C13E102
          274C647B5563378B5594AE3608D5A89234CCD0EAFF422DDB9DA6CB2A5BEAE1C5
          7795390C1C058FE359A46507D9A6AAA5FE6CACBF2017FEF7691B4A9BAA3CDFF8
          8CBE171A7B82E09CC1C118484F3A1E75F37156442B430F52D208E21402CD65F2
          F4B08244AFF8BBC5E44A63D9C9C05441500A8EF234F72D03EBF850EB97EB386C
          9ABA00262FD4BA24529634BFF85ECBD5B6CA5361A67BC5DD65A0288D0DC1F506
          737F335D965695F747E4B50FF5A563F2F4232B96E5D3434646B25AD042D4B636
          2A0811A4F0A20F33C3BDE2EF9536D1DD0283890197EA61F36B575FF7A1373EAF
          0A13A1B384793D4DD9004C68775F2F9C3CE4442610FC543AA18DDBFBEA42687E
          3CBD9105B555519060A1A0DBD5DBF3283B82E6292403C2A4CD5317408DE2E5E0
          AA6B6F7A90F9FA46EAB3423289A6CFF9A680141CE288DD167E4EDE93D17E77FF
          0E1BBE4F0FB975ABF1E265DA8E6105F160CE192E290C1284CEC9D578C90A3DA7
          171F624EC7FA977E7EDFF29F2E89956D8EBA25747EFA52EA3202622C58D66452
          D69EB0F3342E1A66228E8D03DE8C1D6A667AFA7BE1875EFBC2F2F1794EF54BB3
          F600BEA36F7DFDDF8750AF6B40E13295D53E6CB749824F1846219CC795A033D1
          FC80CD5A2C06EB16763EB2F8DD37DFAF2E22BF42D709E6948A882C642568F820
          25C597BF7FF121163E83B69ECEEFF1FC337C00904F7799AD8036EECF84FB23EF
          2383C15EAB3FCBD56CE9BB8ADCC391D753AB72C789A0DCC7DE60A583AA895FDA
          0BEFE427356D9F3918983E10A1AC2CAC406A9E86F56C0D2B6D4915612E7E08F3
          A6AE969CBA6268A79E6447D2D83D66090CB6C7B45FB52554CEC6DDB99A1CF80F
          2DF9981104408B861C0CA9B90612734A650E6668E5038C08D7D017090DA52739
          AA9A18CB4D96E597800FBDB9B39544A949AEC886E9F6B62495D9C46805897291
          96ED419BF5300FE072A0DBFBEE0465F8C5212E6C950D2F273E820A3038F460AF
          2CBFB8B5E2144B453D5511391C2B7B4B577B6D3B39ABB628A6343D28370ACC1D
          33BFF8F62D4D1253DA63B9CA425EEF44B49F4F4A20BD069B6E825AE2CA07ACD7
          2A0BCBFA6704F7F4F759294ED11457C4E378DB7B3AE16384929256F521A23039
          B7A1B4979E8513264A90936F83E1FC0D86F3027322CFC5DDA55EB2FD2E04D544
          E4F659AD71563387BC0673ADBAB5BE9C529B575F9A48CA4A24654E9CAFFD8E5E
          1F6D8D91CB7C4D1B283897931FD3FDFD347A09423FB4C160EE16A3459074A120
          DC4A7B014EAA7F903E9B367124C8C5E74434872E088319FC23F27AD88835A16F
          8A915A0C950B1A4C4B057DE843A24BD3C81DCCF94AE09848564062868A310F3B
          27F841F8A1F115A311837E505B5275B6BA85999C8E249F2814626673605CD011
          15932B228A9283F3E3CA9B1959D964BCAB837E8B2822071D2BCD3DB91F4B9DBD
          DD254D5565CDD50C2F6BFED84F1E4D04A104910A2588542841A4420922154A10
          A95082488512442A942052A104910A2588542841A4420922154A10A950824885
          12442A942052A104910A2588542841A4420922154A10A95082488512442A9420
          52FD07624EB60B794F10050000000049454E44AE426082}
        mmHeight = 15875
        mmLeft = 122502
        mmTop = 2117
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rua desembargador Artur Juca, 76 - Sala 102'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 8202
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEntro - Macei'#243' - AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 12171
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkColor = clWindowText
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Site'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 1852
        mmTop = 15610
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 4160768
        Gradient.EndColor = 49408
        Gradient.StartColor = 4227072
        ParentWidth = True
        Pen.Color = clWhite
        Shape = stRoundRect
        mmHeight = 8205
        mmLeft = 0
        mmTop = 23015
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTIMATIVA DE CUSTOS DE IMPORTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3403
        mmLeft = 0
        mmTop = 23548
        mmWidth = 197272
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pSimulacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pSimulacao'
        mmHeight = 3668
        mmLeft = 0
        mmTop = 27252
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
