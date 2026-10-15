object fComexSimulacaoImp: TfComexSimulacaoImp
  Left = 0
  Top = 0
  Width = 1360
  Height = 1200
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1360
    Height = 1165
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1352
        Height = 1137
        Hint = ''
        DataSource = dsSimulaImp
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Title.Font.Style = [fsBold]
            Width = 64
            Font.Name = 'Calibri'
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
        1352
        1137)
      ScrollHeight = 1128
      object Panel5: TUniPanel
        Left = 55
        Top = 28
        Width = 1232
        Height = 1100
        Hint = ''
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object Label3: TUniLabel
          Left = 1025
          Top = 585
          Width = 89
          Height = 13
          Hint = ''
          Caption = 'Aliquota_IRPJServ'
          ParentFont = False
          Font.Color = clBlue
          TabOrder = 50
        end
        object cNumero: TUniDBEdit
          Left = 20
          Top = 21
          Width = 224
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Numero'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 0
          FieldLabel = 'N'#250'mero'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
          OnChange = cNumeroChange
        end
        object cFornecedor: TUniDBEdit
          Left = 20
          Top = 210
          Width = 550
          Height = 25
          Hint = ''
          DataField = 'Fornecedor'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 10
          FieldLabel = 'Fornecedor'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit11: TUniDBEdit
          Left = 846
          Top = 451
          Width = 200
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 22
          FieldLabel = 'Valor FOB (ME)'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit17: TUniDBEdit
          Left = 20
          Top = 370
          Width = 350
          Height = 25
          Hint = ''
          DataField = 'Porto_Destino'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 15
          FieldLabel = 'Porto Destino'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit18: TUniDBEdit
          Left = 20
          Top = 424
          Width = 350
          Height = 25
          Hint = ''
          DataField = 'Qtde_Container'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 18
          FieldLabel = 'Qtde Containers'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit20: TUniDBEdit
          Left = 846
          Top = 478
          Width = 200
          Height = 25
          Hint = ''
          DataField = 'Frete_Internacional'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 26
          FieldLabel = 'Valor Frete (ME)'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cTaxaMoeda: TUniDBEdit
          Left = 593
          Top = 449
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Taxa_FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 21
          FieldLabel = 'Taxa FOB'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit24: TUniDBEdit
          Left = 1064
          Top = 451
          Width = 150
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 23
          Color = 16766421
          BorderStyle = ubsInset
        end
        object DBEdit25: TUniDBEdit
          Left = 1064
          Top = 478
          Width = 150
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Frete_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 27
          Color = 16766421
          BorderStyle = ubsInset
        end
        object DBEdit32: TUniDBEdit
          Left = 593
          Top = 559
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Taxa_Adiministrativa'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 31
          FieldLabel = 'Taxa Administrativa'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cDataRegistro_DI: TUniDBDateTimePicker
          Left = 576
          Top = 21
          Width = 279
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
          FieldLabelWidth = 120
        end
        object RxDBLookupCombo1: TUniDBLookupComboBox
          Left = 20
          Top = 451
          Width = 350
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_FOB'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 20
          Color = clWindow
          FieldLabel = 'Moeda FOB'
          FieldLabelWidth = 120
        end
        object cBeneficio: TUniDBLookupComboBox
          Left = 20
          Top = 102
          Width = 550
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
        end
        object DBEdit1: TUniDBEdit
          Left = 20
          Top = 586
          Width = 350
          Height = 25
          Hint = ''
          DataField = 'Aliquota_IRPJ'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 32
          FieldLabel = 'Al'#237'quota IRPJ'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object StaticText40: TUniLabel
          Left = 571
          Top = 586
          Width = 42
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'CSLL'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 41
        end
        object DBEdit2: TUniDBEdit
          Left = 615
          Top = 586
          Width = 50
          Height = 25
          Hint = ''
          DataField = 'Aliquota_CSLL'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 34
          BorderStyle = ubsInset
        end
        object DBEdit4: TUniDBEdit
          Left = 304
          Top = 586
          Width = 168
          Height = 25
          Hint = ''
          DataField = 'Valor_IRPJ'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 33
          FieldLabel = 'Valor IRPJ'
          BorderStyle = ubsInset
        end
        object DBEdit8: TUniDBEdit
          Left = 667
          Top = 586
          Width = 86
          Height = 25
          Hint = ''
          DataField = 'Valor_CSLL'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 35
          BorderStyle = ubsInset
        end
        object DBEdit28: TUniDBEdit
          Left = 20
          Top = 532
          Width = 350
          Height = 25
          Hint = ''
          DataField = 'Peso_Liquido'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 28
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit29: TUniDBEdit
          Left = 593
          Top = 532
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Peso_Bruto'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 29
          FieldLabel = 'Peso Bruto'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cVia: TUniDBComboBox
          Left = 20
          Top = 397
          Width = 350
          Height = 25
          Hint = ''
          DataField = 'Modalidade_Frete'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 17
          FieldLabel = 'Modalidade Frete'
          FieldLabelWidth = 120
          IconItems = <>
        end
        object cPais_Origem: TUniDBLookupComboBox
          Left = 20
          Top = 237
          Width = 550
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
        end
        object cPais_Destino: TUniDBLookupComboBox
          Left = 20
          Top = 264
          Width = 550
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
        end
        object cCidade_Origem: TUniDBEdit
          Left = 576
          Top = 237
          Width = 417
          Height = 25
          Hint = ''
          DataField = 'Cidade_Origem'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 12
          FieldLabel = 'Cidade Origem'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cCidade_Destino: TUniDBEdit
          Left = 576
          Top = 264
          Width = 417
          Height = 25
          Hint = ''
          DataField = 'Cidade_Destino'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 14
          FieldLabel = 'Cidade Destino'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit36: TUniDBEdit
          Left = 593
          Top = 370
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Porto_Origem'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 16
          FieldLabel = 'Porto Origem'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object RxDBLookupCombo5: TUniDBLookupComboBox
          Left = 20
          Top = 478
          Width = 350
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Frete'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 24
          Color = clWindow
          FieldLabel = 'Moeda Frete'
          FieldLabelWidth = 120
        end
        object DBEdit37: TUniDBEdit
          Left = 593
          Top = 478
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Taxa_Frete'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 25
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBComboBox1: TUniDBComboBox
          Left = 593
          Top = 422
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Tipo_Container'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 19
          FieldLabel = 'Tipo de Container'
          FieldLabelWidth = 120
          IconItems = <>
        end
        object cOperacao_Entrada: TUniDBLookupComboBox
          Left = 20
          Top = 156
          Width = 550
          Height = 25
          Hint = ''
          ListField = 'Descricao'
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
        end
        object GroupBox1: TUniGroupBox
          Left = 19
          Top = 697
          Width = 774
          Height = 57
          Hint = ''
          Caption = 'Cliente Importador'
          TabOrder = 39
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object cNomeClienteImp: TUniDBEdit
            Left = 61
            Top = 16
            Width = 438
            Height = 25
            Hint = ''
            DataField = 'Cliente_ImpNome'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            BorderStyle = ubsInset
          end
          object StaticText1: TUniLabel
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'Nome'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 2
          end
          object StaticText28: TUniLabel
            Left = 502
            Top = 56
            Width = 53
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'Estado'
            ParentFont = False
            Font.Color = clWhite
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 3
          end
          object RxDBLookupCombo8: TUniDBLookupComboBox
            Left = 557
            Top = 16
            Width = 205
            Height = 25
            Hint = ''
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Cliente_ImpEstado'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clWindow
          end
        end
        object GroupBox2: TUniGroupBox
          Left = 19
          Top = 767
          Width = 774
          Height = 71
          Hint = ''
          Caption = 'Cliente Nota Fiscal'
          TabOrder = 40
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object StaticText34: TUniLabel
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'Nome'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 4
          end
          object StaticText35: TUniLabel
            Left = 502
            Top = 16
            Width = 53
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'Estado'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 6
          end
          object DBEdit19: TUniDBEdit
            Left = 61
            Top = 16
            Width = 438
            Height = 25
            Hint = ''
            DataField = 'Cliente_NotaNome'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            BorderStyle = ubsInset
          end
          object DBCheckBox1: TUniDBCheckBox
            Left = 11
            Top = 45
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
            Left = 228
            Top = 45
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
            Left = 107
            Top = 45
            Width = 95
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaJuridica'
            DataSource = dsSimulaImp
            Caption = 'Pessoa Juridica'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
          end
          object RxDBLookupCombo9: TUniDBLookupComboBox
            Left = 557
            Top = 16
            Width = 205
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
          end
          object DBCheckBox4: TUniDBCheckBox
            Left = 355
            Top = 45
            Width = 83
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaZonaFranca'
            DataSource = dsSimulaImp
            Caption = 'Zona Franca'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox5: TUniDBCheckBox
            Left = 459
            Top = 45
            Width = 102
            Height = 17
            Hint = ''
            DataField = 'Cliente_NotaConsumidorFinal'
            DataSource = dsSimulaImp
            Caption = 'Consumidor Final'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 8
            ParentColor = False
            Color = clBtnFace
          end
          object DBCheckBox6: TUniDBCheckBox
            Left = 581
            Top = 45
            Width = 184
            Height = 17
            Hint = ''
            DataField = 'Destacar_ImpCred'
            DataSource = dsSimulaImp
            Caption = 'N'#227'o destacar impostos creditaveis'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 9
            ParentColor = False
            Color = clBtnFace
          end
        end
        object cINCOTERM: TUniDBLookupComboBox
          Left = 20
          Top = 129
          Width = 550
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
        end
        object cProcesso: TUniDBEdit
          Left = 20
          Top = 48
          Width = 329
          Height = 25
          Hint = ''
          DataField = 'Processo'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 2
          FieldLabel = 'Processo'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cTipo_Produto: TUniDBEdit
          Left = 20
          Top = 75
          Width = 550
          Height = 25
          Hint = ''
          DataField = 'Tipo_Produto'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 3
          FieldLabel = 'Tipo de Produto'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit22: TUniDBEdit
          Left = 20
          Top = 559
          Width = 350
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Fator'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 30
          FieldLabel = 'Fator'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cOperacao_Saida: TUniDBLookupComboBox
          Left = 20
          Top = 183
          Width = 550
          Height = 25
          Hint = ''
          ListField = 'Descricao'
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
        end
        object StaticText60: TUniLabel
          Left = 757
          Top = 586
          Width = 68
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMS Entrada'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 42
        end
        object DBEdit40: TUniDBEdit
          Left = 826
          Top = 586
          Width = 50
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSEntrada'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 36
          BorderStyle = ubsInset
        end
        object DBEdit41: TUniDBEdit
          Left = 938
          Top = 586
          Width = 58
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSSaida'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 37
          BorderStyle = ubsInset
        end
        object StaticText61: TUniLabel
          Left = 878
          Top = 586
          Width = 58
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMSSa'#237'da'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 43
        end
        object cModalidade: TUniDBLookupComboBox
          Left = 576
          Top = 48
          Width = 417
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
        end
        object cProduto_Destinado: TUniDBEdit
          Left = 576
          Top = 75
          Width = 417
          Height = 25
          Hint = ''
          DataField = 'Produto_Destinado'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          FieldLabel = 'Produto Destinado a'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object GroupBox3: TUniGroupBox
          Left = 19
          Top = 628
          Width = 774
          Height = 55
          Hint = ''
          Caption = 'Servi'#231'os (Impostos e Taxas)'
          TabOrder = 38
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object StaticText69: TUniLabel
            Left = 159
            Top = 15
            Width = 30
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'PIS'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 6
          end
          object DBEdit49: TUniDBEdit
            Left = 191
            Top = 15
            Width = 44
            Height = 25
            Hint = ''
            DataField = 'Aliquota_PISServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            BorderStyle = ubsInset
          end
          object StaticText70: TUniLabel
            Left = 446
            Top = 15
            Width = 42
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'CSLL'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 7
          end
          object DBEdit50: TUniDBEdit
            Left = 490
            Top = 15
            Width = 50
            Height = 25
            Hint = ''
            DataField = 'Aliquota_CSLLServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            BorderStyle = ubsInset
          end
          object DBEdit51: TUniDBEdit
            Left = 294
            Top = 15
            Width = 50
            Height = 25
            Hint = ''
            DataField = 'Aliquota_COFINSServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            BorderStyle = ubsInset
          end
          object StaticText71: TUniLabel
            Left = 244
            Top = 15
            Width = 48
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'COFINS'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 8
          end
          object StaticText72: TUniLabel
            Left = 348
            Top = 15
            Width = 42
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'IRPJ'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 9
          end
          object DBEdit52: TUniDBEdit
            Left = 392
            Top = 15
            Width = 50
            Height = 25
            Hint = ''
            DataField = 'Aliquota_IRPJServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            BorderStyle = ubsInset
          end
          object StaticText73: TUniLabel
            Left = 545
            Top = 15
            Width = 42
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'ISS'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 10
          end
          object DBEdit53: TUniDBEdit
            Left = 589
            Top = 15
            Width = 50
            Height = 25
            Hint = ''
            DataField = 'Aliquota_ISSServ'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            BorderStyle = ubsInset
          end
          object StaticText68: TUniLabel
            Left = 6
            Top = 15
            Width = 67
            Height = 21
            Hint = ''
            AutoSize = False
            Caption = 'Taxa Servi'#231'o'
            ParentFont = False
            Font.Color = clBlue
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 11
          end
          object DBEdit48: TUniDBEdit
            Left = 75
            Top = 15
            Width = 80
            Height = 25
            Hint = ''
            DataField = 'Taxa_Servico'
            DataSource = dsSimulaImp
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            BorderStyle = ubsInset
          end
        end
        object DBEdit54: TUniDBEdit
          Left = 846
          Top = 532
          Width = 200
          Height = 25
          Hint = ''
          DataField = 'Valor_AFRMM'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 44
          FieldLabel = 'Valor AFRMM'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object RxDBLookupCombo6: TUniDBLookupComboBox
          Left = 20
          Top = 505
          Width = 350
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Seguro'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 45
          Color = clWindow
          FieldLabel = 'Moeda Seguro'
          FieldLabelWidth = 120
        end
        object DBEdit21: TUniDBEdit
          Left = 593
          Top = 505
          Width = 250
          Height = 25
          Hint = ''
          DataField = 'Taxa_Seguro'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 46
          FieldLabel = 'Taxa Seguro'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cSeguro: TUniDBEdit
          Left = 846
          Top = 505
          Width = 200
          Height = 25
          Hint = ''
          DataField = 'Seguro_PremioValor'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 47
          FieldLabel = 'Valor Seguro (ME)'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object DBEdit26: TUniDBEdit
          Left = 1064
          Top = 505
          Width = 150
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Seguro_Real'
          DataSource = dsSimulaImp
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 48
          Color = 16766421
          BorderStyle = ubsInset
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Produtos'
      object Panel6: TUniPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 318
        Hint = ''
        Enabled = False
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsSolid
        Caption = ''
        object StaticText2: TUniLabel
          Left = 5
          Top = 5
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Produto'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 0
        end
        object cProduto: TUniDBEdit
          Left = 103
          Top = 5
          Width = 669
          Height = 25
          Hint = ''
          DataField = 'Produto'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 1
          BorderStyle = ubsInset
          OnChange = cProdutoChange
        end
        object StaticText4: TUniLabel
          Left = 5
          Top = 28
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'NCM'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 17
        end
        object cNCM: TUniDBEdit
          Left = 103
          Top = 28
          Width = 106
          Height = 25
          Hint = ''
          DataField = 'NCM'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 2
          Color = 16438246
          BorderStyle = ubsInset
          OnExit = cNCMExit
        end
        object StaticText7: TUniLabel
          Left = 5
          Top = 51
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Peso L'#237'quido'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 18
        end
        object DBEdit10: TUniDBEdit
          Left = 103
          Top = 51
          Width = 106
          Height = 25
          Hint = ''
          DataField = 'Peso_Liquido'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 3
          BorderStyle = ubsInset
        end
        object StaticText17: TUniLabel
          Left = 5
          Top = 97
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Valor Unit'#225'rio (ME)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 19
        end
        object cUnitario: TUniDBEdit
          Left = 103
          Top = 97
          Width = 106
          Height = 25
          Hint = ''
          DataField = 'Valor_UnitarioME'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 6
          BorderStyle = ubsInset
          OnExit = cUnitarioExit
        end
        object StaticText6: TUniLabel
          Left = 5
          Top = 74
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Quantidade'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 20
        end
        object DBEdit9: TUniDBEdit
          Left = 103
          Top = 74
          Width = 106
          Height = 25
          Hint = ''
          DataField = 'Quantidade'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 5
          BorderStyle = ubsInset
        end
        object StaticText12: TUniLabel
          Left = 5
          Top = 120
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'II'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 21
        end
        object cAliquotaII: TUniDBEdit
          Left = 103
          Top = 120
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_II'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 8
          BorderStyle = ubsInset
        end
        object StaticText13: TUniLabel
          Left = 5
          Top = 143
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'IPI'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 22
        end
        object cAliquotaIPI: TUniDBEdit
          Left = 103
          Top = 143
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_IpI'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 10
          BorderStyle = ubsInset
        end
        object StaticText25: TUniLabel
          Left = 5
          Top = 166
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'PIS (Entrada)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 23
        end
        object cAliquotaPIS: TUniDBEdit
          Left = 103
          Top = 166
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_PIS'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 12
          BorderStyle = ubsInset
        end
        object StaticText26: TUniLabel
          Left = 5
          Top = 189
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'COFINS (Entrada)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 24
        end
        object cAliquotaCOFINS: TUniDBEdit
          Left = 103
          Top = 189
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_COFINS'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 14
          BorderStyle = ubsInset
        end
        object cPesoBruto: TUniDBEdit
          Left = 371
          Top = 51
          Width = 121
          Height = 25
          Hint = ''
          DataField = 'Peso_Bruto'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          BorderStyle = ubsInset
        end
        object StaticText41: TUniLabel
          Left = 280
          Top = 51
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Peso Bruto'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 25
        end
        object DBEdit13: TUniDBEdit
          Left = 171
          Top = 120
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_II'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 9
          BorderStyle = ubsInset
        end
        object DBEdit14: TUniDBEdit
          Left = 171
          Top = 143
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_IPI'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 11
          BorderStyle = ubsInset
        end
        object DBEdit15: TUniDBEdit
          Left = 171
          Top = 166
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_PIS'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 13
          BorderStyle = ubsInset
        end
        object DBEdit23: TUniDBEdit
          Left = 171
          Top = 189
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_COFINS'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 15
          BorderStyle = ubsInset
        end
        object cUnitarioReal: TUniNumberEdit
          Left = 371
          Top = 97
          Width = 121
          Height = 25
          Hint = ''
          Enabled = False
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 7
          TabStop = False
          DecimalSeparator = ','
        end
        object StaticText42: TUniLabel
          Left = 280
          Top = 97
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Valor Unit'#225'rio (R$)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 26
        end
        object StaticText46: TUniLabel
          Left = 5
          Top = 212
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMS (Entrada)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 27
        end
        object DBEdit35: TUniDBEdit
          Left = 171
          Top = 212
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_ICMSEntrada'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 16
          BorderStyle = ubsInset
        end
        object DBEdit33: TUniDBEdit
          Left = 103
          Top = 212
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSEntrada'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 28
          BorderStyle = ubsInset
        end
        object StaticText55: TUniLabel
          Left = 280
          Top = 166
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'PIS (Sa'#237'da)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 29
        end
        object DBEdit12: TUniDBEdit
          Left = 371
          Top = 166
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_PISSai'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 30
          BorderStyle = ubsInset
        end
        object StaticText56: TUniLabel
          Left = 280
          Top = 189
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'COFINS (Sa'#237'da)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 31
        end
        object DBEdit27: TUniDBEdit
          Left = 371
          Top = 189
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_COFINSSai'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 32
          BorderStyle = ubsInset
        end
        object DBEdit30: TUniDBEdit
          Left = 439
          Top = 166
          Width = 102
          Height = 25
          Hint = ''
          Enabled = False
          Visible = False
          DataField = 'Valor_PISSai'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 33
          BorderStyle = ubsInset
        end
        object DBEdit31: TUniDBEdit
          Left = 439
          Top = 189
          Width = 102
          Height = 25
          Hint = ''
          Enabled = False
          Visible = False
          DataField = 'Valor_COFINSSai'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 34
          BorderStyle = ubsInset
        end
        object StaticText57: TUniLabel
          Left = 280
          Top = 212
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMS (Sa'#237'da)'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 35
        end
        object DBEdit34: TUniDBEdit
          Left = 439
          Top = 212
          Width = 102
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_ICMSSaida'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 36
          BorderStyle = ubsInset
        end
        object DBEdit38: TUniDBEdit
          Left = 371
          Top = 212
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMS'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 37
          BorderStyle = ubsInset
        end
        object StaticText63: TUniLabel
          Left = 5
          Top = 235
          Width = 96
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMS ST'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Clblu'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 38
        end
        object DBEdit43: TUniDBEdit
          Left = 171
          Top = 235
          Width = 106
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Valor_ICMSST'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 39
          BorderStyle = ubsInset
        end
        object DBEdit44: TUniDBEdit
          Left = 103
          Top = 235
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSST'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 40
          BorderStyle = ubsInset
        end
        object StaticText64: TUniLabel
          Left = 280
          Top = 235
          Width = 89
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'MVA'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 41
        end
        object DBEdit45: TUniDBEdit
          Left = 371
          Top = 235
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Aliquota_MVA'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 42
          BorderStyle = ubsInset
        end
        object cTotalII: TUniNumberEdit
          Left = 280
          Top = 120
          Width = 96
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 43
          DecimalSeparator = ','
        end
        object cTotalIPI: TUniNumberEdit
          Left = 280
          Top = 143
          Width = 96
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 44
          DecimalSeparator = ','
        end
        object DBEdit46: TUniDBEdit
          Left = 713
          Top = 212
          Width = 58
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSRed2'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 45
          BorderStyle = ubsInset
        end
      end
      object GradeProd: TUniDBGrid
        Left = 0
        Top = 357
        Width = 1352
        Height = 780
        Hint = ''
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
      end
      object Panel4: TUniPanel
        Left = 0
        Top = 318
        Width = 1352
        Height = 39
        Hint = ''
        Align = alTop
        TabOrder = 2
        Caption = ''
        object NavegaProdutos: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 334
          Height = 37
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Align = alLeft
          TabOrder = 0
        end
        object bDuplicarItem: TUniButton
          Left = 335
          Top = 1
          Width = 88
          Height = 37
          Hint = ''
          Caption = 'Duplicar &Item'
          Align = alLeft
          TabOrder = 1
          OnClick = bDuplicarItemClick
        end
      end
      object StaticText62: TUniLabel
        Left = 547
        Top = 214
        Width = 99
        Height = 21
        Hint = ''
        AutoSize = False
        Caption = 'ICMS (Redu'#231#227'o 1/2)'
        ParentFont = False
        Font.Color = clBlue
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = 7293440
        TabOrder = 3
      end
      object DBEdit42: TUniDBEdit
        Left = 648
        Top = 214
        Width = 66
        Height = 25
        Hint = ''
        DataField = 'Aliquota_ICMSRed'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 4
        BorderStyle = ubsInset
      end
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Despesas'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'Ficha'#39';'#13#10'}')
      object gDespesas: TUniDBGrid
        Left = 2
        Top = 132
        Width = 781
        Height = 425
        Hint = ''
        LoadMask.Message = 'Loading data...'
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TUniPanel
        Left = 0
        Top = 87
        Width = 1352
        Height = 30
        Hint = ''
        Align = alTop
        TabOrder = 1
        Caption = ''
        object bRemoveTudo: TUniButton
          Left = 271
          Top = 1
          Width = 88
          Height = 28
          Hint = ''
          Caption = 'Remover &Tudo'
          Align = alLeft
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          TabOrder = 1
          OnClick = bRemoveTudoClick
        end
        object bBuscar: TUniButton
          Left = 359
          Top = 1
          Width = 144
          Height = 28
          Hint = ''
          Caption = '&Buscar Processo Existente'
          Align = alLeft
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          TabOrder = 0
          OnClick = bBuscarClick
        end
        object bMarinha: TUniButton
          Left = 503
          Top = 1
          Width = 104
          Height = 28
          Hint = ''
          Caption = '&Marinha Mercante'
          Align = alLeft
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          TabOrder = 2
          OnClick = bMarinhaClick
        end
        object NavegaDesp: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 270
          Height = 28
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Align = alLeft
          TabOrder = 3
        end
        object bPISCOFINS: TUniButton
          Left = 607
          Top = 1
          Width = 130
          Height = 28
          Hint = ''
          Caption = '&Diferen'#231'a PIS/COFINS'
          Align = alLeft
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          TabOrder = 4
          OnClick = bPISCOFINSClick
        end
      end
      object StaticText30: TUniLabel
        Left = 147
        Top = 563
        Width = 147
        Height = 21
        Hint = ''
        AutoSize = False
        Caption = 'Total das Despesas  (Entrada)'
        ParentFont = False
        Font.Color = clBlue
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = 7293440
        TabOrder = 2
      end
      object cTotalDespesasSai: TUniNumberEdit
        Left = 547
        Top = 563
        Width = 110
        Height = 25
        Hint = ''
        Enabled = False
        BorderStyle = ubsInset
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 3
        Color = 16764262
        DecimalSeparator = ','
      end
      object cTotalDespesas: TUniNumberEdit
        Left = 295
        Top = 563
        Width = 99
        Height = 25
        Hint = ''
        Enabled = False
        BorderStyle = ubsInset
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 4
        Color = 16764262
        DecimalSeparator = ','
      end
      object Panel2: TUniPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 87
        Hint = ''
        Enabled = False
        Align = alTop
        TabOrder = 5
        Caption = ''
        object bPesq: TUniSpeedButton
          Left = 403
          Top = 50
          Width = 23
          Height = 23
          Hint = ''
          Caption = ''
          ParentColor = False
          TabOrder = 1
          OnClick = bPesqClick
        end
        object StaticText20: TUniLabel
          Left = 652
          Top = 51
          Width = 21
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'R$'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 2
        end
        object StaticText33: TUniLabel
          Left = 3
          Top = 55
          Width = 46
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Despesa'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 3
        end
        object cDespNac: TUniNumberEdit
          Left = 675
          Top = 51
          Width = 101
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          DecimalSeparator = ','
        end
        object StaticText59: TUniLabel
          Left = 530
          Top = 51
          Width = 23
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ME'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 5
        end
        object cValorME: TUniNumberEdit
          Left = 555
          Top = 51
          Width = 94
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 6
          DecimalSeparator = ','
          OnChange = cValorMEChange
        end
        object StaticText65: TUniLabel
          Left = 430
          Top = 51
          Width = 29
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Taxa'
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 7
        end
        object cTaxa: TUniNumberEdit
          Left = 461
          Top = 51
          Width = 65
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 8
          DecimalSeparator = ','
        end
        object DBEdit39: TUniDBEdit
          Left = 689
          Top = 5
          Width = 84
          Height = 25
          Hint = ''
          Enabled = False
          Visible = False
          DataField = 'Registro'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 9
          BorderStyle = ubsInset
          OnChange = DBEdit39Change
        end
      end
      object StaticText66: TUniLabel
        Left = 399
        Top = 563
        Width = 147
        Height = 21
        Hint = ''
        AutoSize = False
        Caption = 'Total das Despesas  (Sa'#237'da)'
        ParentFont = False
        Font.Color = clBlue
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = 7293440
        TabOrder = 6
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Formulas dos C'#225'lculos'
      object Memo1: TUniMemo
        Left = 0
        Top = 0
        Width = 1352
        Height = 1137
        Hint = ''
        ParentFont = False
        Font.Height = -13
        Font.Name = 'Courier New'
        Align = alClient
        Color = 12320767
        TabOrder = 0
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1360
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
    object UniDBNavigator1: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 156
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      DataSource = dsSimulaImp
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar_: TUniSpeedButton
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
    end
    object bEditar_: TUniSpeedButton
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
    end
    object bExcluir_: TUniSpeedButton
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
    object bCancelar_: TUniSpeedButton
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
    end
    object bSalvar_: TUniSpeedButton
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
    end
    object bFechar_: TUniSpeedButton
      Left = 361
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
      OnClick = bFechar_Click
    end
    object Panel1: TUniPanel
      Left = 603
      Top = 0
      Width = 757
      Height = 35
      Hint = ''
      ShowHint = True
      Align = alRight
      TabOrder = 8
      Caption = ''
      object bCalcular: TUniSpeedButton
        Left = 307
        Top = 1
        Width = 74
        Height = 33
        Hint = '  Recalcula todos os totais  '
        ShowHint = True
        ParentShowHint = False
        Caption = '&Calcular'
        Align = alLeft
        ParentColor = False
        TabOrder = 6
        OnClick = bCalcularClick
      end
      object bImprimir: TUniButton
        Left = 570
        Top = 1
        Width = 77
        Height = 33
        Hint = ''
        ShowHint = True
        Caption = '&Imprimir Vert'
        Align = alLeft
        TabOrder = 0
      end
      object Navega: TUniDBNavigator
        Left = 1
        Top = 1
        Width = 306
        Height = 33
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alLeft
        TabOrder = 1
      end
      object bExcel: TUniButton
        Left = 495
        Top = 1
        Width = 75
        Height = 33
        Hint = ''
        ShowHint = True
        Caption = '&Gerar Excel'
        Align = alLeft
        TabOrder = 2
        OnClick = bExcelClick
      end
      object bDuplicar: TUniButton
        Left = 381
        Top = 1
        Width = 114
        Height = 33
        Hint = ''
        ShowHint = True
        Caption = '&Duplicar Simula'#231#227'o'
        Align = alLeft
        TabOrder = 3
        OnClick = bDuplicarClick
      end
      object bImpHor: TUniButton
        Left = 647
        Top = 1
        Width = 81
        Height = 33
        Hint = ''
        ShowHint = True
        Caption = '&Imprimir Horiz'
        Align = alLeft
        TabOrder = 4
      end
    end
  end
  object tNumero: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select max(Numero) as Numero from SimulaImportacao')
    Left = 839
    Top = 40
  end
  object tDespesa: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where simulacao = 13'
      ''
      '')
    Left = 477
    Top = 375
  end
  object tRegistro: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        'select isnull(max(Registro), 0)+1 as Registro from SimulaDespesa' +
        's')
    Left = 702
    Top = 46
  end
  object tSomaDespesas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 839
    Top = 97
  end
  object tItens: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select max(Item) as Item from SimulaProdutos')
    Left = 702
    Top = 150
  end
  object tSomaProdutos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 839
    Top = 149
  end
  object tSomaImpostos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 839
    Top = 199
  end
  object tProdutos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      '      ,Total_Produtos  = Valor_UnitarioSaida * Quantidade'
      '      ,Total_ICMSSai   = Valor_ICMSSaida     * Quantidade'
      '      ,Total_ICMSSTSai = Valor_ICMSST        * Quantidade'
      '      ,Total_ICMSSTEnt = 0'
      '      ,Total_II        = Valor_II            * Quantidade'
      '      ,Total_IPI       = Valor_IPI           * Quantidade'
      '      ,Total_IPISai    = Valor_IPISai        * Quantidade'
      
        '      ,Total_IPISaiME  = (Valor_IPISai       * Quantidade)/(sele' +
        'ct Taxa_FOB from SimulaImportacao where Numero = Simulacao)'
      '      ,Total_PISEnt    = Valor_PIS'
      '      ,Total_COFINSEnt = Valor_COFINS'
      '      ,Total_PISSai    = Valor_PISSai'
      '      ,Total_COFINSSai = Valor_COFINSSai'
      
        '      ,Processo        = (select Processo from SimulaImportacao ' +
        'where Numero = Simulacao)'
      
        '      ,Modalidade      = (select Modalidade from SimulaImportaca' +
        'o where Numero = Simulacao)'
      
        '      ,Produto         = (select Tipo_Produto from SimulaImporta' +
        'cao where Numero = Simulacao)'
      
        '      ,Cliente         = (select Cliente_ImpNome from SimulaImpo' +
        'rtacao where Numero = Simulacao)'
      
        '      ,Taxa            = (select Taxa_FOB from SimulaImportacao ' +
        'where Numero = Simulacao)'
      '      ,Valor_UniExReal      = 0'
      '      ,Valor_TotalExReal    = 0'
      '      ,Valor_TotalExME      = 0'
      '      ,Valor_TotalExIPIReal = 0'
      '      ,Valor_TotalExIPIME   = 0'
      '      ,Valor_TotalExICMSReal= 0'
      '      ,Valor_TotalExICMSME  = 0'
      '      ,Valor_TotalExICMSSTReal= 0'
      '      ,Valor_TotalExICMSSTME  = 0'
      ''
      
        '      ,Valor_ICMSSTME       = Valor_ICMSST / (select Taxa_FOB fr' +
        'om SimulaImportacao where Numero = Simulacao)'
      
        '      ,Valor_ICMSSaiME      = Valor_ICMSSaida/(select Taxa_FOB f' +
        'rom SimulaImportacao where Numero = Simulacao)'
      'from SimulaProdutos sp'
      'where Simulacao = 20')
    Left = 477
    Top = 152
  end
  object tSimula: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *,'
      
        '       Pais_OrigemNome = (select Nome from Cybersoft_Cadastros.d' +
        'bo.Paises where Codigo = Pais_Origem)'
      
        '      ,NCM_Descricao   = case (select count(*) from SimulaProdut' +
        'os where Simulacao = si.Numero)'
      
        #9'                          when 1 then (select NCM from SimulaPr' +
        'odutos where Simulacao = si.Numero) else '#39'VARIOS'#39
      '                         end'
      
        '      ,Unidade_Descricao = case (select count(*) from SimulaProd' +
        'utos where Simulacao = si.Numero group by NCM)'
      
        #9'                            when 1 then (select Unidade from NC' +
        'M where NCM = (select NCM from SimulaProdutos where Simulacao = ' +
        'si.Numero)) else '#39'VARIOS'#39
      '                         end'
      
        '      ,Unitario_Descricao = case (select count(*) from SimulaPro' +
        'dutos where Simulacao = si.Numero)'
      
        #9'                         when 1 then (select cast(cast(Valor_Un' +
        'itarioReal as NUMERIC(15,2)) as varchar(17)) from SimulaProdutos' +
        ' where Simulacao = si.Numero) else '#39'VARIOS'#39
      '                            end'
      
        '      ,Volumes = (select sum(Quantidade) from SimulaProdutos whe' +
        're Simulacao = si.Numero)'
      
        '      ,Valor_AFRMM = isnull((select sum(isnull(Valor, 0)) from S' +
        'imulaDespesas where Simulacao = si.Numero and Despesa like '#39'%AFR' +
        'MM%'#39'), 0)'
      
        '      ,Aliquota_II = case (select count(*) from SimulaProdutos w' +
        'here Simulacao = si.Numero group by Aliquota_II)'
      
        '                          when 1 then (select cast(cast(Aliquota' +
        '_II as NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Si' +
        'mulacao = si.Numero) else '#39'VARIOS'#39' '
      '                     end'
      
        '      ,Aliquota_IPI = case (select count(*) from SimulaProdutos ' +
        'where Simulacao = si.Numero group by Aliquota_IPI)'
      
        '                           when 1 then (select cast(cast(Aliquot' +
        'a_IPI as NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where ' +
        'Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                      end'
      
        '      ,Aliquota_PIS = case (select count(*) from SimulaProdutos ' +
        'where Simulacao = si.Numero group by Aliquota_PIS)'
      
        '                           when 1 then (select cast(cast(Aliquot' +
        'a_PIS as NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where ' +
        'Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                      end'
      
        '      ,Aliquota_COFINS = case (select count(*) from SimulaProdut' +
        'os where Simulacao = si.Numero group by Aliquota_COFINS)'
      
        '                              when 1 then (select cast(cast(Aliq' +
        'uota_COFINS as NUMERIC(6,2)) as varchar(6)) from SimulaProdutos ' +
        'where Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                         end'
      '      ,Aliquota_ICMSEnt = case isnull(Aliquota_ICMSEntrada, 0)'
      
        '                               when 0 then '#39'DIFERIDO'#39' else cast(' +
        'cast(Aliquota_ICMSEntrada as NUMERIC(6,2)) as varchar(6))'
      '                          end'
      
        '      ,Aliquota_ICMSSai = case (select count(distinct Aliquota_I' +
        'CMS) from SimulaProdutos sp where sp.Simulacao = si.Numero)'
      
        '                               when 1 then (select distinct Aliq' +
        'uota_ICMS from SimulaProdutos sp where sp.Simulacao = si.Numero)'
      '                          end'
      
        '      ,Aliquota_AFRMM   = (select cast(Percentual_Marinha as NUM' +
        'ERIC(6,2)) from Configuracao)'
      '      ,Credito_IPI      = Valor_IPI *-1'
      '      ,Credito_PIS      = Valor_PIS *-1'
      '      ,Credito_COFINS   = Valor_COFINS * -1'
      '      ,Credito_ICMS     = Valor_ICMSEntrada *-1'
      '      ,Credito_IPIME    = (Valor_IPI *-1) / Taxa_FOB'
      '      ,Credito_PISME    = (Valor_PIS *-1) / Taxa_FOB'
      '      ,Credito_COFINSME = (Valor_COFINS *-1) / Taxa_FOB'
      '      ,Credito_ICMSME   = (Valor_ICMSEntrada *-1) / Taxa_FOB'
      '      ,Valor_IPISaiME    = round(Valor_IPISai / Taxa_FOB, 2)'
      '      ,Valor_PISSaiME    = round(Valor_PISSai / Taxa_FOB, 2)'
      '      ,Valor_COFINSSaiME = round(Valor_COFINSSai / Taxa_FOB, 2)'
      '      ,Valor_ICMSSaiME   = round(Valor_ICMSSaida / Taxa_FOB, 2)'
      '      ,Valor_ICMSSTME    = round(Valor_ICMSST / Taxa_FOB, 2)'
      '      ,Total_NFSaidaME   = round(Total_NFSaida / Taxa_FOB, 2)'
      '      ,Valor_MarkupReal  = cast(0 as money)'
      '      ,Valor_MarkupME    = cast(0 as money)'
      
        '      ,Valor_AssImpReal  = round(Total_NFSaida * (Taxa_Adiminist' +
        'rativa/100), 2)'
      
        '      ,Valor_AssImpME    = round((Total_NFSaida * (Taxa_Adiminis' +
        'trativa/100))/Taxa_FOB, 2)'
      
        '      ,Valor_TotalImpReal= round(Total_NFSaida + (Total_NFSaida ' +
        '* (Taxa_Adiministrativa/100)), 2)'
      
        '      ,Valor_TotalImpME  = round((Total_NFSaida + (Total_NFSaida' +
        ' * (Taxa_Adiministrativa/100)))/Taxa_FOB, 2)'
      '      ,Valor_CredTribIPI      = Valor_IPISai'
      '      ,Valor_CredTribIPIME    = round(Valor_IPISai/Taxa_FOB, 2)'
      
        '      ,Valor_CredTribPIS      = iif(Modalidade = '#39'CONTA E ORDEM'#39 +
        ', Valor_PIS   , Valor_PISSai)'
      
        '      ,Valor_CredTribPISME    = iif(Modalidade = '#39'CONTA E ORDEM'#39 +
        ', round(Valor_PIS/Taxa_FOB, 2)  , round(Valor_PISSai/Taxa_FOB, 2' +
        '))'
      
        '      ,Valor_CredTribCOFINS   = iif(Modalidade = '#39'CONTA E ORDEM'#39 +
        ', Valor_COFINS, Valor_COFINSSai)'
      
        '      ,Valor_CredTribCOFINSME = iif(Modalidade = '#39'CONTA E ORDEM'#39 +
        ', round(Valor_COFINS/Taxa_FOB, 2), round(Valor_COFINSSai/Taxa_FO' +
        'B, 2))'
      
        '      ,Valor_BCImpServ        = round(((select sum(isnull(sp.Val' +
        'or_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.S' +
        'imulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100)/1-(Aliquot' +
        'a_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2)'
      
        '      ,Valor_PISServ          = round(((select sum(isnull(sp.Val' +
        'or_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.S' +
        'imulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100)/1-(Aliquot' +
        'a_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2) * (Aliquota' +
        '_PISServ/100)'
      
        '      ,Valor_COFINSServ       = round(((select sum(isnull(sp.Val' +
        'or_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.S' +
        'imulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100)/1-(Aliquot' +
        'a_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2) * (Aliquota' +
        '_COFINSServ/100)'
      
        '      ,Valor_ISSSServ         = round(((select sum(isnull(sp.Val' +
        'or_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.S' +
        'imulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100)/1-(Aliquot' +
        'a_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2) * (Aliquota' +
        '_ISSServ/100)'
      
        '      ,Valor_AssImpReal       = round((select sum(isnull(sp.Valo' +
        'r_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Si' +
        'mulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)'
      
        '      ,Valor_AssImpME         = round(((select sum(isnull(sp.Val' +
        'or_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.S' +
        'imulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB,' +
        ' 2)'
      ''
      'from   SimulaImportacao si'
      'where numero = 20'
      'order  by Numero')
    Left = 477
    Top = 39
  end
  object dstSimula: TDataSource
    DataSet = tSimula
    Left = 477
    Top = 95
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 477
    Top = 208
  end
  object dstDespesa: TDataSource
    DataSet = tDespesa
    Left = 477
    Top = 430
  end
  object tDespesaAdm: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where Custo = 0'
      'and simulacao = 13'
      ''
      '')
    Left = 477
    Top = 488
  end
  object dstDespesaAdm: TDataSource
    DataSet = tDespesaAdm
    Left = 477
    Top = 545
  end
  object tDespesaSai: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      ''
      '')
    Left = 477
    Top = 265
  end
  object dstDespesaSai: TDataSource
    DataSet = tDespesaSai
    Left = 477
    Top = 318
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 702
    Top = 95
  end
  object tDespesaMar: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaDespesas where Simulacao = 13')
    Left = 350
    Top = 39
  end
  object dstDespesaMar: TDataSource
    DataSet = tDespesaMar
    Left = 350
    Top = 95
  end
  object SimulaImp: TFDQuery
    Connection = UniMainModule.Conecta
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
      'order by Numero'
      '')
    Left = 62
    Top = 88
    object SimulaImpRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object SimulaImpEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Required = True
      Size = 14
    end
    object SimulaImpNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
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
    object SimulaImpModalidade_Frete: TStringField
      FieldName = 'Modalidade_Frete'
      Origin = 'Modalidade_Frete'
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
    object SimulaImpTipo_Container: TStringField
      FieldName = 'Tipo_Container'
      Origin = 'Tipo_Container'
    end
    object SimulaImpMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Origin = 'Moeda_Frete'
      Size = 30
    end
    object SimulaImpTaxa_Frete: TFMTBCDField
      FieldName = 'Taxa_Frete'
      Origin = 'Taxa_Frete'
      Precision = 18
      Size = 6
    end
    object SimulaImpMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Origin = 'Moeda_Seguro'
      Size = 30
    end
    object SimulaImpTaxa_Seguro: TFMTBCDField
      FieldName = 'Taxa_Seguro'
      Origin = 'Taxa_Seguro'
      Precision = 18
      Size = 6
    end
    object SimulaImpTaxa_FOB: TFMTBCDField
      FieldName = 'Taxa_FOB'
      Origin = 'Taxa_FOB'
      Precision = 18
      Size = 6
    end
    object SimulaImpMoeda_FOB: TStringField
      FieldName = 'Moeda_FOB'
      Origin = 'Moeda_FOB'
      Size = 30
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
  object SimulaProdutos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaProdutos')
    Left = 350
    Top = 265
    object SimulaProdutosSimulacao: TIntegerField
      FieldName = 'Simulacao'
    end
    object SimulaProdutosItem: TSmallintField
      FieldName = 'Item'
    end
    object SimulaProdutosProduto: TStringField
      FieldName = 'Produto'
      Size = 60
    end
    object SimulaProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object SimulaProdutosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      DisplayFormat = ',##0.000'
    end
    object SimulaProdutosQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object SimulaProdutosValor_UnitarioME: TFloatField
      FieldName = 'Valor_UnitarioME'
      DisplayFormat = ',##0.000000'
    end
    object SimulaProdutosAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object SimulaProdutosValor_II: TCurrencyField
      FieldName = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_ICMSEntrada: TCurrencyField
      FieldName = 'Valor_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_ICMSSaida: TCurrencyField
      FieldName = 'Valor_ICMSSaida'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosAliquota_PISSai: TFloatField
      FieldName = 'Aliquota_PISSai'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosAliquota_COFINSSai: TFloatField
      FieldName = 'Aliquota_COFINSSai'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosValor_PISSai: TCurrencyField
      FieldName = 'Valor_PISSai'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_COFINSSai: TCurrencyField
      FieldName = 'Valor_COFINSSai'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_UnitarioSaida: TCurrencyField
      FieldName = 'Valor_UnitarioSaida'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_BCICMS: TCurrencyField
      FieldName = 'Valor_BCICMS'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_BCPISEnt: TCurrencyField
      FieldName = 'Valor_BCPISEnt'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_IPISai: TCurrencyField
      FieldName = 'Valor_IPISai'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_UnitarioReal: TCurrencyField
      FieldName = 'Valor_UnitarioReal'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_CIFReal: TCurrencyField
      FieldName = 'Valor_CIFReal'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosBCII_Entrada: TCurrencyField
      FieldName = 'BCII_Entrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_BCPISSai: TCurrencyField
      FieldName = 'Valor_BCPISSai'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosFator: TFloatField
      FieldName = 'Fator'
    end
    object SimulaProdutosAliquota_ICMSRed: TFloatField
      FieldName = 'Aliquota_ICMSRed'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosBCICMSST: TCurrencyField
      FieldName = 'BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object SimulaProdutosAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object SimulaProdutosAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      DisplayFormat = '##0.00'
    end
    object SimulaProdutosValor_BCMVA: TCurrencyField
      FieldName = 'Valor_BCMVA'
    end
    object SimulaProdutosValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
    end
    object SimulaProdutosValor_BCIPISai: TCurrencyField
      FieldName = 'Valor_BCIPISai'
    end
    object SimulaProdutosValor_UnitarioImpSai: TCurrencyField
      FieldName = 'Valor_UnitarioImpSai'
    end
    object SimulaProdutosValor_UnitarioimpEnt: TCurrencyField
      FieldName = 'Valor_UnitarioimpEnt'
    end
    object SimulaProdutosValor_BCICMSEnt: TCurrencyField
      FieldName = 'Valor_BCICMSEnt'
    end
    object SimulaProdutosAliquota_ICMSRed2: TFloatField
      FieldName = 'Aliquota_ICMSRed2'
    end
  end
  object dsSimulaProdutos: TDataSource
    DataSet = SimulaProdutos
    Left = 350
    Top = 318
  end
  object SimulaDespesas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from SimulaDespesas')
    Left = 350
    Top = 152
    object SimulaDespesasRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'SimulaDespesas.Registro'
    end
    object SimulaDespesasSimulacao: TIntegerField
      FieldName = 'Simulacao'
      Origin = 'SimulaDespesas.Simulacao'
    end
    object SimulaDespesasDespesa: TStringField
      FieldName = 'Despesa'
      Origin = 'SimulaDespesas.Despesa'
      Size = 50
    end
    object SimulaDespesasValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'SimulaDespesas.Valor'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object SimulaDespesasClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object SimulaDespesasCusto: TBooleanField
      FieldName = 'Custo'
    end
    object SimulaDespesasCusto_Saida: TBooleanField
      FieldName = 'Custo_Saida'
    end
    object SimulaDespesasValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      DisplayFormat = ',##0.00'
    end
    object SimulaDespesasTaxa: TFloatField
      FieldName = 'Taxa'
      DisplayFormat = ',##0.0000'
    end
  end
  object dsSimulaDespesas: TDataSource
    DataSet = SimulaDespesas
    Left = 350
    Top = 208
  end
  object TiposProcesso: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from TiposProcesso')
    Left = 350
    Top = 375
    object TiposProcessoCodigo: TIntegerField
      DisplayWidth = 3
      FieldName = 'Codigo'
      Origin = 'TiposProcesso.Codigo'
    end
    object TiposProcessoConta_Cliente: TStringField
      FieldName = 'Conta_Cliente'
      Origin = 'TiposProcesso.Conta_Cliente'
      Size = 15
    end
    object TiposProcessoConta_ClienteAdiantamento: TStringField
      FieldName = 'Conta_ClienteAdiantamento'
      Origin = 'TiposProcesso.Conta_ClienteAdiantamento'
      Size = 15
    end
    object TiposProcessoConta_ClienteDevolucao: TStringField
      FieldName = 'Conta_ClienteDevolucao'
      Origin = 'TiposProcesso.Conta_ClienteDevolucao'
      Size = 15
    end
    object TiposProcessoConta_Despesas: TStringField
      FieldName = 'Conta_Despesas'
      Origin = 'TiposProcesso.Conta_Despesas'
      Size = 15
    end
    object TiposProcessoConta_Impostos: TStringField
      FieldName = 'Conta_Impostos'
      Origin = 'TiposProcesso.Conta_Impostos'
      Size = 15
    end
    object TiposProcessoConta_Adiantamento: TStringField
      FieldName = 'Conta_Adiantamento'
      Origin = 'TiposProcesso.Conta_Adiantamento'
      Size = 15
    end
    object TiposProcessoConta_Fornecedor: TStringField
      FieldName = 'Conta_Fornecedor'
      Origin = 'TiposProcesso.Conta_Fornecedor'
      Size = 15
    end
    object TiposProcessoConta_FornecedorAdiantamento: TStringField
      FieldName = 'Conta_FornecedorAdiantamento'
      Origin = 'TiposProcesso.Conta_FornecedorAdiantamento'
      Size = 15
    end
    object TiposProcessoConta_FornecedorDevolucao: TStringField
      FieldName = 'Conta_FornecedorDevolucao'
      Origin = 'TiposProcesso.Conta_FornecedorDevolucao'
      Size = 15
    end
    object TiposProcessoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TiposProcesso.Descricao'
      Size = 30
    end
    object TiposProcessoExige_Cliente: TBooleanField
      FieldName = 'Exige_Cliente'
      Origin = 'TiposProcesso.Exige_Cliente'
    end
    object TiposProcessoSISCOMEX_Documento: TStringField
      FieldName = 'SISCOMEX_Documento'
      Origin = 'TiposProcesso.SISCOMEX_Documento'
      Size = 10
    end
    object TiposProcessoSISCOMEX_CentroCusto: TStringField
      FieldName = 'SISCOMEX_CentroCusto'
      Origin = 'TiposProcesso.SISCOMEX_CentroCusto'
      Size = 10
    end
    object TiposProcessoSISCOMEX_Orgao: TStringField
      FieldName = 'SISCOMEX_Orgao'
      Origin = 'TiposProcesso.SISCOMEX_Orgao'
      Size = 10
    end
    object TiposProcessoSISCOMEX_ClassificacaoII: TStringField
      FieldName = 'SISCOMEX_ClassificacaoII'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoII'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoIPI: TStringField
      FieldName = 'SISCOMEX_ClassificacaoIPI'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoIPI'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoPIS: TStringField
      FieldName = 'SISCOMEX_ClassificacaoPIS'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoPIS'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoCOFINS: TStringField
      FieldName = 'SISCOMEX_ClassificacaoCOFINS'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoCOFINS'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoTaxaSISCOMEX: TStringField
      FieldName = 'SISCOMEX_ClassificacaoTaxaSISCOMEX'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoTaxaSISCOMEX'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoANTIDUMPING: TStringField
      FieldName = 'SISCOMEX_ClassificacaoANTIDUMPING'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoANTIDUMPING'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoDifPIS: TStringField
      FieldName = 'SISCOMEX_ClassificacaoDifPIS'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoDifPIS'
      Size = 15
    end
    object TiposProcessoSISCOMEX_ClassificacaoDifCOFINS: TStringField
      FieldName = 'SISCOMEX_ClassificacaoDifCOFINS'
      Origin = 'TiposProcesso.SISCOMEX_ClassificacaoDifCOFINS'
      Size = 15
    end
    object TiposProcessoPedido: TStringField
      FieldName = 'Pedido'
      Origin = 'TiposProcesso.Pedido'
      Size = 1
    end
    object TiposProcessoApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'TiposProcesso.Apuracao_PISCOFINS'
    end
    object TiposProcessoClassificacao_AFRMM: TStringField
      FieldName = 'Classificacao_AFRMM'
      Origin = 'TiposProcesso.Classificacao_AFRMM'
      Size = 15
    end
    object TiposProcessoExportacao: TBooleanField
      FieldName = 'Exportacao'
    end
    object TiposProcessoProcesso: TBooleanField
      FieldName = 'Processo'
    end
    object TiposProcessoConta_FornecedorExt: TStringField
      FieldName = 'Conta_FornecedorExt'
      Size = 15
    end
    object TiposProcessoClassificacao_TUP: TStringField
      FieldName = 'Classificacao_TUP'
      Size = 15
    end
    object TiposProcessoClassificacao_COFINSDifer: TStringField
      FieldName = 'Classificacao_COFINSDifer'
      Size = 15
    end
  end
  object dsTiposProcesso: TDataSource
    DataSet = TiposProcesso
    Left = 350
    Top = 430
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Empresas where Codigo = :pCodigo')
    Left = 350
    Top = 601
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 351
    Top = 658
  end
  object ClassificacaoFinanceira: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      
        'select * from ClassificacaoFinanceira where (Desativada <> 1) or' +
        'der by Descricao')
    Left = 477
    Top = 601
  end
  object dsClassificacaoFinanceira: TDataSource
    DataSet = ClassificacaoFinanceira
    Left = 478
    Top = 658
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Moedas order by Nome')
    Left = 584
    Top = 38
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 584
    Top = 92
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
    Top = 614
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 62
    Top = 671
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Estados order by Codigo')
    Left = 584
    Top = 601
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 585
    Top = 658
  end
  object Incoterms: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from INCOTERMS order by Codigo')
    Left = 584
    Top = 372
  end
  object dsIncoterms: TDataSource
    DataSet = Incoterms
    Left = 584
    Top = 430
  end
  object Campos: TFDQuery
    Connection = UniMainModule.Conecta
    Left = 702
    Top = 316
  end
  object dsCampos: TDataSource
    DataSet = Campos
    Left = 703
    Top = 372
  end
  object Configuracao: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Configuracao')
    Left = 702
    Top = 204
  end
  object dsConfiguracao: TDataSource
    DataSet = Configuracao
    Left = 702
    Top = 260
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 835
    Top = 266
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
    Top = 561
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
    Top = 508
  end
end
